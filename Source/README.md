# 🤖 AI Chatbot Assistant — Version v2.0.0 (RAG Edition)

A high-performance, lightweight AI Chatbot built with a **C++17 backend server**, a **Hybrid RAG (Retrieval-Augmented Generation) pipeline**, and a **Vanilla HTML/CSS/JavaScript frontend**.

The application combines a local C++ Multi-Signal Knowledge Retriever with the **Groq API** to generate responses grounded in retrieved context. This grounding is intended to reduce unsupported claims, but it does not guarantee accuracy or eliminate hallucinations. An offline local fallback is also available.

---

## 📌 Project Overview & RAG Architecture

AI Chatbot Assistant uses **Retrieval-Augmented Generation (RAG)** instead of costly and static model fine-tuning. RAG dynamically searches local data, injects relevant retrieved context into the LLM prompt, and generates responses intended to reduce unsupported claims; accuracy is not guaranteed.

### How RAG Works in This Project

```text
┌─────────────────────────────────────────────────────────────┐
│                   User Question / Prompt                    │
└──────────────────────────────┬──────────────────────────────┘
                               │
                               ▼
┌─────────────────────────────────────────────────────────────┐
│                 C++17 Backend (chatbot.cpp)                 │
├─────────────────────────────────────────────────────────────┤
│ 1. Keyword Rule Check (instant greetings, farewells)        │
│ 2. RETRIEVAL: Multi-signal search in knowledge.json         │
│    • Token overlap, synonyms, stop-words, substring match   │
│    • Candidate scoring & ranking -> Top-K Context Chunks    │
└──────────────────────────────┬──────────────────────────────┘
                               │
                ┌──────────────┴──────────────┐
                ▼                             ▼
       [Matching chunks]                [No chunks]
          │                                  │
     ┌────┴─────┐                       ┌────┴─────┐
     ▼          ▼                       ▼          ▼
 [Groq key] [No Groq key]           [Groq key] [No Groq key]
     │          │                       │          │
     ▼          ▼                       ▼          ▼
 Groq uses   Local knowledge       Groq called  Return an
 retrieved   fallback if a         without      unavailable-
 context     qualifying match      retrieved    information
             exists                context      notice
```

With no API key, a knowledge answer is returned only when retrieval finds a qualifying match; otherwise the chatbot returns an unavailable-information notice.

All branch results are returned to the Web Browser UI, which displays the response and its source information.

---

## 💡 Why RAG over Fine-Tuning?

- **Zero GPU Training Cost:** Fine-tuning requires expensive cloud GPUs and training scripts; RAG runs efficiently on standard college hardware.
- **Instant Updates:** Updating `knowledge.json` via the Admin panel immediately updates the chatbot's knowledge with **zero retraining**.
- **Grounded Responses:** Responses use retrieved college notes and FAQs as context, which is intended to reduce unsupported claims but cannot guarantee accuracy or eliminate hallucinations.
- **Document Analysis (Document RAG):** Each `.txt` or `.docx` upload is analyzed with that upload's text. Follow-up chat requests do not retain the document text unless it is supplied again through the follow-up request path.

---

## ✨ Features

- ⚡ **Hybrid RAG Pipeline:** Multi-signal C++ retriever paired with Groq LLM generation.
- 🤖 **AI-powered Chatbot:** Conversational AI via Groq API (`openai/gpt-oss-20b`).
- 👁️ **Multimodal/Vision Support:** Analyze images using `qwen/qwen3.8-27b`.
- 📄 **Document RAG:** Analyze each uploaded text or DOCX file; follow-up chat requests can use its text only when supplied again through that request path.
- 📴 **Offline Fallback:** In the No Groq key branch, a qualifying local knowledge match is returned.
- 💬 **Persistent Memory:** Conversation history stored locally in JSON.
- 🔄 **Response Refresh:** Regenerate previous responses with their original RAG context while the in-memory refresh context remains available; eviction or server restart can remove it.
- 🔐 **Security & Admin:** API key management, masking, admin authentication, and rate limiting.
- 🎨 **Modern Interface:** Custom HTML/CSS with dark/light themes, Markdown rendering, and code syntax highlighting.
- 📦 **Lightweight:** Native C++ backend distributed as a standalone Windows executable.

---

## 🛠️ Technology Stack

### Backend

| Technology | Purpose |
| :--- | :--- |
| **C++17** | Main backend/server logic |
| **MinGW-w64 / MSYS2** | Windows C++ build environment |
| **cpp-httplib** | HTTP server and REST API |
| **nlohmann/json** | JSON parsing and generation |
| **libcurl** | HTTPS communication with Groq |
| **PowerShell** | Internal script execution for DOCX parsing |

### Frontend

| Technology | Purpose |
| :--- | :--- |
| **HTML5 & CSS3** | Web page structure, UI styling, and responsive layout |
| **Vanilla JavaScript** | Frontend logic, DOM manipulation, and API requests |
| **marked.js v14** | Markdown response rendering |
| **highlight.js v11.8.0** | Code syntax highlighting |
| **DOMPurify** | Safe HTML sanitization against XSS |

---

## 📁 Project Structure

