;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil.expander modules
prelude: "../core"
package: gerbil/expander
namespace: gx

(export #t)
(import "common" "stx" "core" "top")
(declare (not safe))

(def __module-registry (make-hash-table))
(def __module-pkg-cache (make-hash-table))

(defstruct module-import (source name phi weak?)
  final: #t print: #t)
(defstruct module-export (context key phi name weak?)
  final: #t transparent: #t)

(defstruct import-set (source phi imports)
  final: #t print: (source phi))
(defstruct export-set (source phi exports)
  final: #t print: (source phi))

(defclass (import-expander user-expander) ()
  constructor: :init!)
(defclass (export-expander user-expander) ()
  constructor: :init!)
(defclass (import-export-expander import-expander export-expander) ()
  constructor: :init!)

(def current-import-expander-phi
  (make-parameter #f))
(def current-export-expander-phi
  (make-parameter #f))
(def current-module-reader-path
  (make-parameter #f))
(def current-module-reader-args
  (make-parameter #f))

(def source-file-settings '(char-encoding: UTF-8 eol-encoding: lf))

(def (call-with-input-source-file path fun)
  (call-with-input-file [path: path . source-file-settings] fun))

(defmethod {:init! module-context}
  (lambda (self id super ns path)
    (struct-instance-init! self id (make-hash-table-eq) super #f #f
                           ns path [] [] #f #f)))

(defmethod {:init! prelude-context}
  (lambda (self ctx (root #f))
    (let (super (or root (core-context-root) (make-root-context)))
      (if ctx
        (let ((id   (expander-context-id ctx))
              (path (module-context-path ctx))
              (in   (map core-module-export->import
                         (module-context-export ctx)))
              (e    (delay-atomic (eval-module ctx))))
          (struct-instance-init! self id (make-hash-table-eq size: (length in))
                                 super #f #f
                                 path in e)
          (for-each (cut core-bind-weak-import! <> self) in))
        (struct-instance-init! self #f (make-hash-table-eq)
                               super #f #f
                               #f [] #f)))))

(def (import-export-expander-init! self e)
  (struct-instance-init! self
      e (current-expander-context) (fx1- (current-expander-phi))))

(defmethod {:init! import-expander}
  import-export-expander-init!)

(defmethod {:init! export-expander}
  import-export-expander-init!)

(defmethod {:init! import-export-expander}
  import-export-expander-init!)

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
      (error "cannot eval module" obj)))))

(def (core-context-prelude (ctx (current-expander-context)))
  (let lp ((e ctx))
    (cond
     ((or (module-context? e)
          (local-context? e))
      (lp (&phi-context-super e)))
     ((prelude-context? e) e)
     (else #f))))

(def (core-module->prelude-context ctx)
  (cond
   ((hash-get __module-registry ctx))
   (else
    (let (pre (make-prelude-context ctx))
      (hash-put! __module-registry ctx pre)
      pre))))

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
                  (error "cannot import module; unknown prelude" rpath pre))))
               (ctx
                (make-module-context id prelude ns path))
               (body
                (core-expand-module-begin body ctx))
               (body
                (core-quote-syntax
                 (core-cons '%#begin body)
                 path ctx [])))
          (set! (&module-context-e ctx)
            (delay-atomic (eval-syntax* body)))
          (set! (&module-context-code ctx)
            body)
          (hash-put! __module-registry path ctx)
          (hash-put! __module-registry id ctx)
          ctx))))

  (def (import-submodule rpath)
    (with ([origin . refs] rpath)
      (let (ctx (if origin
                  (core-import-module origin reload?)
                  (current-expander-context)))
        (let lp ((rest refs) (ctx ctx))
          (match rest
            ([id . rest]
             (let (bind (resolve-identifier id 0 ctx))
               (if (and (syntax-binding? bind)
                        (module-context? (&syntax-binding-e bind)))
                 (lp rest (&syntax-binding-e bind))
                 (error "cannot import submodule; not bound as a module" rpath id bind))))
            (else ctx))))))

  (cond
   ((and (not reload?) (hash-get __module-registry rpath)))
   ((list? rpath)
    (import-submodule rpath))
   ((core-library-module-path? rpath)
    (let (ctx (core-import-module (core-resolve-library-module-path rpath)
                                  reload?))
      (hash-put! __module-registry rpath ctx)
      ctx))
   (else
    (let (npath (path-normalize rpath))
      (cond
       ((and (not reload?) (hash-get __module-registry npath)))
       (else (import-source npath)))))))

(def (core-read-module path)
  (with-catch
   (lambda (exn)
     (if (and (datum-parsing-exception? exn)
              (eq? (datum-parsing-exception-filepos exn) 0))
       (core-read-module/lang path)
       (raise-syntax-error 'read-module "error reading module" path
                           (parameterize ((dump-stack-trace? #f))
                             (call-with-output-string "" (cut display-exception exn <>))))))
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
                 ((stx-string? ns)
                  (stx-e ns))
                 ((stx-false? ns)
                  #!void)
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
       (let* (((values pre ns pkg)
               (if pkg
                 (values pre ns pkg)
                 (core-read-module-package path pre ns)))
              (prelude
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
              (module-ns (if (void? ns) #f (or ns pkg-id))))
         (values prelude module-id module-ns body))))))

(def (core-read-module/lang path)
  (def (default-read-module-body inp)
    (let lp ((body []))
      (let (next (read-syntax inp))
        (if (eof-object? next)
          (reverse body)
          (lp (cons next body))))))

  (def (read-body inp pre ns pkg args)
    (let* (((values pre ns pkg)
            (if pkg
              (values pre ns pkg)
              (core-read-module-package path pre ns)))
           (prelude
            (import-module pre))
           (read-module-body
            (cond
             ((find (match <>
                      ((module-export _ _ 1 (eq? 'read-module-body)) #t)
                      (else #f))
                    (&module-context-export prelude))
              => (lambda (xport)
                   (let (proc
                         (with-catch void
                           (cut eval-syntax (binding-id (core-resolve-module-export xport)))))
                     (if (procedure? proc) proc
                         (raise-syntax-error #f
                           "Illegal #lang prelude; read-module-body is not a procedure"
                           path pre proc)))))
             (else default-read-module-body)))
           (path-id (core-module-path->namespace path))
           (pkg-id (if pkg (string-append pkg "/" path-id) path-id))
           (module-id (string->symbol pkg-id))
           (module-ns (or ns pkg-id))
           (body
            (parameterize ((current-module-reader-path path)
                           (current-module-reader-args args))
              (read-module-body inp))))
      (values prelude module-id module-ns body)))

  (def (string-e obj what)
    (cond
     ((string? obj) obj)
     ((symbol? obj)
      (symbol->string obj))
     (else
      (raise-syntax-error #f (string-append "Illegal module " what) path obj))))

  (def (read-lang-args inp args)
    (match args
      ([prelude . args]
       (let* ((pkg (pgetq package: args))
              (pkg (and pkg (string-e pkg "package")))
              (ns (pgetq namespace: args))
              (ns (and ns (string-e ns "namespace"))))
         (read-body inp prelude ns pkg args)))
      (else
       (raise-syntax-error #f "Illegal #lang arguments; missing prelude" path))))

  (def (read-lang inp)
    (let (head (read-line inp))
      (cond
       ((string-index head #\space)
        => (lambda (ix)
             (let (lang (substring head 0 ix))
               (if (equal? lang "#lang")
                 (let* ((rest (substring head (fx1+ ix) (string-length head)))
                        (args
                         (with-catch
                          (cut raise-syntax-error #f "Illegal #lang arguments" path <>)
                          (cut call-with-input-string rest (cut read-all <> read)))))
                   (read-lang-args inp args))
                 (raise-syntax-error #f "Illegal module syntax" path)))))
       (else
        (raise-syntax-error #f "Illegal module syntax" path)))))

  (def (read-e inp)
    (if (eq? (peek-char inp) #\#)
      (read-lang inp)
      (raise-syntax-error #f "Illegal module syntax" path)))

  (call-with-input-source-file path read-e))

(def (core-read-module-package path pre ns)
  (def (string-e e)
    (cond
     ((symbol? e)
      (symbol->string e))
     ((string? e) e)
     (else
      (raise-syntax-error #f "Malformed package info; unexpected datum" e))))

  (let lp ((dir (path-directory path))
           (pkg-path []))
    (let (gerbil.pkg (path-expand "gerbil.pkg" dir))
      (if (file-exists? gerbil.pkg)
        (let (plist (core-library-package-plist dir #t))
          (cond
           ((null? plist)               ; empty
            (let (pkg (and (not (null? pkg-path))
                           (string-join pkg-path "/")))
              (values pre ns pkg)))
           ((list? plist)               ; property list
            (let* ((root (pgetq package: plist))
                   (pkg (let (pkg-path
                              (if root
                                (cons (string-e root) pkg-path)
                                pkg-path))
                          (and (not (null? pkg-path))
                               (string-join pkg-path "/"))))
                   (ns (let (ns (or ns (pgetq namespace: plist)))
                         (and ns (string-e ns))))
                   (pre (or pre (pgetq prelude: plist))))
              (values pre ns pkg)))
           (else
            (raise-syntax-error #f "Malformed package info; unexpected datum" plist))))
        (let (dir* (path-strip-trailing-directory-separator dir))
          (if (or (string-empty? dir*) (equal? dir dir*))
            (values pre ns #f)         ; reached root -- no gerbil.pkg
            (let ((xpath (path-strip-directory dir*))
                  (xdir (path-directory dir*)))
              (lp xdir (cons xpath pkg-path)))))))))

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

;; for each path in load-path look for subpath with .ssi
;; (compiled module interface) or .ss (source)
(def (core-resolve-library-module-path libpath)
  (let* ((spath (symbol->string (stx-e libpath)))
         (spath (substring spath 1 (string-length spath)))
         (ext (path-extension spath))
         (ssi (if (string-empty? ext)
                (string-append spath ".ssi")
                (string-append (path-strip-extension spath) ".ssi")))
         (srcs (if (string-empty? ext)
                 (map (lambda (ext) (string-append spath ext))
                      '(".ss" ".sld" ".scm"))
                 [spath])))
    (let lp ((rest (load-path)))
      (match rest
        ([dir . rest]
         (def (resolve ssi srcs)
           (let (compiled-path (path-expand ssi dir))
             (if (file-exists? compiled-path)
               (path-normalize compiled-path)
               (let lpr ((rest-src srcs))
                 (match rest-src
                   ([src . rest-src]
                    (let (src-path (path-expand src dir))
                      (if (file-exists? src-path)
                        (path-normalize src-path)
                        (lpr rest-src))))
                   (else
                    (lp rest)))))))
         (cond
          ((core-library-package-path-prefix dir)
           => (lambda (prefix)
                (if (string-prefix? prefix spath)
                  (let ((ssi (substring ssi (string-length prefix) (string-length ssi)))
                        (srcs (map (lambda (src) (substring src (string-length prefix) (string-length src)))
                                   srcs)))
                    (resolve ssi srcs))
                  (lp rest))))
          (else
           (resolve ssi srcs))))
        ([] (raise-syntax-error #f "cannot find library module" libpath))))))

(def (core-resolve-library-relative-module-path modpath)
  (def (resolve path base)
    (cond
     ((string-rindex base #\/)
      => (lambda (idx)
           (core-resolve-library-module-path
            (string->symbol
             (string-append ":" (substring base 0 idx) "/" path)))))
     (else
      (core-resolve-library-module-path
       (string->symbol
        (string-append ":" path))))))

  (let ((spath (symbol->string (stx-e modpath)))
        (mod (core-context-top (current-expander-context) module-context?)))
    (unless mod
      (raise-syntax-error #f "cannot resolve relative module path; not in module context" modpath))
    (let (mpath (symbol->string (expander-context-id mod)))
      (let lp ((spath spath) (mpath mpath))
        (cond
         ((string-prefix? "../" spath)
          (cond
           ((string-rindex mpath #\/)
            => (lambda (idx)
                 (lp (substring spath 3 (string-length spath))
                     (substring mpath 0 idx))))
           (else
            (raise-syntax-error #f "cannot resolve relative module path; illegal traversal" modpath))))
         ((string-prefix? "./" spath)
          (lp (substring spath 2 (string-length spath)) mpath))
         (else
          (resolve spath mpath)))))))

(def (core-library-package-path-prefix dir)
  (cond
   ((pgetq package: (core-library-package-plist dir))
    => (lambda (pkg)
         (string-append (symbol->string pkg) "/")))
   (else #f)))

(def (core-library-package-plist dir (exists? #f))
  (cond
   ((hash-get __module-pkg-cache dir))
   (else
    (let* ((gerbil.pkg (path-expand "gerbil.pkg" dir))
           (plist
            (if (or exists? (file-exists? gerbil.pkg))
              (let (e (call-with-input-source-file gerbil.pkg read))
                (cond
                 ((eof-object? e) [])
                 ((list? e) e)
                 (else
                  (raise-syntax-error #f "Malformed package info; unexpected datum"
                                      gerbil.pkg e))))
              [])))
      (hash-put! __module-pkg-cache dir plist)
      plist))))

(def (core-library-module-path? stx)
  (core-special-module-path? stx #\:))

(def (core-library-relative-module-path? stx)
  (core-special-module-path? stx #\.))

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
        (make-import-binding (&binding-id e) key phi
                             e (&module-export-context source)
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
              (make-symbol (expander-context-id super) "~" bind-id)
              bind-id))
           (ns
            (symbol->string mod-id))
           (path
            (if (module-context? super)
              (let (path (&module-context-path super))
                (cond
                 ((or (pair? path) (null? path)) (cons bind-id path))
                 ((not path) bind-id)
                 (else [bind-id path])))
              bind-id)))
      (make-module-context mod-id super ns path)))

  (def (valid-module-id? id)
    (let* ((str (symbol->string id))
           (len (string-length str)))
      (and (fx>= len 1)
           (let loop ((index (fx- (string-length str) 1)))
             (if (fx>= index 0)
               (let (c (string-ref str index))
                 (and (or (and (char>=? c #\a) (char<=? c #\z))
                          (and (char>=? c #\A) (char<=? c #\Z))
                          (and (char>=? c #\0) (char<=? c #\9))
                          (char=? c #\_)
                          (char=? c #\-))
                      (loop (fx- index 1))))
               #t)))))

  (core-syntax-case stx ()
    ((_ id . body)
     (and (identifier? id)
          (stx-list? body))
     (if (valid-module-id? (stx-e #'id))
       (let* ((ctx (make-context id))
              (body
               (core-expand-module-begin body ctx))
              (body
               (core-quote-syntax
                (core-cons '%#begin body)
                (stx-source stx))))
         (set! (&module-context-e ctx)
           (delay-atomic (eval-syntax* body)))
         (set! (&module-context-code ctx)
           body)
         (core-bind-syntax! id ctx)
         (core-quote-syntax
          (core-list '%#module
                     (core-quote-syntax id)
                     body)
          (stx-source stx)))
       (raise-syntax-error #f "invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                           stx #'id)))))

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
     ((core-library-relative-module-path? hd)
      (import1 (import-module
                (core-resolve-library-relative-module-path hd))
               K rest r))
     (else
      (let (e (stx-e hd))
        (cond
         ((pair? e)
          (case (stx-e (car e))
            ((spec:)
             (import-spec hd K rest r))
            ((in:)
             (import-submodule hd K rest r))
            ((runtime:)
             (import-runtime hd K rest r))
            (else
             (raise-syntax-error #f "Bad syntax; illegal import" stx hd))))
         ((string? e)
          (import1 (import-module
                    (core-resolve-module-path hd (stx-source stx)))
                   K rest r))
         ((module-context? e)
          (K rest (cons e r)))
         (else
          (raise-syntax-error #f "Bad syntax; illegal import" stx hd)))))))

  (def (import1 ctx K rest r)
    (let (dphi (fx- (current-import-expander-phi)
                    (current-expander-phi)))
      (K rest
         (cons (make-import-set ctx dphi
                 (map (cut core-module-export->import <> #f dphi)
                      (&module-context-export ctx)))
               r))))

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
                        (cons (&module-export-phi out)
                              (&module-export-name out))
                        out))
           (&module-context-export src-ctx))
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
      (core-bind-import! hd current-ctx))

    (let lp ((rest rbody) (body []))
      (match rest
        ([hd . rest]
         (cond
          ((module-import? hd)
           (bind! hd)
           (when (and (fxpositive? (&module-import-phi hd))
                      (fxzero? (&module-export-phi (&module-import-source hd))))
             (hash-put! deps
                        (&module-export-context (&module-import-source hd))
                        #t)))
          ((import-set? hd)
           (for-each bind! (&import-set-imports hd))
           (when (fxpositive? (&import-set-phi hd))
             (hash-put! deps (&import-set-source hd) #t)))
          ((module-context? hd))
          (else
           (raise-syntax-error #f "Unexpected import" stx hd)))
         (lp rest (cons hd body)))
        (else
         (when (module-context? current-ctx)
           (set! (&module-context-import current-ctx)
             (foldl cons (&module-context-import current-ctx) body)))
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
                           (module-context? (&syntax-binding-e bind)))
                (raise-syntax-error #f "Bad syntax; not bound as module"
                                    where spath id))
              (lp rest (&syntax-binding-e bind))))
           (else ctx)))))))

(def (core-expand-import-source hd)
  (core-expand-import% ['import-internal% hd] #t))

(def (core-expand-export% stx (internal-expand? #f))
  (def (make-export bind
                    (phi (current-export-expander-phi))
                    (ctx (current-expander-context))
                    (name #f))
    (let* ((key (&binding-key bind))
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
              (phi-bind    (hash->list (&expander-context-table phi-ctx))))
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
                   ((core-library-relative-module-path? hd)
                    (import-module
                     (core-resolve-library-relative-module-path hd)))
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
        (make-module-export current-ctx key phi key #t)))

    (def (fold-e in r)
      (match in
        ((module-import out key phi)
         (if (and (fx= phi current-phi)
                  (eq? src (&module-export-context out)))
           (cons (import->export in) r)
           r))
        ((import-set ctx phi imports)
         (if (and (fx= phi current-phi)
                  (eq? src ctx))
           (foldl (lambda (in r) (cons (import->export in) r))
                  r imports)
           r))
      (else r)))

    (cons (make-export-set src current-phi
            (foldl fold-e [] (&module-context-import current-ctx)))
          r))

  (def (export! rbody)
    (def current-ctx (current-expander-context))

    (def (fold-e out r)
      (cond
       ((module-export? out)
        (cons out r))
       ((export-set? out)
        (foldl cons r (&export-set-exports out)))
       (else r)))

    (let (body (reverse rbody))
      (set! (&module-context-export current-ctx)
        (foldl fold-e (&module-context-export current-ctx) body))
      body))

  (def (expanded-export? e)
    (or (module-export? e)
        (export-set? e)))

  (cond
   ((or (module-context? (current-expander-context)) internal-expand?)
    (let (rbody (core-expand-import/export stx expanded-export?
                                           'apply-export-expander
                                           current-export-expander-phi
                                           expand1))
      (if internal-expand?
        (reverse rbody)
        (core-quote-syntax
         (core-cons '%#export (export! rbody))
         (stx-source stx)))))
   ((top-context? (current-expander-context))
    (core-quote-syntax
     (core-cons '%#begin [])
     (stx-source stx)))
   (else
    (raise-syntax-error #f "Illegal context" stx))))

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
