{ config, pkgs, ... }:
{
  programs.vim = {
    enable = true; 
    settings = {
      tabstop=2;
      shiftwidth=2;
    };
    extraConfig = ''
      autocmd BufEnter * let &titlestring = expand ('%:p')
      autocmd BufWritePost * let &titlestring = expand ('%:p')
      let g:python_recommended_style = 0
      let g:markdown_recommended_style = 0
      set ai
      set backspace=indent,eol,start
      set expandtab
      set formatoptions-=cro
      set hlsearch
      set laststatus=0
      set linebreak
      set number
      set ruler
      set title
      set titlestring=%f
      set wrap
      set inde=
   ''; 
  };
}

