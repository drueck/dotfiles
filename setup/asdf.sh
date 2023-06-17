#!/bin/sh

if [[ ! -d ~/.asdf ]]; then
  echo "Installing asdf."
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.12.0

  echo "Add asdf config to .zshrc.local..."
  cat <<'EOF' >> ~/.zshrc.local
# actiate asdf
. "$HOME/.asdf/asdf.sh"

# configure asdf completions
fpath=(${ASDF_DIR}/completions $fpath)
autoload -Uz compinit && compinit
EOF
else
  echo "asdf is installed."
fi
