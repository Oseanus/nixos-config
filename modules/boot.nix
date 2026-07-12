{
  ...
}:

{
  ##########################################################
  # GRUB Bootloader
  #
  # Most modern systems:
  # - UEFI
  #
  # Old systems:
  # - BIOS/Legacy
  ##########################################################

  boot.loader = {
    efi.canTouchEfiVariables = true;

    grub = {
      enable = true;

      ######################################################
      # UEFI Installation
      ######################################################

      efiSupport = true;
      device = "nodev";

      ######################################################
      # Detect Windows installations automatically
      ######################################################

      useOSProber = true;
    };
  };
}