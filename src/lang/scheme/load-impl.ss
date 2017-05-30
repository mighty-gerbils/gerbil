;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme load) library -- implementation details
package: scheme

(import :scheme/stubs
        :scheme/repl-impl
        :gerbil/expander)
(export #t)

(def (r7rs-load path)
  ;; bypass the load hook (used for loading raw Gambit source)
  (parameterize ((current-expander-context (r7rs-interaction-environment)))
    (##load path (lambda args #f) #t #t #f)))

