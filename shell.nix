{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
	packages = with pkgs; [
		emacs
		libxslt
	];
}
