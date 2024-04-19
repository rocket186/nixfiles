{ config, lib, pkgs, ... }:
{
programs.vscode = {
  enable = true;
  extensions = with pkgs.vscode-extensions; [
    ms-python.python
    ms-toolsai.jupyter
  ];
};
}
