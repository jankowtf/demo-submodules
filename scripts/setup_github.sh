#!/bin/bash

# Script to set up GitHub repositories and push the main repo and submodules
# For user: jankowtf

set -e  # Exit on error

echo "Setting up GitHub repositories for main_repo, repo_01, and repo_02..."

# Make sure we're in the main repo directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR/.."

# Check if we're in a git repository
if [ ! -d ".git" ]; then
    echo "Error: Not in a git repository. Please run this script from the main_repo directory."
    exit 1
fi

# Check if the submodules exist
if [ ! -f ".gitmodules" ]; then
    echo "Error: No .gitmodules file found. Please add submodules first."
    exit 1
fi

# Update submodule URLs in .gitmodules
echo "Updating submodule URLs to point to GitHub repositories..."
git config -f .gitmodules submodule.repo_01.url https://github.com/jankowtf/repo_01.git
git config -f .gitmodules submodule.repo_02.url https://github.com/jankowtf/repo_02.git
git add .gitmodules
git commit -m "Update submodule URLs to GitHub repositories"

# Set up main repo remote
echo "Setting up remote for main_repo..."
git remote add origin https://github.com/jankowtf/main_repo.git 2>/dev/null || \
    echo "Remote 'origin' already exists for main_repo"

# Push main repo
echo "Pushing main_repo to GitHub..."
git push -u origin main || git push -u origin master

# Set up and push repo_01
echo "Setting up remote for repo_01..."
cd repo_01
git remote add origin https://github.com/jankowtf/repo_01.git 2>/dev/null || \
    echo "Remote 'origin' already exists for repo_01"
echo "Pushing repo_01 to GitHub..."
git push -u origin main || git push -u origin master

# Set up and push repo_02
echo "Setting up remote for repo_02..."
cd ../repo_02
git remote add origin https://github.com/jankowtf/repo_02.git 2>/dev/null || \
    echo "Remote 'origin' already exists for repo_02"
echo "Pushing repo_02 to GitHub..."
git push -u origin main || git push -u origin master

# Return to main repo
cd ..

echo "Done! All repositories have been pushed to GitHub."
echo "Main repo: https://github.com/jankowtf/main_repo"
echo "Submodule 1: https://github.com/jankowtf/repo_01"
echo "Submodule 2: https://github.com/jankowtf/repo_02" 