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

    # Set window title to filename when in vim. (works in split pane too)
    set-option -g set-titles on
    set-option -g set-titles-string '#{pane_title}' 
    set -g allow-rename on

    # Set window title to current working directory
    set-option -g window-status-format '#{window_index}:#(if [ -n "#{pane_title}" ]; then basename "#{pane_title}"; else basename "#{pane_current_path}"; fi)'
    set-option -g window-status-current-format '#{window_index}:#(if [ -n "#{pane_title}" ]; then basename "#{pane_title}*"; else basename "#{pane_current_path}*"; fi)'
   ''; 
  };
}

