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
      calc="libreoffice --calc";
      ls = "ls -l --color=auto";
      nixrs="sudo nixos-rebuild switch";
      nixf="cd ~/nixfiles/nixos";
      tmux="TERM=screen-256color-bce tmux";
      vi="vi -c 'set inde='"; # Needed to make Python indentation behave
    };
  };
}


