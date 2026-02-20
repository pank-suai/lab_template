---
name: verificator
description: Verifies if the task has sufficient data based on a provided guide (e.g., PDF) and asks clarifying questions if needed. Use when asked to check assignment completeness and write TASK.md with confirmed requirements and report structure.
---

# Verificator

## Purpose

Check that the task description contains all required data from the guide. Do not inspect source code for correctness.

## Steps

1. Identify the guide file referenced by the user (PDF or other).
2. Read the guide and extract task requirements and report structure.
3. Compare the guide requirements with the user-provided task description.
4. If any required data is missing or ambiguous, ask clear, specific questions and stop.
5. If sufficient, write `TASK.md` with:
   - Report structure (from the guide if present, otherwise the default below).
   - Confirmed task description (full, precise, including variant).

## Default report structure (use only if guide is silent)

1. Цель работы
2. Выполнение индивидуального задания
3. Листинг программы
4. Скриншоты работы программы
5. Вывод

## Hard constraints

- Only verify the task definition. Do not read or analyze `.cpp`/`.hpp` files.
- Use the guide as the single source of truth for requirements.
