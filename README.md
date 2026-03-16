# Devopz.ai Organization Settings

This repository contains the organization profile and shared configurations for [Devopz.ai](https://github.com/devopz-ai).

## Structure

```
.github/
├── profile/
│   └── README.md      # Organization profile (shown on github.com/devopz-ai)
├── scripts/
│   └── add-project.sh # Helper to add new projects to profile
└── README.md          # This file
```

## Managing the Organization Profile

The profile at `profile/README.md` is displayed on the [Devopz.ai GitHub page](https://github.com/devopz-ai).

### Add a New Project

**Option 1: Use the helper script**
```bash
./scripts/add-project.sh my-new-repo "Description of the project"
git add . && git commit -m "Add my-new-repo to profile" && git push
```

**Option 2: Edit manually**
```bash
# Edit profile/README.md
# Add new project section before "Connect With Us"
git add . && git commit -m "Add my-new-repo to profile" && git push
```

### Update Existing Project

Just edit `profile/README.md` directly and push.

## For AI Agents

When user asks to add a new project to the organization:

```bash
# Clone this repo
git clone https://github.com/devopz-ai/.github.git
cd .github

# Add project using script
./scripts/add-project.sh <repo-name> "<description>"

# Or edit profile/README.md manually

# Commit and push
git add .
git commit -m "Add <repo-name> to profile"
git push
```

---

**Copyright (c) 2024-2026 Devopz.ai**
