{
  pkgs,
  ...
}:

{
  programs.zsh.enable = true;

  users.users.oliver = {
    isNormalUser = true;

    ########################################################
    # CHANGE:
    #
    # Add additional groups as needed.
    ########################################################

    extraGroups = [
      "wheel"
      "networkmanager"
    ];

    shell = pkgs.zsh;
  };

  ##########################################################
  # Enable sudo
  ##########################################################

  security.sudo.enable = true;
}