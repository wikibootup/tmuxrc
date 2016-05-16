#!/bin/bash

# References
# - https://github.com/dahlia/nvimrc/blob/master/install.sh

# Link tmux configuration to ~/.config/tmux
tmuxrc_name="tmuxrc"
src_tmuxrc_dir="$(pwd)"
src_tmuxrc="$src_tmux_dir/$tmuxrc_name"
dst_tmux_dir="$HOME/.config/tmux"
dst_tmuxrc="$dst_tmux_dir/$tmuxrc_name"

path_dir="$HOME/.dotfiles"
if [[ ! -d "$path_dir" ]]
then
  mkdir "$path_dir"
fi

echo "Tmux configuration directory: $dst_tmux_dir"
if [[ ! -d "$dst_tmux_dir" ]]
then
  mkdir "$dst_tmux_dir"
fi

if [[ ! -f "$dst_tmuxrc" || "$(cat "$src_tmuxrc")" != "$(cat "$dst_tmuxrc")" ]]
then
  rm -f "$dst_tmux_dir"
  ln -sfi "$src_tmuxrc_dir" "$dst_tmux_dir"
fi

if [[ ! -f "$HOME/.tmux.conf" ]]
then
  ln -s $HOME/.config/tmux/tmux.conf $HOME/.tmux.conf
else
  mv "$HOME/.tmux.conf" "$path_dir/tmuxrc/.tmux.conf.bak"
  ln -s $HOME/.config/tmux/tmux.conf $HOME/.tmux.conf
  echo "Previous .tmux.conf was moved to $path_dir/tmuxrc/.tmux.conf.bak"
fi
