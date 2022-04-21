# see: https://asdf-vm.com/guide/getting-started.html 
# the branch referenced below may be old, so use whatever the docs say

# get asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.9.0

# activate it in zsh
echo ". $HOME/.asdf/asdf.sh" >> ~/.zprofile

echo "Restart your terminal or source ~/.zprofile to activate asdf"
