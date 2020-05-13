;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Gerbil-gambc runtime init
(##namespace (""))

(define __gx#default-gerbil-home #f)
(define _gx#gerbil-libdir #f)

(define _gx#*rtlibs*
  '("gx-gambc0"
    "gx-gambc1"
    "gx-gambc2"))

(define (_gx#init)
  (let* ((home
          (path-normalize
           (cond
            ((getenv "GERBIL_HOME" __gx#default-gerbil-home) => values)
            (else
             (error "Cannot determine GERBIL_HOME")))))
         (libdir
          (path-expand "lib" home)))
    (set! _gx#gerbil-libdir libdir)
    (_gx#load-rt)
    (let* ((loadpath
            (cond
             ((getenv "GERBIL_LOADPATH" #f)
              => (lambda (ev)
                   (filter (lambda (path) (not (string-empty? path)))
                           (string-split ev #\:))))
             (else '())))
           (userpath
            (path-expand "lib" (getenv "GERBIL_PATH" "~/.gerbil")))
           (loadpath
            (if (file-exists? userpath)
              (cons (path-normalize userpath) loadpath) ; exists, pin it
              (cons userpath loadpath)))) ; maybe later (interactive gxi)
      (&current-module-libpath (cons libdir loadpath)))
    (&current-module-registry (make-hash-table))
    (current-readtable _gx#*readtable*)
    (_gx#load-gx)))

(define (_gx#load-rt)
  (for-each
    (lambda (rt) (load (path-expand rt _gx#gerbil-libdir)))
    _gx#*rtlibs*))

(define (_gx#load-gx)
  (load-module "gerbil/expander__rt")
  (load (path-expand "gx-gambc" _gx#gerbil-libdir)))

;; exec module stub compatibility
(define (_gx#load-expander!)
  #!void)
