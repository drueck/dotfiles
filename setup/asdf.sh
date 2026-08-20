#!/bin/sh

if ! command -v asdf &> /dev/null; then
  echo "Installing asdf."
  brew install asdf

  echo "Configuring completions..."
  mkdir -p "${ASDF_DATA_DIR:-$HOME/.asdf}/completions"
  asdf completion zsh > "${ASDF_DATA_DIR:-$HOME/.asdf}/completions/_asdf"

  echo "Add asdf config to .zshrc.local..."
  cat <<'EOF' >> ~/.zshrc.local
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

# append completions to fpath
fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit
EOF

else
  echo "asdf is installed."
fi
