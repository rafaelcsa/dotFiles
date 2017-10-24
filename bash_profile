source ~/.bashrc

# iOS
alias cleanDerivedData='rm -rf ~/Library/Developer/Xcode/DerivedData'
alias xcodesucks='killall Xcode; rm -rf ~/Library/Developer/Xcode/DerivedData; rm -rf Pods/ ; rm Podfile.lock; pod repo update; pod install ; open -a Xcode'

alias useXcodeStable="sudo xcode-select -switch /Applications/Xcode.app"
alias useXcodeBeta="sudo xcode-select -switch /Applications/Xcode-Beta.app"

#enable the git bash completion commands
bind "set completion-ignore-case on"

#enable easier completion of file and directory names
bind "set show-all-if-ambiguous on"

###git
source ~/.git-completion.sh
source ~/.git-prompt.sh

# enable git unstaged indicators - set to a non-empty value
GIT_PS1_SHOWDIRTYSTATE=""
 
# enable showing of untracked files - set to a non-empty value
GIT_PS1_SHOWUNTRACKEDFILES=""
 
# enable stash checking - set to a non-empty value
GIT_PS1_SHOWSTASHSTATE=""
 
# enable showing of HEAD vs its upstream
#GIT_PS1_SHOWUPSTREAM="auto"

BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
LIME_YELLOW=$(tput setaf 190)
POWDER_BLUE=$(tput setaf 153)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)
BLINK=$(tput blink)
REVERSE=$(tput smso)
UNDERLINE=$(tput smul)

PS1='\[${MAGENTA}\]\w\[${YELLOW}\]`__git_ps1 " (%s)"`\[${WHITE}\] '

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="~/developer/scripts:$PATH"


export PATH="/usr/local/sbin:$PATH"

# Alias
alias rm="/usr/local/bin/trash"
