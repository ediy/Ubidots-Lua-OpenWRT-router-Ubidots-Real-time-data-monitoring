# Ubidots-Lua-OpenWRT-router-Ubidots-Real-time-data-monitoring
Ubidots is a cloud service to store and analyze sensor data in real-time.

Ubidots-Lua is written in Lua, it allows you to post data to or get data from Ubidots with minimum coding required. Ubidots-Lua should run on any OpenWRT wireless router, and it is able to execute from console, Bash script or as a Lua function call.

You can read more about this project on my website. http://ediy.com.my/index.php/projects/item/117-arduino-based-electronic-queuing-system


Execute ubidots-Lua from command-line interpreter

This will post a value of 100 to your Ubidots Variable:
root@OpenWrt:~# /usr/lib/lua/ubidots.lua -post api_key deviceID 100
You must replace api_key and deviceID with your API key and Ubidots Variable ID respectively. Upon posting this data to your Ubidots, its data is available in the widget URL immediately.

Retrieve last value from Ubidots Variable:
root@OpenWrt:~# /usr/lib/lua/ubidots.lua -get api_key deviceID

Retrieve all data from Ubidots Variable:
root@OpenWrt:~# /usr/lib/lua/ubidots.lua -get api_key deviceID all

Retrieve last value from Ubidots Variable and save it to router /tmp/data.txt directory:
root@OpenWrt:~# /usr/lib/lua/ubidots.lua -get api_key deviceID last data.txt

