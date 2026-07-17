{ config, pkgs, ... }:

{
  services.printing = {
    enable = true;
    drivers = [ pkgs.hplip ];
  };

  hardware.printers = {
    ensurePrinters = [ ];
    ensureDefaultPrinter = null;
  };

  hardware.sane = {
    enable = true;
    extraBackends = [ pkgs.hplip ];
  };

  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };

  environment.systemPackages = with pkgs; [
    hplip
    system-config-printer
    sane-airscan
  ];
}