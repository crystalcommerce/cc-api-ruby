#! /usr/bin/env ruby
require 'httparty'
require 'json'
require 'pp'

user, pass = ENV['CC_API_KEY'].split(":")
auth = {:username => user, :password => pass}
response = HTTParty.get("https://api.crystalcommerce.com/v1/lattice/products/201750?skus=28cdcdb1cff71dce72680679", :auth => auth)
parsed = JSON.parse(response.body)
pp parsed
