#!/bin/bash 
Uhome=$Home
if [ "$#" -eq 0 ]; then
  cd $Uhome 
fi
if [ "$#" -eq 1 ];then
	cd $1
fi
