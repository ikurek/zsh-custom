### ZSH location
export PATH="$HOME/bin:/usr/local/bin:/usr/local/bin/bash:$PATH"                        
export ZSH="$HOME/.oh-my-zsh" 

### ZSH config
ZSH_THEME="punctual"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_USE_ASYNC="true"

### Set default editor
EDITOR="nano"
HOMEBREW_EDITOR="nano"

### Add some colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
alias ls='ls --color=yes'



### Invoke ZSH plugins
plugins=(
	colored-man-pages
	colorize
	git
	)

### Call ZSH
fpath=(/usr/local/share/zsh-completions $fpath)
source $ZSH/oh-my-zsh.sh