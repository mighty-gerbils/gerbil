;;; -*- Gerbil -*-
;;; © vyzo
;;; gerbil core prelude: import/export sugar
;;;
prelude: :<root>
package: gerbil/core

(import "runtime" "sugar" (phi: +1 "runtime" "expander" "sugar" "match"))
(export #t)

(defrules require ()
  ((_) (begin))
  ((recur feature . rest)
   (cond-expand
     (feature
      (recur . rest))
     (else
      (syntax-error "Missing required feature" feature)))))

(defrules defsyntax-for-import ()
  ((_ id expr)
   (identifier? #'id)
   (defsyntax id
     (make-import-expander expr)))
  ((recur (id . args) body ...)
   (identifier? #'id)
   (recur id (lambda args body ...))))

(defrules defsyntax-for-export ()
  ((_ id expr)
   (identifier? #'id)
   (defsyntax id
     (make-export-expander expr)))
  ((recur (id . args) body ...)
   (identifier? #'id)
   (recur id (lambda args body ...))))

(defrules defsyntax-for-import-export ()
  ((_ id expr)
   (identifier? #'id)
   (defsyntax id
     (make-import-export-expander expr)))
  ((recur (id . args) body ...)
   (identifier? #'id)
   (recur id (lambda args body ...))))

(defsyntax-for-import-export (for-syntax stx)
  (syntax-case stx ()
    ((_ body ...)
     #'(phi: +1 body ...))))

(defsyntax-for-import-export (for-template stx)
    (syntax-case stx ()
      ((_ body ...)
       #'(phi: -1 body ...))))

(defsyntax-for-import (only-in stx)
  (syntax-case stx ()
    ((_ hd id ...)
     (identifier-list? #'(id ...))
     (let* ((keys (stx-map core-identifier-key #'(id ...)))
            (keytab
             (let (ht (make-hash-table))
               (for-each (cut hash-put! ht <> #t) keys)
               ht))
            (imports (core-expand-import-source #'hd))
            (fold-e
             (rec (fold-e in r)
               (cond
                ((module-import? in)
                 (if (hash-get keytab (module-import-name in))
                   (cons in r)
                   r))
                ((import-set? in)
                 (foldl fold-e r (import-set-imports in)))
                (else r)))))
       (cons begin: (foldl fold-e [] imports))))))

(defsyntax-for-import (except-in stx)
  (syntax-case stx ()
    ((_ hd id ...)
     (identifier-list? #'(id ...))
     (let* ((keys (stx-map core-identifier-key #'(id ...)))
            (keytab
             (let (ht (make-hash-table))
               (for-each (cut hash-put! ht <> #t) keys)
               ht))
            (imports (core-expand-import-source #'hd))
            (fold-e
             (rec (fold-e in r)
               (cond
                ((module-import? in)
                 (if (hash-get keytab (module-import-name in))
                   r
                   (cons in r)))
                ((import-set? in)
                 (foldl fold-e r (import-set-imports in)))
                (else (cons in r))))))
       (cons begin: (foldl fold-e [] imports))))))

(begin-syntax
  (def (module-import-rename in rename)
    (make-module-import (module-import-source in)
                        rename
                        (module-import-phi in)
                        (module-import-weak? in)))

  (def (prefix-identifier-key name pre)
    (match name
      ([id . mark]
       (cons (make-symbol pre id) mark))
      (else
       (make-symbol pre name )))))

(defsyntax-for-import (rename-in stx)
  (syntax-case stx ()
    ((_ hd (id new-id) ...)
     (and (identifier-list? #'(id ...))
          (identifier-list? #'(new-id ...)))
     (let* ((keytab (make-hash-table))
            (found (make-hash-table))
            (_
             (for-each
               (lambda (id new-id)
                 (hash-put! keytab (core-identifier-key id) (core-identifier-key new-id)))
               #'(id ...)
               #'(new-id ...)))
            (imports (core-expand-import-source #'hd))
            (fold-e
             (rec (fold-e in r)
               (cond
                ((module-import? in)
                 (let (name (module-import-name in))
                   (cond
                    ((hash-get keytab name)
                     => (lambda (rename)
                          (hash-put! found name #t)
                          (cons (module-import-rename in rename) r)))
                    (else
                     (cons in r)))))
                ((import-set? in)
                 (foldl fold-e r (import-set-imports in)))
                (else
                 (cons in r)))))
            (new-imports (foldl fold-e [] imports)))
       ;; check to see if we found all identifiers in the rename set
       (for-each
         (lambda (id)
           (unless (hash-get found (core-identifier-key id))
             (raise-syntax-error #f "bad syntax; identifier is not in the import set" stx id)))
         #'(id ...))
       (cons begin: new-imports)))))

(defsyntax-for-import (prefix-in stx)
  (syntax-case stx ()
    ((_ hd pre)
     (identifier? #'pre)
     (let* ((pre (stx-e #'pre))
            (imports (core-expand-import-source #'hd))
            (rename-e
             (lambda (name)
               (prefix-identifier-key name pre)))
            (fold-e
             (rec (fold-e in r)
               (cond
                ((module-import? in)
                 (cons (module-import-rename in (rename-e (module-import-name in)))
                       r))
                ((import-set? in)
                 (foldl fold-e r (import-set-imports in)))
                (else
                 (cons in r))))))
       (cons begin: (foldl fold-e [] imports))))))

(defsyntax-for-import (group-in stx)
  (def (flatten list-of-lists)
    (foldr (lambda (v acc)
	         (cond
	          ((null? v) acc)
	          ((pair? v) (append (flatten v) acc))
	          (else (cons v acc))))
	       []
	       list-of-lists))

  (def (expand-path top mod)
    (syntax-case mod ()
      ((nested mod ...)
       (map (lambda (mod) (stx-identifier top top "/" mod))
            (flatten (map (cut expand-path #'nested <>) #'(mod ...)))))
      (id
       (or (identifier? #'id) (stx-fixnum? #'id))
       (stx-identifier top top "/" #'id))))

  (syntax-case stx ()
    ((_ top mod ...)
     (cons begin: (flatten (map (cut expand-path #'top <>) #'(mod ...)))))))

(defsyntax-for-export (except-out stx)
  (syntax-case stx ()
    ((_ hd id ...)
     (identifier-list? #'(id ...))
     (let* ((keys (stx-map core-identifier-key #'(id ...)))
            (keytab
             (let (ht (make-hash-table))
               (for-each (cut hash-put! ht <> #t) keys)
               ht))
            (exports (core-expand-export-source #'hd))
            (fold-e
             (rec (fold-e out r)
               (cond
                ((module-export? out)
                 (if (hash-get keytab (module-export-name out)) r
                     (cons out r)))
                ((export-set? out)
                 (foldl fold-e r (export-set-exports out)))
                (else r)))))
       (cons begin: (foldl fold-e [] exports))))))

(begin-syntax
  (def (module-export-rename out rename)
    (make-module-export (module-export-context out)
                        (module-export-key out)
                        (module-export-phi out)
                        rename
                        (module-export-weak? out))))

(defsyntax-for-export (rename-out stx)
  (syntax-case stx ()
    ((_ hd (id new-id) ...)
     (and (identifier-list? #'(id ...))
          (identifier-list? #'(new-id ...)))
     (let* ((keytab (make-hash-table))
            (found (make-hash-table))
            (_ (for-each
                 (lambda (id new-id)
                   (hash-put! keytab (core-identifier-key id) (core-identifier-key new-id)))
                 #'(id ...)
                 #'(new-id ...)))
            (exports (core-expand-export-source #'hd))
            (fold-e
             (rec (fold-e out r)
               (cond
                ((module-export? out)
                 (let (name (module-export-name out))
                   (cond
                    ((hash-get keytab name)
                     => (lambda (rename)
                          (hash-put! found name #t)
                          (cons (module-export-rename out rename)
                                r)))
                    (else
                     (cons out r)))))
                ((export-set? out)
                 (foldl fold-e r (export-set-exports out)))
                (else
                 (cons out r)))))
            (new-exports
             (foldl fold-e [] exports)))
       ;; check to see if we found all identifiers in the rename set
       (for-each
         (lambda (id)
           (unless (hash-get found (core-identifier-key id))
             (raise-syntax-error #f "bad syntax; identifier is not in the export set" stx id)))
         #'(id ...))
       (cons begin: new-exports)))))

(defsyntax-for-export (prefix-out stx)
  (syntax-case stx ()
    ((_ hd pre)
     (identifier? #'pre)
     (let* ((pre (stx-e #'pre))
            (exports (core-expand-export-source #'hd))
            (rename-e
             (lambda (name)
               (prefix-identifier-key name pre)))
            (fold-e
             (rec (fold-e out r)
               (cond
                ((module-export? out)
                 (cons (module-export-rename out (rename-e (module-export-name out)))
                       r))
                ((export-set? out)
                 (foldl fold-e r (export-set-exports out)))
                (else (cons out r))))))
       (cons begin: (foldl fold-e [] exports))))))

(defsyntax-for-export (struct-out stx)
  (def (identifiers id unchecked?)
    (let (info (syntax-local-value id false))
      (if (class-type-info? info)
        [id
         (!class-type-descriptor info)
         (let (ctor (!class-type-constructor info))
           (if ctor [ctor] []))
         ...
         (!class-type-predicate info)
         (map cdr (!class-type-accessors info)) ...
         (map cdr (!class-type-mutators info)) ...
         (if unchecked?
           [(map cdr (!class-type-unchecked-accessors info)) ...
            (map cdr (!class-type-unchecked-mutators info)) ...]
           [])
         ...]
        (raise-syntax-error #f "no class type info" stx id))))

  (syntax-case stx ()
    ((_ unchecked: unchecked? id ...)
     (cons 'begin:
           (concatenate (stx-map (cut identifiers <> (stx-e #'unchecked?))
                                 #'(id ...)))))
    ((_ id ...)
     (cons 'begin:
           (concatenate (stx-map (cut identifiers <> #f)
                                 #'(id ...)))))))
