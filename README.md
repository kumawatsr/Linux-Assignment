# Linux-Assignment

1. identify IP address of system
>  ifconfig | grep 'inet '

IPv4 is the older and more commonly used version, while IPv6 is the newer and more future-proof version.


2. store data of processes running into a csv file and print out 3rd line.
>ps aux > 1.txt && head -n 3 1.txt | tail -n 1

The ps aux command is used in the Linux terminal to display a detailed list of all running processes.
aux: These are options passed to the ps command:
a: Shows processes from all users, rather than just the current user.
u: Displays a detailed output format that includes the user and resource usage information for each process.
x: Includes processes that are not attached to a terminal (e.g., background processes).


3. write a bash script to take user's name and age as input and output message based on his age whether he is eligible to drive or not assuming age to drive is 18.
>input : user name , user age
>output : if age >= 18 -> Eligible to drive
	    Else -> Not eligible
If age < 0 -> Age should be greater than zero.

#!/usr/bin/bash

read -p "Enter your name: " name
read -p "Enter your age: " age

if ((age < 0)); then
    echo "Invalid age. Age cannot be negative."
elif ((age >= 18)); then
    echo "Hello $name! You are $age years old. You are eligible to drive."
else
    echo "Hello $name! You are $age years old. You are not eligible to drive yet."
fi


4. identify commands ran in history which may contain substring 'cd' or 'ls'
>history | grep -e 'cd' -e 'ls'

Using multiple -e options, we can search for multiple patterns 

5. write bash script which takes filename as input and checks whether this file is present or not and output message accordingly.

#!/usr/bin/bash

read -p "Enter the filename: " filename

if  find /home/shtlp_0094 -name "$filename" | grep -q "$filename"; then
    echo "The file $filename exists."
else
    echo "The file $filename does not exist."
fi

6. Find all files that are images or video with size greater than 10MB - recursively - list them out sorted.

#!/usr/bin/bash

find . -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.gif" -o -name "*.mp4" -o -name "*.avi" -o -name "*.mkv" \) -size +10M | sort -k 5


7. Identify all processes that have been running for more than 3 days period and terminate them.

!/usr/bin/bash

->Identify processes running for more than 3 days

processes=$(ps -eo pid,etimes --sort=etimes --no-headers | awk -v limit=$((3*24*60 * 60)) '$2 > limit' | awk '{print $1}')

->terminating the selected processes

for pid in $processes; do
        kill "$pid"
done





