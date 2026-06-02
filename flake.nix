{
  description = "Pytorch dev";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils }:
    utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
      in
      {
        devShells.default = pkgs.mkShell {
          name = "cuda-uv-env";

          buildInputs = with pkgs; [
            uv
            python311 
            stdenv.cc.cc.lib
            # Need these for Triton/PyTorch builds & runtime bindings
            git 
            which
            imagemagick
          ];

          shellHook = ''
            # 1. Prevent uv from downloading its own glibc-linked Python binaries
            export UV_PYTHON_PREFERENCE="only-system"
            export UV_PYTHON="$(which python3)"

            export LD_LIBRARY_PATH="/run/opengl-driver/lib:/run/opengl-driver-32/lib:${pkgs.lib.makeLibraryPath [
              pkgs.stdenv.cc.cc.lib
              pkgs.zlib
              pkgs.glib
              pkgs.linuxPackages.nvidia_x11
              pkgs.cudaPackages.cuda_cudart

              pkgs.libxcb
              pkgs.libX11
              pkgs.libXext
              pkgs.libXrender
              pkgs.libXext
              pkgs.libXfixes
              pkgs.libGL
              pkgs.imagemagick
            ]}:$LD_LIBRARY_PATH"

            
            export CC="${pkgs.stdenv.cc}/bin/cc"
            export CXX="${pkgs.stdenv.cc}/bin/c++"
                        
            export EXTRA_LDFLAGS="-L/run/opengl-driver/lib"
            export EXTRA_CCFLAGS="-I/usr/include"
          '';
        };
      });
}
