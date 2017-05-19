;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil.expander modules
prelude: :<core>
package: gerbil/expander
namespace: gx

(export #t)
(import "common" "stx" "core" "top")

(defstruct module-import (source name phi weak?)
  id: gx#module-import::t
  final: #t)
(defstruct module-export (context key phi name weak?)
  id: gx#module-export::t
  final: #t)

(defstruct import-set (source phi imports)
  id: gx#import-set::t
  final: #t)
(defstruct export-set (source phi exports)
  id: gx#export-set::t
  final: #t)

(defstruct (import-expander user-expander) ()
  id: gx#import-expander::t
  constructor: :init!)
(defstruct (export-expander user-expander) ()
  id: gx#export-expander::t
  constructor: :init!)

(def current-import-expander-phi
  (make-parameter #f))
(def current-export-expander-phi
  (make-parameter #f))
(def current-module-reader-path
  (make-parameter #f))

(defmethod {:init! module-context}
  (lambda (self id super ns path)
    (direct-struct-instance-init! self id (make-hash-table-eq) super #f #f
                                  ns path [] [] #f #f)))

(defmethod {:init! prelude-context}
  (lambda (self ctx (root #f))
    (let (super (or root (core-context-root) (make-root-context)))
      (if ctx
        (let ((id   (expander-context-id ctx))
              (path (module-context-path ctx))
              (in   (map core-module-export->import 
                         (module-context-export ctx)))
              (e    (delay (eval-module ctx))))
          (direct-struct-instance-init! self id (make-hash-table-eq) super #f #f
                                        path in e)
          (for-each (cut core-bind-weak-import! <> self) in))
        (direct-struct-instance-init! self #f (make-hash-table-eq) super #f #f
                                      #f [] #f)))))

(defmethod {:init! import-expander}
  (lambda (self e)
    (direct-struct-instance-init! self 
      e (current-expander-context) (fx1- (current-expander-phi)))))

(defmethod {:init! export-expander}
  (lambda (self e)
    (direct-struct-instance-init! self 
      e (current-expander-context) (fx1- (current-expander-phi)))))

(defmethod {apply-import-expander import-expander}
  (cut core-apply-user-expander <> <> 'apply-import-expander))
(defmethod {apply-export-expander export-expander}
  (cut core-apply-user-expander <> <> 'apply-export-expander))

(def (module-source-path ctx)
  (let* ((path (module-context-path ctx))
         (path (if (pair? path)
                 (last path)
                 path)))
    (and (string? path) path)))

(def (import-module path (reload? #f) (eval? #f))
  (let (ctx ((current-expander-module-import) path reload?))
    (when (and ctx eval?)
      (eval-module ctx))
    ctx))

(def (eval-module mod)
  ((current-expander-module-eval) mod))

(def (core-eval-module obj)
  (def (force-e getf e)
    (parameterize ((current-expander-context e)
                   (current-expander-phi 0))
      (force (getf e))))
  
  (let recur ((e obj))
    (cond 
     ((module-context? e)
      (cond ((core-context-prelude e) => recur))
      (force-e module-context-e e))
     ((prelude-context? e)
      (force-e prelude-context-e e))
     ((stx-string? e)
      (recur (import-module (core-resolve-module-path e))))
     ((core-library-module-path? e)
      (recur (import-module (core-resolve-library-module-path e))))
     (else
      (error "Cannot eval module" obj)))))

(def (core-context-prelude (ctx (current-expander-context)))
  (let lp ((e ctx))
    (cond
     ((or (module-context? e)
          (local-context? e))
      (lp (phi-context-super e)))
     ((prelude-context? e) e)
     (else #f))))

(def (core-module->prelude-context ctx)
  (let (ht (current-expander-module-registry))
    (cond
     ((hash-get ht ctx) => values)
     (else
      (let (pre (make-prelude-context ctx))
        (hash-put! ht ctx pre)
        pre)))))

(def (core-import-module rpath (reload? #f))
  (def (import-source path)
    (when (member path (current-expander-path))
      (error "Cyclic expansion" path))
    (parameterize ((current-expander-context (core-context-root))
                   (current-expander-marks [])
                   (current-expander-phi 0)
                   (current-expander-path 
                    (cons path (current-expander-path)))
                   (current-import-expander-phi #f)
                   (current-export-expander-phi #f))
      (let-values (((pre id ns body) (core-read-module path)))
        (let* ((prelude
                (cond
                 ((prelude-context? pre) pre)
                 ((module-context? pre) 
                  (core-module->prelude-context pre))
                 ((string? pre) 
                  (core-module->prelude-context
                   (core-import-module pre)))
                 ((not pre)
                  (or (current-expander-module-prelude)
                      (make-prelude-context #f)))
                 (else
                  (error "Cannot import module; unknown prelude" rpath pre))))
               (ctx 
                (make-module-context id prelude ns path))
               (body
                (core-expand-module-begin body ctx))
               (body
                (core-quote-syntax 
                 (core-cons '%#begin body)
                 path ctx [])))
          (set! (module-context-e ctx)
            (delay (eval-syntax* body)))
          (set! (module-context-code ctx)
            body)
          (hash-put! (current-expander-module-registry) path ctx)
          (hash-put! (current-expander-module-registry) id ctx)
          ctx))))
  
  (cond
   ((and (not reload?) (hash-get (current-expander-module-registry) rpath))
    => values)
   ((core-library-module-path? rpath)
    (let (ctx (core-import-module (core-resolve-library-module-path rpath) 
                                  reload?))
      (hash-put! (current-expander-module-registry) rpath ctx)
      ctx))
   (else
    (let (npath (path-normalize rpath))
      (cond
       ((and (not reload?) 
             (hash-get (current-expander-module-registry) npath))
        => values)
       (else (import-source npath)))))))

(def (core-read-module path)
  (with-catch
   (lambda (exn)
     (if (and (datum-parsing-exception? exn)
              (eq? (datum-parsing-exception-filepos exn) 0))
       (core-read-module/lang path)
       (raise exn)))
   (cut core-read-module/sexp path)))

(def (core-read-module/sexp path)
  (let lp ((body (read-syntax-from-file path)) (pre #f) (ns #f) (pkg #f))
    (core-syntax-case body ()
      ((prelude: prelude . rest)
       (lp rest prelude ns pkg))
      ((namespace: ns . rest)
       (let (ns (cond
                 ((identifier? ns)
                  (symbol->string (stx-e ns)))
                 ((or (stx-string? ns) (stx-false? ns))
                  (stx-e ns))
                 (else
                  (raise-syntax-error 'import 
                    "Bad syntax; illegal namespace" ns))))
         (lp rest pre ns pkg)))
      ((package: pkg . rest)
       (let (pkg (cond
                  ((identifier? pkg)
                   (symbol->string (stx-e pkg)))
                  ((or (stx-string? pkg) (stx-false? pkg))
                   (stx-e pkg))
                  (else
                   (raise-syntax-error 'import
                     "Bad syntax; Illegal package name" pkg))))
         (lp rest pre ns pkg)))
      (else
       (let* ((prelude
               (cond
                ((core-bound-module-prelude? pre)
                 (syntax-local-e pre))
                ((core-library-module-path? pre)
                 (core-resolve-library-module-path pre))
                ((stx-string? pre)
                 (core-resolve-module-path pre path))
                (else
                 (stx-e pre))))
              (path-id   (core-module-path->namespace path))
              (pkg-id (if pkg (string-append pkg "/" path-id) path-id))
              (module-id (string->symbol pkg-id))
              (module-ns (or ns pkg-id)))
         (values prelude module-id module-ns body))))))

(def (core-read-module/lang path)
  (def (read-body inp pre pkg ns)
    (let* ((pre
            (let (len (string-length pre))
              (if (and (fx> len 1)
                       (eq? (string-ref pre 0) #\")
                       (eq? (string-ref pre (fx1- len)) #\"))
                (substring pre 1 (fx1- len)) ; looks like a string path; good luck with spaces
                (string->symbol pre))))
           (prelude
            (import-module pre))
           (read-module-body
            (cond
             ((find (match <>
                      ((module-export _ _ 1 (eq? 'read-module-body)) #t)
                      (else #f))
                    (module-context-export prelude))
              => (lambda (xport)
                   (let (proc
                         (with-catch void
                           (cut eval-syntax (binding-id (core-resolve-module-export xport)))))
                     (if (procedure? proc) proc
                         (raise-syntax-error #f
                           "Illegal lang prelude; read-module-body is not a procedure" path proc)))))
             (else
              (raise-syntax-error #f
                "Illegal lang prelude; does not export read-module-body for syntax" path))))
           (path-id   (core-module-path->namespace path))
           (pkg-id (if pkg (string-append pkg "/" path-id) path-id))
           (module-id (string->symbol pkg-id))
           (module-ns (or ns pkg-id))
           (body
            (parameterize ((current-module-reader-path path))
              (read-module-body inp))))
      (values prelude module-id module-ns body)))
  
  (def (read-lang inp)
    ;; this head parsing approach breaks module paths with spaces
    ;; but it's simple, so i can live with it until someone complains
    (let* ((head (read-line inp))
           (tokens (filter (lambda (str) (not (string-empty? str)))
                           (string-split head #\space))))
      (match tokens
        (["#lang" prelude . args]
         (let lp ((rest args) (pkg #f) (ns #f))
           (match rest
             (["package:" pkg . rest]
              (lp rest pkg ns))
             (["namespace:" ns . rest]
              (lp rest pkg ns))
             ([]
              (read-body inp prelude pkg ns))
             (else
              (raise-syntax-error #f "Illegal #lang arguments" path rest)))))
        (else
         (raise-syntax-error #f "Illegal module syntax" path)))))
  
  (def (read-e inp)
    (if (eq? (peek-char inp) #\#)
      (read-lang inp)
      (raise-syntax-error #f "Illegal module syntax" path)))
  
  (call-with-input-file path read-e))

(def (core-module-path->namespace path)
  (path-strip-extension (path-strip-directory path)))

(def (core-module-path->id path)
  (string->symbol (core-module-path->namespace path)))

;; rel: source-location/path
(def (core-resolve-module-path stx-path (rel #f))
  (let* ((path (stx-e stx-path))
         (path (if (string-empty? (path-extension path))
                 (string-append path ".ss")
                 path)))
    (core-resolve-path path (or (stx-source stx-path) rel))))

;; for each path in current-expander-module-library-path look for 
;;  subpath with .ssi (compiled module interface) or .ss
(def (core-resolve-library-module-path libpath)
  (let* ((spath (symbol->string (stx-e libpath)))
         (spath (substring spath 1 (string-length spath)))
         (ext (path-extension spath))
         (ssi (if (string-empty? ext)
                (string-append spath ".ssi")
                (string-append (path-strip-extension spath) ".ssi")))
         (src (if (string-empty? ext)
                (string-append spath ".ss")
                spath)))
    (let lp ((rest (current-expander-module-library-path)))
      (match rest
        ([dir . rest]
         (let (compiled-path (path-expand ssi dir))
           (if (file-exists? compiled-path)
             (path-normalize compiled-path)
             (let (src-path (path-expand src dir))
               (if (file-exists? src-path)
                 (path-normalize src-path)
                 (lp rest))))))
        ([] (raise-syntax-error #f "Cannot find library module" libpath))))))


(def (core-library-module-path? stx)
  (core-special-module-path? stx #\:))

(def (core-special-module-path? stx char)
  (and (identifier? stx)
       (interned-symbol? (stx-e stx))
       (let (str (symbol->string (stx-e stx)))
         (and (fx> (string-length str) 1)
              (eq? (string-ref str 0) char)))))

(def (core-bound-prelude? stx)
  (core-bound-identifier? stx
    (cut expander-binding? <> prelude-context?)))

(def (core-bound-module? stx)
  (core-bound-identifier? stx 
    (cut expander-binding? <> module-context?)))

(def (core-bound-module-prelude? stx)
  (def (module-prelude? e)
    (or (module-context? e)
        (prelude-context? e)))
  
  (core-bound-identifier? stx
    (cut expander-binding? <> module-prelude?)))

(def (core-bind-import! in 
                        (ctx (current-expander-context)) 
                        (force-weak? #f))
  (with ((module-import source key phi weak?) in)
    (core-bind! key 
      (let (e (core-resolve-module-export source))
        (make-import-binding (binding-id e) key phi
                             e (module-export-context source) 
                             (or force-weak? weak?)))
      core-context-rebind? phi ctx)))

(def (core-bind-weak-import! in (ctx (current-expander-context)))
  (core-bind-import! in ctx #t))

(def (core-resolve-module-export out)
  (def (subst key)
    (match key
      ([id . mark]
       (with ((expander-mark subst) mark)
         (or (and subst (hash-get subst id))
             (raise-syntax-error #f "Illegal key; missing substitution" key))))
      (else key)))
  
  (with ((module-export ctx key phi _ _) out)
    (core-context-resolve (core-context-shift ctx phi) (subst key))))

(def (core-module-export->import out (rename #f) (dphi 0))
  (with ((module-export ctx key phi name weak?) out)
    (make-module-import out (or rename name) (fx+ phi dphi) weak?)))

;;; expansion
(def (core-expand-module% stx)
  (def (make-context id)
    (let* ((super
            (current-expander-context))
           (bind-id (stx-e id))
           (mod-id
            (if (module-context? super)
              (make-symbol (expander-context-id super) "::" bind-id)
              bind-id))
           (ns
            (symbol->string mod-id))
           (path
            (if (module-context? super)
              (let (path (module-context-path super))
                (cond
                 ((or (pair? path) (null? path)) (cons bind-id path))
                 ((not path) bind-id)
                 (else [bind-id path])))
              bind-id)))
      (make-module-context mod-id super ns path)))
  
  (core-syntax-case stx ()
    ((_ id . body)
     (and (identifier? id)
          (stx-list? body))
     (let* ((ctx (make-context id))
            (body
             (core-expand-module-begin body ctx))
            (body
             (core-quote-syntax
              (core-cons '%#begin body)
              (stx-source stx))))
       (set! (module-context-e ctx)
         (delay (eval-syntax* body)))
       (set! (module-context-code ctx)
         body)
       (core-bind-syntax! id ctx)
       (core-quote-syntax
        (core-list '%#module 
          (core-quote-syntax id)
          body)
        (stx-source stx))))))

(def (core-expand-module-begin body ctx)
  (parameterize ((current-expander-context ctx)
                 (current-expander-phi 0))
    (core-bind-feature! 'gerbil-module #t)
    (let (stx (core-expand-head (cons '%%begin-module body)))
      (core-syntax-case stx (%#begin-module)
        ((%#begin-module . body)
         (if (sealed-syntax? stx) ; full expansion
           body
           (core-expand-module-body body)))
        (else
         (raise-syntax-error #f "Illegal module body expansion" stx))))))

(def (core-expand-module-body body)
  (def (expand-special hd K rest r)
    (core-syntax-case hd (%#define-values %#export)
      ((%#define-values hd-bind expr)
       (core-bind-values? hd-bind)
       (begin
         (core-bind-values! hd-bind)
         (K rest (cons hd r))))
      ((%#export . _)
       (K rest (cons hd r)))
      (else
       (K rest (cons (core-expand-top hd) r)))))
  
  (def (expand-body rbody)
    (let lp ((rest rbody) (body []))
      (match rest
        ([hd . rest]
         (core-syntax-case hd (%#define-values %#export)
           ((%#define-values hd-bind expr)
            (lp rest 
                (cons 
                 (core-quote-syntax 
                  (core-list '%#define-values
                    (core-quote-bind-values hd-bind)
                    (core-expand-expression expr))
                  (stx-source hd))
                 body)))
           ((%#export . _)
            (lp rest
                (cons (core-expand-export% hd) body)))
           ((form . _)
            (core-bound-identifier? form special-form-binding?)
            (lp rest (cons hd body)))
           (else
            (lp rest (cons (core-expand-expression hd) body)))))
        (else body))))
  
  (expand-body
   (core-expand-block
    (cons '%#begin-module body)
    expand-special #f values)))

(def (core-expand-import/export stx expanded? method current-phi expand1)
  (def (K rest r)
    (core-syntax-case rest ()
      ((hd . rest)
       (step hd rest r))
      (else r)))
  
  (def (step hd rest r)
    (core-syntax-case hd ()
      ((phi: dphi . body)
       (stx-fixnum? dphi)
       (let (rbody 
             (parameterize ((current-phi (fx+ (stx-e dphi) (current-phi))))
               (K body [])))
         (K rest (foldr cons r rbody))))
      ((begin: . body)
       (K (stx-foldr cons rest body) r))
      ((macro . body)
       (core-bound-identifier? macro syntax-binding?)
       (K (cons (core-apply-expander (syntax-local-e macro) hd method)
                rest)
          r))
      (else
       (if (expanded? (stx-e hd))
         (K rest (cons (stx-e hd) r))
         (expand1 hd K rest r)))))
  
  (core-syntax-case stx ()
    ((_ . body)
     (cond
      ((current-phi)
       (K body []))
      (else
       (parameterize ((current-phi (current-expander-phi)))
         (K body [])))))))

(def (core-expand-import% stx (internal-expand? #f))
  (def (expand1 hd K rest r)
    (cond
     ((core-bound-module? hd)
      (import1 (syntax-local-e hd) 
               K rest r))
     ((core-library-module-path? hd)
      (import1 (import-module 
                (core-resolve-library-module-path hd))
               K rest r))
     ((stx-string? hd)
      (import1 (import-module 
                (core-resolve-module-path hd (stx-source stx)))
               K rest r))
     ((module-context? (stx-e hd))
      (K rest (cons (stx-e hd) r)))
     ((import-spec? hd)
      (import-spec hd K rest r))
     ((import-submodule? hd)
      (import-submodule hd K rest r))
     ((import-runtime? hd)
      (import-runtime hd K rest r))
     (else
      (raise-syntax-error #f "Bad syntax; illegal import" stx hd))))
  
  (def (import1 ctx K rest r)
    (let (dphi (fx- (current-import-expander-phi)
                    (current-expander-phi)))
      (K rest
         (cons (make-import-set ctx dphi 
                 (map (cut core-module-export->import <> #f dphi) 
                      (module-context-export ctx)))
               r))))
  
  (def (import-spec? hd)
    (core-syntax-case hd ()
      ((spec: spath . specs) #t)
      (else #f)))
  
  (def (import-submodule? hd)
    (core-syntax-case hd ()
      ((in: top . sub) #t)
      (else #f)))
  
  (def (import-runtime? hd)
    (core-syntax-case hd ()
      ((runtime: top . spath) #t)
      (else #f)))
  
  (def (import-submodule hd K rest r)
    (core-syntax-case hd ()
      ((_ . spath)
       (import1 (import-spec-source spath) K rest r))))
  
  (def (import-runtime hd K rest r)
    (core-syntax-case hd ()
      ((_ . spath)
       (K rest (cons (import-spec-source spath) r)))))
  
  (def (import-spec hd K rest r)
    (core-syntax-case hd ()
      ((_ path)
       (K rest (cons (import-spec-source path) r)))
      ((_ path . specs)
       (let ((src-ctx (import-spec-source path))
             (exports (make-hash-table))
             (specs (syntax->list specs)))
         (for-each 
           (lambda (out)
             (hash-put! exports 
                        (cons (module-export-phi out)
                              (module-export-name out))
                        out))
           (module-context-export src-ctx))
         (K rest
            (foldl 
              (lambda (spec r)
                (core-syntax-case spec ()
                  ((phi name src-phi src-name)
                   (and (stx-fixnum? src-phi)
                        (identifier? src-name)
                        (stx-fixnum? phi)
                        (identifier? name))
                   (let ((src-phi (stx-e src-phi))
                         (src-name (core-identifier-key src-name))
                         (phi (stx-e phi))
                         (name (core-identifier-key name)))
                     (cond
                      ((hash-get exports (cons src-phi src-name))
                     => (lambda (out)
                          (cons (core-module-export->import 
                                 out name (fx- phi src-phi))
                                r)))
                    (else
                     (raise-syntax-error #f "Bad syntax; no matching export" 
                                         stx hd)))))))
              r specs))))))
  
  (def (import-spec-source spath)
    (core-import-nested-module spath stx))
  
  (def (import! rbody)
    (def current-ctx (current-expander-context))
    (def deps (make-hash-table-eq))
    
    (def (bind! hd)
      (core-bind-import! hd current-ctx)
      ;; track expansion-time eval deps
      (when (and (fxpositive? (module-import-phi hd))
                 (fxzero? (module-export-phi
                           (module-import-source hd))))
        (hash-put! deps
                   (module-export-context
                    (module-import-source hd))
                   #t)))
  
    (def (fold-e in r)
      (cond
       ((module-import? in)
        (cons in r))
       ((import-set? in)
        (foldl cons r (import-set-imports in)))
       (else r)))
    
    (let lp ((rest rbody) (body []))
      (match rest
        ([hd . rest]
         (cond
          ((module-import? hd)
           (bind! hd))
          ((import-set? hd)
           (for-each bind! (import-set-imports hd)))
          (else
           (unless (module-context? hd)
             (raise-syntax-error #f "Unexpected import" stx hd))))
         (lp rest (cons hd body)))
        (else
         (when (module-context? current-ctx)
           (set! (module-context-import current-ctx)
             (foldl fold-e (module-context-import current-ctx) body)))
         ;; eval expander deps
         (hash-for-each (lambda (ctx _) (eval-module ctx)) deps)
         body))))
  
  (def (expanded-import? e)
    (or (import-set? e)
        (module-import? e)
        (module-context? e)))
  
  (let (rbody (core-expand-import/export stx expanded-import?
                                         'apply-import-expander
                                         current-import-expander-phi
                                         expand1))
    (if internal-expand?
      (reverse rbody)
      (core-quote-syntax
       (core-cons '%#import (import! rbody))
       (stx-source stx)))))

(def (core-import-nested-module spath where)
  (core-syntax-case spath ()
    ((origin . sub)
     (let (origin-ctx 
           (if (stx-false? origin) 
             (current-expander-context)
             (import-module origin)))
       (let lp ((rest sub) (ctx origin-ctx))
         (core-syntax-case rest ()
           ((id . rest)
            (let (bind (resolve-identifier id 0 ctx))
              (unless (and (syntax-binding? bind)
                           (module-context? (syntax-binding-e bind)))
                (raise-syntax-error #f "Bad syntax; not bound as module"
                                    where spath id))
              (lp rest (syntax-binding-e bind))))
           (else ctx)))))))

(def (core-expand-import-source hd)
  (core-expand-import% ['import-internal% hd] #t))

(def (core-expand-export% stx (internal-expand? #f))
  (def (make-export bind 
                    (phi (current-export-expander-phi))
                    (ctx (current-expander-context))
                    (name #f))
    (let* ((key (binding-key bind))
           (export-key (if name (core-identifier-key name) key)))
      (make-module-export ctx key phi export-key 
                          (or (extern-binding? bind)
                              (import-binding? bind)))))
  
  (def (expand1 hd K rest r)
    (core-syntax-case hd ()
      (#t
       (let* ((current-ctx (current-expander-context))
              (current-phi (current-export-expander-phi))
              (phi-ctx     (core-context-shift current-ctx current-phi))
              (phi-bind    (hash->list (expander-context-table phi-ctx))))
         (let lp ((bind-rest phi-bind) (set []))
           (match bind-rest
             ([[key . bind] . bind-rest]
              (if (or (import-binding? bind)
                      (private-feature-binding? bind))
                (lp bind-rest set)
                (lp bind-rest
                    (cons (make-export bind current-phi current-ctx)
                          set))))
             (else 
              (K rest (cons (make-export-set #f current-phi set) r)))))))
      (id
       (identifier? id)
       (cond
        ((core-resolve-identifier id (current-export-expander-phi))
         => (lambda (bind)
              (K rest (cons (make-export bind) r))))
        (else
         (raise-syntax-error #f "Reference to unbound identifier" stx hd))))
      ((spec: phi id name)
       (and (stx-fixnum? phi) (identifier? id) (identifier? name))
       (let (phi (stx-e phi))
         (cond
          ((core-resolve-identifier id phi)
           => (lambda (bind)
                (K rest (cons (make-export bind phi (current-expander-context) 
                                           name) 
                              r))))
          (else
           (raise-syntax-error #f "Reference to unbound identifier" 
                               stx hd id)))))
      ((rename: id name)
       (let (phi (current-export-expander-phi))
         (cond
          ((core-resolve-identifier id phi)
           => (lambda (bind)
                (K rest (cons (make-export bind phi (current-expander-context) 
                                           name) 
                              r))))
          (else
           (raise-syntax-error #f "Reference to unbound identifier" 
                               stx hd id)))))
      ((import: . in)
       (stx-list? in)
       (let lp ((in-rest in) (r r))
         (core-syntax-case in-rest ()
           ((hd . in-rest)
            (let (src 
                  (cond
                   ((core-bound-module? hd) 
                    (syntax-local-e hd))
                   ((core-library-module-path? hd)
                    (import-module
                     (core-resolve-library-module-path hd)))
                   ((stx-string? hd)
                    (import-module
                     (core-resolve-module-path hd (stx-source stx))))
                   (else
                    (core-syntax-case hd ()
                      ((in: . spath)
                       (core-import-nested-module spath stx))
                      (else
                       (raise-syntax-error #f 
                         "Bad syntax; illegal re-export" stx hd))))))
              (lp in-rest (export-imports src r))))
           (else
            (K rest r)))))
      (else
       (raise-syntax-error #f "Bad syntax; illegal export" stx hd))))
  
  (def (export-imports src r)
    (def current-ctx (current-expander-context))
    (def current-phi (current-export-expander-phi))
    
    (def (import->export in)
      (with ((module-import out key phi) in)
        (and (fx= phi current-phi)
             (eq? src (module-export-context out))
             (make-module-export current-ctx key phi key #t))))
    
    (def (fold-e in r)
      (let (out (import->export in))
        (if out (cons out r) r)))
    
    (cons (make-export-set src current-phi
            (foldl fold-e [] (module-context-import current-ctx)))
          r))
  
  (def (export! rbody)
    (def current-ctx (current-expander-context))
    
    (def (fold-e out r)
      (cond
       ((module-export? out)
        (cons out r))
       ((export-set? out)
        (foldl cons r (export-set-exports out)))
       (else r)))
    
    (let (body (reverse rbody))
      (set! (module-context-export current-ctx)
        (foldl fold-e (module-context-export current-ctx) body))
      body))
  
  (def (expanded-export? e)
    (or (module-export? e)
        (export-set? e)))

  (let (rbody (core-expand-import/export stx module-export?
                                         'apply-export-expander
                                         current-export-expander-phi
                                         expand1))
    (if internal-expand?
      (reverse rbody)
      (core-quote-syntax
       (core-cons '%#export (export! rbody))
       (stx-source stx)))))

(def (core-expand-export-source hd)
  (core-expand-export% ['export-macro% hd] #t))

(def (core-expand-provide% stx)
  (core-syntax-case stx ()
    ((_ . body)
     (identifier-list? body)
     (begin
       (stx-for-each core-bind-feature! body)
       (core-quote-syntax
        (core-cons '%#provide (stx-map core-quote-syntax body))
        (stx-source stx))))))

(def (core-bind-feature! id 
                         (private? #f)
                         (phi (current-expander-phi))
                         (ctx (current-expander-context)))
  (core-bind-syntax! id
    ((if private? make-private-feature-expander make-feature-expander)
     (stx-e id))
    private? phi ctx))

