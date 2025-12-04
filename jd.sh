if [ -z "$JDBASE" ]; then
  JDBASE="$HOME/Documents/JD"
fi

jd() {
  printf "
    Usage: jd <command> <parameters>
    jd cd <a[c[.id]]>
      change the working directory to the directory of the chosen area, category or project.
      examples:
        jd-cd 2
        jd-cd 23
        jd-cd 23.11
  "
}

jcd() {
  len=$(echo -n $1 | wc -c | tr -C -d 0-9)
  case "$len" in
  "1")
    cd $JDBASE/${1}0-${1}9*
    return
    ;;
  "2")
    first=$(echo "${1}" | cut -c1-1)
    cd $JDBASE/${first}0-${first}9*/${1}*
    return
    ;;
  "5") ;;
  *)
    return 1
    ;;
  esac

  cd $JDBASE/*/*/$1*
}

jpwd() {
  if [[ $(pwd) != $JDBASE* ]]; then
    return 1
  fi

  pwd | tr "/" "\n" | tail -n 1
}
