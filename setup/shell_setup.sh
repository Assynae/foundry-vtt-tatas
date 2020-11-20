# Setup bash-it for a better bash experience
# https://github.com/Bash-it/bash-it

git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh --silent

# Change theme to axin
sed -i 's/^\(export BASH_IT_THEME=\).*$/\1"axin"/' ~/.bashrc
