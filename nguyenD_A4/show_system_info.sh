#!/bin/bash

# Display current time and date
echo "The time and date are:"
date

# Display logged-in users
echo -e "\nLet's see who is logged into the system:"
who

# For each logged-in user, display their home directory
echo -e "\nHome directories for logged-in users:"
for user in $(who | awk '{print $1}' | sort | uniq); do
    home_dir=$(getent passwd "$user" | cut -d: -f6)
    echo "For $user, the home directory is $home_dir"
done

