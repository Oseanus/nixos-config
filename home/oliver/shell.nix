{
  pkgs,
  ...
}:

{
  programs.zsh = {
    enable = true;

    autosuggestion.enable = true;

    syntaxHighlighting.enable = true;

    shellAliases = {
      ll = "ls -lah";
      gs = "git status";
      rebuild = "sudo nixos-rebuild switch --flake .#desktop";
    };
  };

  home.packages = with pkgs; [
    eza
    bat
    ripgrep
    fd
  ];
}{
  pkgs,
  ...
}:

{
  programs.zsh = {
    enable = true;

    autosuggestion.enable = true;

    syntaxHighlighting.enable = true;

    shellAliases = {
      ll = "ls -lah";
      gs = "git status";
      rebuild = "sudo nixos-rebuild switch --flake .#desktop";
    };
  };

  home.packages = with pkgs; [
    eza
    bat
    ripgrep
    fd
  ];
}