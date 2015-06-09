#!/bin/bash
api_key="your api key here"
deviceID="your deviceID here"
value=10 #post this value

#obtain a token
my_token=$(bash -c "/usr/lib/lua/ubidots.lua -token "$api_key)
echo "Token: "$my_token

#post data to Ubidots
bash -c "/usr/lib/lua/ubidots.lua -post "$api_key" "$deviceID" "$value

#retrive last value from Ubidots
my_data=$(bash -c "/usr/lib/lua/ubidots.lua -get "$api_key" "$deviceID)
echo $my_data

#retrive all data from Ubidots
my_data=$(bash -c "/usr/lib/lua/ubidots.lua -get "$api_key" "$deviceID" all")
echo $my_data

#retrive last value from Ubidots & save to a file
my_data=$(bash -c "/usr/lib/lua/ubidots.lua -get "$api_key" "$deviceID" all data.txt")
#data is saved in router /tmp/data.txt


