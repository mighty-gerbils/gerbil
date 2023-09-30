;;; -*- Gerbil -*-
;;; © vyzo
;;; Go-style interfaces
(import :std/error
        :std/sugar
        (only-in :std/srfi/1 reverse!)
        (for-syntax :gerbil/expander
                    (only-in :std/srfi/1 delete-duplicates)
                    (only-in :std/sort sort)
                    (only-in :std/misc/symbol compare-symbolic)))
(export interface interface-out
        interface-instance? interface-instance-object &interface-instance-object
        interface-descriptor? interface-descriptor-type interface-descriptor-methods
        interface-cast-error?
        (for-syntax #t))
(declare (not safe))

(deferror-class CastError () interface-cast-error?)
(defraise/context (raise-cast-error where message irritants ...)
  (CastError message irritants: [irritants ...]))

;; base type for all interface instances
(defstruct interface-instance (object)
  unchecked: #t)

;; interface meta descriptor
(defstruct interface-descriptor (type methods)
  final: #t unchecked: #t)

;; prototype table
(def (hash-key key)
  (fxxor (##symbol-hash (car key)) (##symbol-hash (cdr key))))
(def (test-key a b)
  (and (eq? (car a) (car b))
       (eq? (cdr a) (cdr b))))

(def +interface-prototypes-mx+ (make-mutex 'interface-constructor))
(def +interface-prototypes+ (make-hash-table hash: hash-key test: test-key))
(def +interface-prototypes-key+ (cons #f #f)) ; pre-allocated key for lookups

(def (interface-subclass? klass)
  (alet (super (##type-super klass))
    (eq? (##type-id super) (##type-id interface-instance::t))))

(extern namespace: #f
  macro-mutex-lock!
  macro-mutex-unlock!
  macro-current-thread)

;; using these gives a 35% boost in microbenchmarks
(defrule (mutex-lock-inline! mx)
  (macro-mutex-lock! mx #f (macro-current-thread)))
(defrule (mutex-unlock-inline! mx)
  (macro-mutex-unlock! mx))

(defrule (do-create-prototype descriptor klass obj-klass continue fail!)
  (let lp ((rest (&interface-descriptor-methods descriptor))
           (count 0)
           (methods []))
    (match rest
      ([method-name . rest]
       (cond
        ((find-method obj-klass method-name)
         => (lambda (method) (lp rest (fx+ count 1) (cons method methods))))
        (else
         (fail! klass method-name))))
      (else
       (let (prototype (make-object klass (fx+ count 1)))
         (let lp ((rest methods) (off (fx+ count 1)))
           (match rest
             ([method . rest]
              (##unchecked-structure-set! prototype method off klass #f)
              (lp rest (fx- off 1)))
             (else
              (let (prototype-key (cons (##type-id klass) (##type-id obj-klass)))
                (mutex-lock-inline! +interface-prototypes-mx+)
                (##table-set! +interface-prototypes+ prototype-key prototype)
                (mutex-unlock-inline! +interface-prototypes-mx+)
                (continue prototype))))))))))

(def (create-prototype descriptor klass obj-klass)
  (do-create-prototype
   descriptor klass obj-klass
   (lambda (prototype) prototype)
   (lambda (klass method-name)
     (raise-cast-error create-prototype "Cannot create interface instance; missing method" klass method-name))))

(def (try-create-prototype descriptor klass obj-klass)
  (do-create-prototype
   descriptor klass obj-klass
   (lambda (prototype) #t)
   (lambda (klass method-name) #f)))

;; cast an object to an interface instance
(def (cast descriptor obj)
  (if (object? obj)
    (let ()
      (declare (not interrupts-enabled))
      (let* ((klass (&interface-descriptor-type descriptor))
             (klass-id (##type-id klass))
             (obj-klass (##structure-type obj))
             (obj-klass-id (##type-id obj-klass)))
        (cond
         ((eq? klass-id obj-klass-id)
          ;; already an instance of the right interface
          obj)
         ((interface-subclass? obj-klass)
          ;; another interface instance, recast
          (cast descriptor (&interface-instance-object obj)))
         (else
          ;; vanilla object, convert to an interface instance
          (mutex-lock-inline! +interface-prototypes-mx+)
          (set-car! +interface-prototypes-key+ klass-id)
          (set-cdr! +interface-prototypes-key+ obj-klass-id)
          (let* ((prototype
                  (cond
                   ((##table-ref +interface-prototypes+ +interface-prototypes-key+ #f)
                    => (lambda (prototype)
                         (mutex-unlock-inline! +interface-prototypes-mx+)
                         prototype))
                   (else
                    (mutex-unlock-inline! +interface-prototypes-mx+)
                    (create-prototype descriptor klass obj-klass))))
                 (instance (##structure-copy prototype)))
            (##unchecked-structure-set! instance obj 1 klass #f)
            instance)))))
    (raise-cast-error cast "Cannot cast non-object to interface instance" obj)))

;; check if an object satisfies an interface
(def (satisfies? descriptor obj)
  (if (object? obj)
    (let ()
      (declare (not interrupts-enabled))
      (let* ((klass (&interface-descriptor-type descriptor))
             (klass-id (##type-id klass))
             (obj-klass (##structure-type obj))
             (obj-klass-id (##type-id obj-klass)))
        (cond
         ((eq? klass-id obj-klass-id)
          ;; already an instance of the right interface
          #t)
         ((interface-subclass? obj-klass)
          ;; another interface instance, recast
          (satisfies? descriptor (&interface-instance-object obj)))
         (else
          ;; vanilla object, convert to an interface instance
          (mutex-lock-inline! +interface-prototypes-mx+)
          (set-car! +interface-prototypes-key+ klass-id)
          (set-cdr! +interface-prototypes-key+ obj-klass-id)
          (cond
           ((##table-ref +interface-prototypes+ +interface-prototypes-key+ #f)
            => (lambda (prototype)
                 (mutex-unlock-inline! +interface-prototypes-mx+)
                 #t))
           (else
            (mutex-unlock-inline! +interface-prototypes-mx+)
            (try-create-prototype descriptor klass obj-klass)))))))
    #f))

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
                   (check-interface-spec spec)
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
                    (raise-syntax-error #f "Bad syntax; incompatible method signatures" stx method duplicate))))
            (else
             (lp rest (cons method methods)))))
          (else
           (sort methods (lambda (x y) (symbol<? (stx-car x) (stx-car y)))))))))

  (def (check-interface-spec spec)
    (syntax-case spec ()
      ((name . args)
       (identifier? #'name)
       (check-method-signature #'args))
      (mixin (identifier? #'mixin) (void))
      (_ (raise-syntax-error #f "Bad syntax; malformed signature" stx spec))))

  (def (check-method-signature signature)
    (let lp ((rest signature) (have-optional? #f) (ids []) (kws []))
      (syntax-case rest ()
        ((id . rest)
         (identifier? #'id)
         (cond
          (have-optional?
           (raise-syntax-error #f "Bad syntax; required argument after optionals" stx signature #'id))
          ((find (cut bound-identifier=? <> #'id) ids)
           (raise-syntax-error #f "Bad syntax; duplicate identifier" stx signature #'id))
          (else
           (lp #'rest have-optional? (cons #'id ids) kws))))
        (((id _) . rest)
         (identifier? #'id)
         (cond
          ((find (cut bound-identifier=? <> #'id) ids)
           (raise-syntax-error #f "Bad syntax; duplicate identifier" stx signature #'id))
          (else
           (lp #'rest #t (cons #'id ids) kws))))
        (((id . contract) . rest)
         (and (identifier? #'id)
              (method-contract? #'contract))
         (cond
          (have-optional?
           (syntax-case #'contract (: :~)
             ((: _)
              (raise-syntax-error #f "Bad syntax; required argument after optionals" stx signature #'id))
             ((:~  _)
              (raise-syntax-error #f "Bad syntax; required argument after optionals" stx signature #'id))
             (_ (lp #'rest #t (cons #'id ids) kws))))
          ((find (cut bound-identifier=? <> #'id) ids)
           (raise-syntax-error #f "Bad syntax; duplicate identifier" stx signature #'id))
          (else
           (lp #'rest have-optional? (cons #'id ids) kws))))
        ((kw id . rest)
         (and (stx-keyword? #'kw) (identifier? #'id))
         (cond
          ((find (cut bound-identifier=? <> #'id) ids)
           (raise-syntax-error #f "Bad syntax; duplicate identifier" stx signature #'id))
          ((memq (stx-e #'kw) kws)
           (raise-syntax-error #f "Bad syntax; duplicate keyword" stx signature #'kw))
          (else
           (lp #'rest have-optional? (cons #'id ids) (cons (stx-e #'kw) kws)))))
        ((kw (id _) . rest)
         (and (stx-keyword? #'kw) (identifier? #'id))
         (cond
          ((find (cut bound-identifier=? <> #'id) ids)
           (raise-syntax-error #f "Bad syntax; duplicate identifier" stx signature #'id))
          ((memq (stx-e #'kw) kws)
           (raise-syntax-error #f "Bad syntax; duplicate keyword" stx signature #'kw))
          (else
           (lp #'rest have-optional? (cons #'id ids) (cons (stx-e #'kw) kws)))))
        ((kw (id . contract) . rest)
         (and (stx-keyword? #'kw)
              (identifier? #'id)
              (method-contract? #'contract))
         (cond
          ((find (cut bound-identifier=? <> #'id) ids)
           (raise-syntax-error #f "Bad syntax; duplicate identifier" stx signature #'id))
          ((memq (stx-e #'kw) kws)
           (raise-syntax-error #f "Bad syntax; duplicate keyword" stx signature #'kw))
          (else
           (lp #'rest have-optional? (cons #'id ids) (cons (stx-e #'kw) kws)))))
        (id (identifier? #'id) #t)
        (() #t)
        (_ (raise-syntax-error #f "Bad syntax; malformed signature" stx signature rest)))))

  (def (method-contract? contract)
    (let lp ((rest contract) (have-default? #f) (have-type? #f))
      (syntax-case rest (: :~ :=)
        ((: _ . rest)
         (if have-type? #f
             (lp #'rest have-default? #t)))
        ((:~ _ . rest)
         (if have-type? #f
             (lp #'rest have-default? #t)))
        ((:= _ . rest)
         (if have-default? #f
             (lp #'rest #t have-type?)))
        (() #t)
        (_ #f))))

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
      (let ((left-contract (method-contract left))
            (right-contract (method-contract right)))
        (unless (equal? left-contract right-contract)
          (return #f)))
      #t))

  (def (method-arity spec)
    (let lp ((rest (stx-cdr spec)) (required 0) (optional 0))
      (syntax-case rest ()
        ((id . rest)
         (identifier? #'id)
         (lp #'rest (1+ required) optional))
        (((id sigil _) . rest)
         (and (identifier? #'id)
              (or (free-identifier=? #'sigil #':)
                  (free-identifier=? #'sigil #':~)))
         (lp #'rest (1+ required) optional))
        (((id . _) . rest)
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
    (let lp ((rest spec) (keywords []))
      (syntax-case rest ()
        ((id . rest)
         (identifier? #'id)
         (lp #'rest keywords))
        (((id . _) . rest)
         (identifier? #'id)
         (lp #'rest keywords))
        ((kw _ . rest)
         (stx-keyword? #'kw)
         (lp #'rest (cons (stx-e #'kw) keywords)))
        (_  (sort keywords keyword<?)))))

  (def (method-contract spec)
    (let lp ((rest spec) (required []) (optional []) (keywords []))
      (syntax-case rest ()
        ((id . rest)
         (identifier? #'id)
         (lp #'rest (cons #f required) optional keywords))
        (((id sigil contract) . rest)
         (and (identifier? #'id)
              (or (free-identifier=? #'sigil #':)
                  (free-identifier=? #'sigil #':~)))
         (lp #'rest (cons (syntax->datum #'contract) required) optional keywords))
        (((id _) . rest)
         (identifier? #'id)
         (lp #'rest required (cons #f optional) keywords))
        (((id . contract) . rest)
         (identifier? #'id)
         (lp #'rest required (cons (get-optional-contract #'contract) optional) keywords))
        ((kw id . rest)
         (and (stx-keyword? #'kw) (identifier? #'id))
         (lp #'rest required optional (cons (cons (stx-e #'kw) #f) keywords)))
        ((kw (id _) . rest)
         (and (stx-keyword? #'kw) (identifier? #'id))
         (lp #'rest required optional (cons (cons (stx-e #'kw) #f) keywords)))
        ((kw (id . contract) . rest)
         (and (stx-keyword? #'kw) (identifier? #'id))
         (lp #'rest required optional (cons (cons (stx-e #'kw) (get-optional-contract #'contract)) keywords)))
        (_ [(reverse required)
            (reverse optional)
            (sort keywords (lambda (a b) (keyword<? (car a) (car b))))]))))

  (def (get-optional-contract contract)
    (syntax-case contract (: :~ :=)
      ((: type . _) (syntax->datum #'type))
      ((:~ check . _) (syntax->datum #'check))
      ((:= default . contract)
       (get-optional-contract #'contract))))

  (def (checked-method-arguments-in signature)
    (let lp ((rest signature) (args []))
      (syntax-case rest ()
        ((id . rest)
         (identifier? #'id)
         (lp #'rest (cons #'id args)))
        (((id default) . rest)
         (identifier? #'id)
         (lp #'rest (cons #'(id absent-obj) args)))
        (((id . contract) . rest)
         (identifier? #'id)
         (cond
          ((get-contract-default #'contract)
           => (lambda (default)
                (lp #'rest (cons #'(id absent-obj) args))))
          (else
           (lp #'rest (cons #'id args)))))
        ((kw (id default) . rest)
         (stx-keyword? #'kw)
         (lp #'rest (cons* #'(id absent-obj) #'kw args)))
        ((kw (id . contract) .rest)
         (stx-keyword? #'kw)
         (cond
          ((get-contract-default #'contract)
           => (lambda (default)
                (lp #'rest (cons* #'(id absent-obj) #'kw args))))
          (else
           (lp #'rest (cons* #'id #'kw args)))))
        (id
         (identifier? #'id)
         (foldl cons #'id args))
        (()
         (reverse args)))))

  (def (unchecked-method-arguments-in signature)
    (let lp ((rest signature) (args []))
      (syntax-case rest ()
        ((id . rest)
         (identifier? #'id)
         (lp #'rest (cons #'id args)))
        (((id default) . rest)
         (identifier? #'id)
         (lp #'rest (cons #'(id default) args)))
        (((id . contract) . rest)
         (identifier? #'id)
         (cond
          ((get-contract-default #'contract)
           => (lambda (default)
                (lp #'rest (cons [#'id default] args))))
          (else
           (lp #'rest (cons #'id args)))))
        ((kw (id default) . rest)
         (stx-keyword? #'kw)
         (lp #'rest (cons* #'(id default) #'kw args)))
        ((kw (id . contract) .rest)
         (stx-keyword? #'kw)
         (cond
          ((get-contract-default #'contract)
           => (lambda (default)
                (lp #'rest (cons* [#'id default] #'kw args))))
          (else
           (lp #'rest (cons* #'id #'kw args)))))
        (id
         (identifier? #'id)
         (foldl cons #'id args))
        (()
         (reverse args)))))

  (def (get-contract-default contract)
    (syntax-case contract (: :~ :=)
      ((:= default . _) #'default)
      ((: _ . rest) (get-contract-default #'rest))
      ((:~  _ . rest) (get-contract-default #'rest))
      (() #f)))

  (def (method-arguments-out signature)
    (let lp ((rest signature) (args []))
      (syntax-case rest ()
        ((id . rest)
         (identifier? #'id)
         (lp #'rest (cons #'id args)))
        (((id . _) . rest)
         (identifier? #'id)
         (lp #'rest (cons #'id args)))
        ((kw id . rest)
         (and (stx-keyword? #'kw) (identifier? #'id))
         (lp #'rest (cons* #'id #'kw args)))
        ((kw (id . _) . rest)
         (and (stx-keyword? #'kw) (identifier? #'id))
         (lp #'rest (cons* #'id #'kw args)))
        (id
         (identifier? #'id)
         (foldl cons [#'id] args))
        (() (reverse args)))))

  (def (make-checked-method-body name signature body)
    (with-syntax ((using (stx-identifier name 'using)))
      (let recur ((rest signature))
        (syntax-case rest (:=)
          ((id . rest)
           (identifier? #'id)
           (recur #'rest))
          (((id default) . rest)
           (identifier? #'id)
           (with-syntax ((body (recur #'rest)))
             #'(let (id (if (eq? id absent-obj) default id))
                 body)))
          (((id := default) . rest)
           (with-syntax ((body (recur #'rest)))
             #'(let (id (if (eq? id absent-obj) default id))
                 body)))
          (((id sigil contract) . rest)
           (with-syntax ((body (recur #'rest)))
             #'(using (id sigil contract)
                 body)))
          (((id := default sigil contract) . rest)
           (with-syntax ((body (recur #'rest)))
             #'(let (id (if (eq? id absent-obj) default id))
                 (using (id sigil contract)
                   body))))
          (((id sigil contract := default) . rest)
           (with-syntax ((body (recur #'rest)))
             #'(let (id (if (eq? id absent-obj) default id))
                 (using (id sigil contract)
                   body))))
          ((kw id . rest)
           (and (stx-keyword? #'kw) (identifier? #'id))
           (recur #'rest))
          ((kw (id default) . rest)
           (and (stx-keyword? #'kw) (identifier? #'id))
           (with-syntax ((body (recur #'rest)))
             #'(let (id (if (eq? id absent-obj) default id))
                 body)))
          ((kw (id := default) . rest)
           (and (stx-keyword? #'kw) (identifier? #'id))
           (with-syntax ((body (recur #'rest)))
             #'(let (id (if (eq? id absent-obj) default id))
                 body)))
          ((kw (id := default sigil contract) . rest)
           (and (stx-keyword? #'kw) (identifier? #'id))
           (with-syntax ((body (recur #'rest)))
             #'(let (id (if (eq? id absent-obj) default id))
                 (using (id sigil contract)
                   body))))
          ((kw (id sigil contract := default) . rest)
           (and (stx-keyword? #'kw) (identifier? #'id))
           (with-syntax ((body (recur #'rest)))
             #'(let (id (if (eq? id absent-obj) default id))
                 (using (id sigil contract)
                   body))))
          (id (identifier? #'id) body)
          (() body)))))

  (def (make-checked-method-def interface-name method-name descriptor klass method-impl-name unchecked-method-impl-name signature offset)
    (with-syntax ((interface-name interface-name)
                  (method method-impl-name)
                  (unchecked unchecked-method-impl-name))
      (if (stx-list? signature)
        (with-syntax* (((in ...) (checked-method-arguments-in signature))
                       ((out ...) (method-arguments-out signature))
                       (cast-self
                        (syntax/loc stx
                          (interface-name self)))
                       (dispatch
                        (syntax/loc stx
                          (unchecked cast-self out ...)))
                       (body
                        (make-checked-method-body #'interface-name signature #'dispatch)))
          (syntax/loc stx
            (def (method self in ...)
              body)))
        ;; variadic, we have to use apply
        (with-syntax* ((in (checked-method-arguments-in signature))
                       ((out ...) (method-arguments-out signature))
                       (cast-self
                        (syntax/loc stx
                          (interface-name self)))
                       (dispatch
                        (syntax/loc stx
                          (apply unchecked cast-self out ...)))
                       (body
                        (make-checked-method-body #'interface-name signature #'dispatch)))
          (syntax/loc stx
            (def (method self . in)
              body))))))

  (def (make-unchecked-method-def interface-name method-name descriptor klass method-impl-name unchecked-method-impl-name signature offset)
    (with-syntax ((descriptor descriptor)
                  (klass klass)
                  (method method-name)
                  (unchecked-method unchecked-method-impl-name)
                  (offset offset))
      (if (stx-list? signature)
        (with-syntax (((in ...) (unchecked-method-arguments-in signature))
                      ((out ...) (method-arguments-out signature)))
          (syntax/loc stx
            (def (unchecked-method self in ...)
              (declare (not safe))
              (let ((obj (##unchecked-structure-ref self 1 klass 'method))
                    (f   (##unchecked-structure-ref self offset klass 'method)))
                (f obj out ...)))))
        ;; variadic, we have to use apply
        (with-syntax ((in (unchecked-method-arguments-in signature))
                      ((out ...) (method-arguments-out signature)))
          (syntax/loc stx
            (def (unchecked-method self . in)
              (declare (not safe))
              (let ((obj (##unchecked-structure-ref self 1 klass 'method))
                    (f   (##unchecked-structure-ref self offset klass 'method)))
                (apply f obj out ...))))))))

  (def (make-method-defs interface-name descriptor klass)
    (lambda (method-name method-impl-name unchecked-method-impl-name signature offset)
      (with-syntax ((checked-method-def
                     (make-checked-method-def interface-name method-name
                                              descriptor klass
                                              method-impl-name
                                              unchecked-method-impl-name
                                              signature
                                              offset))
                    (unchecked-method-def
                     (make-unchecked-method-def interface-name method-name
                                                descriptor klass
                                                method-impl-name
                                                unchecked-method-impl-name
                                                signature
                                                offset)))
        #'(begin checked-method-def unchecked-method-def))))

  (def (module-type-id type-t)
    (cond
     ((module-context-ns (current-expander-context))
      => (lambda (ns) (stx-identifier type-t ns "#" type-t)))
     (else
      (let (mid (expander-context-id (current-expander-context)))
        (stx-identifier type-t mid "#" type-t)))))

  (syntax-case stx ()
    ((_ hd spec ...)
     (or (identifier? #'hd)
         (identifier-list? #'hd))
     (with-syntax* ((name (if (identifier? #'hd) #'hd (stx-car #'hd)))
                    (klass (stx-identifier #'name #'name "::t"))
                    (klass-quoted (core-quote-syntax #'klass))
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
                     (map (make-method-defs #'name #'descriptor #'klass)
                          #'(method-name ...)
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
                          (begin-annotation (@interface klass-quoted (method-name ...))
                            (make-interface-descriptor klass '(method-name ...)))))
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
