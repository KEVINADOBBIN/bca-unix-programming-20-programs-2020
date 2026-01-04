#!/bin/bash

echo "Enter the login name of the user:"
read username

# Get user login info
userinfo=$(who | grep "^$username ")

# Check if user is logged in
if [ -z "$userinfo" ]
then
    echo "User $username is not logged in"
    exit 1
fi

# Extract login time (HH:MM)
login_hour=$(echo "$userinfo" | awk '{print $4}' | cut -d: -f1)
login_min=$(echo "$userinfo" | awk '{print $4}' | cut -d: -f2)

# Get current time
current_hour=$(date +%H)
current_min=$(date +%M)

# Convert both times to minutes
login_total=$((login_hour * 60 + login_min))
current_total=$((current_hour * 60 + current_min))

# Calculate working duration
worked_minutes=$((current_total - login_total))

hours=$((worked_minutes / 60))
minutes=$((worked_minutes % 60))

echo "User $username has been working for $hours hour(s) and $minutes minute(s)"
