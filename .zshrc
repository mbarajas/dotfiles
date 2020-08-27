 Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by mbarajas for 5.7.1
# load zgen
source "${HOME}/.zgen/zgen.zsh"

# if the init script doesn't exist
if ! zgen saved; then

  # specify plugins here
      zgen load romkatv/powerlevel10k powerlevel10k
      zgen load chrissicool/zsh-256color
      ael-code/zsh-colored-man-pages
      zgen load zsh-users/zsh-autosuggestions

  # generate the init script from plugins above
  zgen save
fi

#EDITOR
export EDITOR=nvim

#THEME
#PROMPT='${ret_status} %{$fg[cyan]%}%~%{$reset_color%} $(git_prompt_info)%{$fg[cyan]%}:%{$reset_color%} '
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#EXPORTS

#EXPORTS FOR COLORED MAN PAGES
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;38;5;74m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[38;33;246m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[04;38;5;146m'

# number of lines kept in history
export HISTSIZE=10000

# number of lines saved in the history after logout
export SAVEHIST=10000

# location of history
export HISTFILE=~/.zhistory

# AWS Creds
export AWS_DEFAULT_REGION="us-east-1"

#ALIASES
alias git='/usr/local/bin/git'
alias vim='nvim'
alias starwars='telnet towel.blinkenlights.nl'
alias sz='source ~/.zshrc'
alias ez='vim ~/.zshrc'
alias ev='vim ~/.config/nvim/init.vim'
alias sv='source ~/.config/nvim/init.vim'
alias grep='grep --color=auto'
alias ll='ls -la'
alias please='sudo'
alias weather='curl wttr.in'
alias tron='ssh sshtron.zachlatta.com'
alias cheat='curl cht.sh'
alias python='python3'
alias pip='pip3'

#HISTORY
# History options
setopt APPEND_HISTORY
setopt CORRECT     # command CORRECTION
setopt EXTENDED_HISTORY   # puts timestamps in the history

# history options
setopt inc_append_history
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_allow_clobber
setopt hist_reduce_blanks

#History KeyBinds
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward
#bindkey '\e[A' history-beginning-search-backward
#bindkey '\e[B' history-beginning-search-forward


#FUNCTIONS
how_in()
{
  where="$1"; shift
  IFS=+ curl "cht.sh/$where/$*"
}
