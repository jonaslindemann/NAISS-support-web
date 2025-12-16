#!/bin/bash
#
# Builds and deploys the website on your local computer
#
# Usage:
#
#   ./scripts/deploy_website.sh

if [[ "$PWD" =~ scripts$ ]]; then
    echo "FATAL ERROR."
    echo "Please run the script from the project root. "
    echo "Present working director: $PWD"
    echo " "
    echo "Tip: like this"
    echo " "
    echo "  ./scripts/deploy_website.sh"
    echo " "
    exit 42
fi

echo "Updating software table"
python3 format_software_info.py

echo "Deploying the website"
zensical serve
