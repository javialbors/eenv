# eenv

A shell function for macOS that exports environment variables from `.env` files into your current terminal session.

---

## Installation

### 1. Open your shell config file

```bash
vim ~/.zshrc
```

> If you use bash instead of zsh, use `~/.bash_profile` instead.

### 2. Paste the function at the end of the file

Paste the `eenv` function from `eenv.sh` into the end of the shell config file. 

### 3. Reload your shell config

```bash
source ~/.zshrc
```

> You only need to do this once. New terminal windows will load it automatically.

---

## Usage

```bash
# Load from .env in the current directory
eenv

# Load from a specific file
eenv .env.production
eenv .env.local
eenv .env.staging
```