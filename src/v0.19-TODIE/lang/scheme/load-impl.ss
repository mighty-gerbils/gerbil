;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme load) library -- implementation details
(import ./repl-impl
        :gerbil/expander)
(export #t)

(def (r7rs-load path (env (r7rs-interaction-environment)))
  ;; bypass the load hook (used for loading raw Gambit source)
  (parameterize ((current-expander-context env))
    (##load path (lambda args #f) #t #t #f)))
