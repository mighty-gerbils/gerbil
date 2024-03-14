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
    (for-each module-search-order-add! (reverse paths))))

(def (set-load-path! paths)
  (##set-module-search-order! paths))

(def (reset-load-path!)
  (set-load-path! []))

;; wrapper around ##load-module to intercept builtin modules and set the context;
;; ref to wip by @feeley
;; TODO remove old bootstrap deps after recursive bootstrap
(def (load-module modref)
  (if (string? modref)
    ;; backwards compat for bootstrap
    ;; TODO remove after recursive bootstrap
    (load-module/compat modref)
    ;; don't clobber thyself during bootstrap in the transition
    ;; TODO remove after bootstrap
    (let (modstr (symbol->string modref))
      (if (or (hash-get (current-module-registry) (string-append modstr "__rt"))
              (hash-get (current-module-registry) (string-append modstr "__0")))
        (begin
          (displayln `(ignore ,modref))
          (void))
        ;; the new loader
        (unless (hash-get __modules modref)
          (displayln `(load ,modref))
          ;; and finally the new loader
          ;; TODO loader versioned context; wip by @feeley
          ;; this broken with compiled modules:
          ;; (##load-module modref)
          ;; so use this until it is fixed
          (__load-module modref)
          ;; and track it, gambit's module registry is a list!!!!
          (hash-put! __modules modref 'loaded))))))

(def (__load-module modref)
  (let* ((modstr (symbol->string modref))
         (mod.o1 (string-append modstr ".o1")))
    (let loop ((paths (load-path)))
      (match paths
        ([path . rest]
         (if (file-exists? (path-expand mod.o1 path))
           (load (path-expand modstr path))
           (loop rest)))
        (else
         (error "module not found" modref))))))

(def __modules
  (make-hash-table-eq))

(def (register-builtin-modules! builtin-modules)
  (for-each (cut hash-put! __modules <> 'builtin) builtin-modules))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; TODO -- deprecated; the old loader.
;;         remove after recursive bootstrap
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

  (let lp ((rest (load-path)))
    (match rest
      ([dir . rest]
       (let ((npath (path-expand modpath (path-expand dir))))
         (cond
          ((find-compiled-file npath) => path-normalize)
          ((find-source-file npath) => path-normalize)
          (else (lp rest)))))
      (else #f))))
