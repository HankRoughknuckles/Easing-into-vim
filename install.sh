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

if [ -a $system_vimrc ]; then #if vimrc exists
  echo -n "Copying your current ~/.vimrc to ~/.vimrc-backup..."
  mv $system_vimrc $backup_path
  echo "done."
else
  echo "No ~/.vimrc found.  Moving on to symlink the new .vimrc file"
fi

echo -n "Making a symlink of the new .vimrc file..."
ln -s $our_vimrc $system_vimrc
echo "done"

echo "All finished! Boot up vim and give it a spin!"
