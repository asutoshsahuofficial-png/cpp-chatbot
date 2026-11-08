# 🎓 ChatBot Assistant — C++17 & Web Hybrid AI System
### Major Academic Project | Bachelor of Computer Application (BCA)
**Creative Techno College, Baluakata, Saradhapur, Anugola (Angul, Odisha)**  
*(Affiliated with Utkal University, Bhubaneswar, Odisha)*

---

## 🏛️ Academic & Institutional Details

- **Academic Degree:** Bachelor of Computer Application (BCA)
- **Academic Term / Session:** Second Semester, Academic Session 2025–2026
- **Submission Date:** November 2026
- **Institution:** Creative Techno College, Baluakata, Saradhapur, Anugola, Angul
- **Affiliating University:** Utkal University, Bhubaneswar
- **Department:** Department of Computer Application

### 👨‍💻 Project Development Team

| Name | Roll Number / ID | Academic Role | Key Responsibilities |
| :--- | :--- | :--- | :--- |
| **Asutosh Sahu** | **03BCA2514** *(Reg: 28117802030150)* | **Technical Lead & Full-Stack Developer** | C++17 Core Engine, HTTP REST Backend, Groq AI Integration, Multimodal File Parsing, Security Architecture, UI/UX Design |
| **Subhashree Sahu** | — | Requirements & Documentation | Institutional Knowledge Base compilation, Academic Project Report & Documentation |
| **Sahil Setha** | — | Presentation & Demonstration | System Validation, Project Presentation & Viva Defense Strategy |
| **Subham Behera** | — | Project Coordinator & QA | Testing, Test Cases, Quality Assurance & Build Verification |

### 🧑‍🏫 Supervision & Guidance
- **Internal Project Guide:** **Mr. Swastik Ranjan Sahoo**, Department of Computer Application, Creative Techno College
- **Head of Department:** Department of Computer Application, Creative Techno College

---

## 📜 Student Declaration & Academic Certificate

> **Student Declaration:**  
> *"I hereby declare that this project report and software implementation entitled **'Chatbot Assistant'** is an authentic record of bonafide work carried out by me in partial fulfillment of the requirements for the award of the degree of Bachelor of Computer Application (BCA) at Creative Techno College, affiliated with Utkal University, Bhubaneswar. The project has been developed under the direct supervision and guidance of Mr. Swastik Ranjan Sahoo."*  
> &mdash; **Asutosh Sahu** (Roll No: `03BCA2514`)

---

## 📌 Executive Summary & Abstract

The **ChatBot Assistant** is an intelligent, high-performance hybrid desktop and web application designed to deliver instant college institutional information, programming help, and advanced generative reasoning. 

Built on a **Dual-Engine Architecture**, it bridges low-level systems programming in **C++17** with contemporary **Cloud Generative AI (Groq API)** and a modern, responsive web interface.

```
┌────────────────────────────────────────────────────────────────────────┐
│                        User Browser (Web UI)                           │
│           (Vanilla JS, Marked.js Markdown, Highlight.js Code)          │
└───────────────────────────────────┬────────────────────────────────────┘
                                    │ HTTP Requests (JSON / REST API)
                                    ▼
┌────────────────────────────────────────────────────────────────────────┐
│                   C++17 HTTP Server (chatbot.cpp)                      │
│            Powered by cpp-httplib, nlohmann/json & libcurl             │
├────────────────────────────────────────────────────────────────────────┤
│  • Session & Multi-Turn History Management (Atomic JSON Persistence)   │
│  • Memory Cache (RAM speed for Knowledge Base & Chat Sessions)         │
│  • Sliding-Window Rate Limiting & Admin Authentication Protection      │
│  • Multimodal Document Extractor (.txt, Word .docx, Image Vision)      │
└───────────────────┬────────────────────────────────┬───────────────────┘
                    │                                │
                    ▼                                ▼
       [Engine 1: Local Knowledge]       [Engine 2: Cloud Generative AI]
         Fast Deterministic Match              Groq REST API (libcurl)
           (knowledge.json)                  (Llama-3.3-70B / Vision)
                    │                                │
                    ▼                                ▼
     Instant Response (< 5ms latency)      Generative Answer + Streaming
```

### Key Highlights
1. **Dual-Engine Architecture:** Local deterministic pattern matching (`knowledge.json`) executes in under 5 milliseconds. Complex or open-ended inquiries seamlessly route to the Groq Cloud AI Engine (`llama-3.3-70b-versatile` / `qwen/qwen3.8-27b`).
2. **True Offline Resilience:** If the network is disconnected or the API key is not configured, the C++ server gracefully serves all local institutional FAQs without crashing or hanging.
3. **Multimodal File Processing:** Upload `.txt` and `.docx` (Microsoft Word) documents for automated context extraction, or upload images for inspection using vision AI models.
4. **Security & Data Integrity:**
   - Sliding-window rate limiter prevents brute-force attacks on the administrative endpoint.
   - Atomic file swapping (`MoveFileExA` / `rename`) prevents JSON file corruption during sudden system shutdowns.
   - RAM caching minimizes disk I/O bottlenecks.
