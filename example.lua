#!/usr/bin/lua
require "ubidots" -- do not put extension (.lua) after the filename
local api_key= "your api key here"
local deviceID="your deviceID here"
local value = 100 -- post this value

--obtain a token based on a given api_key
get_token(api_key)
print("Token: " .. my_token)

--post data to Ubidots
post_value(deviceID, value)

--retrieve last value from Ubidots
get_value(deviceID)
print(my_data)

--retrieve all data from Ubidots
get_value(deviceID, "all")
print(my_data)

--retrieve last value from Ubidots & save to router /tmp/data.txt
get_value(deviceID, "", "data.txt")
