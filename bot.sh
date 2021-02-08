#!/bin/bash
#https://class.ilern.es/bigbluebutton/api/join?fullName=User+1643814&lockSettingsDisableMic=true&meetingID=estres+&password=ap&redirect=true&checksum=6a86d9bdd80043f5484bc95ec94593fd81f720ac
while getopts b:u: flag
do
case "${flag}" in
b) bots=${OPTARG};;
u) url=${OPTARG};;
esac
done

for (( i=0;i<$bots;i++ ))
do
sleep 1
google-chrome $url &
echo "Adding boot $i"
done
