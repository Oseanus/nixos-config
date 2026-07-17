{ pkgs, ... }:

{
  home.packages = with pkgs; [
    eza
    bat
    fd
    ripgrep
    fzf
  ];

  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    enableCompletion = true;

    shellAliases = {
      ls = "eza";
      la = "eza -a";
      ll = "eza -lah --icons";
      cat = "bat";
      gs = "git status";
      rebuild = "sudo nixos-rebuild switch --flake .#desktop";
    };

    history = {
      size = 100000;
      save = 100000;
      ignoreDups = true;
      expireDuplicatesFirst = true;
    };
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
}