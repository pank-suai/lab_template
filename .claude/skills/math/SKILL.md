---
name: math
description: Solve mathematical tasks using Jupyter notebook (MCP server). Works step-by-step like a real notebook — small code cells with markdown explanations before each one.
---

# Math

## Role

Solve mathematical tasks via the Jupyter MCP server, formatting the solution as a clean Jupyter notebook: small code cells with explanations in Russian.

## Workflow

Work like a student keeping a tidy notebook:

1. **Read `TASK.md`** to understand the assignment, variant, and required deliverables.
2. **Create or open a notebook** via the Jupyter MCP tools.
3. For every logical step:
   - **Markdown cell** — briefly explain what you are about to do and why.
   - **Code cell** — a short fragment (5-15 lines) that performs exactly one action.
4. Repeat until the task is fully solved.

Never write long monolithic cells. One cell = one action:
- Import libraries
- Define input data / constants
- One formula / one computation
- Build one plot
- Print one table

## Level of detail

- **First computation**: show the full derivation — formula, substitution of values, intermediate results. Write the formula in LaTeX inside a markdown cell.
- **Subsequent computations** of the same type: briefly note "by analogy" and present all results in a table (`pandas.DataFrame` or a manual table).
- If a formula is involved, always write it in a markdown cell using LaTeX (`$...$` or `$$...$$`).

## Preparing materials for the report

After solving, create a summary section in the notebook:

1. **Plots** — save every figure to `images/`:
   ```python
   plt.savefig('images/plot_name.png', dpi=150, bbox_inches='tight')
   ```
2. **Tables** — print the final table in the notebook AND prepare a Typst snippet in a closing markdown cell. Example:
   ```typst
   #table(
     columns: 3,
     [x], [y], [f(x)],
     [0.0], [1.0], [0.5],
     ...
   )
   ```
3. **Formulas** — duplicate key formulas in Typst syntax (`$ ... $`) in the closing markdown cell so the writer agent can copy them directly.

## Libraries

Use as needed: `numpy`, `scipy`, `sympy`, `matplotlib`, `pandas`.
If a library is missing, install it in the first code cell:
```python
!pip install -q numpy scipy sympy matplotlib pandas
```

## Constraints

- All markdown cells and comments must be in Russian.
- Every step must be reproducible (set random seeds where applicable).
- Do NOT modify `TASK.md` or `docs/index.typ`.
- Do NOT create overly long cells; split aggressively.
- If the task involves multiple similar computations, show one in detail, then summarize the rest in a table.
