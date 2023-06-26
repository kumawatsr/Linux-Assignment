#!/usr/bin/bash

# Identify processes running for more than 3 days
processes=$(ps -eo pid,etimes --sort=etimes --no-headers | awk -v limit=$((3*24*60 * 60)) '$2 > limit' | awk '{print $1}')

#terminating the selected processes
for pid in $processes; do
	kill "$pid"
done
