if [ -z "$JDBASE" ]; then
  JDBASE="$HOME/Documents/JD"
fi

jd() {

}

jcd() {
  cd $JDBASE/*/*/$1*
}

jpwd() {
  if [[ $(pwd) != $JDBASE* ]]; then
    return 1
  fi

  pwd | tr "/" "\n" | tail -n 1
}
