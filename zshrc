# enable antigen
source ~/src/dotfiles/antigen/antigen.zsh

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
  zsh-users/zsh-completions
EOBUNDLES

# The theme
antigen theme miloshadzic

# Apply antigen
antigen apply

# bind UP and DOWN arrow keys
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

