;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Custom prelude that rebinds %%begin-module
(import :gerbil/core) ;; so that we can re-export
(export (import: :gerbil/core)
        (rename: my-%%begin-module %%begin-module))

;; custom %%begin-module that automatically exports all module bindings
(defrules my-%%begin-module ()
  ((_ . body)
   (%%begin-module (export #t) . body)))
