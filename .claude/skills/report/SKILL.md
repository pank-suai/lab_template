---
name: report
description: Orchestrate lab tasks end-to-end. Use when asked to verify requirements, implement code, test it, and produce a final report and README updates.
---

# Report (Orchestrator)

## Workflow

1. Verify the assignment and required data (create or update `TASK.md`).
2. Implement the solution based on `TASK.md`.
3. Run minimal QA and produce `TEST_SUMMARY.md`.
4. Fix issues found by QA.
5. Produce the final Typst report in `docs/index.typ`.
6. Update `README.md` with a brief summary, run instructions, and file layout.

## Notes

- If specialized subagents are not available, perform these steps yourself in order.
- Do not skip verification: ensure variants, inputs, and report structure are confirmed before coding.
