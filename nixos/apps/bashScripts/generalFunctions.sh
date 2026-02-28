#!/usr/bin/env bash

mkcd() { 
  mkdir $1; 
  cd $1; 
}

gitpush() {
  git add .;
  git commit -m "$1";
  git push;
}

cleangens() {
  sudo nix-collect-garbage --delete-old;
  sudo /run/current-system/bin/switch-to-configuration boot;
}

