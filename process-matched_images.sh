#!/bin/sh
awk -F',' '{print $1}' matched_images.csv > originallist-input.txt
awk -F',' '{print "cgr.dev/chainguard-private/" $3}' matched_images.csv > newlist-input.txt
# Detect GNU vs BSD sed and trim header row
if sed --version 2>/dev/null | grep -q GNU; then
    sed -i '1d' originallist-input.txt
    sed -i '1d' newlist-input.txt
else
    sed -i '' '1d' originallist-input.txt
    sed -i '' '1d' newlist-input.txt
fi
