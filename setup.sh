#!/bin/sh

PROJECTS_DIR=${HOME}/code

# setup folder structure
mkdir ${PROJECTS_DIR}

# brew setup
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew update
brew upgrade --all

# Apps
brew install automake
brew install cloc
brew install cmake
brew install composer
brew install coreutils
brew install cscope
brew install ctags
brew install curl
brew install diff-so-fancy
brew install dirmngr
brew install docker
brew install gdbm
brew install ghc
brew install git
brew install gpg-agent
brew install libassuan
brew install libffi
brew install libgcrypt
brew install libgpg-error
brew install libksba
brew install libpng
brew install libtool
brew install libusb
brew install libusb-compat
brew install libxml2
brew install libyaml
brew install node
brew install nvm
brew install openssl
brew install php
brew install python3
brew install readline
brew install ruby
brew install sqlite
brew install wget
brew install xz
brew install zsh
brew install zsh-autosuggestions
brew install zsh-completions

# cask
brew install chatgpt
brew install dbeaver-community
brew install firefox
brew install font-fira-code
brew install github
brew install handbrake
brew install imageoptim
brew install insomnia
brew install iterm2
brew install moom
brew install nordvpn
brew install phpstorm
brew install postman
brew install rectangle
brew install rest
brew install shottr
brew install slack
brew install spotify
brew install stoplight-studio
brew install sublime-text
brew install tableplus
brew install visual-studio-code
brew install vlc
brew install zoom

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# fonts
brew install font-hack
brew install font-fira-code

## get dotfiles repo and setup symlinks
git clone https://github.com/jgrossi/dotfiles.git ${PROJECTS_DIR}/dotfiles
cd ${HOME}
ln -si ${PROJECTS_DIR}/dotfiles/.aliases .aliases
ln -si ${PROJECTS_DIR}/dotfiles/.bash_profile .bash_profile
ln -si ${PROJECTS_DIR}/dotfiles/.gitconfig .gitconfig
ln -si ${PROJECTS_DIR}/dotfiles/.gitignore_global .gitignore_global
ln -si ${PROJECTS_DIR}/dotfiles/.zshrc .zshrc

