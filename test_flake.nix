
{
  description = "Pytorch dev with uv-managed CUDA";

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
        
        # Define the exact core libraries that standard Linux wheels expect
        runtimeLibs = with pkgs; [
          stdenv.cc.cc.lib
          zlib
          glib
          linuxPackages.nvidia_x11 # Vital: Provides the actual hardware driver interface
          libGL
          glibc
          # GUI/Image dependencies you had
          libxcb
          libX11
          libXext
          libXrender
          libXfixes
          imagemagick
        ];
      in
      {
        devShells.default = pkgs.mkShell {
          name = "cuda-uv-env";

          buildInputs = with pkgs; [
            uv
            python311 
            git 
            which
            imagemagick
          ];

          shellHook = ''
            export UV_PYTHON_PREFERENCE="only-system"
            export UV_PYTHON="$(which python3)"

            # 1. Provide standard paths for graphics drivers and libraries
            export LD_LIBRARY_PATH="/run/opengl-driver/lib:/run/opengl-driver-32/lib:${pkgs.lib.makeLibraryPath runtimeLibs}:$LD_LIBRARY_PATH"
            
            # 2. THE SECRET SAUCE: Map nix-ld explicitly for this shell session.
            # This intercepts standard Linux ELF binaries downloaded by uv and hooks them to Nix paths.
            export NIX_LD_LIBRARY_PATH="${pkgs.lib.makeLibraryPath runtimeLibs}"
            export NIX_LD="${pkgs.stdenv.cc.bintools.dynamicLinker}"

            echo "⚡ Nix shell ready. uv will fetch and link binary wheels successfully."
          '';
        };
      });
}
