#!/usr/bin/env bash

# Install command-line tools using Homebrew and mac applications with Homebrew Cask.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

###############################################################################
# Utils
###############################################################################
brew install git
brew install git-lfs

# Install `wget` with IRI support.
brew install wget --with-iri

brew install bash

###############################################################################
# Media
###############################################################################
brew install yt-dlp/taps/yt-dlp
brew install ffmpeg

###############################################################################
# Programming Language + Related
###############################################################################
brew install pyenv

###############################################################################
# Packages related to Terminal
###############################################################################
brew install fzf
brew install tldr
brew install zsh-autosuggestions
brew install zsh-fast-syntax-highlighting
brew install peco
brew install exa
brew install autoenv
brew install autojump

###############################################################################
# Homebrew Cask Downloads
###############################################################################
brew install --cask iterm2
brew install --cask alt-tab
brew install --cask flux
brew install --cask spotify
brew install --cask evernote
brew install --cask visual-studio-code
brew install --cask 1password
brew install --cask slack
brew install --cask discord
brew install --cask alfred

# Remove outdated versions from the cellar.
brew cleanup