#!/bin/bash
set -e

# Update package list
sudo apt-get update -y

# Install Python and venv support
sudo apt-get install -y python3 python3-venv python3-pip

# Create a virtual environment if it doesn't exist
if [ ! -d "/home/ubuntu/my-ml-app/venv" ]; then
    python3 -m venv /home/ubuntu/my-ml-app/venv
fi

# Activate the virtual environment
source /home/ubuntu/my-ml-app/venv/bin/activate

# Install dependencies inside the venv
pip install --upgrade pip
pip install -r /home/ubuntu/my-ml-app/requirements.txt
