# Product

<!-- impeccable:product-schema 1 -->

## Platform

web

## Users
Academic evaluators, examiners, and faculty at Creative Techno College (affiliated with Utkal University) evaluating this BCA 2nd Semester project, as well as student peers and demonstrators showcasing the software.

## Product Purpose
Provide an interactive, responsive desktop chatbot that pairs a custom C++17 HTTP backend server with modern cloud AI capabilities (Groq API) and deterministic local knowledge fallback to guarantee offline resilience.

## Positioning
An AI-first hybrid desktop assistant: utilizes high-performance cloud LLMs for open-ended conversation and file inspection, backed by a native C++ engine and local knowledge base to ensure continuous operation even during connectivity failures or API downtime.

## Operating Context
Runs locally on Windows workstations. The native C++ backend binary (`chatbot_updated.exe`) serves the web frontend over localhost, accessed and operated through modern web browsers during classroom presentations, project viva, and live demos.

## Capabilities and Constraints
- **Capabilities:**
  - AI-driven conversational responses powered by Groq API (`openai/gpt-oss-20b` for text and `qwen/qwen3.8-27b` for vision/image inputs).
  - Deterministic local pattern matching and synonym search against `knowledge.json`.
  - Multi-format file parsing (TXT, DOCX, and image payloads).
  - Session history persistence, viewing, and JSON export via `chat_history.json`.
  - Offline fallback when network is absent or API quota is exhausted.
- **Constraints:**
  - Strict preservation of the C++ HTTP server contracts and endpoints (`/chat`, `/history`, static asset delivery).
  - Native Windows execution with minimal runtime prerequisites.
  - Zero crashes on network drops or invalid API keys.

## Brand Commitments
- **Project Title:** Chatbot Assistant
- **Academic Body:** Creative Techno College / Utkal University
- **Voice & Tone:** Crisp, professional, academically rigorous, and clean.

## Evidence on Hand
- [`README.md`](README.md): Architecture diagrams, runtime flow, and setup guide.
- [`Source/chatbot.cpp`](Source/chatbot.cpp): C++17 HTTP server and rule/AI dispatcher.
- [`Source/index.html`](Source/index.html), [`Source/style.css`](Source/style.css), [`Source/script.js`](Source/script.js): Production frontend assets.
- [`Source/knowledge.json`](Source/knowledge.json): Local fallback Q&A database.
- [`Docs/Project Report.docx`](Docs/Project%20Report.docx): Formal academic documentation.

## Product Principles
1. **Uninterrupted Availability:** Gracefully transition between cloud AI and local rules so the user always receives a coherent response.
2. **Transparent System State:** Visual status badges must immediately clarify whether responses are generated via cloud AI or local fallback.
3. **Restraint & Polish:** Avoid AI frontend clichés (monotonous purple glow gradients, nested card spam); use purposeful typography, clean information density, and precise spacing suitable for academic presentation.

## Accessibility & Inclusion
Maintain WCAG AA color contrast, responsive viewport adaptation, full keyboard navigability for chat inputs and history modals, and legible typographic sizing.
