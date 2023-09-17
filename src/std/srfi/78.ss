;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-78: Lightweight testing

(import :std/error
        :std/srfi/42)
(export check check-ec
        check-report
        check-set-mode!
        check-reset!
        check-passed?)

(include "srfi-78.scm")
