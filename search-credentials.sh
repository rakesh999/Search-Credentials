#!/bin/bash
# By Rakesh S
# Feel free to contact me via chat or email with any feedback or suggestions that you may have:
# rakeshsharma.paravoor@gmail.com
###############################################################################################
clear
echo
echo -n "Domain name: "
read domain
#Check for no response domain name
if [ -z $domain ];then
echo "You didn't enter the domain name"
exit
fi
echo
echo "Searching publicly available credentials for: $domain"
read -p "Please <enter> to continue "
echo
firefox &
sleep 4
firefox http://bugmenot.com/view/$domain &
sleep 1
firefox -new-tab http://login2.me/#$domain &
sleep 1
firefox -new-tab http://www.loginfinder.com/search.php?q=$domain &
sleep 1
firefox -new-tab http://fakeaccount.net/login/$domain &
sleep 1
firefox -new-tab https://www.google.com/#q=$domain+username+and+password &