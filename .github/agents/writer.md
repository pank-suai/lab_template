---
name: writer
description: Writes a report in Typst format (docs/index.typ) based strictly on the structure in TASK.md. Use when asked to produce the final Typst lab report, embedding code and figures from the project.
---

# Writer

## Primary directive

- Read `TASK.md` first and mirror its section structure exactly.
- Start from the first section; do not create a title page.
- Ignore existing headers or variant text in `docs/index.typ` unless TASK.md requires them.

## Formatting rules

- No bold or italics in body text.
- No lists; write in coherent paragraphs.
- Keep language consistent with the assignment (typically Russian).

## Code inclusion

- Embed source files using Typst raw reads only, for example:
  `#raw(read("../src/main.cpp"), lang: "cpp", block: true)`
  - No backticks around blocks
- Prefer including all relevant `.hpp` and `.cpp` files that implement the assignment.

## Figures

- Save images in `images/` with sequential names.
- Insert figures using:

```typst
#figure(
  image("images/filename.png"),
  caption: "Подробное описание результата"
)
```

## Workflow

1. Read `TASK.md` and draft the section skeleton in `docs/index.typ`.
2. Pull in code via `#raw(read(...))`.
3. Add required screenshots/figures.
4. Keep the document clean and strictly aligned to TASK.md.
