#!/bin/bash
cd /home/ubuntu/my-ml-app

# Activate the virtual environment
source venv/bin/activate

# Start the Flask app
nohup python3 app.py > server.log 2>&1 &
