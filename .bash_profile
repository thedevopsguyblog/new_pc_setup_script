PS1="$ "
#Setup my path
export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Frameworks/Python.framework/Versions/3.7/bin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$PATH:/usr/local/bin/yarn-1.22.0/bin"
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
#   ---------------------------------------
#   Augmented cmds for work
##https://code.visualstudio.com/docs/remote/troubleshooting#_configuring-key-based-authentication
#   ---------------------------------------

alias cdu='cd /Users/nobelw/Projects/UNIS/gitrepo'         #Change dir to my work repo
alias build-localhost="cd /Users/nobelw/Projects/UNIS/gitrepo/dispatcher-config && sudo make clean all install ENV=localdev DESTDIR=/Users/nobelw/Projects/UNIS/gitrepo/aem-dev-env/dispatcher/config && docker exec -it dispatcher /bin/sh -c '[ -e /bin/bash ] && /bin/bash || /bin/sh & httpd -k restart'"
alias build-test="echo 'Dispatcher1...'
ssh -i ~/.ssh/aemtrainstack uosssh@10.86.20.243 sudo bash update-and-clear-cache.sh
echo Dispatcher2...
ssh -i ~/.ssh/aemtrainstack uosssh@10.86.20.207 sudo bash update-and-clear-cache.sh"
alias build-dev="echo 'DEV1...'
ssh -i ~/.ssh/aemtrainstack uosssh@10.86.19.218 sudo bash update-and-clear-cache.sh"

alias build-train="
echo 'TRAIN1...'
ssh -i ~/.ssh/aemtrainstack uosssh@10.86.21.187 sudo bash update-and-clear-cache.sh 
echo 'TRAIN2...'
ssh -i ~/.ssh/aemtrainstack uosssh@10.86.21.225 sudo bash update-and-clear-cache.sh
echo 'TRAIN3...'
ssh -i ~/.ssh/aemtrainstack uosssh@10.86.21.170 sudo bash update-and-clear-cache.sh"

alias build-poc="
echo 'Building POC-D1...'
ssh -i ~/.ssh/aemtrainstack uos-ssh@10.86.20.205 sudo bash update-and-clear-cache.sh
echo 'Building POC-D2...'
ssh -i ~/.ssh/aemtrainstack uos-ssh@10.86.20.235 sudo bash update-and-clear-cache.sh
echo 'Building POC-D3...'
ssh -i ~/.ssh/aemtrainstack uos-ssh@10.86.20.203 sudo bash update-and-clear-cache.sh
"

alias connect-pocdisp1="ssh -i ~/.ssh/aemtrainstack uos-ssh@10.86.20.205"
alias connect-pocdisp2="ssh -i ~/.ssh/aemtrainstack uos-ssh@10.86.20.235"
alias connect-pocdisp3="ssh -i ~/.ssh/aemtrainstack uos-ssh@10.86.20.203"
alias connect-devauth1="ssh -i ~/.ssh/aemtrainstack uosssh@10.86.19.203"
alias connect-devpub1="ssh -i ~/.ssh/aemtrainstack uosssh@10.86.19.248"
alias connect-devdisp1="ssh -i ~/.ssh/aemtrainstack uosssh@10.86.19.218"
alias connect-testauth1="ssh -i ~/.ssh/aemtrainstack uosssh@10.86.20.225"
alias connect-testpub1="ssh -i ~/.ssh/aemtrainstack uosssh@10.86.20.253"
alias connect-testpub2="ssh -i ~/.ssh/aemtrainstack uosssh@10.86.20.197"
alias connect-testdisp1="ssh -i ~/.ssh/aemtrainstack uosssh@10.86.20.243"
alias connect-testdisp2="ssh -i ~/.ssh/aemtrainstack uosssh@10.86.20.207"
alias connect-traindisp3="ssh -i ~/.ssh/aemtrainstack uosssh@10.86.21.170"
alias connect-trainauth1="ssh -i ~/.ssh/aemtrainstack uosssh@10.86.21.170"
alias connect-stageauth1="ssh -i ~/.ssh/aemtrainstack uosssh@10.86.21.189"
alias connect-prerender="ssh -i ~/.ssh/aemtrainstack nwor3583@prndpa00003.srv.sydney.edu.au"
alias connect-rpaserver="ssh -i ~/.ssh/aemtrainstack nwor3583@aemrpa00001.srv.sydney.edu.au"
alias connect-jenkins-dpm-web.dev="ssh -i ~/.ssh/aemtrainstack nwor3583@dpm-web-dev-2.ucc.usyd.edu.au"
#ssh-copy-id -i ~/.ssh/aemtrainstack uosssh@xxxxx

#ssh uosssh@"$i" sudo bash update-and-clear-cache.sh'


#   ---------------------------------------
#   Misc Commands
#   ---------------------------------------
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


