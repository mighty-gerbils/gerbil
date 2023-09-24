# The Gerbil Package Manager

Gerbil comes with a command line package manager, invoked with `gerbil pkg` or just `gxpkg`.

The package manager allows you to install and manage packages
distributed through github, gitlab, or bitbucket.

::: tip usage
```
gerbil pkg install pkg ...
gerbil pkg update pkg ...
gerbil pkg uninstall pkg ...
gerbil pkg link pkg src
gerbil pkg unlink pkg ...
gerbil pkg build pkg ...
gerbil pkg list
gerbil pkg retag
gerbil pkg search keyword ...
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

See [gerbil-utils](https://github.com/mighty-gerbils/gerbil-utils) for an example package.

## Examples

- To install fare's gerbil-utils package:
```shell
$ gerbil pkg install github.com/mighty-gerbils/gerbil-utils
```

- To link a local development package (here vyzo's gerbil-aws package):
```shell
$ gerbil pkg link github.com/vyzo/gerbil-aws gerbil-aws
```

- To list all installed (or linked) packages:
```shell
$ gerbil pkg list
```

- To update all packages:
```shell
$ gerbil pkg update all
```

- To rebuild a package and its transitive dependencies:
```shell
gerbil pkg build github.com/mighty-gerbils/gerbil-utils
```

- To rebuild all packages:
```shell
gerbil pkg build all`
```

## Package Directories

Package lists come from directories, which can be any repo on github
that has a `package-list` file or just a URL pointing to a package
list. This list follows the simplest and most extensible an association list where the car is the package and the cdr is a plist of the package properties, with keyword keys. The only required key is `description:`.

This is designed so that it is trivial to create a new directory; in
fact users are encouraged to create their own directories for their
packages and share them with each other.

By default, the [Mighty Gerbils
directory](https://github.com/mighty-gerbils/gerbil-directory) is
searched, as these are packaged developed and maintained by the Gerbil
Core Team.

You can add a new directory with the `gerbil pkg dir -a directory-repo-or-url ...`
command.

## A Word of Caution

The build script is not sandboxed; it runs with user privileges and it is an arbitrary script. We originally planned to address this by creating a restricted sandbox language for package build scripts. But you can only go so far in a language that thrives in compile-time evaluation; remember, it's macros all the way!

You can quickly vet a package by inspecting the gerbil.pkg manifest and the build script itself. If it uses the standard script template or just invokes make with a build-spec, then it should be a reasonably behaved package. Of course, who knows what surprises could be lurking in a macro deep in the sources, so where to stop?

For now, you should only install packages from sources you trust and review the package source code before installation. That's ok for the early days of the Gerbil Clan, we don't have a trust problem yet.

Further down the road, we will want the package manager to perform privilege separation and compile as nobody with full sandboxing. But that's a lot of work for a problem of scale we don't have yet.

Eventually we also plan to have signed packages, which can prevent watering hole attacks in service providers. Nonetheless, github is a reasonably reliable and secure platform, so there is no cause for immediate concern.
