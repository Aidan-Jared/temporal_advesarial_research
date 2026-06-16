{ pkgs, lib, config, inputs, ... }:

{
  languages.python = {
    enable = true;
    uv = {
      enable = true;
      sync.enable = true;
    };
  };

  env = {
    USE_SYSTEM_PYTHON = "1";
    UV_CACHE_DIR = "~/.cache/uv";
    LD_LIBRARY_PATH = builtins.concatStringsSep ":" [
      "/run/opengl-driver/lib"
      "/run/opengl-driver-32/lib"
      "${pkgs.stdenv.cc.cc.lib}/lib"
      "${pkgs.zlib}/lib"
      "${pkgs.libxcb}/lib"
      "${pkgs.libX11}/lib"
      "${pkgs.glib.out}/lib"
      # --- Add libGL to the path ---
      "${pkgs.libglvnd}/lib"
      "${pkgs.imagemagick}/lib"
    ];
  };

  packages = [
    pkgs.zlib
    pkgs.imagemagick
    pkgs.libxcb
    pkgs.libX11
    pkgs.glib.out
    # --- Add libglvnd here ---
    pkgs.libglvnd
  ];
}
