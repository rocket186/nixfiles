{ configs, pkgs, ... }:
let
  scriptFile = ./bashScripts/generalFunctions.sh;
in {
  programs.bash = {
    enable = true;
    initExtra = ''
    export PS1="\[\e[37m\]\u\[\e[m\]\[\e[32m\]::\[\e[31m\]\W\\[\e[32m\]\$ \[\e[37m\]"
    if [ -f ${scriptFile} ]; then
      source ${scriptFile}
    fi
    '';
    shellAliases = {
      ls = "ls -l --color=auto";
      tmux="TERM=screen-256color-bce tmux";
      calc="libreoffice --calc";
      nixrs="sudo nixos-rebuild switch";
      nixf="cd ~/nixfiles/nixos";
    };
  };
}


