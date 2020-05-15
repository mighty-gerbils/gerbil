# Using Gerbil with Nix

You can use Gerbil with the Nix package manager, and it will guarantee you that Gerbil is correctly built, in a deterministic way, on top of Gambit properly built with all the correct options.

Satisfactory Nix recipes for Gerbil were merged in nixpkgs starting in September 2017, and propagated to other branches from there. Updates will be upstreamed regularly, but if you care for the latest recipe, see this [nixpkgs fork](http://github.com/fare-patches/nixpkgs), branch `fare`. Make sure your `NIX_PATH` variable defines `nixpkgs=/path/to/checkout/of/nixpkgs` and to consistently use `nix-env -f '<nixpkgs>'` or `nix-shell '<nixpkgs>'`, etc. You may abstract this usage in shell (or gerbil) functions as appropriate. You can install it with `nix-env -f '<nixpkgs>' -iA gerbil` and then get a REPL with `gxi`.

The recipe is being developed on Linux amd64. It is occasionally tested on Linux i686 and on macOS. It should work on all platforms supported by Nix, but might require tweaks on new or rare platforms. Please report successes and failures to us. Note that static linking of Gerbil programs is not currently well supported in Nix; fixing that will require updating the recipes for relevant libraries; at the same time, Nix makes static linking not necessary.

To compile using `gxc` should work fine from within Nix recipes if you add `gerbil`, `gambit` and all the libraries you use to your package's `buildInputs`. See the `pkgs.gerbil-support`, as defined in `pkgs/development/compilers/gerbil/gerbil-support.nix` in the latest nixpkgs, for functions to help you define packages for your Gerbil libraries, with `gerbil-utils` as an example.

To use `gxc` interactively from the command-line outside a `nix-shell`, you may use the script `gerbil-nix-env.sh` from the [Gerbil Clan](https://github.com/fare/gerbil-utils), the free software collection of utilities.
