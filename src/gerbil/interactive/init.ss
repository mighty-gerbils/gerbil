;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Gerbil interactive environment initialization

;; Pleasantly greet user
(displayln gerbil-greeting)

;; Interactive development utilities
(import :std/interactive)

;; hook the repl path normalization -- it breaks buffer location popping
;; in gerbil mode for out of tree sources
(when (getenv "EMACS" #f)
  (set! ##repl-path-normalize-hook values))
