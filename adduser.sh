#!/bin/bash

username="testdep"
passwd="123"

echo "user is $username"
echo ""password is $passwd

ssh-keygen


echo "$passwd
$passwd" | adduser --force-badname "$username"
