{
  extras = hackage:
    {
      packages = ({
        "stripe-core" = (((hackage.stripe-core)."2.5.0").revisions).default;
        "stripe-haskell" = (((hackage.stripe-haskell)."2.5.0").revisions).default;
        "stripe-http-client" = (((hackage.stripe-http-client)."2.5.0").revisions).default;
        } // {
        PaymentServer = ./PaymentServer.nix;
        servant-prometheus = ./servant-prometheus.nix;
        }) // {};
      };
  resolver = "lts-14.1";
  }