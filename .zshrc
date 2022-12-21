autoload -Uz compinit promptinit
compinit
promptinit

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

autoload -U colors && colors

PROMPT="%F{magenta}[%F{white} :3 %F{magenta}]%F{white} "

source ~/scripts/zsh/vi_mode

neofetch
