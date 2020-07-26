# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Path to your oh-my-zsh installation.
export ZSH="/Users/nobelw/.oh-my-zsh"


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
#ZSH_CUSTOM=/Users/nobelw/.bash_profile 

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    textmate
    aws
    docker
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Frameworks/Python.framework/Versions/3.7/bin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$PATH:/usr/local/bin/yarn-1.22.0/bin"
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export EDITOR="/usr/local/bin/mate -w"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='textmate'
else
  export EDITOR='nano'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
#   ---------------------------------------
#   REMINDERS & NOTES
#   ---------------------------------------

#   ---------------------------------------
#   Augmented cmds
#   ---------------------------------------

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ls='ls -FGlAhpt'                       # Preferred 'ls' implementation
alias ip0='ipconfig getpacket en0'              # ipInfo0:      Get info on connections for en0
alias top='top -o cpu'                     #dashboard showing mem util live
alias cdg='cd /Users/nobelw/Projects/github/repo'         #Change dir to my github repo
alias openlofi='open https://www.youtube.com/watch?v=-FlxM_0S2lA&list=RD-FlxM_0S2lA&start_radio=1&t=3' #Open lofi music channel on youtube
alias buildec2='ssh -i ~/.ssh/nobel-workpc-sshkey.pem ec2-user@ec2-13-211-205-163.ap-southeast-2.compute.amazonaws.com cd prerender-server && bash buildScript.sh'
#   ---------------------------------------
#   Augmented cmds for work
##https://code.visualstudio.com/docs/remote/troubleshooting#_configuring-key-based-authentication
#   ---------------------------------------

alias cdu='cd /Users/nobelw/Projects/UNIS/gitrepo'         #Change dir to my work repo
alias clear-dnscache='sudo killall -HUP mDNSResponder'

alias build-localhost="cd /Users/nobelw/Projects/UNIS/gitrepo/dispatcher-config && sudo make clean all install ENV=localdev DESTDIR=/Users/nobelw/Projects/UNIS/gitrepo/aem-dev-env/dispatcher/config && docker exec -it dispatcher /bin/sh -c '[ -e /bin/bash ] && /bin/bash || /bin/sh & httpd -k restart'"

alias build-test="echo 'Dispatcher1...'
ssh -i ~/.ssh/aemtrainstack uosssh@10.86.20.243 sudo bash update-and-clear-cache.sh
echo Dispatcher2...
ssh -i ~/.ssh/aemtrainstack uosssh@10.86.20.207 sudo bash update-and-clear-cache.sh"

alias build-dev="echo 'DEV1...'
ssh -i ~/.ssh/aemtrainstack uosssh@10.86.19.218 sudo bash update-and-clear-cache.sh"
alias build-train="
echo 'TRAIN3...'
ssh -i ~/.ssh/aemtrainstack uosssh@10.86.21.170 sudo bash update-and-clear-cache.sh"

alias build-stage="echo 'Stage-train1...'
ssh -i ~/.ssh/aemtrainstack uosssh@10.86.21.187 sudo bash update-and-clear-cache.sh
echo Stage-train2...
ssh -i ~/.ssh/aemtrainstack uosssh@10.86.21.225 sudo bash update-and-clear-cache.sh"

alias build-poc="
echo 'Building POC-D1...'
ssh -i ~/.ssh/aemtrainstack uos-ssh@10.86.20.205 sudo bash update-and-clear-cache.sh
echo 'Building POC-D2...'
ssh -i ~/.ssh/aemtrainstack uos-ssh@10.86.20.235 sudo bash update-and-clear-cache.sh
echo 'Building POC-D3...'
ssh -i ~/.ssh/aemtrainstack uos-ssh@10.86.20.203 sudo bash update-and-clear-cache.sh
"

alias connectaws="python3 /Users/nobelw/Projects/UNIS/gitrepo/aws-sso-cli/connectaws.py"
alias connect-devauth1="ssh -i ~/.ssh/aemtrainstack uosssh@10.86.19.203"
alias connect-devpub1="ssh -i ~/.ssh/aemtrainstack uosssh@10.86.19.248"
alias connect-devdisp1="ssh -i ~/.ssh/aemtrainstack uosssh@10.86.19.218"
alias connect-testauth1="ssh -i ~/.ssh/aemtrainstack uosssh@10.86.20.225"
alias connect-testpub1="ssh -i ~/.ssh/aemtrainstack uosssh@10.86.20.253"
alias connect-testpub2="ssh -i ~/.ssh/aemtrainstack uosssh@10.86.20.197"
alias connect-testdisp1="ssh -i ~/.ssh/aemtrainstack uosssh@10.86.20.243"
alias connect-testdisp2="ssh -i ~/.ssh/aemtrainstack uosssh@10.86.20.207"
alias connect-traindisp3="ssh -i ~/.ssh/aemtrainstack uosssh@10.86.21.170"
alias connect-trainauth1="ssh -i ~/.ssh/aemtrainstack uosssh@10.86.21.237"
alias connect-stageauth1="ssh -i ~/.ssh/aemtrainstack uosssh@10.86.21.189"
alias connect-stagepub1="ssh -i ~/.ssh/aemtrainstack uosssh@10.86.21.137"
alias connect-stagepub2="ssh -i ~/.ssh/aemtrainstack uosssh@10.86.21.244"
alias connect-stagedisp1="ssh -i ~/.ssh/aemtrainstack uosssh@10.86.21.187"
alias connect-stagedisp2="ssh -i ~/.ssh/aemtrainstack uosssh@10.86.21.225"
alias connect-prerender="ssh -i ~/.ssh/aemtrainstack nwor3583@prndpa00003.srv.sydney.edu.au"
alias connect-rpaserver="ssh -i ~/.ssh/aemtrainstack nwor3583@aemrpa00001.srv.sydney.edu.au"
alias connect-jenkins-dpm-web.dev="ssh -i ~/.ssh/aemtrainstack nwor3583@dpm-web-dev-2.ucc.usyd.edu.au"

alias getpackage-version="connect-proddisp1 && rpm -qa | grep -i dispatcher"
alias run-abletonBackup="node /Users/nobelw/Projects/github/repo/syncAbletonProjects/backUp.js"

#PS1="%*|$ "