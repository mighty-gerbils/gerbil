(import :std/interactive :std/swank/message)
(export #t (import: :std/interactive))

(def (apropos thing (out (##current-output-port)))
  (##apropos thing out))
