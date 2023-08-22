#!/bin/sh
cd /app
python api.py &
sleep 30 
/app/poe-openai-proxy &
wait