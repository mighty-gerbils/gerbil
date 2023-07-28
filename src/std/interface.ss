;;; -*- Gerbil -*-
;;; © vyzo
;;; Go-style interfaces
(import :gerbil/gambit/threads
        (only-in :std/generic type-of)
        (only-in :std/srfi/1 reverse!)
        (for-syntax (only-in :std/srfi/1 delete-duplicates)
                    (only-in :std/sort sort)
                    (only-in :std/misc/symbol compare-symbolic)))
(export interface interface-out
        interface-instance? interface-instance-object
        interface-descriptor? interface-descriptor-type interface-descriptor-methods)

;; base type for all interface instances
(defstruct interface-instance (object))

;; interface meta descriptor
(defstruct interface-descriptor (type methods))

;; prototype table
(def +interface-prototypes+ (make-hash-table))
(def +interface-prototypes-mx+ (make-mutex 'interface-constructor))

;; cast an object to an interface instance
(def (cast descriptor obj)
  (declare (not safe))
  (let (klass (interface-descriptor-type descriptor))
    (cond
     ((##structure-direct-instance-of? obj (##type-id klass))
      ;; already an instance of the right interface
      obj)
     ((interface-instance? obj)
      ;; another interface instance, recast
      (cast descriptor (interface-instance-object obj)))
     (else
      ;; vanilla object, convert to an interface instance
      (let* ((prototype-key (cons (##type-id klass) (type-of obj)))
             (prototype
              (begin
                (mutex-lock! +interface-prototypes-mx+)
                (cond
                 ((hash-get +interface-prototypes+ prototype-key)
                  => (lambda (prototype)
                       (mutex-unlock! +interface-prototypes-mx+)
                       prototype))
                 (else
                  (let* ((method-impls
                          (map (lambda (method)
                                 (or (method-ref obj method)
                                     (begin
                                       (mutex-unlock! +interface-prototypes-mx+)
                                       (error "Cannot create interface instance; missing method" (##type-name klass) method))))
                               (interface-descriptor-methods descriptor)))
                         (prototype
                          (apply ##structure klass #f method-impls)))
                    (hash-put! +interface-prototypes+ prototype-key prototype)
                    (mutex-unlock! +interface-prototypes-mx+)
                    prototype)))))
             (instance (##structure-copy prototype)))
        (##unchecked-structure-set! instance obj 1 klass #f)
        instance)))))

;; check if an object satisfies an interface
(def (satisfies? descriptor obj)
  (let (klass (interface-descriptor-type descriptor))
    (cond
     ((##structure-direct-instance-of? obj (##type-id klass)) #t)
     ((interface-instance? obj)
      (satisfies? descriptor (interface-instance-object obj)))
     (else
      ;; try to see if there is a prototype (and create one if we can while at it)
      ;; if we don't have or can't make a prototype, return #f
      (let (prototype-key (cons (##type-id klass) (type-of obj)))
        (mutex-lock! +interface-prototypes-mx+)
        (cond
         ((hash-get +interface-prototypes+ prototype-key)
          (mutex-unlock! +interface-prototypes-mx+)
          #t)
         (else
          (let lp ((rest (interface-descriptor-methods descriptor))
                   (impl []))
            (match rest
              ([method-name . rest]
               (cond
                ((method-ref obj method-name)
                 => (lambda (method) (lp rest (cons method impl))))
                (else
                 (mutex-unlock! +interface-prototypes-mx+)
                 #f)))
              (else
               (let (prototype (apply ##structure klass #f (reverse! impl)))
                 (hash-put! +interface-prototypes+ prototype-key prototype)
                 (mutex-unlock! +interface-prototypes-mx+)
                 #t)))))))))))

;; the all encompassing macro(s)
(begin-syntax
  (defstruct interface-info (name methods type descriptor
                                  constructor predicate instance-predicate
                                  method-impl unchecked-method-impl))

  (defmethod {apply-macro-expander interface-info}
    (with-syntax ((cast (quote-syntax cast)))
      (lambda (self stx)
        (syntax-case stx ()
          ((_ obj)
           (with-syntax ((descriptor (interface-info-descriptor self)))
             #'(cast descriptor obj))))))))

(defsyntax (interface stx)
  (def symbol<?
    (compare-symbolic (lambda (x) (symbol->string (stx-e x))) string<? #f))
  (def keyword<?
    (compare-symbolic (lambda (x) (keyword->string (stx-e x))) string<? #f))

  (def (fold-methods specs)
    (let (methods
          (foldl (lambda (spec methods)
                   (unless (interface-spec? spec)
                     (raise-syntax-error #f "Bad syntax; invalid interface spec" stx spec))
                   (if (identifier? spec)
                     (let (info (syntax-local-value spec false))
                       (unless (interface-info? info)
                         (raise-syntax-error #f "Bad syntax; not an interface type" stx spec))
                       (foldl cons methods (map syntax-local-introduce (interface-info-methods info))))
                     (cons spec methods)))
                 []
                 specs))
      ;; verify method compatibility, remove duplicates from mixins, and sort lexicographically
      ;; the mixin methods are processed first, so we reverse.
      (let lp ((rest (reverse methods)) (methods []))
        (match rest
          ([method . rest]
           (cond
            ((find (lambda (other) (stx-eq? (stx-car method) (stx-car other))) rest)
             => (lambda (duplicate)
                  (if (compatible-methods? method duplicate)
                    (lp rest methods)
                    (raise-syntax-error #f "Bad syntax; incompatible interface methods" stx method duplicate))))
            (else
             (lp rest (cons method methods)))))
          (else
           (sort methods (lambda (x y) (symbol<? (stx-car x) (stx-car y)))))))))

  (def (compatible-methods? left right)
    (let/cc return
      (let ((left-arity (method-arity left))
            (right-arity (method-arity right)))
        (unless (equal? left-arity right-arity)
          (return #f)))
      (let ((left-kws (method-keywords left))
            (right-kws (method-keywords right)))
        (unless (equal? left-kws right-kws)
          (return #f)))
      #t))

  (def (method-arity spec)
    (let lp ((rest (stx-cdr spec)) (required 0) (optional 0))
      (syntax-case rest ()
        ((id . rest)
         (identifier? #'id)
         (if (zero? optional)
           (lp #'rest (1+ required) optional)
           (raise-syntax-error #f "Bad syntax; bad method signature" stx spec)))
        (((id _) . rest)
         (identifier? #'id)
         (lp #'rest required (1+ optional)))
        ((kw _ . rest)
         (stx-keyword? #'kw)
         (lp #'rest required optional))
        (id
         (identifier? #'id)
         [required optional '...])
        (()
         [required optional]))))

  (def (method-keywords spec)
    (let lp ((rest spec) (required []) (optional []))
      (syntax-case rest ()
        ((id . rest)
         (identifier? #'id)
         (lp #'rest required optional))
        (((id _) . rest)
         (identifier? #'id)
         (lp #'rest required optional))
        ((kw id . rest)
         (and (stx-keyword? #'kw) (identifier? #'id))
         (lp #'rest (cons (stx-e #'kw) required) optional))
        ((kw (id _) . rest)
         (and (stx-keyword? #'kw) (identifier? #'id))
         (lp #'rest required (cons (stx-e #'kw) optional)))
        (_ (append (sort required keyword<?) (map list (sort optional keyword<?)))))))

  (def (module-type-id type-t)
    (cond
     ((module-context-ns (current-expander-context))
      => (lambda (ns) (stx-identifier type-t ns "#" type-t)))
     (else
      (let (mid (expander-context-id (current-expander-context)))
        (stx-identifier type-t mid "#" type-t)))))

  (def (interface-spec? spec)
    (syntax-case spec ()
      ((name . args)
       (identifier? #'name)
       (method-formals? #'args))
      (mixin (identifier? #'mixin) #t)
      (_ #f)))

  (def (method-formals? signature)
    (let lp ((rest signature))
      (syntax-case rest ()
        ((id . rest)
         (identifier? #'id)
         (lp #'rest))
        (((id _) . rest)
         (identifier? #'id)
         (lp #'rest))
        ((kw id . rest)
         (and (stx-keyword? #'kw) (identifier? #'id))
         (lp #'rest))
        ((kw (id _) . rest)
         (and (stx-keyword? #'kw) (identifier? #'id))
         (lp #'rest))
        (id (identifier? #'id) #t)
        (() #t)
        (_ #f))))

  (def (method-arguments signature)
    (let lp ((rest signature) (args []))
      (syntax-case rest ()
        ((id . rest)
         (identifier? #'id)
         (lp #'rest (cons #'id args)))
        (((id default) . rest)
         (identifier? #'id)
         (lp #'rest (cons #'id args)))
        ((kw id . rest)
         (and (stx-keyword? #'kw) (identifier? #'id))
         (lp #'rest (cons* #'id #'kw args)))
        ((kw (id default) . rest)
         (and (stx-keyword? #'kw) (identifier? #'id))
         (lp #'rest (cons* #'id #'kw args)))
        (id
         (identifier? #'id)
         (let (args (foldl cons [#'id] args))
           (check-duplicate-identifiers args signature)
           args))
        (()
         (let (args (reverse args))
           (check-duplicate-identifiers args signature)
           args)))))

  (syntax-case stx ()
    ((_ hd spec ...)
     (or (identifier? #'hd)
         (identifier-list? #'hd))
     (with-syntax* ((name (if (identifier? #'hd) #'hd (stx-car #'hd)))
                    (klass (stx-identifier #'name #'name "::t"))
                    (klass-type-id
                     (if (module-context? (current-expander-context))
                       (module-type-id #'klass)
                       (genident #'klass)))
                    (descriptor (stx-identifier #'name #'name "::descriptor"))
                    (make (stx-identifier #'name "make-" #'name))
                    (predicate (stx-identifier #'name #'name "?"))
                    (instance-predicate (stx-identifier #'name "is-" #'name "?"))
                    ((mixin ...)
                     (if (identifier? #'hd) [] (stx-cdr #'hd)))
                    ((method ...)
                     (fold-methods #'(mixin ... spec ...)))
                    ((method-name ...)
                     (map stx-car #'(method ...)))
                    ((method-signature ...)
                     (map stx-cdr #'(method ...)))
                    ((method-impl-name ...)
                     (map (lambda (method-name)
                            (stx-identifier #'name #'name "-" method-name))
                          #'(method-name ...)))
                    ((unchecked-method-impl-name ...)
                     (map (lambda (method-name)
                            (stx-identifier #'name "&" #'name "-" method-name))
                          #'(method-name ...)))
                    ((defmethod-impl ...)
                     (map (lambda (method-impl-name unchecked-method-impl-name signature offset)
                            (with-syntax ((method method-impl-name)
                                          (unchecked-method unchecked-method-impl-name)
                                          (offset offset))
                              (if (stx-list? signature)
                                (with-syntax (((in ...) signature)
                                              ((out ...) (method-arguments signature)))
                                  #'(begin
                                      (def (method self in ...)
                                        (let (instance (cast descriptor self))
                                          (let ((obj (##unchecked-structure-ref instance 1 klass 'method))
                                                (f   (##unchecked-structure-ref instance offset klass 'method)))
                                            (f obj out ...))))
                                      (def (unchecked-method self in ...)
                                        (declare (not safe))
                                        (let ((obj (##unchecked-structure-ref self 1 klass 'method))
                                              (f   (##unchecked-structure-ref self offset klass 'method)))
                                          (f obj out ...)))))
                                ;; variadic, we have to use apply
                                (with-syntax ((in signature)
                                              ((out ...) (method-arguments signature)))
                                  #'(begin
                                      (def (method self . in)
                                        (let (instance (cast descriptor self))
                                          (let ((obj (##unchecked-structure-ref instance 1 klass 'method))
                                                (f   (##unchecked-structure-ref instance offset klass 'method)))
                                            (apply f obj out ...))))
                                      (def (unchecked-method self . in)
                                        (declare (not safe))
                                        (let ((obj (##unchecked-structure-ref self 1 klass 'method))
                                              (f   (##unchecked-structure-ref self offset klass 'method)))
                                          (apply f obj out ...))))))))
                          #'(method-impl-name ...)
                          #'(unchecked-method-impl-name ...)
                          #'(method-signature ...)
                          (iota (length #'(method-name ...)) 2)))
                    (field-count
                     (length #'(method-name ...)))
                    (defklass
                      #'(def klass
                          (make-struct-type 'klass-type-id          ; type id
                                            interface-instance::t   ; super
                                            field-count             ; fields
                                            'name                   ; type name
                                            '((final: . #t))        ; plist
                                            #f                      ; constructor (none)
                                            '(method-name ...))))   ; field names
                    (defdescriptor
                      #'(def descriptor
                          (make-interface-descriptor klass '(method-name ...))))
                    (defmake
                      #'(def (make obj)
                          (cast descriptor obj)))
                    (defpred
                      #'(def (predicate obj)
                          (direct-instance? klass obj)))
                    (defpred-instance
                      #'(def (instance-predicate obj)
                          (satisfies? descriptor obj)))
                    (definfo
                      #'(defsyntax name
                          (make-interface-info 'name
                                               '(method ...)
                                               (quote-syntax klass)
                                               (quote-syntax descriptor)
                                               (quote-syntax make)
                                               (quote-syntax predicate)
                                               (quote-syntax instance-predicate)
                                               [(quote-syntax method-impl-name) ...]
                                               [(quote-syntax unchecked-method-impl-name) ...]))))
       #'(begin defklass defdescriptor defmake defpred defpred-instance definfo
                defmethod-impl ...)))))

(defsyntax-for-export (interface-out stx)
  (def (expand body unchecked?)
    (syntax-case body ()
      ((id ...)
       (identifier-list? #'(id ...))
       (let lp ((rest #'(id ...)) (ids []))
         (syntax-case rest ()
           ((id . rest)
            (let (info (syntax-local-value #'id false))
              (unless (interface-info? info)
                (raise-syntax-error #f "not an interface type" stx #'id))
              (with ((interface-info _ _ type descriptor constructor predicate instance-predicate method-impl unchecked-impl) info)
                (lp #'rest [#'id type descriptor constructor predicate instance-predicate method-impl ... (if unchecked? unchecked-impl []) ...]))))
           (_ (cons begin: ids)))))))

  (syntax-case stx ()
    ((_ unchecked: unchecked? body ...)
     (expand #'(body ...) (stx-e #'unchecked?)))
    ((_ body ...)
     (expand #'(body ...) #f))))