5. **Dynamic Knowledge Administration:** Web-based password-protected administrator portal allowing real-time addition, modification, and deletion of college FAQs without recompiling the binary.

---

## ✨ System Features

- ⚡ **Zero-Latency Local Knowledge:** Instant answers for Creative Techno College departments, faculty, admission procedures, exams, syllabus, and technical subjects.
- 🧠 **Cloud AI Integration:** Integrated with Groq's high-speed inference engine for natural, context-aware conversational dialogues.
- 📄 **Document Understanding:** Native support for plain text and Word (`.docx`) file ingestion, enabling users to summarize or ask questions about lecture notes and syllabus documents.
- 👁️ **Vision & Image Understanding:** Multimodal image upload support with AI visual reasoning.
- 💬 **Conversation Session Management:** Persistent multi-turn dialogues with sidebar session lists, prompt editing, response regeneration, and text/JSON export.
- 🔐 **Secured Admin Control Panel:** Manage institutional Q&A records with password authentication, session tokens, and brute-force mitigation.
- 🎨 **Modern Responsive UI:** Glassmorphism-inspired dark/light theme styling, syntax highlighting for code snippets, math/markdown rendering, and animated typing indicators.
- 📦 **Self-Contained Portable Deployment:** Standalone native C++ executable (`chatbot_updated.exe`) bundled with all necessary runtime DLLs.

---

## 🛠️ Technology Stack

### Backend Architecture
| Component | Technology | Description |
| :--- | :--- | :--- |
| **Core Language** | **C++17** | High-performance, multithreaded backend server |
| **HTTP Engine** | **cpp-httplib (v0.65.0)** | Header-only cross-platform HTTP/HTTPS server |
| **JSON Serialization** | **nlohmann/json (v3.12.0)** | Modern C++ JSON parsing, manipulation, and validation |
| **Network Client** | **libcurl (v8.22.0)** | Dynamic SSL/TLS HTTP client for Groq API communications |
| **Threading** | **POSIX Threads / winpthread** | Worker thread pooling and concurrent client connection handling |
| **Compiler & Toolchain** | **GCC 16 / MinGW-w64 (MSYS2 UCRT64)** | Optimized 64-bit native Windows binary compilation |

### Frontend Web Client
| Component | Technology | Description |
| :--- | :--- | :--- |
| **Markup & Styling** | **HTML5 & CSS3** | Custom responsive UI with CSS custom properties & animations |
| **Client Logic** | **Vanilla JavaScript (ES6+)** | Asynchronous fetch requests, state management, modal handling |
| **Markdown Parser** | **Marked.js (v18.1.3)** | Safe Markdown-to-HTML rendering for AI responses |
| **Syntax Highlighting** | **Highlight.js (v11.12.0)** | Auto-detected syntax colorizer for 50+ programming languages |
| **Security Sanitizer** | **DOMPurify (v3.4.17)** | Client-side XSS prevention and HTML sanitization |
| **Icons Library** | **Lucide Icons (v1.70.0)** | High-definition SVG icons via lightweight UMD script |

---

## 📁 Repository & Directory Layout

```text
ChatBot/
│
├── Docs/                               # Official Academic Documentation
│   ├── Project Report.docx             # Complete formatted BCA Project Report
│   └── Project Synopsis.pdf            # Initial Project Synopsis & Approval
│
├── Notice/                             # Institutional Notices & Requirements
│   ├── C++ Project Description.pdf     # Academic Project Guidelines & Syllabus
│   ├── Notice.pdf                      # Departmental Project Notice
│   └── Student Groupping.pdf           # Batch & Team Allocation Record
│
├── Source/                             # Complete Application Source Code
│   ├── vendor/                         # Offline Frontend Vendor Dependencies
│   │   ├── marked.min.js               # Markdown parser
│   │   ├── highlight.min.js            # Code syntax highlighter
│   │   ├── github-dark.min.css         # Highlight.js dark theme
│   │   └── purify.min.js               # DOMPurify XSS filter
│   │
│   ├── .env.example                    # Environment credentials template
│   ├── build_updated.bat               # One-click MSYS2 UCRT64 compilation script
│   ├── run_updated.bat                 # One-click launcher with pre-flight checks
│   │
│   ├── chatbot.cpp                     # Main C++17 multithreaded HTTP server
│   ├── chatbot_updated.exe             # Precompiled 64-bit Windows binary
│   ├── httplib.h                       # C++ HTTP library header
│   ├── json.hpp                        # C++ JSON library header
│   │
│   ├── index.html                      # Single Page Application (SPA) Web UI
│   ├── script.js                       # Frontend UI controller & state management
│   ├── style.css                       # Responsive design system & themes
│   ├── welcome-bg.jpg                  # Application landing graphics
│   │
│   ├── knowledge.json                  # Local institutional FAQ knowledge base
│   ├── chat_history.json               # Conversation session storage
│   ├── README.md                       # Source directory documentation
│   └── *.dll                           # Windows runtime libraries for libcurl
│
├── .gitignore                          # Git exclusions (credentials, temp files)
├── DESIGN.md                           # System Design Document & UI Specifications
├── PRODUCT.md                          # Product Requirements & Roadmap
└── README.md                           # Main Project & Academic Repository Guide
```

