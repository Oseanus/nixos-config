{
  pkgs,
  ...
}:

{
  programs.kitty = {
    enable = true;

    settings = {
      confirm_os_window_close = 0;
      font_size = 12;
      enable_audio_bell = false;

      # Appearance
      background_opacity = "0.90";
      background_blur = 20;

      # Padding around terminal content
      window_padding_width = 8;

      # Cursor
      cursor_shape = "beam";
      cursor_blink_interval = 0;

      # Large scrollback history
      scrollback_lines = 100000;

      # Tabs
      tab_bar_edge = "top";
      tab_bar_style = "powerline";

      # Open links with Ctrl+Shift+Click
      open_url_with = "default";

      # Disable close confirmation
      confirm_os_window_close = 0;

      # Window behavior
      remember_window_size = true;
    };
  };
}