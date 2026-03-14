# Add homebrew to the path
set PATH $PATH /opt/homebrew/bin

# Source when interactive
if status is-interactive
    starship init fish | source
    atuin init fish | source
    zoxide init fish | source

    # Prevent starship from showing the command duration when the user presses Enter
    function reset_starship_cmd_duration
        set -ge CMD_DURATION
        commandline -f execute
    end
    bind \r reset_starship_cmd_duration

    # Disable fish native history in favor of atuin
    set -g fish_history ""
end

# Remove greeting
set fish_greeting

# Eza config
set -q EZA_STANDARD_OPTIONS; or set -Ux EZA_STANDARD_OPTIONS --icons
