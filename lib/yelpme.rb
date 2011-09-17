require "yelpme/version"


begin
  require 'rubygems'
rescue LoadError
end
require 'yelp2'
require 'pp'
require 'optparse'
module Yelpme
  
  # A quick search to get the first result. Additional arguments
  # used with flags are picked up by Slop...Which sounds dirty.
  #
  # args - the list of arguments you may pass in to search on yelp
  #
  # Examples
  #
  #   search("breakfast", "san francisco")
  #   # => 'Plow'
  #
  # Returns the first result based on the arguments.
  def self.search(*args)
    term = args.shift
    location = {}
    location[:location] = args.shift
    options = {}
    OptionParser.new do |opts|
      opts.on("-r", "--random", "Random result") do |r|
        options[:random] = r
      end
      opts.on("-V", "--version", "Print the version") do |v|
        options[:version] = v
      end
    end.parse!

    raise ArgumentError, "Location needs a value" if location[:location].nil?
    if %w{YELP_CONSUMER_KEY YELP_CONSUMER_SECRET YELP_TOKEN YELP_TOKEN_SECRET}.all?{|word| ENV.include?(word)}
      query = Yelp::Base.new(ENV["YELP_CONSUMER_KEY"],ENV["YELP_CONSUMER_SECRET"],ENV["YELP_TOKEN"], ENV["YELP_TOKEN_SECRET"])
      businesses = query.search(term, location)
      business = parse_businesses(businesses, options)
      pp business
    else
      raise LoadError, "Verify that your ENV variables for authentication to Yelp are set. View the README for more information."
    end
  end

  # Parse how the business should be parsed based upon the options
  # are passed in. 
  #
  # businesses - Array of businesses returned from the Yelp search.
  # options    - Options passed in from OptionParser.
  #
  # Returns one or many businesses.
  def self.parse_businesses(businesses, options)
    options[:random].nil? ?  businesses.first : businesses[rand(businesses.size)]
  end
end
