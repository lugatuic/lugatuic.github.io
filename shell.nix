{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  packages = with pkgs; [
    libxslt
    pandoc
    python3
    rsync
  ];
}
