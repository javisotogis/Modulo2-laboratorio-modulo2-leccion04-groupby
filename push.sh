#!/bin/bash

# Exit on error
set -e

# Prompt for the repository name and GitHub URL
echo "Enter the name of your GitHub repository (e.g., user/repo-name):"
read REPO_NAME

# Initialize a new Git repository
git init

# Stage all files
git add .

# Commit with a standard message
git commit -m "Initial commit"

# Add the remote origin
REMOTE_URL="git@github.com:${REPO_NAME}.git"
git remote add origin $REMOTE_URL

# Push to the remote repository
git push -u origin master

echo "Repository setup complete and pushed to $REMOTE_URL"
