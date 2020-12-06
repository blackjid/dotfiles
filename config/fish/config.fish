# Source Starship
starship init fish | source

# Aliases
hub alias | source
alias cat="bat"

# Setup asdf
source /usr/local/opt/asdf/asdf.fish

# Remove greeting
set fish_greeting

# Add to the path trusted directory
set PATH .git/safe/../../bin $PATH
