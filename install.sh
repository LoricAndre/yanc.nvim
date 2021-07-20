#!/usr/bin/env bash

if [ -z "$XDG_CONFIG_DIR" ] then
  config_dir = "$XDG_CONFIG_DIR"
else
  config_dir = "$HOME/.config"
fi
mv -r "$config_dir/nvim" "$config_dir/nvim_bak" && \
  git clone https://github.com/LoricAndre/yanc.nvim \
  "$config_dir/nvim"

