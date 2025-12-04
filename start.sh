#!/bin/bash

echo "=========================================="
echo "🚀 Starting Smart Placements Assistance"
echo "=========================================="
echo "ℹ️  Note: If this is the first run, the system will download the AI model (approx 1.3GB)."
echo "☕ This process may take 5-10 minutes depending on internet speed."
echo "ℹ️  Please wait until you see 'Application startup complete' in the logs."
echo "=========================================="

# 1. Fix Permissions
# We ensure the entrypoint script is executable so the Ollama container doesn't crash.
echo "🔧 Setting permissions for entrypoint..."
chmod +x entrypoint.sh

# 2. Check if Docker is running (Basic check)
if ! docker info > /dev/null 2>&1; then
  echo "❌ Error: Docker is not running."
  echo "👉 Please open Docker Desktop and try again."
  exit 1
fi

# 3. Build and Start
# --build ensures we use your latest code and optimizations
echo "🐳 Building and Starting Containers..."
docker-compose up --build