#!/bin/sh  
    
api_key="your api key here"
deviceID="your deviceID here"
value=10 #post this value

#obtain a token
my_token=`/usr/lib/lua/ubidots.lua -token $api_key)`
echo "Token: "$my_token

#post data to Ubidots
/usr/lib/lua/ubidots.lua "-post" $api_key $deviceID $value

#retrieve last value from Ubidots
my_data=`/usr/lib/lua/ubidots.lua "-get" $api_key $deviceID`
echo $my_data

#retrieve all value from Ubidots
my_data=`/usr/lib/lua/ubidots.lua "-get" $api_key $deviceID "all"`
echo $my_data

#retrive last value from Ubidots & save to \tmp\data1.txt       
/usr/lib/lua/ubidots.lua "-get" $api_key $deviceID "" "data1.txt"

#retrieve all data from Ubidots & save to \tmp\data2.txt       
/usr/lib/lua/ubidots.lua "-get" $api_key $deviceID "all" "data2.txt"
