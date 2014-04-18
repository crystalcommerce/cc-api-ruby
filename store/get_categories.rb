#! /usr/bin/env ruby
require 'httparty'
require 'json'
require 'pp'

user_name = 'YOUR_USER_NAME_HERE'
license_key = 'YOUR_USER_LICENSE_KEY_HERE'
auth = {:username => user, :password => pass}
response = HTTParty.get("https://api.crystalcommerce.com/v1/stores/arux/products", :basic_auth => auth)
parsed = JSON.parse(response.body)
pp parsed