;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil.expander top syntax compiler
prelude: "../core"
package: gerbil/expander
namespace: gx

(export #t)
(import "common" "stx" "core")
(declare (not safe))

(def (core-compile-top-syntax stx)
  (core-syntax-case stx ()
    ((form . _)
     {compile-top-syntax (syntax-local-e form) stx})))

(defmethod {compile-top-syntax core-expander}
  (lambda (self stx)
    (with ((core-expander _ _ K) self)
      (cond
       ((stx-source stx) => (cut stx-wrap-source (K stx) <>))
       (else (K stx))))))

(def (core-compile-top-error stx)
  (raise-syntax-error 'compile "Cannot compile form" stx))

(def (core-compile-top-begin% stx)
  (core-syntax-case stx ()
    ((_ . body)
     (cons '%#begin (stx-map core-compile-top-syntax body)))))

(def (core-compile-top-begin-syntax% stx)
  (core-syntax-case stx ()
    ((_ . body)
     (cons '%#begin-syntax
           (parameterize ((current-expander-phi
                           (fx1+ (current-expander-phi))))
             (stx-map core-compile-top-syntax body))))))

(def (core-compile-top-begin-foreign% stx)
  (core-syntax-case stx ()
    ((_ . body)
     (cons '%#begin-foreign body))))

(def (core-compile-top-begin-annotation% stx)
  (core-syntax-case stx ()
    ((_ ann expr)
     (core-compile-top-syntax expr))))

(def (core-compile-top-import% stx)
  (core-syntax-case stx ()
    ((_ . body)
     (cons '%#import body))))

(def (core-compile-top-module% stx)
  (core-syntax-case stx ()
    ((_ hd . body)
     (cons* '%#module
            (expander-context-id (syntax-local-e hd))
            (stx-map core-compile-top-syntax body)))))

(def (core-compile-top-export% stx)
  (core-syntax-case stx ()
    ((_ . body)
     (cons '%#export body))))

(def (core-compile-top-provide% stx)
  (core-syntax-case stx ()
    ((_ . body)
     (cons '%#provide body))))

(def (core-compile-top-extern% stx)
  (core-syntax-case stx ()
    ((_ . body)
     (cons '%#extern body))))

(def (core-compile-top-define-values% stx)
  (core-syntax-case stx ()
    ((_ hd expr)
     ['%#define-values (stx-map core-compile-top-runtime-bind hd)
                       (core-compile-top-syntax expr)])))

(def (core-compile-top-define-syntax% stx)
  (core-syntax-case stx ()
    ((_ hd expr)
     ['%#define-syntax hd
                       (parameterize ((current-expander-phi
                                       (fx1+ (current-expander-phi))))
                         (core-compile-top-syntax expr))])))

(def (core-compile-top-define-alias% stx)
  (core-syntax-case stx ()
    ((_ . body)
     (cons '%#define-alias body))))

(def (core-compile-top-define-runtime% stx)
  (core-syntax-case stx ()
    ((_ . body)
     (cons '%#define-runtime body))))

(def (core-compile-top-declare% stx)
  (core-syntax-case stx ()
    ((_ . decls)
     (cons '%#declare decls))))

(def (core-compile-top-lambda% stx)
  (core-syntax-case stx ()
    ((_ . clause)
     (cons '%#lambda (core-compile-top-lambda-clause clause)))))

(def (core-compile-top-lambda-clause stx)
  (core-syntax-case stx ()
    ((hd body)
     [(stx-map core-compile-top-runtime-bind hd)
      (core-compile-top-syntax body)])))

(def (core-compile-top-case-lambda% stx)
  (core-syntax-case stx ()
    ((_ . clauses)
     (cons '%#case-lambda
           (stx-map core-compile-top-lambda-clause clauses)))))

(def (core-compile-top-let-values% stx (form '%#let-values))
  (core-syntax-case stx ()
    ((_ hd body)
     [form (stx-map core-compile-top-lambda-clause hd)
           (core-compile-top-syntax body)])))

(def (core-compile-top-letrec-values% stx)
  (core-compile-top-let-values% stx '%#letrec-values))

(def (core-compile-top-letrec*-values% stx)
  (core-compile-top-let-values% stx '%#letrec*-values))

(def (core-compile-top-quote% stx)
  (core-syntax-case stx ()
    ((_ e)
     ['%#quote (syntax->datum e)])))

(def (core-compile-top-quote-syntax% stx)
  (core-syntax-case stx ()
    ((_ e)
     ['%#quote-syntax (core-quote-syntax e)])))

(def (core-compile-top-call% stx)
  (core-syntax-case stx ()
    ((_ rator . args)
     (cons* '%#call
            (core-compile-top-syntax rator)
            (stx-map core-compile-top-syntax args)))))

(def (core-compile-top-if% stx)
  (core-syntax-case stx ()
    ((_ test K E)
     ['%#if (core-compile-top-syntax test)
            (core-compile-top-syntax K)
            (core-compile-top-syntax E)])))

(def (core-compile-top-ref% stx)
  (core-syntax-case stx ()
    ((_ id)
     (identifier? id)
     ['%#ref (core-compile-top-runtime-ref id)])))

(def (core-compile-top-setq% stx)
  (core-syntax-case stx ()
    ((_ id expr)
     (identifier? id)
     ['%#set! (core-compile-top-runtime-ref id)
              (core-compile-top-syntax expr)])))

(def (core-compile-top-runtime-ref id)
  (cond
   ((resolve-identifier id) => &binding-id)
   (else id)))

(def (core-compile-top-runtime-bind hd)
  (and (identifier? hd)
       (core-compile-top-runtime-ref hd)))
