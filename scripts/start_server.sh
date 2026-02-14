#!/bin/bash
cd /home/ec2-user/my-ml-app
nohup python3 app.py > server.log 2>&1 &