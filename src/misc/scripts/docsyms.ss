#!/usr/bin/env gxi
;;; -*- Gerbil -*-
;;; Given a module, list the exported symbols

(import :gerbil/expander
        :std/iter)

(def (main mod)
  (let* ((seen (make-hash-table-eq))
         (ctx (import-module (string->symbol mod)))
         (exports (module-context-export ctx)))
    (for (x (reverse exports))
      (let (name (module-export-name x))
        (unless (hash-key? seen name)
          (hash-put! seen name #t)
          (displayln name))))))
