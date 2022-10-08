# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd beep extendedglob nomatch notify
# bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mischa/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Powerlevel10k theme
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# User configuration

# Arch Wiki
# arrow-key interface autocompletion
zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1

# SSH Script from arch wiki

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

# adding keys was buggy, add them outside of the script for now
ssh-add -q ~/.ssh/mischa
ssh-add -q ~/.ssh/mburg

alias v=nvim
alias vim=nvim

alias ca="cd ~/git/Openstack/"
alias ..="cd .."
alias c="clear"

# ls
alias ls='ls --color=auto'
alias ll='ls -la'
alias la='exa -laghm@ --all --icons --git --color=always'

alias sv='sudoedit'
alias sk='killall ssh-agent && source ~/.zshrc'
alias t='tmux'
alias e='exit'
alias gp='git pull'
alias gs='git status'
alias ys='yadm status'
alias syu='sudo pacman -Syu'
alias et='v ~/.config/awesome/themes/steamburn/theme-personal.lua'
alias ett='v ~/.config/awesome/themes/powerarrow-dark/theme-personal.lua'
alias er='v ~/.config/awesome/rc.lua'
alias ez='v ~/.zshrc'
alias sz='source ~/.zshrc'
alias s='startx'
alias weather='curl wttr.in/Purmerend'
alias vd="v /home/mischa/obsidian/second-brain/periodic\ notes/daily\ notes/$(ls /home/mischa/obsidian/second-brain/periodic\ notes/daily\ notes | tail -1) -c :ZenMode"
alias sb="cd ~/obsidian/second-brain"
alias sbh='/home/mischa/obsidian/second-brain/2-areas/tech-blog/hugo'
#deluge
alias d='sudo -u deluge deluge-console'
alias di='sudo -u deluge deluge-console info --sort total_uploaded'
alias publish='rm -rf ~/git/tech-blog-hosting/* && cp -r ~/obsidian/second-brain/2-areas/tech-blog/hugo/public/* ~/git/tech-blog-hosting/ && cd ~/git/tech-blog-hosting/ && git add . && git commit'
alias nb='newsboat'

# env variables 
export VISUAL=nvim
export EDITOR=nvim

# fzf aliases
# use fp to do a fzf search and preview the files
alias fp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
# search for a file with fzf and open it in vim
alias vf='v $(fp)'


# sourcing 
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.privaterc

# keybinds

bindkey '^ ' autosuggest-accept
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line
