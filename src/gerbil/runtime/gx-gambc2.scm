;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Gerbil stage0 -- Gambit-C host compiler
(##namespace (""))
;; (include "gx-gambc#.scm")

;; (declare
;;   (block)
;;   (standard-bindings)
;;   (extended-bindings))
(declare (safe))

(declare
 ;; (block)
 (standard-bindings) (extended-bindings)

 (not inline)
 ;; (debug)
 ;; (debug-location)
 ;; (debug-source)
 ;; (debug-environments)
 )


;; core [top] syntax -> gambit runtime compiler
(define-macro (%AST? e)
  `(##structure-instance-of? ,e 'gerbil#AST::t))

(define-macro (%AST-e e)
  `(_gx#vector-ref ,e 1))

(define-macro (%AST-source e)
  `(_gx#vector-ref ,e 2))

(define (&SRC e #!optional (src-stx #f))
  (cond
   ((or (pair? e) (symbol? e))
    (##make-source e (and (%AST? src-stx) (&locat (%AST-source src-stx)))))
   ((%AST? e)
    (##make-source (%AST-e e) (&locat (%AST-source e))))
   (else
    (error "BUG! Cannot sourcify object" e))))

(define (&locat loc)
  (and (##locat? loc) loc))

(define (_gx#check-values obj k)
  (let ((count (values-count obj)))
    (unless (fx= count k)
      (error (if (fx< count k)
               "Too few values for context"
               "Too many values for context")
        (if (##values? obj) (_gx#vector->list obj) obj)
        k))))

(define-macro (%&syntax-e obj)
  `(_gx#vector-ref ,obj 1))

(define (_gx#compile stx)
  ;; (displayln "Now in _gx#compile in gambc2")
  (core-ast-case
   stx ()
   ((form . _)
    ;; (displayln "resulving form " form (&core-resolve form))
    (cond
     ((&core-resolve form)
      => (lambda (bind)
           ;; (displayln "Form resolved " bind (%&syntax-e bind))
           ((%&syntax-e bind) stx)))
     (else
      (_gx#raise-syntax-error #f "Bad syntax" stx form))))))

(define (_gx#compile-error stx #!optional (detail #f))
  (_gx#raise-syntax-error 'compile "Bad syntax; cannot compile" stx detail))

(define (_gx#compile-ignore% stx)
  (&SRC '(##void) stx))

(define (_gx#compile-begin% stx)
  (core-ast-case stx ()
    ((_ . body)
     (&SRC (cons '##begin (map _gx#compile body)) stx))))

(define (_gx#compile-begin-foreign% stx)
  (core-ast-case stx ()
    ((_ . body)
     (&SRC (cons '##begin (&AST->datum body)) stx))))

(define (_gx#compile-import% stx)
  (core-ast-case stx ()
    ((_ . body)
     (&SRC `(_gx#eval-import (##quote ,body)) stx))))

(define (_gx#compile-begin-annotation% stx)
  (core-ast-case stx ()
    ((_ ann expr)
     (_gx#compile expr))))

(define (_gx#compile-define-values% stx)
  (core-ast-case stx ()
    ((_ hd expr)
     (core-ast-case hd ()
       ((#f)
        (_gx#compile expr))
       ((id)
        (&SRC
         `(##define ,(&SRC id)
                    ,(_gx#compile expr))
         stx))
       (else
        (let* ((ids hd)
               (len (length ids))
               (tmp (&SRC (gensym))))
          (&SRC
           `(##begin
             ,(&SRC `(##define ,tmp ,(_gx#compile expr)) stx)
             ,(&SRC `(_gx#check-values ,tmp ,len) stx)
             ,@(filter-map
                (lambda (id k)
                  (and (&AST-e id)
                       (&SRC
                        `(##define ,(&SRC id)
                                   (_gx#vector-ref ,tmp ,k))
                        stx)))
                ids (iota len)))
           stx)))))))

(define (_gx#compile-head-id e)
  (&SRC (if (&AST-e e) e (gensym))))

(define (_gx#compile-lambda-head hd)
  (let recur ((rest hd))
    (core-ast-case rest ()
      ((hd . rest)
       (cons (_gx#compile-head-id hd)
             (recur rest)))
      (() '())
      (tail
       (_gx#compile-head-id tail)))))

(define (_gx#compile-lambda% stx)
  (core-ast-case stx ()
    ((_ hd body)
     (&SRC
      `(##lambda ,(_gx#compile-lambda-head hd)
            ,(_gx#compile body))
      stx))))

(define (_gx#compile-case-lambda% stx)
  (define (variadic? hd)
    (core-ast-case hd ()
      ((_ . rest)
       (variadic? rest))
      (() #f)
      (else #t)))

  (define (arity hd)
    (let lp ((rest hd) (k 0))
      (core-ast-case rest ()
        ((_ . rest)
         (lp rest (fx1+ k)))
        (else k))))

  (define (generate rest args len)
    (core-ast-case rest ()
      ((clause . rest)
       (core-ast-case clause ()
         ((hd _)
          (let ((clen (arity hd))
                (cmp (if (variadic? hd) 'fx>= 'fx=)))
            (&SRC
             `(##if (,cmp ,len ,clen)
                    ,(&SRC
                      `(##apply ,(_gx#compile-lambda% (cons '%#lambda clause))
                                ,args)
                      stx)
                    ,(generate rest args len))
             stx)))))
      (else
       (&SRC `(error "No clause matching arguments" ,args) stx))))

  (core-ast-case stx ()
    ((_ clause)
     (_gx#compile-lambda% (cons '%#lambda clause)))
    ((_ . clauses)
     (let ((args (&SRC (gensym) stx))
           (len  (&SRC (gensym) stx)))
       (&SRC
        `(##lambda ,args
              ,(&SRC
                `(##let ((,len ,(&SRC `(##length ,args) stx)))
                        ,(generate clauses args len))
                stx))
        stx)))))

(define (_gx#compile-let-form stx compile-simple compile-values)
  (define (simple-bind? hd)
    (core-match hd
      ((id) #t)
      (#f #t)
      (else #f)))

  (define (car-e hd)
    (if (pair? hd) (car hd) hd))

  (core-ast-case stx ()
     ((_ () body)
      (_gx#compile body))
     ((_ hd body)
      (let* ((hd-ids (map (lambda (bind)
                            (core-ast-case bind ()
                              ((ids _) ids)))
                          hd))
             (exprs  (map (lambda (bind)
                            (core-ast-case bind ()
                              ((_ expr) (_gx#compile expr))))
                          hd))
             (body   (_gx#compile body)))
        (if (andmap simple-bind? hd-ids)
          (compile-simple (map car-e hd-ids) exprs body)
          (compile-values hd-ids exprs body))))))


(define (_gx#compile-let-values% stx)
  (define (compile-simple hd-ids exprs body)
    (&SRC
     `(##let ,(map list (map _gx#compile-head-id hd-ids) exprs)
             ,body)
     stx))

  (define (compile-values hd-ids exprs body)
    (let lp ((rest hd-ids) (exprs exprs) (bind '()) (post '()))
      (core-match rest
        (((id) . rest)
         (lp rest (cdr exprs)
             (cons `(,(_gx#compile-head-id id) ,(car exprs)) bind)
             post))
        ((hd . rest)
         (cond
          ((&AST-id? hd)
           (lp rest (cdr exprs)
               (cons `(,(_gx#compile-head-id hd) (values->list ,(car exprs)))
                     bind)
               post))
          ((list? hd)
           (let* ((len (length hd))
                  (tmp (&SRC (gensym))))
             (lp rest (cdr exprs)
                 (cons `(,tmp ,(car exprs)) bind)
                 (cons (cons* tmp len
                              (filter-map (lambda (id k)
                                            (and (&AST-e id) (cons (&SRC id) k)))
                                          hd (iota len)))
                       post))))
          (else
           (_gx#compile-error stx hd))))
        (else
         (&SRC
          `(##let ,(reverse bind)
                  ,(compile-post post body))
          stx)))))

  (define (compile-post post body)
    (let lp ((rest post) (check '()) (bind '()))
      (core-match rest
        (((tmp len . init) . rest)
         (lp rest
             (cons (&SRC `(_gx#check-values ,tmp ,len) stx) check)
             (foldr (lambda (hd r)
                      (core-match hd
                        ((id . k)
                         (cons `(,id (_gx#vector-ref ,tmp ,k)) r))))
                    bind init)))
        (else
         (&SRC
          `(##begin ,@check
                    ,(&SRC `(##let ,bind ,body) stx))
          stx)))))

  (_gx#compile-let-form stx compile-simple compile-values))

(define (_gx#compile-letrec-values% stx)
  (define (compile-simple hd-ids exprs body)
    (&SRC
     `(##letrec ,(map list (map _gx#compile-head-id hd-ids) exprs)
                ,body)
     stx))

  (define (compile-values hd-ids exprs body)
    (let lp ((rest hd-ids) (exprs exprs) (pre '()) (bind '()) (post '()))
      (core-match rest
        (((id) . rest)
         (lp rest (cdr exprs)
             pre
             (cons `(,(_gx#compile-head-id id) ,(car exprs)) bind)
             post))
        ((hd . rest)
         (cond
          ((&AST-id? hd)
           (lp rest (cdr exprs)
               pre
               (cons `(,(_gx#compile-head-id hd) (values->list ,(car exprs)))
                     bind)
               post))
          ((list? hd)
           (let* ((len (length hd))
                  (tmp (&SRC (gensym))))
             (lp rest (cdr exprs)
                 (foldl (lambda (id r)
                          (if (&AST-e id) (cons `(,(&SRC id) #!void) r) r))
                        pre hd)
                 (cons `(,tmp ,(car exprs)) bind)
                 (cons (cons* tmp len
                              (filter-map (lambda (id k)
                                            (and (&AST-e id) (cons (&SRC id) k)))
                                          hd (iota len)))
                       post))))
          (else
           (_gx#compile-error stx hd))))
        (else
         (compile-inner pre bind post body)))))

  (define (compile-inner pre bind post body)
    (if (null? pre)
      (compile-bind bind post body)
      (&SRC
       `(##let ,(reverse pre)
               ,(compile-bind bind post body))
       stx)))

  (define (compile-bind bind post body)
    (&SRC
     `(##letrec ,(reverse bind)
                ,(compile-post post body))
     stx))

  (define (compile-post post body)
    (let lp ((rest post) (check '()) (bind '()))
      (core-match rest
        (((tmp len . init) . rest)
         (lp rest
             (cons (&SRC `(_gx#check-values ,tmp ,len) stx) check)
             (foldr (lambda (hd r)
                      (core-match hd
                        ((id . k)
                         (cons `(##set! ,id (_gx#vector-ref ,tmp ,k)) r))))
                    bind init)))
        (else
         (&SRC
          `(##begin ,@check ,@bind ,body)
          stx)))))

  (_gx#compile-let-form stx compile-simple compile-values))

(define (_gx#compile-letrec*-values% stx)
  (define (compile-simple hd-ids exprs body)
    (&SRC
     `(##letrec* ,(map list (map _gx#compile-head-id hd-ids) exprs)
                 ,body)
     stx))

  (define (compile-values hd-ids exprs body)
    (let lp ((rest hd-ids) (exprs exprs) (bind '()) (post '()))
      (core-match rest
        (((hd) . rest)
         (if (&AST-id? hd)
           (let ((id (&SRC hd)))
             (lp rest (cdr exprs)
                 (cons `(,id #!void) bind)
                 (cons `(,id ,(car exprs)) post)))
           (lp rest (cdr exprs) bind
               (cons `(#f ,(car exprs)) post))))
        ((hd . rest)
         (cond
          ((&AST-id? hd)
           (let ((id (&SRC hd)))
             (lp rest (cdr exprs)
                 (cons `(,id #!void) bind)
                 (cons `(,id (values->list ,(car exprs))) post))))
          ((not (&AST-e hd))
           (lp rest (cdr exprs) bind
               (cons `(#f ,(car exprs)) post)))
          ((list? hd)
           (let* ((len (length hd))
                  (tmp (&SRC (gensym))))
             (lp rest (cdr exprs)
                 (foldl (lambda (id r)
                          (if (&AST-e id) (cons `(,(&SRC id) #!void) r) r))
                        bind hd)
                 (cons (cons* tmp (car exprs) len
                              (filter-map (lambda (id k)
                                            (and (&AST-e id) (cons (&SRC id) k)))
                                          hd (iota len)))
                       post))))
          (else
           (_gx#compile-error stx hd))))
        (else
         (compile-bind bind post body)))))

  (define (compile-bind bind post body)
    (&SRC
     `(##let ,(reverse bind)
             ,(compile-post post body))
     stx))

  (define (compile-post post body)
    (&SRC
     `(##begin
       ,@(foldl
           (lambda (hd r)
             (core-match hd
               ((#f expr)
                (cons expr r))
               ((id expr)
                (cons (&SRC `(##set! ,id ,expr) stx) r))
               ((tmp expr len . init)
                (cons
                 (&SRC
                  `(##let ((,tmp ,expr))
                          ,(&SRC `(_gx#check-values ,tmp ,len) stx)
                          ,@(map (lambda (hd)
                                   (core-match hd
                                     ((id . k)
                                      (&SRC
                                       `(##set! ,id (_gx#vector-ref ,tmp ,k))
                                       stx))))
                                 init))
                  stx)
                 r))))
           (list body) post))
     stx))

  (_gx#compile-let-form stx compile-simple compile-values))

(define (_gx#compile-call% stx)
  (core-ast-case stx ()
    ((_ rator . rands)
     (&SRC (cons (_gx#compile rator)
                 (map _gx#compile rands))
           stx))))

(define (_gx#compile-ref% stx)
  (core-ast-case stx ()
    ((_ id)
     (&SRC id stx))))

(define (_gx#compile-setq% stx)
  (core-ast-case stx ()
    ((_ id expr)
     (&SRC `(##set! ,(&SRC id stx) ,(_gx#compile expr)) stx))))

(define (_gx#compile-if% stx)
  (core-ast-case stx ()
    ((_ p t f)
     (&SRC `(##if ,(_gx#compile p)
                  ,(_gx#compile t)
                  ,(_gx#compile f))
           stx))))

(define (_gx#compile-quote% stx)
  (core-ast-case stx ()
    ((_ e) (&SRC `(##quote ,(&AST->datum e)) stx))))

(define (_gx#compile-quote-syntax% stx)
  (core-ast-case stx ()
    ((_ e) (&SRC `(##quote ,e) stx))))

(define-core-forms
  (%#begin            special: compile-begin%)
  (%#begin-syntax     special: compile-ignore%)
  (%#begin-foreign    special: compile-begin-foreign%)
  (%#module           special: compile-ignore%)
  (%#import           special: compile-import%)
  (%#export           special: compile-ignore%)
  (%#provide          special: compile-ignore%)
  (%#define-values    special: compile-define-values%)
  (%#define-syntax    special: compile-ignore%)
  (%#define-alias     special: compile-ignore%)
  (%#define-runtime   special: compile-ignore%)
  (%#extern           special: compile-ignore%)
  (%#declare          special: compile-ignore%)
  (%#begin-annotation expr:    compile-begin-annotation%)
  (%#quote            expr:    compile-quote%)
  (%#quote-syntax     expr:    compile-quote-syntax%)
  (%#lambda                expr:    compile-lambda%)
  (%#case-lambda           expr:    compile-case-lambda%)
  (%#let-values       expr:    compile-let-values%)
  (%#letrec-values    expr:    compile-letrec-values%)
  (%#letrec*-values   expr:    compile-letrec*-values%)
  (%#call             expr:    compile-call%)
  (%#if               expr:    compile-if%)
  (%#ref              expr:    compile-ref%)
  (%#set!             expr:    compile-setq%)
  ;; intermediate -- meta-compiler must compile
  (%#cond-expand      #f)
  (%#include          #f)
  (%#let-syntax       #f)
  (%#letrec-syntax    #f))
