;;; -*- Gerbil -*-
;;; Copyright © vyzo Francois-Rene Rideau
;;; pattern-matching friendly implementation of Quasiquote, ported from CL's fare-quasiquote
;;; See the bibliography in https://github.com/fare/fare-quasiquote
;;prelude: :<root>
;;package: gerbil/core

(export #t)

(module QuasiquoteRuntime
  (export #t)
  (def append*
    (case-lambda
      (() '())
      ((x) x)
      ((x y) (foldr cons y x))
      (r (match (reverse r) ([x . l] (foldl append* x l))))))
  (defrules qq-quote () ((_ x) 'x))
  (def qq-list list)
  (def qq-list* cons*)
  (def qq-append append*))

(module QuasiquoteExpander
  (export #t)
  (import QuasiquoteRuntime :gerbil/expander)

  ;; When translating quasiquote to quasiquote-less forms,
  ;; we maintain two values, a "top" token, and a form that follows.
  ;; The top token can be one of these 8 literals:
  ;;   qq-quote qq-literal qq-null qq-list qq-list* qq-append unquote unquote-splicing
  ;; Here is what they mean for the form:
  ;; qq-null: is an empty list
  ;; qq-literal: is a literal beside the empty list
  ;; qq-quote: a constant form that needs a ' because it contains non-literals inside
  ;; qq-list: a proper list that contains unquoting but no direct unquote-splicing
  ;; qq-list*: a list without direct unquote-splicing before the end, but with improper or unquote-splicing ending
  ;; qq-append: binary only, starts with unquote-splicing, ending may be any of the top tokens
  ;; unquote: a general form to be evaluated
  ;; unquote-splicing: this form must be in a list, in which case it will be unquote-spliced

  ;; Given an expression e under a quasiquote, return two values:
  ;; 1- a top token identifying the context
  ;; 2- a syntax object
  ;; When combining quasiquoted expressions, tokens are used for simplifications.
  (def (quasiquote-expand-0 e)
    (syntax-case e (unquote unquote unquote-splicing quasiquote qq-quote)
      (()
       (cons 'qq-null '()))
      #;((qq-quote (unquote-splicing x))
       (cons 'unquote-splicing #'x))
      ((qq-quote _)
       (cons 'qq-quote e))
      (_ (identifier? e)
         (cons 'qq-quote e))
      ((unquote-splicing x)
       (cons 'unquote-splicing #'x))
      ((unquote x)
       (cons 'unquote #'x))
      ((quasiquote x)
       (quasiquote-expand-0 (quasiquote-expand #'x)))
      ((ax . dx)
       (with ((cons atop a) (quasiquote-expand-0 #'ax))
         (with ((cons dtop d) (quasiquote-expand-0 #'dx))
           (when (eq? dtop 'unquote-splicing)
             (raise-syntax-error #f ",@ after dot" e))
           (with-syntax* ((aa a) (dd d))
             (if (eq? atop 'unquote-splicing)
               (if (eq? dtop 'qq-null)
                 (syntax-case a (unquote-splicing)
                   ((unquote-splicing _) (cons 'qq-append #'(aa)))
                   (_ (unquote-expand a)))
                 (cons 'qq-append
                         (if (eq? dtop 'qq-append)
                           #'(aa . dd)
                           (with-syntax ((d1 (quasiquote-expand-1 dtop d)))
                             #'(aa d1)))))
               (let ((default (lambda ()
                                (with-syntax ((a1 (quasiquote-expand-1 atop a))
                                              (d1 (quasiquote-expand-1 dtop d)))
                                  (cons 'qq-list* #'(a1 d1))))))
                 (case dtop
                   ((qq-quote qq-literal qq-null)
                    (cond
                     ((member atop '(qq-quote qq-literal qq-null))
                      (cons 'qq-quote #'(aa . dd)))
                     ((eq? dtop 'qq-null)
                      (with-syntax ((a1 (quasiquote-expand-1 atop a)))
                        (cons 'qq-list #'(a1))))
                     (else ;; atop: qq-list qq-list* qq-append unquote
                      (default))))
                   ((qq-list qq-list*)
                    (with-syntax ((a1 (quasiquote-expand-1 atop a)))
                      (cons dtop #'(a1 . dd))))
                   (else ;; dtop: qq-append unquote
                    (default)))))))))
      (#(r ...)
       (with ((cons top r1) (quasiquote-expand-0 #'(r ...)))
         (with-syntax (((r1 ...) r1))
           (case top
             ((qq-quote qq-literal qq-null) (cons 'qq-quote #'#(r1 ...)))
             ((qq-list) (cons 'unquote #'(vector r1 ...)))
             ((qq-list*) (cons 'unquote #'(list->vector (qq-list* r1 ...))))
             ((qq-append) (cons 'unquote #'(list->vector (qq-append r1 ...))))))))
      (#&x
       (with ((cons top x1) (quasiquote-expand-0 #'x))
         (case top
           ((qq-quote qq-literal qq-null) (cons 'qq-quote (with-syntax ((x2 x1)) #'#&x2)))
           ((qq-list qq-list* qq-append unquote)
            (with-syntax ((x2 (quasiquote-expand-1 top x1)))
              (cons 'unquote #'(box x2))))
           ((unquote-splicing)
            (raise-syntax-error #f ",@ after #&" #'x)))))
      ;; Else: it's a literal
      (_ (cons 'qq-literal e)))) ;; or 'quote e

  (def (unquote-expand e)
    (syntax-case e (unquote unquote-splicing qq-quote qq-list qq-list* qq-append)
      (()
       (cons 'qq-null '()))
      (_ (identifier? e)
         (cons 'unquote e))
      ((unquote-splicing x) ;; this case should never be called
       (cons 'unquote #'(apply qq-append x)))
      ((qq-list . r)
       (cons 'qq-list #'r))
      ((qq-list* . r)
       (cons 'qq-list* #'r))
      ((qq-append . r)
       (cons 'qq-append #'r))
      ((qq-quote ())
       (cons 'qq-null #'()))
      ((qq-quote x)
       (cons 'qq-quote #'x))
      ((_ . _)
       (cons 'unquote e))
      (_ ;; else: literal
       (cons 'qq-literal e))))

  ;; Given a top token and an expression, give the quasiquoting
  ;; of the result of the top operation applied to the expression
  (def (quasiquote-expand-1 top x)
    (with-syntax ((xx x))
      (case top
        ((unquote qq-literal)
         x)
        ((qq-null)
         #'(qq-quote ()))
        ((qq-quote)
         #'(qq-quote xx))
        ((qq-list*)
         ;; cannot be simplified to cons in the case of two argument, because
         ;; the first one may be expanded to an unquote-splicing in some outer quasiquote
         (syntax-case x (unquote-splicing qq-quote)
           ((elems ... (unquote-splicing last))
            #'(qq-append (qq-list elems ...) (unquote-splicing last)))
           ((elems ... (qq-quote ()))
            #'(qq-list elems ...))
           (_ #'(qq-list* . xx))))
        ((qq-list)
         #'(qq-list . xx))
        ((qq-append)
         #'(qq-append . xx))
        (else ;; should never happen
         (raise-syntax-error #f "quasiquote-expand-1 error" top x)))))

  (def (quasiquote-expand e)
    (with ((cons top arg) (quasiquote-expand-0 e))
      (when (eq? top 'unquote-splicing)
        (raise-syntax-error #f ",@ after `" e))
      (quasiquote-expand-1 top arg))))

(module Quasiquote
  (import QuasiquoteRuntime
          (for-syntax QuasiquoteExpander))
  (export #t)
  (define-syntax quasiquote
    (lambda (stx)
      (syntax-case stx ()
        ((_ e) (quasiquote-expand #'e))))))

(import QuasiquoteRuntime Quasiquote)