```text
ChatBot/
├── .git/                 # Git repository metadata
├── .gitignore            # Git ignore configuration
├── Docs/                 # Project documentation
├── Notice/               # Project notices and related documents
└── Source/
    ├── vendor/           # Local dependencies (marked.js, highlight.js, DOMPurify)
    ├── .env              # Environment config (API Keys, Admin Pass) - Not committed
    ├── run_updated.bat   # Windows run/launch helper script
    ├── chatbot.cpp       # Main C++ backend source code
    ├── chatbot_updated.exe # Compiled Windows executable
    ├── httplib.h         # cpp-httplib single-header library
    ├── json.hpp          # nlohmann/json single-header library
    ├── index.html        # Main frontend interface
    ├── script.js         # Frontend JavaScript logic
    ├── style.css         # Frontend UI stylesheet
    ├── chat_history.json # Local conversation history database
    ├── knowledge.json    # Local Knowledge Base storage
    └── README.md         # This documentation file
```

---

## 🚀 Installation & Setup

### 1. Configure the Environment
To run this project securely, you need to configure your environment variables:
1. Navigate to the `Source` folder.
2. Create a new file and name it exactly `.env` (ensure it does not have a `.txt` extension).
3. Open `.env` in a text editor and add your credentials:
   ```env
   GROQ_API_KEY=your_groq_api_key_here
   ADMIN_PASSWORD=your_secure_password
   ```

### 2. Install Build Tools
The project relies on MSYS2 for compilation on Windows.
1. Install [MSYS2](https://www.msys2.org/).
2. Open the **MSYS2 UCRT64** terminal.
3. Install the C++ compiler and cURL libraries:
   ```bash
   pacman -S mingw-w64-ucrt-x86_64-gcc mingw-w64-ucrt-x86_64-curl
   ```

---

## 🔨 Build the Project

Open the **MSYS2 UCRT64** terminal, navigate to the `Source` directory, and compile:

```bash
cd "/e/Creative Techno College/Technocrats/Projects/Project List/ChatBot/Source"

g++ -std=c++17 -O2 -I. chatbot.cpp -o chatbot_updated.exe -static-libgcc -static-libstdc++ -lcurl -lws2_32 -lwinpthread
```
*After a successful compilation, `chatbot_updated.exe` will be generated in the same directory.*

---

## ▶️ Run the Application

You can start the compiled backend directly from the terminal:
```bash
./chatbot_updated.exe
```
Alternatively, double-click the included Windows batch launcher (`run_updated.bat`).

Once running, open your web browser and navigate to:
**http://127.0.0.1:8080**

### ⚡ One-Liner (Build & Run)
```bash
cd "/e/Creative Techno College/Technocrats/Projects/Project List/ChatBot/Source" && \
g++ -std=c++17 -O2 -I. chatbot.cpp -o chatbot_updated.exe -static-libgcc -static-libstdc++ -lcurl -lws2_32 -lwinpthread && \
./chatbot_updated.exe
```

---

## 📡 REST API Architecture

The C++ backend exposes REST-style endpoints for secure frontend communication.

| Method | Endpoint                | Purpose |
| :--- | :--- | :--- |
| `POST` | `/api/chat`             | Send a user message and obtain an AI/local response |
| `POST` | `/api/file-read`        | Process text, documents (DOCX), and images (Vision) |
| `POST` | `/api/refresh`          | Regenerate a response while retaining original file context |
| `GET`  | `/api/history`          | Retrieve conversation history |
| `POST` | `/api/history/clear`    | Clear all conversation history |
| `GET`  | `/api/history/export`   | Retrieve raw history JSON payload |
| `POST` | `/api/admin/login`      | Authenticate administrator |
| `GET`  | `/api/knowledge`        | Fetch local Knowledge Base entries |
| `POST` | `/api/knowledge/add`    | Add a Q&A entry to the Knowledge Base |
| `POST` | `/api/knowledge/update` | Edit an existing Knowledge Base entry |
| `POST` | `/api/knowledge/delete` | Remove a Knowledge Base entry |

---

## 🔐 Security & Data Management

*   **API Key Safety:** The `.env` file prevents hardcoding credentials. Keys are parsed strictly on the C++ server and never exposed to the client.
*   **XSS Protection:** Frontend content is safely sanitized via DOMPurify before marked.js parses Markdown, mitigating injection attacks.
*   **Rate Limiting:** Administrative endpoints implement memory-based IP lockouts to deter brute-force login attempts.
*   **Local Data:** 
    *   `knowledge.json` acts as an offline Q&A fallback layer, configurable via the admin UI.
    *   `chat_history.json` retains conversational context continuously.

---

## 📊 Project Information

| Category | Details |
| :--- | :--- |
| **Project** | AI Chatbot Assistant |
| **Version** | v1.9.10 |
| **Backend / Server** | C++17, cpp-httplib |
| **Frontend UI** | HTML5, CSS3, Vanilla JS |
| **AI Provider** | Groq API |
| **Data Format** | nlohmann/json |
| **Networking** | libcurl |
| **Target Platform** | Windows 10/11 |

---

## 🔮 Future Scope
- Transition local JSON storage to SQLite for robust data handling.
- Expand support for additional AI providers and localized models.
- Enhance cross-platform support for DOCX/PDF parsing.
- Further refine frontend themes and component modularity.

---

## 👨‍💻 Author

**Asutosh Sahu**  
BCA Student, Creative Techno College

---

## 📄 Purpose & License

This project was built for educational purposes to demonstrate practical integration of **C++ backend development**, **HTTP/REST API design**, **Frontend engineering**, and **AI Multimodal integrations**. 

Please refer to the repository's `Notice/` directory for extended guidelines on student grouping, usage, and project descriptions.

---
> **AI Chatbot Assistant v1.9.10**  
> `C++17 Backend + Vanilla Web Frontend + Groq API + Local Knowledge Base = 🤖 Chatbot`
