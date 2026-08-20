{ lib, ... }:
let
  folder = ./.;
  files = builtins.readDir folder;
  validFiles = lib.filterAttrs (
    name: type:
    (type == "regular" || type == "symlink") && (lib.hasSuffix ".nix" name) && (name != "default.nix")
  ) files;
  importsList = map (name: folder + "/${name}") (builtins.attrNames validFiles);
in
{
  imports = importsList;
}
