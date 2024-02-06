;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler optimization passes
package: gerbil/compiler
namespace: gxc

(import :gerbil/expander
        "base"
        "compile"
        <syntax-case> <syntax-sugar>)
(export #t (import: <syntax-case> <syntax-sugar>))

(def current-compile-optimizer-info
  (make-parameter #f))
(def current-compile-mutators
  (make-parameter #f))
(def current-compile-local-type
  (make-parameter #f))

(defstruct optimizer-info (type ssxi methods)
  constructor: :init!)

(defmethod {:init! optimizer-info}
  (lambda (self)
    (struct-instance-init! self (make-hash-table-eq) (make-hash-table-eq) (make-hash-table-eq))))

;;; optimizer-info: types
(defstruct !type (id))
(defstruct (!alias !type) ())
(defstruct (!procedure !type) ())

;; TODO: DEPRECATED; to be removed after (re)boostrap
(defstruct (!struct-type !type) (super fields xfields ctor plist methods)
  constructor: :init!)
(defstruct (!class-type !type) (super mixin slots xslots ctor plist methods)
  constructor: :init!)
(defstruct (!struct-pred !procedure) ())
(defstruct (!struct-cons !procedure) ())
(defstruct (!struct-getf !procedure) (off unchecked?))
(defstruct (!struct-setf !procedure) (off unchecked?))
(defstruct (!class-pred !procedure) ())
(defstruct (!class-cons !procedure) ())
(defstruct (!class-getf !procedure) (slot unchecked?))
(defstruct (!class-setf !procedure) (slot unchecked?))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; MOP
(defstruct (!class !type)
  (super ;; ListOf Symbol; super type runtime identifiers
   precendence-list ;; ListOf Symbol; linearized super precendence list
   slots ;; ListOf Symbol; direct class slots
   fields ;; ListOf Symbol; slot field layout for direct/struct instances
   constructor  ;; OrFalse Symbol; constructor method
   struct? ;; Boolean; is it a struct?
   final?  ;; Boolean; is it a final class?
   methods ;; Map Symbol -> Symbol; known method implementations
   )
  constructor: :init!)

(defstruct (!predicate !procedure) ())
(defstruct (!constructor !procedure)())
(defstruct (!accessor !procedure) (slot checked?))
(defstruct (!mutator !procedure) (slot checked?))

;; procedures
(defstruct (!lambda !procedure) (arity dispatch inline inline-typedecl)
  constructor: :init!)
(defstruct (!case-lambda !procedure) (clauses))
(defstruct (!kw-lambda !procedure) (table dispatch))
(defstruct (!kw-lambda-primary !procedure) (keys main))

;; primitive markers (necessary to avoid unsound call optimizations)
(defclass !primitive ())
(defclass (!primitive-lambda !primitive !lambda) ()
  constructor: :init!)
(defclass (!primitive-case-lambda !primitive !case-lambda) ()
  constructor: :init!)

;;; methods
(defmethod {:init! !class}
  (case-lambda
    ((self id super slots ctor-method struct? final?)
     ;; 1. check finality
     (let lp ((rest super))
       (match rest
         ([super-id . rest]
          (when (!class-final? (optimizer-resolve-class `(!class ,id) super-id))
            (raise-compile-error "cannot extend final class"
                                 `(!class ,id) super-id))
          (lp rest))
         (else (void))))

     ;; 2. check struct constraint
     ;; TODO: relax this when we allow structs to extend classes
     ;;       add check fof incompatible mixins in the general class case
     (when  struct?
       (match super
         ([] (void))
         ([super-id]
          (let (klass (optimizer-resolve-class `(!class ,id) super-id))
            (unless (!class-struct? klass)
              (raise-compile-error "bad class; struct extending non struct"
                                   `(!class ,id) super-id))))
         (else
          (raise-compile-error "bad class; struct can only extend a single struct"
                               `(!class ,id) super))))

     (let* ((ctor-method
             (or ctor-method
                 ;; 3. check/infer from super constructor method name
                 (let lp ((rest super) (method #f))
                   (match rest
                     ([super-id . rest]
                      (let (klass (optimizer-resolve-class super-id))
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
            (precendence-list
             ;; 4. compute super precedence list
             (c3-linearize [] super
                           (lambda (klass-id)
                             (!class-precendence-list
                              (optimizer-resolve-class klass-id)))
                           eq? identity))
            (fields
             ;; 5. compute slot->field mapping for direct instances/structs
             (let (base-struct
                   (find (lambda (klass-id)
                           (!class-struct?
                            (optimizer-resolve-class `(!class ,id) klass-id)))
                         precedence-list))
               (compute-class-fields `(!class ,id) base-struct precedence-list slots))))
       (set! (!type-id self) id)
       (set! (!class-super self) super)
       (set! (!class-precedence-list self) precedence-list)
       (set! (!class-slots self) slots)
       (set! (!class-fields self) fields)
       (set! (!class-constructor self) ctor-method)
       (set! (!class-struct? self) struct?)
       (set! (!class-final? self) final?)))

    ;; ssxi loader
    ((self id super precendence-list slots fields constructor struct? final? methods)
     (set! (!type-id self) id)
     (set! (!class-super self) super)
     (set! (!class-precedence-list self) precedence-list)
     (set! (!class-slots self) slots)
     (set! (!class-fields self) fields)
     (set! (!class-constructor self) constructor)
     (set! (!class-struct? self) struct?)
     (set! (!class-final? self) final?)
     (when methods
       (set! (!class-methods self) (list->hash-table-eq methods))))))

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
    (set! (!type-id self) id)))

(defmethod {:init! !constructor}
  (lambda (self id)
    (set! (!type-id self) id)))

(defmethod {:init! !accessor}
  (lambda (self id slot checked?)
    (set! (!type-id self) id)
    (set! (!accessor-slot self) slot)
    (set! (!accessor-checked? self) checked?)))

(defmethod {:init! !mutator}
  (lambda (self id slot checked?)
    (set! (!type-id self) id)
    (set! (!mutator-slot self) slot)
    (set! (!mutator-checked? self) checked?)))

;; TODO remove
(defmethod {:init! !struct-type}
  (lambda (self id super fields xfields ctor plist)
    (struct-instance-init! self id super fields xfields ctor plist #f)))

;; TODO remove
(defmethod {:init! !class-type}
  (lambda (self id super mixin slots xslots ctor plist)
    (struct-instance-init! self id super mixin slots xslots ctor plist #f)))

(defmethod {:init! !lambda}
  (lambda (self id arity dispatch (inline #f) (typedecl #f))
    (struct-instance-init! self id arity dispatch inline typedecl)))

(defmethod {:init! !primitive-lambda}
  !lambda:::init!)

(defmethod {:init! !primitive-case-lambda}
  (lambda (self . args)
    (apply struct-instance-init! self args)))

;; TODO remove
(def (!struct-type-vtab type)
  (cond
   ((!struct-type-methods type) => values)
   (else
    (let (vtab (make-hash-table-eq))
      (set! (!struct-type-methods type) vtab)
      vtab))))

;; TODO remove
(def (!class-type-vtab type)
  (cond
   ((!class-type-methods type) => values)
   (else
    (let (vtab (make-hash-table-eq))
      (set! (!class-type-methods type) vtab)
      vtab))))

(def (!class-method-table klass)
  (cond
   ((!class-methods klass))
   (else
    (let (tab (make-hash-table-eq))
      (set! (!class-methods klass) tab)
      tab))))

(def (!type-vtab type)
  (cond
   ((!class? type)
    (!class-method-table type))
   ;; TODO DEPRECATED; remove
   ((!struct-type? type)
    (!struct-type-vtab type))
   ((!class-type? type)
    (!class-type-vtab type))
   (else #f)))

;; TODO remove
(def (!struct-type-lookup-method type method)
  (alet (vtab (!struct-type-methods type))
    (hash-get vtab method)))

;; TODO remove
(def (!class-type-lookup-method type method)
  (alet (vtab (!class-type-methods type))
    (hash-get vtab method)))

(def (!class-lookup-method klass method)
  (alet (tab (!class-methods klass))
    (hash-get tab method)))

(def (!type-lookup-method type method)
  (cond
   ((!class? type)
    (!class-lookup-method type method))
   ;; TODO DEPRECATED; remove
   ((!struct-type? type)
    (!struct-type-lookup-method type method))
   ((!class-type? type)
    (!class-type-lookup-method type method))
   (else #f)))

;; TODO remove
(def (!class-type-complete? type)
  (and (!class-type-slots type)
       (let (super (!class-type-super type))
         (cond
          ((not super) #t)
          ((optimizer-lookup-type super)
           => (lambda (super-t)
                (and (!struct-type-xfields super-t) #t)))
          (else #f)))))

;; utilities
(def (optimizer-declare-type! sym type (local? #f))
  (unless (!type? type)
    (error "bad declaration: expected !type" sym type))
  (verbose "declare-type " sym " " (struct->list type))
  (hash-put! (if local?
               (current-compile-local-type)
               (optimizer-info-type (current-compile-optimizer-info)))
             sym type))

(def (optimizer-clear-type! sym (local? #f))
  (verbose "clear-type " sym)
  (hash-remove! (if local?
                  (current-compile-local-type)
                  (optimizer-info-type (current-compile-optimizer-info)))
                sym))

(def (optimizer-declare-method! type-t method sym (rebind? #f))
  (let (type (optimizer-resolve-type type-t))
    (cond
     ((!type-vtab type)
      => (lambda (vtab)
           (cond
            ((hash-key? vtab method)
             (if rebind?
               (begin
                 (verbose "declare-method: rebind existing method" type-t " " method)
                 (hash-put! vtab method sym))
               (raise-compile-error
                "declare-method: duplicate method declaration"
                `(bind-method! ,type-t ,method ,sym) method)))
            (else
             (verbose "declare-method " type-t " " method " => " sym)
             (hash-put! vtab method sym)))))
     ((not type)
      (verbose "declare-method: unknown type "  type-t))
     (else
      (raise-compile-error
       "declare-method: bad method declaration; no method table"
       `(bind-method! ,type-t ,sym ,method) type)))))

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

(def (optimizer-resolve-class where klass-id)
  (cond
   ((optimizer-resolve-type klass-id)
    => (lambda (klass)
         (unless (!class? klass)
           (raise-compile-error "bad class reference; not a class type"
                                where klass-id klpass))
         klass))
   (else
    (raise-compile-error "unknown class" where klass))))

(def (optimizer-lookup-method type-t method)
  (!type-lookup-method (optimizer-resolve-type type-t) method))

(def (optimizer-top-level-method! sym)
  (verbose "top-level method: " sym)
  (hash-put! (optimizer-info-methods (current-compile-optimizer-info)) sym #t))

(def (optimizer-top-level-method? sym)
  (hash-get (optimizer-info-methods (current-compile-optimizer-info)) sym))

(def (identifier-symbol stx)
  (if (syntax-quote? stx)
    (generate-runtime-binding-id stx)
    (stx-e stx)))
