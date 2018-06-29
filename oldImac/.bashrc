export JAVA_HOME=$(/usr/libexec/java_home)

#** Maven stuff **
export M2_HOME=/usr/local/Cellar/maven/3.2.3/libexec
export M2=$M2_HOME/bin

export GRADLE_HOME=/usr/local/Cellar/gradle/2.0/libexec
source ~/.alias

export PATH=$M2:/Users/edward/mongodb248/bin:/Users/edward/scala/sbt/bin:$PATH
export PATH=$PATH:/usr/local/bin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/edward/.sdkman"
[[ -s "/Users/edward/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/edward/.sdkman/bin/sdkman-init.sh"
