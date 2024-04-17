;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler optimization passes
prelude: "../core"
package: gerbil/compiler
namespace: gxc

(import "../core/expander"
        "../expander"
        "base"
        "method"
        "compile"
        "optimize-base")
(export #t)

;; method to collect mutations
(defcompile-method (apply-collect-mutators) (::collect-mutators ::void) ()
  final:
  (%#begin                   apply-begin%)
  (%#begin-syntax            apply-begin-syntax%)
  (%#begin-annotation        apply-begin-annotation%)
  (%#module                  apply-module%)
  (%#define-values           apply-define-values%)
  (%#define-syntax           apply-define-syntax%)
  (%#lambda                       apply-body-lambda%)
  (%#case-lambda                  apply-body-case-lambda%)
  (%#let-values              apply-body-let-values%)
  (%#letrec-values           apply-body-let-values%)
  (%#letrec*-values          apply-body-let-values%)
  (%#call                    apply-operands)
  (%#call-unchecked          apply-operands)
  (%#if                      apply-operands)
  (%#set!                    collect-mutators-setq%)
  (%#struct-instance?        apply-operands)
  (%#struct-direct-instance? apply-operands)
  (%#struct-ref              apply-operands)
  (%#struct-set!             apply-operands)
  (%#struct-direct-ref       apply-operands)
  (%#struct-direct-set!      apply-operands)
  (%#struct-unchecked-ref    apply-operands)
  (%#struct-unchecked-set!   apply-operands))

;; method to substitute an identifier for another one
(defcompile-method (apply-expression-subst id: id new-id: new-id)
  (::expression-subst ::basic-xform-expression)
  (id new-id)
  final:
  (%#begin xform-begin%)
  (%#ref   expression-subst-ref%)
  (%#set!  expression-subst-setq%))

;; method to substitute multiple identifiers
(defcompile-method (apply-expression-subst* subst: subst)
  (::expression-subst* ::basic-xform-expression)
  (subst)
  final:
  (%#begin xform-begin%)
  (%#ref   expression-subst*-ref%)
  (%#set!  expression-subst*-setq%))

;; method to find expressions
(defcompile-method #f (::find-expression ::false-expression) ()
  (%#begin                   find-body%)
  (%#begin-annotation        apply-begin-annotation%)
  (%#lambda                       apply-body-lambda%)
  (%#case-lambda                  apply-body-case-lambda%)
  (%#let-values              find-let-values%)
  (%#letrec-values           find-let-values%)
  (%#letrec*-values          find-let-values%)
  (%#call                    find-body%)
  (%#call-unchecked          find-body%)
  (%#if                      find-body%)
  (%#set!                    apply-body-setq%)
  (%#struct-instance?        find-body%)
  (%#struct-direct-instance? find-body%)
  (%#struct-ref              find-body%)
  (%#struct-set!             find-body%)
  (%#struct-direct-ref       find-body%)
  (%#struct-direct-set!      find-body%)
  (%#struct-unchecked-ref    find-body%)
  (%#struct-unchecked-set!   find-body%))

;; method to find references for certain ids
(defcompile-method (apply-find-var-refs ids: ids)
  (::find-var-refs ::find-expression)
  (ids)
  final:
  (%#ref  find-var-refs-ref%)
  (%#set! find-var-refs-setq%))

;; method to collect runtime references
(defcompile-method (apply-collect-runtime-refs table: table)
  (::collect-runtime-refs ::collect-expression-refs)
  ()
  final:
  (%#ref  collect-runtime-refs-ref%)
  (%#set! collect-runtime-refs-setq%))

;;; apply-collect-mutators
(def (collect-mutators-setq% self stx)
  (ast-case stx ()
    ((_ id expr)
     (let (sym (identifier-symbol #'id))
       (verbose "collect mutator " sym)
       (hash-put! (current-compile-mutators) sym #t) ; just set for now
       (compile-e self #'expr)))))

;;; apply-subst-refs
(def (expression-subst-ref% self stx)
  (ast-case stx ()
    ((_ xid)
     (if (free-identifier=? #'xid (@ self id))
       (xform-wrap-source
        ['%#ref (@ self new-id)]
        stx)
       stx))))

(def (expression-subst*-ref% self stx)
  (ast-case stx ()
    ((_ xid)
     (cond
      ((find (lambda (sub) (free-identifier=? #'xid (car sub)))
             (@ self subst))
       => (lambda (sub)
            (xform-wrap-source
             ['%#ref (cdr sub)]
             stx)))
      (else stx)))))

(def (expression-subst-setq% self stx)
  (ast-case stx ()
    ((_ xid expr)
     (let ((new-expr (compile-e self #'expr))
           (new-xid
            (if (free-identifier=? #'xid (@ self id))
              (@ self new-id)
              #'xid)))
       (xform-wrap-source
        ['%#set! new-xid new-expr]
        stx)))))

(def (expression-subst*-setq% self stx)
  (ast-case stx ()
    ((_ xid expr)
     (let ((new-expr (compile-e self #'expr))
           (new-xid
            (cond
             ((find (lambda (sub) (free-identifier=? #'xid (car sub)))
                    (@ self subst))
              => cdr)
             (else #'xid))))
       (xform-wrap-source
        ['%#set! new-xid new-expr]
        stx)))))

;;; apply-collect-runtime-refs
(def (collect-runtime-refs-ref% self stx)
  (ast-case stx ()
    ((_ id)
     (let (eid (identifier-symbol #'id))
       (hash-update! (@ self table) eid 1+ 0)))))

(def (collect-runtime-refs-setq% self stx)
  (ast-case stx ()
    ((_ id expr)
     (let (eid (identifier-symbol #'id))
       (hash-update! (@ self table) eid 1+ 0)
       (compile-e self #'expr)))))

;;; ::find-expression
(def (find-body% self stx)
  (ast-case stx ()
    ((_ expr ...)
     (ormap (cut compile-e self <>) #'(expr ...)))))

(def (find-let-values% self stx)
  (ast-case stx ()
    ((_ ((bind expr) ...) body)
     (or (ormap (cut compile-e self <>) #'(expr ...))
         (compile-e self #'body)))))

;;; apply-find-var-refs
(def (find-var-refs-ref% self stx)
  (ast-case stx ()
    ((_ id)
     (find (cut free-identifier=? #'id <>) (@ self ids)))))

(def (find-var-refs-setq% self stx)
  (ast-case stx ()
    ((_ id expr)
     (or (find (cut free-identifier=? #'id <>) (@ self ids))
         (compile-e self #'expr)))))
