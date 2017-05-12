;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler basic env
package: gerbil/compiler
namespace: gxc

(import :gerbil/expander
        <syntax-case>)

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
(def current-compile-generate-ssxi
  (make-parameter #f))

(defstruct symbol-table (gensyms bindings)
  id: gxc#symbol-table::t
  constructor: :init!)

(defmethod {:init! symbol-table}
  (lambda (self)
    (direct-struct-instance-init! 
     self (make-hash-table-eq) (make-hash-table-eq))))

(def (raise-compile-error message stx . details)
  (apply raise-syntax-error 'compile message stx details))

(def (verbose . args)
  (when (current-compile-verbose)
    (apply displayln args)))

