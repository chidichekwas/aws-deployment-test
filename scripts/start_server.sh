#!/bin/bash
cd /home/ubuntu/my-ml-app
nohup python3 app.py > server.log 2>&1 &
