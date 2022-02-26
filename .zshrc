# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.

export ZSH="/Users/britneyspears/.oh-my-zsh"
ZSH_THEME=robbyrussell
# I think this adds go to vs
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$(go env GOPATH)/bin"
plugins=(
    git
    1password
    emoji
    )

source $ZSH/oh-my-zsh.sh
#----------------NODE Version Manager-------------------
#-------------------------------------------------------------

# --------------------- conda initialize ---------------------
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
#-------------------------------------------------------------
[ -f "/Users/britneyspears/.ghcup/env" ] && source "/Users/britneyspears/.ghcup/env" # ghcup-env
timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}
