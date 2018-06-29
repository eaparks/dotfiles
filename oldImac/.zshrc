# Path to your oh-my-zsh installation.
export ZSH=/Users/edward/.oh-my-zsh

# Shorten directory shown
POWERLEVEL9k_SHORTEN_DIR_LENGTH=1
POWERLEVEL9k_SHORTEN_DELIMITER=""
POWERLEVEL9k_SHORTEN_STRATEGY="truncate_from_right"

# Set default user to avoid showing 'user' on every line
DEFAULT_USER='eap'

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
#ZSH_THEME="random"
#ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git battery colorize history zsh-syntax-highlighting)

# User configuration

export PATH="/Users/edward/.rvm/gems/ruby-2.1.2/bin:/Users/edward/.rvm/gems/ruby-2.1.2@global/bin:/Users/edward/.rvm/rubies/ruby-2.1.2/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/edward/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
source $ZSH/custom/aliases.zsh
source ~/.alias

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# EDWARD
export JAVA_HOME=$(/usr/libexec/java_home)

#** Maven stuff **
export M2_HOME=/usr/local/Cellar/maven/3.2.3/libexec
export M2=$M2_HOME/bin

export GRADLE_HOME=/usr/local/Cellar/gradle/2.0/libexec
export PATH=$M2:$PATH


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/edward/.sdkman"
[[ -s "/Users/edward/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/edward/.sdkman/bin/sdkman-init.sh"

