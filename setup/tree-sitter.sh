#!/bin/sh

if ! command -v tree-sitter &> /dev/null; then
  echo "Installing tree-sitter-cli..."
  brew install tree-sitter-cli
else
  echo "tree-sitter is installed"
fi
