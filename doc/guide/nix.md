# Using Gerbil with Nix

You can use Gerbil with the [Nix package manager](https://nixos.org), and
it will guarantee you that Gerbil is correctly built, in a deterministic way,
on top of an appropriate Gambit properly built with all the correct options.

Satisfactory Nix recipes for Gerbil were initially merged in
[nixpkgs](https://github.com/NixOS/nixpkgs) starting in September 2017,
and propagated to other branches from there.
Updates have been upstreamed regularly, but if you care for the latest recipe,
see this [nixpkgs fork](http://github.com/MuKnIO/nixpkgs), branch `devel`
(beware, it is often rebased).

Assuming your `NIX_PATH` contains an entry `nixpkgs=/path/to/nixpkgs` which
may point to the nixpkgs fork URL above or to your own `git` checkout thereof,
you can install Gerbil with: `nix-env -f '<nixpkgs>' -iA gerbil-unstable`
and then interact with a REPL using `gxi`.
You can also use `nix-env -f '<nixpkgs> ...'`, `nix-shell '<nixpkgs>'`, etc.,
to install or develop Gerbil-based packages.

The recipe is being actively developed on Linux amd64.
In the past, it has been tried on Linux i686 and on macOS amd64 and more,
but no one is currently actively maintaining support, though the code
should be mostly portable and should work on all platforms supported by Nix,
with few tweaks required when necessary at all.
Please report successes and failures to us.

Note that static linking of Gerbil programs is not well supported in Nix;
fixing that will require updating the recipes for relevant libraries;
at the same time, Nix makes static linking not necessary.

To compile using `gxc` should work fine from within Nix recipes
or from within a `nix-shell`, if you add `gerbil`, `gambit` and
all the libraries you use to your package's `buildInputs`.
See the `pkgs.gerbil-support`,
as defined in `pkgs/development/compilers/gerbil/gerbil-support.nix`
in the latest nixpkgs, for functions to help you define packages
for your Gerbil libraries, with `gerbil-utils` as an example.

To use `gxc` interactively from the command-line outside a `nix-shell`,
you may use the script `gerbil-nix-env.sh` from the
[Gerbil Clan](https://github.com/mighty-gerbils/gerbil-utils),
the free software collection of utilities.
