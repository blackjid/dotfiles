alias cat="bat"
alias help="tldr"

# Modern ls using eza (EZA_STANDARD_OPTIONS adds --icons)
alias l="eza"
alias ll="eza -al"
alias lh="eza -Alh"

# Directory navigation
alias ...="../.."

# Pretty print PATH
alias path="string join '\n' $PATH"

# GCloud shorthand
alias gc="gcloud"

# Global Docker Compose services
alias services="docker compose -p global -f ~/.docker-compose.global.yml ps"
alias services-up="docker compose -p global -f ~/.docker-compose.global.yml up -d"
alias services-down="docker compose -p global -f ~/.docker-compose.global.yml down"
alias services-logs="docker compose -p global -f ~/.docker-compose.global.yml logs"
