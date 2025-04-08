#!/bin/bash
sudo apt update -y
sudo apt install golang-go -y
go version
# if u need latest version use below link 
https://go.dev/dl/
# using belows commands 
wget to pull the url
tar to extract
#then set golang env
#if u do ls -la u will get this file
vim ~/.profile
#paste the below script
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
#to make chnage and execute
source ~/.profile
# to check version
go version numkber
#Setting Up Your Go Workspace/project
mkdir -p ~/go/src/hello
vim ~/go/src/hello/main.go
#paste this below script inside main.go
package main

import "fmt"

func main() {
    fmt.Println("Hello, Go!")
}
#now run the GO program
cd ~/go/src/hello
go run main.go
# NOTE: HELLO STANDS UR CODE

