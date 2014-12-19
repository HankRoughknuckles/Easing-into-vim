#!/bin/bash
########################
# install.sh
#
# Copies the current ~/.vimrc to ~/.vimrc-backup and symlinks ~/.vimrc to
# the vimrc file in this directory
########################

dir=$(pwd)
vimrc_path=~/.vimrc
backup_path=~/.vimrc-backup

if [ -a $vimrc_path ]; then
  echo -n "Copying your current ~/.vimrc to ~/.vimrc-backup..."
  mv $vimrc_path $backup_path
  echo "done."
else
  echo "No ~/.vimrc found.  Moving on to copy the new .vimrc file in"
fi