---

## 🚀 Installation, Build & Execution Guide

### 1. Prerequisites
- **Operating System:** Windows 10 or Windows 11 (64-bit)
- **Compiler (for building from source):** MSYS2 with UCRT64 `g++` compiler (GCC 13+)
- **Browser:** Any modern web browser (Google Chrome, Microsoft Edge, Mozilla Firefox)

### 2. Environment Configuration
1. Navigate into the `Source` directory:
   ```cmd
   cd Source
   ```
2. Copy `.env.example` to create `.env`:
   ```cmd
   copy .env.example .env
   ```
3. Edit `.env` with your preferred settings:
   ```env
   GROQ_API_KEY=your_groq_api_key_here
   ADMIN_PASSWORD=your_custom_admin_password
   ```
   *(Note: If no `GROQ_API_KEY` is provided, the chatbot continues to operate seamlessly using its offline knowledge base).*

### 3. Compiling the C++ Backend
You can build using the automated batch script:
```cmd
build_updated.bat
```
Or execute the compilation command directly using MSYS2 UCRT64 `g++`:
```bash
g++ -std=c++17 -O2 -D_FORTIFY_SOURCE=2 -fstack-protector-strong \
    -I. chatbot.cpp -o chatbot_updated.exe \
    -Wl,--nxcompat -Wl,--dynamicbase -Wl,--high-entropy-va \
    -static-libgcc -static-libstdc++ -lcurl -lws2_32 -lwinpthread
```

### 4. Running the Application
Launch the server using:
```cmd
run_updated.bat
```
Or double-click `run_updated.bat`. The script performs pre-flight checks, sets the library search path, starts the backend, and automatically opens your browser at:
👉 **`http://127.0.0.1:8080`**

---

## 📡 REST API Specification

| Method | Endpoint | Access | Purpose |
| :--- | :--- | :--- | :--- |
| `POST` | `/api/chat` | Public | Main conversational endpoint (local match + Groq fallback) |
| `POST` | `/api/file-read` | Public | Upload and extract content from `.txt`, `.docx`, or images |
| `POST` | `/api/refresh` | Public | Re-generates a specific response turn without re-uploading |
| `GET` | `/api/history` | Public | Retrieves all active conversation sessions and messages |
| `POST` | `/api/history/clear` | Admin / Token | Clears or resets stored conversation history |
| `GET` | `/api/history/export` | Public | Exports dialogue history in formatted plain text or JSON |
| `POST` | `/api/admin/login` | Public (Rate-limited) | Authenticates administrator with sliding-window protection |
| `GET` | `/api/knowledge` | Public | Returns the current list of institutional FAQs |
| `POST` | `/api/knowledge/add` | Admin Authorized | Dynamically adds a new question-and-answer record |
| `POST` | `/api/knowledge/update` | Admin Authorized | Modifies an existing knowledge base record |
| `POST` | `/api/knowledge/delete` | Admin Authorized | Deletes an entry from the knowledge base |

---

## 🛡️ Security & Robustness Features

1. **Sliding-Window Rate Limiter:** Protects the `/api/admin/login` route from brute-force password guessing by enforcing rate caps per IP address.
2. **Environment Protection:** All secrets (`GROQ_API_KEY`, `ADMIN_PASSWORD`) are loaded strictly from runtime environment variables or `.env` and are strictly excluded from version control via `.gitignore`.
3. **RAM Memory Caching:** The knowledge base and conversation histories are cached in memory for sub-millisecond retrieval speeds, with thread synchronization via mutex locks.
4. **Crash-Proof Atomic Disk Writes:** File modifications are staged to a `.tmp` file and flushed to disk before an atomic swap (`MoveFileExA` on Windows), guaranteeing file integrity even during unexpected power loss.

---

## 👥 Acknowledgements

We express our heartfelt gratitude to:
- **Mr. Swastik Ranjan Sahoo** (Internal Guide & Faculty, Department of Computer Application) for his continuous technical guidance and mentorship.
- **The Management & Faculty of Creative Techno College, Anugola** for providing the academic infrastructure and computing laboratories.
- **Utkal University, Bhubaneswar** for offering a progressive curriculum emphasizing practical, system-level software engineering.

---

### 📄 License & Academic Integrity
This repository is published as an academic project for evaluation and educational reference under the BCA curriculum. All rights reserved by **Asutosh Sahu** and **Creative Techno College** (2025–2026).
