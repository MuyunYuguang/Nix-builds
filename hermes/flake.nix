{
    description = "Hermes Desktop";

    inputs = {
      hermes.url = "github:NousResearch/hermes-agent";
    };

    outputs = { self, hermes }:
    let
      system = "x86_64-linux";
    in {
      packages.${system}.default =
        hermes.packages.${system}.desktop;
    };
}
