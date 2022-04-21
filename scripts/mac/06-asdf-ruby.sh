brew install openssl@1.1 readline
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
