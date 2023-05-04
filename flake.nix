{
  description = "my overlay";

  outputs = { self }: {
    overlays.default = final: prev: {
      rnd-hello = final.stdenv.mkDerivation {
        name = "rnd-hello";
        src = ./.;
        buildPhase = "gcc -o rnd-hello ./rnd-hello.c";
        installPhase = "mkdir -p $out/bin; install -t $out/bin rnd-hello";
      };
    };
  };
}
