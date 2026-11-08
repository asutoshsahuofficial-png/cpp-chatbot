# 🎓 ChatBot Assistant — Source Documentation
### Bachelor of Computer Application (BCA) Major Project
**Creative Techno College, Baluakata, Saradhapur, Anugola**  
*(Affiliated with Utkal University, Bhubaneswar)*

---

## 🏛️ Project & Academic Summary
- **Candidate:** Asutosh Sahu (Roll No: `03BCA2514`, Reg No: `28117802030150`)
- **Internal Guide:** Mr. Swastik Ranjan Sahoo, Department of Computer Application
- **Course & Session:** BCA Second Semester, Session 2025–2026 (November 2026)
- **Team:** Asutosh Sahu (Lead/Dev), Subhashree Sahu (Docs), Sahil Setha (Demo), Subham Behera (QA)

---

## 📁 Source Folder Overview

This folder contains the core source code, front-end assets, and runtime build tools for the ChatBot Assistant:

- **`chatbot.cpp`**: Main multithreaded C++17 HTTP REST server (`cpp-httplib`, `nlohmann/json`, `libcurl`).
- **`chatbot_updated.exe`**: Precompiled 64-bit Windows executable.
- **`httplib.h` & `json.hpp`**: Header-only C++ libraries for HTTP web server and JSON manipulation.
- **`index.html`, `style.css`, `script.js`**: Responsive single-page application frontend with chat history, session management, and admin modal.
- **`vendor/`**: Client libraries (`marked.min.js`, `highlight.min.js`, `purifymin.js`) for markdown parsing, code highlighting, and HTML sanitization.
- **`knowledge.json`**: Pre-loaded institutional and programming Q&A knowledge base.
- **`chat_history.json`**: JSON storage for conversation dialogues.
- **`build_updated.bat`**: Compilation script for MSYS2 UCRT64 toolchain.
- **`run_updated.bat`**: Server launch script with environment verification and auto-browser launch.
- **`*.dll`**: Windows runtime dependencies required by `libcurl` and multithreading (`libcurl-4.dll`, `libssl-3-x64.dll`, etc.).

---

## 🚀 Build & Run

### 1. Build
```cmd
build_updated.bat
```
*(Requires MSYS2 UCRT64 g++).*

### 2. Run
```cmd
run_updated.bat
```
*Access in browser at:* `http://127.0.0.1:8080`
