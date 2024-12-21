{ config, pkgs, ... }:

{

  imports = [
    ./apps/bash.nix
    ./apps/python.nix
    ./apps/tmux.nix
    ./apps/vim.nix
    ./apps/vscode.nix
  ];

  home.username = "diddy";
  home.homeDirectory = "/home/diddy";
  home.stateVersion = "22.11";
  programs.home-manager.enable = true;
  programs.bash.enable = true;
  home.packages = with pkgs; [ 
    chromium
    gcc
    git
    gnome-extension-manager
    gnomeExtensions.hide-top-bar
    gnome.gnome-terminal
    gnome3.gnome-tweaks
    htop
    nasm
    openbox
    # pkgs.gnome3.gnome-tweaks
    # python3
    sublime4
    wget
  ];
}

