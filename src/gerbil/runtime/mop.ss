;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil MOP
prelude: "../prelude/core"
package: gerbil/runtime
namespace: #f

(export #t)
(import "gambit" "util" "c3")

;; Gambit structure rtd [runtime type descriptor]
;;  (define-type type
;;    (id      unprintable: equality-test:)
;;    (name    unprintable: equality-skip:)
;;    (flags   unprintable: equality-skip:)
;;    (super   unprintable: equality-skip:)
;;    (fields  unprintable: equality-skip:))
;;
;; Gerbil rtd on Gambit, extending the above (index, accessor, type)
;;  0  ##structure-type                 : (Exactly ##type-type)
;;  1  ##type-id                        : Symbol ; sometimes uninterned
;;  2  ##type-name                      : Symbol
;;  3  ##type-flags                     : Fixnum
;;  4  ##type-super                     : (OrFalse StructTypeDescriptor)
;;  5  ##type-fields                    : (Vector [Symbol Fixnum default-value] ...)
;;  6  type-descriptor-precedence-list  : (List TypeDescriptor) ; doesn't contain the class itself
;;  7  type-descriptor-all-slots        : (Vector (OrFalse Symbol)) ; first is false
;;  8  type-descriptor-slot-table       : (Table (Or Symbol Keyword) -> Fixnum)
;;  9  type-descriptor-properties       : AList ; NB: not PList, despite the name "properties"
;; 10  type-descriptor-constructor      : (OrFalse Symbol)
;; 11  type-descriptor-methods          : (Table Symbol -> Function)
;;
;; The ##type-fields contains 3 entries by Gambit structure field, field name, flags and default value
;;
;; Standard "properties" keys:
;; direct-slots:   (List Symbol)           list of direct slots in order, for inheritance
;; direct-supers:  (List TypeDescriptor)   list of direct supers in order, for introspection only
;; struct:         Bool                    is this a struct? i.e. only single inheritance for structs
;; final:          Bool                    is this class final? i.e. no subclasses allowed
;; equal:          (Or Bool (List Symbol)  all new slots will be compared during objects equal?
;; print:          (Or Bool (List Symbol)  all new slots will be printed when printing an object
;; transparent:    Bool                    is this class transparent? i.e. equal and print all slots

(def (type-id klass)
  (cond
   ((type-descriptor? klass) (##type-id klass))
   ((not klass) #f)
   (else (error "not a type descriptor" klass))))

(def (type=? x y)
  (eq? (type-id x) (type-id y)))

(def (type-descriptor? klass)
  (and (##type? klass)
       (eq? (##structure-length klass) 12)))

(def (type-struct? klass)
  (assgetq struct: (type-descriptor-properties klass)))

(def (type-final? klass)
  (assgetq final: (type-descriptor-properties klass)))

(def (struct-type? klass)
  (and (type-descriptor? klass) (type-struct? klass)))

(def (class-type? klass)
  (type-descriptor? klass))

;; TODO for debugging only
(def (properties-form properties)
  (map (match <>
         ([key . val]
          (if (eq? key 'direct-supers:)
            [key :: (map type-id val)]
            [key :: val])))
       properties))

;; Bootstrap issue: all-slots is now a vector, not a list
;; Compute the flags and field-info and create a type-descriptor
(def (make-type-descriptor type-id type-name type-super
                           precedence-list all-slots properties
                           constructor slot-table methods)
  ;; compute a table of slots with print: or equal: or transparent: flag
  ;; ht: table to which to add according slots
  ;; key: either print: or equal: (both implied by transparent:)
  (def (make-props! key)
    (def ht (make-hash-table-eq))
    (def (put-slots! ht slots)
      (for-each (cut hash-put! ht <> #t) slots))
    (def (put-alist! ht key alist)
      (cond ((assgetq key alist) => (cut put-slots! ht <>))))
    (put-alist! ht key properties)
    (for-each (lambda (mixin)
                (let (alist (type-descriptor-properties mixin))
                  (if (or (assgetq transparent: alist) (eq? #t (assgetq key alist)))
                    (put-slots! ht (cdr (vector->list (type-descriptor-all-slots mixin))))
                    (put-alist! ht key alist))))
              precedence-list)
    ht)

  (let* ((transparent? (assgetq transparent: properties))
         (all-slots-printable? (or transparent? (eq? #t (assgetq print: properties))))
         (printable (and (not all-slots-printable?) (make-props! print:)))
         (all-slots-equalable? (or transparent? (eq? #t (assgetq equal: properties))))
         (equalable (and (not all-slots-equalable?) (make-props! equal:)))
         (first-new-field
          (if type-super
            (##vector-length (type-descriptor-all-slots type-super))
            1))
         (field-info-length (##fx* 3 (##fx- (##vector-length all-slots) first-new-field)))
         (field-info (make-vector field-info-length #f))
         (opaque?
          (or (not all-slots-equalable?)
              (and type-super (##fx= (##fxand (##type-flags type-super) 1) 1)))))
    (let loop ((i first-new-field)
               (j 0))
      (when (##fx< j field-info-length)
        (let* ((slot (##vector-ref all-slots i))
               (flags
                (if transparent? 0
                    (##fxior (if (or all-slots-printable? (hash-get printable slot)) 0 1)
                             (if (or all-slots-equalable? (hash-get equalable slot)) 0 4)))))
          (vector-set! field-info j slot)
          (vector-set! field-info (##fx+ j 1) flags)
          (loop (##fx+ i 1) (##fx+ j 3)))))
    (##structure ##type-type
                 type-id type-name
                 (if opaque? 25 24)
                 type-super
                 field-info
                 precedence-list all-slots slot-table properties constructor methods)))

;;; type descriptor utilities
(def (type-descriptor-precedence-list klass)
  (##structure-ref klass 6 ##type-type type-descriptor-precedence-list))
(def (type-descriptor-all-slots klass)
  (##structure-ref klass 7 ##type-type type-descriptor-all-slots))
(def (type-descriptor-slot-table klass)
  (##structure-ref klass 8 ##type-type type-descriptor-slot-table))
(def (type-descriptor-properties klass)
  (##structure-ref klass 9 ##type-type type-descriptor-properties))
(def (type-descriptor-constructor klass)
  (##structure-ref klass 10 ##type-type type-descriptor-constructor))
(def (type-descriptor-methods klass)
  (##structure-ref klass 11 ##type-type type-descriptor-methods))
(def (type-descriptor-methods-set! klass ht)
  (##structure-set! klass ht 11 ##type-type type-descriptor-methods-set!))

(def (type-descriptor-fields klass)
  (##fx- (##vector-length (type-descriptor-all-slots klass)) 1))
(def (type-descriptor-sealed? klass)
  (##fxbit-set? 20 (##type-flags klass)))
(def (type-descriptor-seal! klass)
  (##structure-set! klass (##fxior (##fxarithmetic-shift 1 20) (##type-flags klass))
                    3 ##type-type type-descriptor-seal!))

;;; struct types
;; : Symbol Symbol StructTypeDescriptor (List Symbol) Alist Constructor -> StructTypeDescriptor
(def (make-struct-type id name super direct-slots properties constructor)
  (when (and super (not (struct-type? super)))
    (error "illegal super type; not a struct-type" super))
  ;; Consistency check for slots: they must all be new
  (let* ((type (make-class-type id name (if super [super] []) direct-slots
                                (if (assgetq struct: properties)
                                  properties
                                  [[struct: . #t] . properties])
                                constructor))
         (all-slots (type-descriptor-all-slots type))
         (len (length direct-slots))
         (start (##fx- (##vector-length all-slots) len)))
    (unless (andmap (lambda (slot i) (eq? slot (##vector-ref all-slots i)))
                    direct-slots (iota len start))
      (error "non-unique slots in struct" name direct-slots))
    type))

(def (make-struct-predicate klass)
  (let (tid (##type-id klass))
    (if (type-final? klass)
      (lambda (obj)
        (##structure-direct-instance-of? obj tid))
      (lambda (obj)
        (##structure-instance-of? obj tid)))))

(def (make-struct-slot-accessor klass slot)
  (cond
   ((class-slot-offset klass slot)
    => (lambda (off)
         (if (type-final? klass)
           (lambda (obj)
             (##direct-structure-ref obj off klass #f))
           (lambda (obj)
             (##structure-ref obj off klass #f)))))
   (else
    (error "unknown slot" class: klass slot: slot))))

(def (make-struct-slot-mutator klass slot)
  (cond
   ((class-slot-offset klass slot)
    => (lambda (off)
         (if (type-final? klass)
           (lambda (obj val)
             (##direct-structure-set! obj val off klass #f))
           (lambda (obj val)
             (##structure-set! obj val off klass #f)))))
   (else
    (error "unknown slot" class: klass slot: slot))))

(def (make-struct-slot-unchecked-accessor klass slot)
  (cond
   ((class-slot-offset klass slot)
    => (lambda (off)
         (lambda (obj)
           (##unchecked-structure-ref obj off klass #f))))
   (else
    (error "unknown slot" class: klass slot: slot))))

(def (make-struct-slot-unchecked-mutator klass slot)
  (cond
   ((class-slot-offset klass slot)
    => (lambda (off)
         (lambda (obj val)
           (##unchecked-structure-set! obj val off klass #f))))
   (else
    (error "unknown slot" class: klass slot: slot))))

(def ((make-final-field-accessor klass slot field) obj)
  (##direct-structure-ref obj field klass slot))

(def ((make-struct-field-accessor klass slot field) obj)
  (##structure-ref obj field klass slot))

(def ((make-final-field-mutator klass slot field) obj val)
  (##direct-structure-set! obj val field klass slot))

(def ((make-struct-field-mutator klass slot field) obj val)
  (##structure-set! obj val field klass slot))

(def ((make-struct-field-unchecked-accessor klass slot field) obj)
  (##unchecked-structure-ref obj field klass slot))

(def ((make-struct-field-unchecked-mutator klass slot field) obj val)
  (##unchecked-structure-set! obj val field klass slot))

;; Is maybe-sub-struct a subclass of maybe-super-struct?
; : TypeDescriptor TypeDescriptor -> Bool
(def (substruct? maybe-sub-struct maybe-super-struct)
  (let (maybe-super-struct-id (##type-id maybe-super-struct))
    (let lp ((super-struct maybe-sub-struct))
      (cond
       ((not super-struct)
        #f)
       ((eq? maybe-super-struct-id (type-id super-struct))
        #t)
       (else
        (lp (##type-super super-struct)))))))

;; Which is the most specific struct class if any that klass is or inherits from?
;; : TypeDescriptor -> (OrFalse StructTypeDescriptor)
(def (base-struct/1 klass)
  (cond
   ((struct-type? klass) klass)
   ((class-type? klass) (##type-super klass))
   ((not klass) #f)
   (else (error "not a class or false" klass))))

;; Which is the most specific struct class if any that both klass1 and klass2 are or inherit from?
;; : TypeDescriptor TypeDescriptor -> (OrFalse StructTypeDescriptor)
(def (base-struct/2 klass1 klass2)
  (let ((s1 (base-struct/1 klass1))
        (s2 (base-struct/1 klass2)))
    (cond
     ((or (not s1) (and s2 (substruct? s1 s2))) s2)
     ((or (not s2) (and s1 (substruct? s2 s1))) s1)
     (else (error "bad mixin: incompatible struct bases" klass1 klass2 s1 s2)))))

;; Which is the most specific struct class if any that all argument classes are or inherit from?
;; : TypeDescriptor ... -> (OrFalse StructTypeDescriptor)
(def (base-struct/list all-supers)
  (match all-supers
    ([] #f)
    ([x] (base-struct/1 x))
    ([x y] (base-struct/2 x y))
    ([x y ...] (foldr base-struct/2 x y))))

(def (base-struct . all-supers)
  (base-struct/list all-supers))

;; Find the constructor method name for the TypeDescriptor
;; : (List TypeDescriptor) -> Symbol
(def (find-super-ctor super)
  (find-super-constructor super))

(def (find-super-constructor super)
  (let lp ((rest super) (constructor #f))
    (match rest
      ([hd . rest]
       (cond
        ((type-descriptor-constructor hd)
         => (lambda (xconstructor)
              (if (or (not constructor) (eq? constructor xconstructor))
                (lp rest xconstructor)
                (error "conflicting implicit constructors" constructor xconstructor))))
        (else (lp rest constructor))))
      (else constructor))))

;; Given a struct super class (or false if none),
;; a list of super-classes (not including the class being created), and
;; a list of direct slots from the class being created,
;; return the all-slots vector of slots (with #f in position 0) and the slot-table.
;; a table mapping symbol and keyword names to offset, and
;; : (OrFalse StructTypeDescriptor) (List TypeDescriptor) (List Symbol) \
;; -> (Vector Symbol) (Table (Or Symbol Keyword) -> Fixnum)
(def (compute-class-slots super-struct class-precedence-list direct-slots)
  (let* ((previous-slots
          (if super-struct (type-descriptor-all-slots super-struct) '#(#f)))
         (next-slot
          (##vector-length previous-slots))
         (slot-table
          (if super-struct
            (hash-copy (type-descriptor-slot-table super-struct))
            (make-hash-table-eq)))
         (r-slots [])
         (process-slot
          (lambda (slot)
            (unless (symbol? slot)
              (error "invalid slot name" slot))
            (unless (hash-key? slot-table slot) ;; ignore if already registered as a slot
              (hash-put! slot-table slot next-slot)
              (hash-put! slot-table (symbol->keyword slot) next-slot)
              (set! r-slots (cons slot r-slots))
              (set! next-slot (##fx+ next-slot 1)))))
         (process-slots (cut for-each process-slot <>)))
    (for-each (lambda (mixin)
                (unless (type-struct? mixin) ;; skip structure classes, already processed via super
                  (process-slots
                   (assgetq direct-slots: (type-descriptor-properties mixin) []))))
              (reverse class-precedence-list))
    (process-slots direct-slots)
    (let (all-slots (make-vector next-slot #f))
      (vector-copy! all-slots 0 previous-slots)
      (for-each (lambda (slot)
                  (set! next-slot (##fx- next-slot 1))
                  (vector-set! all-slots next-slot slot))
                r-slots)
      (values all-slots slot-table))))

;;; ClassTypeDescriptor
;; : Symbol Symbol (List TypeDescriptor) (List Symbol) Alist Constructor -> ClassTypeDescriptor
(def (make-class-type id name direct-supers direct-slots properties constructor)
  (cond
   ((find (lambda (klass) (not (type-descriptor? klass))) direct-supers)
    => (cut error "Illegal super class; not a type descriptor" <>))
   ((find type-final? direct-supers)
    => (cut error "Cannot extend final class" <>)))

  (let* ((struct-super (base-struct/list direct-supers)) ;; super struct, if any
         (precedence-list (class-linearize-mixins direct-supers)) ;; class precedence list, excluding current class
         ((values all-slots slot-table)
          (compute-class-slots struct-super precedence-list direct-slots))
         (properties
          [[direct-slots: . direct-slots]
           [direct-supers: . direct-supers]
           properties ...])
         (constructor* (or constructor (find-super-constructor direct-supers))))

    (make-type-descriptor id name struct-super
                          precedence-list all-slots properties
                          constructor* slot-table #f)))

(def (class-precedence-list klass)
  (cons klass (type-descriptor-precedence-list klass)))

(def (struct-precedence-list strukt)
  (cons strukt
        (cond
         ((##type-super strukt) => struct-precedence-list)
         (else []))))

(def (class-linearize-mixins klass-lst)
  (c3-linearize [] klass-lst class-precedence-list eq? ##type-name))

(def (make-class-predicate klass)
  (if (type-final? klass)
    (cut direct-instance? klass <>)
    (cut class-instance? klass <>)))

;; Given a klass descriptor, a slot name (symbol), and three accessor-makers
;; for the respective cases of (a) the descriptor being a struct or final
;; (so all direct or indirect instances have the slot is at a fixed field),
;; (b) the field being part of the struct base of the class
;; (same as above but you have a more expensive argument class check to be safe)
;; or (c) the slot being a regular class slot (the more expensive code path),
;; return an accessor for this klass and slot.
(def (if-class-slot-field klass slot if-final if-struct if-struct-field if-class-slot)
  (let (field (hash-get (type-descriptor-slot-table klass) slot))
    (cond
     ((not field)
      (error "unknown slot" class: klass slot: slot))
     ((type-final? klass)
      (if-final klass slot field))
     ((type-struct? klass)
      (if-struct klass slot field))
     ((let (strukt (base-struct/1 klass))
        (and strukt (##fx< field (##vector-length (type-descriptor-all-slots strukt)))))
      (if-struct-field klass slot field))
     (else
      (if-class-slot klass slot field)))))

(def (make-class-slot-accessor klass slot)
  (if-class-slot-field klass slot
     make-final-field-accessor
     make-struct-field-accessor
     make-struct-subclass-field-accessor
     make-class-cached-slot-accessor))

(def (not-an-instance object class (slot #f))
  (apply error "not an instance" object: object class: class
         (if slot [slot: slot] [])))

(def ((make-struct-subclass-field-accessor klass slot field) obj)
  (if (class-instance? klass obj)
    (unchecked-field-ref obj field)
    (not-an-instance obj klass slot)))

(def ((make-class-cached-slot-accessor klass slot field) obj)
  (cond
   ((direct-instance? klass obj)
    (unchecked-field-ref obj field))
   ((class-instance? klass obj)
    (unchecked-slot-ref obj slot))
   (else
    (not-an-instance obj klass slot))))

(def (make-class-slot-mutator klass slot)
  (if-class-slot-field klass slot
     make-final-field-mutator
     make-struct-field-mutator
     make-struct-subclass-field-mutator
     make-class-cached-slot-mutator))

(def ((make-struct-subclass-field-mutator klass slot field) obj val)
  (if (class-instance? klass obj)
    (unchecked-field-set! obj field val)
    (not-an-instance obj klass slot)))

(def ((make-class-cached-slot-mutator klass slot field) obj val)
  (cond
   ((direct-instance? klass obj)
    (unchecked-field-set! obj field val))
   ((class-instance? klass obj)
    (unchecked-slot-set! obj slot val))
   (else
    (not-an-instance obj klass slot))))

(def (make-class-slot-unchecked-accessor klass slot)
  (if-class-slot-field klass slot
     make-struct-field-unchecked-accessor
     make-struct-field-unchecked-accessor
     make-struct-field-unchecked-accessor
     make-class-cached-slot-unchecked-accessor))

(def ((make-class-cached-slot-unchecked-accessor klass slot field) obj)
  (if (direct-instance? klass obj)
    (unchecked-field-ref obj field)
    (unchecked-slot-ref obj slot)))

(def (make-class-slot-unchecked-mutator klass slot)
  (if-class-slot-field klass slot
     make-struct-field-unchecked-mutator
     make-struct-field-unchecked-mutator
     make-struct-field-unchecked-mutator
     make-class-cached-slot-unchecked-mutator))

(def ((make-class-cached-slot-unchecked-mutator klass slot field) obj val)
  (if (direct-instance? klass obj)
    (unchecked-field-set! obj field val)
    (unchecked-slot-set! obj slot val)))

(def (class-slot-offset klass slot)
  (hash-get (type-descriptor-slot-table klass) slot))

(def (class-slot-ref klass obj slot)
  (if (class-instance? klass obj)
    (let (off (class-slot-offset (object-type obj) slot))
      (##unchecked-structure-ref obj off klass #f))
    (not-an-instance obj klass)))

(def (class-slot-set! klass obj slot val)
  (if (class-instance? klass obj)
    (let (off (class-slot-offset (object-type obj) slot))
      (##unchecked-structure-set! obj val off klass #f))
    (not-an-instance obj klass)))

(def (unchecked-field-ref obj off)
  (##unchecked-structure-ref obj off (##structure-type obj) #f))
(def (unchecked-field-set! obj off val)
  (##unchecked-structure-set! obj val off (##structure-type obj) #f))
(def (unchecked-slot-ref obj slot)
  (unchecked-field-ref obj (class-slot-offset (##structure-type obj) slot)))
(def (unchecked-slot-set! obj slot val)
  (unchecked-field-set! obj (class-slot-offset (##structure-type obj) slot) val))

(defrules __slot-e ()
  ((_ obj slot K E)
   (if (object? obj)
     (let (klass (object-type obj))
       (cond
        ((and (type-descriptor? klass)
              (class-slot-offset klass slot))
         => K)
        (else (E obj slot))))
     (E obj slot))))

(def (slot-ref obj slot (E __slot-error))
  (__slot-e obj slot (lambda (off) (unchecked-field-ref obj off)) E))

(def (slot-set! obj slot val (E __slot-error))
  (__slot-e obj slot (lambda (off) (unchecked-field-set! obj off val)) E))

(def (__slot-error obj slot)
  (error "Cannot find slot" object: obj slot: slot))

;; Is maybe-sub-class a subclass of maybe-super-class?
; : TypeDescriptor TypeDescriptor -> Bool
(def (subclass? maybe-sub-class maybe-super-class)
  (let (maybe-super-class-id (##type-id maybe-super-class))
    (or (eq? maybe-super-class-id (##type-id maybe-sub-class))
        (ormap (lambda (super-class) (eq? (##type-id super-class) maybe-super-class-id))
               (type-descriptor-precedence-list maybe-sub-class)))))

;;; generic object utilities
(def object?
  ##structure?)
(def object-type
  ##structure-type)

(def (direct-instance? klass obj)
  (##structure-direct-instance-of? obj (##type-id klass)))

(def (struct-instance? klass obj)
  (##structure-instance-of? obj (##type-id klass)))

(def (class-instance? klass obj)
  (and (object? obj)
       (let (type (object-type obj))
         (and (type-descriptor? type)
              (subclass? type klass)))))

(def (make-object klass k)
  (let (obj (##make-structure klass k))
    (object-fill! obj #f)
    obj))

(def (object-fill! obj fill)
  ;; courtesy of marc feeley
  (let loop ((i (##fx- (##structure-length obj) 1)))
    (if (##fx> i 0)
      (begin
        (##unchecked-structure-set! obj fill i #f #f)
        (loop (##fx- i 1)))
      obj)))

(def (make-instance klass)
  (make-object klass (##vector-length (type-descriptor-all-slots klass))))

(def (make-struct-instance klass . args)
  (let* ((all-slots (type-descriptor-all-slots klass))
         (size (##vector-length all-slots)))
    (cond
     ((type-descriptor-constructor klass)
      => (lambda (kons-id)
           (__constructor-init! klass kons-id (make-object klass size) args)))
     ((##fx= (##fx- size 1) (length args))
      (apply ##structure klass args))
     (else
      (error "arguments don't match object size"
        class: klass slots: (##fx- size 1) args: args)))))

(def (make-class-instance klass . args)
  (let (obj (make-instance klass))
    (cond
     ((type-descriptor-constructor klass)
      => (lambda (kons-id)
           (__constructor-init! klass kons-id obj args)))
     (else
      (__class-instance-init! klass obj args)))))

(def (struct-instance-init! obj . args)
  (if (##fx< (length args) (##structure-length obj))
    (__struct-instance-init! obj args)
    (error "too many arguments for struct" object: obj args: args)))

(def (__struct-instance-init! obj args)
  (let lp ((k 1) (rest args))
    (match rest
      ([hd . rest]
       (unchecked-field-set! obj k hd)
       (lp (##fx+ k 1) rest))
      (else obj))))

(def (class-instance-init! obj . args)
  (__class-instance-init! (object-type obj) obj args))

(def (__class-instance-init! klass obj args)
  (let lp ((rest args))
    (match rest
      ([key val . rest]
       (cond
        ((class-slot-offset klass key)
         => (lambda (off)
              (unchecked-field-set! obj off val)
              (lp rest)))
        (else
         (error "unknown slot" class: klass slot: key))))
      (else
       (if (null? rest) obj
           (error "unexpected class initializer arguments" class: klass rest: rest))))))

(def (constructor-init! klass kons-id obj . args)
  (__constructor-init! klass kons-id obj args))

(def (__constructor-init! klass kons-id obj args)
  (cond
   ((__find-method klass kons-id)
    => (lambda (kons)
         (apply kons obj args)
         obj))
   (else
    (error "missing constructor" class: klass method: kons-id))))

(def (struct-copy struct)
  (unless (##structure? struct)
    (error "not a structure" struct))
  (##structure-copy struct))

(def (struct->list obj)
  (if (object? obj)
    (##vector->list obj)
    (error "not an object" obj)))

(def (class->list obj)
  (if (object? obj)
    (let (klass (object-type obj))
      (if (type-descriptor? klass)
        (let (all-slots (type-descriptor-all-slots klass))
          (let loop ((index (##fx- (##vector-length all-slots) 1))
                     (plist []))
            (if (##fx< index 1)
              (cons klass plist)
              (let ((slot (##vector-ref all-slots index)))
                (loop (##fx- index 1)
                      (cons* (symbol->keyword slot)
                             (unchecked-field-ref obj index)
                             plist))))))
        (error "not a class type" object: obj class: klass)))
    (error "not an object" obj)))

;;; Methods
(def (call-method obj id . args)
  (cond
   ((method-ref obj id)
    => (lambda (method) (apply method obj args)))
   (else
    (error "cannot find method" object: obj method: id))))

(def __builtin-type-methods
  (make-table test: eq?))

(def (method-ref obj id)
  (and (object? obj)
       (find-method (object-type obj) id)))

(def (checked-method-ref obj id)
  (or (method-ref obj id)
      (error "missing method" object: obj method: id)))

(def (bound-method-ref obj id)
  (cond
   ((method-ref obj id)
    => (lambda (method)
         (lambda args
           (apply method obj args))))
   (else #f)))

(def (checked-bound-method-ref obj id)
  (let (method (checked-method-ref obj id))
    (lambda args
      (apply method obj args))))

(def (find-method klass id)
  (if (type-descriptor? klass)
    (__find-method klass id)
    (builtin-find-method klass id)))

(def (__find-method klass id)
  (cond
   ((direct-method-ref klass id))
   ((type-descriptor-sealed? klass)
    #f)
   (else
    (mixin-method-ref klass id))))

(def (class-find-method klass id)
  (and (type-descriptor? klass)
       (__find-method klass id)))

(def (mixin-find-method mixins id)
  (ormap (cut direct-method-ref <> id) mixins))

(def (builtin-find-method klass id)
  (and (##type? klass)
       (or (builtin-method-ref klass id)
           (builtin-find-method (##type-super klass) id))))

(def (direct-method-ref klass id)
  (cond
   ((type-descriptor-methods klass)
    => (lambda (ht) (hash-get ht id)))
   (else #f)))

(def (mixin-method-ref klass id)
  (mixin-find-method (type-descriptor-precedence-list klass) id))

(def (builtin-method-ref klass id)
  (cond
   ((hash-get __builtin-type-methods (##type-id klass))
    => (lambda (mtab) (hash-get mtab id)))
   (else #f)))

(def (bind-method! klass id proc (rebind? #t))
  (def (bind! ht)
    (if (and (not rebind?) (hash-get ht id))
      (error "method already bound" class: klass method: id)
      (hash-put! ht id proc)))

  (unless (procedure? proc)
    (error "bad method; expected procedure" proc))

  (cond
   ((type-descriptor? klass)
    (let (ht (type-descriptor-methods klass))
      (if ht
        (bind! ht)
        (let (ht (make-hash-table-eq))
          (type-descriptor-methods-set! klass ht)
          (bind! ht)))))
   ((##type? klass)
    (let (ht
          (cond
           ((hash-get __builtin-type-methods (##type-id klass)))
           (else
            (let (ht (make-hash-table-eq))
              (hash-put! __builtin-type-methods (##type-id klass) ht)
              ht))))
      (bind! ht)))
   (else
    (error "bad class; expected type-descriptor or builtin type" klass))))

(def __method-specializers
  (make-table test: eq?))

(def (bind-specializer! proc specializer)
  (hash-put! __method-specializers proc specializer))

(def (seal-class! klass)
  (def (collect-methods! mtab)
    (def (merge! tab)
      (hash-for-each (lambda (id proc) (hash-put! mtab id proc))
                     tab))

    (def (collect-direct-methods! klass)
      (cond
       ((type-descriptor-methods klass) => merge!)))

    (for-each collect-direct-methods!
              (reverse (class-precedence-list klass))))

  (when (type-descriptor? klass)
    (unless (type-descriptor-sealed? klass)
      (unless (type-final? klass)
        (error "cannot seal non-final class" klass))
      (let ((vtab (make-hash-table-eq))
            (mtab (make-hash-table-eq)))
        (collect-methods! mtab)
        (hash-for-each
         (lambda (id proc)
           (cond
            ((hash-get __method-specializers proc)
             => (lambda (specializer)
                  (let ((proc (specializer klass))
                        (gid (make-symbol (##type-id klass) "::[" id "]")))
                    ;; give the procedure a name and make it accessible to the debugger
                    (eval `(def ,gid (quote ,proc)))
                    (hash-put! vtab id proc))))
            (else
             (hash-put! vtab id proc))))
         mtab)
        (type-descriptor-methods-set! klass vtab)
        (type-descriptor-seal! klass)))))

;; NB: 1. This implementation has quadratic complexity in the general case, but
;; 2. is somewhat simpler and slightly faster in the common case that has no
;; next-method, while not being too slow if the method list remains short.
;;
;; The trade-off may or may not be acceptable to all users.
;; Changing the protocol to access an explicit super argument would be
;; semantically nicer and would enable linear complexity for next-method
;; (in the number of classes, or even just in the number of applicable method,
;; if resolved only once), but would be notably more complex and somewhat
;; incompatible (or involve some cleverness for backward compatibility).
(def (next-method subklass obj id)
  (let ((klass (object-type obj))
        (type-id (##type-id subklass)))
    (cond
     ((type-descriptor? klass)
      (let lp ((rest (class-precedence-list klass)))
        (match rest
          ([klass . rest]
           (if (eq? type-id (##type-id klass))
             (mixin-find-method rest id)
             (lp rest)))
          (else #f))))
     ((##type? klass)
      (let lp ((klass klass))
        (cond
         ((eq? type-id (##type-id klass))
          (builtin-find-method (##type-super klass) id))
         ((##type-super klass)
          => lp)
         (else #f))))
     (else #f))))

(def (call-next-method subklass obj id . args)
  (cond
   ((next-method subklass obj id)
    => (lambda (methodf) (apply methodf obj args)))
   (else
    (error "cannot find next method" object: obj method: id))))

;;; custom writers
(def (write-style we)
  (macro-writeenv-style we))

(def (write-object we obj)
  (cond
   ((method-ref obj ':wr)
    => (lambda (method) (method obj we)))
   (else
    (##default-wr we obj))))

(##wr-set! write-object)
