#!/usr/bin/env bash

while read ip
do
  name=$(echo $ip|cut -f 1 -d ',')
  arr=$(echo $ip|cut -f 2 -d ' ')
  shodan host --filename $name $arr
  sleep 1.5s;
done < ip-clean.txt
