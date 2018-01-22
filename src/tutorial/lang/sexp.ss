;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Custom #lang prelude for an sexp language identical to gerbil
(import :gerbil/core) ;; so that we can re-export
(export (import: :gerbil/core)
        (phi: +1 read-module-body))

(begin-syntax
  (def (read-module-body port)
    (let lp ((body []))
      (let (next (read-syntax port))
        (if (eof-object? next)
          (reverse body)
          (lp (cons next body)))))))
