{
  config,
  pkgs,
  ...
}:

{
  imports = [
    ./terminal.nix
    ./shell.nix
    ./git.nix
  ];

  ##################################################
  # MUST MATCH YOUR USER
  ##################################################

  home.username = "oliver";


home.packages = with pkgs; [
  discord
  obsidian
];


  ##################################################
  # CHANGE TO HOME DIRECTORY
  ##################################################

  home.homeDirectory = "/home/oliver";

  ##################################################
  # Use current release
  ##################################################

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
}