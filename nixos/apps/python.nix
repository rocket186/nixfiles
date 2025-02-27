{pkgs, ...}: {
  home.packages = [
    (pkgs.python311.withPackages (ppkgs: [
      ppkgs.numpy
      ppkgs.pandas
      ppkgs.matplotlib
      ppkgs.seaborn
      ppkgs.torch

      ppkgs.pip

      ppkgs.ipykernel
      ppkgs.jupyterlab
      ppkgs.notebook
      ppkgs.jupyter-client
      ppkgs.scikit-learn
    ]))
  ];
}

