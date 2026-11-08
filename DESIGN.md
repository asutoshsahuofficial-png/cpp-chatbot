---
name: Chatbot Assistant
description: Academic C++ & Web Desktop Chatbot Interface
colors:
  primary: "#2D5A46"
  primary-dark: "#224434"
  primary-light: "#DFE3DC"
  neutral-bg: "#F4F5F3"
  surface: "#FFFFFF"
  surface-soft: "#F4F5F3"
  surface-hover: "#E9EBE6"
  sidebar-bg: "#E9EBE6"
  text-primary: "#1A211E"
  text-secondary: "#333D37"
  text-muted: "#476353"
  border: "#DDE1D9"
  success: "#065F46"
  warning: "#92400E"
  danger: "#A33B2C"
typography:
  display:
    fontFamily: "'Poppins', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif"
    fontSize: "2rem"
    fontWeight: 600
    lineHeight: 1.25
    letterSpacing: "-0.02em"
  title:
    fontFamily: "'Poppins', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif"
    fontSize: "1.25rem"
    fontWeight: 600
    lineHeight: 1.4
    letterSpacing: "-0.01em"
  body:
    fontFamily: "'Poppins', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif"
    fontSize: "0.9375rem"
    fontWeight: 400
    lineHeight: 1.6
    letterSpacing: "0em"
  caption:
    fontFamily: "'Poppins', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif"
    fontSize: "0.8125rem"
    fontWeight: 500
    lineHeight: 1.4
    letterSpacing: "0.01em"
rounded:
  sm: "6px"
  md: "10px"
  lg: "16px"
  full: "9999px"
spacing:
  xs: "4px"
  sm: "8px"
  md: "16px"
  lg: "24px"
  xl: "32px"
components:
  button-primary:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.surface}"
    rounded: "{rounded.md}"
    padding: "10px 20px"
  button-primary-hover:
    backgroundColor: "{colors.primary-dark}"
  input-text:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.text-primary}"
    rounded: "{rounded.md}"
    padding: "12px 16px"
  chat-bubble-user:
    backgroundColor: "{colors.primary-light}"
    textColor: "{colors.text-primary}"
    rounded: "{rounded.lg}"
    padding: "12px 18px"
  chat-bubble-bot:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.text-primary}"
    rounded: "{rounded.lg}"
    padding: "12px 18px"
---

## Overview

The Chatbot Assistant web interface serves as the interaction layer for an academic C++17 desktop server with Groq AI integration. It is designed to be clean, responsive, and distraction-free for live demonstrations and academic evaluations at Creative Techno College.

## Colors

- **Primary Accent (`#2D5A46` / `#224434`):** High-contrast forest sage for active navigation, action buttons, and primary cues.
- **Surfaces & Backgrounds (`#F4F5F3` / `#FFFFFF`):** Warm, natural slate tones ensuring high readability under classroom and projector conditions.
- **Sidebar (`#E9EBE6` light / `#181818` dark):** Clean neutral separation between navigation controls and the active chat stream.
- **Semantic Badges:**
  - Online / Groq AI: Emerald (`#065F46`)
  - Offline Fallback / Local Knowledge: Amber (`#92400E`)
  - System Errors / Network Drops: Rose (`#A33B2C`)

## Typography

- **Font Family:** `Poppins` with system fallbacks.
- **Hierarchy:**
  - Display: `2rem` (H1 headers), letter spacing optically balanced (`-0.02em`).
  - Headings: `1.25rem` – `1.5rem` with semibold weight (600).
  - Body & Message Text: Minimum `0.9375rem` (15px) for optimal legibility; never drop below 13px for secondary meta text.

## Layout

- **Shell:** Two-column desktop layout with a sidebar (`260px` – `280px`) and an expansive chat canvas.
- **Message Stream:** Centered max-width column (`768px` – `840px`) to prevent excessively wide reading lines.
- **Composer Dock:** Sticky bottom input bar with attached attachment, speech, and send triggers.

## Elevation & Depth

- Avoid colored glows or extreme neon halos.
- Use soft, ambient shadow layers:
  - Default cards: `0 1px 3px rgba(0, 0, 0, 0.05)`
  - Floating panels / Modals: `0 10px 25px rgba(0, 0, 0, 0.08)`

## Shapes

- **Corner Radius:** Subtly rounded corners (`6px` for small badges/buttons, `10px` for cards/inputs, `16px` for chat bubbles). Avoid overly cartoonish pill shapes on structural containers.
- **Borders:** Crisp `1px` subtle borders (`#DDE1D9` light mode, `#2C2C2C` dark mode) instead of heavy accent outlines.

## Components

- **Empty Chat State:** Clean in-stream hero block introducing the system capabilities (C++ Engine, Groq AI, Local Q&A).
- **Chat Bubbles:** Asymmetric rounding to differentiate bot responses (softer, neutral background) from user prompts (accent ground).
- **Status Pills:** Compact indicator pills showing backend mode (Groq Cloud LLM vs Local Offline).
- **File Attachment Chips:** Compact pills with remove triggers and MIME-type icons.

## Do's and Don'ts

### Do:
- Ensure all text-to-background combinations meet or exceed WCAG AA contrast (minimum 4.5:1).
- Provide immediate visual feedback when switching between online AI and local knowledge rules.
- Maintain adequate padding (minimum 12px) around cards, dialogs, and containers.

### Don't:
- Don't use purple-to-cyan gradient glows or zero-offset glowing box shadows.
- Don't crush letter-spacing below `-0.02em` or set body text sizes below `13px`.
- Don't use heavy side-tab accent borders (`border-left: 3px solid ...`) on content cards.
- Don't nest cards inside cards when subtle dividers or white space suffice.
