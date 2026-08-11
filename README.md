# Cooper's dotfiles

Personal terminal and editor configuration for macOS and remote Linux workstations.

## Install

Homebrew is supported on both macOS and Linux. On Linux, install the platform's build prerequisites first, then install Homebrew using the instructions at <https://brew.sh>.

```sh
git clone https://github.com/cdenicola/dotfiles.git "$HOME/.dotfiles"
"$HOME/.dotfiles/bin/bootstrap"
```

On Linux, the system must have the standard compiler/build prerequisites required by Homebrew. If Zsh is not your login shell after bootstrap, launch the Homebrew-installed Zsh directly or change your login shell according to the workstation's administrative policy.

The bootstrap script:

- installs shared command-line tools from `Brewfile` without upgrading unrelated packages;
- uses macOS-only casks only on macOS;
- stows individual files with directory folding disabled;
- installs NVM under `~/.local/share/nvm`; and
- installs TPM under `~/.local/share/tmux/plugins`.

It stops on existing-file conflicts and never adopts or overwrites an existing configuration.

### macOS-only applications

Ghostty and the Meslo Nerd Font are installed from the conditional macOS section of `Brewfile`. An existing manually installed Ghostty application is left untouched.

AeroSpace comes from a third-party Homebrew tap that Homebrew may require you to trust explicitly. Install it separately if desired:

```sh
brew trust nikitabobko/tap
brew install --cask nikitabobko/tap/aerospace
```

Neither application is needed on a remote Linux workstation.

## Git identity

Identity and signing settings are deliberately machine-local. Start with:

```sh
cp "$HOME/.config/git/config.local.example" "$HOME/.config/git/config.local"
```

Edit `config.local` for that machine. For separate work credentials, add an `includeIf` rule like the commented example and keep the referenced work config out of this repository.

## Updating

```sh
git -C "$HOME/.dotfiles" pull --ff-only
"$HOME/.dotfiles/bin/bootstrap"
```

Inside tmux, press `prefix` + `I` to install new plugins and `prefix` + `U` to update them. Neovim plugins are managed by lazy.nvim and pinned in `lazy-lock.json`.

## Validation

```sh
"$HOME/.dotfiles/bin/check"
```

## State and secrets

Only portable configuration belongs in this repository. Generated data uses the standard XDG locations:

- configuration: `~/.config`
- data: `~/.local/share`
- state and shell history: `~/.local/state`
- cache: `~/.cache`

Machine credentials such as Graphite's `user_config` and Git's `config.local` are ignored and remain local.
