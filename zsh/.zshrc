
eval "$(starship init zsh)"

#source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source $HOME/zsh-autocomplete/zsh-autocomplete.plugin.zsh



export PATH="$PATH:/opt/nvim/"

alias ls='lsd'
alias l='lsd -l'
alias la='lsd -la'
alias lt='lsd --tree'




if [ -t 1 ] ; then alias cal=ncal -b ; else alias cal=/usr/bin/cal ; fi
alias vim='nvim'
alias bat="batcat"
alias op="opsheet"
alias z="cd .."
