# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"

# alias ls='ls -GpF'
# alias la='ls -lgha'

# ALIASES
# --------------------------------------
# Terminal 
# --------------------------------------
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias -- -="cd -"

# --------------------------------------
# exa
# --------------------------------------
alias ls='exa -l --grid'
alias la='exa -la --grid'
# Shows the directories in a tree strucutre, but limit the recursion to only 2 levels
alias ll='exa -la --tree --level=2 --grid'


# ----------------------------------
# git
# ----------------------------------
# git
alias g='git'
alias gs='git status'

# git branch
alias gb='git branch'
alias gba='git branch -a'

# git add
alias ga='git add'
alias gaa='git add -A'

# git commit
# alias gc='git commit'
alias gcm='git commit'
alias gcmam='git commit --amend'

# git checkout
alias gco='git checkout'
alias gcb='git checkout -b'

# git log
alias gl='git log'

# git diff
alias gd='git diff'
alias gds='git diff --staged'

# git restore
alias gr='git restore'
alias grs='git restore --staged'

# git push
alias gph='git push'

# git pull
alias gpl='git pull'


# -------------------------------------
# ripgrep
# -------------------------------------
# alias rg="rg --hidden --max-columns 255 --glob '!.git' --glob '!/Library'" 

# export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"
# alias ibrew='arch -x86_64 /usr/local/bin/brew'

export PATH="/usr/local/opt/sqlite/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvmexport PATH="/opt/homebrew/opt/libxml2/bin:$PATH"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# bash completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# zsh-autosuggestions
# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# autojump
[ -f $(brew --prefix)/etc/profile.d/autojump.sh ] && . $(brew --prefix)/etc/profile.d/autojump.sh

# autoenv
source $(brew --prefix autoenv)/activate.sh

# powerlevel10k
source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme

# fzf-tab
# NOTE: fzf-tab needs to be loaded after compinit, but before plugins which will wrap widgets, such as zsh-autosuggestions or fast-syntax-highlighting!!
source ~/fzf-tab/fzf-tab.plugin.zsh

# fast-syntax-highlighting
source $(brew --prefix)/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# -------------------------------------------------
# bare git repo for dotfiles
# -------------------------------------------------
alias config='/usr/bin/git --git-dir=/Users/me/.cfg/ --work-tree=/Users/me'

# ------------------------------------------------
# colour config for exa / terminal
# ------------------------------------------------
export CLICOLOR=1
export LS_COLORS="di=0;36"
export EXA_COLORS="da=1;34"

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/me/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

# For postgres
# export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/13/bin/psql
alias psql='/Applications/Postgres.app/Contents/Versions/13/bin/psql -p 54321'

# add openssl from homebrew to path
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

# export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export PATH="/usr/local/go/bin:$PATH"

export GOPATH=/Users/me/golib
export PATH="$PATH:$GOPATH/bin"

# export GOPATH=$HOME/go
# export GOROOT="$(brew --prefix golang)/libexec"
# export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
