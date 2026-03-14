# Add homebrew to the path
set PATH /opt/homebrew/bin $PATH

# Source when interactive
if status is-interactive &>/dev/null
    atuin init fish --disable-up-arrow | source
    starship init fish | source
    zoxide init fish | source
end

# Setup asdf
source /opt/homebrew/opt/asdf/libexec/asdf.fish

# Remove greeting
set fish_greeting

# Eza config
set -q EZA_STANDARD_OPTIONS; or set -Ux EZA_STANDARD_OPTIONS --icons
