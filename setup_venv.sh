#!/usr/bin/env bash
set -euo pipefail



# Create a virtual Python environment
VENV_DIR=".venv"
[ -d "$VENV_DIR" ] && rm -rf "$VENV_DIR"
python3.12 -m venv "$VENV_DIR"
source "$VENV_DIR/bin/activate"

# Install package with development dependencies
pip install --upgrade pip
pip install -e .[dev,docs]
