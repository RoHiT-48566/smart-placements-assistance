# Smart Placement Assistance

The **Smart Placements Assistance Application** is a web-based platform designed to streamline student inquiries about company details such as salary packages, interview rounds, and hiring trends. By leveraging **React** for an interactive frontend, **FastAPI** for a robust backend, and **ChromaDB** for efficient data retrieval, the application provides **AI-driven responses** and **insightful company analytics**. The system automates the process of answering common placement-related queries, offering students quick and accurate information while enabling data-driven decision-making. Through intelligent query handling and structured data visualization, this application enhances the efficiency of campus placement support. 🚀

- **Backend:** FastAPI, ChromaDB
- **Frontend:** ReactJS, Tailwind CSS
- **Ollama Model:** Gemma 3 with 4B parameters

---

## 🚀 Getting Started

### **1️⃣ Fork the Repository**

1. Go to the **GitHub repository**.
2. Click the **Fork** button (top right corner).
3. This creates a copy of the repo under your GitHub account.

### **2️⃣ Clone the Forked Repository**

```sh
git clone <your-forked-repo-url>
cd smart-placement-assistance  # Change to project folder
```

---

# **💻 Backend Setup (FastAPI + ChromaDB)**

### **3️⃣ Navigate to the Backend Folder**

```sh
cd backend
```

### **4️⃣ Set Up a Virtual Environment**

We created the virtual environment using **Conda**, but you can also use `venv`.

#### **Using Conda (Recommended)**

```sh
conda create --name smart-placement-env python=3.9  # Create a conda environment
conda activate smart-placement-env  # Activate the environment
```

#### **Alternatively, Using Python's Built-in venv**

```sh
python -m venv venv  # Create a virtual environment
source venv/bin/activate  # On macOS/Linux
venv\Scripts\activate  # On Windows
```

### **5️⃣ Install Backend Dependencies**

```sh
pip install -r requirements.txt
```

### **6️⃣ Ensure `db/chroma_data` Exists**

This folder is automatically created, but you can verify:

```sh
ls db/  # On macOS/Linux
dir db\  # On Windows
```

If `db/chroma_data` doesn’t exist, create it manually:

```sh
mkdir -p db/chroma_data  # On macOS/Linux
mkdir db\chroma_data  # On Windows
```

### **7️⃣ Start the FastAPI Server**

```sh
python server.py
```

- The backend is now running at `http://127.0.0.1:8000/`
- API docs are available at `http://127.0.0.1:8000/docs`
- For details on backend API endpoints, refer to the [README.md](backend/README.md) in the backend folder.

---

# **🌐 Frontend Setup (ReactJS + Tailwind CSS)**

### **8️⃣ Navigate to the Frontend Folder**

Open a new terminal and go to the frontend folder:

```sh
cd ../frontend
```

### **9️⃣ Install Frontend Dependencies**

```sh
npm install  # For ReactJS
```

### **🔟 Start the Frontend Development Server**

```sh
npm run start  # For ReactJS
```

- The frontend should now be accessible at `http://localhost:3000/`

---

# **📡 Testing API Routes**

### **1️⃣1️⃣ Insert Data into Backend**

Use **Postman, Curl, or the frontend** to call the API.

Example using `curl` (replace with actual API endpoint):

```sh
curl -X POST "http://127.0.0.1:8000/add_placement_data" -H "Content-Type: application/json" -d '{"company": "Google", "salary": 30}'
```

If Postman and Curl are not flexible, you can directly visit `http://127.0.0.1:8000/docs` to test the API using the interactive Swagger UI.

**For details on backend API endpoints, refer to the [README.md](backend/README.md) in the backend folder.**

---

# **⬆️ Committing & Pushing Changes**

### **1️⃣2️⃣ Push Any Changes to Your Fork**

```sh
git add .
git commit -m "Updated frontend & backend"
git push origin main
```

### **1️⃣3️⃣ Create a Pull Request (PR)**

1. Go to your **GitHub fork**.
2. Click **Compare & pull request**.
3. Add a description and submit the PR.

---

# **🎯 Summary of Steps**

✅ **Fork the repo**  
✅ **Clone it locally**  
✅ **Set up a virtual environment using Conda (`conda create --name smart-placement-env python=3.9`)**  
✅ **Alternatively, use `venv` (`python -m venv venv`)**  
✅ **Install backend dependencies (`pip install -r requirements.txt`)**  
✅ **Ensure `db/chroma_data` exists**  
✅ **Start FastAPI backend (`uvicorn app:app --reload`)**  
✅ **Install frontend dependencies (`npm install`)**  
✅ **Start frontend (`npm start`)**  
✅ **Test API routes using Postman, Curl, or frontend**  
✅ **Alternatively, test API routes via `http://127.0.0.1:8000/docs`**  
✅ **Push changes & create a PR (if contributing)**

---

This ensures a **smooth setup** for all contributors. 🚀
