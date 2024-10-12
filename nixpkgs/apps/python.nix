{pkgs, ...}: {
  home.packages = [
    (pkgs.python312.withPackages (ppkgs: [
      ppkgs.numpy
      ppkgs.pandas
      ppkgs.matplotlib
      ppkgs.seaborn
      ppkgs.torch

      ppkgs.ipykernel
      ppkgs.jupyterlab
    ]))
  ];
}


