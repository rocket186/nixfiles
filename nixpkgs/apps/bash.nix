{ config, pkgs, lib, ... }:

{
  programs.bash = {
    enable = true;
    initExtra = ''
    export PS1="\[\e[37m\]\u\[\e[m\]\[\e[32m\]:\[\e[31m\]\W\\[\e[32m\]\$\[\e[37m\]"
    '';
    shellaliases = {
      mkcd = "mkdir $1 && cd $1";
    };
  };
}

