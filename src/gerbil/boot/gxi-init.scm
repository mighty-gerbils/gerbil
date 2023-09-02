;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Gerbil interpreter init

(define __gx#default-gerbil-home #f)

(let* ((home (getenv "GERBIL_HOME" __gx#default-gerbil-home))
       (libdir (path-expand "lib" home)))
  (load (path-expand "gx-init.scm" libdir))
  (_gx#init)
  (set! ##display-exception-hook _gx#display-exception)
  (_gx#load-gxi)
  ;; hook ##begin -- gambit wraps it around -e and scripts
  (gx#eval-syntax '(define-alias ##begin begin))
  ;; hook gxi-script line to run as script
  (set! ##language-specs
    (append ##language-specs
            '(#("gxi" #f #t scm #f)
              #("gxi-script" #f #t scm #f)))))
