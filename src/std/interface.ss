;;; -*- Gerbil -*-
;;; © vyzo
;;; Go-style interfaces
(import :gerbil/gambit/threads
        (only-in :std/generic type-of)
        (for-syntax (only-in :std/srfi/1 delete-duplicates)))
(export interface interface-out
        interface-instance?
        interface-descriptor? interface-descriptor-type interface-descriptor-methods)

;; base type for all interface instances
(defstruct interface-instance (object))

;; interface meta descriptor
(defstruct interface-descriptor (type methods))

;; prototype table
(def +interface-prototypes+ (make-hash-table))
(def +interface-prototypes-mx+ (make-mutex 'interface-constructor))

;; create a new instance of an interface for an object
(def (new descriptor obj)
  (let (klass (interface-descriptor-type descriptor))
    (cond
     ((##structure-direct-instance-of? obj (##type-id klass))
      ;; already an instance of the right interface
      obj)
     ((interface-instance? obj)
      ;; another interface instance, cast
      (new descriptor (interface-instance-object obj)))
     (else
      ;; vanilla object, convert to an interface instance
      (let* ((prototype-key (cons (##type-id klass) (type-of obj)))
             (prototype
              (with-lock +interface-prototypes-mx+
                (lambda()
                  (cond
                   ((hash-get +interface-prototypes+ prototype-key)
                    => values)
                   (else
                    (let* ((method-impls
                            (map (lambda (method)
                                   (or (method-ref obj method)
                                       (error "Cannot create interface prototype; missing method" method)))
                                 (interface-descriptor-methods descriptor)))
                           (prototype
                            (apply ##structure klass #f method-impls)))
                      (hash-put! +interface-prototypes+ prototype-key prototype)
                      prototype))))))
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
    (let (methods (interface-descriptor-methods descriptor))
      (andmap (cut method-ref obj <>) methods))))))

;; the all encompassing macro(s)
(begin-syntax
  (defstruct interface-info (name methods type descriptor constructor predicate method-impl))

  (defmethod {apply-macro-expander interface-info}
    (with-syntax ((new (quote-syntax new)))
      (lambda (self stx)
        (syntax-case stx ()
          ((_ obj)
           (with-syntax ((descriptor (interface-info-descriptor self)))
             #'(new descriptor obj))))))))

(defsyntax (interface stx)
  (def (fold-methods method-ids mixins)
    (let* ((method-ids (map stx-e method-ids))
           (method-ids
            (foldl (lambda (mixin method-ids)
                     (let (info (syntax-local-value mixin false))
                       (unless (interface-info? info)
                         (raise-syntax-error #f "Bad syntax; not an interface type" stx mixin))
                       (foldl cons method-ids (interface-info-methods info))))
                   method-ids
                   mixins)))
      (delete-duplicates method-ids)))

  (def (module-type-id type-t)
    (cond
     ((module-context-ns (current-expander-context))
      => (lambda (ns) (stx-identifier type-t ns "#" type-t)))
     (else
      (let (mid (expander-context-id (current-expander-context)))
        (stx-identifier type-t mid "#" type-t)))))

  (syntax-case stx ()
    ((_ name (mixin ...) method ...)
     (and (identifier? #'name)
          (identifier-list? #'(mixin ...))
          (identifier-list? #'(method ...)))
     (with-syntax* ((klass (stx-identifier #'name #'name "::t"))
                    (klass-type-id
                     (if (module-context? (current-expander-context))
                       (module-type-id #'klass)
                       (genident #'klass)))
                    (descriptor (stx-identifier #'name #'name "::descriptor"))
                    (make (stx-identifier #'name "make-" #'name))
                    (predicate (stx-identifier #'name #'name "?"))
                    ((method-name ...)
                     (fold-methods #'(method ...) #'(mixin ...)))
                    ((method-impl-name ...)
                     (map (lambda (method-name)
                            (stx-identifier #'name #'name "-" method-name))
                          #'(method-name ...)))
                    ((defmethod-impl ...)
                     (map (lambda (method-impl-name offset)
                            (with-syntax ((method method-impl-name)
                                          (offset offset))
                              #'(def (method self . args)
                                  (unless (predicate self)
                                    (error "object is not an interface instance" self 'name))
                                  (let ((obj (##unchecked-structure-ref self 1 klass 'method))
                                        (f   (##unchecked-structure-ref self offset klass 'method)))
                                    (apply f obj args)))))
                          #'(method-impl-name ...)
                          (iota (length #'(method-name ...)) 2)))
                    ((bind-method-impl ...)
                     (map (lambda (method-name method-impl-name)
                            (with-syntax ((method-name method-name)
                                          (method-impl method-impl-name))
                              #'(bind-method! klass 'method-name method-impl)))
                          #'(method-name ...)
                          #'(method-impl-name ...)))
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
                                            '(method ...))))        ; field names
                    (defdescriptor
                      #'(def descriptor
                          (make-interface-descriptor klass '(method-name ...))))
                    (defmake
                      #'(def (make obj)
                          (new descriptor object)))
                    (defpred
                      #'(def (predicate obj)
                          (satisfies? descriptor obj)))
                    (definfo
                      #'(defsyntax name
                          (make-interface-info 'name '(method-name ...)
                                               (quote-syntax klass)
                                               (quote-syntax descriptor)
                                               (quote-syntax make)
                                               (quote-syntax predicate)
                                               [(quote-syntax method-impl-name) ...]))))
       #'(begin defklass defdescriptor defmake defpred definfo
                defmethod-impl ...
                bind-method-impl ...)))))

(defsyntax-for-export (interface-out stx)
  (syntax-case stx ()
    ((_ id ...)
     (identifier-list? #'(id ...))
     (let lp ((rest #'(id ...)) (ids []))
       (syntax-case rest ()
         ((id . rest)
          (let (info (syntax-local-value #'id false))
            (unless (interface-info? info)
              (raise-syntax-error #f "Not an interface type" stx #'id))
            (lp #'rest [#'id (interface-info-type info) (interface-info-descriptor info) (interface-info-constructor info) (interface-info-predicate info) (interface-info-method-impl info) ...])))
         (_ (cons begin: ids)))))))
