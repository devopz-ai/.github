# Devopz.ai

**Building tools for developers and DevOps engineers**

We create open-source automation tools to help developers set up and manage their development environments efficiently.

---

## Our Projects

### [Local LLM Coding Setup](https://github.com/devopz-ai/local-llm-coding-setup)

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://github.com/devopz-ai/local-llm-coding-setup/blob/main/LICENSE)
[![macOS](https://img.shields.io/badge/macOS-Apple%20Silicon-blue.svg)](https://www.apple.com/mac-mini/)
[![Ollama](https://img.shields.io/badge/Ollama-0.18+-green.svg)](https://ollama.com/)

Complete setup for running open-source LLMs locally on Mac Mini M4 for AI-powered coding assistance, with AWS Bedrock integration and persistent memory.

**Features:**
- Free local models: Qwen, DeepSeek, Codestral via Ollama
- Enterprise models: AWS Bedrock (Claude 3.5 Sonnet, Opus, Haiku)
- Unified API gateway with LiteLLM
- Persistent memory across sessions with mem0
- Multiple tools: Aider, OpenCode, Claude Code, Continue

```bash
# Quick start
git clone https://github.com/devopz-ai/local-llm-coding-setup.git
cd local-llm-coding-setup
./scripts/setup.sh
./scripts/pull-models.sh
./scripts/start-aider.sh
```

---

### [Mac Dev Machine](https://github.com/devopz-ai/Mac-dev-machine)

[![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)](https://github.com/devopz-ai/Mac-dev-machine)
[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://github.com/devopz-ai/Mac-dev-machine/blob/main/LICENSE)
[![macOS](https://img.shields.io/badge/macOS-12%2B-blue.svg)](https://www.apple.com/macos/)

Automated setup for macOS development machines. Install 100+ development tools with a single command.

**Features:**
- Three package tiers: light, standard, advanced
- Category-based exclusion and inclusion
- Smart tool installation with auto-detection
- Auto-update with cron scheduling
- Comprehensive AI agent documentation

```bash
# Quick start
git clone https://github.com/devopz-ai/Mac-dev-machine.git
cd Mac-dev-machine
./install.sh --package standard
```

---

## Connect With Us

- **Website:** [devopz.ai](https://devopz.ai)
- **Email:** [rashed.ahmed@devopz.ai](mailto:rashed.ahmed@devopz.ai)
- **GitHub:** [@devopz-ai](https://github.com/devopz-ai)

---

**Copyright (c) 2024-2026 Devopz.ai** | Created by [Rashed Ahmed](https://github.com/kahmed25)
