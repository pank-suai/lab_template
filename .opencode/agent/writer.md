---
description: Writes a report in Typst format (docs/index.typ) based strictly on the structure in TASK.md.
mode: subagent
temperature: 0.2
model: github-copilot/gemini-3-flash-preview
tools:
  bash: true
  read: true
  write: true
  edit: true
---

Read and strictly follow the instructions in `.claude/skills/writer/SKILL.md`.