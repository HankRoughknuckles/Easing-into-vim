A .vimrc to help you transition into Vim
=============================

Installation instructions:
--------------------------
- navigate to the this repo's folder and run `./install.sh`

Some things to remember:
----------------------
- If you're starting with Vim, using macvim or gvim (the newer GUI implementations of Vim), will be easier to use

- Most of these should work in macvim and/or gvim, but you might have some weirdness if you use standard terminal vim
  
###Commands
   - Opening and Saving *(just like other text editors, but use `<Space>` instead of `<Ctrl>`)*
   
      -   Open = `<Space>o`   (select the file in the window that opens and press enter)
   
      -   New  = `<Space>n`
   
      -   New tab = `<Space>t`
   
      -   Save = `<Space>s`
   
      -   Quit = `<Space>q`
   
   -   Change tabs like in most other editors using `<Ctrl-Tab>` and `<Ctrl-Shift-Tab>`
   
   -   Open fuzzy file searching with `<Space>f` (think "fuzzy" as the keyword to remember)
       
      -   Note, this might be slow if you open vim in a big directory. 
   
      -   You can overcome this by going to the directory you want in terminal and using the `mvim` command there (or `gvim` if not on mac)
