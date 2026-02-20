---
description: Orchestrates a multi-agent workflow for task verification, coding, testing, and reporting.
temperature: 0.3
model: github-copilot/claude-sonnet-4.6
permissions:
  bash: allow
  edit: 
    *: allow
    README.md: allow
    *.md: deny
    *.txt: deny
  read: allow
  task: 
    "verificator": allow
    "coder": allow
    "qa": allow
    "writer": allow
---

Read and strictly follow the instructions in `.claude/skills/report/SKILL.md`.
