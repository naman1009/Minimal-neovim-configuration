# A minimal vim config to get you going in any language you please.

## Installation

### The most necessary step

* Install [vim-plug](https://github.com/junegunn/vim-plug)
* Run :PlugInstall


### Editor Quality of life stuff.
* Install coc-snippets for snippet support with :CocInstall coc-snippets
* install coc-pairs for auto-closing parenthesis and other containers with
:CocInstall coc-pairs
* Install any other language required easily using :CocInstall
 coc-(language server) 
* use TSInstall (language name) for tree sitter based syntax highlighting.

## Usage

* <SPC>ff opens up a fuzzy finder (Telescope)
* <SPC>gg opens up ripgrep
* capital H and capital L go to the start and end of lines (I use this
because it is semantic to the I and A keybindings for going to the start
and end of a line)
* You can use <C-k> and <C-j> in normal mode to move lines up and down.
this is just a bit of an asethetic change because I am used to this in
vscode
* <TAB> is used for both autocompletion with COC, and for snippets and for
jumping placeholders in snippets.
* <C-n> and <C-p> for cycling down and up the autocomplete menu

* There is a command called Init which will take you back to the init.vim
file so you can do quick edits



