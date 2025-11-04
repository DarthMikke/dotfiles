# brew list --installed-on-request
WANTED="bat cloc docker fx htop jq lazygit lsd make neovim slides viddy"

dotfiles_install() {
  which brew > /dev/null || return 1
  brew install ${=WANTED}
}

dotfiles_lazyvim() {
  cd $XDG_CONFIG_HOME
  ln -s ./dotfiles/config/nvim ./nvim
}

dotfiles_brew() {

}
