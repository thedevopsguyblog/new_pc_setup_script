PS1="$ "
ipconfig getpacket en0 | grep "ciaddr"

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
alias cdu='cd /Users/nobelw/bin/UNIS/gitrepo'         #Change dir to my work repo
alias cdg='cd /Users/nobelw/bin/github/repo'         #Change dir to my github repo

#   ---------------------------------------
#   Misc Commands
#   ---------------------------------------

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
source /usr/local/opt/nvm/nvm.sh
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
