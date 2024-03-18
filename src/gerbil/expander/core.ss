;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil/expander driver
prelude: "../core"
package: gerbil/expander
namespace: gx

(export #t)
(import "common" "stx")
(declare (not safe))

;;; expander environment
(def current-expander-context
  (make-parameter #f))
(def current-expander-marks
  (make-parameter []))
(def current-expander-phi
  (make-parameter 0))
(def current-expander-path
  (make-parameter []))

(def current-expander-eval
  (make-parameter #f))
(def current-expander-compile
  (make-parameter #f))

(def current-expander-module-eval
  (make-parameter #f))
(def current-expander-module-import
  (make-parameter #f))
(def current-expander-module-prelude
  (make-parameter #f))

(def current-expander-allow-rebind?
  (make-parameter #f))

(def current-expander-compiling?
  (make-parameter #f))

;; expander context
(defstruct expander-context (id table)
  id: gx#expander-context::t
  constructor: :init!)

(defstruct (root-context expander-context) ()
  id: gx#root-context::t)
(defstruct (phi-context  expander-context) (super up down)
  id: gx#context-phi::t)
(defstruct (top-context phi-context) ()
  id: gx#top-context::t)
(defstruct (module-context top-context) (ns path import export e code)
  id: gx#module-context::t)
(defstruct (prelude-context top-context) (path import e)
  id: gx#prelude-context::t)
(defstruct (local-context phi-context) ()
  id: gx#local-context::t)

(defmethod {:init! phi-context}
  (lambda (self id (super (current-expander-context)))
    (struct-instance-init! self id (make-hash-table-eq) super)))

(defmethod {:init! local-context}
  (lambda (self (super (current-expander-context)))
    (struct-instance-init! self (gensym 'L) (make-hash-table-eq) super)))

;; bindings
(defstruct binding (id key phi)
  id: gx#binding::t
  transparent: #t)

;; runtime bindings
(defstruct (runtime-binding binding) ()
  id: gx#runtime-binding::t
  transparent: #t)
(defstruct (local-binding runtime-binding) ()
  id: gx#local-binding::t
  transparent: #t)
(defstruct (top-binding runtime-binding) ()
  id: gx#top-binding::t
  transparent: #t)
(defstruct (module-binding top-binding) (context)
  id: gx#module-binding::t
  transparent: #t)
(defstruct (extern-binding top-binding) ()
  id: gx#extern-binding::t
  transparent: #t)

;; compile time bindings
(defstruct (syntax-binding binding) (e)
  id: gx#syntax-binding::t
  final: #t transparent: #t)
(defstruct (import-binding binding) (e context weak?)
  id: gx#import-binding::t
  final: #t transparent: #t)
(defstruct (alias-binding binding) (e)
  id: gx#alias-binding::t
  final: #t transparent: #t)

;; expanders [syntax-binding-e]
(defstruct expander (e)
  id: gx#expander::t)

;; core syntax
(defstruct (core-expander expander) (id compile-top)
  id: gx#core-expander::t)
;; expressions
(defstruct (expression-form core-expander) ()
  id: gx#expression-form::t)
;; special forms
(defstruct (special-form core-expander) ()
  id: gx#special-form::t)
(defstruct (definition-form special-form) ()
  id: gx#definition-form::t)
(defstruct (top-special-form special-form) ()
  id: gx#top-special-form::t)
(defstruct (module-special-form top-special-form) ()
  id: gx#module-special-form::t)

;; cond-expand features
(defstruct (feature-expander expander) ()
  id: gx#feature-expander::t)
(defstruct (private-feature-expander feature-expander) ()
  id: gx#private-feature-expander::t)
;; sugar-reserved
(defstruct (reserved-expander expander) ()
  id: gx#reserved-expander::t)

;; raw macros
(defstruct (macro-expander expander) ()
  id: gx#core-macro::t)
(defstruct (rename-macro-expander macro-expander) ()
  id: gx#rename-macro-expander::t)

;; user macros  -- [phi displaced] mark algebra
(defstruct (user-expander macro-expander) (context phi)
  id: gx#macro-expander::t)
(defstruct expander-mark (subst context phi trace)
  id: gx#expander-mark::t)

;; syntax errors
(extern namespace: #f make-syntax-error)
(def (raise-syntax-error ctx message stx . details)
  (let (ctx (cond
             (ctx)
             ((core-context-top)
              => (lambda (ctx)
                   `(expand ,(expander-context-id ctx))))
             (else #f)))
    (raise
     (make-syntax-error message (cons stx details) ctx
                        (current-expander-context)
                        (current-expander-marks)
                        (current-expander-phi)))))

;;; expander driver
(def (eval-syntax stx (expression? #f))
  (eval-syntax* (core-expand stx expression?)))

(def (eval-syntax* stx)
  ((current-expander-eval)
   ((current-expander-compile) stx)))

(def (core-expand stx (expression? #f))
  (if expression?
    (core-expand-expression stx)
    (core-expand-top stx)))

(def (core-expand-top stx)
  (let (stx (core-expand* stx))
    (core-syntax-case stx ()
      ((form . _)
       (core-bound-identifier? form)
       stx)
      (else
       (core-expand-expression stx)))))

(def (core-expand-expression stx)
  (def (sealed-expression? hd)
    (and (sealed-syntax? hd)
         (core-syntax-case hd ()
           ((form . _)
            (core-bound-identifier? form expression-form-binding?))
           (else #f))))

  (def (illegal-expression hd . _)
    (raise-syntax-error #f "Bad syntax; illegal expression" stx hd))

  (def (expand-e form hd)
    (let (bind (if (binding? form) form (resolve-identifier form)))
      (cond
       ((core-expander-binding? bind)
        (core-apply-expander (&syntax-binding-e bind)
          (stx-wrap-source hd (stx-source stx))))
       ((syntax-binding? bind)
        (core-expand-expression
         (core-apply-expander (&syntax-binding-e bind)
           (stx-wrap-source hd (stx-source stx)))))
       (else
        (raise-syntax-error #f "Bad syntax; missing expander" stx form)))))

  (let (hd (core-expand-head stx))
    (cond
     ((sealed-expression? hd) hd)
     ((stx-pair? hd)
      (let* ((form (stx-car hd))
             (bind (and (identifier? form) (resolve-identifier form))))
        (cond
         ((or (not bind)
              (not (core-expander-binding? bind)))
          (expand-e '%%app ['%%app . hd]))
         ((eq? (&binding-id bind) '%#begin)
          (core-expand-block* hd illegal-expression))
         ((expression-form-binding? bind)
          (expand-e bind hd))
         ((direct-special-form-binding? bind)
          (core-expand-expression
           (expand-e bind hd)))
         (else
          (illegal-expression hd)))))
     ((core-bound-identifier? hd)
      (illegal-expression hd))
     ((identifier? hd)
      (expand-e '%%ref ['%%ref hd]))
     ((stx-datum? hd)
      (expand-e '%#quote ['%#quote hd]))
     (else
      (illegal-expression hd)))))

(def (core-expand-expression+1 stx)
  (parameterize ((current-expander-phi (fx1+ (current-expander-phi))))
    (let (stx (core-expand-expression stx))
      (values stx (eval-syntax* stx)))))

(def (core-expand* stx (stop? false))
  (let lp ((stx stx))
    (if (stop? stx) stx
        (let (rstx (core-expand1 stx))
          (if (eq? stx rstx) stx
              (lp rstx))))))

(def (core-expand1 stx)
  (def (step hd)
    (let (bind (resolve-identifier hd))
      (cond
       ((runtime-binding? bind) stx)
       ((syntax-binding? bind)
        (core-apply-expander (&syntax-binding-e bind) stx))
       ((not bind) stx)
       (else
        (raise-syntax-error #f "Bad syntax; no binding for head" stx)))))

  (core-syntax-case stx ()
    ((hd . _)
     (identifier? hd)
     (step hd))
    (hd
     (identifier? hd)
     (step hd))
    (else stx)))

(def (core-expand-head stx)
  (def (stop? stx)
    (core-syntax-case stx ()
      ((hd . _)
       (core-bound-identifier? hd))
      (else #f)))
  (core-expand* stx stop?))

;; block loop driver
;;  expand-special:  lambda (stx K rest rbody) =>> K
;;  expand-e:        lambda (stx) => stx ; expression expansion step
;;  begin-form: symbol?/#f
;;   if symbol?
;;      => syntax-quote; wrap begin-form
;;      => left-folded expanded body
(def (core-expand-block stx expand-special
                        (begin-form '%#begin)
                        (expand-e core-expand-expression))
  (def (expand-splice hd body rest r)
    (if (stx-list? body)
      (K (stx-foldr cons rest body) r)
      (raise-syntax-error #f "Bad syntax; splice body isn't a list" stx hd)))

  (def (expand-cond-expand hd rest r)
    (K (cons (core-expand-cond-expand% hd) rest) r))

  (def (expand-include hd rest r)
    (core-syntax-case hd ()
      ((_ path)
       (stx-string? path)
       (let* ((rpath
               (core-resolve-path path (stx-source hd)))
              (block
               (core-expand-include% hd rpath))
              (rbody
               (parameterize ((current-expander-path
                               (cons rpath (current-expander-path))))
                 (core-expand-block block expand-special #f expand-e))))
         (K rest (foldr cons r rbody))))))

  (def (expand-expression hd rest r)
    (K rest (cons (expand-e hd) r)))

  (def (K rest r)
    (core-syntax-case rest ()
      ((hd . rest)
       (let (hd (core-expand-head hd))
         (core-syntax-case hd ()
           ((form . body)
            (let (bind (and (identifier? form) (resolve-identifier form)))
              (if (special-form-binding? bind)
                (case (&binding-id bind)
                  ((%#begin)
                   (expand-splice hd body rest r))
                  ((%#cond-expand)
                   (expand-cond-expand hd rest r))
                  ((%#include)
                   (expand-include hd rest r))
                  (else
                   (expand-special hd K rest r)))
                (expand-expression hd rest r))))
           (else
            (expand-expression hd rest r)))))
      (else
       (if begin-form
         (core-quote-syntax
          (core-cons begin-form
            (reverse r))
          (stx-source stx))
         r))))

  (core-syntax-case stx ()
    ((_ . body)
     (stx-list? body)
     (K body []))))

(def (core-expand-block* stx expand-special)
  (match (core-expand-block stx expand-special #f)
    ([] (raise-syntax-error #f "Bad syntax; empty block" stx))
    ([expr] expr)
    (body
     (core-quote-syntax
      (core-cons '%#begin
        (reverse body))
      (stx-source stx)))))

;; block [transient] special forms:
;;  (%#cond-expand ...)
;;  (%#include ...)

;; (%#cond-expand (<condition> form ...) ...)
(def (core-expand-cond-expand% stx)
  (def (satisfied? condition)
    (core-syntax-case condition (unquote)
      (id
       (identifier? id)
       (core-bound-identifier? id feature-binding?))
      ((unquote expr)
       (parameterize ((current-expander-phi (fx1+ (current-expander-phi))))
         (eval-syntax expr)))
      ((combinator . body)
       (stx-list? body)
       (case (stx-e combinator)
         ((not)     (not (stx-ormap satisfied? body)))
         ((and)     (stx-andmap satisfied? body))
         ((or)      (stx-ormap satisfied? body))
         ((defined) (stx-andmap core-resolve-identifier body))
         (else
          (raise-syntax-error #f "Bad syntax; bad cond-expannd combinator" stx combinator))))))

  (def (loop rest)
    (core-syntax-case rest ()
      ((hd . rest)
       (core-syntax-case hd ()
         ((condition . body)
          (cond
           ((stx-eq? condition 'else)
            (if (stx-null? rest) body
                (raise-syntax-error #f "Bad syntax; clauses after else" stx hd)))
           ((satisfied? condition)
            body)
           (else
            (loop rest))))))
      (() [])))

  (core-syntax-case stx ()
    ((_ . clauses)
     (stx-list? clauses)
      (core-cons 'begin
        (loop clauses)))))

;; (%#include path)
(def (core-expand-include% stx (rpath #f))
  (core-syntax-case stx ()
    ((_ path)
     (stx-string? path)
     (let (rpath
           (or rpath
               (core-resolve-path path (stx-source stx))))
       (if (member rpath (current-expander-path))
         (raise-syntax-error #f "Bad syntax; cyclic expansion" stx)
         (syntax-local-rewrap
          (stx-wrap-source
           (core-cons 'begin
             (read-syntax-from-file rpath))
           (stx-source stx))))))))


;;; expander application
(def (core-apply-expander K stx (method 'apply-macro-expander))
  (cond
   ((procedure? K)
    (cond
     ((stx-source stx) => (cut stx-wrap-source (K stx) <>))
     (else (K stx))))
   ((bound-method-ref K method) => (cut core-apply-expander <> stx method))
   (else
    (raise-syntax-error #f "Bad syntax; no expander method" stx method))))

(defmethod {apply-macro-expander expander}
  (lambda (self stx)
    (raise-syntax-error #f "Bad syntax; bottom method for apply-macro-expander" stx)))

(defmethod {apply-macro-expander macro-expander}
  (lambda (self stx)
    (with ((macro-expander K) self)
      (core-apply-expander K stx))))

(defmethod {apply-macro-expander core-expander}
  (lambda (self stx)
    (if (sealed-syntax? stx) stx
        (with ((core-expander K) self)
          (core-apply-expander K stx)))))

(defmethod {apply-macro-expander top-special-form}
  (lambda (self stx (top? top-context?))
    (if (top? (current-expander-context))
      (core-expander::apply-macro-expander self stx)
      (raise-syntax-error #f "Bad syntax; illegal context" stx))))

(defmethod {apply-macro-expander module-special-form}
  (lambda (self stx)
    (top-special-form::apply-macro-expander self stx module-context?)))

(defmethod {apply-macro-expander rename-macro-expander}
  (lambda (self stx)
    (with ((rename-macro-expander id) self)
      (core-syntax-case stx ()
        ((_ . body)
         (core-cons id body))))))

(def (core-apply-user-expander self stx (method 'apply-macro-expander))
  (with ((user-expander K ctx phi) self)
    (core-apply-user-macro K stx ctx phi method)))

(def (core-apply-user-macro K stx ctx phi method)
  (let (mark (make-expander-mark #f ctx phi stx))
    (parameterize ((current-expander-marks
                    (cons mark (current-expander-marks))))
      (stx-apply-mark
       (core-apply-expander K (stx-apply-mark stx mark) method)
       mark))))

(defmethod {apply-macro-expander user-expander}
  core-apply-user-expander)

;;; identifier bindings
(def (resolve-identifier stx
                         (phi (current-expander-phi))
                         (ctx (current-expander-context)))
  (let lp ((bind (core-resolve-identifier stx phi ctx)))
    (cond
     ((import-binding? bind)
      (lp (&import-binding-e bind)))
     ((alias-binding? bind)
      (lp (core-resolve-identifier (&alias-binding-e bind) phi ctx)))
     (else bind))))

(def (bind-identifier! stx val
                       (rebind? #f)
                       (phi (current-expander-phi))
                       (ctx (current-expander-context)))
  (let (rebind?
        (cond
         ((not rebind?) core-context-rebind?)
         ((procedure? rebind?) rebind?)
         (else true)))
    (core-bind! (core-identifier-key stx) val rebind? phi ctx)))

(def (core-resolve-identifier stx
                              (phi (current-expander-phi))
                              (ctx (current-expander-context)))
  (let lp ((e stx) (marks (current-expander-marks)))
    (cond
     ((symbol? e)
      (core-resolve-binding e phi phi ctx (reverse marks)))
     ((identifier-quote? e)
      (core-resolve-binding (&AST-e e) phi 0
                            (&syntax-quote-context e)
                            (&syntax-quote-marks e)))
     ((identifier-wrap? e)
      (core-resolve-binding (&AST-e e) phi phi ctx
                            (foldl apply-mark (&identifier-wrap-marks e)
                                   marks)))
     ((syntax-wrap? e)
      (lp (&AST-e e) (apply-mark (&syntax-wrap-mark e) marks)))
     ((AST? e)
      (lp (&AST-e e) marks))
     (else
      (raise-syntax-error #f "Bad identifier" stx)))))

;; identifier key:
;;  original source: id
;;  macro introduced: [id . top-mark] => subst => eid
(def (core-resolve-binding id phi src-phi ctx marks)
  (def (resolve ctx src-phi key)
    (let lp ((ctx (core-context-shift ctx phi)) (dphi (fx- phi src-phi)))
      (cond
       ((core-context-resolve ctx key) => values)
       ((fxzero? dphi) #f)
       ;; phi-displaced macro
       ((fxpositive? dphi)
        (lp (core-context-shift ctx -1) (fx1- dphi)))
       (else
        (lp (core-context-shift ctx +1) (fx1+ dphi))))))

  (let lp ((ctx ctx) (src-phi src-phi) (rest marks))
    (match rest
      ([hd . rest]
       (with ((expander-mark subst) hd)
         (or (let (key (and subst (hash-get subst id)))
               (and key (resolve ctx src-phi key)))
             (lp (&expander-mark-context hd)
                 (&expander-mark-phi hd)
                 rest))))
      (else
       (resolve ctx src-phi id)))))

(def (core-bind! key val
                 (rebind? false)
                 (phi (current-expander-phi))
                 (ctx (current-expander-context)))
  (def (update-binding xval)
    (cond
     ((or (rebind? ctx xval val)
          (and (import-binding? xval)
               (or (&import-binding-weak? xval)
                   (and (binding? val)
                        (not (import-binding? val)))))
          (and (extern-binding? xval)
               (runtime-binding? val)
               (eq? (&binding-id val) (&binding-id xval))))
      val)
     ((and (import-binding? val)
           (or (&import-binding-weak? val)
               (and (binding? xval)
                    (eq? (&binding-id val) (&binding-id xval)))))
      xval)
     ((and (import-binding? val)
           (binding? xval))
      ;; common case: be somewhat more friendly to the user at fault
      (raise-syntax-error #f "Bad binding; import conflict" key
                          [(&binding-id val) (expander-context-id (&import-binding-context val))]
                          [(&binding-id xval)
                           (if (import-binding? xval)
                             (expander-context-id (&import-binding-context xval))
                             xval)]))
     (else
      (raise-syntax-error #f "Bad binding; rebind conflict" key val xval))))

  (def (gensubst subst id)
    (let (eid (gensym (if (uninterned-symbol? id) '% id)))
      (hash-put! subst id eid)
      eid))

  (def (subst! key)
    (match key
      ([id . mark]
       (with ((expander-mark subst) mark)
         (cond
          ((not subst)
           (let (subst (make-hash-table-eq))
             (set! (&expander-mark-subst mark) subst)
             (gensubst subst id)))
          ((hash-get subst id) => values)
          (else
           (gensubst subst id)))))
      (else key)))

  (core-context-bind! (core-context-shift ctx phi)
                      (subst! key) val
                      update-binding))

(def (core-identifier-key stx)
  (cond
   ((symbol? stx)
    (match (current-expander-marks)
      ([hd . _] (cons stx hd))
      (else stx)))
   ((identifier? stx)
    (let* ((id (syntax-local-unwrap stx))
           (eid (stx-e id))
           (marks (stx-identifier-marks* id)))
      (match marks
        ([hd . _]
         (cons eid hd))
        (else eid))))
   (else
    (raise-syntax-error #f "Bad identifier" stx))))

;;; context ops
(cond-expand
  (gerbil-core
   (defrules &phi-context? ()
     ((_ ctx)
      (fx> (##vector-length ctx) 3))))
  (else
   (def &phi-context? phi-context?)))

(def (core-context-shift ctx phi)
  (def (make-phi super)
    (make-phi-context (gensym 'phi) super))

  (def (make-phi/up ctx super)
    (let (ctx+1 (make-phi super))
      (set! (&phi-context-up ctx) ctx+1)
      (set! (&phi-context-down ctx+1) ctx)
      ctx+1))

  (def (make-phi/down ctx super)
    (let (ctx-1 (make-phi super))
      (set! (&phi-context-up ctx-1) ctx)
      (set! (&phi-context-down ctx) ctx-1)
      ctx-1))

  (def (shift ctx delta make-delta-context phi K)
    (cond
     ((&phi-context-super ctx)
      => (lambda (super)
           (let* ((super (K super delta))
                  (ctx+d (make-delta-context ctx super)))
             (K ctx+d (fx- phi delta)))))
     (else
      (error "Bad context" ctx))))

  (let K ((ctx ctx) (phi phi))
    (cond
     ((fxzero? phi) ctx)
     ((&phi-context? ctx)
      (if (fxpositive? phi)
        (cond
         ((&phi-context-up ctx) => (cut K <> (fx1- phi)))
         (else
          (shift ctx +1 make-phi/up phi K)))
        (cond
         ((&phi-context-down ctx) => (cut K <> (fx1+ phi)))
         (else
          (shift ctx -1 make-phi/down phi K)))))
     (else ctx))))

(def (core-context-get ctx key)
  (hash-get (&expander-context-table ctx) key))
(def (core-context-put! ctx key val)
  (hash-put! (&expander-context-table ctx) key val))

(def (core-context-resolve ctx key)
  (let lp ((ctx ctx))
    (cond
     ((core-context-get ctx key) => values)
     ((and (&phi-context? ctx) (&phi-context-super ctx)) => lp)
     (else #f))))

(def (core-context-bind! ctx key val rebind)
  (cond
   ((core-context-get ctx key)
    => (lambda (xval) (core-context-put! ctx key (rebind xval))))
   (else
    (core-context-put! ctx key val))))

(def (core-context-top (ctx (current-expander-context))
                       (stop? top-context?))
  (let lp ((ctx ctx))
    (cond
     ((stop? ctx) ctx)
     ((phi-context? ctx)
      (lp (&phi-context-super ctx)))
     (else #f))))

(def (core-context-root (ctx (current-expander-context)))
  (let lp ((ctx ctx))
    (if (phi-context? ctx)
      (lp (&phi-context-super ctx))
      ctx)))

(def (core-context-rebind? (ctx (current-expander-context)) . _)
  (or (current-expander-allow-rebind?)
      (and (top-context? ctx)
           (not (module-context? ctx))
           (not (prelude-context? ctx)))))

(def (core-context-namespace (ctx (current-expander-context)))
  (cond
   ((core-context-top ctx)
    => (lambda (ctx)
         (and (module-context? ctx)
              (&module-context-ns ctx))))
   (else #f)))

;;; etc
(def (expander-binding? bind (is? expander?))
  (and (syntax-binding? bind)
       (is? (&syntax-binding-e bind))))

(def (core-expander-binding? bind)
  (expander-binding? bind core-expander?))
(def (expression-form-binding? bind)
  (expander-binding? bind expression-form?))
(def (direct-special-form-binding? bind)
  (def (direct-special-form? obj)
    (direct-instance? special-form::t obj))
  (expander-binding? bind direct-special-form?))

(def (special-form-binding? bind)
  (expander-binding? bind special-form?))


(def (feature-binding? bind)
  (def (feature? e)
    (or (feature-expander? e)
        (module-context? e)))
  (expander-binding? bind feature?))

(def (private-feature-binding? bind)
  (expander-binding? bind private-feature-expander?))

(def (core-bound-identifier? id (bound? core-expander-binding?))
  (and (identifier? id)
       (bound? (resolve-identifier id))))

(def (core-identifier=? x y)
  (def (y=? xid)
    ((if (list? y) memq eq?) xid y))

  (let (bind (resolve-identifier x))
    (if (binding? bind)
      (y=? (&binding-id bind))
      (y=? (stx-e x)))))

(def (core-extern-symbol? e)
  (and (interned-symbol? e)
       (string-index (symbol->string e) #\#)))

(def (core-quote-syntax stx
                        (src #f)
                        (ctx (current-expander-context))
                        (marks (current-expander-marks)))
  (if (##structure? stx)
    (cond
     ((sealed-syntax-unwrap stx) => values)
     ((identifier? stx)
      (let (id (stx-unwrap stx marks))
        (make-syntax-quote (&AST-e id) (or (&AST-source id) src)
                           ctx (&identifier-wrap-marks id))))
     (else
      (make-syntax-quote (stx-e stx) (or (stx-source stx) src)
                         ctx (reverse marks))))
    (make-syntax-quote stx src ctx (reverse marks))))

(def (core-cons hd tl)
  (cons (core-quote-syntax hd) tl))

(def (core-list hd . rest)
  (cons (core-quote-syntax hd) rest))

(def (core-cons* hd . rest)
  (apply cons* (core-quote-syntax hd) rest))

(def (core-resolve-path stx-path (rel #f))
  (let ((path (stx-e stx-path))
        (reldir
         (let lp ((relsrc (or (stx-source stx-path) rel)))
            (cond
             ((AST? relsrc)
              (lp (or (stx-source relsrc)
                      (stx-e relsrc))))
             ((source-location-path? relsrc)
              (path-directory (source-location-path relsrc)))
             ((string? relsrc)
              (path-directory relsrc))
             ((not (null? (current-expander-path)))
              (path-directory (car (current-expander-path))))
             (else
              (current-directory))))))
    (path-expand path (path-normalize reldir))))

(def (core-deserialize-mark repr (ctx (current-expander-context)))
  (match repr
    ([phi . subs]
     (let (subst (and (not (null? subs)) (list->hash-table-eq subs)))
       (make-expander-mark subst ctx phi #f)))))

(def (syntax-local-rewrap stx)
  (stx-rewrap stx (current-expander-marks)))
(def (syntax-local-unwrap stx)
  (stx-unwrap stx (current-expander-marks)))
(def (syntax-local-introduce stx)
  (match (current-expander-marks)
    ([hd . _]
     (stx-apply-mark stx hd))
    (else stx)))

(def (syntax-local-e stx (E raise-syntax-ref-error))
  (let (bind (resolve-identifier stx))
    (if (syntax-binding? bind)
      (&syntax-binding-e bind)
      (E stx))))

(def (syntax-local-value stx (E raise-syntax-ref-error))
  (let (e (syntax-local-e stx E))
    (if (expander? e)
      (expander-e e)
      e)))

(def (raise-syntax-ref-error stx)
  (raise-syntax-error #f "Bad syntax; not a syntax binding" stx))
