#!/usr/bin/bash

find . -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.gif" -o -name "*.mp4" -o -name "*.avi" -o -name "*.mkv" \) -size +10M | sort -k 5

