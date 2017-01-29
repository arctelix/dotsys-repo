#!/usr/bin/env bash

install () {
   #curl -LOk https://github.com/duanefields/VirtualKVM/releases/download/v1.1.2/VirtualKVM.zip
   pwd="$PWD"
   dir="~/virtualKVM.temp"
   mkdir $dir
   cd $dir
   # Fixes sierra compatibility
   curl -LOk https://github.com/SoneeJohn/VirtualKVM/releases/download/v1.2.1/VirtualKVM.zip
   unzip VirtualKVM.zip
   mv VirtualKVM.app /Applications/VirtualKVM.app
   cd $pwd
   rm -fr $dir
}

"$@"
