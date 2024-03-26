;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil.expander top syntax
prelude: "../core"
package: gerbil/expander
namespace: gx

(export #t)
(import "common" "stx" "core")
(declare (not safe))

;;; blocks
;; (%#begin <form> ...)
(def (core-expand-begin% stx)
  (def (expand-special hd K rest r)
    (K rest (cons (core-expand-top hd) r)))
  (core-expand-block stx expand-special))

;; (%#begin-syntax top-syntax-form ...)
;; top-syntax-form:
;;  definition
;;  expression
;;  (%#begin-syntax top-syntax-form ...)
;;
;; phi+1 expansion and evaluation
;;  if in module core-top-context
;;   then syntax is residualized to core expanded form
;;   else syntax is evaled to quoted compile-time value
(def (core-expand-begin-syntax% stx)
  (def (expand-special hd K rest r)
    (let (K (lambda (e) (K rest (cons e r))))
      (core-syntax-case hd (%#begin-syntax
                            %#define-values %#define-syntax %#define-alias
                            %#define-runtime)
        ((%#begin-syntax . _)
         (K (core-expand-begin-syntax% hd)))
        ((%#define-values hd-bind expr)
         (core-bind-values? hd-bind)
         (begin
           (core-bind-values! hd-bind)
           (K hd)))
        ((%#define-syntax . _)
         (K (core-expand-define-syntax% hd)))
        ((%#define-alias . _)
         (K (core-expand-define-alias% hd)))
        ((%#define-runtime . _)
         (K (core-expand-define-runtime% hd))))))

  (def (eval-body rbody)
    (let lp ((rest rbody) (body '()) (ebody '()))
      (match rest
        ([hd . rest]
         (core-syntax-case hd (%#define-values %#begin-syntax)
           ((%#define-values hd-bind expr)
            (let (ehd
                  (core-quote-syntax
                   [(core-quote-syntax '%#define-values)
                    (core-quote-bind-values hd-bind)
                    (core-expand-expression expr)]
                   (stx-source hd)))
              (lp rest (cons ehd body) (cons ehd ebody))))
           ((%#begin-syntax . _)
            (lp rest (cons hd body) ebody))
           (else
            (lp rest (cons hd body) (cons hd ebody)))))
        (else
         (values body
                 (eval-syntax*
                  (core-quote-syntax
                   (core-cons '%#begin ebody)
                   (stx-source stx))))))))

  (parameterize ((current-expander-phi (fx1+ (current-expander-phi))))
    (let (rbody (core-expand-block stx expand-special #f))
      (let-values (((expanded-body value) (eval-body rbody)))
        (core-quote-syntax
         (if (module-context? (current-expander-context))
           (core-cons '%#begin-syntax expanded-body)
           [(core-quote-syntax '%#quote) value])
         (stx-source stx))))))

;; (%#begin-foreign foreign-top ...)
(def (core-expand-begin-foreign% stx)
  (core-syntax-case stx ()
    ((_ . body)
     (stx-list? body)
     (core-quote-syntax
      (core-cons '%#begin-foreign body)
      (stx-source stx)))))

;; (%#begin-module body ...)
;; transient form for module expansion; cannot appear in the wild
(def (core-expand-begin-module% stx)
  (raise-syntax-error #f "Illegal expansion" stx))

;; (%#begin-annotation annotation expr ...)
(def (core-expand-begin-annotation% stx)
  (core-syntax-case stx ()
    ((_ ann expr)
     (core-quote-syntax
      [(core-quote-syntax '%#begin-annotation) ann
       (core-expand-expression expr)]
      (stx-source stx)))))

;; local expression blocks -- lambda/let mf
(def (core-expand-local-block stx body)
  (def (expand-special hd K rest r)
    (K [] (cons (expand-internal hd rest) r)))

  (def (expand-internal hd rest)
    (parameterize ((current-expander-context (make-local-context)))
      (wrap-internal
       (core-expand-block
        (stx-wrap-source (cons* '%#begin hd rest)
                         (stx-source stx))
        expand-internal-special #f))))

  (def (expand-internal-special hd K rest r)
    (core-syntax-case hd (%#define-values
                          %#define-syntax %#define-alias
                          %#declare)
      ((%#define-values hd-bind expr)
       (core-bind-values? hd-bind)
       (begin
         (core-bind-values! hd-bind)
         (K rest (cons hd r))))
      ((%#define-syntax . _)
       (begin
         (core-expand-define-syntax% hd)
         (K rest r)))
      ((%#define-alias . _)
       (begin
         (core-expand-define-alias% hd)
         (K rest r)))
      ((%#declare . _)
       (K rest (cons (core-expand-declare% hd) r)))))

  (def (wrap-internal rbody)
    (let lp ((rest rbody) (decls []) (bind []) (body []))
      (core-syntax-case rest ()
        ((hd . rest)
         (core-syntax-case hd (%#define-values %#declare)
           ((%#define-values hd-bind expr)
            (lp rest decls
                (cons [(core-quote-bind-values hd-bind)
                       (core-expand-expression expr)]
                      bind)
                body))
           ((%#declare . xdecls)
            (lp rest (stx-foldr cons decls xdecls) bind body))
           (else
            (if (null? bind)
              (lp rest decls bind (cons hd body))
              (lp rest decls (cons [#f hd] bind) body)))))
        (else
         (let* ((body
                 (match body
                   ([] (raise-syntax-error #f "Bad syntax; empty body" stx))
                   ([expr] expr)
                   (else
                    (core-quote-syntax
                     (core-cons '%#begin body)
                     (stx-source stx)))))
                (body
                 (if (null? bind) body
                     (core-quote-syntax
                      [(core-quote-syntax '%#letrec*-values) bind body]
                      (stx-source stx)))))
           (if (null? decls) body
               (core-quote-syntax
                [(core-quote-syntax '%#begin-annotation) decls body]
                (stx-source stx))))))))

  (core-expand-block*
   (stx-wrap-source (cons '%#begin body)
                    (stx-source stx))
   expand-special))

;; (%#declare decl ...)
(def (core-expand-declare% stx)
  (core-syntax-case stx ()
    ((_ . body)
     (stx-list? body)
     (core-quote-syntax
      (core-cons '%#declare
        (stx-map
         (lambda (decl)
           (core-syntax-case decl ()
             ((head . args)
              (stx-list? args)
              (stx-map core-quote-syntax decl))))
         body))
      (stx-source stx)))))

;;; definitions
;; (%#extern (id binding-id) ...)
(def (core-expand-extern% stx)
  (core-syntax-case stx ()
    ((_ . body)
     (let lp ((rest body) (r []))
       (core-syntax-case rest ()
         (((id eid) . rest)
          (and (identifier? id)
               (identifier? eid))
          (let (eid (stx-e eid))
            (core-bind-extern! id eid)
            (lp rest (cons [(core-quote-syntax id) eid] r))))
         (()
          (core-quote-syntax
           (core-cons '%#extern (reverse r))
           (stx-source stx)))
         (else
          (raise-syntax-error #f "Bad syntax; %#extern expects list of (internal external) identifier lists" stx)))))))

;; (%#define-values hd expr)
(def (core-expand-define-values% stx)
  (core-syntax-case stx ()
    ((_ hd expr)
     (core-bind-values? hd)
     (begin
       (core-bind-values! hd)
       (core-quote-syntax
        [(core-quote-syntax '%#define-values)
         (core-quote-bind-values hd)
         (core-expand-expression expr)]
        (stx-source stx))))))

;; (%#define-runtime id binding-id)
(def (core-expand-define-runtime% stx)
  (core-syntax-case stx ()
    ((_ id binding-id)
     (and (identifier? id) (identifier? binding-id))
     (let (eid (stx-e binding-id))
       (core-bind-runtime-reference! id eid)
       (core-quote-syntax
        [(core-quote-syntax '%#define-runtime)
         (core-quote-syntax id)
         eid])))))

;; (%#define-syntax id expr)
(def (core-expand-define-syntax% stx)
  (core-syntax-case stx ()
    ((_ id expr)
     (identifier? id)
     (let-values (((e-stx e) (core-expand-expression+1 expr)))
       (core-bind-syntax! id e)
       (core-quote-syntax
        [(core-quote-syntax '%#define-syntax)
         (core-quote-syntax id)
         e-stx]
        (stx-source stx))))))

;; (%#define-alias id id)
(def (core-expand-define-alias% stx)
  (core-syntax-case stx ()
    ((_ id alias-id)
     (and (identifier? id)
          (identifier? alias-id))
     (let (alias-id (core-quote-syntax alias-id))
       (core-bind-alias! id alias-id)
       (core-quote-syntax
        [(core-quote-syntax '%#define-alias)
         (core-quote-syntax id)
         alias-id])))))

;;; closures
(def (core-expand-lambda% stx (wrap? #t))
  (core-syntax-case stx ()
    ((_ hd . body)
     (core-bind-values? hd)
     (parameterize ((current-expander-context (make-local-context)))
       (core-bind-values! hd)
       (let (body [(core-quote-bind-values hd)
                   (core-expand-local-block stx body)])
         (if wrap?
           (core-quote-syntax
            (core-cons '%#lambda body)
            (stx-source stx))
           body))))))

(def (core-expand-case-lambda% stx)
  (core-syntax-case stx ()
    ((_ . clauses)
     (stx-list? clauses)
     (core-quote-syntax
      (core-cons  '%#case-lambda
        (stx-map
         (lambda (clause)
           (core-expand-lambda%
            (stx-wrap-source
             (cons '%#case-lambda-clause clause)
             (or (stx-source clause)
                 (stx-source stx)))
            #f))
         clauses))
      (stx-source stx)))))

;;; local bindings
(def (core-expand-let-values% stx)
  (core-syntax-case stx ()
    ((_ hd . body)
     (core-expand-let-bind? hd)
     (let (expressions (stx-map core-expand-let-bind-expression hd))
       (parameterize ((current-expander-context (make-local-context)))
         (stx-for-each core-expand-let-bind-values! hd)
         (core-quote-syntax
          [(core-quote-syntax '%#let-values)
           (stx-map core-expand-let-bind-quote hd expressions)
           (core-expand-local-block stx body)]
          (stx-source stx)))))))

(def (core-expand-letrec-values% stx (form '%#letrec-values))
  (core-syntax-case stx ()
    ((_ hd . body)
     (core-expand-let-bind? hd)
     (parameterize ((current-expander-context (make-local-context)))
       (stx-for-each core-expand-let-bind-values! hd)
       (core-quote-syntax
        [(core-quote-syntax form)
         (stx-map core-expand-let-bind-quote hd
                  (stx-map core-expand-let-bind-expression hd))
         (core-expand-local-block stx body)]
        (stx-source stx))))))

(def (core-expand-letrec*-values% stx)
  (core-expand-letrec-values% stx '%#letrec*-values))

(def (core-expand-let-bind? stx)
  (and (stx-list? stx)
       (stx-andmap (lambda (bind)
                     (core-syntax-case bind ()
                       ((hd _) (core-bind-values? hd))
                       (else #f)))
                   stx)))

(def (core-expand-let-bind-expression bind)
  (core-syntax-case bind ()
    ((_ expr) (core-expand-expression expr))))

(def (core-expand-let-bind-values! bind)
  (core-syntax-case bind ()
    ((hd _) (core-bind-values! hd))))

(def (core-expand-let-bind-quote bind expr)
  (core-syntax-case bind ()
    ((hd _) [(core-quote-bind-values hd) expr])))

(def (core-expand-let-syntax% stx)
  (core-syntax-case stx ()
    ((_ hd . body)
     (core-expand-let-bind-syntax? hd)
     (let (expanders (stx-map core-expand-let-bind-syntax-expression hd))
       (parameterize ((current-expander-context (make-local-context)))
         (stx-for-each core-expand-let-bind-syntax! hd expanders)
         (core-expand-local-block stx body))))))

(def (core-expand-letrec-syntax% stx)
  (core-syntax-case stx ()
    ((_ hd . body)
     (core-expand-let-bind-syntax? hd)
     (parameterize ((current-expander-context (make-local-context)))
       (stx-for-each core-expand-let-bind-syntax!
                     hd (make-list (stx-length hd) #!void))
       (stx-for-each (cut core-expand-let-bind-syntax! <> <> #t)
                     hd (stx-map core-expand-let-bind-syntax-expression hd))
       (core-expand-local-block stx body)))))

(def (core-expand-let-bind-syntax? stx)
  (and (stx-list? stx)
       (stx-andmap (lambda (bind)
                     (core-syntax-case bind ()
                       ((hd _) (identifier? hd))
                       (else #f)))
                   stx)))

(def (core-expand-let-bind-syntax-expression bind)
  (core-syntax-case bind ()
    ((_ expr)
     (let-values (((_ e) (core-expand-expression+1 expr)))
       e))))

(def (core-expand-let-bind-syntax! bind e (rebind? #f))
  (core-syntax-case bind ()
    ((id _) (core-bind-syntax! id e rebind?))))

;;; expressions
(def (core-expand-expression% stx)
  (core-syntax-case stx ()
    ((_ expr)
     (core-expand-expression expr))))

(def (core-expand-quote% stx)
  (core-syntax-case stx ()
    ((_ e)
     (core-quote-syntax
      [(core-quote-syntax '%#quote) (syntax->datum e)]
      (stx-source stx)))))

(def (core-expand-quote-syntax% stx)
  (core-syntax-case stx ()
    ((_ e)
     (core-quote-syntax
      [(core-quote-syntax '%#quote-syntax) (core-quote-syntax e)]
      (stx-source stx)))))

(def (core-expand-call% stx)
  (core-syntax-case stx ()
    ((_ rator . args)
     (stx-list? args)
     (core-quote-syntax
      (core-cons* '%#call
        (core-expand-expression rator)
        (stx-map core-expand-expression args))
      (stx-source stx)))))

(def (core-expand-if% stx)
  (core-syntax-case stx ()
    ((_ test K E)
     (core-quote-syntax
      [(core-quote-syntax '%#if)
       (core-expand-expression test)
       (core-expand-expression K)
       (core-expand-expression E)]
      (stx-source stx)))))

(def (core-expand-ref% stx)
  (core-syntax-case stx ()
    ((_ id)
     (identifier? id)
     (core-quote-syntax
      [(core-quote-syntax '%#ref) (core-quote-runtime-ref id stx)]
      (stx-source stx)))))

(def (core-expand-setq% stx)
  (core-syntax-case stx ()
    ((_ id expr)
     (identifier? id)
     (core-quote-syntax
      [(core-quote-syntax '%#set!)
       (core-quote-runtime-ref id stx)
       (core-expand-expression expr)]
      (stx-source stx)))))

;;; macros
(def (macro-expand-extern stx)
  (define (generate body)
    (let lp ((rest body) (ns (core-context-namespace)) (r '()))
      (core-syntax-case rest ()
        ((namespace: ns . rest)
         (let (ns (cond
                   ((identifier? ns)
                    (symbol->string (stx-e ns)))
                   ((or (stx-string? ns) (stx-false? ns))
                    (stx-e ns))
                   (else
                    (raise-syntax-error #f "Bad syntax; extern expects namespace identifier" stx ns))))
           (lp rest ns r)))
        ((hd . rest)
         (if (identifier? hd)
           (lp rest ns
               (cons [hd (if ns (stx-identifier hd ns "#" hd) hd)] r))
           (core-syntax-case hd ()
             ((id eid)
              (and (identifier? id) (identifier? eid))
              (lp rest ns (cons [id eid] r))))))
        (() (reverse r)))))

  (core-syntax-case stx ()
    ((_ . body)
     (stx-list? body)
     (core-cons '%#extern
       (generate body)))))

(def (macro-expand-define-values stx)
  (core-syntax-case stx ()
    ((_ hd expr)
     (stx-andmap identifier? hd)
     [(core-quote-syntax '%#define-values)
      (stx-map identity hd)
      expr])))

(def (macro-expand-define-syntax stx)
  (core-syntax-case stx ()
    ((_ hd expr)
     (identifier? hd)
     [(core-quote-syntax '%#define-syntax) hd expr])))

(def (macro-expand-define-alias stx)
  (core-syntax-case stx ()
    ((_ id alias-id)
     (and (identifier? id)
          (identifier? alias-id))
     [(core-quote-syntax '%#define-alias) id alias-id])))

(def (macro-expand-lambda% stx)
  (core-syntax-case stx ()
    ((_ hd . body)
     (and (stx-andmap identifier? hd)
          (stx-list? body)
          (not (stx-null? body)))
     (core-cons* '%#lambda
       (stx-map identity hd)
       body))))

(def (macro-expand-case-lambda stx)
  (def (generate clause)
    (core-syntax-case clause ()
      ((hd . body)
       (and (stx-andmap identifier? hd)
            (stx-list? body)
            (not (stx-null? body)))
       (stx-wrap-source
        (cons (stx-map identity hd)
              body)
        (stx-source clause)))
      (else
       (raise-syntax-error #f "Bad syntax; malformed clause" stx clause))))

  (core-syntax-case stx ()
    ((_ . clauses)
     (stx-list? clauses)
     (core-cons '%#case-lambda
       (stx-map generate clauses)))))

(def (macro-expand-let-values stx (form '%#let-values))
  (def (generate bind)
    (core-syntax-case bind ()
      ((ids expr)
       (stx-andmap identifier? ids)
       [(stx-map identity ids) expr])
      (else
       (raise-syntax-error #f "Bad syntax; malformed binding" stx bind))))

  (core-syntax-case stx ()
    ((_ hd . body)
     (and (stx-list? hd)
          (stx-list? body)
          (not (stx-null? body)))
     (core-cons* form
       (stx-map generate hd)
       body))))

(def (macro-expand-letrec-values stx)
  (macro-expand-let-values stx '%#letrec-values))
(def (macro-expand-letrec*-values stx)
  (macro-expand-let-values stx '%#letrec*-values))

(def (macro-expand-if stx)
  (core-syntax-case stx ()
    ((_ test K)
     (core-list '%#if test K #!void))
    ((_ test K E)
     (core-list '%#if test K E))))

;;; user identifiers
(def (free-identifier=? xid yid)
  (let ((xe (resolve-identifier xid))
        (ye (resolve-identifier yid)))
    (cond
     ((and xe ye)                       ; both bound
      (or (eq? xe ye)
          (and (binding? xe)
               (binding? ye)
               (eq? (&binding-id xe) (&binding-id ye)))))
     ((or xe ye) #f)                    ; one bound
     (else                              ; none bound
      (stx-eq? xid yid)))))

(def (bound-identifier=? xid yid)
  (def (context e)
    (if (syntax-quote? e)
      (&syntax-quote-context e)
      (current-expander-context)))

  (def (marks e)
    (cond
     ((symbol? e) [])
     ((identifier-wrap? e)
      (&identifier-wrap-marks e))
     (else
      (&syntax-quote-marks e))))

  (def (unwrap e)
    (if (symbol? e) e
        (syntax-local-unwrap e)))

  (let ((x (unwrap xid))
        (y (unwrap yid)))
    (and (stx-eq? x y)
         (eq? (context x) (context y))
         (equal? (marks x) (marks y)))))

(def (underscore? stx)
  (and (identifier? stx)
       (core-identifier=? stx '_)))

(def (ellipsis? stx)
  (and (identifier? stx)
       (core-identifier=? stx '...)))

(def (check-duplicate-identifiers stx (where stx))
  (let lp ((rest (syntax->list stx)))
    (match rest
      ([hd . rest]
       (cond
        ((not (identifier? hd))
         (raise-syntax-error #f "Bad identifier" where hd))
        ((find (cut bound-identifier=? <> hd) rest)
         (raise-syntax-error #f "Duplicate identifier" where hd))
        (else
         (lp rest))))
      (else #t))))

;;; etc
(def (core-bind-values? stx)
  (stx-andmap (lambda (x) (or (identifier? x) (stx-false? x)))
              stx))

(def (core-bind-values! stx
                        (rebind? #f)
                        (phi (current-expander-phi))
                        (ctx (current-expander-context)))
  (stx-for-each
   (lambda (id)
     (when (identifier? id)
       (core-bind-runtime! id rebind? phi ctx)))
   stx))

(def (core-quote-bind-values stx)
  (stx-map (lambda (x)
             (and (identifier? x)
                  (core-quote-syntax x)))
           stx))

(def (core-runtime-ref? stx)
  (and (identifier? stx)
       (let (bind (resolve-identifier stx))
         (or (not bind)
             (runtime-binding? bind)))))

(def (core-quote-runtime-ref id form)
  (let (bind (resolve-identifier id))
    (cond
     ((runtime-binding? bind)
      (core-quote-syntax id))
     ((not bind)
      (if (or (core-context-rebind? (core-context-top))
              (core-extern-symbol? (stx-e id)))
        (core-quote-syntax id)
        (raise-syntax-error #f "Reference to unbound identifier" form id)))
     (else
      (raise-syntax-error #f "Bad syntax; not a runtime binding" form id)))))

(def (core-bind-runtime! id
                         (rebind? #f)
                         (phi (current-expander-phi))
                         (ctx (current-expander-context)))
  (let* ((key (core-identifier-key id))
         (eid (make-binding-id key #f phi ctx))
         (bind
          (cond
           ((module-context? ctx)
            (make-module-binding eid key phi ctx))
           ((top-context? ctx)
            (make-top-binding eid key phi))
           ((local-context? ctx)
            (make-local-binding eid key phi))
           (else
            (make-runtime-binding eid key phi)))))
    (bind-identifier! id bind rebind? phi ctx)))

(def (core-bind-runtime-reference! id eid
                                   (rebind? #f)
                                   (phi (current-expander-phi))
                                   (ctx (current-expander-context)))
  (let* ((key (core-identifier-key id))
         (bind
          (cond
           ((module-context? ctx)
            (make-module-binding eid key phi ctx))
           ((top-context? ctx)
            (make-top-binding eid key phi))
           (else
            (make-runtime-binding eid key phi)))))
    (bind-identifier! id bind rebind? phi ctx)))

(def (core-bind-extern! id eid
                        (rebind? #f)
                        (phi (current-expander-phi))
                        (ctx (current-expander-context)))
  (bind-identifier! id
    (make-extern-binding eid (core-identifier-key id) phi)
    rebind? phi ctx))

(def (core-bind-syntax! id e
                        (rebind? #f)
                        (phi (current-expander-phi))
                        (ctx (current-expander-context)))
  (bind-identifier! id
    (let ((key (core-identifier-key id))
          (e (if (or (expander? e) (expander-context? e)) e
                 (make-user-expander e ctx phi))))
      (make-syntax-binding (make-binding-id key #t phi ctx) key phi e))
    rebind? phi ctx))

(def (core-bind-root-syntax! id e (rebind? #f))
  (core-bind-syntax! id e rebind? 0 (core-context-root)))

(def (core-bind-alias! id alias-id
                       (rebind? #f)
                       (phi (current-expander-phi))
                       (ctx (current-expander-context)))
  (bind-identifier! id
    (let (key (core-identifier-key id))
      (make-alias-binding (make-binding-id key #t phi ctx) key phi
                          alias-id))
    rebind? phi ctx))

(def (make-binding-id key
                      (syntax? #f)
                      (phi (current-expander-phi))
                      (ctx (current-expander-context)))
  (cond
   ((uninterned-symbol? key)
    (gensym 'L))
   ((pair? key)
    (gensym (car key)))
   ((top-context? ctx)
    (let (ns (core-context-namespace ctx))
      (cond
       ((and (fxzero? phi) (not syntax?))
        (if ns
          (make-symbol ns "#" key)
          key))
       (syntax?
        (make-symbol (or ns "") "[:" (number->string phi) ":]#" key))
       (else
        (make-symbol (or ns "") "[" (number->string phi) "]#" key)))))
   (else
    (gensym key))))
