#! /usr/bin/env ruby
require 'httparty'
require 'json'
require 'pp'

user, pass = ENV['CC_API_KEY'].split(":")
auth = {:username => "neil", :password => "YkT5BVthXPrEkyVDyASd0YLnBHuDqQuJ"}
oauth = ENV['CC_API_OAuth']
response = HTTParty.get("https://api.crystalcommerce.com/v1/stores/facetofacegames/resources", :basic_auth => auth)
parsed = JSON.parse(response.body)
pp parsed

