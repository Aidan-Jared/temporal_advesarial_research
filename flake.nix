{
  description = "Local Development Environment for Temporal Adversarial Research";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs-cuda = import nixpkgs {
        inherit system;
        config = {
          allowUnfree = true;
          cudaSupport = true;
        };
      };
    in {
      devShells.${system}.default = pkgs-cuda.mkShell {
        name = "cuda-ml-env";
        strictDeps = true;

        nativeBuildInputs = with pkgs-cuda; [
          uv
          python3
          pkg-config
          git
        ];

        buildInputs = with pkgs-cuda; [
          cudaPackages.cudatoolkit
          cudaPackages.cudnn
          linuxPackages.nvidia_x11
          stdenv.cc.cc.lib
          zlib
          openssl
        ];

        shellHook = ''
          # Dynamically binds libraries for NixOS without affecting other platforms
          export LD_LIBRARY_PATH="${pkgs-cuda.linuxPackages.nvidia_x11}/lib:${pkgs-cuda.stdenv.cc.cc.lib}/lib:${pkgs-cuda.cudaPackages.cudatoolkit}/lib:${pkgs-cuda.cudaPackages.cudnn}/lib:${pkgs-cuda.zlib}/lib:${pkgs-cuda.openssl.out}/lib:$LD_LIBRARY_PATH"
          export CUDA_PATH="${pkgs-cuda.cudaPackages.cudatoolkit}"
          echo "⚡ Local CUDA Development Environment Loaded ⚡"
        '';
      };
    };
}
