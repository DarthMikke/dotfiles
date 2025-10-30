# brew list --installed-on-request
WANTED="cloc docker fx htop jq lazygit lsd make neovim slides viddy"

dotfiles_install() {
  if [ $(which brew) -ne 0 ]; then
    echo "did not find brew"
    exit 1
  fi

  brew install ${=WANTED}
}

dotfiles_lazyvim() {
  cd $XDG_CONFIG_HOME
  ln -s ./dotfiles/config/nvim ./nvim
}

dotfiles_brew() {

}
