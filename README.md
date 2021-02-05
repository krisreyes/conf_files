# Vim
---

The .vimrc file contains basic configuration for vim, but requires the 
installation of vundle and vundle plugins. To do this:

1. Install vundle inside ~/.vim/bundle/ via:

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

2. Install the plugins by starting vim and using the command:

:PluginInstall

3. Install the `solarized` colorscheme:

3A. Download solarized.vim from:

https://github.com/altercation/vim-colors-solarized

(It is in the /colors/ directory)

3B. Move solarized.vim to your .vim/colors directory. After downloading the vim
script or package:

$ cd vim-colors-solarized/colors
$ mv solarized.vim ~/.vim/colors/

3C. Go to https://ethanschoonover.com/solarized/ and download the solarized
distribution (this also contains the above solarized.vim) file. However, 
for this step, we want to install the colors throughout all of the Terminal
app for OSX. To do this, in the downloaded distribution, install the "Solarized
Dark ansi.terminal" settings in the "osx-terminall.app-colors-solarized"
folder. This installs new profiles that are properly solarized colored.


4. Install powerline fonts, 
(see
https://powerline.readthedocs.io/en/master/installation.html#fonts-installation).
Essentially, clone the font repo from https://github.com/powerline/fonts, then
install the fonts (either individually, or all at once using the `install.sh`
script provided in the repo).

Pick the correct font in the terminal profile. For example (Source Code Pro for
Powerline, 11 pt font, Character Spacing = 0.898, Line Spacing = 0.947).

5. Disable indentation for specific file types.  Create the file: 

~/.vim/indent/tex.vim

In this file, add the single line:

let b:did_indent = 1

Repeat for other files (html, css, etc.).


(See https://vim.fandom.com/wiki/How_to_stop_auto_indenting for more info)







