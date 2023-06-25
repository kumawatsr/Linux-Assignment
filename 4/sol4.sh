#!/usr/bin/bash

history | grep -e 'ls' -e 'cd' > out.txt 

cat out.txt
