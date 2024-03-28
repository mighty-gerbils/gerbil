;;; -*- Gerbil -*-
;;; © vyzo
;;; gerbil core prelude: mop macros
;;;
prelude: :<root>
package: gerbil/core

(import "runtime" "sugar"
        (phi: +1 "runtime" "expander" "sugar"))
(export  (import: MOP-1 MOP-4 MOP-5)
         (phi: +1 (import: MOP-1 MOP-2 MOP-3 MOP-4 MOP-5)))

(module MOP-1
  (export #t (phi: +1 module-type-id make-class-type-id))

  (begin-syntax
    (def (module-type-id type-t)
      (cond
       ((module-context-ns (current-expander-context))
        => (lambda (ns) (stx-identifier type-t ns "#" type-t "::t")))
       (else
        (let (mid (expander-context-id (current-expander-context)))
          (stx-identifier type-t mid "#" type-t "::t")))))

    (def (make-class-type-id type-t)
      (if (module-context? (current-expander-context))
        (module-type-id type-t)
        (make-symbol "__" (gensym (stx-e type-t)) "::t")))

    (def (generate-typedef stx struct?)
      (def (wrap e-stx)
        (stx-wrap-source e-stx (stx-source stx)))

      (def (slot-name slot-spec)
        (syntax-case slot-spec ()
          ((slot getf setf) #'slot)))

      (def (class-opt? key)
        (memq (stx-e key) '(struct: slots: id: name: properties: constructor: final: mixin: metaclass:)))

      (syntax-case stx ()
        ((_ type-t super make instance? . rest)
         (and (identifier? #'type-t)
              (identifier-list? #'super)
              (or (identifier? #'make)
                  (stx-false? #'make))
              (identifier? #'instance?)
              (stx-plist? #'rest class-opt?))

         (with-syntax* (((values struct?)
                         (cond
                          (struct?)
                          ((stx-getq struct: #'rest) => stx-e)
                          (else #f)))
                        ((values slots)
                         (or (stx-getq slots: #'rest)
                             []))
                        ((values mixin-slots)
                         (or (stx-getq mixin: #'rest)
                             []))
                        ((values accessible-slots)
                         (append (syntax->list slots) (syntax->list mixin-slots)))
                        ((values metaclass)
                         (stx-getq metaclass: #'rest))
                        ((slot ...)
                         (stx-map slot-name slots))
                        (type-id
                         (or (stx-getq id: #'rest)
                             (make-class-type-id #'type-t)))
                        (type-name
                         (or (stx-getq name: #'rest)
                             #'type-t))
                        (type-constructor
                         (stx-getq constructor: #'rest))
                        (mop-type-t (core-quote-syntax #'type-t))
                        (mop-super
                         (append (stx-map core-quote-syntax #'super)
                                 [(core-quote-syntax 'object::t)]))
                        (mop-struct? struct?)
                        (mop-final? (stx-getq final: #'rest))
                        (mop-metaclass
                         (if (stx-e metaclass)
                           (core-quote-syntax metaclass)
                           #f))
                        (type-properties
                         (or (stx-getq properties: #'rest)
                             #'[]))
                        (type-properties
                         (if (stx-e #'mop-final?)
                           #'[[final: . #t] :: type-properties]
                           #'type-properties))
                        (type-properties
                         (if struct?
                           #'[[struct: . #t] :: type-properties]
                           #'type-properties))
                        (type-properties
                         (if (stx-e metaclass)
                           (with-syntax ((metaclass metaclass))
                             #'[[metaclass: :: metaclass] :: type-properties])
                           #'type-properties))
                        (type-super
                         (cons #'list #'super))
                        (make-type-rtd
                         #'(make-class-type 'type-id 'type-name
                                            type-super '(slot ...)
                                            type-properties 'type-constructor))
                        (def-type
                          (wrap
                           #'(def type-t
                               (begin-annotation (@mop.class type-id
                                                             mop-super
                                                             (slot ...)
                                                             type-constructor
                                                             mop-struct?
                                                             mop-final?
                                                             mop-metaclass)
                                 make-type-rtd))))
                        (def-make
                          (if (stx-false? #'make)
                            #'(begin)
                            (wrap
                             #'(def make
                                 (begin-annotation (@mop.constructor mop-type-t)
                                   (lambda $args
                                     (apply make-instance type-t $args)))))))
                        (def-predicate
                          (wrap
                           #'(def instance?
                               (begin-annotation (@mop.predicate mop-type-t)
                                 (make-class-predicate type-t)))))

                        (((def-getf def-setf) ...)
                         (stx-map
                          (lambda (ref)
                            (syntax-case ref ()
                              ((slot getf setf)
                               [(wrap
                                 #'(def getf
                                     (begin-annotation (@mop.accessor mop-type-t
                                                                      slot #t)
                                       (make-class-slot-accessor type-t 'slot))))
                                (wrap
                                 #'(def setf
                                     (begin-annotation (@mop.mutator mop-type-t
                                                                     slot #t)
                                       (make-class-slot-mutator type-t 'slot))))])))
                          accessible-slots))
                        (((def-ugetf def-usetf) ...)
                         (stx-map
                          (lambda (ref)
                            (syntax-case ref ()
                              ((slot getf setf)
                               (with-syntax ((ugetf (stx-identifier #'getf "&" #'getf))
                                             (usetf (stx-identifier #'setf "&" #'setf)))
                                 [(wrap
                                   #'(def ugetf
                                       (begin-annotation (@mop.accessor mop-type-t
                                                                        slot #f)
                                         (make-class-slot-unchecked-accessor type-t 'slot))))
                                  (wrap
                                   #'(def usetf
                                       (begin-annotation (@mop.mutator mop-type-t
                                                                       slot #f)
                                         (make-class-slot-unchecked-mutator type-t 'slot))))]))))
                          accessible-slots)))
           (wrap
            #'(begin def-type
                     def-predicate
                     def-make
                     def-getf ...
                     def-setf ...
                     def-ugetf ...
                     def-usetf ...)))))))

  (defsyntax (defstruct-type stx)
    (generate-typedef stx #t))

  (defsyntax (defclass-type stx)
    (generate-typedef stx #f)))

(module MOP-2
  (import "expander" MOP-1)
  (export #t)
  ;; class meta type; expansion time class reflection.
  (defclass-type class-type-info::t ()
    make-class-type-info
    class-type-info?
    id: gerbil.core#class-type-info::t
    name: class-type-info
    slots:
    ((id ;; Symbol
      ;; the class's type id
      !class-type-id !class-type-id-set!)
     (name ;; Symbol
      ;; the class's name
      !class-type-name !class-type-name-set!)
     (super ;; ListOf Identifier
      ;; the class's super list; identifiers point to class-type-infos
      !class-type-super !class-type-super-set!)
     (slots ;; ListOf Symbol
      ;; the class's direct slot list
      !class-type-slots !class-type-slots-set!)
     (struct? ;; Boolean
      ;; #t if the class is a struct type
      !class-type-struct? !class-type-struct?-set!)
     (final? ;; Boolean
      ;; #t if the class is final
      !class-type-final? !class-type-final?-set!)
     (system? ;; Boolean
      ;; #t if the class is a system class
      !class-type-system? !class-type-system?-set!)
     (metaclass ;; OrFalse identifier
      ;; the metaclass identifier, if any
      !class-type-metaclass !class-type-metaclass-set!)
     (constructor-method ;; OrFalse Symbol
      ;; the class's constructor method name, if any
      !class-type-constructor-method !class-type-constructor-method-set!)
     (type-descriptor ;; Identifier
      ;; the runtime identifier of the class's type descriptor
      !class-type-descriptor !class-type-descriptor-set!)
     (constructor ;; OrFalse Identifier
      ;; the class's constructor procudure identifier, if any
      !class-type-constructor !class-type-constructor-set!)
     (predicate ;; Identifier
      ;; the class's defined predicate
      !class-type-predicate !class-type-predicate-set!)
     (accessors ;; AListOf Symbol -> Identifier
      ;; the class's defined slot accessors
      !class-type-accessors !class-type-accessors-set!)
     (mutators ;; AListOf Symbol -> Identifier
      ;; the class's defined slot mutators
      !class-type-mutators !class-type-mutators-set!)
     (unchecked-accessors ;; AListOf Symbol -> Identifier
      ;; the class's defined unchecked slot accessors
      !class-type-unchecked-accessors !class-type-unchecked-accessors-set!)
     (unchecked-mutators ;; AListOf Symbol -> Identifier
      ;; the class's defined unchecked slot mutators
      !class-type-unchecked-mutators !class-type-unchecked-mutators-set!)))

  (def (class-type-info::apply-macro-expander self stx)
    (syntax-case stx ()
      ((_ arg ...)
       (cond
        ((!class-type-constructor self)
         => (lambda (make)
              (cons make #'(arg ...))))
        (else
         (raise-syntax-error #f "no constructor defined for class" stx self))))))

  (bind-method! class-type-info::t 'apply-macro-expander
                class-type-info::apply-macro-expander)

  (def (syntax-local-class-type-info? stx (is? true))
    (and (identifier? stx)
         (alet (e (syntax-local-value stx false))
           (and (class-type-info? e)
                (is? e))))))

(module MOP-3
  (import MOP-2 (phi: +1 MOP-2))
  (export #t)

  ;; meta-circular
  (defsyntax class-type-info
    (make-class-type-info
     id: 'gerbil.core#class-type-info::t
     name: 'class-type-info
     super: []
     slots: '(id name super slots struct? final? system?
                 metaclass
                 constructor-method
                 type-descriptor constructor predicate
                 accessors mutators
                 unchecked-accessors unchecked-mutators)
     struct?: #f
     final?: #f
     system?: #f
     constructor-method: #f
     type-descriptor: (quote-syntax class-type-info::t)
     constructor: (quote-syntax make-class-type-info)
     predicate: (quote-syntax class-type-info?)
     accessors:
     [['id :: (quote-syntax !class-type-id)]
      ['name :: (quote-syntax !class-type-name)]
      ['super :: (quote-syntax !class-type-super)]
      ['slots :: (quote-syntax !class-type-slots)]
      ['struct? :: (quote-syntax !class-type-struct?)]
      ['final? :: (quote-syntax !class-type-final?)]
      ['system? :: (quote-syntax !class-type-system?)]
      ['metaclass :: (quote-syntax !class-type-metaclass)]
      ['constructor-method :: (quote-syntax !class-type-constructor-method)]
      ['type-descriptor :: (quote-syntax !class-type-descriptor)]
      ['constructor :: (quote-syntax !class-type-constructor)]
      ['predicate :: (quote-syntax !class-type-predicate)]
      ['accessors :: (quote-syntax !class-type-accessors)]
      ['mutators :: (quote-syntax !class-type-mutators)]
      ['unchecked-accessors :: (quote-syntax !class-type-unchecked-accessors)]
      ['unchecked-mutators :: (quote-syntax !class-type-unchecked-mutators)]]
     mutators:
     [['id :: (quote-syntax !class-type-id-set!)]
      ['name :: (quote-syntax !class-type-name-set!)]
      ['super :: (quote-syntax !class-type-super-set!)]
      ['slots :: (quote-syntax !class-type-slots-set!)]
      ['struct? :: (quote-syntax !class-type-struct?-set!)]
      ['final? :: (quote-syntax !class-type-final?-set!)]
      ['system? :: (quote-syntax !class-type-system?-set!)]
      ['metaclass :: (quote-syntax !class-type-metaclass-set!)]
      ['constructor-method :: (quote-syntax !class-type-constructor-method-set!)]
      ['type-descriptor :: (quote-syntax !class-type-descriptor-set!)]
      ['constructor :: (quote-syntax !class-type-constructor-set!)]
      ['predicate :: (quote-syntax !class-type-predicate-set!)]
      ['accessors :: (quote-syntax !class-type-accessors-set!)]
      ['mutators :: (quote-syntax !class-type-mutators-set!)]
      ['unchecked-accessors :: (quote-syntax !class-type-unchecked-accessors-set!)]
      ['unchecked-mutators :: (quote-syntax !class-type-unchecked-mutators-set!)]]
     unchecked-accessors:
     [['id :: (quote-syntax &!class-type-id)]
      ['name :: (quote-syntax &!class-type-name)]
      ['super :: (quote-syntax &!class-type-super)]
      ['slots :: (quote-syntax &!class-type-slots)]
      ['struct? :: (quote-syntax &!class-type-struct?)]
      ['final? :: (quote-syntax &!class-type-final?)]
      ['system? :: (quote-syntax &!class-type-system?)]
      ['metaclass :: (quote-syntax !class-type-metaclass)]
      ['constructor-method :: (quote-syntax &!class-type-constructor-method)]
      ['type-descriptor :: (quote-syntax &!class-type-descriptor)]
      ['constructor :: (quote-syntax &!class-type-constructor)]
      ['predicate :: (quote-syntax &!class-type-predicate)]
      ['accessors :: (quote-syntax &!class-type-accessors)]
      ['mutators :: (quote-syntax &!class-type-mutators)]
      ['unchecked-accessors :: (quote-syntax &!class-type-unchecked-accessors)]
      ['unchecked-mutators :: (quote-syntax &!class-type-unchecked-mutators)]]
     unchecked-mutators:
     [['id :: (quote-syntax &!class-type-id-set!)]
      ['name :: (quote-syntax &!class-type-name-set!)]
      ['super :: (quote-syntax &!class-type-super-set!)]
      ['slots :: (quote-syntax &!class-type-slots-set!)]
      ['struct? :: (quote-syntax &!class-type-struct?-set!)]
      ['final? :: (quote-syntax &!class-type-final?-set!)]
      ['system? :: (quote-syntax &!class-type-system?-set!)]
      ['metaclass :: (quote-syntax &!class-type-metaclass-set!)]
      ['constructor-method :: (quote-syntax &!class-type-constructor-method-set!)]
      ['type-descriptor :: (quote-syntax &!class-type-descriptor-set!)]
      ['constructor :: (quote-syntax &!class-type-constructor-set!)]
      ['predicate :: (quote-syntax &!class-type-predicate-set!)]
      ['accessors :: (quote-syntax &!class-type-accessors-set!)]
      ['mutators :: (quote-syntax &!class-type-mutators-set!)]
      ['unchecked-accessors :: (quote-syntax &!class-type-unchecked-accessors-set!)]
      ['unchecked-mutators :: (quote-syntax &!class-type-unchecked-mutators-set!)]])))

(module MOP-4
  (import MOP-1 (phi: +1 MOP-1 MOP-2 MOP-3))
  (export #t)

  ;; and here we define the general MOP macros
  (begin-syntax
    (def (typedef-body? stx)
      (def (body-opt? key)
        (memq (stx-e key)
              '(id: struct: name: constructor: transparent: final: print: equal: metaclass:)))
      (stx-plist? stx body-opt?))

    (def (generate-defclass stx id super-ref slots body)
      (def (wrap e-stx)
        (stx-wrap-source e-stx (stx-source stx)))

      (def make-id
        (if (uninterned-symbol? (stx-e id))
          (lambda _ (genident id))
          (lambda args
            (apply stx-identifier id args))))

      (def (get-mixin-slots super slots)
        (def tab (make-hash-table-eq))
        (def (dedup mixins)
          (let lp ((rest mixins) (r []))
            (if (pair? rest)
              (let (slot (car rest))
                (if (hash-get tab slot)
                  (lp (cdr rest) r)
                  (begin
                    (hash-put! tab slot #t)
                    (lp (cdr rest) (cons slot r)))))
              (reverse r))))

        (stx-for-each (lambda (slot) (hash-put! tab (stx-e slot) #t)) slots)
        (cond
         ((not super) [])
         ((identifier? super)
          (dedup (get-mixin-slots-r super)))
         (else
          (dedup (concatenate (map get-mixin-slots-r super))))))

      (def (get-mixin-slots-r type-id)
        (let (info (syntax-local-value type-id))
          (append
           (!class-type-slots info)
           (concatenate (map get-mixin-slots-r (!class-type-super info))))))

      (check-duplicate-identifiers slots stx)

      (with-syntax* (((values name)
                      (symbol->string (stx-e id)))
                     ((values super)
                      (map syntax-local-value super-ref))
                     ((values struct?)
                      (stx-getq struct: body))
                     (type id)
                     (type::t   (make-id name "::t"))
                     (make-type (make-id "make-" name))
                     (type?     (make-id name "?"))
                     (type-super
                      (map !class-type-descriptor super))
                     ((slot ...)
                      slots)
                     ((getf ...)
                      (stx-map (cut make-id name "-" <>) slots))
                     ((setf ...)
                      (stx-map (cut make-id name "-" <> "-set!") slots))
                     ((values mixin-slots)
                      (get-mixin-slots super-ref slots))
                     ((mixin-slot ...)
                      mixin-slots)
                     ((mixin-getf ...)
                      (stx-map (cut make-id name "-" <>) mixin-slots))
                     ((mixin-setf ...)
                      (stx-map (cut make-id name "-" <> "-set!") mixin-slots))
                     ((ugetf ...)
                      (stx-map (cut make-id "&" <>) #'(getf ...)))
                     ((usetf ...)
                      (stx-map (cut make-id "&" <>) #'(setf ...)))
                     ((mixin-ugetf ...)
                      (stx-map (cut make-id "&" <>) #'(mixin-getf ...)))
                     ((mixin-usetf ...)
                      (stx-map (cut make-id "&" <>) #'(mixin-setf ...)))
                     ((values type-slots)
                      (cond
                       ((stx-null? slots) [])
                       (else [slots: #'((slot getf setf) ...)])))
                     ((values type-mixin-slots)
                      (cond
                       ((stx-null? mixin-slots) [])
                       (else [mixin: #'((mixin-slot mixin-getf mixin-setf) ...)])))
                     ((values type-name)
                      [name: (or (stx-getq name: body) id)])
                     ((values type-id)
                      [id: (or (stx-getq id: body) (make-class-type-id #'type))])
                     ((values type-constructor)
                      (or (alet (e (stx-getq constructor: body))
                            [constructor: e])
                          []))
                     ((values properties)
                      (let* ((properties
                              (if (stx-e (stx-getq transparent: body))
                                [[transparent: . #t]]
                                []))
                             (properties
                              (cond
                               ((stx-e (stx-getq print: body))
                                => (lambda (print)
                                     (let (print (if (eq? print #t) slots print))
                                       (cons [print: . print] properties))))
                               (else properties)))
                             (properties
                              (cond
                               ((stx-e (stx-getq equal: body))
                                => (lambda (equal)
                                     (let (equal (if (eq? equal #t) slots equal))
                                       (cons [equal: . equal] properties))))
                               (else properties))))
                        properties))
                     ((values type-properties)
                      (if (null? properties)
                        []
                        (with-syntax ((properties properties))
                          [properties: #'(quote properties)])))
                     ((values metaclass)
                      (cond
                       ((stx-getq metaclass: body)
                        => (lambda (metaclass)
                             (and (identifier? metaclass) metaclass)))
                       (else #f)))
                     ((values type-metaclass)
                      (if metaclass
                        [metaclass: metaclass]
                        []))
                     ((values final?)
                      (stx-e (stx-getq final: body)))
                     ((values type-struct)
                      [struct: struct?])
                     ((values type-final)
                      [final: final?])
                     ((type-body ...)
                      [type-id ...
                               type-name ...
                               type-constructor ...
                               type-struct ...
                               type-final ...
                               type-metaclass ...
                               type-properties ...
                               type-slots ...
                               type-mixin-slots ...])
                     (typedef
                      (wrap
                       #'(defclass-type type::t type-super
                           make-type type?
                           type-body ...)))
                     (meta-type-id
                      (with-syntax (((id: id) type-id))
                        #'(quote id)))
                     (meta-type-name
                      (with-syntax ((type-name (cadr type-name)))
                        #'(quote type-name)))
                     (meta-type-super
                      (with-syntax (((super-id ...) super-ref))
                        #'[(quote-syntax super-id) ...]))
                     (meta-type-slots #'(quote (slot ...)))
                     (meta-type-struct? struct?)
                     (meta-type-final? final?)
                     (meta-type-metaclass
                      (if metaclass
                        (with-syntax ((metaclass metaclass))
                          #'(quote-syntax metaclass))
                        #f))
                     (meta-type-constructor-method
                      (if (null? type-constructor)
                        #f
                        (with-syntax (((constructor: kons) type-constructor))
                          #'(quote kons))))
                     (meta-type-descriptor #'(quote-syntax type::t))
                     (meta-type-constructor #'(quote-syntax make-type))
                     (meta-type-predicate #'(quote-syntax type?))
                     (meta-type-accessors
                      #'[['slot :: (quote-syntax getf)] ...
                         ['mixin-slot :: (quote-syntax mixin-getf)]...])
                     (meta-type-mutators
                      #'[['slot :: (quote-syntax setf)] ...
                         ['mixin-slot :: (quote-syntax mixin-setf)]...])
                     (meta-type-unchecked-accessors
                      #'[['slot :: (quote-syntax ugetf)] ...
                         ['mixin-slot :: (quote-syntax mixin-ugetf)]...])
                     (meta-type-unchecked-mutators
                      #'[['slot :: (quote-syntax usetf)] ...
                         ['mixin-slot :: (quote-syntax mixin-usetf)]...])
                     (metadef
                      (wrap
                       #'(defsyntax type
                           (make-class-type-info
                            id: meta-type-id
                            name: meta-type-name
                            slots: meta-type-slots
                            super: meta-type-super
                            struct?: meta-type-struct?
                            final?: meta-type-final?
                            metaclass: meta-type-metaclass
                            constructor-method: meta-type-constructor-method
                            type-descriptor: meta-type-descriptor
                            constructor: meta-type-constructor
                            predicate: meta-type-predicate
                            accessors: meta-type-accessors
                            mutators: meta-type-mutators
                            unchecked-accessors: meta-type-unchecked-accessors
                            unchecked-mutators: meta-type-unchecked-mutators)))))
        (wrap
         #'(begin typedef metadef)))))

  (defrules defstruct ()
    ((_ hd slots . rest) (defclass hd slots struct: #t . rest)))

  (defalias define-struct defstruct)

  (defsyntax (defclass stx)
    (def (generate hd slots body)
      (syntax-case hd ()
        ((id . super)
         (and (stx-list? #'super)
              (stx-andmap syntax-local-class-type-info? #'super))
         (generate-defclass stx #'id (syntax->list #'super) slots body))
        (_ (if (identifier? hd)
             (generate-defclass stx hd [] slots body)
             (raise-syntax-error #f "bad syntax; class name should be an identifier" stx hd)))))

    (syntax-case stx ()
      ((_ hd slots . rest)
       (and (identifier-list? #'slots)
            (typedef-body? #'rest))
       (generate #'hd #'slots #'rest))))

  (defalias define-class defclass)

  (defsyntax (defmethod stx)
    (def (wrap e-stx)
      (stx-wrap-source e-stx (stx-source stx)))

    (def (method-opt? x)
      (memq (stx-e x) '(rebind:)))

    (syntax-case stx (@method)
      ((_ (@method id type) impl . rest)
       (cond
        ((and (identifier? #'id)
              (syntax-local-class-type-info? #'type)
              (stx-plist? #'rest method-opt?))
         (with-syntax* (((values klass)
                         (syntax-local-value #'type))
                        ((values rebind?)
                         (stx-e (stx-getq rebind: #'rest)))
                        (type::t
                         (!class-type-descriptor klass))
                        (name
                         (stx-identifier #'type #'type "::" #'id))
                        (@next-method
                         (stx-identifier #'type '@next-method))
                        (defimpl
                          (wrap
                           #'(def name
                               (let-syntax
                                   ((@next-method
                                     (syntax-rules ()
                                       ((_ obj arg (... ...))
                                        (call-next-method type::t obj 'id arg (... ...))))))
                                 impl))))
                        (rebind? rebind?)
                        (bind
                         (wrap #'(bind-method! type::t 'id name rebind?))))
           (wrap #'(begin defimpl bind))))
        ((not (identifier? #'id))
         (raise-syntax-error #f "bad syntax; expected method identifier" stx #'id))
        ((not (syntax-local-class-type-info? #'type))
         (raise-syntax-error #f "bad syntax; expected type identifier" stx #'type))
        (else
         (raise-syntax-error #f "bad syntax; illegal method options" stx))))))

  (defsyntax (@method stx)
    (def (dotted-identifier? id)
      (and (identifier? id)
           (let (id-str (symbol->string (stx-e id)))
             (and (string-index id-str #\.)
                  (let (split (string-split id-str #\.))
                    (fx= (length split) 2))))))

    (def (split-dotted id)
      (let* ((id-str (symbol->string (stx-e id)))
             (split (string-split id-str #\.)))
        [(stx-identifier id (car split))
         (stx-identifier id (cadr split))]))

    (syntax-case stx ()
      ((_ id arg ... last)
       (and (dotted-identifier? #'id)
            (stx-ormap ellipsis? #'(arg ...)))
       (with-syntax (((object method) (split-dotted #'id)))
         #'(apply call-method object 'method [arg ...])))
      ((_ id arg ...)
       (dotted-identifier? #'id)
       (with-syntax (((object method) (split-dotted #'id)))
         #'(call-method object 'method arg ...)))
      ((_ id obj arg ...)
       (and (identifier? #'id)
            (stx-ormap ellipsis? #'(arg ...)))
       #'(apply call-method obj 'id [arg ...]))
      ((_ id obj arg ...)
       (identifier? #'id)
       #'(call-method obj 'id arg ...))))

  (defrules @ ()
    ((_ obj id)
     (identifier? #'id)
     (slot-ref obj 'id))
    ((recur obj id rest ...)
     (recur (recur obj id) rest ...)))

  (defrules @-set! ()
    ((_ obj id val)
     (identifier? #'id)
     (slot-set! obj 'id val))
    ((recur obj id path ... last val)
     (recur (@ obj id path ...) last val))))

(module MOP-5
  (import (phi: +1 MOP-2))
  (export #t)
  (defsyntax (defsystem-class-info stx)
    (syntax-case stx ()
      ((_ id type (super ...) predicate)
       (let (klass (eval-syntax #'type))
         (with-syntax ((type-id (class-type-id klass))
                       (type-name (class-type-name klass)))
           #'(defsyntax id
               (make-class-type-info
                id: 'type-id
                name: 'type-name
                super: [(quote-syntax super) ...]
                slots: []
                system?: #t
                type-descriptor: (quote-syntax type)
                predicate: (quote-syntax predicate)
                accessors: []
                mutators: []
                unchecked-accessors: []
                unchecked-mutators: [])))))))

  (defsystem-class-info :t t::t () true)
  (defsystem-class-info :class class::t (t::t) class-type?)
  (defsystem-class-info :object object::t (t::t) true)

  ;; NOTE: this must match gerbil/runtime/mop-system-classes
  (defsystem-class-info :immediate immediate::t (t::t) immediate?)
  (defsystem-class-info :char char::t (immediate::t) char?)
  (defsystem-class-info :boolean boolean::t (immediate::t) boolean?)

  (defsystem-class-info :atom atom::t (immediate::t) atom?)
  (defsystem-class-info :void void::t (atom::t) void?)
  (defsystem-class-info :eof eof::t (atom::t) eof-object?)
  (defsystem-class-info :true true::t (boolean::t atom::t) true?)
  (defsystem-class-info :false false::t (boolean::t atom::t) not)

  (defsystem-class-info :special special::t (atom::t) special?)

  (defsystem-class-info :number number::t (t::t) number?)
  (defsystem-class-info :real real::t (number::t) real?)
  (defsystem-class-info :integer integer::t (real::t) exact-integer?)
  (defsystem-class-info :fixnum fixnum::t (integer::t immediate::t) fixnum?)
  (defsystem-class-info :bignum  bignum::t (integer::t) ##bignum?)
  (defsystem-class-info :ratnum ratnum::t (real::t) ##ratnum?)
  (defsystem-class-info :flonum flonum::t (real::t) flonum?)
  (defsystem-class-info :cpxnum cpxnum::t (number::t) ##cpxnum?)

  (defsystem-class-info :symbolic symbolic::t (t::t) symbolic?)
  (defsystem-class-info :symbol symbol::t (symbolic::t) symbol?)
  (defsystem-class-info :keyword keyword::t (symbolic::t) keyword?)

  (defsystem-class-info :list list::t (t::t) list?)
  (defsystem-class-info :pair pair::t (list::t) pair?)
  (defsystem-class-info :null null::t (list::t atom::t) null?)

  (defsystem-class-info :sequence sequence::t (t::t) sequence?)
  (defsystem-class-info :vector vector::t (sequence::t) vector?)
  (defsystem-class-info :string string::t (sequence::t) string?)
  (defsystem-class-info :hvector hvector::t (sequence::t) hvector?)
  (defsystem-class-info :u8vector u8vector::t (hvector::t) u8vector?)
  (defsystem-class-info :s8vector s8vector::t (hvector::t) s8vector?)
  (defsystem-class-info :u16vector u16vector::t (hvector::t) u16vector?)
  (defsystem-class-info :s16vector s16vector::t (hvector::t) s16vector?)
  (defsystem-class-info :u32vector u32vector::t (hvector::t) u32vector?)
  (defsystem-class-info :s32vector s32vector::t (hvector::t) s32vector?)
  (defsystem-class-info :u64vector u64vector::t (hvector::t) u64vector?)
  (defsystem-class-info :s64vector s64vector::t (hvector::t) s64vector?)
  (defsystem-class-info :f32vector f32vector::t (hvector::t) f32vector?)
  (defsystem-class-info :f64vector f64vector::t (hvector::t) f64vector?)

  (defsystem-class-info :values values::t (t::t) ##values?)
  (defsystem-class-info :box box::t (t::t) box?)
  (defsystem-class-info :frame frame::t (t::t) ##frame?)
  (defsystem-class-info :continuation continuation::t (t::t) continuation?)
  (defsystem-class-info :promise promise::t (t::t) promise?)
  (defsystem-class-info :weak weak::t (t::t) weak?)
  (defsystem-class-info :foreign foreign::t (t::t) foreign?)

  (defsystem-class-info :procedure procedure::t (t::t) procedure?)

  (defsystem-class-info :time time::t (t::t) time?)
  (defsystem-class-info :thread thread::t (t::t) thread?)
  (defsystem-class-info :thread-group thread-group::t (t::t) thread-group?)
  (defsystem-class-info :mutex mutex::t (t::t) mutex?)
  (defsystem-class-info :condvar condvar::t (t::t) condvar?)
  (defsystem-class-info :port port::t (t::t) port?)
  (defsystem-class-info :object-port object-port::t (port::t) object-port?)
  (defsystem-class-info :character-port character-port::t (object-port::t) character-port?)
  (defsystem-class-info :byte-port byte-port::t (character-port::t) byte-port?)
  (defsystem-class-info :device-port device-port::t (byte-port::t) device-port?)
  (defsystem-class-info :vector-port vector-port::t (object-port::t) vector-port?)
  (defsystem-class-info :string-port string-port::t (character-port::t) string-port?)
  (defsystem-class-info :u8vector-port u8vector-port::t (byte-port::t) u8vector-port?)
  (defsystem-class-info :raw-device-port raw-device-port::t (port::t) raw-device-port?)
  (defsystem-class-info :tcp-server-port tcp-server-port::t (object-port::t) tcp-server-port?)
  (defsystem-class-info :udp-port udp-port::t (object-port::t) udp-port?)
  (defsystem-class-info :directory-port directory-port::t (object-port::t) directory-port?)
  (defsystem-class-info :event-queue-port event-queue-port::t (object-port::t) event-queue-port?)
  (defsystem-class-info :table table::t (t::t) table?)
  (defsystem-class-info :readenv readenv::t (t::t) readenv?)
  (defsystem-class-info :writeenv writeenv::t (t::t) writeenv?)
  (defsystem-class-info :readtable readtable::t (t::t) readtable?)
  (defsystem-class-info :processor processor::t (t::t) processor?)
  (defsystem-class-info :vm vm::t (t::t) vm?)
  (defsystem-class-info :file-info file-info::t (t::t) file-info?)
  (defsystem-class-info :socket-info socket-info::t (t::t) socket-info?)
  (defsystem-class-info :address-info address-info::t (t::t) address-info?))

(import MOP-1 MOP-4 MOP-5 (phi: +1 MOP-1 MOP-2 MOP-3 MOP-4 MOP-5))
