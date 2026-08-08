{
  pkgs,
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

  boot.kernelPackages = pkgs.linuxPackages_latest;

  boot.kernelParams = [ 
    # "acpi_backlight=vendor"
    # "amdgpu.backlight=1"
    "amdgpu.abmlevel=0"
  ];

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