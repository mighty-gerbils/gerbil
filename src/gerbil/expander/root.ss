;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil.expander root-context
prelude: :<core>
package: gerbil/expander
namespace: gx

(export #t)
(import "common" "core" "top" "module" "compile")
(declare (not safe))

;;; expanded core-syntax
;; top-form:
;;  <top-special>
;;  <expr>
;;
;; top-special:
;;  (%#begin <top-form> ...)
;;  (%#begin-syntax <syntax-top-form> ...)
;;  (%#module <module-head> <module-top-form> ... )
;;  (%#import <import-form> ...)
;;  (%#extern <extern-form> ...)
;;  (%#declare <declaration> ...)
;;  <defn>
;;
;; syntax-top-form:
;;  (%#begin-syntax <syntax-top-form> ...)
;;  <defn>
;;  <expr>
;;
;; module-top-form:
;;  <top-form>
;;  (%#export <export-form> ...)
;;  (%#provide feature ...)
;;
;; defn:
;;  (%#define-values <binding-head> <expr>)
;;  (%#define-syntax identifier? <expr>)
;;  (%#define-alias identifier? identifier?)
;;
;; expr:
;;  (%#quote any)
;;  (%#quote-syntax <form>)
;;  (%#lambda <lambda-head> <expr>)
;;  (%#case-lambda (<lambda-head> <expr) ...)
;;  (%#let-values (<let-binding> ...) <expr>)
;;  (%#letrec-values (<let-binding> ...) <expr>)
;;  (%#letrec*-values (<let-binding> ...) <expr>)
;;  (%#ref <identifier>)
;;  (%#call <expr> <expr> ...)
;;  (%#if <expr> <expr> <expr>)
;;  (%#set! <identifier> <expr>)
;;  (%#begin <expr> +...)
;;  (%#begin-annotation <annotation> <expr>)
;;
;; Transient [block] special forms
;;  (%#cond-expand clause ...)
;;  (%#include path)
;; Transient expression forms:
;;  (%#let-syntax hd body ...)
;;  (%#letrec-syntax hd body ...)
;;

(def *core-syntax-expanders*
  `((%#begin            top:     ,core-expand-begin%
                        ,core-compile-top-begin%)
    (%#begin-syntax     top:     ,core-expand-begin-syntax%
                        ,core-compile-top-begin-syntax%)
    (%#begin-foreign    top:     ,core-expand-begin-foreign%
                        ,core-compile-top-begin-foreign%)
    (%#begin-module     top:     ,core-expand-begin-module%
                        #f)
    (%#extern           top:     ,core-expand-extern%
                        ,core-compile-top-extern%)
    (%#import           top:     ,core-expand-import%
                        ,core-compile-top-import%)
    (%#module           top:     ,core-expand-module%
                        ,core-compile-top-module%)
    (%#export           top:  ,core-expand-export%
                        ,core-compile-top-export%)
    (%#provide          module:  ,core-expand-provide%
                        ,core-compile-top-provide%)
    (%#declare          module:   ,core-expand-declare%
                        ,core-compile-top-declare%)
    (%#cond-expand      special: ,core-expand-cond-expand%
                        #f)
    (%#include          special: ,core-expand-include%
                        #f)
    (%#define-values    define:  ,core-expand-define-values%
                        ,core-compile-top-define-values%)
    (%#define-syntax    define:  ,core-expand-define-syntax%
                        ,core-compile-top-define-syntax%)
    (%#define-alias     define:  ,core-expand-define-alias%
                        ,core-compile-top-define-alias%)
    (%#define-runtime   define:  ,core-expand-define-runtime%
                        ,core-compile-top-define-runtime%)
    (%#begin-annotation expr:    ,core-expand-begin-annotation%
                        ,core-compile-top-begin-annotation%)
    (%#lambda                expr:    ,core-expand-lambda%
                        ,core-compile-top-lambda%)
    (%#case-lambda           expr:    ,core-expand-case-lambda%
                        ,core-compile-top-case-lambda%)
    (%#let-values       expr:    ,core-expand-let-values%
                        ,core-compile-top-let-values%)
    (%#letrec-values    expr:    ,core-expand-letrec-values%
                        ,core-compile-top-letrec-values%)
    (%#letrec*-values   expr:    ,core-expand-letrec*-values%
                        ,core-compile-top-letrec*-values%)
    (%#let-syntax       expr:    ,core-expand-let-syntax%
                        #f)
    (%#letrec-syntax    expr:    ,core-expand-letrec-syntax%
                        #f)
    (%#quote            expr:    ,core-expand-quote%
                        ,core-compile-top-quote%)
    (%#quote-syntax     expr:    ,core-expand-quote-syntax%
                        ,core-compile-top-quote-syntax%)
    (%#call             expr:    ,core-expand-call%
                        ,core-compile-top-call%)
    (%#if               expr:    ,core-expand-if%
                        ,core-compile-top-if%)
    (%#ref              expr:    ,core-expand-ref%
                        ,core-compile-top-ref%)
    (%#set!             expr:    ,core-expand-setq%
                        ,core-compile-top-setq%)
    (%#expression       expr:    ,core-expand-expression%
                        #f)))

(def *core-macro-expanders*
  `((begin            => %#begin)
    (begin-syntax     => %#begin-syntax)
    (begin-foreign    => %#begin-foreign)
    (begin-annotation => %#begin-annotation)
    (import           => %#import)
    (module           => %#module)
    (export           => %#export)
    (provide          => %#provide)
    (declare          => %#declare)
    (include          => %#include)
    (cond-expand      => %#cond-expand)
    (quote            => %#quote)
    (quote-syntax     => %#quote-syntax)
    (let-syntax       => %#let-syntax)
    (letrec-syntax    => %#letrec-syntax)
    (extern          ,macro-expand-extern)
    (define-values   ,macro-expand-define-values)
    (define-syntax   ,macro-expand-define-syntax)
    (define-alias    ,macro-expand-define-alias)
    (lambda%              ,macro-expand-lambda%)
    (case-lambda          ,macro-expand-case-lambda)
    (let-values      ,macro-expand-let-values)
    (letrec-values   ,macro-expand-letrec-values)
    (letrec*-values  ,macro-expand-letrec*-values)
    (if              ,macro-expand-if)
    ;; custom module expansion
    (%%app            => %#call)
    (%%ref            => %#ref)
    (%%begin-module   => %#begin-module)
    ;; sugar reserved
    (_) (...) (else) (=>)
    (unquote) (unquote-splicing)
    (unsyntax) (unsyntax-splicing)))

(defmethod {:init! root-context}
  (lambda (self (bind? #t))
    (struct-instance-init! self 'root (make-hash-table-eq))
    (when bind?
      {bind-core-syntax-expanders! self}
      {bind-core-macro-expanders!  self}
      {bind-core-features! self})))

(defmethod {:init! top-context}
  (lambda (self (super #f))
    (let (super (or super (core-context-root) (make-root-context)))
      (struct-instance-init! self 'top (make-hash-table-eq)
                                    super #f #f))))

(defmethod {bind-core-syntax-expanders! expander-context}
  (lambda (self (bindings *core-syntax-expanders*))
    (for-each
      (lambda (bind)
        (with ([id . rest] bind)
          (core-context-put! self id
            (make-syntax-binding id id #f
              (match rest
                ([key expander compiler]
                 ((match key
                    (top:     make-top-special-form)
                    (module:  make-module-special-form)
                    (define:  make-definition-form)
                    (special: make-special-form)
                    (expr:    make-expression-form))
                  expander id (or compiler core-compile-top-error))))))))
      bindings)))

(defmethod {bind-core-macro-expanders! expander-context}
  (lambda (self (bindings *core-macro-expanders*))
    (for-each
      (lambda (bind)
        (with ([id . rest] bind)
          (core-context-put! self id
            (make-syntax-binding id id #f
              (match rest
                (['=> core-id]
                 (make-rename-macro-expander core-id))
                ([proc]
                 (make-macro-expander proc))
                ([]
                 (make-reserved-expander id)))))))
      bindings)))

(defmethod {bind-core-features! expander-context}
  (lambda (self)
    (def (linux-variant? sys-type)
      (match (string-split (symbol->string sys-type) #\-)
        (["linux" . rest] (not (null? rest)))
        (else #f)))

    (def (bsd-variant sys-type)
      (let (sys-type-str (symbol->string sys-type))
        (let lp ((rest '("openbsd" "netbsd" "freebsd" "darwin")))
          (match rest
            ([sys . rest]
             (if (string-prefix? sys sys-type-str)
               sys
               (lp rest)))
            (else #f)))))

    (core-bind-feature! 'gerbil #f 0 self)
    (core-bind-feature! (gerbil-system) #f 0 self)
    (match (system-type)
      ([sys-cpu sys-vendor sys-type]
       (core-bind-feature! sys-cpu #f 0 self)
       (core-bind-feature! sys-type #f 0 self)
       (cond
        ((linux-variant? sys-type)
         (core-bind-feature! (string->symbol "linux") #f 0 self))
        ((bsd-variant sys-type)
         => (lambda (sys-prefix)
              (core-bind-feature! (string->symbol "bsd") #f 0 self)
              (core-bind-feature! (string->symbol sys-prefix) #f 0 self)))))
      (else (void)))
    (when (gerbil-runtime-smp?)
      (core-bind-feature! 'gerbil-smp #f 0 self))))
