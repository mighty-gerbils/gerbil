;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler optimization passes
prelude: "../core"
package: gerbil/compiler
namespace: gxc

(import "../core/expander"
        "../expander"
        "../runtime/c3"
        "base"
        "compile")
(export #t (import: "../core/expander"))

(def current-compile-optimizer-info
  (make-parameter #f))
(def current-compile-mutators
  (make-parameter #f))
(def current-compile-local-type
  (make-parameter #f))

(defstruct optimizer-info (type classes ssxi methods)
  constructor: :init!)

(defmethod {:init! optimizer-info}
  (lambda (self)
    (struct-instance-init! self (make-hash-table-eq) (make-hash-table-eq) (make-hash-table-eq) (make-hash-table-eq))))

;;; optimizer-info: types
(defstruct !type (id)
  equal: #t print: #t)
(defstruct (!alias !type) ())
(defstruct (!procedure !type) (signature)
  equal: #t print: #t)

(defclass !signature (return effect arguments unchecked)
  final: #t equal: #t print: #t)

(defstruct (!primitive-predicate !procedure) ()
  constructor: :init!
  equal: #t)

;;; MOP
(defstruct (!class-meta !type) (class)
  constructor: :init!)

(defstruct (!class !type)
  (super ;; ListOf Symbol; super type runtime identifiers
   precedence-list ;; ListOf Symbol; linearized super precendence list
   slots ;; ListOf Symbol; direct class slots
   fields ;; ListOf Symbol; slot field layout for direct/struct instances
   constructor  ;; OrFalse Symbol; constructor method
   struct? ;; Boolean; is it a struct?
   final?  ;; Boolean; is it a final class?
   system? ;; Boolean; is it a system class?
   metaclass ;; OrFalse Symbol; the metaclass of the class
   methods) ;; Map Symbol -> Symbol; known method implementations
  constructor: :init!
  equal: #t
  print: (super precedence-list))

(defstruct (!predicate !procedure) ()
  constructor: :init!
  equal: #t)
(defstruct (!constructor !procedure)()
  constructor: :init!
  equal: #t)
(defstruct (!accessor !procedure) (slot checked?)
  constructor: :init!
  equal: #t)
(defstruct (!mutator !procedure) (slot checked?)
  constructor: :init!
  equal: #t)

;; interfaces
(defstruct (!interface !type)
  (methods) ;; ListOf Symbol; list of interface methods
  equal: #t)

;; procedures
(defstruct (!lambda !procedure) (arity dispatch inline inline-typedecl signature)
  constructor: :init!
  equal: #t)
(defstruct (!case-lambda !procedure) (clauses)
  constructor: :init!
  equal: #t)
(defstruct (!kw-lambda !procedure) (table dispatch)
  constructor: :init!)
(defstruct (!kw-lambda-primary !procedure) (keys main)
  constructor: :init!)

;; primitive markers (necessary to avoid unsound call optimizations)
(defclass !primitive ())
(defclass (!primitive-lambda !primitive !lambda) ()
  constructor: :init!
  equal: #t)
(defclass (!primitive-case-lambda !primitive !case-lambda) ()
  constructor: :init!
  equal: #t)

;;; methods
(defmethod {:init! !class-meta}
  (lambda (self klass)
    (set! (&!type-id self) 'class)
    (set! (&!class-meta-class self) klass)))

(defmethod {:init! !class}
  (case-lambda
    ((self id super slots ctor-method struct? final? system? metaclass)
     ;; 1. check finality
     (let lp ((rest super))
       (match rest
         ([super-id . rest]
          (when (!class-final? (optimizer-resolve-class `(!class ,id) super-id))
            (raise-compile-error "cannot extend final class"
                                 `(!class ,id) super-id))
          (lp rest))
         (else (void))))

     (let* ((ctor-method
             (or ctor-method
                 ;; 2. check/infer from super constructor method name
                 (let lp ((rest super) (method #f))
                   (match rest
                     ([super-id . rest]
                      (let (klass (optimizer-resolve-class `(!class ,id) super-id))
                        (cond
                         ((!class-constructor klass)
                          => (lambda (ctor-method)
                               (if method
                                 (if (eq? ctor-method method)
                                   (lp rest ctor-method)
                                   (raise-compile-error "conflicting implicit constructor methods"
                                                        `(!class ,id) method ctor-method))
                                 (lp rest ctor-method))))
                         (else
                          (lp rest method)))))
                     (else method)))))
            ((values precedence-list base-struct)
             ;; 3. compute super precedence list
             (c4-linearize [] super
                           get-precedence-list:
                           (lambda (klass-id)
                             (cons klass-id
                                   (!class-precedence-list
                                    (optimizer-resolve-class `(!class ,id) klass-id))))
                           struct:
                           (lambda (klass-id)
                             (!class-struct?
                              (optimizer-resolve-class `(!class ,id) klass-id)))
                           eq: eq?
                           get-name: identity))
            (precedence-list
             (cond
              ((memq id '(t object class)) precedence-list)
              ((memq 'object::t precedence-list)
               precedence-list)
              (system?
               (if (memq 't::t precedence-list)
                 precedence-list
                 (append precedence-list '(t::t))))
              (else
               (let loop ((tail precedence-list) (head []))
                 (match tail
                   ([hd . rest]
                    (if (eq? hd 't::t)
                      (foldl cons (cons 'object::t tail) head)
                      (loop rest (cons hd head))))
                   (else
                    (foldl cons '(object::t t::t) head)))))))
            (fields
             ;; 4. compute slot->field mapping for direct instances/structs
             (compute-class-fields `(!class ,id) base-struct precedence-list slots)))
       (set! (&!type-id self) id)
       (set! (&!class-super self) super)
       (set! (&!class-precedence-list self) precedence-list)
       (set! (&!class-slots self) slots)
       (set! (&!class-fields self) fields)
       (set! (&!class-constructor self) ctor-method)
       (set! (&!class-struct? self) struct?)
       (set! (&!class-final? self) final?)
       (set! (&!class-metaclass self) metaclass)))

    ;; ssxi loader
    ((self id super precedence-list slots fields constructor struct? final? system? metaclass methods)
     (set! (&!type-id self) id)
     (set! (&!class-super self) super)
     (set! (&!class-precedence-list self) precedence-list)
     (set! (&!class-slots self) slots)
     (set! (&!class-fields self) fields)
     (set! (&!class-constructor self) constructor)
     (set! (&!class-struct? self) struct?)
     (set! (&!class-final? self) final?)
     (set! (&!class-metaclass self) metaclass)
     (when methods
       (set! (&!class-methods self) (list->hash-table-eq methods))))))

(def (compute-class-fields where base-struct precedence-list direct-slots)
  (let* ((base-fields
          (if base-struct
            (!class-fields (optimizer-resolve-class where base-struct))
            []))
         (r-fields (reverse base-fields))
         (seen-slots
          (let (tab (make-hash-table-eq))
            (for-each (cut hash-put! tab <> #t) base-fields)
            tab))
         (process-slot
          (lambda (slot)
            (unless (hash-get seen-slots slot)
              (hash-put! seen-slots slot #t)
              (set! r-fields (cons slot r-fields))))))
    (for-each (lambda (mixin)
                (let (klass (optimizer-resolve-class where mixin))
                  (unless (!class-struct? klass)
                    (for-each process-slot (!class-fields klass)))))
              precedence-list)
    (for-each process-slot direct-slots)
    (reverse r-fields)))

(def (!class-slot->field-offset klass slot)
  (let lp ((rest (!class-fields klass)) (offset 1))
    (match rest
      ([s . rest]
       (if (eq? s slot)
         offset
         (lp rest (fx1+ offset))))
      (else
       (raise-compile-error "unknown class slot" (!type-id klass) (!class-fields klass) slot)))))

(def (!class-slot-find-struct klass slot)
  (if (!class-struct-slot? klass slot)
    klass
    (let lp ((rest (!class-precedence-list klass)))
      (match rest
        ([super . rest]
         (let (super-class
               (optimizer-resolve-class
                `(!class-slot-find-struct ,(!type-id klass) ,slot)
                super))
           (if (!class-struct-slot? super-class slot)
             super-class
             (lp rest))))
        (else #f)))))

(def (!class-struct-slot? klass slot)
  (and (!class-struct? klass) (memq slot (!class-fields klass))))

(defmethod {:init! !predicate}
  (lambda (self id)
    (set! (&!type-id self) id)
    (set! (&!procedure-signature self)
      (!signature return: 'boolean::t
                  effect: '(pure predicate)
                  arguments: '(t::t)))))

(defmethod {:init! !constructor}
  (lambda (self id)
    (set! (&!type-id self) id)
    (set! (&!procedure-signature self)
      (!signature return: id
                  effect: '(alloc)))))

(defmethod {:init! !accessor}
  (lambda (self id slot checked?)
    (set! (&!type-id self) id)
    (set! (&!accessor-slot self) slot)
    (set! (&!accessor-checked? self) checked?)
    (set! (&!procedure-signature self)
      (!signature return: 't::t
                  effect: '(pure)
                  arguments: [id]))))

(defmethod {:init! !mutator}
  (lambda (self id slot checked?)
    (set! (&!type-id self) id)
    (set! (&!mutator-slot self) slot)
    (set! (&!mutator-checked? self) checked?)
    (set! (&!procedure-signature self)
      (!signature return: 'void::t
                  effect: '(mut)
                  arguments: [id 't::t]))))

(defmethod {:init! !lambda}
  (lambda (self arity dispatch signature: (signature #f))
    (set! (&!type-id self) 'procedure)
    (set! (&!lambda-arity self) arity)
    (set! (&!procedure-signature self) signature)))

(defmethod {:init! !case-lambda}
  (lambda (self clauses)
    (set! (&!type-id self) 'procedure)
    (set! (&!case-lambda-clauses self) clauses)))

(defmethod {:init! !kw-lambda}
  (lambda (self tab dispatch)
    (set! (&!type-id self) 'procedure)
    (set! (&!kw-lambda-table self) tab)
    (set! (&!kw-lambda-dispatch self) dispatch)))

(defmethod {:init! !kw-lambda-primary}
  (lambda (self keys main)
    (set! (&!type-id self) 'procedure)
    (set! (&!kw-lambda-primary-keys self) keys)
    (set! (&!kw-lambda-primary-main self) main)))

(defmethod {:init! !primitive-lambda}
  !lambda:::init!)

(defmethod {:init! !primitive-case-lambda}
  !case-lambda:::init!)

(defmethod {:init! !primitive-predicate}
  (lambda (self id)
    (set! (&!type-id self) id)
    (set! (&!procedure-signature self)
      (!signature return: 'boolean::t
                  effect: '(pure)
                  arguments: '(t::t)))))

(def (!class-method-table klass)
  (cond
   ((!class-methods klass))
   (else
    (let (tab (make-hash-table-eq))
      (set! (!class-methods klass) tab)
      tab))))

(def (!class-lookup-method klass method)
  (alet (tab (!class-methods klass))
    (hash-get tab method)))

(def (!type-subclass? klass-a klass-b)
  (and klass-a klass-b
       (or (eq? klass-a klass-b)
           (eq? (!type-id klass-a) (!type-id klass-b))
           (eq? (!type-id klass-b) 't)
           (and (!procedure? klass-a)
                (eq? (!type-id klass-b) 'procedure))
           (and (!class? klass-a)
                (!class? klass-b)
                (!class-subclass? klass-a klass-b))
           (and (!class? klass-a) (!interface? klass-b)
                (eq? (!type-id klass-a)
                     (!type-id (optimizer-resolve-class `(subclass? ,klass-a ,klass-b)
                                                        (!type-id klass-b))))))))

(def (!class-subclass? klass-a klass-b)
  (let ((klass-id-b (!type-id klass-b))
        (precedence-list (!class-precedence-list klass-a)))
    (let loop ((rest precedence-list))
      (match rest
        ([klass-name . rest]
         (or (eq? (!type-id (optimizer-resolve-class `(subclass? ,klass-a ,klass-b) klass-name))
                  klass-id-b)
             (loop rest)))
        (else #f)))))

;; utilities
(def (optimizer-declare-type! sym type (local? #f))
  (unless (!type? type)
    (error "bad declaration: expected !type" sym type))
  (verbose "declare-type " sym " " (struct->list type))
  (let (table (if local?
                (current-compile-local-type)
                (optimizer-info-type (current-compile-optimizer-info))))
    (hash-put! table sym type)))

(def (optimizer-declare-class! sym type)
  (unless (!class? type)
    (error "bad declaration: expected !class" sym type))
  (let (table (optimizer-info-classes (current-compile-optimizer-info)))
    (verbose "declare-class " sym " " (struct->list type))
    (hash-put! table sym type)
    (hash-put! table type sym)))

(def (optimizer-declare-builtin-class! sym type)
  (unless (!class? type)
    (error "bad declaration: expected !class" sym type))
  (let (table (optimizer-info-classes (current-compile-optimizer-info)))
    (unless (hash-get table sym)
      (verbose "declare-builtin-class " sym " " (struct->list type))
      (hash-put! table sym type)
      (hash-put! table type sym))))

(def (optimizer-clear-type! sym)
  (verbose "clear-type " sym)
  (hash-remove! (current-compile-local-type) sym)
  (hash-remove! (optimizer-info-type (current-compile-optimizer-info)) sym))

(def (optimizer-declare-method! type-t method sym (rebind? #f))
  (let (klass (optimizer-lookup-class type-t))
    (if klass
      (let (vtab (!class-method-table klass))
        (cond
         ((hash-get vtab method) =>
          (lambda (existing)
            (cond
             (rebind?
              (verbose "declare-method: rebind existing method" type-t " " method)
              (hash-put! vtab method sym))
             ((eq? existing sym)
              (void))
             (else
              (raise-compile-error
               "declare-method: duplicate method declaration"
               `(bind-method! ,type-t ,method ,sym) method)))))
         (else
          (verbose "declare-method " type-t " " method " => " sym)
          (hash-put! vtab method sym))))
      (verbose "declare-method: unknown class"  type-t))))

(def (optimizer-lookup-type sym)
  (or (alet (ht (current-compile-local-type))
        (hash-get ht sym))
      (hash-get (optimizer-info-type (current-compile-optimizer-info))
                sym)))

(def (optimizer-resolve-type sym)
  (alet (type (optimizer-lookup-type sym))
    (if (!alias? type)
      (optimizer-resolve-type (!type-id type))
      type)))

(def (optimizer-lookup-class sym)
  (let (table (optimizer-info-classes (current-compile-optimizer-info)))
    (hash-get table sym)))

(def (optimizer-resolve-class where sym)
  (or (optimizer-lookup-class sym)
      (raise-compile-error "unknown class" where sym)))

(def (optimizer-lookup-class-name klass)
  (unless (!class? klass)
    (raise-compile-error "not a class" 'lookup-class-name klass))
  (hash-get (optimizer-info-classes (current-compile-optimizer-info)) klass))

(def (optimizer-lookup-method type-t method)
  (!class-lookup-method (optimizer-resolve-class 'lookup-method type-t) method))

(def (optimizer-top-level-method! sym)
  (verbose "top-level method: " sym)
  (hash-put! (optimizer-info-methods (current-compile-optimizer-info)) sym #t))

(def (optimizer-top-level-method? sym)
  (hash-get (optimizer-info-methods (current-compile-optimizer-info)) sym))

(def (identifier-symbol stx)
  (if (syntax-quote? stx)
    (generate-runtime-binding-id stx)
    (stx-e stx)))
