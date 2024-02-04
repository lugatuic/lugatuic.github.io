{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
	packages = with pkgs; [
		libxslt
		pandoc
		rsync
	];
}
