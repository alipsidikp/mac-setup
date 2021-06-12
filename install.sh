#! /bin/bash

echo ""
echo "-------------------"
echo "start setting up..."

echo ""
echo "-------------------"
echo "install brew..."

if test ! $(which brew); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo ""
echo "-------------------"
echo "update brew"
brew update

echo ""
echo "-------------------"
echo "install yadm..."
brew install yadm

echo ""
echo "-------------------"
echo "goto home"
cd ~

echo ""
echo "-------------------"
echo "get profile config..."
yadm clone https://github.com/alipsidikp/mac-setup.git

echo ""
echo "-------------------"
echo "install bundle software"
brew bundle install

echo ""
echo "-------------------"
echo "decrypt yadm file"
yadm decrypt

echo ""
echo "-------------------"
echo "run yadm bootstrap"
yadm bootstrap

# install apps

echo ""
echo "-------------------"
echo "end of setting up..."
