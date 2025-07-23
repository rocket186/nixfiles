{
  programs.bash = {
    enable = true;
    initExtra = ''
    export PS1="\[\e[37m\]\u\[\e[m\]\[\e[32m\]::\[\e[31m\]\W\\[\e[32m\]\$ \[\e[37m\]"
    mkcd () { mkdir $1; cd $1; }
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


