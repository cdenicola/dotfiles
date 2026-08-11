# Shared command-line environment for macOS and Linuxbrew.
brew "bat"
brew "diff-so-fancy"
brew "eza"
brew "fd"
brew "fzf"
brew "git"
brew "jq"
brew "neovim"
brew "ripgrep"
brew "stow"
brew "tmux"
brew "zsh"

# Desktop applications are not needed on a remote Linux workstation.
if OS.mac?
  cask "ghostty" unless File.exist?("/Applications/Ghostty.app")
  cask "font-meslo-lg-nerd-font"
end
