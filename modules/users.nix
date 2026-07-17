{
  ...
}:

{
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
  };

  ##########################################################
  # Enable sudo
  ##########################################################

  security.sudo.enable = true;
}