# dotfiles

Personal macOS dotfiles, managed with [rcm](https://github.com/thoughtbot/rcm)
and [Homebrew](https://brew.sh). Shell is [fish](https://fishshell.com), prompt
is [starship](https://starship.rs), history is [atuin](https://atuin.sh), and
runtimes are managed with [mise](https://mise.jdx.dev).

## Bootstrap

On a fresh machine:

```sh
git clone https://github.com/blackjid/dotfiles ~/.dotfiles
cd ~/.dotfiles
./script/setup
```

`script/setup` will:

1. Install Homebrew (if missing).
2. Install `rcm` and symlink every dotfile into `$HOME` (see `rcrc`).
3. Install everything in the `Brewfile` (`brew bundle`).
4. Add fish to `/etc/shells` and set it as the default shell.
5. Install [fisher](https://github.com/jorgebucaran/fisher) and the fish
   plugins listed in `config/fish/fish_plugins`.

## Post-install

SSH keys are served by the **1Password SSH agent** — private keys never touch
disk. Enable it once in the 1Password app: **Settings > Developer > "Use the
SSH agent"**, and make sure each key is stored as an *SSH Key* item (not a
document). `ssh/config` points `IdentityAgent` at the agent socket.

Pull remaining secrets from 1Password (requires the `op` CLI, installed via the
Brewfile):

```sh
./script/extract-onepassword-secrets
```

Apply the macOS system defaults (review before running — it changes a lot):

```sh
./macos
```

## What's managed

| Path | Symlinked to | Purpose |
| --- | --- | --- |
| `config/fish/` | `~/.config/fish/` | fish shell config, aliases, abbreviations, functions |
| `config/nvim/` | `~/.config/nvim/` | neovim entrypoint (sources `~/.vimrc`) |
| `config/starship.toml` | `~/.config/starship.toml` | prompt |
| `config/atuin/` | `~/.config/atuin/` | shell history + secret filtering |
| `config/karabiner/` | `~/.config/karabiner/` | keyboard remapping |
| `vimrc`, `vimrc.bundles` | `~/.vimrc`, `~/.vimrc.bundles` | vim/neovim config (vim-plug) |
| `gitconfig`, `gitignore`, `gitmessage` | `~/.git*` | git config + global ignore + commit template |
| `ssh/` | `~/.ssh/` | SSH client config + public keys |
| `Brewfile` | — | Homebrew packages, casks, and Mac App Store apps |
| `macos` | `~/.macos` | macOS system defaults script |
| `script/` | — | bootstrap and helper scripts |

## Updating

After editing files, re-link with `rcup` (run from anywhere). Add new Homebrew
packages to the `Brewfile` and run `brew bundle`.
