#!/bin/bash
 
# Define the new name
NEW_NAME="Amit"
 
# Loop through each branch and update the file
for branch in $(git branch --format '%(refname:short)'); do
    git checkout $branch
    echo "name : $NEW_NAME" > Namechange
    git add Namechange
    git commit -m "Update name in $branch"
done
 
# Return to the original branch
git checkout main
