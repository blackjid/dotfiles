# enable antigen
source /usr/local/share/antigen/antigen.zsh

# Load oh-my-zsh
antigen use oh-my-zsh

# Bundles
antigen bundles <<EOBUNDLES
  brew
  git
  gem
  osx
  fasd

  zsh-users/zsh-syntax-highlighting
  zsh-users/zsh-history-substring-search
  zsh-users/zsh-autosuggestions
EOBUNDLES

# The theme
antigen theme miloshadzic

# Apply antigen
antigen apply

# bind UP and DOWN arrow keys
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Key bindings
bindkey -e
bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word

# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc
export CLICOLOR=1

# history settings
setopt hist_ignore_all_dups inc_append_history
HISTFILE=~/.zhistory
HISTSIZE=4096
SAVEHIST=4096

# Enable extended globbing
setopt extendedglob

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases
