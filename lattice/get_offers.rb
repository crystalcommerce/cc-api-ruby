#! /usr/bin/env ruby
require 'httparty'
require 'json'
require 'pp'

user, pass = ENV['CC_API_KEY'].split(":")
auth = {:username => user, :password => pass}
response = HTTParty.get("https://api.crystalcommerce.com/v1/lattice/offers", :basic_auth => auth)
parsed = JSON.parse(response.body)
pp parsed

