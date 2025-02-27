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
    "security.workspace.trust.enabled" = true;
    "window.titleBarStyle" = "custom";
    "window.menuBarVisibility" = "default";
  };
};
}
