;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme lazy) library -- implementation details
package: scheme

(import :scheme/stubs)
(export #t)

;; R7RS spec:
;; "Semantics: The expression (delay-force expression) is
;;  conceptually similar to (delay (force expression)), with
;;  the difference that forcing the result of delay-force will
;;  in effect result in a tail call to (force expression), while
;;  forcing the result of (delay (force expression)) might
;;  not. Thus iterative lazy algorithms that might result in a
;;  long series of chains of delay and force can be rewritten
;;  using delay-force to prevent consuming unbounded space
;;  during evaluation."
;;
;; this simply cannot be implemented without Gambit kernel support
;; as we need a promise-force construct to force tail recursively
(defsyntax-stub delay-force)
