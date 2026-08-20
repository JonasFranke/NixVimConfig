{ lib, ... }:
let
  folder = ./.;
  dirs = builtins.readDir folder;
  validDirs = lib.filterAttrs (_name: type: type == "directory") dirs;
  importsList = map (name: folder + "/${name}") (builtins.attrNames validDirs);
in
{
  imports = importsList;
}
