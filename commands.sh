WANTED="cloc docker fx htop jq lazygit lsd make neovim slides viddy"

_install() {
  if [ $(which brew) -ne 0 ]; then
    echo "did not find brew"
    exit 1
  fi

  brew install $WANTED
}
