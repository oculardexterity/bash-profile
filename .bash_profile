[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/.git-prompt.sh

# Reset
Color_Off="\[\033[0m\]"       # Text Reset

# Regular Colors
Black="\[\033[0;30m\]"        # Black
Red="\[\033[0;31m\]"          # Red
Green="\[\033[0;32m\]"        # Green
Yellow="\[\033[0;33m\]"       # Yellow
Blue="\[\033[0;34m\]"         # Blue
Purple="\[\033[0;35m\]"       # Purple
Cyan="\[\033[0;36m\]"         # Cyan
White="\[\033[0;37m\]"        # White

# Bold
BBlack="\[\033[1;30m\]"       # Black
BRed="\[\033[1;31m\]"         # Red
BGreen="\[\033[1;32m\]"       # Green
BYellow="\[\033[1;33m\]"      # Yellow
BBlue="\[\033[1;34m\]"        # Blue
BPurple="\[\033[1;35m\]"      # Purple
BCyan="\[\033[1;36m\]"        # Cyan
BWhite="\[\033[1;37m\]"       # White

# Backgrounds
On_Black="\[\033[40m\]"       # Black
On_Red="\[\033[41m\]"         # Red
On_Green="\[\033[42m\]"       # Green
On_Yellow="\[\033[43m\]"      # Yellow
On_Blue="\[\033[44m\]"        # Blue
On_Purple="\[\033[45m\]"      # Purple
On_Cyan="\[\033[46m\]"        # Cyan
On_White="\[\033[47m\]"       # White

# Various variables you might want for your PS1 prompt instead
PathFull="\W"
NewLine="\n"

String='$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then \
  echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
  if [ "$?" -eq "0" ]; then \
    echo "'$BGreen'"$(__git_ps1 "(%s)"); \
  else \
    echo "'$BYellow'"$(__git_ps1 "(%s$(git diff --numstat | wc -l)'$BGreen'$(git diff --cached --numstat | wc -l)'$BRed'$(git status --porcelain 2>/dev/null| grep "^??" | wc -l)'$BYellow')"); \
  fi) '$Color_Off' '$NewLine'  $ "; \
else \
  echo " '$Yellow$Color_Off' '$NewLine'  $ "; \
fi)'

# Detect if git repo and return numbers of modified and untracked files
export PS1=$BCyan' '$PathFull' '$Color_Off$String

# Optional message on open
printf "$NewLine \x1B[1;32m Remember to git pull \x1B[0m $NewLine$NewLine"
