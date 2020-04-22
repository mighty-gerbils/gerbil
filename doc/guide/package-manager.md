# The Gerbil Package Manager

Gerbil comes with a command line package manager, gxpkg, which allows you to install and manage packages distributed through github, gitlab, or bitbucket.

::: tip usage
```
gxpkg install pkg ...
gxpkg update pkg ...
gxpkg uninstall pkg ...
gxpkg link pkg src
gxpkg unlink pkg ...
gxpkg build pkg ...
gxpkg list
gxpkg retag
gxpkg search keyword ...
```
:::

## Gerbil Packages

Any supported public provider git repo can serve a Gerbil package, provided that it:

- has a gerbil.pkg file; plist should nominally contain package: and depend:.
    - package: `<symbol>` should declare your common package prefix, and will apply to all your sources recursively.
    - depend: `<list>` should list all package dependencies.
- has a build.ss script that implements the meta, spec, and compile actions.
    - the meta action should return an sexpr list of all the actions supported by the script.
    - the spec action should return an sexpr list containing the `:std/make` build specs used to build the package; the package manager uses that to clean.
    - the compile action should make the package, assuming the dependency graph has been built.
    - the script should also have a default action that does compile, in order to support installation by git clone and M-x gerbil-build for development.

You can use `:std/build-script` to get a template script definition from the package build-spec.

See gerbil-utils for an example package.

## Examples

To install fare's gerbil-utils package:

`gxpkg install github.com/fare/gerbil-utils`

To link a local development package (here vyzo's gerbil-aws package):

`gxpkg link github.com/vyzo/gerbil-aws gerbil-aws`

To list all installed (or linked) packages:

`gxpkg list`

To update all packages:

`gxpkg update all`

To rebuild a package and its transitive dependencies:

`gxpkg build github.com/fare/gerbil-utils`

To rebuild all packages:

`gxpkg build all`

To search for packages created by vyzo using the package directory:

`gxpkg search vyzo`

## Known Gerbil Packages

We maintain a list of known Gerbil packages in the [Gerbil Package Directory](https://github.com/vyzo/gerbil-directory).
Feel free to open a PR in that repo to list your own packages!

## A Word of Caution

The build script is currently not sandboxed; it runs with user privileges and it is an arbitrary script. We originally planned to address this by creating a restricted sandbox language for package build scripts. But you can only go so far in a language that thrives in compile-time evaluation; remember, it's macros all the way!

You can quickly vet a package by inspecting the gerbil.pkg manifest and the build script itself. If it uses the standard script template or just invokes make with a build-spec, then it should be a reasonably behaved package. Of course, who knows what surprises could be lurking in a macro deep in the sources, so where to stop?

For now, you should only install packages from sources you trust and review the package source code before installation. That's ok for the early days of the Gerbil Clan, we don't have a trust problem yet.

Further down the road, we will want the package manager to perform privilege separation and compile as nobody with full sandboxing. But that's a lot of work for a problem of scale we don't have yet.

Eventually we also plan to have signed packages, which can prevent watering hole attacks in service providers. Nonetheless, github is a reasonably reliable and secure platform, so there is no cause for immediate concern.
