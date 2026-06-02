alias cat="bat"
alias help="tldr"
alias e="nvim"

# Modern ls using eza (EZA_STANDARD_OPTIONS adds --icons)
alias ls="eza"
alias l="eza"
alias ll="eza -al"

# Directory navigation
alias ...="../.."

# Global Docker Compose services
alias services="docker compose -p global -f ~/.docker-compose.global.yml ps"
