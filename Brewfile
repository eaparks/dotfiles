#!/usr/bin/env bash

# Taps
tap 'homebrew/bundle'

# Make sure we’re using the latest Homebrew.
#brew update

# Upgrade any already-installed formulae.
#brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# TODO: Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew "coreutils"

# Install some other useful utilities like `sponge`.
brew "moreutils"
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
brew "findutils"

# Install GNU `sed`, overwriting the built-in `sed`.
# brew install gnu-sed --with-default-names
# Install gnu-sed using Homebrew
# The `--with-default-names` option configures `sed` to use gnu-sed
# Without that option, you'll need to type `gsed` to use gnu-sed
# brew install --default-names gnu-sed

# Install Bash 4.
# TODO: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
# brew install bash
#brew install bash-completion2   # This screws up filename completion with my aliases
# brew install bash-completion

# Switch to using brew-installed bash as default shell
# if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
#   echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
#   chsh -s /usr/local/bin/bash;
# fi;

# Install `wget` successor wget2
brew "wget2"

# Install GnuPG to enable PGP-signing commits.
brew "gnupg"

# Install more recent versions of some macOS tools.
brew "vim --with-override-system-vi"
brew "grep"
brew "openssh"
# TODO - what is this for:
# brew install screen
# brew install homebrew/php/php56 --with-gmp

# Install font tools.
# brew tap bramstein/webfonttools
# brew install sfnt2woff
# brew install sfnt2woff-zopfli
# brew install woff2

# Install some CTF (capture the flag) tools; see https://github.com/ctfs/write-ups.
# brew install binutils
# brew install dex2jar
# brew install dns2tcp
# brew install fcrackzip
# brew install hashpump
# brew install knock
# brew install netpbm
# # TODO - what is this for:
# brew install nmap
# brew install pngcheck
# brew install socat

# XZ Utils is free general-purpose data compression software with a high compression ratio.
# brew install xz

# Install other useful binaries.
brew "ack"    # beyond grep
brew "git"
brew "git-lfs"

# List dir files in tree form:
brew "tree"
# brew install gradle

# AWS
brew "awscli"

# Better than cat:
brew "bat"

# Convert from one doc format to another
# eg, pandoc -f markdown -t html README.md > README.html
brew "pandoc"
# Some pandoc dependencies
brew "librsvg"
# brew cask install mactex

# Just for fun....
brew "figlet"
brew "fortune"
brew "cowsay"
brew "lolcat"

brew "jenv"
brew "eza"
# Official tldr client written in Rust:
brew "tlrc"

# Remove outdated versions from the cellar.
brew "clean"

