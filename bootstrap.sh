#!/bin/sh

echo "Install Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask

echo "Install and configure Git"
brew install git
ln -s `pwd`/gitconfig ~/.gitconfig
cp git-completion.sh ~/.git-completion.sh
cp git-prompt.sh ~/.git-prompt.sh

echo "Configure Bash"
ln -s `pwd`/bash_profile ~/.bash_profile

echo "Configure global gitignore"
ln -s `pwd`/gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

echo "Install m-cli"
brew install m-cli

echo "Install rmtrash"
brew install rmtrash

echo "Avoid iTunes launch when pressing media buttons"
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist

echo "Activate Debug mode in Safari"
defaults write com.apple.Safari IncludeDebugMenu 1

echo "Configure Finder"
m finder showhiddenfiles YES
m finder showextensions YES

echo "Configure XCode theme"
mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
ln -s `pwd`/Dracula.dvtcolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/Dracula.dvtcolortheme

echo "Install KeepingYouAwake"
brew cask install keepingyouawake

echo "Install SwiftLint"
brew install swiftlint

echo "Install Synx"
gem install synx

echo "Install Fastlane"
brew cask install fastlane

echo "Install Cocoapods"
sudo gem install cocoapods
