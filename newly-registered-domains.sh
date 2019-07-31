#!/bin/bash

datedl=$(date --date '1 days ago' '+%Y-%m-%d')
zip="$datedl.zip"
b64=$(echo $zip | base64)

ok=$(expr $b64 : "\(.*\).$")

urlbase="https://whoisds.com//whois-database/newly-registered-domains/"
urlend="=/nrd"

allurl="$urlbase$ok$urlend"

wget -O $zip $allurl
