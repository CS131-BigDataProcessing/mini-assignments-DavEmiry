#!/bin/bash

# Check if temperature argument is passed
if [ -z "$1" ]; then
  echo "Please provide a temperature."
  exit 1
fi

temp=$1

if [ "$temp" -lt 55 ]; then
  echo "freezing"
elif [ "$temp" -gt 55 ] && [ "$temp" -lt 67 ]; then
  echo "cold"
elif [ "$temp" -gt 67 ] && [ "$temp" -lt 85 ]; then
  echo "nice"
else
  echo "hot"
fi

