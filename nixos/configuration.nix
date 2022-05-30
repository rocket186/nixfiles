# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Set your time zone.
  time.timeZone = "Europe/London";

  # The global useDHCP flag is deprecated, therefore explicitly set to false here.
  # Per-interface useDHCP will be mandatory in the future, so this generated config
  # replicates the default behaviour.
  networking.useDHCP = false;
  networking.interfaces.enp0s31f6.useDHCP = true;
  networking.interfaces.wlp3s0.useDHCP = true;

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Select internationalisation properties.
  # i18n.defaultLocale = "en_US.UTF-8";
  # console = {
  #   font = "Lat2-Terminus16";
  #   keyMap = "us";
  # };

  # Enable the X11 windowing system.
  services.xserver.enable = true;


  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  

  # Configure keymap in X11
  # services.xserver.layout = "us";
  # services.xserver.xkbOptions = "eurosign:e";

  # Enable CUPS to print documents.
  # services.printing.enable = true;

  # Enable sound.
  # sound.enable = true;
  # hardware.pulseaudio.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.diddy = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
  };

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    vim 
    wget
    chromium
    tmux
    pkgs.gnome3.gnome-tweaks
    git
  ];

	
  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "21.11"; # Did you read the comment?

# Ammendments

  # vimrc (needs symlink (then use mv to add the .)
  environment.etc."vimrc".text = ''
    set number
    set tabstop=2
    set shiftwidth=2
    set expandtab
    set ai
    set hlsearch
    set ruler
    set backspace=indent,eol,start
    set wrap
    set linebreak
    syntax on
  '';

  # tmux config
  environment.etc."tmux.conf".text = ''
    # Set tmux command mode to ` instead of Ctrl-b
    unbind C-b
    set -g prefix `
    
    # Switch to previous window using ``
    bind-key ` last-window
    
    # Use ` by pressing `-e
    bind-key e send-prefix
    
    # Set tmux colours to default terminal colours
    set -g default-terminal "screen-256color"
    
    # Format status bar
    set -g status-left '[#I] ' # default
    # set -g status-left ' ' # remove window number
    set -g status-right '#[fg=color0,bg=color2] #(hostname) #[fg=color0,bg=color2] %d/%m #[fg=color0, bg=color2] %H:%M'
    
    # Set command layout to vim instead of emacs
    setw -g mode-keys vi
    
    # Start windows and panes at 1, not 0
    set -g base-index 1
    setw -g pane-base-index 1

  '';

  # bashrc (needs symlink)
  environment.interactiveShellInit = ''
    export PS1="\[\e[37m\]\u\[\e[m\]\[\e[32m\]::\[\e[31m\]\w\\[\e[32m\]\$ \[\e[37m\]"
    # vi = "vim";
    # ls = "ls -l -G";
    # python = "python3";
    # pip = "pip3";
  '';

# End of ammendments.

}
