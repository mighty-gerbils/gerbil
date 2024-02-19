;;; -*- Gerbil -*-
;;; © vyzo
;;; interface macros
(import :gerbil/runtime/interface
        :std/sugar
        (only-in :std/srfi/1 reverse!)
        (for-syntax :gerbil/expander
                    (only-in :std/srfi/1 delete-duplicates)
                    (only-in :std/sort sort)
                    (only-in :std/misc/symbol compare-symbolic)))
(export interface
        interface-out
        immediate-instance-of?
        cast try-cast satisfies?
        interface-instance? interface-instance-object &interface-instance-object
        interface-descriptor? interface-descriptor-type interface-descriptor-methods
        interface-cast-error?
        (for-syntax #t))

(begin-syntax
  (defclass interface-info (name
                            interface-methods
                            instance-type interface-descriptor
                            instance-constructor instance-try-constructor
                            instance-predicate instance-satisfies-predicate
                            implementation-methods
                            unchecked-implementation-methods))

  (defmethod {apply-macro-expander interface-info}
    (with-syntax ((cast (quote-syntax cast)))
      (lambda (self stx)
        (syntax-case stx ()
          ((_ obj)
           (with-syntax ((klass (interface-info-instance-type self))
                         (descriptor (interface-info-interface-descriptor self)))
             #'(let ($obj obj)
                 (if (immediate-instance-of? klass $obj)
                   $obj
                   (cast descriptor $obj)))))
          (_ (identifier? stx)
             (with-syntax ((descriptor (interface-info-interface-descriptor self)))
               #'descriptor)))))))

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
                       (foldl cons methods (map syntax-local-introduce (interface-info-interface-methods info))))
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
        ((kw (id . contract) . rest)
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
        ((kw (id . contract) . rest)
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
                    (descriptor (stx-identifier #'name #'name "::interface"))
                    (make (stx-identifier #'name "make-" #'name))
                    (make (stx-identifier #'name "try-" #'name))
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
                    (defklass
                      #'(def klass
                          (make-class-type 'klass-type-id          ; type id
                                           'name                   ; name
                                           [interface-instance::t] ; super
                                           '(method-name ...)      ; direct slots
                                           '((final: . #t))        ; plist
                                           #f)))                   ; constructor (none)
                    (defdescriptor
                      #'(def descriptor
                          (begin-annotation (@interface klass-quoted (method-name ...))
                            (make-interface-descriptor klass '(method-name ...)))))
                    (defmake
                      #'(def (make obj)
                          (cast descriptor obj)))
                    (deftry-make
                      #'(def (try-make obj)
                          (try-cast descriptor obj)))
                    (defpred
                      #'(def (predicate obj)
                          (direct-instance? klass obj)))
                    (defpred-instance
                      #'(def (instance-predicate obj)
                          (satisfies? descriptor obj)))
                    (definfo
                      #'(defsyntax name
                          (make-interface-info
                           name: 'name
                           interface-methods: '(method ...)
                           instance-type: (quote-syntax klass)
                           interface-descriptor: (quote-syntax descriptor)
                           instance-constructor: (quote-syntax make)
                           instance-try-constructor: (quote-syntax try-make)
                           instance-predicate: (quote-syntax predicate)
                           instance-satisfies-predicate: (quote-syntax instance-predicate)
                           implementation-methods: [(quote-syntax method-impl-name) ...]
                           unchecked-implementation-methods: [(quote-syntax unchecked-method-impl-name) ...]))))
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
              (with ((interface-info instance-type: type
                                     interface-descriptor: descriptor
                                     instance-constructor: constructor
                                     instance-try-constructor: try-constructor
                                     instance-predicate: predicate
                                     instance-satisfies-predicate: satisfies-predicate
                                     implementation-methods: method-impl
                                     unchecked-implementation-methods: unchecked-impl)
                     info)
                (lp #'rest [#'id type descriptor constructor try-constructor predicate satisfies-predicate method-impl ... (if unchecked? unchecked-impl []) ...]))))
           (_ (cons begin: ids)))))))

  (syntax-case stx ()
    ((_ unchecked: unchecked? body ...)
     (expand #'(body ...) (stx-e #'unchecked?)))
    ((_ body ...)
     (expand #'(body ...) #f))))
