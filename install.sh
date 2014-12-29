#!/bin/bash
########################
# install.sh
#
# Copies the current ~/.vimrc to ~/.vimrc-backup and symlinks ~/.vimrc to
# the vimrc file in this directory
########################

dir=$(pwd)
our_vimrc=$dir/vimrc
system_vimrc=~/.vimrc
backup_path=~/.vimrc-backup

# Install NeoBundle
echo "Installing the NeoBundle package manager for Vim..."
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
echo "Done installing NeoBundle."

# Make a backup of user's vimrc
if [ -a $system_vimrc ]; then #if vimrc exists
  echo -n "Copying your current ~/.vimrc to ~/.vimrc-backup..."
  mv $system_vimrc $backup_path
  echo "done."
else
  echo "No ~/.vimrc found.  Moving on to symlink the new .vimrc file"
fi

#Make symlink of this repo's vimrc to ~/.vimrc
echo -n "Making a symlink of the new .vimrc file..."
ln -s $our_vimrc $system_vimrc
echo "done"

echo "All finished! When you run vim, it'll ask you to install some plugins.  Choose yes and you'll be ready to go!"
echo "Note: This setup works best in a graphical version of vim, so it's highly recommended to use macvim (type mvim in the terminal) or gvim (type gvim in the terminal)"
