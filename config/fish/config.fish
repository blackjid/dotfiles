# Add homebrew to the path
fish_add_path /opt/homebrew/bin

# Default editor (also used by git, etc.)
set -gx EDITOR nvim
set -gx VISUAL nvim

# Route all SSH-agent-aware tools through the 1Password SSH agent. OpenSSH picks
# this up via IdentityAgent in ~/.ssh/config; this env var covers Go-based tools
# (terraform, terragrunt) that read SSH_AUTH_SOCK directly and ignore ssh config.
set -gx SSH_AUTH_SOCK "$HOME/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"

# Source when interactive
if status is-interactive
    # Skip the atuin pty-proxy in Orca tabs; it delays Orca's shell-ready detection
    set -q ORCA_PANE_KEY; and set -gx ATUIN_PTY_PROXY__ENABLED false
    starship init fish | source
    atuin init fish | source
    zoxide init fish | source

    # Prevent starship from showing the command duration when the user presses Enter
    function reset_starship_cmd_duration
        set -ge CMD_DURATION
        commandline -f execute
    end
    bind \r reset_starship_cmd_duration

    # Keep fish's native history enabled so the dimmed inline autosuggestion
    # works (fish draws suggestions from its own history, not atuin). Atuin
    # records independently and still powers Ctrl+R / up-arrow search.
end

# Remove greeting
set fish_greeting

# Eza config
set -q EZA_STANDARD_OPTIONS; or set -Ux EZA_STANDARD_OPTIONS --icons

# Fish syntax highlighting - comprehensive color scheme
set -g fish_color_autosuggestion 555 brblack
set -g fish_color_cancel -r
set -g fish_color_command --bold
set -g fish_color_comment red
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end brmagenta
set -g fish_color_error brred
set -g fish_color_escape bryellow --bold
set -g fish_color_history_current --bold
set -g fish_color_host normal
set -g fish_color_match --background=brblue
set -g fish_color_normal normal
set -g fish_color_operator bryellow
set -g fish_color_option brcyan --bold
set -g fish_color_param cyan
set -g fish_color_quote yellow
set -g fish_color_redirection brblue
set -g fish_color_search_match bryellow '--background=brblack'
set -g fish_color_selection white --bold '--background=brblack'
set -g fish_color_user brgreen
set -g fish_color_valid_path --underline

set -q KREW_ROOT; and fish_add_path $KREW_ROOT/.krew/bin; or fish_add_path $HOME/.krew/bin
