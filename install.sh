#!/bin/bash

# References
# - https://github.com/dahlia/nvimrc/blob/master/install.sh

# Link tmux configuration to ~/.config/tmux
tmuxrc_name="zhsrc"
src_tmuxrc_dir="$(pwd)"
src_tmuxrc="$src_tmux_dir/$tmuxrc_name"
dst_tmux_dir="$HOME/.config/tmux"
dst_tmuxrc="$dst_tmux_dir/$tmuxrc_name"
echo "Tmux configuration directory: $dst_tmux_dir"
if [[ ! -f "$dst_tmuxrc" || "$(cat "$src_tmuxrc")" != "$(cat "$dst_tmuxrc")" ]]
then
  rm -f "$dst_tmux_dir"
  ln -sfi "$src_tmuxrc_dir" "$dst_tmux_dir"
fi
