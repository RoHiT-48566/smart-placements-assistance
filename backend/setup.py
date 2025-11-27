import os
import subprocess
import sys

print("Installing dependencies...")
subprocess.run([sys.executable, "-m", "pip", "install", "-r", "requirements.txt"], check=True)

print("Downloading spaCy model...")
subprocess.run([sys.executable, "-m", "spacy", "download", "en_core_web_md"], check=True)

print("✅ Backend setup complete!")
