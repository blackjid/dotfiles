# enable antigen
source /usr/local/share/antigen/antigen.zsh

# Load FPATH functions
FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

# Load oh-my-zsh
antigen use oh-my-zsh

# Bundles
antigen bundles <<EOBUNDLES
  git
  gem
  heroku
  kubectl
  osx
  fasd
  thefuck
  key-bindings

  djui/alias-tips

  mafredri/zsh-async
  zsh-users/zsh-completions
  zsh-users/zsh-autosuggestions
  sindresorhus/pure@v1.5.2

  # these should be at last!
  zsh-users/zsh-syntax-highlighting
  zsh-users/zsh-history-substring-search
EOBUNDLES

# Apply antigen
antigen apply

# bind UP and DOWN arrow keys
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Key bindings
# For iterm2 add keybinding escape sequence
bindkey -e
bindkey '^[f' forward-word
bindkey '^[b' backward-word
bindkey '^[h' backward-delete-word
bindkey '^[d' backward-kill-line

# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc
export CLICOLOR=1

# History settings
HISTFILE=~/.zhistory
HISTSIZE=100000
SAVEHIST=100000

# Don't show duplicate history entires
setopt hist_find_no_dups

# Remove unnecessary blanks from history
setopt hist_reduce_blanks

# Share history between instances
setopt share_history

setopt hist_ignore_space
setopt hist_ignore_all_dups

# Enable extended globbing
setopt extendedglob
setopt no_nomatch

# Set right prompt
source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
RPROMPT='$(kube_ps1)'

# Init direnv
eval "$(direnv hook zsh)"

# Init rbenv and nodenv
eval "$(rbenv init -)"
eval "$(nodenv init -)"
eval "$(pyenv init -)"

# Init go
eval "$(goenv init -)"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# mkdir .git/safe in the root of repositories you trust
export PATH=".git/safe/../../bin:$PATH"
export PATH=".git/safe/../../node_modules/.bin:$PATH"

# android sdk
export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"

# functions
if [ -d ~/.bash_functions ]; then
  for file in ~/.bash_functions/*; do
    . "$file"
  done
fi

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases
[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh
