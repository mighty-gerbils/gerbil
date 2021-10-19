;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Gerbil stage0 -- Gambit-C host macros
(##namespace (""))
;; (include "gx-gambc#.scm")

(declare
  (block)
  (standard-bindings)
  (extended-bindings))
(declare (not safe))

;;; gerbil ASTs
(define-struct AST (e source)
  id:   gerbil#AST::t
  name: syntax)

(define-macro (%make-AST e source)
  `(##structure AST::t ,e ,source))

(define-macro (%AST? e)
  `(##structure-instance-of? ,e 'gerbil#AST::t))

(define-macro (%AST-e e)
  `(##vector-ref ,e 1))

(define-macro (%AST-source e)
  `(##vector-ref ,e 2))

(define (&AST e src-stx)
  (let ((src (&AST-source src-stx)))
    (if (or (%AST? e) (not src)) e
        (%make-AST e src))))

(define (&AST-e stx)
  (if (%AST? stx)
    (%AST-e stx)
    stx))

(define (&AST-source stx)
  (let lp ((src stx))
    (cond
     ((%AST? src)
      (lp (%AST-source src)))
     ((##locat? src) src)
     (else #f))))

(define (&AST-eq? stx obj)
  (eq? (&AST-e stx) obj))

(define (&AST-pair? stx)
  (pair? (&AST-e stx)))

(define (&AST-null? stx)
  (null? (&AST-e stx)))

(define (&AST-datum? stx)
  (let ((e (&AST-e stx)))
    (or (number? e)
        (string? e)
        (char? e)
        (keyword? e)
        (boolean? e)
        (eq? e #!void))))

(define (&AST-id? stx)
  (symbol? (&AST-e stx)))

(define (&AST-id-list? stx #!optional (tail? &AST-null?))
  (let lp ((rest stx))
    (core-ast-case rest ()
      ((hd . rest)
       (and (&AST-id? hd)
            (lp rest)))
      (rest (tail? rest)))))

(define (&AST-bind-list? stx)
  (&AST-id-list? stx (lambda (e) (or (&AST-null? e) (&AST-id? e)))))

(define (&AST-list? stx #!optional (tail? &AST-null?))
  (let lp ((rest stx))
    (core-ast-case rest ()
      ((_ . rest)
       (lp rest))
      (rest (tail? rest)))))

(define (&AST->list stx)
  (core-ast-case stx ()
    ((hd . rest)
     (cons hd (&AST->list rest)))
    (rest (&AST-e rest))))

(define (&AST->datum stx)
  (cond
   ((%AST? stx)
    (&AST->datum (%AST-e stx)))
   ((pair? stx)
    (cons (&AST->datum (car stx))
          (&AST->datum (cdr stx))))
   ((vector? stx)
    (vector-map &AST->datum stx))
   ((box? stx)
    (box (&AST->datum (unbox stx))))
   (else stx)))

;; TODO: change to version check when gambit releases 4.9.4
(eval-if-bound ##convert-case
  (define (get-readenv port)
    (##make-readenv port
                    (current-readtable)
                    _gx#wrap-syntax
                    _gx#unwrap-syntax
                    #f '() #f))
  (define (get-readenv port)
    (##make-readenv port
                    (current-readtable)
                    _gx#wrap-syntax
                    _gx#unwrap-syntax
                    #f #f)))

(define (read-syntax #!optional (in (current-input-port)))
  (let ((e (##read-datum-or-eof (get-readenv in))))
    (if (eof-object? (&AST-e e))
      (&AST-e e)
      e)))

(define (read-syntax-from-file path)
  (let ((r (##read-all-as-a-begin-expr-from-path
            (path-normalize path)
            (current-readtable)
            _gx#wrap-syntax
            _gx#unwrap-syntax)))
    (if (vector? r)
      (cdr (&AST-e (vector-ref r 1)))
      (error (err-code->string r) path))))

(define (_gx#wrap-syntax re e)
  (if (eof-object? e) e
      (%make-AST e (##readenv->locat re))))

(define (_gx#unwrap-syntax re e)
  (&AST-e e))

(define (_gx#pp-syntax stx)
  (pp (&AST->datum stx)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; This is a primitive eval that can be used to bootstrap the Gerbil expander
;;; directly from source (without an expander bootstrap).
;;; It was used in early Gerbil, and could be used again if you want to (painfully)
;;; bootstrap the expander from source again, perhaps for trust purposes.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;
;;; Host Eval
;;;

;;; Primitive Expander Context
;;  just enough to bootstrap :gerbil/expander
(define-struct &context (t ns super table)
  id: _gx#&context::t)

(define-macro (%&context-super ctx)
  `(##vector-ref ,ctx 3))
(define-macro (%&context-table ctx)
  `(##vector-ref ,ctx 4))

(define-struct &runtime (id)
  id: _gx#&runtime::t)
(define-struct &syntax (e id)
  id: _gx#&syntax::t)
(define-struct (&macro &syntax::t) ()
  id: _gx#&macro::t)
(define-struct (&special-form &macro::t) ()
  id: _gx#&special-form::t)
(define-struct (&core-form &syntax::t) ()
  id: _gx#&core-form::t)
(define-struct (&core-expression &core-form::t) ()
  id: _gx#&core-expression::t)
(define-struct (&core-special-form &core-form::t) ()
  id: _gx#&core-special-form::t)
(define-struct (&struct-info &syntax::t) ()
  id: _gx#&struct-info::t)
(define-struct (&feature &syntax::t) ()
  id: _gx#&feature::t)

(define-struct (&module &context::t) (id path import export)
  id: _gx#&module::t)

(define _gx#*modules*
  (make-hash-table))
(define _gx#*core*
  (make-hash-table-eq))
(define _gx#*top*
  (make-&context
   'top #f
   (make-&context 'root #f #f _gx#*core*)
   (make-hash-table-eq)))

;; the gerbil readtable
(define (_gx#make-readtable)
  (let ((rt (##make-standard-readtable)))
    (macro-readtable-write-extended-read-macros?-set! rt #t)
    (_gx#readtable-bracket-keyword-set! rt '@list)
    (_gx#readtable-brace-keyword-set! rt '@method)
    (eval-if (>= (##vector-length (current-readtable)) 42)
      (##readtable-char-sharp-handler-set! rt #\! _gx#read-sharp-bang)
      (void))
    rt))

(eval-if (>= (##vector-length (current-readtable)) 42)
  (begin
    (define (_gx#readtable-bracket-keyword-set! rt kw)
      (macro-readtable-bracket-handler-set! rt kw))
    (define (_gx#readtable-brace-keyword-set! rt kw)
      (macro-readtable-brace-handler-set! rt kw))
    (define (_gx#read-sharp-bang re next start-pos)
      (if (eq? start-pos 0)
        (let* ((line (##read-line (macro-readenv-port re) #\newline #f ##max-fixnum))
               (script-line (substring line 1 (string-length line))))
          (macro-readenv-script-line-set! re script-line)
          (##script-marker))
        (##read-sharp-bang re next start-pos)))
    (set! ##readtable-setup-for-language! void))
  (begin
    (define (_gx#readtable-bracket-keyword-set! rt kw)
      (macro-readtable-bracket-keyword-set! rt kw))
    (define (_gx#readtable-brace-keyword-set! rt kw)
      (macro-readtable-brace-keyword-set! rt kw))))

(define _gx#*readtable*
  (_gx#make-readtable))

;; interpretation parameters
(define &current-expander
  (make-parameter #f))
(define &current-compiler
  (make-parameter #f))
(define &current-context
  (make-parameter #f))
(define &current-path
  (make-parameter '()))

(define (&core-resolve id #!optional (ctx (&current-context)))
  (and ctx
       (let ((id (&AST-e id)))
         (let lp ((ctx ctx))
           (cond
            ((table-ref (%&context-table ctx) id #f) => values)
            ((%&context-super ctx) => lp)
            (else #f))))))

(define (&core-bound-id? id #!optional (is? true))
  (cond
   ((&core-resolve id) => is?)
   (else #f)))

(define (&core-bind-runtime! id eid #!optional (ctx (&current-context)))
  (when eid
    (hash-put! (&context-table ctx) (&AST-e id) (make-&runtime eid))))
(define (&core-bind-syntax! id e #!optional (make make-&syntax))
  (hash-put! _gx#*core* id (if (&syntax? e) e (make e id))))
(define (&core-bind-macro! id e)
  (&core-bind-syntax! id e make-&macro))
(define (&core-bind-special-form! id e)
  (&core-bind-syntax! id e make-&special-form))
(define (&core-bind-user-syntax! id e #!optional (ctx (&current-context)))
  (hash-put! (&context-table ctx) (&AST-e id)
             (if (&syntax? e) e
                 (make-&syntax e (&AST-e id)))))

(define (make-&runtime-id id #!optional (ctx (&current-context)))
  (let ((id (&AST-e id)))
    (cond
     ((eq? id '_) #f)
     ((uninterned-symbol? id)
      (gensym id))
     ((symbol? id)
      (case (&context-t ctx)
        ((local)
         (gensym id))
        ((module)
         (make-symbol (&context-ns ctx) "#" id))
        (else id)))
     (else
      (error "Illegal runtime identifier" id)))))

(define (make-&context-local #!optional (super (&current-context)))
  (make-&context 'local #f super (make-hash-table-eq)))

(define (make-&context-module id ns path
                              #!optional
                              (super (&current-context)))
  (make-&module 'module ns super (make-hash-table-eq) id path #f #f))

;;; eval
(cond-expand (gerbil-bootstrap-expander

;;  expand => compile => ##eval
(define (_gx#eval stx #!optional (ctx _gx#*top*) (expression? #f))
  (parameterize ((&current-context ctx))
    (##eval
     ((&current-compiler)
      ((&current-expander) stx expression?)))))

(define (_gx#eval-syntax stx)
  (_gx#eval stx _gx#*top* #t))

(define (_gx#expand stx #!optional (expression? #f))
  (if expression?
    (_gx#expand-expression stx)
    (_gx#expand-top stx)))

(define (_gx#expand-top stx)
  (let ((stx (_gx#expand* stx)))
    (core-ast-case stx ()
      ((form . _)
       (&core-bound-id? form &core-form?)
       stx)
      (else
       (_gx#expand-expression stx)))))

(define (_gx#expand-expression stx)
  (define (illegal-expression hd . ignore)
    (_gx#raise-syntax-error #f "Bad syntax; illegal expression" stx hd))

  (let ((stx (_gx#expand-head stx)))
    (core-ast-case stx (begin)
      ((begin . body)
       (_gx#expand-block* stx illegal-expression))
      ((form . _)
       (&core-bound-id? form &core-expression?)
       stx)
      ((form . body)
       (&core-bound-id? form &syntax?)
       (illegal-expression stx))
      ((rator . rands)
       (&AST-list? rands)
       (cons* '%#call
              (_gx#expand-expression rator)
              (map _gx#expand-expression (&AST->list rands))))
      (id
       (&core-bound-id? id &runtime?)
       `(%#ref ,(&AST (&runtime-id (&core-resolve id)) id)))
      (id
       (&AST-id? id)
       `(%#ref ,id))
      (e
       (&AST-datum? e)
       `(%#quote ,(&AST-e e))))))

(define (_gx#expand-head stx)
  (define (stop? stx)
    (core-ast-case stx ()
      ((form . _)
       (&AST-id? form)
       (&core-bound-id? form (lambda (bind)
                               (or (&runtime? bind)
                                   (&special-form? bind)
                                   (&core-form? bind)))))
      (else #f)))

  (_gx#expand* stx stop?))

(define (_gx#expand* stx #!optional (stop? false))
  (let lp ((stx stx))
    (if (stop? stx) stx
        (let ((rstx (_gx#expand1 stx)))
          (if (eq? stx rstx) stx
              (lp rstx))))))

(define (_gx#expand1 stx)
  (define (expand1 id)
    (cond
     ((&core-resolve id)
      => (lambda (bind)
           (if (&macro? bind)
             ((&syntax-e bind) stx)
             stx)))
     (else stx)))

  (core-ast-case stx ()
    ((id . _)
     (&AST-id? id)
     (expand1 id))
    (id
     (&AST-id? id)
     (expand1 id))
    (else stx)))

(define (_gx#resolve-path path #!optional (loc #f))
  (error "XXX"))

(define (_gx#resolve-module-path path #!optional (loc #f))
  (let* ((rel (cond
               (loc
                (let ((src (##locat-container loc)))
                  (if (string? src)
                    (path-directory src)
                    (macro-absent-obj))))
               ((not (null? (&current-path)))
                (path-directory (car (&current-path))))
               (else
                (current-directory))))
         (path (path-expand path rel)))
    (if (member (path-extension path) '(".ss" ".scm")) path
        (string-append path ".ss"))))

(define (_gx#import-module rpath #!optional (reload? #f))
  (let ((path (path-normalize rpath)))
    (cond
     ((and (not reload?) (hash-get _gx#*modules* path))
      => values)
     ((member path (&current-path))
      (error "Circular import" path))
     (else
      (let-values (((id ns body) (_gx#read-module path)))
        (let ((ctx (make-&context-module id ns path)))
          (parameterize ((&current-path (cons path (&current-path))))
            (_gx#eval (%make-AST (cons 'begin-module% body)
                                 (##make-locat path 0))
                      ctx #f)
            (hash-put! _gx#*modules* path ctx)
            ctx)))))))

(define (_gx#read-module path)
  (let lp ((rest (read-syntax-from-file path)) (ns #f) (pkg #f))
    (core-ast-case rest ()
      ((prelude: _ . rest)              ; ignore
       (lp rest ns pkg))
      ((namespace: ns . rest)
       (lp rest (symbol->string (&AST-e ns)) pkg))
      ((package: pkg . rest)
       (lp rest ns (symbol->string (&AST-e pkg))))
      (else
       (let* ((name (path-strip-extension (path-strip-directory path)))
              (id (string->symbol (if pkg (string-append pkg "/" name) name))))
         (values id (or ns id) rest))))))

;;; core macros
;; blocks
(define (_gx#expand-block stx expand-special #!optional (begin-form '%#begin))
  (define (expand-special/splice? form)
    (memq (&AST-e form) '(include cond-expand)))

  (define (expand-special? form)
    (&core-bound-id? form &special-form?))

  (define (expand-splice hd body rest r)
    (if (&AST-list? body)
      (K (foldr cons rest (&AST->list body)) r)
      (_gx#raise-syntax-error #f "Bad syntax" stx hd)))

  (define (expand-special/splice hd rest r)
    (core-ast-case hd (cond-expand include)
      ((cond-expand . _)
       (K (cons (_gx#cond-expand hd) rest) r))
      ((include path)
       (string? (&AST-e path))
       (let* ((rpath
               (_gx#resolve-path (&AST-e path)
                                 (or (&AST-source path)
                                     (&AST-source hd))))
              (block
               (_gx#include hd rpath))
              (rbody
               (parameterize ((&current-path (cons rpath (&current-path))))
                 (_gx#expand-block block expand-special #f))))
         (K rest (foldr cons r rbody))))))

  (define (K rest r)
    (core-ast-case rest ()
      ((hd . rest)
       (let ((hd (_gx#expand-head hd)))
         (core-ast-case hd (begin)
           ((begin . body)
            (expand-splice hd body rest r))
           ((form . _)
            (expand-special/splice? form)
            (expand-special/splice hd rest r))
           ((form . _)
            (expand-special? form)
            (expand-special hd K rest r))
           (else
            (K rest (cons (_gx#expand-expression hd) r))))))
      (else
       (if begin-form
         (cons begin-form (reverse r))
         r))))

  (core-ast-case stx ()
    ((_ . body)
     (&AST-list? body)
     (K (&AST->list body) '()))))

(define (_gx#expand-block* stx expand-special)
  (core-match (_gx#expand-block stx expand-special #f)
    (() (_gx#raise-syntax-error #f "Bad syntax; empty body" stx))
    ((expr) expr)
    (body
     (cons '%#begin (reverse body)))))

;;; core macros
(define-core-special-form (begin stx)
  (define (expand-special hd K rest r)
    (K rest (cons (_gx#expand* hd) r)))

  (_gx#expand-block stx expand-special))

(define-core-macro (begin-local% stx)
  (define (expand-special hd K rest r)
    (K '() (cons (expand-internal hd rest) r)))

  (define (expand-internal hd rest)
    (parameterize ((&current-context (make-&context-local)))
      (wrap-internal
       (_gx#expand-block
        (&AST (cons* 'begin hd rest) stx)
        expand-internal-special #f))))

  (define (expand-internal-special hd K rest r)
    (core-ast-case hd (define-values define-syntax)
      ((define-values ids _)
       (&AST-id-list? ids)
       (let ((ids (&AST->list ids)))
         (for-each (lambda (id) (&core-bind-runtime! id (make-&runtime-id id)))
                   ids)
         (K rest (cons hd r))))
      ((define-syntax id expr)
       (&AST-id? id)
       (begin
         (&core-bind-user-syntax! id (_gx#eval-syntax expr))
         (K rest r)))))

  (define (wrap-internal rbody)
    (let lp ((rest rbody) (bind '()) (body '()))
      (core-ast-case rest ()
        ((hd . rest)
         (core-ast-case hd (define-values)
           ((define-values ids expr)
            (lp rest
                (cons (list (map (lambda (id)
                                   (&AST (cond
                                          ((&core-resolve id) => &runtime-id)
                                          (else #f))
                                         id))
                                 (&AST->list ids))
                            (_gx#expand-expression expr))
                      bind)
                body))
           (else
            (if (null? bind)
              (lp rest bind (cons hd body))
              (lp rest (cons (list #f hd) bind) body)))))
        (else
         (let ((body
                (core-match body
                  (() (_gx#raise-syntax-error #f "Bad syntax" stx))
                  ((expr) expr)
                  (else
                   (&AST (cons '%#begin body) stx)))))
           (if (null? bind) body
               (&AST (list '%#letrec*-values bind body) stx)))))))

  (_gx#expand-block* stx expand-special))

(define-core-special-form (begin-module% stx)
  (define (expand-special hd K rest r)
    (core-ast-case hd (define-values define-syntax import export)
      ((define-values ids _)
       (&AST-id-list? ids)
       (let ((ids (&AST->list ids)))
         (for-each (lambda (id) (&core-bind-runtime! id (make-&runtime-id id)))
                   ids)
         (K rest (cons hd r))))
      ((define-syntax id expr)
       (&AST-id? id)
       (begin
         (&core-bind-user-syntax! id (_gx#eval-syntax expr))
         (K rest r)))
      ((import . _)
       (begin
         (_gx#import hd)
         (K rest r)))
      ((export . _)
       (begin
         (_gx#export hd)
         (K rest r)))))

  (define (wrap-module rbody)
    (let lp ((rest rbody) (body '()))
      (core-match rest
        ((hd . rest)
         (core-ast-case hd (define-values)
           ((define-values ids expr)
            (let ((eids (map (lambda (id)
                               (&AST (cond
                                      ((&core-resolve id) => &runtime-id)
                                      (else #f))
                                     id))
                             (&AST->list ids)))
                  (expr (_gx#expand-expression expr)))
              (lp rest
                  (cons
                   (&AST `(%#define-values ,eids ,expr) hd)
                   body))))
           (else
            (lp rest (cons hd body)))))
        (else
         (cons '%#begin body)))))

  (wrap-module
   (_gx#expand-block stx expand-special #f)))

(define-core-special-form (include stx #!optional (rpath #f))
  (error "XXX"))

(define-core-special-form (cond-expand stx)
  (define (satisfied? condition)
    (core-ast-case condition ()
      (id
       (&AST-id? id)
       (&core-bound-id? id &feature?))
      ((combinator . body)
       (&AST-list? body)
       (let ((body (&AST->list body)))
         (case (&AST-e combinator)
           ((not) (not (ormap satisfied? body)))
           ((and) (andmap satisfied? body))
           ((or)  (ormap satisfied? body))
           (else
            (_gx#raise-syntax-error #f "Bad syntax" stx combinator)))))))

  (define (loop rest)
    (core-ast-case rest ()
      ((hd . rest)
       (core-ast-case hd ()
         ((condition . body)
          (cond
           ((&AST-eq? condition 'else)
            (if (&AST-null? rest) body
                (_gx#raise-syntax-error #f "Bad syntax" stx hd)))
           ((satisfied? condition)
            body)
           (else
            (loop rest))))))
      (() '())))

  (core-ast-case stx ()
    ((_ . clauses)
     (&AST-list? clauses)
     (cons 'begin (loop clauses)))))

(define-core-special-form (extern stx)
  (error "XXX"))

(define-core-special-form (define-values stx)
  (core-ast-case stx ()
    ((_ hd expr)
     (&AST-id-list? hd)
     (let* ((ids (&AST->list hd))
            (eids (map make-&runtime-id ids)))
       (for-each &core-bind-runtime! ids eids)
       `(%#define-values
         ,(map &AST eids ids)
         ,(_gx#expand-expression expr))))))

(define-core-special-form (define-syntax stx)
  (core-ast-case stx ()
    ((_ id expr)
     (&AST-id? id)
     (let ((e (_gx#eval-syntax expr)))
       (&core-bind-user-syntax! id e)
       '(%#begin)))))

(define-core-macro (def stx)
  (core-ast-case stx ()
    ((_ id expr)
     (&AST-id? id)
     `(define-values (,id) ,expr))
    ((_ (id . args) . body)
     (&AST-id? id)
     `(define-values (,id)
        ,(&AST (cons* 'lambda args body)
               stx)))))

(define-core-macro (def* stx)
  (core-ast-case stx ()
    ((_ id . clauses)
     (&AST-id? id)
     `(define-values (,id)
        ,(&AST (cons 'case-lambda clauses)
               stx)))))

(define-core-macro (lambda stx)
  (define (opt-lambda? hd)
    (let lp ((rest hd) (opt? #f))
      (core-ast-case rest ()
        ((id . rest)
         (&AST-id? id)
         (and (not opt?)
              (lp rest #f)))
        (((id _) . rest)
         (&AST-id? id)
         (lp rest #t))
        (() opt?)
        (tail
         (and (&AST-id? tail) opt?)))))

  (define (opt-lambda-split hd)
    (let lp ((rest hd) (pre '()) (opt '()))
      (core-ast-case rest ()
        ((hd . rest)
         (core-ast-case hd ()
           (id
            (&AST-id? id)
            (lp rest (cons (generate-id id) pre) opt))
           ((id expr)
            (lp rest pre
                (cons (cons (generate-id id) expr)
                      opt)))))
        (tail
         (values (reverse pre) (reverse opt)
                 (if (&AST-id? tail)
                   (generate-id tail)
                   tail))))))

  (define (generate-id id)
    (if (&AST-eq? id '_)
      (gensym)
      id))

  (define (generate impl pre opt tail)
    (cons
     (&AST `(,pre ,(generate1 impl pre opt))
           stx)
     (generate* impl pre opt tail)))

  (define (generate* impl pre opt tail)
    (let recur ((opt opt) (right '()))
      (core-match opt
        (((eid . expr) . rest)
         (let* ((right* (cons eid right))
                (right (reverse right)))
           (cons
            (&AST `((,@pre ,@right ,eid)
                    ,(generate1 impl (foldr cons (reverse right*) pre) rest))
                  stx)
            (recur rest right*))))
        (else
         (if (&AST-null? tail) '()
             (list
              (&AST
               (let* ((right (reverse right))
                      (args (foldr cons tail `(,@pre ,@right))))
                 `(,args
                   ,(&AST `(apply ,impl ,@pre ,@right ,tail)
                          stx)))
               stx)))))))

  (define (generate1 impl pre opt)
    (let recur ((opt opt) (right '()))
      (core-match opt
        (((id . expr) . rest)
         (let ((eid (generate-id id)))
           (&AST `(let-values (((,eid) ,expr))
                    ,(recur rest (cons eid right)))
                 stx)))
        (else
         (&AST `(,impl ,@pre ,@(reverse right))
               stx)))))

  (core-ast-case stx ()
    ((_ hd . body)
     (&AST-bind-list? hd)
     `(lambda% ,hd ,@body))
    ((_ hd . body)
     (opt-lambda? hd)
     (let-values (((pre opt tail) (opt-lambda-split hd)))
       (let ((impl (gensym))
             (args (foldr cons tail `(,@pre ,@(map car opt)))))
         `(let-values (((,impl)
                        ,(&AST `(lambda% ,args ,@body)
                               stx)))
            ,(&AST `(case-lambda ,@(generate impl pre opt tail))
                   stx)))))))

(define-core-macro (case-lambda stx)
  (core-ast-case stx ()
    ((_ . clauses)
     `(%#case-lambda
       ,@(map (lambda (clause)
                (cdr (_gx#lambda% (&AST (cons 'case-lambda-clause clause) clause))))
              clauses)))))

(define-core-macro (lambda% stx)
  (define (wrap-lambda hd body)
    `(%#lambda ,hd ,(_gx#begin-local% (&AST (cons 'begin-lambda-body body) stx))))

  (core-ast-case stx ()
    ((_ hd . body)
     (&AST-bind-list? hd)
     (parameterize ((&current-context (make-&context-local)))
       (let lp ((rest hd) (args '()))
         (core-ast-case rest ()
           ((hd . rest)
            (let ((eid (make-&runtime-id hd)))
              (&core-bind-runtime! hd eid)
              (lp rest (cons (&AST eid hd) args))))
           (()
            (wrap-lambda (reverse args) body))
           (tail
            (let ((eid (make-&runtime-id tail)))
              (&core-bind-runtime! tail eid)
              (wrap-lambda (foldl cons (&AST eid tail) args) body)))))))))

(define-core-macro (let stx)
  (core-ast-case stx ()
    ((_ id hd . body)
     (&AST-id? id)
     (let* ((hd (&AST->list hd))
            (hd-ids (map (lambda (bind)
                           (core-ast-case bind ()
                             ((hd-id _)
                              (&AST-id? hd-id)
                              hd-id)))
                         hd))
            (args (map (lambda (bind)
                          (core-ast-case bind ()
                            ((_ expr) expr)))
                       hd)))
       `((letrec-values (((,id) ,(&AST `(lambda% ,hd-ids ,@body) stx))) ,id)
         ,@args)))
    ((_ (id expr) . body)
     (&AST-id? id)
     `(let-values (((,id) ,expr)) ,@body))
    ((_ hd . body)
     (&AST-list? hd)
     `(let-values ,(map (lambda (bind)
                          (core-ast-case bind ()
                            ((id expr)
                             (&AST-id? id)
                             `((,id) ,expr))))
                        (&AST->list hd))
        ,@body))))

(define-core-macro (let* stx)
  (core-ast-case stx ()
    ((_ () . body)
     `(let-values () ,@body))
    ((_ ((id expr) . rest) . body)
     `(let-values (((,id) ,expr))
        ,(&AST `(let* ,rest ,@body) stx)))))

(define-core-macro (letrec stx)
  (core-ast-case stx ()
    ((_ hd . body)
     (&AST-list? hd)
     `(letrec-values ,(map (lambda (bind)
                             (core-ast-case bind ()
                               ((id expr)
                                (&AST-id? id)
                                `((,id) ,expr))))
                           (&AST->list hd))
        ,@body))))

(define-core-macro (let-values stx)
  (core-ast-case stx ()
    ((_ hd . body)
     (&AST-list? hd)
     (let* ((hd (&AST->list hd))
            (ids* (map (lambda (bind)
                         (core-ast-case bind ()
                           ((ids _)
                            (&AST-list? ids)
                            (&AST->list ids))))
                       hd))
            (exprs (map (lambda (bind)
                          (core-ast-case bind ()
                            ((_ expr)
                             (_gx#expand-expression expr))))
                        hd)))
       (parameterize ((&current-context (make-&context-local)))
         (let* ((eids* (map (lambda (ids) (map make-&runtime-id ids)) ids*))
                (eids** (map (lambda (ids eids) (map &AST eids ids)) ids* eids*)))
           (for-each
             (lambda (ids eids)
               (for-each &core-bind-runtime! ids eids))
             ids* eids*)
           `(%#let-values ,(map list eids** exprs)
                          ,(_gx#begin-local%
                            (&AST (cons 'begin-let-body body) stx)))))))))

(define-core-macro (let*-values stx)
  (core-ast-case stx ()
    ((_ (hd . rest) . body)
     `(let-values (,hd)
        ,(&AST `(let*-values ,rest ,@body) stx)))
    ((_ () . body)
     `(let-values () ,@body))))


(define-core-macro (letrec-values stx)
  (core-ast-case stx ()
    ((_ hd . body)
     (&AST-list? hd)
     (let* ((hd (&AST->list hd))
            (ids* (map (lambda (bind)
                         (core-ast-case bind ()
                           ((ids _)
                            (&AST-list? ids)
                            (&AST->list ids))))
                       hd))
            (exprs (map (lambda (bind)
                          (core-ast-case bind ()
                            ((_ expr) expr)))
                        hd)))
       (parameterize ((&current-context (make-&context-local)))
         (let* ((eids* (map (lambda (ids) (map make-&runtime-id ids)) ids*))
                (eids** (map (lambda (ids eids) (map &AST eids ids)) ids* eids*)))
           (for-each
             (lambda (ids eids)
               (for-each &core-bind-runtime! ids eids))
             ids* eids*)
           `(%#letrec-values ,(map list eids**
                                   (map _gx#expand-expression exprs))
                             ,(_gx#begin-local%
                               (&AST (cons 'begin-let-body body) stx)))))))))

(define-core-macro (quote stx)
  (core-ast-case stx ()
    ((_ obj)
     `(%#quote ,(&AST->datum obj)))))

(define-core-macro (quasiquote stx)
  (define (simple-quote? e)
    (core-ast-case e (unquote unquote-splicing)
      ((unquote _) #f)
      ((unquote-splicing _) #f)
      ((hd . tl)
       (and (simple-quote? hd)
            (simple-quote? tl)))
      (else
       (cond
        ((vector? (&AST-e e))
         (andmap simple-quote? (vector->list (&AST-e e))))
        ((box? (&AST-e e))
         (simple-quote? (unbox (&AST-e e))))
        (else #t)))))

  (define (generate e d)
    (core-ast-case e (quasiquote unquote unquote-splicing)
      ((quasiquote e)
       `(list ,(generate e (fx1+ d))))
      ((unquote e)
       (fxzero? d)
       e)
      ((unquote e)
       `(list (quote unquote) ,(generate e (fx1- d))))
      ((unquote-splicing e)
       (fxzero? d)
       `(foldr cons '() ,e))
      ((unquote-splicing e)
       `(list (quote unquote-splicing) ,(generate e (fx1- d))))
      (((unquote-splicing hd) . rest)
       (fxzero? d)
       `(foldr cons ,(generate rest d) ,hd))
      ((hd . rest)
       `(cons ,(generate hd d) ,(generate rest d)))
      (else
       (cond
        ((vector? (&AST-e e))
         `(list->vector ,(generate (vector->list (&AST-e e)) d)))
        ((box? (&AST-e e))
         `(box ,(generate (unbox (&AST-e e)) d)))
        (else
         `(quote ,e))))))

  (core-ast-case stx ()
    ((_ e)
     (simple-quote? e)
     `(%#quote ,e))
    ((_ e)
     (generate e 0))))

(define-core-macro (set! stx)
  (core-ast-case stx ()
    ((_ (id . args) expr)
     (and (&AST-id? id) (&AST-list? args))
     (let ((setf (&AST (make-symbol (&AST-e id) "-set!") id)))
       `(,setf ,@args ,expr)))
    ((_ id expr)
     (&core-bound-id? id &runtime?)
     `(%#set! ,(&AST (&runtime-id (&core-resolve id)) id)
              ,(_gx#expand-expression expr)))
    ((_ id expr)
     (&AST-id? id)
     `(%#set! ,id ,(_gx#expand-expression expr)))))

(define-core-macro (if stx)
  (core-ast-case stx ()
    ((_ e1 e2 e3)
     `(%#if ,(_gx#expand-expression e1)
            ,(_gx#expand-expression e2)
            ,(_gx#expand-expression e3)))
    ((_ e1 e2)
     `(if ,e1 ,e2 #!void))))

(define-core-macro (cond stx)
  (core-ast-case stx (else =>)
    ((_ (else . body))
     `(begin ,@body))
    ((_ (expr => recv) . rest)
     (let ((tmp (gensym)))
       `(let ((,tmp ,expr))
          (if ,tmp
            (,recv ,tmp)
            (cond ,@rest)))))
    ((_ (expr) . rest)
     (let ((tmp (gensym)))
       `(let ((,tmp expr))
          (if ,tmp ,tmp
              (cond  ,@rest)))))
    ((_ (expr . body) . rest)
     `(if ,expr
        (begin ,@body)
        (cond ,@rest)))
    ((_) #!void)))

(define-core-macro (and stx)
  (core-ast-case stx ()
    ((_) #t)
    ((_ e1) e1)
    ((_ e1 . rest)
     `(if ,e1 (and ,@rest) #f))))

(define-core-macro (or stx)
  (core-ast-case stx ()
    ((_) #f)
    ((_ e1) e1)
    ((_ e1 . rest)
     (let ((tmp (gensym)))
       `(let ((,tmp ,e1))
          (if ,tmp ,tmp (or ,@rest)))))))

(define-core-macro (case stx)
  (define (generate tgt clauses)
    (let recur ((rest clauses))
      (core-ast-case rest ()
        ((hd . rest)
         (core-ast-case hd (=>)
           ((_else . body)
            (&AST-eq? _else 'else)
            (if (&AST-null? rest)
              (&AST `(begin ,@body) stx)
              (_gx#raise-syntax-error #f "Bad syntax" stx hd)))
           ((hd => K)
            `(if ,(generate1 hd tgt)
               (,K ,tgt)
               ,(recur rest)))
           ((hd . body)
            `(if ,(generate1 hd tgt)
               (begin ,@body)
               ,(recur rest)))))
        (else #!void))))

  (define (generate1 hd tgt)
    (core-ast-case hd ()
      ((datum)
       (let ((cmp
              (cond
               ((eq-datum? datum) 'eq?)
               ((eqv-datum? datum) 'eqv?)
               (else 'equal?))))
         `(,cmp ,tgt (quote ,datum))))
      (datums
       (&AST-list? datums)
       (let* ((datums (&AST->list datums))
              (cmp
               (cond
                ((andmap eq-datum? datums) 'memq)
                ((andmap eqv-datum? datums) 'memv)
                (else 'member))))
         `(,cmp ,tgt (quote ,datums))))))

  (define (eq-datum? x)
    (let ((e (&AST-e x)))
      (or (symbol? x)
          (keyword? x)
          (boolean? x)
          (char? x)
          (void? x)
          (dssl-object? x))))

  (define (eqv-datum? x)
    (or (eq-datum? x)
        (number? (&AST-e x))))

  (core-ast-case stx ()
    ((_ expr . clauses)
     (&AST-list? clauses)
     (let ((tmp (gensym)))
       `(let-values (((,tmp) ,expr))
          ,(generate tmp clauses))))))

;; simplified; no slots or initial methods and other sugar
(define-core-macro (defstruct stx)
  (define (generate id super fields opts)
    (let* ((pre  (symbol->string (&AST-e id)))
           (type (&AST (make-symbol pre "::t") stx))
           (is?  (&AST (make-symbol pre "?") stx))
           (make (&AST (make-symbol "make-" pre) stx))
           (pref (map (lambda (field)
                        (string-append pre "-" (symbol->string (&AST-e field))))
                      fields))
           (getf (map (lambda (pref)
                        (&AST (string->symbol pref) stx))
                      pref))
           (setf (map (lambda (pref)
                        (&AST (make-symbol pref "-set!") stx))
                      pref))
           (off  (let lp ((rest fields) (n 0) (r '()))
                   (core-match rest
                     ((_ . rest)
                      (lp rest (fx+ n 1) (cons n r)))
                     (else
                      (reverse r)))))
           (tmp  (gensym))
           (type-id
            `(quote ,(or (getopt id: opts) (gensym id))))
           (type-name
            `(quote ,(or (getopt name: opts) id)))
           (type-ctor
            `(quote ,(or (getopt constructor: opts) #f)))
           (type-plist
            (if (&AST-e (getopt final: opts))
              '(quote ((final: . #t)))
              '(quote ())))
           (type-super
            (and super (&syntax-e super)))
           (type-len
            (length fields)))
      `(begin
         (define-syntax ,id
           (make-&struct-info (quote ,type) (quote ,id)))
         (define-values (,type)
           (make-struct-type ,type-id ,type-super ,type-len
                             ,type-name ,type-plist ,type-ctor))
         (define-values (,is?)
           (make-struct-predicate ,type))
         (define-values (,make)
           (lambda ,tmp
             (apply make-struct-instance ,type ,tmp)))
         ,@(map (lambda (getf off)
                  `(define-values (,getf)
                     (make-struct-field-accessor ,type ,off)))
                getf off)
         ,@(map (lambda (setf off)
                  `(define-values (,setf)
                     (make-struct-field-mutator ,type ,off)))
                setf off))))

  (define (getopt key opts)
    (let lp ((rest opts))
      (core-ast-case rest ()
        ((k v . rest)
         (if (&AST-eq? k key) v
             (lp rest)))
        (else #f))))

  (core-ast-case stx ()
    ((_ hd fields . opts)
     (and (&AST-id-list? fields)
          (&AST-list? opts))
     (let ((fields (&AST->list fields)))
       (core-ast-case hd ()
         ((id super)
          (and (&AST-id? id)
               (&core-bound-id? super &struct-info?))
          (generate (&AST-e id) (&core-resolve super) fields opts))
         (id
          (&AST-id? id)
          (generate (&AST-e id) #f fields opts)))))))

(define-core-macro (defmethod stx)
  (core-ast-case stx (@method)
    ((_ (@method id type) impl)
     (and (&AST-id? id)
          (&core-bound-id? type &struct-info?))
     (let ((klass (&syntax-e (&core-resolve type)))
           (call-super (&AST '@super stx))
           (super (gensym))
           (next  (gensym))
           (args  (gensym))
           (type::method
            (&AST (make-symbol (&AST-e type) "::" (&AST-e id))
                  id)))
       `(begin
          ,(&AST
            `(def ,type::method
               (let ((,call-super
                      ,(&AST
                        `(lambda ,args
                           (cond
                            ((struct-find-next-method ,klass (quote ,id))
                             => (cut apply <> ,args))
                            (else
                             (error "Cannot find super method" (quote ,id)))))
                        stx)))
                 ,impl))
            stx)
          (bind-method! ,klass (quote ,id) ,type::method))))))

(define-core-macro (@method stx)
  (core-ast-case stx ()
    ((_ id obj . args)
     `(call-method ,obj (quote ,id) ,@args))))

(define-core-macro (@list stx)
  (core-ast-case stx ()
    ((_ . rest)
     (let recur ((rest rest))
       (core-ast-case rest (...)
         (() '(quote ()))
         ((:: tail) tail)
         ((xs ... . rest)
          (&AST
           `(foldr cons ,(recur rest) ,xs)
           stx))
         ((x . rest)
          (&AST
           `(cons ,x ,(recur rest))
           stx))
         (tail tail))))))

;; simplified; no quasiquote, splicing and other sugar
(define-core-macro (match stx)
  (define (generate tgt clauses)
    (core-ast-case clauses ()
      ((clause . rest)
       (core-ast-case clause ()
         ((_else . body)
          (&AST-eq? _else 'else)
          (if (&AST-null? rest)
            (&AST `(begin ,@body) stx)
            (_gx#raise-syntax-error #f "Bad syntax" stx clause)))
         ((hd . body)
          (let (($E (gensym 'E)))
            `(let-values (((,$E)
                           ,(&AST `(lambda% () ,(generate tgt rest))
                                  stx)))
               ,(generate1 hd tgt (&AST `(begin ,@body) stx) `(,$E)))))))
      (else
       (&AST `(error "No clause matching" ,tgt) stx))))

  (define (generate1 hd tgt K E)
    (core-ast-case hd (@list ? quote)
      ((? pred)
       (generate-pred pred tgt K E))
      ((? pred pat)
       (generate-pred pred tgt (generate1 pat tgt K E) E))
      ((quote obj)
       (generate-quote obj tgt K E))
      ((@list . body)
       (generate-list body tgt K E))
      ((struct-id . body)
       (&core-bound-id? struct-id &struct-info?)
       (generate-struct (&syntax-e (&core-resolve struct-id)) body
                        tgt K E))
      (id
       (&AST-id? id)
       (if (&AST-eq? id '_) K
           (&AST `(let-values (((,id) ,tgt)) ,K) stx)))
      (datum
       (&AST-datum? datum)
       (generate-quote datum tgt K E))))

  (define (generate-pred pred tgt K E)
    (define (recur pred)
      (core-ast-case pred (and or not)
        ((and . body)
         `(and ,@(map recur body)))
        ((or . body)
         `(or ,@(map recur body)))
        ((not pred)
         `(not ,(recur pred)))
        (else
         `(,pred ,tgt))))

    (&AST `(if ,(recur pred) ,K ,E) stx))

  (define (generate-quote obj tgt K E)
    (let ((is? (cond
                ((or (symbol? obj)
                     (keyword? obj)
                     (boolean? obj)
                     (fixnum? obj))
                 'eq?)
                ((number? obj)
                 'eqv?)
                (else
                 'equal?))))
      (&AST
       `(if (,is? (quote ,obj) ,tgt) ,K ,E)
       stx)))

  ;; no splice matching
  (define (generate-list rest tgt K E)
    (core-ast-case rest ()
      (()
       (&AST `(if (null? ,tgt) ,K ,E) stx))
      ((:: tail)
       (generate1 tail tgt K E))
      ((hd . rest)
       (let (($hd (gensym 'hd))
             ($tl (gensym 'tl)))
         (&AST
          `(if (pair? ,tgt)
             (let-values (((,$hd) (##car ,tgt))
                          ((,$tl) (##cdr ,tgt)))
               ,(generate1 hd $hd (generate-list rest $tl K E) E))
             ,E)
          stx)))
      (tail
       (generate1 tail tgt K E))))

  (define (generate-struct type-id body tgt K E)
    (define (recur rest n)
      (core-match rest
        ((hd . rest)
         (if (&AST-eq? hd '_)
           (recur rest (fx1+ n))
           (let (($tgt (gensym 'tgt)))
             (&AST
              `(let-values (((,$tgt) (##vector-ref ,tgt ,n)))
                 ,(generate1 hd $tgt (recur rest (fx1+ n)) E))
              stx))))
        (else K)))

    (let* ((body (&AST->list body))
           (len (length body)))
      (&AST
       `(if (and (struct-instance? ,type-id ,tgt)
                 (fx< ,len (##vector-length ,tgt)))
          ,(recur body 1)
          ,E)
       stx)))

  (core-ast-case stx ()
    ((_ expr . clauses)
     (let ((tgt (gensym 'tgt)))
       `(let-values (((,tgt) ,expr))
          ,(generate tgt clauses))))))

(define-core-macro (with stx)
  (define (match-pattern? hd)
    (core-ast-case hd (@list ? quote)
      ((? _) #t)
      ((? _ _) #t)
      ((quote _) #t)
      ((@list . _) #t)
      ((struct-id . body)
       (&core-bound-id? struct-id &struct-info?)
       #t)
      (id (&AST-id? id) #t)
      (datum (&AST-datum? datum) #t)
      (else #f)))

  (core-ast-case stx ()
    ((_ hd . body)
     (and (&AST-list? body)
          (not (&AST-null? body)))
     (core-ast-case hd ()
       ((hd expr)
        (match-pattern? hd)
        `(match ,expr (,hd ,@body)))
       (else
        (let recur ((rest hd))
          (core-ast-case rest ()
            (((hd expr) . rest)
             (match-pattern? hd)
             `(match ,expr (,hd ,(recur rest))))
            (else
             `(begin ,@body)))))))))

(define-core-macro (cut stx)
  (define (generate rest)
    (let lp ((rest rest) (hd '()) (body '()))
      (core-ast-case rest ()
        ((e . rest)
         (core-ast-case e (<> <...>)
           (<>
            (let ((arg (gensym)))
              (lp rest (cons arg hd) (cons arg body))))
           (<...>
            (if (&AST-null? rest)
              (let ((tail (gensym)))
                (values (foldl cons tail hd)
                        (foldl cons (list tail) body)
                        #t))
              (_gx#raise-syntax-error #f "Bad syntax" stx)))
           (else
            (lp rest hd (cons e body)))))
        (else
         (values (reverse hd)
                 (reverse body)
                 #f)))))

  (core-ast-case stx ()
    ((_  . body)
     (and (&AST-list? body)
          (not (&AST-null? body)))
     (let-values (((hd body tail?) (generate body)))
       (if tail?
         `(lambda% ,hd (apply ,@body))
         `(lambda% ,hd ,body))))))

(define-core-macro (core-syntax-case stx)
  (define (generate tgt kws clauses)
    (let recur ((rest clauses))
      (core-ast-case rest ()
        ((clause . rest)
         (core-ast-case clause ()
           ((_else . body)
            (&AST-eq? _else 'else)
            (if (&AST-null? rest)
              (&AST `(begin ,@body) stx)
              (_gx#raise-syntax-error #f "Bad syntax" stx clause)))
           ((pat body)
            (let* (($E (gensym 'E))
                   (E `(,$E)))
              `(let-values ((,E ,(&AST `(lambda% () ,(recur rest)) stx)))
                 ,(generate1 pat tgt kws body E))))
           ((pat fender body)
            (let* (($E (gensym 'E))
                   (E `(,$E)))
              `(let-values ((,E ,(&AST `(lambda% () ,(recur rest)) stx)))
                 ,(generate1 pat tgt kws `(if ,fender ,body ,E) E))))))
        (else
         (&AST `(raise-syntax-error #f "Bad syntax" ,tgt) stx)))))

  (define (generate1 pat tgt kws K E)
    (let recur ((pat pat) (tgt tgt) (K K))
      (core-ast-case pat ()
        ((hd . rest)
         (let (($e  (gensym 'e))
               ($hd (gensym 'hd))
               ($tl (gensym 'tl)))
           `(if (stx-pair? ,tgt)
              (let-values (((,$e) (syntax-e ,tgt)))
                (let-values (((,$hd) (##car ,$e))
                             ((,$tl) (##cdr ,$e)))
                  ,(recur hd $hd (recur rest $tl K))))
              ,E)))
        (id
         (&AST-id? id)
         (cond
          ((&AST-eq? id '_) K)
          ((memq (&AST-e id) kws)
           `(if (and (identifier? ,tgt) (core-identifier=? ,tgt (quote ,id)))
              ,K ,E))
          (else
           `(let-values (((,id) ,tgt)) ,K))))
        (()
         `(if (stx-null? ,tgt) ,K ,E))
        (hd
         (let* ((hd (&AST-e hd))
                (is? (cond
                      ((or (boolean? hd)
                           (char? hd)
                           (keyword? hd)
                           (void? hd)
                           (dssl-object? hd))
                       'stx-eq?)
                      ((number? hd)
                       'stx-eqv?)
                      ((string? hd)
                       'stx-equal?)
                      (else
                       (_gx#raise-syntax-error #f "Bad syntax" stx pat)))))
           `(if (,is? ,tgt (quote ,hd)) ,K ,E))))))

  (core-ast-case stx ()
    ((_ expr kws . clauses)
     (and (&AST-id-list? kws)
          (&AST-list? clauses))
     (let ((tgt (gensym 'tgt)))
       `(let-values (((,tgt) ,expr))
          ,(generate tgt (&AST->datum kws) clauses))))))

;; [simplified] module forms
(define-core-special-form (import stx #!optional (ctx (&current-context)))
  (define (import! mod)
    (if (&module-export mod)
      (let ((tab (hash-copy (&context-table mod))))
        (cond
         ((&module-import mod)
          => (lambda (imports)
               (for-each
                 (lambda (in)
                   (core-match in
                     ((_ . syms)
                      (for-each (lambda (sym) (hash-remove! tab sym)) syms))))
                 imports))))
        (let lp ((rest (hash->list tab)) (in '()))
          (core-match rest
            (((id . e) . rest)
             (hash-put! (&context-table ctx) id e)
             (lp rest (cons id in)))
            (else
             (when (&module? ctx)
               (&module-import-set!
                ctx (cons (cons mod in)
                          (or (&module-import ctx) '()))))))))))
  (core-ast-case stx ()
    ((_ . body)
     (&AST-list? body)
     (let ((body (&AST->list body)))
       (for-each
         (lambda (path-stx)
           (let ((path (&AST-e path-stx)))
             (cond
              ((string? path)
               (let ((rpath
                      (_gx#resolve-module-path path (or (&AST-source path-stx)
                                                        (&AST-source stx)))))
                 (import! (_gx#import-module rpath))))
              ((and (symbol? path) (&core-resolve path))
               => (lambda (bind)
                    (if (and (&syntax? bind) (&module? (&syntax-e bind)))
                      (import! (&syntax-e bind))
                      (_gx#raise-syntax-error #f "Bad syntax" stx path-stx))))
              (else
               (_gx#raise-syntax-error #f "Bad syntax" stx path-stx)))))
         body)
       '(%#begin)))))

(define-core-special-form (export stx #!optional (ctx (&current-context)))
  (if (&module? ctx)
    (core-ast-case stx ()
      ((_ #t)
       (begin
         (&module-export-set! ctx #t)
         '(%#begin))))
    (_gx#raise-syntax-error #f "Bad syntax; illegal context" stx)))

(define-core-macro (require stx)
  (error "XXX"))

;; runtime
(define-core-syntax AST
  (make-&struct-info 'AST::t 'AST))
(define-core-syntax <error>
  (make-&struct-info 'error::t '<error>))

)
(else ))

;; iso to gerbil.expander syntax-error
(define-struct (syntax-error error::t) (context marks phi)
  id: gx#syntax-error::t)

(define (_gx#raise-syntax-error where what stx . details)
  (raise
    (make-syntax-error what (cons stx details) where (&current-context) #f #f)))

(define source-location?
  ##locat?)

(define (source-location-path? obj)
  (and (source-location? obj)
       (string? (##locat-container obj))))

(define (source-location-path obj)
  (and (##locat? obj)
       (##container->path (##locat-container obj))))
