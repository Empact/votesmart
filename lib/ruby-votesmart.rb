require 'rubygems'
require 'ym4r/google_maps/geocoding'
require 'active_support'
include Ym4r::GoogleMaps

module VoteSmart
  API_URL = "http://api.votesmart.org/"
  API_FORMAT = "JSON"
  
  mattr_accessor :api_key
  
  class RequestFailed < Exception; end
end

VoteSmart.api_key = "key"

require "#{File.dirname(__FILE__)}/mcll4r/mcll4r.rb"
require "#{File.dirname(__FILE__)}/vote_smart/common.rb"

Dir["#{File.dirname(__FILE__)}/vote_smart/*.rb"].each do |source_file| 
  require source_file unless source_file == "#{File.dirname(__FILE__)}/vote_smart/common.rb"
end
