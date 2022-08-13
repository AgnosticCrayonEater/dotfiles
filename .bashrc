#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliasses for ls
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -l --color=auto --group-directories-first'

# Alias for listing my disks in a readable format
alias disks='df -hT -x tmpfs'

# Alias for listen the top 10 biggest directories
alias dirsize='du -h --max-depth=1 2> /dev/null | sort -hr | tail -n +2 | head'

# Alias for dotfiles functionality
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Alias for cleaning orphan packages
alias yayclean='yay -Rns $(yay -Qtdq)'

# Alias for opening nano with linenumbers
alias nano='nano -l'

PS1='[\u@\h \W]\$ '

export LS_COLORS="$LS_COLORS:ow=1;34;45:tw=1;34;45:"
