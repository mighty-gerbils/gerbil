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
  (make-parameter #f))
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
