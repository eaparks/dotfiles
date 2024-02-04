#!/bin/zsh

# Because you can never quite anticipate in which
# environment your particular zsh will be launched in,
# it is good practice to reset the options at the beginning
# of your script with the emulate command:
emulate -LR zsh

function doIt() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude ".osx" \
		--exclude "bootstrap.sh" \
		--exclude "bootstrap.zsh" \
		--exclude "iMac_setup_notes.txt" \
		--exclude "README.md" \
		--exclude "REVIEWFILE" \
		--exclude "LICENSE-MIT.txt" \
		-avh --no-perms . ~;
	source ~/.zshrc;
}

#if [ "$1" == "--force" -o "$1" == "-f" ]; then
if [[ ("$1" -eq "--force") || ("$1" -eq "-f") ]]
then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
