# Add directories to PATH and prevent dupes
#
add_to_path() {
	if [[ -d "$1" ]] && [[ ":$PATH:" != *":$1:"* ]]; then
		export PATH="$1:$PATH"
	fi
}

add_to_path "/usr/local/bin"

add_to_path "/opt/homebrew/opt/openjdk@11/bin"

add_to_path "/usr/local/opt/coreutils/libexec/gnubin"

add_to_path "$HOME"/bin

add_to_path "/opt/homebrew/bin"

add_to_path "$JAVA_HOME"/bin
