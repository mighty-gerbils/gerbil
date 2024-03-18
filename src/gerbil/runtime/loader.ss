;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil module loader
prelude: "../core"
package: gerbil/runtime
namespace: #f

(export #t)
(import "gambit" "util" "hash")

(def __modules (make-hash-table))
(def __load-path [])

(def (load-path)
  __load-path)

(def (add-load-path! . paths)
  (for-each (lambda (p) (set! __load-path (cons p __load-path)))
            (reverse! paths)))

(def (set-load-path! paths)
  (set! __load-path paths))

(def (load-module modpath)
  (cond
   ((hash-get __modules modpath))
   ((find-library-module modpath)
    => (lambda (path)
         (let (loaded-path (load path))
           (hash-put! __modules modpath loaded-path)
           loaded-path)))
   (else
    (error "module not found" modpath))))

(def (reload-module! modpath)
  (cond
   ((hash-get __modules modpath)
    => (lambda (current-path)
         (if (eq? current-path 'builtin)
           (let (latest-path (find-library-module modpath))
             (when (or (equal? (path-extension current-path) ".scm")
                       (not (equal? current-path latest-path)))
               (let (loaded-path (load modpath))
                 (hash-put! __modules modpath loaded-path)
                 loaded-path)))
           (error "cannot reload builtin module" modpath))))
   (else
    (load-module modpath))))

(def (find-library-module modpath)
  (def (find-compiled-file npath)
    (let (basepath (##string-append npath ".o"))
      (let lp ((current #f) (n 1))
        (let (next (##string-append basepath (number->string n)))
          (if (##file-exists? next)
            (lp next (##fx+ n 1))
            current)))))

  (def (find-source-file npath)
    (let ((spath (##string-append npath ".scm")))
      (and (##file-exists? spath) spath)))

  (let lp ((rest (load-path)))
    (match rest
      ([dir . rest]
       (let ((npath (path-expand modpath (path-expand dir))))
         (cond
          ((find-compiled-file npath) => path-normalize)
          ((find-source-file npath) => path-normalize)
          (else (lp rest)))))
      (else #f))))
