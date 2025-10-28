# dotfiles

Heavily influenced by 

## Installation

```shell
cd ~/
echo <<EOF >> .zshrc
if [ -z "$XDG_CONFIG_HOME" ]; then
  XDG_CONFIG_HOME="$HOME/.config"
  export XDG_CONFIG_HOME
fi

if [ -f "$XDG_CONFIG_HOME/dotfiles/main.sh" ]; then
  source $XDG_CONFIG_HOME/dotfiles/main.sh
fi
EOF
```


