{
  # Specify the source of nixpkgs. Using unstable channel for latest packages
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

  outputs = {nixpkgs, ...}: let
    # Helper function to generate outputs for multiple systems
    # This allows our environment to work on Linux, macOS, etc.
    forAllSystems = function:
    # genAttrs creates an attribute set for each supported system
      nixpkgs.lib.genAttrs
      # flakeExposed is a list of supported systems (linux, darwin, etc)
      nixpkgs.lib.systems.flakeExposed (
        # For each system, call our function with the appropriate packages
        system: function nixpkgs.legacyPackages.${system}
      );
  in {
    # Define development shells for all supported systems
    # This is what creates our development environment
    devShells = forAllSystems (pkgs: {
      # 'default' is the shell you get when running 'nix develop'
      # callPackage automatically passes the required dependencies to shell.nix
      default = pkgs.callPackage ./shell.nix {};
    });
  };
}
