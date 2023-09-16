# Gerbil Development with Emacs

The natural home for Gerbil development is Emacs, the ultimate parenthesis manipulation machine.

## Standard Emacs Setup
Gerbil comes with a custom editing mode, which extends scheme-mode with font-lock and indentation for Gerbil code: [gerbil-mode.el](https://github.com/mighty-gerbils/gerbil/blob/master/etc/gerbil-mode.el).
See below for additional functionality provided by gerbil-mode.

You can add it to your autoload path (eg by linking in `$HOME/.emacs.d`) and adding this to your `.emacs`:
```
(autoload 'gerbil-mode "gerbil-mode" "Gerbil editing mode." t)
```

You should further utilize Gambit's inferior mode, as it offers debugger integration with sources on emacs. By default it is installed in `$GERBIL_INSTALL_PREFIX/share/emacs/site-lisp/gambit.el` alongside `gerbil-mode.el`.


You can add it to your autoload path and then add this to your `.emacs`:
```
(require 'gambit)
(add-hook 'inferior-scheme-mode-hook 'gambit-inferior-mode)
```

You can then make `gxi` your scheme program by setting `scheme-program-name`:
```
(defvar gerbil-program-name
  (expand-file-name "/opt/gerbil/bin/gxi")) ; default installation, adjust for your GERBIL_INSTALL_PREFIX
(setq scheme-program-name gerbil-program-name)
```

And you can now run Gerbil with `M-x run-scheme`.

Note that both `gerbil-mode.el` and `gambit.el` are installed by
default in `$GERBIL_INSTAL_PREFIX/share/emacs/site-lisp` when installing gerbil.


## Treadmill: An Alternative

[Treadmill](https://github.com/thunknyc/emacs-treadmill) is a new package for writing and evaluating Gerbil code in Emacs. Treadmill emphasizes modularity and an ability to connect to any running Gerbil program through an instance of the standard Gerbil [network REPL](https://cons.io/reference/net.html#network-repl).

## TAGS

Gerbil comes with a tool to build emacs tags from Gerbil sources, called `gxtags`.

By default, the build script creates tags for the system in
`$GERBIL_SRCDIR/src/TAGS`. This tags table contains all exported symbols
for the Gerbil prelude, standard library, compiler and expander. They
allow you to easily browse Gerbil code, and also explore the system.

You can load the tags table with `M-x visit-tags-table` and selecting the tags file.
If you want it to be a permanent part of your editing experience, you can add
`$GERBIL_SRCDIR/src` to your tags table list by adding this to your .emacs:
```
(visit-tags-table "~/gerbil/src/TAGS")
```

The Gerbil package manager also generates a TAGS table for all installed packages;
by default this lives in `~/.gerbil/pkg/TAGS`. You can add this to your emacs tags
table list with
```
(visit-tags-table "~/.gerbil/pkg/TAGS")
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
M-x gerbil-reload-current-buffer
M-x gerbil-compile-current-buffer
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

## Use-Package Example Configuration

Example [use-package](https://github.com/jwiegley/use-package) definition to get you
hacking in no time. All you have to do is to set the environment variables `GERBIL_INSTALL_PREFX`
and `GERBIL_SRCDIR` and copy the code snippet below into your Emacs config.

``` elisp
(use-package gerbil-mode
  :when (getenv "GERBIL_INSTALL_PREFIX")
  :ensure nil
  :defer t
  :mode (("\\.ss\\'"  . gerbil-mode)
         ("\\.pkg\\'" . gerbil-mode))
  :bind (:map comint-mode-map
              (("C-S-n" . comint-next-input)
               ("C-S-p" . comint-previous-input)
               ("C-S-l" . clear-comint-buffer))
              :map gerbil-mode-map
              (("C-S-l" . clear-comint-buffer)))
  :init
  (setf gambit (getenv "GAMBIT_INSTALL_PREFIX"))
  (setf gerbil (getenv "GERBIL_INSTALL_PREFIX"))
  (setf gerbil-src (getenv "GERBIL_SRCDIR"))
  (autoload 'gerbil-mode
    (concat gerbil "/share/emacs/site-list/gerbil-mode.el") "Gerbil editing mode." t)
  :hook
  ((gerbil-mode . linum-mode)
   (inferior-scheme-mode-hook . gambit-inferior-mode))
  :config
  (require 'gambit
           (concat gambit "/share/emacs/site-lisp/gambit.el"))
  (setf scheme-program-name (concat gerbil "/bin/gxi"))

  (let ((tags (locate-dominating-file default-directory "TAGS")))
    (when tags (visit-tags-table tags)))
  (visit-tags-table (concat gerbil-src "/src/TAGS"))

  (when (package-installed-p 'smartparens)
    (sp-pair "'" nil :actions :rem)
    (sp-pair "`" nil :actions :rem))

  (defun clear-comint-buffer ()
    (interactive)
    (with-current-buffer "*scheme*"
      (let ((comint-buffer-maximum-size 0))
        (comint-truncate-buffer)))))

(defun gerbil-setup-buffers ()
  "Change current buffer mode to gerbil-mode and start a REPL"
  (interactive)
  (gerbil-mode)
  (split-window-right)
  (shrink-window-horizontally 2)
  (let ((buf (buffer-name)))
    (other-window 1)
    (run-scheme "gxi")
    (switch-to-buffer-other-window "*scheme*" nil)
    (switch-to-buffer buf)))

(global-set-key (kbd "C-c C-g") 'gerbil-setup-buffers)
```

To start open a Gerbil file or type `C-c C-g`. Alternatively run `M-x gerbil-mode` (to launch a REPL `run-scheme`).

`gerbil-mode` - functions worth mentioning:
```
C-x C-e  send sexp behind cursor to the REPL (scheme-send-last-sexp)
C-c C-c  send region to REPL                 (scheme-send-region)
C-c C-l  load file into REPL                 (scheme-load-file)
C-S-l    clear the comint buffer             (clear-comint-buffer)
```

`inferior-scheme-mode` - functions worth mentioning:
```
C-S-l    clear the comint buffer   (clear-comint-buffer)
C-c _    close extra pop-up buffer (gambit-kill-last-popup)
C-S-p    previous item in history  (comint-previous-input)
C-S-n    next item in history      (comint-next-input)
```

For more information read `C-h f gerbil-mode`.
