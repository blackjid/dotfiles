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

set -q KREW_ROOT; and set -gx PATH $PATH $KREW_ROOT/.krew/bin; or set -gx PATH $PATH $HOME/.krew/bin
