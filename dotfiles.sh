dotfiles() {
  # echo "Dotfiles!"

  if [ $1 = "list" ]; then
    echo "Included files:\n"
    cat $BASE/main.sh | grep source | sed -E 's/^.*\/(.*\.sh$)/\1/'
  fi
}
