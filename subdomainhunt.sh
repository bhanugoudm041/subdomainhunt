#!/bin/bash
echo "            _         _                       _       _                 _   "
echo "           | |       | |                     (_)     | |               | |  "
echo "  ___ _   _| |__   __| | ___  _ __ ___   __ _ _ _ __ | |__  _   _ _ __ | |_ "
echo " / __| | | |  _ \ / _  |/ _ \| _   _ \ / _  | |  _ \|  _  \| | | |  _ \| __|"
echo " \__ \ |_| | |_) | (_| | (_) | | | | | | (_| | | | | | | | | |_| | | | | |_ "
echo " |___/\__,_|_.__/ \__,_|\___/|_| |_| |_|\__,_|_|_| |_|_| |_|\__,_|_| |_|\__|"
echo "                                                                            "
echo "*****************************developed by bhanugoud*************************"
echo "i developed this tool for educational purpose only. iam not responsible if you miss use this tool"
echo 'welcome to subdomain finder'
echo 'provide a domain name ex:hello.com'
read domain
echo 'provide full path to the subdomains file ex:subdomains.txt'
read subdomain
echo 'all your output will be stored in a file called subsoutput.txt'
while read sub  
do 
	host $sub'.'$domain|grep address >> subsoutput.txt
done < $subdomain
