#!/bin/bash

# Check if both positional arguments are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <yourname> <amount of money>"
    exit 1
fi

NAME=$1
MONEY=$2
echo "My name is $NAME and I have \$${MONEY} in my wallet." 
