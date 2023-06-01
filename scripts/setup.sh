#!/bin/bash

# Set the root directory where the script is located
ROOT_DIR="$(dirname "$(readlink -f "$0")")/.."

# Navigate to the root directory
cd "$ROOT_DIR"

# Check if node_modules folder exists in the root directory
if [ -d "node_modules" ]; then
  echo "node_modules is installed. Running dev server..."
else
  echo "node_modules is not found. Running npm install..."
  
  # Run npm install
  npm install
  
  # Check if npm install was successful
  if [ $? -eq 0 ]; then
    echo "npm install completed successfully. Running dev server..."
  else
    echo "npm install failed. Please check for errors."
    exit 1
  fi
fi

# Run npm run dev
npm run dev
