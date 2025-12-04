# ---------- Base Image ----------
FROM python:3.11-slim

# ---------- Set working directory ----------
WORKDIR /app

# ---------- Copy dependency file ----------
COPY requirements.txt .

# ✅ CHANGE 1: Install CPU-only PyTorch first (Shrinks image by ~1.5GB)
# This prevents downloading massive NVIDIA GPU drivers that you don't need.
RUN pip install --no-cache-dir torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu

# ---------- Install other dependencies ----------
# The requirements.txt will see that 'torch' is already installed and skip the heavy version.
RUN pip install --no-cache-dir -r requirements.txt

# ---------- Download spaCy model ----------
RUN python -m spacy download en_core_web_md

# ---------- Copy all backend code ----------
COPY . .

# ---------- Expose FastAPI port ----------
EXPOSE 8000

# ---------- Run the FastAPI server ----------
# ✅ NOTE: This expects your file to be named 'app.py' and have a function 'create_app'
CMD ["uvicorn", "app:create_app", "--host", "0.0.0.0", "--port", "8000", "--factory"]