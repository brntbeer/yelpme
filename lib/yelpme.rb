require "yelpme/version"

begin
  require 'rubygems'
rescue LoadError
end
require "yelp2"


module Yelpme
  
  # A quick search to get the first result
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
    query = Yelp::Base.new(ENV["YELP_CONSUMER_KEY"],ENV["YELP_CONSUMER_SECRET"],ENV["YELP_TOKEN"], ENV["YELP_TOKEN_SECRET"])
    puts query.search(term, location)[0].inspect
  end
end
