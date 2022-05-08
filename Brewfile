# frozen_string_literal: true

hostname = `hostname -s`.strip

tap 'homebrew/cask'
tap 'homebrew/cask-drivers'
tap 'homebrew/cask-fonts'
tap 'homebrew/cask-versions'
tap 'homebrew/core'
tap 'homebrew/services'

tap 'drone/drone'
tap 'heroku/brew'
tap 'thoughtbot/formulae'
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
brew 'awscli'
brew 'bat'
brew 'blueutil'
brew 'diff-so-fancy'
brew 'direnv'
brew 'drone/drone/drone'
brew 'fasd'
brew 'fd'
brew 'fish'
brew 'fzf'
brew 'gh'
brew 'git'
brew 'glances'
brew 'gnu-tar'
brew 'heroku/brew/heroku'
brew 'hey'
brew 'htop'
brew 'imagemagick'
brew 'iperf3'
brew 'jq'
brew 'jsonnet'
brew 'libvirt'
brew 'mackup'
brew 'mas'
brew 'openssl'
brew 'pv'
brew 'rcm'
brew 'rsync'
brew 'sleepwatcher', restart_service: true
brew 'starship'
brew 'terraform'
brew 'thoughtbot/formulae/parity'
brew 'tldr'
brew 'wifi-password'
brew 'yq'
brew 'z'

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
cask 'discord'
cask 'docker'
cask 'gitify'
cask 'google-chrome'
cask 'google-cloud-sdk'
cask 'iterm2'
cask 'karabiner-elements'
cask 'keepingyouawake'
cask 'notion'
cask 'raspberry-pi-imager'
cask 'raycast'
cask 'sequel-pro'
cask 'sketch'
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
# cask 'font-roboto'
# cask 'font-roboto-mono'

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
  tap 'hannesbraun/homebrew-cask-audio'
  cask 'dexed'
  cask 'focusrite-control'
  cask 'fogpad'
  cask 'helm'
  cask 'midi-monitor'
  cask 'native-access'
  cask 'spotify'
  cask 'surge-synthesizer'
  cask 'sysex-librarian'
  cask 'transformant'
  cask 'vcv-rack'
  cask 'valhallafreqecho'
  cask 'valhallaspacemodulator'
  cask 'valhallasupermassive'
end
