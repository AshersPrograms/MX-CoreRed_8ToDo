#!/bin/sh
#AccuWeather (r) RSS weather tool for conky
#
#USAGE: weather.sh <locationcode>
#USAGE: weather.sh 	#the program will look up the weather for you
#
#(c) Michael Seiler 2007
# Additional Author: Asher Simcha ashersprograms@gmail.com
METRIC=0 #Should be 0 or 1; 0 for F, 1 for C
# Get public IP address
if [ -z $1 ]; then
	public_ip=$(curl -s https://api.ipify.org)
	# Use IP address to get geolocation information
	response=$(curl -s "https://ipapi.co/$public_ip/json/")
	# Extract zip code from the response
	CITY=$(echo "$response" | jq -r '.postal')
else
	CITY=$1
fi
curl -s http://rss.accuweather.com/rss/liveweather_rss.asp\?metric\=${METRIC}\&locCode\=$CITY | perl -ne 'if (/Currently/) {chomp;/\<title\>Currently: (.*)?\<\/title\>/; print "$1"; }'
echo
