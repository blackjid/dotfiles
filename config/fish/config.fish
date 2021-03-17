# Add homebrew to the path
set PATH /opt/homebrew/bin $PATH

# Source Starship
starship init fish | source

# Aliases
hub alias | source
alias cat="bat"

# Setup asdf
source /opt/homebrew/opt/asdf/asdf.fish

# Remove greeting
set fish_greeting

# Add to the path trusted directory
set PATH .git/safe/../../bin $PATH
