;;; -*- Gerbil -*-
;;; © vyzo
;;; primitive gerbil eval
prelude: :gerbil/core
package: gerbil/runtime
namespace: #f

(export #t)
(import "gambit" "util" "mop" "error" "syntax")

(defstruct __context (t ns super table))
(defstruct __runtime (id))
(defstruct __syntax (e id))
(defstruct (__macro __syntax) ())
(defstruct (__special-form __macro) ())
(defstruct (__core-form __syntax) ())
(defstruct (__core-expression __core-form) ())
(defstruct (__core-special-form __core-form) ())
(defstruct (__struct-info __syntax) ())
(defstruct (__feature __syntax) ())
(defstruct (__module __context) (id path import export))

(def __*modules*
  (make-hash-table))
(def __*core*
  (make-hash-table-eq))
(def __*top*
  (make-__context
   'top #f
   (make-__context 'root #f #f __*core*)
   (make-hash-table-eq)))

;; interpretation parameters
(def __current-expander
  (make-parameter #f))
(def __current-compiler
  (make-parameter #f))
(def __current-path
  (make-parameter '()))

(def (__core-resolve id (ctx (__current-context)))
  (and ctx
       (let (id (__AST-e id))
         (let lp ((ctx ctx))
           (cond
            ((table-ref (__context-table ctx) id #f) => values)
            ((__context-super ctx) => lp)
            (else #f))))))

(def (__core-bound-id? id (is? true))
  (cond
   ((__core-resolve id) => is?)
   (else #f)))

(def (__core-bind-runtime! id eid (ctx (__current-context)))
  (when eid
    (hash-put! (__context-table ctx) (__AST-e id) (make-__runtime eid))))
(def (__core-bind-syntax! id e (make make-__syntax))
  (hash-put! __*core* id (if (__syntax? e) e (make e id))))
(def (__core-bind-macro! id e)
  (__core-bind-syntax! id e make-__macro))
(def (__core-bind-special-form! id e)
  (__core-bind-syntax! id e make-__special-form))
(def (__core-bind-user-syntax! id e (ctx (__current-context)))
  (hash-put! (__context-table ctx) (__AST-e id)
             (if (__syntax? e) e
                 (make-__syntax e (__AST-e id)))))

(def (make-__runtime-id id (ctx (__current-context)))
  (let (id (__AST-e id))
    (cond
     ((eq? id '_) #f)
     ((uninterned-symbol? id)
      (gensym id))
     ((symbol? id)
      (case (__context-t ctx)
        ((local)
         (gensym id))
        ((module)
         (make-symbol (__context-ns ctx) "#" id))
        (else id)))
     (else
      (error "Illegal runtime identifier" id)))))

(def (make-__context-local (super (__current-context)))
  (make-__context 'local #f super (make-hash-table-eq)))

(def (make-__context-module id ns path (super (__current-context)))
  (make-__module 'module ns super (make-hash-table-eq) id path #f #f))

(def (__SRC e (src-stx #f))
  (cond
   ((or (pair? e) (symbol? e))
    (##make-source e (and (AST? src-stx) (__locat (__AST-source src-stx)))))
   ((AST? e)
    (##make-source (&AST-e e) (__locat (__AST-source e))))
   (else
    (error "BUG! Cannot sourcify object" e))))

(def (__locat loc)
  (and (##locat? loc) loc))

(def (__check-values obj k)
  (let (count (values-count obj))
    (unless (fx= count k)
      (error (if (fx< count k)
               "Too few values for context"
               "Too many values for context")
        (if (##values? obj) (##vector->list obj) obj)
        k))))

(def (__compile stx)
  (core-ast-case stx ()
    ((form . _)
     (cond
      ((__core-resolve form)
       => (lambda (bind)
            ((__syntax-e bind) stx)))
      (else
       (__raise-syntax-error #f "Bad syntax; cannot resolve form" stx form))))))

(def (__compile-error stx (detail #f))
  (__raise-syntax-error 'compile "Bad syntax; cannot compile" stx detail))

(def (__compile-ignore% stx)
  (__SRC '(quote #!void) stx))

(def (__compile-begin% stx)
  (core-ast-case stx ()
    ((_ . body)
     (__SRC (cons 'begin (map __compile body)) stx))))

(def (__compile-begin-foreign% stx)
  (core-ast-case stx ()
    ((_ . body)
     (__SRC (cons 'begin (__AST->datum body)) stx))))

(def (__compile-import% stx)
  (core-ast-case stx ()
    ((_ . body)
     (__SRC `(__eval-import (quote ,body)) stx))))

(def (__compile-begin-annotation% stx)
  (core-ast-case stx ()
    ((_ ann expr)
     (__compile expr))))

(def (__compile-define-values% stx)
  (core-ast-case stx ()
    ((_ hd expr)
     (core-ast-case hd ()
       ((#f)
        (__compile expr))
       ((id)
        (__SRC
         `(define ,(__SRC id) ,(__compile expr))
         stx))
       (else
        (let* ((ids hd)
               (len (length ids))
               (tmp (__SRC (gensym))))
          (__SRC
           `(begin
             ,(__SRC `(define ,tmp ,(__compile expr)) stx)
             ,(__SRC `(__check-values ,tmp ,len) stx)
             ,@(filter-map
                (lambda (id k)
                  (and (__AST-e id)
                       (__SRC
                        `(define ,(__SRC id) (##vector-ref ,tmp ,k))
                        stx)))
                ids (iota len)))
           stx)))))))

(def (__compile-head-id e)
  (__SRC (if (__AST-e e) e (gensym))))

(def (__compile-lambda-head hd)
  (let recur ((rest hd))
    (core-ast-case rest ()
      ((hd . rest)
       (cons (__compile-head-id hd)
             (recur rest)))
      (() '())
      (tail
       (__compile-head-id tail)))))

(def (__compile-lambda% stx)
  (core-ast-case stx ()
    ((_ hd body)
     (__SRC
      `(lambda ,(__compile-lambda-head hd)
         ,(__compile body))
      stx))))

(def (__compile-case-lambda% stx)
  (def (variadic? hd)
    (core-ast-case hd ()
      ((_ . rest)
       (variadic? rest))
      (() #f)
      (else #t)))

  (def (arity hd)
    (let lp ((rest hd) (k 0))
      (core-ast-case rest ()
        ((_ . rest)
         (lp rest (fx1+ k)))
        (else k))))

  (def (generate rest args len)
    (core-ast-case rest ()
      ((clause . rest)
       (core-ast-case clause ()
         ((hd _)
          (let ((clen (arity hd))
                (cmp (if (variadic? hd) 'fx>= 'fx=)))
            (__SRC
             `(if (,cmp ,len ,clen)
                ,(__SRC
                  `(##apply ,(__compile-lambda% (cons '%#lambda clause))
                     ,args)
                  stx)
                ,(generate rest args len))
             stx)))))
      (else
       (__SRC `(error "No clause matching arguments" ,args) stx))))

  (core-ast-case stx ()
    ((_ clause)
     (__compile-lambda% (cons '%#lambda clause)))
    ((_ . clauses)
     (let ((args (__SRC (gensym) stx))
           (len  (__SRC (gensym) stx)))
       (__SRC
        `(lambda ,args
           ,(__SRC
             `(let ((,len ,(__SRC `(##length ,args) stx)))
                ,(generate clauses args len))
             stx))
        stx)))))

(def (__compile-let-form stx compile-simple compile-values)
  (def (simple-bind? hd)
    (match hd
      ([id] #t)
      (#f #t)
      (else #f)))

  (def (car-e hd)
    (if (pair? hd) (car hd) hd))

  (core-ast-case stx ()
     ((_ () body)
      (__compile body))
     ((_ hd body)
      (let* ((hd-ids (map (lambda (bind)
                            (core-ast-case bind ()
                              ((ids _) ids)))
                          hd))
             (exprs  (map (lambda (bind)
                            (core-ast-case bind ()
                              ((_ expr) (__compile expr))))
                          hd))
             (body   (__compile body)))
        (if (andmap simple-bind? hd-ids)
          (compile-simple (map car-e hd-ids) exprs body)
          (compile-values hd-ids exprs body))))))


(def (__compile-let-values% stx)
  (def (compile-simple hd-ids exprs body)
    (__SRC
     `(let ,(map list (map __compile-head-id hd-ids) exprs)
        ,body)
     stx))

  (def (compile-values hd-ids exprs body)
    (let lp ((rest hd-ids) (exprs exprs) (bind '()) (post '()))
      (match rest
        ([[id] . rest]
         (lp rest (cdr exprs)
             (cons `(,(__compile-head-id id) ,(car exprs)) bind)
             post))
        ([hd . rest]
         (cond
          ((__AST-id? hd)
           (lp rest (cdr exprs)
               (cons `(,(__compile-head-id hd) (values->list ,(car exprs)))
                     bind)
               post))
          ((list? hd)
           (let* ((len (length hd))
                  (tmp (__SRC (gensym))))
             (lp rest (cdr exprs)
                 (cons `(,tmp ,(car exprs)) bind)
                 (cons (cons* tmp len
                              (filter-map (lambda (id k)
                                            (and (__AST-e id) (cons (__SRC id) k)))
                                          hd (iota len)))
                       post))))
          (else
           (__compile-error stx hd))))
        (else
         (__SRC
          `(let ,(reverse bind)
             ,(compile-post post body))
          stx)))))

  (def (compile-post post body)
    (let lp ((rest post) (check '()) (bind '()))
      (match rest
        ([[tmp len . init] . rest]
         (lp rest
             (cons (__SRC `(__check-values ,tmp ,len) stx) check)
             (foldr (lambda (hd r)
                      (match hd
                        ([id . k]
                         (cons `(,id (##vector-ref ,tmp ,k)) r))))
                    bind init)))
        (else
         (__SRC
          `(begin ,@check
                  ,(__SRC `(let ,bind ,body) stx))
          stx)))))

  (__compile-let-form stx compile-simple compile-values))

(def (__compile-letrec-values% stx)
  (def (compile-simple hd-ids exprs body)
    (__SRC
     `(letrec ,(map list (map __compile-head-id hd-ids) exprs)
        ,body)
     stx))

  (def (compile-values hd-ids exprs body)
    (let lp ((rest hd-ids) (exprs exprs) (pre '()) (bind '()) (post '()))
      (match rest
        ([[id] . rest]
         (lp rest (cdr exprs)
             pre
             (cons `(,(__compile-head-id id) ,(car exprs)) bind)
             post))
        ([hd . rest]
         (cond
          ((__AST-id? hd)
           (lp rest (cdr exprs)
               pre
               (cons `(,(__compile-head-id hd) (values->list ,(car exprs)))
                     bind)
               post))
          ((list? hd)
           (let* ((len (length hd))
                  (tmp (__SRC (gensym))))
             (lp rest (cdr exprs)
                 (foldl (lambda (id r)
                          (if (__AST-e id) (cons `(,(__SRC id) (quote #!void)) r) r))
                        pre hd)
                 (cons `(,tmp ,(car exprs)) bind)
                 (cons (cons* tmp len
                              (filter-map (lambda (id k)
                                            (and (__AST-e id) (cons (__SRC id) k)))
                                          hd (iota len)))
                       post))))
          (else
           (__compile-error stx hd))))
        (else
         (compile-inner pre bind post body)))))

  (def (compile-inner pre bind post body)
    (if (null? pre)
      (compile-bind bind post body)
      (__SRC
       `(let ,(reverse pre)
          ,(compile-bind bind post body))
       stx)))

  (def (compile-bind bind post body)
    (__SRC
     `(letrec ,(reverse bind)
        ,(compile-post post body))
     stx))

  (def (compile-post post body)
    (let lp ((rest post) (check '()) (bind '()))
      (match rest
        ([[tmp len . init] . rest]
         (lp rest
             (cons (__SRC `(__check-values ,tmp ,len) stx) check)
             (foldr (lambda (hd r)
                      (match hd
                        ([id . k]
                         (cons `(set! ,id (##vector-ref ,tmp ,k)) r))))
                    bind init)))
        (else
         (__SRC
          `(begin ,@check ,@bind ,body)
          stx)))))

  (__compile-let-form stx compile-simple compile-values))

(def (__compile-letrec*-values% stx)
  (def (compile-simple hd-ids exprs body)
    (__SRC
     `(letrec* ,(map list (map __compile-head-id hd-ids) exprs)
        ,body)
     stx))

  (def (compile-values hd-ids exprs body)
    (let lp ((rest hd-ids) (exprs exprs) (bind '()) (post '()))
      (match rest
        ([[hd] . rest]
         (if (__AST-id? hd)
           (let (id (__SRC hd))
             (lp rest (cdr exprs)
                 (cons `(,id (quote #!void)) bind)
                 (cons `(,id ,(car exprs)) post)))
           (lp rest (cdr exprs) bind
               (cons `(#f ,(car exprs)) post))))
        ([hd . rest]
         (cond
          ((__AST-id? hd)
           (let (id (__SRC hd))
             (lp rest (cdr exprs)
                 (cons `(,id (quote #!void)) bind)
                 (cons `(,id (values->list ,(car exprs))) post))))
          ((not (__AST-e hd))
           (lp rest (cdr exprs) bind
               (cons `(#f ,(car exprs)) post)))
          ((list? hd)
           (let* ((len (length hd))
                  (tmp (__SRC (gensym))))
             (lp rest (cdr exprs)
                 (foldl (lambda (id r)
                          (if (__AST-e id) (cons `(,(__SRC id) (quote #!void)) r) r))
                        bind hd)
                 (cons (cons* tmp (car exprs) len
                              (filter-map (lambda (id k)
                                            (and (__AST-e id) (cons (__SRC id) k)))
                                          hd (iota len)))
                       post))))
          (else
           (__compile-error stx hd))))
        (else
         (compile-bind bind post body)))))

  (def (compile-bind bind post body)
    (__SRC
     `(let ,(reverse bind)
        ,(compile-post post body))
     stx))

  (def (compile-post post body)
    (__SRC
     `(begin
       ,@(foldl
           (lambda (hd r)
             (match hd
               ([#f expr]
                (cons expr r))
               ([id expr]
                (cons (__SRC `(set! ,id ,expr) stx) r))
               ([tmp expr len . init]
                (cons
                 (__SRC
                  `(let ((,tmp ,expr))
                     ,(__SRC `(__check-values ,tmp ,len) stx)
                     ,@(map (lambda (hd)
                              (match hd
                                ([id . k]
                                 (__SRC
                                  `(set! ,id (##vector-ref ,tmp ,k))
                                  stx))))
                            init))
                  stx)
                 r))))
           (list body) post))
     stx))

  (__compile-let-form stx compile-simple compile-values))

(def (__compile-call% stx)
  (core-ast-case stx ()
    ((_ rator . rands)
     (__SRC (cons (__compile rator)
                 (map __compile rands))
           stx))))

(def (__compile-ref% stx)
  (core-ast-case stx ()
    ((_ id)
     (__SRC id stx))))

(def (__compile-setq% stx)
  (core-ast-case stx ()
    ((_ id expr)
     (__SRC `(set! ,(__SRC id stx) ,(__compile expr)) stx))))

(def (__compile-if% stx)
  (core-ast-case stx ()
    ((_ p t f)
     (__SRC `(if ,(__compile p)
              ,(__compile t)
              ,(__compile f))
           stx))))

(def (__compile-quote% stx)
  (core-ast-case stx ()
    ((_ e) (__SRC `(quote ,(__AST->datum e)) stx))))

(def (__compile-quote-syntax% stx)
  (core-ast-case stx ()
    ((_ e) (__SRC `(quote ,e) stx))))


(defsyntax (defcore-forms stx)
  (def (generate id compile make)
    (with-syntax ((id id)
                  (eid  (stx-identifier id "__" compile))
                  (make make))
      #'(__core-bind-syntax! (quote id) eid make)))

  (syntax-case stx ()
    ((_ form ...)
     (let lp ((rest #'(form ...)) (body []))
       (syntax-case rest ()
         (((id expr: compile) . rest)
          (lp #'rest (cons (generate #'id #'compile #'make-__core-expression)
                           body)))
         (((id special: compile) . rest)
          (lp #'rest (cons (generate #'id #'compile #'make-__core-special-form)
                           body)))
         (((id) . rest)
          (lp #'rest (cons (generate #'id #'compile-error #'make-__core-form)
                           body)))
         (() (cons 'begin (reverse body))))))))

(defcore-forms
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
  (%#cond-expand)
  (%#include)
  (%#let-syntax)
  (%#letrec-syntax))
