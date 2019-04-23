#!/usr/bin/env bash

while read name;
do
  echo "$name, $(dig +short $name|grep -v "[a-z]"|head -n 1)";
done < domains.txt > ip.txt
