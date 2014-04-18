#! /usr/bin/env ruby
require 'httparty'
require 'json'
require 'pp'

user_name = 'YOUR_USER_NAME_HERE'
license_key = 'YOUR_USER_LICENSE_KEY_HERE'
auth = {:username => user_name, :password => license_key}
response = HTTParty.get("https://api.crystalcommerce.com/v1/lattice/offers", :basic_auth => auth)
parsed = JSON.parse(response.body)
pp parsed

