# use vim as the visual editor
export VISUAL=vim
export EDITOR=$VISUAL

# ensure dotfiles bin directory is loaded first
export PATH="$HOME/.bin:/usr/local/sbin:$PATH"

# RCM configuration file
export RCRC="$HOME/.dotfiles/rcrc"

# Set Encoding
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Update hombrew every 2 hours
export HOMEBREW_AUTO_UPDATE_SECS=7200

# Source secrets
[[ -f ~/.secrets ]] && source ~/.secrets
