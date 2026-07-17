{
  ...
}:

{
  programs.git = {
    enable = true;

    ##################################################
    # CHANGE THESE
    ##################################################

    userName = "Oliver Ellis";
    userEmail = "ellis.oliver@gmail.com";

    extraConfig = {
      init.defaultBranch = "main";
      pull.rebase = false;
    };
  };
}