# frozen_string_literal: true

hostname = `hostname -s`.strip

tap 'homebrew/cask'
tap 'homebrew/cask-drivers'
tap 'homebrew/cask-fonts'
tap 'homebrew/cask-versions'
tap 'homebrew/core'
tap 'homebrew/services'

tap 'drone/drone'
tap 'derailed/k9s'

# Build tools and libs
brew 'ack'
brew 'coreutils'
brew 'gettext', line: true
brew 'gmp'
brew 'libpqxx'
brew 'libyaml'
brew 'makedepend'
brew 'mysql-connector-c++'
brew 'nmap'
brew 'pkg-config'
brew 'readline'
brew 'tree'
brew 'watch'
brew 'wget'

brew 'aria2'
brew 'asdf'
brew 'atuin'
brew 'awscli'
brew 'bat'
brew 'blueutil'
brew 'diff-so-fancy'
brew 'direnv'
brew 'fd'
brew 'fish'
brew 'fzf'
brew 'gh'
brew 'git'
brew 'glances'
brew 'gnu-tar'
brew 'hey'
brew 'htop'
brew 'imagemagick'
brew 'iperf3'
brew 'jq'
brew 'jsonnet'
brew 'mackup'
brew 'mas'
brew 'openssl'
brew 'pv'
brew 'rcm'
brew 'rsync'
brew 'sleepwatcher', restart_service: true
brew 'starship'
brew 'tldr'
brew 'wifi-password'
brew 'yq'
brew 'zoxide'

# Kubernetes
brew 'helm'
brew 'kind'
brew 'kubectx'
brew 'kubernetes-cli'
brew 'kustomize'
brew 'minikube'
brew 'podman'
brew 'derailed/k9s/k9s'

cask '1password-cli'
cask '1password'
cask 'cloudflare-warp'
cask 'discord'
cask 'docker'
cask 'gitify'
cask 'google-chrome'
cask 'google-cloud-sdk'
cask 'iterm2'
cask 'karabiner-elements'
cask 'linear-linear'
cask 'notion'
cask 'obsidian'
cask 'raspberry-pi-imager'
cask 'raycast'
cask 'sequel-pro'
cask 'spotify'
cask 'trezor-suite'
cask 'visual-studio-code'
cask 'whatsapp'
cask 'zoom'

# Quicklook plugins
cask 'betterzip'
cask 'qlimagesize'
cask 'quicklook-csv'
cask 'quicklook-json'

# Fonts
cask 'font-fira-code'
cask 'font-fira-code-nerd-font'

mas 'Notability', id: 360593530
mas 'Slack', id: 803453959
mas 'Textual', id: 896450579
mas 'ToothFairy', id: 1191449274
mas 'XCode', id: 497799835

##############################
# Only for personal computer
if hostname == 'black-mac'
  # 3d Printing
  cask 'autodesk-fusion360'
  cask 'prusaslicer'
  cask 'ultimaker-cura'

  # Audio & Music
  cask 'ableton-live-lite'
  cask 'spitfire-audio'

  tap 'hannesbraun/homebrew-cask-audio'
  cask 'dexed'
  cask 'focusrite-control'
  cask 'fogpad'
  cask 'helm'
  cask 'midi-monitor'
  cask 'native-access'
  cask 'surge-synthesizer'
  cask 'sysex-librarian'
  cask 'transformant'
  cask 'valhallafreqecho'
  cask 'valhallaspacemodulator'
  cask 'valhallasupermassive'
  cask 'vcv-rack'

  mas 'Model D', id: 1339418001
end
