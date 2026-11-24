#!/bin/bash
echo "Welcome to CloudVault"
date "+%Y-%m-%d %A %I:%M:%S %p"
echo "this is $USER"
echo "the hotname is $HOSTNAME"
pwd
PROJECT="CloudVault"
echo "$PROJECT"
SOURCE_DIR=$(cd ../backup-data &&pwd)
echo "$SOURCE_DIR"
DATE_TIME=$(date "+%Y-%m-%d")
echo "$DATE_TIME"
if [ -d  "$SOURCE_DIR" ] ; then
	echo "there is soucre dir"
else 
	echo "not there"
fi

Bucket="my-bucket"
echo "========================================================"
echo "bucket magement"
aws s3 ls 
aws s3 ls "s3://$Bucket" 



