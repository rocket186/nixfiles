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
   ''; 
  };
}

