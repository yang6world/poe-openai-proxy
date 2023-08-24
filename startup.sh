#!/bin/sh
cd /app
python api.py &
sleep 15 
/app/poe-openai-proxy &
wait