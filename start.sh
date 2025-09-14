#!/bin/bash

# Set default values if environment variables are not set
export REVOLT_PUBLIC_URL=${REVOLT_PUBLIC_URL:-"https://app.revolt.chat/api"}
export PORT=${PORT:-5000}

echo "Starting Revite with API URL: $REVOLT_PUBLIC_URL"
echo "Port: $PORT"

# Check if dist directory exists
if [ ! -d "dist" ]; then
    echo "Error: dist directory not found. Make sure the project is built."
    exit 1
fi

# Start the application
yarn start:inject
