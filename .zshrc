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
alias gc='git commit'
alias gcm='git commit -m'
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


# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# if command -v pyenv 1>/dev/null 2>&1; then
#   eval "$(pyenv init -)"
# fi

# export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"
# alias ibrew='arch -x86_64 /usr/local/bin/brew'

export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH=/usr/local/opt/sqlite/bin:/opt/homebrew/bin:/usr/local/bin:/Users/me/.pyenv/shims:/Users/me/.pyenv/shims:/Library/Frameworks/Python.framework/Versions/3.9/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Postgres.app/Contents/Versions/latest/bin:~/Documents/nand2tetris/tools

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvmexport PATH="/opt/homebrew/opt/libxml2/bin:$PATH"

eval "$(pyenv init -)"
export PATH="/usr/local/opt/libxml2/bin:$PATH"
eval "$(pyenv virtualenv-init -)"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH 


# zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh


# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
source /Users/me/.config/broot/launcher/bash/br


# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# fzf-tab
# NOTE: fzf-tab needs to be loaded after compinit, but before plugins which will wrap widgets, such as zsh-autosuggestions or fast-syntax-highlighting!!
source ~/somewhere/fzf-tab.plugin.zsh

# fast-syntax-highlighting
source ~/path/to/fsh/fast-syntax-highlighting.plugin.zsh


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


# export DIRECTUS_DSN="host=localhost user=cms_reader password=WkFY1BxDK1vf3HI dbname=cmsdirectus port=25432 sslmode=disable TimeZone=Asia/Singapore"
# export DIRECTUS_DSN="host=localhost user=me password= dbname=me port=5432 sslmode=disable TimeZone=Asia/Singapore"