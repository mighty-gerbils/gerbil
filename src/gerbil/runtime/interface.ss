;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil interfaces
prelude: "../core"
package: gerbil/runtime
namespace: #f

(import "gambit" "util" "table" "mop" "error")
(export #t)

;; interface related errors
(defclass (CastError Error) ()
  constructor: :init!)

(defmethod {:init! CastError}
  Error:::init!)

(def (raise-cast-error where message . irritants)
  (raise
   (CastError message  where: where irritants: irritants)))

(def interface-cast-error? CastError?)

;; base type for all interface instances
(defstruct-type interface-instance::t ()
  #f interface-instance?
  id: gerbil#interface-instance::t
  name: interface-instance
  slots:
  ((__object interface-instance-object interface-instance-object-set!)))

;; interface meta descriptor
(defstruct interface-descriptor (type methods) final: #t)

(defrules immediate-instance-of? ()
  ((_ klass obj)
   (and (##structure? obj) (eq? (##structure-type obj) klass))))

;; prototype table
(def (__interface-hash-key key)
  (##fxxor (__symbolic-hash (##car key)) (__symbolic-hash (##cdr key))))
(def (__interface-test-key a b)
  (and (##eq? (##car a) (##car b))
       (##eq? (##cdr a) (##cdr b))))

(defspecialized-table make-prototype-table
  prototype-table-ref
  prototype-table-set! __prototype-table-set!
  prototype-table-update! __prototype-table-update!
  prototype-trable-delete!
  __interface-hash-key __interface-test-key)

(def __interface-prototypes-mx (__make-inline-lock))
(def __interface-prototypes (make-prototype-table #f 0))
(def __interface-prototypes-key (cons #f #f)) ; pre-allocated key for lookups

(def (interface-subclass? klass)
  (alet (super (##type-super klass))
    (eq? (##type-id super) (##type-id interface-instance::t))))

(defrules do-create-prototype ()
  ((_ descriptor klass obj-klass continue fail!)
   (let (method-table (specialize-class obj-klass))
     (let loop ((rest (&interface-descriptor-methods descriptor))
                (count 0)
                (methods []))
       (match rest
         ([method-name . rest]
          (cond
           ((symbolic-table-ref method-table method-name #f)
            => (lambda (method) (loop rest (##fx+ count 1) (cons method methods))))
           (else
            (fail! klass obj-klass method-name))))
         (else
          (let (prototype (make-object klass (##fx+ count 2)))
            (let loop ((rest methods) (off (##fx+ count 1)))
              (match rest
                ([method . rest]
                 (##unchecked-structure-set! prototype method off klass #f)
                 (loop rest (##fx- off 1)))
                (else
                 (let (prototype-key (cons (##type-id klass) (##type-id obj-klass)))
                   (__lock-inline! __interface-prototypes-mx)
                   (prototype-table-set! __interface-prototypes prototype-key prototype)
                   (__unlock-inline! __interface-prototypes-mx)
                   (continue prototype))))))))))))

(def (create-prototype descriptor klass obj-klass)
  (do-create-prototype
   descriptor klass obj-klass
   (lambda (prototype) prototype)
   (lambda (klass obj-klass method-name)
     (raise-cast-error 'create-prototype "cannot create interface instance; missing method"
                       interface: klass interface-id: (##type-id klass)
                       class: obj-klass class-id: (##type-id obj-klass)
                       method: method-name))))

(def (try-create-prototype descriptor klass obj-klass)
  (do-create-prototype
   descriptor klass obj-klass
   (lambda (prototype) prototype)
   (lambda (klass obj-klass method-name) #f)))

(defrules defcast ()
  ((_ cast-it do-prototype do-instance)
   (def (cast-it descriptor obj)
     (declare (not interrupts-enabled))
     (let* ((klass (&interface-descriptor-type descriptor))
            (klass-id (##type-id klass))
            (obj-klass (class-of obj))
            (obj-klass-id (##type-id obj-klass)))
       (cond
        ((##eq? klass-id obj-klass-id)
         ;; already an instance of the right interface
         obj)
        ((interface-subclass? obj-klass)
         ;; another interface instance, recast
         (cast-it descriptor (&interface-instance-object obj)))
        (else
         ;; vanilla object, convert to an interface instance
         (__lock-inline! __interface-prototypes-mx)
         (##set-car! __interface-prototypes-key klass-id)
         (##set-cdr! __interface-prototypes-key obj-klass-id)
         (let (prototype
               (cond
                ((prototype-table-ref __interface-prototypes __interface-prototypes-key #f)
                 => (lambda (prototype)
                      (__unlock-inline! __interface-prototypes-mx)
                      prototype))
                (else
                 (__unlock-inline! __interface-prototypes-mx)
                 (do-prototype descriptor klass obj-klass))))
           (do-instance prototype obj))))))))

;; cast an object to an interface, creating an instance from the prototype
(defcast cast
  create-prototype
  (lambda (prototype obj)
    (let (instance (##structure-copy prototype))
      (##unchecked-structure-set! instance obj 1 #f 'cast)
      instance)))

;; try to cast an object to an interface
(defcast try-cast
  try-create-prototype
  (lambda (prototype obj)
    (and prototype
         (let (instance (##structure-copy prototype))
           (##unchecked-structure-set! instance obj 1 #f 'cast)
           instance))))

;; check if an object satisfies an interface, optimistically creating a prototype
(defcast satisfies?
  try-create-prototype
  (lambda (prototype obj)
    (and prototype #t)))
