---
name: study-material
description: Generate comprehensive study materials based on the lab assignment. Use when asked to create study notes, revision aids, or exam-prep materials with control questions and answers.
---

# Study Material Generator

## Purpose

Produce a self-contained study document (`STUDY_MATERIAL.md`) that covers all theory, methods, and formulas relevant to the current lab assignment, and finishes with control questions and detailed answers.

## When to Use

- User asks to create study/revision materials for the lab
- User asks for control questions and answers on the topic
- User wants a theory summary or cheat-sheet based on the assignment

## When NOT to Use

- Writing the formal Typst report (use `writer`)
- Solving the math/code task itself (use `math` or `coder`)
- Verifying task requirements (use `verificator`)

## Workflow

1. **Read `TASK.md`** to understand the topic, variant, and required methods.
2. **Read the guide PDF** (if present in the project root) to extract theoretical background, definitions, formulas, and methodology described by the instructor.
3. **Read any existing solution notebooks or source files** to understand which specific techniques were applied.
4. **Compose `STUDY_MATERIAL.md`** following the structure below.

## Output Structure

The document MUST contain all of the following sections in order:

### Header
- Title of the lab work
- Topic / subject area

### 1. Theoretical Background
- Full explanation of the underlying theory relevant to the lab
- Key definitions and terminology with clear explanations
- All relevant formulas with descriptions of every variable
- Conditions of applicability and limitations

### 2. Methods and Algorithms
- Step-by-step description of each method used in the lab
- Decision criteria (e.g., statistical thresholds, critical values)
- Interpretation rules for results

### 3. Worked Example Summary
- Brief walkthrough of how the methods apply to the specific variant from `TASK.md`
- Reference key intermediate results (do NOT re-solve; summarize what was done)

### 4. Key Takeaways
- Bullet list of the most important facts and relationships a student must remember
- Common mistakes and how to avoid them

### 5. Control Questions and Answers
- At least 10 questions covering all major topics from the lab
- Questions should range from basic definitions to applied/analytical
- Each question MUST be followed by a complete, detailed answer
- Format:

```
#### Q1: <question text>

**Answer:** <full detailed answer>
```

## Writing Rules

- Language: Russian (match the assignment language)
- Be thorough and complete — the material should be sufficient for exam preparation
- Write formulas using LaTeX syntax (`$...$` for inline, `$$...$$` for display)
- Do not copy-paste raw code; explain concepts in prose
- Do not modify any existing project files (`TASK.md`, `docs/`, notebooks)
- Keep the tone academic but accessible

## Constraints

- Output is a single file: `STUDY_MATERIAL.md` in the project root
- Do not duplicate the report; this is a learning aid, not a formal document
- Questions must have answers — never leave answers blank or partial
- Cover the full breadth of the lab topic, not just the variant-specific part
