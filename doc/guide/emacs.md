# Gerbil Development with Emacs

The natural home for Gerbil development is Emacs, the ultimate parenthesis manipulation machine.

## Setting Up
Gerbil comes with a custom editing mode, which extends scheme-mode with font-lock and indentation for Gerbil code: [gerbil.el](https://github.com/vyzo/gerbil/blob/master/etc/gerbil.el).
See below for additional functionality provided by gerbil-mode.

You can add it to your autoload path (eg by linking in `$HOME/.emacs.d`) and adding this to your `.emacs`:
```
(autoload 'gerbil-mode "gerbil" "Gerbil editing mode." t)
```

You should further utilize Gambit's inferior mode, as it offers debugger integration with sources on emacs.
It lives in [$GAMBIT_HOME/share/emacs/site-lisp/gambit.el](https://github.com/gambit/gambit/blob/master/misc/gambit.el).

You can add it to your autoload path and then add this to your `.emacs`:
```
(require 'gambit)
(add-hook 'inferior-scheme-mode-hook 'gambit-inferior-mode)
```

You can then make `gxi` your scheme program by setting `scheme-program-name`:
```
(defvar gerbil-program-name
  (expand-file-name "~/gerbil/bin/gxi")) ; Set this for your GERBIL_HOME
(setq scheme-program-name gerbil-program-name)
```

And you can now run Gerbil with `M-x run-scheme`.

## TAGS

Gerbil comes with a tool to build emacs tags from Gerbil sources, called `gxtags`.

By default, the build script creates tags for the system in
`$GERBIL_HOME/src/TAGS`. This tags table contains all exported symbols
for the Gerbil prelude, standard library, compiler and expander. They
allow you to easily browse Gerbil code, and also explore the system.

You can load the tags table with `M-x visit-tags-table` and selecting the tags file.
If you want it to be a permanent part of your editing experience, you can add
`$GERBIL_HOME/src` to your tags table list by adding this to your .emacs:
```
(add-to-list 'tags-table-list "~/gerbil/src/TAGS")
```

The Gerbil package manager also generates a TAGS table for all installed packages;
by default this lives in `~/.gerbil/pkg/TAGS`. You can add this to your emacs tags
table list with
```
(add-to-list 'tags-table-list "~/.gerbil/pkg/TAGS")
```

You should also generate tags for your own code by using `gxtags`. The invocation
is very simple:
```
gxtags [-a] [-o TAGS] source-file-or-directory ...
```

## Gerbil Mode Interactive Functions

Aside from indentation and fontification, gerbil-mode provides a handful of
interactive functions useful for Gerbil development:

```
M-x gerbil-import-current-buffer
M-x reload-current-buffer
M-x compile-current-buffer
```

These functions import, reload, and compile the source module visited by
the current buffer respectively. They link syntax errors back to the source
by popping the offending buffer at the point of offense.

```
M-x gerbil-build
```

This function builds the current Gerbil source tree by invoking the first
build.ss script discovered by walking up the directory hierarchy.

## SLIME Integration

There is preliminary support for SLIME using ecraven's [r7rs-swank](https://github.com/ecraven/r7rs-swank).

See drewc's [guide](https://gist.github.com/drewc/5f260537b7914a2b999c8a539fb48098) for how to set it up.
