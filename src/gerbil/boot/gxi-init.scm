;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Gerbil interpreter init

(let* ((home (getenv "GERBIL_HOME"))
       (libdir (path-expand "lib" home)))
  (load (path-expand "gx-init.scm" libdir))
  (_gx#init)
  (_gx#load-gxi)
  ;; hook ##begin -- gambit wraps it around -e and scripts
  (gx#eval-syntax '(define-alias ##begin begin))
  ;; hook gambit's ##wr to use gerbil objects' :wr method
  (##wr-set! _gx#wr)
  ;; hook gxi-script line to run as script
  (set! ##language-specs
    (append ##language-specs
            '(#("gxi" #f #t scm #f)
              #("gxi-script" #f #t scm #f)))))
