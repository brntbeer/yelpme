require "yelpme/version"

begin
  require 'rubygems'
rescue LoadError
end
require 'yelp2'
require 'pp'
require 'slop'

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
    opts = Slop.parse(args) do
      on :r, :random, 'Random result', :optional => true
      on :V, :version, 'Print the version' do
        puts "Version #{Yelpme::VERSION}"
        exit
      end
    end
    query = Yelp::Base.new(ENV["YELP_CONSUMER_KEY"],ENV["YELP_CONSUMER_SECRET"],ENV["YELP_TOKEN"], ENV["YELP_TOKEN_SECRET"])
    raise ArgumentError, "Location needs a value" if location[:location].nil?
    pp query.search(term, location)[0]
  end
end
