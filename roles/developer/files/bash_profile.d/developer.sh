# .bash_profile

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

###################################
#      Custom from ansible
##################################
export JAVA_HOME=/opt/developer/jdk

export PATH=/opt/developer/wildfly/bin:$PATH
export PATH=$JAVA_HOME/bin:$PATH
export PATH=./:$PATH

alias ll='ls -alh'

export CDPATH=./:/opt/developer/:~/projects/
