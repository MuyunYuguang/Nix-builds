{ inputs, system }:
let
  P = name: attr: inputs.${name}.packages.${system}.${attr};
in
{
  hermes = P "hermes" "desktop";
}

