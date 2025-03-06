#!/bin/bash

# Script to render the Quarto project to HTML

# Set the script to exit on error
set -e

# Get the directory of the script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Navigate to the project root directory (parent of scripts directory)
cd "$SCRIPT_DIR/.."

echo "Starting Quarto render process..."

# Check if Quarto is installed
if ! command -v quarto &> /dev/null; then
    echo "Error: Quarto is not installed or not in PATH."
    echo "Please install Quarto from https://quarto.org/docs/get-started/"
    exit 1
fi

# Render the Quarto project
quarto render

echo "Render complete! The website is available in the _site directory."
echo "To preview the site, run: quarto preview" 