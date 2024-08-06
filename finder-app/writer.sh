#!/bin/sh
# Tester script for assignment 1 and assignment 2
# Author: Siddhant Jajoo

if [ "$#" -ne 2 ]; then
  echo "Error: Two arguments required - <directory and file name> <search_string>"
  exit 1
fi

writefile=$1
writestr=$2
directory=$(dirname "$writefile")

# Create the directory if it does not exist
mkdir -p "$directory"

if [ $? -ne 0 ]; then
  echo "Error: Could not create the directory $directory"
  exit 1
fi

echo "$writestr" > "$writefile"

# Check if the file was successfully written
if [ $? -ne 0 ]; then
  echo "Error: Could not write to the file $writefile"
  exit 1
fi

exit 0