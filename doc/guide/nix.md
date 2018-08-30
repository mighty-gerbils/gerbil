# Using Gerbil with Nix

You can use Gerbil on NixOS, or with the Nix package manager without NixOS, and it will guarantee you that Gerbil is correctly built, in a deterministic way, on top of a properly built Gambit with all the correct options.

Satisfactory Nix recipes for Gerbil were merged in nixpkgs starting in September 2017, and propagated to other branches from there. Updates will be upstreamed regularly, but if you care for the latest recipe, see my nixpkgs fork at http://github.com/fare-patches/nixpkgs. Make sure your NIX_PATH variable defines `nixpkgs=/path/to/checkout/of/nixpkgs` and to consistently use `nix-env -f '<nixpkgs>'` or `nix-shell '<nixpkgs>'`, etc. You may abstract this usage in shell (or gerbil) functions as appropriate. You can install it with `nix-env -f '<nixpkgs>' -iA gerbil` and then get a REPL with gxi.

The recipe was tested on Linux on i686 and x86_64. It should just work on macOS, on other Linux architectures, and maybe even on Windows, though it may or may not require further hacking in some cases. Please report successes and failures to us. Note that static linking of Gerbil programs is not currently well supported in Nix; fixing that will require updating the recipes for relevant libraries.

To compile using gxc should work fine from within Nix recipes if you add gerbil, gambit and all the libraries you use to your package's dependencies. To use gxc from the command-line outside a nix-shell, you may use the script gerbil-nix-env.sh from the Gerbil Clan, the free software collection of utilities at https://github.com/fare/gerbil-utils/
