#!/usr/bin/env bash

if [ -z "$XDG_CONFIG_DIR" ] 
then
  config_dir="$HOME/.config"
else
  config_dir="$XDG_CONFIG_DIR"
fi

echo "Backing up $config_dir/nvim to $config_dir/nvim_bak..."
mv "$config_dir/nvim" "$config_dir/nvim_bak"
if [[ $? > 0 ]]
then
  echo "Failed to backup neovim config, aborting !"
  exit 1
else
  echo "Done"
fi

echo "Cloning repo into $config_dir/nvim"
git clone https://github.com/LoricAndre/yanc.nvim "$config_dir/nvim"
echo "Done"

ln -s "$config_dir/nvim/lua/yanc.lua" "$config_dir/nvim"

echo "Entering $config_dir/nvim..."
cd "$config_dir/nvim"
echo "Extra steps after cloning..."
git remote rename origin template
git remote set-url --push template DISABLED

echo '[alias]' >> "$config_dir/nvim/.git/config"
echo 'merge-template = ! "git fetch template && find * -path lua/yanc.lua -prune -o -type f -exec git checkout template/main -- {} \\;"' >> "$config_dir/nvim/.git/config"

echo "Use git merge-template to get updates from upstream."
