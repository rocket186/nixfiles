{
  programs.tmux = {
    enable = true; 
    extraConfig = ''
    # Set tmux command mode to ` instead of Ctrl-b
    unbind C-b
    set -g prefix `
    
    # Switch to previous window using ``
    bind-key ` last-window
    
    # Use ` by pressing `-e
    bind-key e send-prefix
    
    # Set tmux colours to default terminal colours
    # set -g default-terminal "screen-256color"
    set -g default-terminal "xterm"

    
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
  };
}

