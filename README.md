# dotfiles

Tracks configuration of my shell and multiple applications in Git.

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

## Currently tracked

- Neovim, Helix and GolangCI config
- zsh aliases
- brew applications I use
- rudimentary Johnny Decimal commands
