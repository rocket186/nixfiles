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
  home.stateVersion = "20.09";
  programs.bash.enable = true;
  home.packages = with pkgs; [ 
    # I shouldn't need all this in here...
    chromium
    cmake
    microsoft-edge
    dotnetCorePackages.sdk_9_0_1xx
    gcc
    glibc # Extra C stuff (for sockets)
    pkg-config # Extra C stuff (for sockets)
    gdb
    git
    gnome-extension-manager
    gnomeExtensions.hide-top-bar
    gnome.gnome-terminal
    gnome3.gnome-tweaks
    gnumake
    go
    htop
    libreoffice
    nasm
    openbox
    # pkgs.gnome3.gnome-tweaks
    python3
    qt5ct # Trying to get sys to update
    qt6ct # Trying to get sys to update
    sublime4
    wget
  ];
}

