## Nix: An Introduction

## 1. Nix Package Manager
# Install; Build; 
# Atomic Upgrages & Rollbacks: 
# 	Upgrades either work or don't.
# 	If you don't like an upgrade you can always regress to an older version.
# All packages are isolated, so they can't cause issues for each other.
# Create isolated environments (via 'nix-shell -p')

## 2. Nix Language
# Everything's a function.
# If it looks weird or confuses you it's probably a function.


## 3. Nix Store
# Every version for every package in the Nix Store has its own hash, so is therefore its own entity in its own right.
# Dependencies are not duplicated, they're just referenced, so only one instance is needed.

## 4. Nix Flakes

## 5. Garbage Collector
# Cleans up unreferenced packages from Nix Store.
# Could run automatically, but the human's gotta do somethin' I guess.