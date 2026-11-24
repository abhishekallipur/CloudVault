#!/bin/bash
echo "cloudvault magment"
date "+%Y-%m-%d %A %I:%M:%S %p"
echo " hello $USER"
bucket="abhishek-test-bucket"
aws s3 mb s3://"$bucket"
while true
do
    echo "=============================="
    echo "       S3 BUCKET MANAGER"
    echo "=============================="
    echo "1. List all buckets"
    echo "2. List files in bucket"
    echo "3. Upload a file"
    echo "4. Download a file"
    echo "5. Delete a file"
    echo "6. Create bucket"
    echo "7. Exit"
    echo "================================"
    read -p "enter your choice" choice
    case $choice in
        1)
            echo "the bucket are there in the aws are :"
            aws s3 ls
            ;;
        2)
            echo "the file inside the bucket are :"
            aws s3 ls s3://$bucket
            ;;
        3)
            read -p "enter the file to upload to the bucket" filename
            aws s3 cp "$filename" "s3://$bucket"
            ;;
        4)
            echo "the file inside the bucket are :"
            aws s3 ls s3://$bucket
            read -p "enter the file name to download" filenamedownload
            aws s3 cp s3://$bucket/$filenamedownload .
            ;;
        5)
            echo "this are the file in the bucket $bucket"
            aws s3 ls s3://"$bucket"
            read -p "enter the file you want to delete :" filenamedelete
            aws s3 rm "s3://$bucket/$filenamedelete"
            ;;
        6) 
            read -p "enter the name of the bucket" bucketname
            aws s3 mb "s3://$bucket"
            ;;
        7)
            exit 0
            ;;
    esac
    echo ""
done





