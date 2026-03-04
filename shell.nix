{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  packages = with pkgs; [
    gcc
    gnumake
    cmake
    verilator
    gtkwave
    octave
    python3
    python3Packages.numpy
    python3Packages.matplotlib
    python3Packages.scipy
  ];

  shellHook = ''
		fish
  '';
}
