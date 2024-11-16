{ config, lib, pkgs, ... }:
{
programs.vscode = {
  enable = true;
   "security.workspace.trust.enabled" = true;
  extensions = with pkgs.vscode-extensions; [
    ms-python.python
    ms-toolsai.jupyter
  ];
};
}
