;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Gerbil executable module stub
(##namespace (""))
(declare 
  (block)
  (standard-bindings)
  (extended-bindings))

(define __gx#libdir #f)
(define __gx#load-mdoule #f)
(define __gx#expander-loaded #f)
(define __gx#rtlibs
  '("gx-gambc0"
    "gx-gambc1"
    "gx-gambc2"))

(define (_gx#load-runtime!)
  (let* ((home
          (path-expand
           (path-normalize
            (cond
             ((getenv "GERBIL_HOME" #f) => values)
             (else 
              (error "Cannot determine GERBIL_HOME"))))))
         (libdir
          (path-expand "lib" home)))

    (for-each (lambda (mod) (load (path-expand mod libdir)))
              __gx#rtlibs)
    (set! __gx#libdir libdir)
    (set! __gx#load-module (eval 'load-module))))

(define (_gx#load-expander-runtime!)
  (__gx#load-module "gerbil/expander__rt")
  (load (path-expand "gx-gambc" (_gx#gerbil-libdir))))

(define (_gx#load-expander!)
  (if (not __gx#expander-loaded)
    (begin
      (_gx#load-expander-runtime!)
      (set! __gx#expander-loaded #t)
      ((eval '_gx#load-gxi)))))

(define (_gx#init!)
  (_gx#load-runtime!)
  (let* ((string-empty? (eval 'string-empty?))
         (string-split  (eval 'string-split))
         (filter        (eval 'filter))
         (loadpath
          (cond
           ((getenv "GERBIL_LOADPATH" #f) 
            => (lambda (ev) 
                 (filter (lambda (path) (not (string-empty? path)))
                         (string-split ev #\:))))
           (else '()))))
    ((eval '&current-module-libpath) (cons __gx#libdir loadpath))
    ((eval '&current-module-registry) (make-hash-table))
    (current-readtable (eval '_gx#*readtable*))))

(define (_gx#start! module-rt main-id)
  (_gx#init!)
  (__gx#load-module module-rt)
  (apply (eval main-id) (cdr (command-line))))
