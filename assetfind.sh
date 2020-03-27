#!/bin/bash

url=$1

if [ ! -d "$url" ];then
	mkdir $url
fi

if [ ! -d "$url/recon" ];then
	mkdir $url/recon
fi

echo "[+] Searching Subdomains using Assetfinder "
echo "[ File will be created with the url name entered]"

assetfinder $url >> $url/recon/assets.txt

cat $url/recon/assets.txt | grep $1 >> $url/recon/final.txt
