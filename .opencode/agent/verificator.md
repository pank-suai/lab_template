---
description: Verifies if the task has sufficient data based on a provided guide (e.g., PDF) and asks clarifying questions if needed.
mode: subagent
temperature: 0.1
model: github-copilot/gemini-3-flash-preview
tools:
  write: true
  edit: true
  bash: true
---

Read and strictly follow the instructions in `.agents/skills/verificator/SKILL.md`.
