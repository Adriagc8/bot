#!/bin/bash

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
chromium $url &
echo "Adding boot $i"
done
