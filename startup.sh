#!/bin/sh
cd /app
python api.py &
poe-openai-proxy &
wait