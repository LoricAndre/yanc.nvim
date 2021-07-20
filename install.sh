#!/usr/bin/env bash

if [ -z "$XDG_CONFIG_DIR" ] 
then
  config_dir="$HOME/.config"
else
  config_dir="$XDG_CONFIG_DIR"
fi

mv "$config_dir/nvim" "$config_dir/nvim_bak"

git clone https://github.com/LoricAndre/yanc.nvim "$config_dir/nvim"

ln -s "$config_dir/nvim/lua/yanc.lua" "$config_dir/nvim"
