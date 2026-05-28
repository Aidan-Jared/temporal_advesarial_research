{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    zlib
    glib
    stdenv.cc.cc.lib
    uv
    python313
    python313Packages.torch
    python313Packages.torchvision
    python313Packages.numpy
  ];


shellHook = ''
  export LD_LIBRARY_PATH="${pkgs.lib.makeLibraryPath [
    pkgs.zlib
    pkgs.glib
    pkgs.stdenv.cc.cc.lib
  ]}:$LD_LIBRARY_PATH"
  if [ -d ".venv" ]; then
    source .venv/bin/activate
  fi
'';
}
