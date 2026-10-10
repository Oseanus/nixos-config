{
  pkgs,
  ...
}:

{
  environment.systemPackages = with pkgs; [

    ########################################################
    # Terminal Tools
    ########################################################

    git
    curl
    wget
    htop
    btop
    neovim

    ########################################################
    # Browsers
    ########################################################

    firefox
    vivaldi

    ########################################################
    # KDE Applications
    ########################################################

    kdePackages.dolphin
    kdePackages.kate
    kdePackages.konsole
    ark

    ##########################################################
    # Development
    ##########################################################
    
    vscode
    jetbrains.clion

    ########################################################
    # Utilities
    ########################################################

    unzip
    zip
    file
    tree
    feh
    ffmpeg
    pciutils
    brightnessctl
    dmidecode
    xrandr
    kdePackages.kdeconnect-kde
    vivaldi-ffmpeg-codecs

    ########################################################
    # Applications
    ########################################################

    vlc
    libreoffice
    thunderbird
    lmstudio
    
  ];

  ##########################################################
  # Git
  ##########################################################

  programs.git.enable = true;
}