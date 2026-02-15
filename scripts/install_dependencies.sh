#!/bin/bash
set -e

# Update package list
sudo apt-get update -y

# Install Python3 and pip3 if missing
sudo apt-get install -y python3 python3-pip

# Install project dependencies
pip3 install -r requirements.txt
