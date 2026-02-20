---
description: Solves a programming task in a specified language (defaults to C++).
mode: subagent
temperature: 0.2
model: github-copilot/claude-sonnet-4.6
permissions:
  read: allow
  edit: 
    *: allow
    *.md: deny
    *.txt: deny
  bash: 
    *: allow
    cat *: deny
---

Read and strictly follow the instructions in `.agents/skills/coder/SKILL.md`.
