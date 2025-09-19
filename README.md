# Cooper's dotfiles
## Clone Files *with* Submodules
```zsh
git clone --recurse-submodules git@github.com:cdenicola/dotfiles.git ~/dotfiles
```
## System Dependencies
### MacOS
```zsh
brew install stow git
```
### Nix
```zsh
nix-shell -p stow git
```
## Sync dotfiles with Stow
```zsh
stow --dotfiles .
```

## Submodules
### Clone repo *with* submodules
When cloning repo
```zsh
git clone --recurse-submodules git@github.com:cdenicola/dotfiles.git ~/dotfiles
```
Or after cloning:
```zsh
git submodule update --init --recursive
```
### Add new submodule
```zsh
# 1) add repo as submodule
git submodule add https://github.com/XXX/XXX.git submodules/XXX
# 2) track main branch
git config -f .gitmodules submodule.submodules/XXX.branch main
# 3) symlink files
ln -s dot-files/ABC submodules/XXX
```
### Update submodules
```zsh
git submodule update --remote --merge submodules/XXX
git add submodules/XXX
git commit -m "Update XXX submodule"
```


