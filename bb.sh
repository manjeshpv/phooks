#!/bin/bash 
export GOPATH=/root/go

go env

echo  "chdir"
pwd

echo "Environment variables setup"

#export GOROOT="/usr/bin"
#export GOPATH="/root/go"
#export PATH="$PATH:$GOROOT/bin"
echo $GOPATH
echo $GOROOT
echo  "Pulling from github"
 git pull origin master

echo "Updating packages"
pwd
echo $GOPATH
echo $GOROOT
 /usr/bin/go get 

echo  "Building from source"
 /usr/bin/go build 

echo "installing source"
 /usr/bin/go install

echo "restarting server"
systemctl restart bb

echo "Happy Moments with Beatle Buddy"
