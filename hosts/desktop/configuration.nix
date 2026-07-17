{
  config,
  pkgs,
  ...
}:

{
  imports = [
    ./hardware-configuration.nix

    ../../modules/boot.nix
    ../../modules/networking.nix
    ../../modules/locale.nix
    ../../modules/plasma.nix
    ../../modules/users.nix
    ../../modules/packages.nix
  ];

  ##########################################################
  # Flakes
  ##########################################################

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  ##########################################################
  # Allow proprietary software
  # Change if you only want free/open source software.
  ##########################################################

  nixpkgs.config.allowUnfree = true;


  # Automatic garbage collection
  nix.gc = {
    automatic = true;
    dates = "weekly"; # or "daily"
    options = "--delete-older-than 30d";
  };

  # Optional: automatically optimise the Nix store
  nix.optimise = {
    automatic = true;
    dates = [ "weekly" ];
  };


  ##########################################################
  # REQUIRED:
  #
  # Use the NixOS release version from your original install.
  #
  # Example:
  # "24.11"
  # "25.05"
  ##########################################################

  system.stateVersion = "26.05";
}