{ config, pkgs, ... }:
{
  programs.vim = {
    enable = true; 
    settings = {
      tabstop=2;
      shiftwidth=2;
    };
    extraConfig = ''
      set number
      set expandtab
      set ai
      set hlsearch
      set ruler
      set backspace=indent,eol,start
      set wrap
      set linebreak
      let g:python_recommended_style = 0
      set title
      set titlestring=%f
      autocmd BufEnter * let &titlestring = expand ('%:p')
      autocmd BufWritePost * let &titlestring = expand ('%:p')
      set noruler
      set laststatus=0
   ''; 
  };
}

