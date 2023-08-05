#!/bin/sh

# Status bar module for disk space
# $1 should be drive mountpoint, otherwise assumed /.

location=/

[ -d "$location" ] || exit

icon=" "
echo "$icon $(df -h "$location" | awk ' /[0-9]/ {print $3}')"