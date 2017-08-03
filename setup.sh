#!/bin/sh

PROJECTS_DIR=${HOME}/Code

# setup folder structure
mkdir ${PROJECTS_DIR}

# brew setup
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade --all

# Apps
brew install automake
brew install chromedriver
brew install cloc
brew install cmake
brew install composer
brew install coreutils
brew install cscope
brew install ctags
brew install curl
brew install diff-so-fancy
brew install dirmngr
brew install dnsmasq
# brew install docker
# brew install fish
brew install flow
brew install fontconfig
brew install freetype
brew install gdbm
brew install gettext
brew install ghc
brew install git
brew install git-flow
brew install git-flow-avh
# brew install gitlab-ci-multi-runner
# brew install gmp
# brew install gnupg
# brew install gnupg2
# brew install go
brew install gpg-agent
# brew install gradle
# brew install heroku
# brew install htop-osx
brew install httpie
brew install icu4c
brew install jpeg
# brew install leiningen
brew install libassuan
brew install libffi
brew install libgcrypt
brew install libgpg-error
brew install libksba
brew install libpng
# brew install libtermkey
brew install libtool
brew install libusb
brew install libusb-compat
# brew install libuv
# brew install libvterm
brew install libxml2
brew install libyaml
brew install lua
# brew install luajit
# brew install macvim
# brew install msgpack
# brew install mtr
brew install mysql
# brew install neovim
brew install node
brew install nvm
brew install openssl
# brew install pandoc
# brew install passpie
brew install pcre
brew install pcre2
brew install perl
brew install php-cs-fixer
brew install php56
brew install php56-xdebug
brew install php56-mcrypt
brew install php70
brew install php70-xdebug
brew install php70-mcrypt
brew install php71
brew install php71-xdebug
brew install php71-mcrypt
brew install phpunit
brew install pinentry
# brew install pixman
brew install pkg-config
# brew install postgresql
# brew install pth
# brew install pwgen
brew install python
# brew install python3
brew install readline
brew install ruby
# brew install sphinx-doc
brew install sqlite
brew install thefuck
# brew install tidy-html5
# brew install unibilium
# brew install unixodbc
# brew install watchman
brew install wget
brew install xz
brew install yarn
brew install zsh
brew install zsh-autosuggestions
brew install zsh-completions

# OSX native apps
brew tap caskroom/cask
brew tap caskroom/versions

function installcask() {
    brew cask install "${@}" --force 2> /dev/null
}

# installcask aegisub
installcask appcleaner
# installcask arduino
# installcask atom
# installcask cyberduck
# installcask datagrip
# installcask dbeaver-enterprise
# installcask docker
installcask dropbox
installcask filezilla
installcask firefox
# installcask flickr-uploadr
# installcask fork
# installcask franz
# installcask fritzing
# installcask genymotion
# installcask gitkraken
installcask google-chrome
# installcask google-chrome-canary
# installcask google-earth
# installcask google-play-music-desktop-player
# installcask harvest
# installcask insomnia
# installcask intellij-idea
installcask java
# installcask jubler
installcask kap
installcask keepingyouawake
# installcask macdown
# installcask macpass
# installcask mattermost
# installcask meld
# installcask mplayerx
# installcask mysqlworkbench
# installcask paw
# installcask pgadmin4
installcask phpstorm
installcask poedit
installcask postman
# installcask pycharm
installcask rest
installcask robomongo
# installcask rubymine
installcask screenhero
installcask sequel-pro
# installcask sketchup
installcask skype
# installcask smartgit
# installcask sourcetree
installcask spotify
# installcask sqlpro-studio
# installcask stremio
# installcask subtitle-master
# installcask teamviewer
# installcask totalterminal
# installcask tunnelblick
# installcask vagrant
# installcask vagrant-manager
# installcask valentina-studio
# installcask virtualbox
# installcask virtualbox-extension-pack
# installcask visual-studio
# installcask visual-studio-code
installcask vlc
# installcask vmware-fusion
# installcask webstorm
# installcask whatsapp
# installcask xquartz
installcask xtrafinder
# installcask zazu

# npm dependencies that I'm not likely to live without
# npm install -g adonis-cli
# npm install -g angular-cli
# npm install -g babel-eslint
# npm install -g bower
# npm install -g cbt_tunnels
# npm install -g express-generator
# npm install -g firebase-tools
# npm install -g grunt
# npm install -g grunt-cli
npm install -g gulp
# npm install -g http-server
# npm install -g ied
# npm install -g nativescript
npm install -g npm
# npm install -g npm-check-updates
# npm install -g pug
# npm install -g react-native-cli
# npm install -g standard
# npm install -g ungit
# npm install -g wcwidth

## Get dotfiles repo and setup symlinks
git clone https://github.com/lucasmezencio/dotfiles.git ${PROJECTS_DIR}/dotfiles
cd ${HOME}
ln -si ${PROJECTS_DIR}/dotfiles/.oh-my-zsh/themes/af-magic-mine.zsh-theme .oh-my-zsh/themes/af-magic-mine.zsh-theme
ln -si ${PROJECTS_DIR}/dotfiles/.bash_aliases .bash_aliases
ln -si ${PROJECTS_DIR}/dotfiles/.bash_profile .bash_profile
ln -si ${PROJECTS_DIR}/dotfiles/.env .env
ln -si ${PROJECTS_DIR}/dotfiles/.gitconfig .gitconfig
ln -si ${PROJECTS_DIR}/dotfiles/.gitignore_global .gitignore_global
ln -si ${PROJECTS_DIR}/dotfiles/.vimrc .vimrc
ln -si ${PROJECTS_DIR}/dotfiles/.zshrc .zshrc
