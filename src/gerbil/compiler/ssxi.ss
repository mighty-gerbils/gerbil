;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Prelude for compiler ssxi modules
prelude: "../core"
package: gerbil/compiler
namespace: gxc

(import "../core"
        "../core/expander"
        "../expander"
        "base" "optimize-base")
(export #t ast-rules ast-case
        syntax with-syntax with-syntax*
        (import: "../core" "../core/expander" "../expander" "optimize-base"))

(defrules declare-type ()
  ((_ symbol type-expr)
   (identifier? #'symbol)
   (optimizer-declare-type! 'symbol type-expr)))

(defrules declare-class ()
  ((_ symbol type-expr)
   (identifier? #'symbol)
   (optimizer-declare-class! 'symbol type-expr)))

(defrules declare-type* ()
  ((_ (symbol type) ...)
   (begin (declare-type symbol type) ...)))

(defrules declare-method ()
  ((_ type-t method symbol rebind?)
   (and (identifier? #'type-t)
        (identifier? #'method)
        (identifier? #'symbol))
   (optimizer-declare-method! 'type-t 'method 'symbol rebind?))
  ((recur type-t method symbol)
   (recur type-t method symbol rebind?)))

(defrules declare-method* ()
  ((_ (type-t method symbol) ...)
   (begin (declare-method type-t method symbol) ...)))

(defrules declare-methods ()
  ((_ type-t (method symbol) ...)
   (begin (declare-method type-t method symbol) ...)))

;; aliases
(defrules @alias ()
  ((_ alias-id)
   (make-!alias 'alias-id)))

;; MOP
(defrules @class ()
  ((_ type-id super-ids precedence-list slots fields constructor struct? final? system? metaclass methods)
   (make-!class 'type-id 'super-ids 'precedence-list 'slots 'fields 'constructor struct? final? system? 'metaclass 'methods)))

(defrules @predicate ()
  ((_ type-id)
   (make-!predicate 'type-id)))

(defrules @constructor ()
  ((_ type-id)
   (make-!constructor 'type-id)))

(defrules @accessor ()
  ((_ type-id slot checked?)
   (make-!accessor 'type-id 'slot checked?)))

(defrules @mutator ()
  ((_ type-id slot checked?)
   (make-!mutator 'type-id 'slot checked?)))

(defrules @primitive-predicate ()
  ((_ type-id)
   (make-!primitive-predicate 'type-id)))

;; interfaces
(defrules @interface ()
  ((_ type-id methods)
   (make-!interface 'type-id 'methods)))

;; lambdas
(defrules @lambda ()
  ((_ arity dispatch)
   (make-!lambda 'arity 'dispatch))
  ((_ arity dispatch signature: signature)
   (make-!lambda 'arity 'dispatch signature: (apply make-!signature 'signature)))
  ((recur arity)
   (recur arity #f))
  ((recur arity signature: signature)
   (recur arity #f signature: signature)))

(defrules @case-lambda ()
  ((_ (clause ...) ...)
   (make-!case-lambda [(@lambda clause ...) ...])))

(defrules @kw-lambda ()
  ((_ tab dispatch)
   (make-!kw-lambda 'tab 'dispatch)))

(defrules @kw-lambda-dispatch ()
  ((_ keys main)
   (make-!kw-lambda-primary 'keys 'main)))

(defrules declare-inline-rules! ()
  ((_ (proc rule) ...)
   (begin (declare-inline-rule! proc rule) ...)))

(defrules declare-inline-rule! ()
  ((_ proc rules)
   (let (type (optimizer-lookup-type 'proc))
     (if (!lambda? type)
       (set! (!lambda-inline type) rules)
       (displayln "*** WARNING unknown procedure " 'proc "; ignoring inline rule")))))

(defrules declare-primitive-predicates ()
  ((_) (begin))
  ((_ (proc klass) . rest)
   (begin (declare-primitive-predicate proc klass)
          (declare-primitive-predicates . rest))))

(defrules declare-primitive-procedures ()
  ((_) (begin))
  ((_ (id sig ...) . rest)
   (begin (declare-primitive-procedure id sig ...)
          (declare-primitive-procedures . rest))))

(defrules declare-primitive-procedure (@list)
  ((_ id (@list sig ...))
   (declare-primitive-case-lambda id sig ...))
  ((_ id sig ...)
   (declare-primitive-lambda id sig ...)))

(begin-syntax
  (def (verify-procedure! ctx id)
    (let (proc (with-catch false (cut eval-syntax id)))
      (unless (procedure? proc)
        (raise-syntax-error #f "unknown procedure" ctx id))))

  (def (verify-class! ctx id)
    (let (klass (with-catch false (cut eval-syntax id)))
      (unless (class-type? klass)
        (raise-syntax-error #f "unknown class" ctx id))))

  (def (parse-signature ctx proc sig)
    (def (signature-arity args)
      (let loop ((rest args) (count 0))
        (match rest
          ([_ . rest]
           (loop rest (fx1+ count)))
          ([] count)
          (_ [count]))))

    (def (make-signature args return effect unchecked)
      (stx-for-each (cut verify-class! ctx <>) args)
      (verify-class! ctx return)
      (when unchecked
        (verify-procedure! ctx unchecked))
      (let (arity (signature-arity (stx-map stx-e args)))
        (when effect
          (let (effect (syntax->datum effect))
            (unless (and (list? effect) (andmap symbol? effect))
              (raise-syntax-error #f "bad effect" ctx proc effect))))
        [arity
         (with-syntax ((args args) (return return) (effect effect) (unchecked unchecked))
           #'(make-!signature arguments: 'args
                              return: 'return
                              effect: 'effect
                              unchecked: 'unchecked))]))

    (verify-procedure! ctx proc)
    (syntax-case sig ()
      ((args return)
       (make-signature #'args #'return #f #f))
      ((args return effect: effect)
       (make-signature #'args #'return #'effect #f))
      ((args return effect: effect unchecked:)
       (make-signature #'args #'return #'effect (make-symbol "##" (stx-e proc))))
      ((args return effect: effect unchecked: unchecked-proc)
       (make-signature #'args #'return #f (stx-e #'unchecked-proc)))
      ((args return unchecked:)
       (make-signature #'args #'return #f (make-symbol "##" (stx-e proc))))
      ((args return unchecked: unchecked-proc)
       (make-signature #'args #'return #f (stx-e #'unchecked-proc)))))

  (def (signature->unchecked-signature sig)
    (syntax-case sig (quote)
      ((_ arguments: (quote args)
          return: (quote return)
          effect: (quote effect)
          unchecked: (quote unchecked))
       (and (stx-e #'unchecked)
            #'(unchecked (make-!signature return: 'return)))))))

(defsyntax (declare-primitive-predicate stx)
  (syntax-case stx ()
    ((_ proc klass)
     (and (identifier? #'proc) (identifier? #'klass))
     (begin
       (verify-procedure! stx #'proc)
       (verify-class! stx #'klass)
       #'(declare-type proc (make-!primitive-predicate 'klass))))))

(defsyntax (declare-primitive-lambda stx)
  (syntax-case stx ()
    ((_ proc signature ...)
     (identifier? #'proc)
     (with-syntax* (((arity sig) (parse-signature stx #'proc #'(signature ...)))
                    (decl
                     #'(declare-type proc
                         (make-!primitive-lambda 'arity #f signature: sig)))
                    ((values unchecked)
                     (signature->unchecked-signature #'sig))
                    (decl-unchecked
                     (if unchecked
                       (with-syntax (((proc sig) unchecked))
                         #'(declare-type proc
                             (make-!primitive-lambda 'arity #f signature: sig)))
                       '(begin))))
       #'(begin decl decl-unchecked)))))

(defsyntax (declare-primitive-case-lambda stx)
  (syntax-case stx ()
    ((_ proc case-signature ...)
     (identifier? #'proc)
     (let (signatures (map (cut parse-signature stx #'proc <>) #'(case-signature ...)))
       (with-syntax* ((((arity sig) ...) signatures)
                      (decl
                       #'(declare-type proc
                           (make-!primitive-case-lambda
                            [(make-!primitive-lambda 'arity #f signature: sig) ...])))
                      (decl-unchecked
                       (let ((values unchecked-proc unchecked-clauses)
                             (let loop ((rest signatures)
                                        (unchecked-proc #f)
                                        (unchecked-clauses []))
                               (match rest
                                 ([hd . rest]
                                  (syntax-case hd (quote)
                                    ((arity
                                      (_ arguments: (quote args)
                                         return: (quote return)
                                         effect: (quote effect)
                                         unchecked: (quote unchecked)))
                                     (let ((clause #'(make-!primitive-lambda 'arity #f signature: (make-!signature return: 'return)))
                                           (unchecked (stx-e #'unchecked)))
                                       (loop rest
                                             (or unchecked unchecked-proc)
                                             (cons clause unchecked-clauses))))))
                                 (else
                                  (values unchecked-proc (reverse! unchecked-clauses))))))
                         (if unchecked-proc
                           (with-syntax ((proc unchecked-proc)
                                         ((clause ...) unchecked-clauses))
                             #'(declare-type proc
                                 (make-!primitive-case-lambda [clause ...])))
                           '(begin)))))
         #'(begin decl decl-unchecked))))))

(defrules declare-builtin-class ()
  ((_ system: id super)
   (optimizer-declare-builtin-class! 'id (make-!class (class-type-id id) 'super [] #f #f #f #t #f)))
  ((_ struct: id super slots)
   (optimizer-declare-builtin-class! 'id (make-!class (class-type-id id) 'super 'slots #f #f #f #f #f)))
  ((_ class: id super slots)
   (optimizer-declare-builtin-class! 'id (make-!class (class-type-id id) 'super 'slots #f #t #f #f #f))))

(defrules declare-builtin-classes ()
  ((_ decl ...)
   (begin (declare-builtin-class . decl) ...)))
