;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil module loader
prelude: "../core"
package: gerbil/runtime
namespace: #f

(export #t)
(import "gambit" "util" "hash")

;; the new loader
(def (load-path)
  (##get-module-search-order))

(def (add-load-path! . paths)
  (let* ((current (load-path))
         (paths (map path-expand paths))
         (paths (filter (lambda (x) (not (member x current))) paths)))
    (for-each module-search-order-add! (reverse paths))
    ;; TODO remove after recursive bootstrap
    (let (current (current-module-library-path))
      (current-module-library-path (append paths current)))))

(def (set-load-path! paths)
  (##set-module-search-order! paths)
  ;; TODO remove after recursive bootstrap
  (current-module-library-path paths))

(def (reset-load-path!)
  (set-load-path! []))

;; wrapper around ##load-module to set the context; ref to wip by @feeley
;; TODO rename to load-module after recursive bootstrap
(def (load-module modref)
  (if (string? modref)
    ;; backwards compat for bootstrap
    ;; TODO remove after recursive bootstrap
    (load-module/compat modref)
    ;; the new loader
    ;; TODO loader versioned context; wip by @feely
    (##load-module modref)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; TODO -- deprecated; the old loader.
;;         remove after recursive bootstrap
(def current-module-library-path
  (make-parameter #f))
(def current-module-registry
  (make-parameter #f))

;; hook for interactive reloading
(def __reload-module
  (make-parameter #f))

(def (load-module/compat modpath (reload? (__reload-module)))
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
