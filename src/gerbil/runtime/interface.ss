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
(defstruct interface-instance (object)
  id: gerbil#interface-instance::t)

;; interface meta descriptor
(defstruct interface-descriptor (type methods index)
  id: gerbil#interface-descriptor::t
  final: #t
  print: (type)
  constructor: :init!)

(def __next-interface-index 0)
(def __next-interface-index-lock (__make-inline-lock))
(def (__get-next-interface-index)
  (do-inline-lock! __next-interface-index-lock
    (let (index __next-interface-index)
      (set! __next-interface-index (fx1+ index 1))
      index)))

(defmethod {:init! interface-descriptor}
  (lambda (self type methods)
    (set! self.type type)
    (set! self.methods methods)
    (set! self.index (__get-next-interface-index))))

(defstruct prototype-table (lock table)
  id: gerbil#prototype-table::t
  final: #t
  constructor: :init!)

(defmethod {:init! prototype-table}
  (lambda (self)
    (set! self.lock (__make-inline-lock))
    (set! self.tab  (make-vector __next-interface-index #f))))

(def (__prototype-table-get (prototable :- prototype-table)
                            (descriptor :- interface-descriptor))
  (declare (not safe))
  (let ((lock  prototable.lock)
        (index descriptor.index))
    (do-inline-lock! lock
      (cond
       (prototable.table
        => (lambda (tab)
             (if (fx< index (vector-length tab))
               (vector-ref tab index)
               #f)))
       (else #f)))))

(def (__prototype-table-set! (prototable :- prototype-table)
                             (descriptor :- interface-descriptor)
                             prototype)
  (declare (not safe))
  (let ((lock  prototable.lock)
        (index descriptor.index))
    (do-inline-lock! lock
      (cond
       (prototable.table
        => (lambda (tab)
             (if (fx< index (vector-length tab))
               (vector-set! tab index prototype)
               (let* ((new-size __next-interface-index)
                      (new-tab (make-vector new-size #f)))
                 (subvector-move! tab 0 (vector-length tab) new-tab 0)
                 (vector-set! new-tab index prototype)
                 (set! prototable.table new-tab)))))
       (else
        (let* ((size __next-interface-index)
               (tab (make-vector size #f)))
          (vector-set! tab index prototype)
          (set! prototable.table tab)))))))

(def (interface-subclass? klass)
  (alet (super (##type-super klass))
    (eq? (##type-id super) (##type-id interface-instance::t))))

(def (class-type-interface-table klass)
  (cond
   ((&class-type-interface klass))
   (else
    (let (tab (make-prototype-table))
      (set! (&class-type-interface klass) tab)
      tab))))

(defrules do-create-prototype ()
  ((_ descriptor klass obj-klass continue fail!)
   (let (method-table (specialize-class obj-klass))
     (let loop ((rest (&interface-descriptor-methods descriptor))
                (count 0)
                (methods []))
       (match rest
         ([method-spec . rest]
          (cond
           ((pair? method-spec)
            (let loop-inner ((methods-rest method-spec))
              (match methods-rest
                ([method-name . methods-rest]
                 (cond
                  ((symbolic-table-ref method-table method-name #f)
                   => (lambda (method) (loop rest (##fx+ count 1) (cons method methods))))
                  (else
                   (loop-inner methods-rest))))
                (else
                 (__prototype-table-set! tab descriptor #!void)
                 (fail! method-spec)))))
           ((symbolic-table-ref method-table method-spec #f)
            => (lambda (method) (loop rest (##fx+ count 1) (cons method methods))))
           (else
            (let (tab (class-type-interface-table obj-klass))
              (__prototype-table-set! tab descriptor #!void)
              (fail! method-spec)))))
         (else
          (let (prototype (make-object klass (##fx+ count 2)))
            (let loop ((rest methods) (off (##fx+ count 1)))
              (match rest
                ([method . rest]
                 (##unchecked-structure-set! prototype method off klass #f)
                 (loop rest (##fx- off 1)))
                (else
                 (let (tab (class-type-interface-table obj-klass))
                   (__prototype-table-set! tab descriptor prototype)
                   (continue prototype))))))))))))

(def (create-prototype descriptor klass obj-klass)
  (do-create-prototype
   descriptor klass obj-klass
   (lambda (prototype) prototype)
   (lambda (method)
     (abort!
      (raise-cast-error 'create-prototype "cannot create interface prototype; missing method"
                        interface: descriptor
                        object: obj
                        method: method)))))

(def (try-create-prototype descriptor klass obj-klass)
  (do-create-prototype
   descriptor klass obj-klass
   (lambda (prototype) prototype)
   (lambda (method) #f)))

(defrule (@cast descriptor obj do-prototype do-instance do-object)
  (let* ((klass (&interface-descriptor-type descriptor))
         (klass-id (##type-id klass)))
    (let loop ((obj obj))
      (declare (not interrupts-enabled))
      (let* ((obj-klass (class-of obj))
             (obj-klass-id (##type-id obj-klass)))
        (cond
         ((##eq? klass-id obj-klass-id)
          ;; already an instance of the right interface
          (do-object obj))
         ((interface-subclass? obj-klass)
          ;; another interface instance
          ;; first try to cast the interface shell itself so that
          ;; we can allow niceties like interfaces on interfaces.
          ;; we don't want to try the cast everytime as this would be
          ;; prohibitively slow; instead we mark the failure in the interface's
          ;; prototype table
          (let (tab (class-type-interface-table obj-klass))
            (cond
             ((__prototype-table-get tab descriptor)
              => (lambda (prototype)
                   (if (void? prototype)
                     (loop (&interface-instance-object obj))
                     (do-instance descriptor prototype obj))))
             ((try-create-prototype descriptor klass obj-klass)
              => (lambda (prototype)
                   (do-instance descriptor prototype obj)))
             (else
              (loop (&interface-instance-object obj))))))
         (else
          (let (tab (class-type-interface-table obj-klass))
            (cond
             ((__prototype-table-get tab descriptor)
              => (lambda (prototype)
                   (if (void? prototype)
                     (do-instance descriptor #f obj)
                     (do-instance descriptor prototype obj))))
             ((do-prototype descriptor klass obj-klass)
              => (lambda (prototype)
                   (do-instance descriptor prototype obj)))
             (else
              (do-instance descriptor #f obj))))))))))

(defrule (defcast cast-it do-prototype do-instance do-object)
  (def (cast-it descriptor obj)
    (@cast descriptor obj do-protytpe-do-instance do-object)))

;; cast an object to an interface, creating an instance from the prototype
(defcast cast
  create-prototype
  (lambda (descriptor prototype obj)
    (if prototype
      (let (instance (##structure-copy prototype))
        (##unchecked-structure-set! instance obj 1 #f 'cast)
        instance)
      (abort!
       (raise-cast-error 'cast "cannot create interface prototype"
                         interface: descriptor object: obj))))
  (lambda (obj) obj))

;; try to cast an object to an interface
(defcast try-cast
  try-create-prototype
  (lambda (descriptor prototype obj)
    (and prototype
         (let (instance (##structure-copy prototype))
           (##unchecked-structure-set! instance obj 1 #f 'cast)
           instance)))
  (lambda (obj) obj))

;; check if an object satisfies an interface, optimistically creating a prototype
(defcast satisfies?
  try-create-prototype
  (lambda (descriptor prototype obj)
    (and prototype #t))
  (lambda (obj) #t))

(def (with-prototype (descriptor : interface-idescriptor) obj
       (with-prototype+receiver : :procedure)
       (with-receiver           : :procedure))
  (@cast descriptor obj create-prototype with-prototype+receiver with-receiver))
