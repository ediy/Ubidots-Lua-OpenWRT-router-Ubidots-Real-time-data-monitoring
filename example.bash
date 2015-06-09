#!/bin/bash
api_key="your api key here"
deviceID="your deviceID here"
value=10 #post this value

#obtain a token
my_token=$(bash -c "/usr/lib/lua/ubidots.lua -token "$api_key)
echo "Token: "$my_token

#post data to Ubidots
bash -c "/usr/lib/lua/ubidots.lua -post "$api_key" "$deviceID" "$value

#retrieve last value from Ubidots
my_data=$(bash -c "/usr/lib/lua/ubidots.lua -get "$api_key" "$deviceID)
echo $my_data

#retrieve all data from Ubidots
my_data=$(bash -c "/usr/lib/lua/ubidots.lua -get "$api_key" "$deviceID" all")
echo $my_data

#retrieve last value from Ubidots & save to router /tmp/data.txt
my_data=$(bash -c "/usr/lib/lua/ubidots.lua -get "$api_key" "$deviceID" all data.txt")
