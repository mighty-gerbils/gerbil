;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Gerbil-gambc runtime init
(##namespace (""))

(define _gx#gerbil-home
  (make-parameter #f))
(define _gx#gerbil-libdir
  (make-parameter #f))
(define _gx#gerbil-loadpath
  (make-parameter #f))

(define _gx#*rtlibs*
  '("gx-gambc0"
    "gx-gambc1"
    "gx-gambc2"))

(define (_gx#init #!key (load-rt #t) (load-gx #t) (in-place #f))
  (let* ((home
          (path-expand
           (path-normalize
            (cond
             (in-place "../..")
             ((getenv "GERBIL_HOME" #f) => values)
             (else 
              (error "Cannot determine GERBIL_HOME"))))))
         (libdir
          (path-expand "lib" home)))
    (_gx#gerbil-home home)
    (_gx#gerbil-libdir libdir)
    (if load-rt
      (_gx#load-rt))
    (let* ((loadpath 
            (cond
             ((getenv "GERBIL_LOADPATH" #f) 
              => (lambda (ev) 
                   (filter (lambda (path) (not (string-empty? path)))
                           (string-split ev #\:))))
             (else '())))
           (loadpath
            (if (file-exists? "~/.gerbil/lib")
              (cons (path-normalize "~/.gerbil/lib") loadpath)
              (cons "~/.gerbil/lib" loadpath)))) ; maybe later (interactive gxi)
      (&current-module-libpath (cons libdir loadpath))
      (_gx#gerbil-loadpath loadpath))
    (&current-module-registry (make-hash-table))
    (current-readtable _gx#*readtable*)
    (if load-gx
      (_gx#load-gx))))

(define (_gx#load-rt)
  (for-each 
    (lambda (rt) (load (path-expand rt (_gx#gerbil-libdir))))
    _gx#*rtlibs*))

(define (_gx#load-gx)
  (load-module "gerbil/expander__rt")
  (load (path-expand "gx-gambc" (_gx#gerbil-libdir))))

;; exec module stub compatibility
(define (_gx#load-expander!)
  #!void)
