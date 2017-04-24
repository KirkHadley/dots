alias c="cd ~"
alias cd..="cd .."
alias vi="vim"
alias ls="ls -G"
alias l="ls"
#set up ssh
alias s="ssh kirk@usve77726.serverprofi24.com"
alias shadow="ssh root@192.241.196.56"

#replace me
export NVM_DIR="/Users/khadley/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

source ~/.bashrc
export MONGO_PATH=/usr/local/mongodb
export PATH=$PATH:$MONGO_PATH/bin
export PATH="/usr/local/bin:$PATH"

# added by Anaconda2 4.3.1 installer
export PATH="/Users/khadley/anaconda2/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/khadley/google-cloud-sdk/path.bash.inc' ]; then source '/Users/khadley/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/khadley/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/khadley/google-cloud-sdk/completion.bash.inc'; fi

PATH=$PATH:~/mongo/bin
export PATH
export PATH="/Users/khadley/terraform/bin:$PATH"
source /Users/khadley/core/scripts/bashCommands.sh
