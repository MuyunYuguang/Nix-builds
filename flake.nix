{
    description = "Nix Packages";

    inputs = {
      hermes.url = "github:NousResearch/hermes-agent";
    };

    outputs = inputs@{ ... }:
    let
      system = "x86_64-linux";
    in {
      packages.${system} =
        import ./upstream.nix {
          inherit inputs system;
        };
    };
}
