# Add homebrew to the path
set PATH /opt/homebrew/bin $PATH

# Source Starship
starship init fish | source

# Setup asdf
source /opt/homebrew/opt/asdf/libexec/asdf.fish

# Remove greeting
set fish_greeting

# Add to the path trusted directory
set PATH .git/safe/../../bin $PATH

# The next line updates PATH for the Google Cloud SDK.
# TODO: remove this when homebrew installation works
if [ -f '/opt/google-cloud-sdk/path.fish.inc' ]; . '/opt/google-cloud-sdk/path.fish.inc'; end
