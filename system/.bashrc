# Pretty
alias ls='ls -a --color'

# Easier navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Hardware related
alias cpu='lscpu'
alias hardware='sudo lshw -short'
alias disk='df -h'
alias memory='free -m'
alias dirsize='du -ch | grep total'

# Easier apt-get
alias ins='sudo apt-get install'
alias upd='sudo apt-get update'
alias upg='sudo apt-get upgrade'

# My windows habit
alias cls='clear'

# Shortcuts
alias dl='cd ~/Downloads'
alias dt='cd ~/Desktop'

# Quick common grep
alias gr='grep -rnC 1'

# Screensaver
alias screensaver='gnome-screensaver-command --activate'

# SSH
# use keys if possible, otherwise get sshpass
# key -
# alias sshalias='ssh -i /path/to/pem/Something.pem user@host'
# sshpass -
# alias sshalias='sshpass -p *password* ssh user@host'
