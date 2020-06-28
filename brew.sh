#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# TODO: Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# moreutils includes these:
#  chronic: runs a command quietly unless it fails
#  combine: combine the lines in two files using boolean operations
#  ifdata: get network interface info without parsing ifconfig output
#  ifne: run a program if the standard input is not empty
#  isutf8: check if a file or standard input is utf-8
#  lckdo: execute a program with a lock held
#  mispipe: pipe two commands, returning the exit status of the first
#  parallel: run multiple jobs at once
#  pee: tee standard input to pipes
#  sponge: soak up standard input and write to a file
#  ts: timestamp standard input
#  vidir: edit a directory in your text editor
#  vipe: insert a text editor into a pipe
#  zrun: automatically uncompress arguments to command

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install Bash 4 or is it 5.
# TODO: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew install bash
#brew install bash-completion2   # This screws up filename completion with my aliases
brew install bash-completion

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget`
brew install wget

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
# TODO - what is this for:
brew install screen

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF (capture the flag) tools; see https://github.com/ctfs/write-ups.
#brew install binutils
#brew install dex2jar
#brew install dns2tcp
#brew install fcrackzip
#brew install hashpump
#brew install knock
#brew install netpbm

# network security scanner:
brew install nmap
brew install pngcheck
#brew install socat
# TODO - what is this for:
brew install sqlmap
brew install tcpflow
# TODO - what is this for:
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
# This is a pdf viewer:
brew install xpdf

# Install other useful binaries.
brew install ack    # beyond grep
brew install git
brew install git-lfs
brew install maven

# Text-based browser:
brew install lynx
#brew install links # An alternative to lynx
brew install p7zip
brew install pigz   # Parallel gzip

# List dir files in tree form:
brew install tree
brew install gradle

# System resource monitor
brew install htop

# AWS
brew install awscli

#CloudFoundry
brew tap cloudfoundry/tap
brew install cf-cli

# Better than cat:
brew install bat

# Convert from one doc format to another
# eg, pandoc -f markdown -t html README.md > README.html
brew install pandoc
# Some pandoc dependencies:
brew install librsvg
brew install pdflatex
brew cask install mactex
#brew install homebrew/cask/basictex

# Just for fun....
brew install cowsay
brew install figlet
brew install fortune
brew install lolcat

brew install jenv
brew install dos2unix

# Search
brew install the_silver_searcher

# for autojumping between recent folders(Check usage here - https://github.com/rupa/z/)
brew install z

# Remove outdated versions from the cellar.
brew cleanup

