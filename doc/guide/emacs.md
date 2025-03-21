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

## SLIME Integration

There's a `SLIME: The Superior Lisp Interaction Mode for Emacs` server that provides a near IDE experience for gerbil inside emacs.

This is very useful for connecting emacs to a gerbil instance and controlling it that way. 

Until there's more detail in this documentation have a look at the README in the ide/swank directory of the [Gerbil Source Tree](https://github.com/mighty-gerbils/gerbil/tree/master/src/std). 




## Doom Emacs Setup

Gerbil is easy to setup in [Doom Emacs](https://github.com/doomemacs/doomemacs). Open Doom Emacs.
Ensure you are at the Doom Emacs splash creeen.
Type `SPC f P` and choose `packages.el`. This will open the Doom Emacs package configuration file.

To add Gambit and Gerbil modes, go to the bottom of `package.el` and add the following:

```
(package! gambit :recipe
  (:host github
   :repo "gambit/gambit"
   :files ("misc/gambit.el")
   :branch "master"))

(package! gerbil-mode :recipe
  (:host github
   :repo "mighty-gerbils/gerbil"
   :files ("etc/gerbil-mode.el")
   :branch "master"))
```

Save the file with `:w` and close the buffer with `SPC b d`.
You should arrive back at the Doom Emacs splash screen.

In order to fetch and install these packaged you must first exit doom emacs using `SPC q K` and then run `doom sync`.

Let's create a convenient key sequence that opens a Gerbil REPL in a nice window layout.
Type `SPC f P` again and choose `config.el`.
This opens the private configuration file for your Doom Emacs installation.
Go to the bottom of `config.el` and add the following:

```
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

Save the file with `:w` and close the buffer with `SPC b d`.
You should arrive back at the Doom Emacs splash screen.

Let's set up some built-in Doom Emacs initializations that can make our life easier.
Emacs is a parentheses generating machine. Let's make some changes for Gerbil programming in evil mode.
Type `SPC f P` and select `init.el`.
To load a built-in Doom Emacs package, just uncomment it. For Gerbil programming, we recommend:
- `scheme`
- `(default +bindings +smartparens)`

After you enable the built-in packages you want by uncommenting, save the `init.el` with `:w` and close the buffer with `SPC b d`.
You should be back at the Doom Emacs spash screen.

In evil mode, you can get key conflicts with the paranthesis handling in `lisp` and `scheme` modes. Let's fix that.
Type `SPC f P` and select `packages.el` again. Add the following at the end of the file:

```
(package! evil-cleverparens)
```

`evil-cleverparens` removes the key conflicts in evil mode. It uses functions in the `smartparens` package, which is why we previously enabled it in `init.el`.

That's it. You should be ready to plot and scheme with an apocalyptic Doom Emacs. Your Gerbil programs will be pleased.

## TAGS

Gerbil comes with a tool to build emacs tags from Gerbil sources, called `gxtags`.

By default, the install script installs all the sources in
`GERBIL_INSTALL_PREFIX/src`; so it is matter of running the tool to create a
TAGS index for your Gerbil installation.  You can do this by running
`gxtags ${GERBIL_INSTALL_PREFIX}/src`.  This tags table contains all exported
symbols for the entire Gerbil distribution and thus allows you to easily
browse and auto-complete Gerbil code and explore the system.

You can load the tags table with `M-x visit-tags-table` and selecting the tags file.
If you want it to be a permanent part of your editing experience, you can add
`path/to/TAGSS` to your tags table list by adding this to your .emacs:
```
(visit-tags-table "path/to/TAGS")
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
gxtags [-a] [-t emacs|vim] [-o TAGS] source-file-or-directory ...
```

Note that the tool can also create a TAGS index in `vim` format, by
using the `-t vim` option or setting the `GERBIL_TAGS_FORMAT=vim`
environment variable.

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

## Use-Package Example Configuration

Example [use-package](https://github.com/jwiegley/use-package)
definition to get you hacking in no time. All you have to do is to
have`gxi`in your path and copy the code snippet below into your Emacs
config.

``` elisp
(progn
  
  (defvar *gerbil-path*
    (shell-command-to-string "gxi -e '(display (path-expand \"~~\"))'\
      -e '(flush-output-port)'"))

  (use-package gerbil-mode
    :when (file-directory-p *gerbil-path*)
    :ensure nil
    :straight nil
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
    (autoload 'gerbil-mode
      (expand-file-name "share/emacs/site-lisp/gerbil-mode.el" *gerbil-path*)
      "Gerbil editing mode." t)
    :hook
    ((gerbil-mode-hook . linum-mode)
     (inferior-scheme-mode-hook . gambit-inferior-mode))
    :config
    (require 'gambit
             (expand-file-name "share/emacs/site-lisp/gambit.el" *gerbil-path*))
    (setf scheme-program-name (expand-file-name "bin/gxi" *gerbil-path*))

    (let ((tags (locate-dominating-file default-directory "TAGS")))
      (when tags (visit-tags-table tags)))
    (let ((tags (expand-file-name "src/TAGS" *gerbil-path*)))
      (when (file-exists-p tags) (visit-tags-table tags)))

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

  (global-set-key (kbd "C-c C-g") 'gerbil-setup-buffers))
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
