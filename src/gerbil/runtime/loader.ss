;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil module loader
prelude: :gerbil/core
package: gerbil/runtime
namespace: #f

(export #t)
(import "gambit" "util")

(def current-module-library-path
  (make-parameter #f))
(def current-module-registry
  (make-parameter #f))

;; hook for interactive reloading
(def __reload-module
  (make-parameter #f))

(def (load-module modpath (reload? (__reload-module)))
  (cond
   ((and (not reload?) (hash-get (current-module-registry) modpath)))
   ((find-library-module modpath)
    => (lambda (path)
         (let (lpath (load path))
           (hash-put! (current-module-registry) modpath lpath)
           lpath)))
   (else
    (error "module not found" modpath))))

(def (find-library-module modpath)
  (def (find-compiled-file npath)
    (let (basepath (##string-append npath ".o"))
      (let lp ((current #f) (n 1))
        (let (next (##string-append basepath (number->string n)))
          (if (##file-exists? next)
            (lp next (##fx+ n 1))
            current)))))

  (def (find-source-file npath)
    (let ((spath (string-append npath ".scm")))
      (and (##file-exists? spath) spath)))

  (let lp ((rest (current-module-library-path)))
    (match rest
      ([dir . rest]
       (let ((npath (path-expand modpath (path-expand dir))))
         (cond
          ((find-compiled-file npath) => path-normalize)
          ((find-source-file npath) => path-normalize)
          (else (lp rest)))))
      (else #f))))
