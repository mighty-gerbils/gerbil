;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler basic env
prelude: "../core"
package: gerbil/compiler
namespace: gxc

(import "../core/expander"
        "../expander")
(export #t)

(defsyntax (ast-case stx)
  (macro-expand-syntax-case stx 'stx-eq? 'stx-e 'quote))

(defsyntax (ast-rules stx)
  (syntax-case stx ()
    ((_ ids clause ...)
     (identifier-list? #'ids)
     (with-syntax (((clause ...)
                    (stx-map (lambda (clause)
                               (syntax-case clause ()
                                 ((hd body)
                                  #'(hd (syntax body)))
                                 ((hd fender body)
                                  #'(hd fender (syntax body)))))
                             #'(clause ...))))
       #'(lambda ($stx)
           (ast-case $stx ids clause ...))))))

(def current-compile-symbol-table
  (make-parameter #f))
(def current-compile-runtime-sections
  (make-parameter #f))
(def current-compile-runtime-names
  (make-parameter #f))
(def current-compile-output-dir
  (make-parameter #f))
(def current-compile-invoke-gsc
  (make-parameter #f))
(def current-compile-gsc-options
  (make-parameter #f))
(def current-compile-keep-scm
  (make-parameter #f))
(def current-compile-verbose
  (make-parameter
   (alet (verbosity (getenv "GERBIL_BUILD_VERBOSE" #f))
     (or (string->number verbosity)
         verbosity))))
(def current-compile-optimize
  (make-parameter #f))
(def current-compile-debug
  (make-parameter #f))
(def current-compile-generate-ssxi
  (make-parameter #f))
(def current-compile-static
  (make-parameter #f))
(def current-compile-timestamp
  (make-parameter #f))
(def current-compile-decls
  (make-parameter #f))
(def current-compile-context
  (make-parameter #f))

;; locally scoped identifiers
(def current-compile-local-env
  (make-parameter []))

(defstruct symbol-table (gensyms bindings)
  id: gxc#symbol-table::t
  constructor: :init!)

(defmethod {:init! symbol-table}
  (lambda (self)
    (struct-instance-init! self (make-hash-table-eq) (make-hash-table-eq))))

(def (raise-compile-error message stx . details)
  (let (ctx (or (current-compile-context) 'compile))
    (apply raise-syntax-error ctx message stx details)))

(def (verbose . args)
  (when (current-compile-verbose)
    (with-verbose-mutex (apply displayln args))))

(def +verbose-mutex+ (make-mutex 'compiler/driver))
(defrules with-verbose-mutex ()
  ((_ expr)
   (with-lock +verbose-mutex+ (lambda () expr))))


;; these characters are restricted to avoid confusing shells and other tools
(def module-path-reserved-chars
  ":#<>&!?*;()[]{}|'`\"\\")

(def (module-id->path-string id)
  (let* ((str (if (symbol? id) (symbol->string id) id))
         (len (string-length str))
         (res (make-string len)))
    (let lp ((i 0))
      (if (fx< i len)
        (let* ((char (string-ref str i))
               (xchar (if (string-index module-path-reserved-chars char)
                        #\_ char)))
          (string-set! res i xchar)
          (lp (fx1+ i)))
        res))))

(def (map* proc maybe-improper-list)
  (let recur ((rest maybe-improper-list))
    (match rest
      ([hd . rest]
       (cons (proc hd)
             (recur rest)))
      ([] [])
      (tail (proc tail)))))

(def (symbol-in-local-scope? sym)
  (or ;; either not a gensym refernce (in which case it is global)
    (not (gensym-reference? sym))
    ;; or it should be in the local env
    (memq sym (current-compile-local-env))))

(def (gensym-reference? sym)
  (let (str (symbol->string sym))
    (and (string-prefix? "_%" str)
         (string-suffix? "%_" str))))

(def (generate-runtime-binding-id id)
  (cond
   ((and (syntax-quote? id) (resolve-identifier id))
    => (lambda (bind)
         (let ((eid (binding-id bind))
               (ht (symbol-table-bindings (current-compile-symbol-table))))
           (cond
            ((interned-symbol? eid) eid)
            ((hash-get ht eid))
            ((local-binding? bind)
             (let (gid (generate-runtime-gensym-reference eid))
               (hash-put! ht eid gid)
               gid))
            ((module-binding? bind)
             (let (gid
                   (cond
                    ((module-context-ns (module-binding-context bind))
                     => (lambda (ns) (make-symbol ns "#" eid)))
                    (else (generate-runtime-gensym-reference eid))))
               (hash-put! ht eid gid)
               gid))
            (else
             ;; module bindings have been mapped in collect-bindings.
             (raise-compile-error "Cannot compile reference to uninterned binding"
                                  id eid bind))))))
   ((interned-symbol? (stx-e id))
    ;; implicit extern or optimizer introduced symbol
    (stx-e id))
   (else
    ;; gensymed reference, where did you get this one?
    (raise-compile-error "Cannot compile reference to uninterned identifier"
                         id))))

(def (generate-runtime-binding-id* id)
  (if (identifier? id)
    (generate-runtime-binding-id id)
    (generate-runtime-temporary)))

(def (generate-runtime-temporary (top #f))
  (if top
    (let ((ns (module-context-ns (core-context-top (current-expander-context))))
          (phi (current-expander-phi)))
      (if ns
        (if (fxpositive? phi)
          (make-symbol ns "[" (number->string phi) "]#_" (gensym) "_")
          (make-symbol ns "#_" (gensym) "_"))
        (if (fxpositive? phi)
          (make-symbol "[" (number->string phi) "]#_" (gensym) "_")
          (make-symbol "_" (gensym) "_"))))
    (make-symbol "_" (gensym) "_")))

(def (generate-runtime-gensym-reference sym (quote? #f))
  (let (ht (symbol-table-gensyms (current-compile-symbol-table)))
    (cond
     ((hash-get ht sym))
     (else
      (let (g (if quote?
                (make-symbol "__" sym "__" (current-compile-timestamp))
                (make-symbol "_%" sym "%_")))
        (hash-put! ht sym g)
        g)))))

(def (runtime-identifier=? id1 id2)
  (def (symbol-e id)
    (if (symbol? id) id
        (generate-runtime-binding-id id)))
  (eq? (symbol-e id1) (symbol-e id2)))

(def (identifier-symbol stx)
  (if (syntax-quote? stx)
    (generate-runtime-binding-id stx)
    (stx-e stx)))