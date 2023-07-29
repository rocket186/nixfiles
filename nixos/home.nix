{ config, pkgs, ... }:

{

  imports = [
    ./apps/bash.nix
    ./apps/tmux.nix
    ./apps/vim.nix
  ];

  home.username = "diddy";
  home.homeDirectory = "/home/diddy";
  home.stateVersion = "22.11";
  home.packages = with pkgs; [ 
    chromium
    gcc
    git
    gnome.gnome-terminal
    htop
    pkgs.gnome3.gnome-tweaks
    python3
    sublime
    wget
  ];
}

