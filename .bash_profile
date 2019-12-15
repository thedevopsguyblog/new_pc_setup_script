PS1="$ "
source /usr/local/opt/nvm/nvm.sh
#Setup my path
export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Frameworks/Python.framework/Versions/3.7/bin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
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
alias cdg='cd /Users/nobelw/Projects/github/repo'         #Change dir to my github repo
alias openlofi='open https://www.youtube.com/watch?v=-FlxM_0S2lA&list=RD-FlxM_0S2lA&start_radio=1&t=3' #Open lofi music channel on youtube

## Docker formatting
#   ---------------------------------------
#   Augmented cmds for work
##https://code.visualstudio.com/docs/remote/troubleshooting#_configuring-key-based-authentication
#   ---------------------------------------

alias cdu='cd /Users/nobelw/Projects/UNIS/gitrepo'         #Change dir to my work repo
alias build-localhost="cd /Users/nobelw/Projects/UNIS/gitrepo/dispatcher-config && sudo make clean all install ENV=localdev DESTDIR=/Users/nobelw/Projects/UNIS/gitrepo/aem-dev-env/dispatcher/config && docker exec -it dispatcher /bin/sh -c '[ -e /bin/bash ] && /bin/bash || /bin/sh & httpd -k restart'"
alias build-test="echo 'TEST1...'
ssh -i ~/.ssh/aemtrainstack uosssh@10.86.20.225"
alias build-dev="echo 'DEV1...'
ssh -i ~/.ssh/aemtrainstack uosssh@10.86.19.218 sudo bash update-and-clear-cache.sh"
alias build-train="
echo 'TRAIN1...'
ssh -i ~/.ssh/aemtrainstack uosssh@10.86.21.187 sudo bash update-and-clear-cache.sh 

echo 'TRAIN2...'
ssh -i ~/.ssh/aemtrainstack uosssh@10.86.21.225 sudo bash update-and-clear-cache.sh

echo 'TRAIN3...'
ssh -i ~/.ssh/aemtrainstack uosssh@10.86.21.170 sudo bash update-and-clear-cache.sh"
 
#ssh uosssh@"$i" sudo bash update-and-clear-cache.sh'


#   ---------------------------------------
#   Misc Commands
#   ---------------------------------------

alias start-machinesetup="/Users/nobelw/bin/github/repo/new_pc_setup_script/install_apps.sh"


