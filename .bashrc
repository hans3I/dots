#interactive mode idk how this works
[[ $- != *i* ]] && return

#Prompt
PS1='\033[1;32m\w\033[0;0m '

#Exports 
export XKB_DEFAULT_OPTIONS=caps:escape
export BROWSER=/bin/firefox
export TERMINAL=/bin/alacritty
export PATH="$HOME/.local/bin/:$PATH"
export MICRO_TRUECOLOR=1

# Aliases
alias vim='nvim'
alias xinit='startx'
alias l='clear'
alias gl='git clone --depth 1 -v'
alias gp='git push -v'
alias ga='git add -v .'
alias gc='git commit -vm "updates"'
alias ls='exa --icons --color=auto -ta'
alias la='exa --icons --color=auto -laG'
alias le='exa --icons --color=auto --tree -la'
alias open='xdg-open'
alias sudo='sudo -p "$(printf "\033[1;31mPassword: \033[0;0m" )"'
alias rm='printf "\033[1;31m" && rm -rv'
alias cp='printf "\033[1;32m" && cp -r'
alias mv='printf "\033[1;34m" && mv -v'
alias mkdir='printf "\033[1;33m" && mkdir -v'
alias rmdir='printf "\033[1;35m" && rmdir -v'
alias vpm='vpm --color=yes'
alias neofetch='fastfetch'

#bunnyfetch
fastfetch
eval "$(starship init bash)"
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml
