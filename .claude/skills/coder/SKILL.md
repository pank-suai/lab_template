---
name: coder
description: Solve programming tasks for this lab template. Use when asked to implement assignment logic or produce C++ (default C++23) or other language code, especially when file structure, headers, or output language rules must be followed.
---

# Coder

## Core rules

- Use the language requested by the user. If unspecified, use C++23.
- Keep data structures simple unless explicitly required.
- Use minimal comments. If comments are needed, write them in Russian.
- Any program output text must be in Russian unless the user asks for another language.
- Do not use decorative box-drawing characters in output.
- Follow the template conventions: 2-space indentation, snake_case for vars/functions, PascalCase for types.

## C++ file layout

- Place class declarations in `.hpp` with `#pragma once`.
- Place method implementations in corresponding `.cpp` files.
- Split code into multiple files when it improves clarity (e.g., separate classes).

## Qt projects

- Use `.ui` files from Qt Designer unless the user explicitly forbids it.
- Ensure `setupUi(this)` is called and `.ui` integration is correct.

## Delivery

- Provide complete, compilable code and all necessary files.
- Validate inputs and handle edge cases (empty structures, overflow) if relevant.
