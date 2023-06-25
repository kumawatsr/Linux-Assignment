#!/usr/bin/bash

read -p "Enter the filename: " filename

if  find /home/shtlp_0094 -name "$filename" | grep -q "$filename"; then
    echo "The file $filename exists."
else
    echo "The file $filename does not exist."
fi
