---
description: Interactive setup — install missing tools, configure provider and models
---

Full project setup: check/install dependencies, optionally configure Jupyter for the `math` agent, then configure the LLM provider.

## Part 1: Dependencies

Check if installed: `g++`, `make`, `typst`, `npm`/`npx`. For any missing tool — tell the user and offer to install. Skip tools already present.

After tools are ready, install MCP server dependencies: `npm install --prefix .opencode`

## Part 2: Jupyter Lab (optional)

**Ask the user:** "Do you need the `math` agent (solves math tasks via Jupyter notebook)?"

If the user answers **no** — skip this entire part and go to Part 3.

If the user answers **yes** — proceed with the setup below. Follow the official guide from [datalayer/jupyter-mcp-server](https://github.com/datalayer/jupyter-mcp-server).

Also check that `python3`/`pip3` and `uvx` are available. Offer to install if missing.

### 2.1 Create a virtual environment (preferred)

```bash
python3 -m venv .venv && source .venv/bin/activate
```

On Windows: `.venv\Scripts\activate`

### 2.2 Install Python dependencies

Inside the activated venv:

```bash
pip install jupyterlab==4.4.1 jupyter-collaboration==4.0.2 jupyter-mcp-tools>=0.1.4 ipykernel
pip uninstall -y pycrdt datalayer_pycrdt
pip install datalayer_pycrdt==0.12.17
```

Then install math libraries:

```bash
pip install numpy scipy sympy matplotlib pandas
```

### 2.3 Install `uv` (needed for the MCP server)

The MCP server (`jupyter-mcp-server`) is invoked via `uvx` (part of `uv`). Make sure `uv >= 0.6.14` is available:

```bash
pip install uv
```

Or via Homebrew: `brew install uv`. Verify: `uv --version`.

### 2.4 Start JupyterLab

Start JupyterLab with the token matching `opencode.json` (`JUPYTER_TOKEN`):

```bash
jupyter lab --port 8888 --IdentityProvider.token OPENCODE --no-browser
```

Verify it is running: `curl -s http://localhost:8888/api/status?token=OPENCODE`. If the response contains `"started"`, Jupyter is ready.

**Tip:** To confirm real-time collaboration works, open a notebook in JupyterLab, type in a cell, and wait — the tab indicator should change from "x" to a dot automatically (auto-save via collaboration).

### 2.5 Notes

- Jupyter must be running before the `math` agent can work.
- The MCP server (`jupyter-mcp-server`) is invoked via `uvx` automatically — no separate install is needed.
- If Jupyter is already running on another port/token, update `JUPYTER_URL` and `JUPYTER_TOKEN` in `opencode.json` → `mcp.jupyter.environment` accordingly.
- If the venv is not activated when running opencode, the `jupyter lab` process should be started separately in a terminal with the venv activated.

## Part 3: Provider

Configure models for all agents in `opencode.json`. Only the `model` field is changed.

| Role | Agents |
|---|---|
| Heavy (code) | coder |
| Heavy (text) | writer |
| Heavy (math) | math |
| Light | verificator, report, qa |

### Presets

| Provider | Light | coder | writer | math |
|---|---|---|---|---|
| `github-copilot` | gemini-3-flash-preview | claude-sonnet-4.6 | gemini-3-flash-preview | gemini-3.1-pro |
| `anthropic` | claude-haiku-4-20250514 | claude-sonnet-4-6-20250415 | claude-sonnet-4-6-20250415 | claude-opus-4-6-20250415 |
| `google` | gemini-3-flash-preview | gemini-3-pro-preview | gemini-3-flash-preview | gemini-3.1-pro |
| `opencode` | big-pickle | glm-5 | glm-5 | glm-5 |

### Steps

1. Ask: GitHub Copilot, Anthropic, Google, OpenCode Zen, or **Custom**.
2. For **Custom** — ask: prefix, heavy model, light model, writer model, math model.
3. Show planned changes. Wait for confirmation.
4. Edit `opencode.json` — only `model` fields. Verify.
