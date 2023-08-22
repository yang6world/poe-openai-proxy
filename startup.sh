#!/bin/sh
cd /app
python api.py &
/app/poe-openai-proxy &
wait