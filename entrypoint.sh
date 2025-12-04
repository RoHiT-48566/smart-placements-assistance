#!/bin/bash

# 1. Start Ollama in the background so we can send commands to it
/bin/ollama serve &

# Capture the Process ID (PID) of the server
pid=$!

# 2. Wait a few seconds for the server to wake up
sleep 5

# 3. Define the model we want (Must match your docker-compose environment var)
MODEL_NAME="llama3.2:1b"

echo "🔴 [Entrypoint] Checking for AI Model: $MODEL_NAME..."

# 4. Check if the model is already in the list
if ollama list | grep -q "$MODEL_NAME"; then
  echo "🟢 [Entrypoint] Model $MODEL_NAME found. Ready!"
else
  echo "📥 [Entrypoint] Model not found. Pulling now... (This will take a few minutes)"
  ollama pull $MODEL_NAME
  echo "✅ [Entrypoint] Download complete!"
fi

# 5. Keep the container running by waiting for the background process
wait $pid