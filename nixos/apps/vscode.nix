{ config, lib, pkgs, ... }:
{
programs.vscode = {
  enable = true;
  extensions = with pkgs.vscode-extensions; [
    ms-python.python
    ms-toolsai.jupyter
    vscodevim.vim
  ];
  userSettings = {
    "editor.minimap.enabled" = false;
    "security.workspace.trust.enabled" = true;
    "window.menuBarVisibility" = "default";
    "window.titleBarStyle" = "custom";
    "security.workspace.trust.untrustedFiles" = "open";
    "workbench.startupEditor" = "none";
  };
};
}
