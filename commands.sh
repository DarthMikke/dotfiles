# brew list --installed-on-request
WANTED="bat cloc docker fx htop jq lazygit lsd make neovim slides viddy"

# Install all brew packages in WANTED
dotfiles_install() {
  which brew > /dev/null || return 1
  brew install ${=WANTED}
}

# Link Lazyvim config
dotfiles_link_lazyvim() {
  cd $XDG_CONFIG_HOME
  ln -s ./dotfiles/config/nvim ./nvim
}

# Link GolangCI config
dotfiles_link_golangci() {
  cd $HOME
  ln -s $XDG_CONFIG_HOME/dotfiles/home/.golangci.yml ./.golangci.yml
}

dotfiles_brew() {

}
