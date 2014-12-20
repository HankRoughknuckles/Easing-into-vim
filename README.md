A .vimrc to help you transition into Vim
=============================

Installation instructions:
--------------------------
- Navigate to the this repo's folder and run `./install.sh`  

- This will do the following things:
  - Install NeoBundle, a package manager for Vim
  - Backup your current .vimrc file
  - Make a symlink from the repo's vimrc to your computer's `~/.vimrc` path.

- After running `./install.sh` run vim (either MacVim, GVim, or Terminal
  Vim) and you'll be ready to go!

Some things to remember:
----------------------
- If you're starting with Vim, using macvim or gvim (the newer GUI implementations of Vim), will be easier to use

- Most of these should work in macvim and/or gvim, but you might have some weirdness if you use standard terminal vim
  
###Commands
  - Opening and Saving *(just like other text editors, but use `<Space>` instead of `<Ctrl>`)*
   
    - Open = `<Space>o`   (select the file in the window that opens and press enter)

    - New File  = `<Space>n`

    - New Tab = `<Space>t`

    - Save = `<Space>s`

    - Quit = `<Space>q`
   
  - Change tabs like in most other editors using `<Ctrl-Tab>` and `<Ctrl-Shift-Tab>`

  - Open fuzzy file searching with `<Space>f` (think "fuzzy" as the pneumonic)
   
      - Note, this might be slow if you open vim in a big directory. 

      - You can overcome this by going to the directory you want in terminal and using the `mvim` command there (or `gvim` if not on mac)

  - Open up your vimrc file to edit it with `<Space>ev` (think "'E'dit 'V'imrc" as the pneumonic)

  - After making changes to your vimrc, you can reload it to make the changes take effect with `<Space>rv (think "'R'eload 'V'imrc" as the pneumonic)
