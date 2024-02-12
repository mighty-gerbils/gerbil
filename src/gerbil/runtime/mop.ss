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
;;  0  ##structure-type            : (Exactly ##type-type)
;;  1  ##type-id                   : Symbol ; sometimes uninterned
;;  2  ##type-name                 : Symbol
;;  3  ##type-flags                : Fixnum
;;  4  ##type-super                : (OrFalse StructTypeDescriptor)
;;  5  ##type-fields               : (Vector [Symbol Fixnum default-value] ...)
;;  6  class-type-precedence-list  : (List TypeDescriptor) ; doesn't contain the class itself
;;  7  class-type-slot-vector      : (Vector Symbol) ; first is always __class
;;  8  class-type-slot-table       : (Table (Or Symbol Keyword) -> Fixnum)
;;  9  class-type-properties       : AList ; NB: not PList, despite the name "properties"
;; 10  class-type-constructor      : (OrFalse Symbol)
;; 11  class-type-methods          : (Table Symbol -> Function)
;;
;; The ##type-fields contains 3 entries by Gambit structure field, field name, flags and default value
;;
;; Standard "properties" keys:
;; direct-slots:   (List Symbol)            list of direct slots in order, for inheritance
;; direct-supers:  (List TypeDescriptor)    list of direct supers in order, for introspection only
;; struct:         Bool                     is this a struct? i.e. only single inheritance for structs
;; final:          Bool                     is this class final? i.e. no subclasses allowed
;; equal:          (Or Bool (List Symbol))  all new slots will be compared during objects equal?
;; print:          (Or Bool (List Symbol))  all new slots will be printed when printing an object
;; transparent:    Bool                     is this class transparent? i.e. equal and print all slots

;; These type flags are defined by Gambit itself
(def type-flag-opaque 1) ;; if opaque, instances are only equal? if eq?
(def type-flag-extensible 2) ;; if 0, no type extension by Gambit
(def type-flag-macros 4) ;; if 1, Gambit generates macros for accessors -- irrelevant for Gerbil
(def type-flag-concrete 8) ;; aka constructor -- has direct instances -- always set for Gerbil
(def type-flag-id 16) ;; if set we can compare by ##type-id and not just by eq? -- always set for Gerbl
;; These class type flags are Gerbil extensions
(def class-type-flag-struct 1024) ;; precedence-list always tail of subclass's precedence-list
(def class-type-flag-sealed 2048) ;; no new changes, subclasses or method definitions (implies final)

;; the metaclass type id
(def class::t.id 'gerbil#class::t)

;; the metaclass itself
(def class::t
  (let* ((slots
          '(id name super flags fields
            precedence-list slot-vector slot-table properties constructor method))
         (slot-vector
          (list->vector (cons '##type slots)))
         (slot-table
          (let (slot-table (make-hash-table-eq))
            (for-each
              (lambda (slot field)
                (hash-put! slot-table slot field)
                (hash-put! slot-table (symbol->keyword slot) field))
              slots
              (iota (length slots) 1))
            slot-table))
         (flags
          (##fxior type-flag-extensible type-flag-concrete type-flag-id
                   class-type-flag-struct))
         (fields ;; exclude those from ##type-type because this is for Gambit type use
          ;; the field-flags of 5 mean "(1) printable, (4) equalable",
          ;; the drop of 5 is the number of type-type slots
          (list->vector (apply append (map (cut list <> 5 #f) (drop slots 5)))))
         (properties
          '((direct-slots: ,@slots) ;; include those from ##type-type because it's not a class
            (struct: . #t)))
         (t (##structure
             #f            ; type: self reference, set below
             class::t.id   ; type-id
             'class        ; type-name
             flags         ; type-flags
             ##type-type   ; type-super
             fields        ; type-fields
             []            ; class-type-precedence-list
             slot-vector   ; class-type-slot-vector
             slot-table    ; class-type-slot-table
             properties    ; class-type-properties
             #f            ; class-type-constructor
             #f)))         ; class-type-methods
    (##structure-type-set! t t)         ; self reference
    t))

(def (class-type? obj)
  (##structure-instance-of? obj class::t.id))

(def (class-type-id klass)
  (cond
   ((class-type? klass) (##type-id klass))
   (else (error "not a type descriptor" klass))))

(def (class-type=? x y)
  (eq? (class-type-id x) (class-type-id y)))

(defrules fxflag-set? ()
  ((_ value flag) (let (flag flag) (##fx= (##fxand value flag) flag))))
(defrules fxflag-unset? ()
  ((_ value flag) (let (flag flag) (##fx= (##fxand value flag) 0))))

(def (type-opaque? type)
  (fxflag-set? (##type-flags type) type-flag-opaque))
(def (type-extensible? type)
  (fxflag-set? (##type-flags type) type-flag-extensible))
(def (class-type-final? type)
  (fxflag-unset? (##type-flags type) type-flag-extensible))
(def (class-type-struct? klass)
  (fxflag-set? (##type-flags klass) class-type-flag-struct))
(def (class-type-sealed? klass)
  (##fxpositive? (##fxand (##type-flags klass) class-type-flag-sealed)))

;; TODO for debugging only
(def (properties-form properties)
  (map (match <>
         ([key . val]
          (if (eq? key 'direct-supers:)
            [key :: (map class-type-id val)]
            [key :: val])))
       properties))

;; Compute the flags and field-info and create a class type
(def (make-class-type-descriptor type-id type-name type-super
                                 precedence-list slot-vector properties
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
                (let (alist (class-type-properties mixin))
                  (if (or (assgetq transparent: alist) (eq? #t (assgetq key alist)))
                    (put-slots! ht (class-type-slot-list mixin))
                    (put-alist! ht key alist))))
              precedence-list)
    ht)

  (let* ((transparent? (assgetq transparent: properties))
         (all-slots-printable? (or transparent? (eq? #t (assgetq print: properties))))
         (printable (and (not all-slots-printable?) (make-props! print:)))
         (all-slots-equalable? (or transparent? (eq? #t (assgetq equal: properties))))
         (equalable (and (not all-slots-equalable?) (make-props! equal:)))
         (first-new-field
          (if (class-type? type-super)
            (##vector-length (class-type-slot-vector type-super))
            1))
         (field-info-length (##fx* 3 (##fx- (##vector-length slot-vector) first-new-field)))
         (field-info (make-vector field-info-length #f))
         (struct? (assgetq struct: properties))
         (final? (assgetq final: properties))
         (opaque?
          (or (not all-slots-equalable?)
              (and type-super (type-opaque? type-super))))
         (type-flags
          (##fxior type-flag-id type-flag-concrete
                   (if final? 0 type-flag-extensible)
                   (if opaque? type-flag-opaque 0)
                   (if struct? class-type-flag-struct 0))))
    (let loop ((i first-new-field)
               (j 0))
      (when (##fx< j field-info-length)
        (let* ((slot (##vector-ref slot-vector i))
               (flags
                (if transparent? 0
                    (##fxior (if (or all-slots-printable? (hash-get printable slot)) 0 1)
                             (if (or all-slots-equalable? (hash-get equalable slot)) 0 4)))))
          (vector-set! field-info j slot)
          (vector-set! field-info (##fx+ j 1) flags)
          (loop (##fx+ i 1) (##fx+ j 3)))))
    (##structure class::t
                 ;; gambit type fields
                 type-id type-name type-flags type-super field-info
                 ;; gerbil class fields
                 precedence-list slot-vector slot-table properties constructor methods)))

;;; class type utilities
(def (class-type-precedence-list klass)
  (##structure-ref klass 6 class::t class-type-precedence-list))
(def (class-type-slot-vector klass)
  (##structure-ref klass 7 class::t class-type-slot-vector))
(def (class-type-slot-table klass)
  (##structure-ref klass 8 class::t class-type-slot-table))
(def (class-type-properties klass)
  (##structure-ref klass 9 class::t class-type-properties))
(def (class-type-constructor klass)
  (##structure-ref klass 10 class::t class-type-constructor))
(def (class-type-methods klass)
  (##structure-ref klass 11 class::t class-type-methods))
(def (class-type-methods-set! klass ht)
  (##structure-set! klass ht 11 class::t class-type-methods-set!))

(def (class-type-slot-list klass)
  (cdr (vector->list (class-type-slot-vector klass))))
(def (class-type-fields klass)
  (##fx- (##vector-length (class-type-slot-vector klass)) 1))
(def (class-type-seal! klass)
  (##structure-set! klass (##fxior class-type-flag-sealed (##type-flags klass))
                    3 class::t class-type-seal!))

;; Is maybe-sub-struct a subclass of maybe-super-struct?
; : (OrFalse TypeDescriptor) (OrFalse TypeDescriptor) -> Bool
(def (substruct? maybe-sub-struct maybe-super-struct)
  (let (maybe-super-struct-id (##type-id maybe-super-struct))
    (let lp ((super-struct maybe-sub-struct))
      (cond
       ((not super-struct)
        #f)
       ((eq? maybe-super-struct-id (##type-id super-struct))
        #t)
       (else
        (lp (##type-super super-struct)))))))

;; Which is the most specific struct class if any that klass is or inherits from?
;; : TypeDescriptor -> (OrFalse StructTypeDescriptor)
(def (base-struct/1 klass)
  (cond
   ((class-type? klass)
    (if (class-type-struct? klass)
      klass
      (##type-super klass)))
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
(def (find-super-constructor super)
  (let lp ((rest super) (constructor #f))
    (match rest
      ([hd . rest]
       (cond
        ((class-type-constructor hd)
         => (lambda (xconstructor)
              (if (or (not constructor) (eq? constructor xconstructor))
                (lp rest xconstructor)
                (error "conflicting implicit constructors" constructor xconstructor))))
        (else (lp rest constructor))))
      (else constructor))))

;; Given a struct super class (or false if none),
;; a list of super-classes (not including the class being created), and
;; a list of direct slots from the class being created,
;; return the slot-vector vector of slots (with #f in position 0) and the slot-table.
;; a table mapping symbol and keyword names to offset, and
;; : (OrFalse StructTypeDescriptor) (List TypeDescriptor) (List Symbol) \
;;   -> (Vector Symbol) (Table (Or Symbol Keyword) -> Fixnum)
(def (compute-class-slots class-precedence-list direct-slots)
  (let* ((next-slot 1) ;; 0 is special slot for type-descriptor
         (slot-table (make-hash-table-eq))
         (r-slots '(__class))
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
                (process-slots
                 (assgetq direct-slots: (class-type-properties mixin) [])))
              (reverse class-precedence-list))
    (process-slots direct-slots)
    (let (slot-vector (list->vector (reverse r-slots)))
      (values slot-vector slot-table))))

;;; ClassTypeDescriptor
;; : Symbol Symbol (List TypeDescriptor) (List Symbol) Alist Constructor -> ClassTypeDescriptor
(def (make-class-type id name direct-supers direct-slots properties constructor)
  (cond
   ((find (? (not class-type?)) direct-supers)
    => (cut error "Illegal super class; not a class descriptor" <>))
   ((find class-type-final? direct-supers)
    => (cut error "Cannot extend final class" <>)))

  (let* (((values precedence-list struct-super)
          (compute-precedence-list direct-supers))
         ((values slot-vector slot-table)
          (compute-class-slots precedence-list direct-slots))
         (properties
          [[direct-slots: . direct-slots]
           [direct-supers: . direct-supers]
           properties ...])
         (constructor* (or constructor (find-super-constructor direct-supers))))

    (make-class-type-descriptor id name struct-super
                                precedence-list slot-vector properties
                                constructor* slot-table #f)))

(def (class-precedence-list klass)
  (cons klass (class-type-precedence-list klass)))

;; class precedence list, excluding current class; super struct if any
;; (List TypeDescriptor) -> (List TypeDescriptor) (OrFalse TypeDescriptor)
(def (compute-precedence-list direct-supers)
  (c4-linearize [] direct-supers
                get-precedence-list: class-precedence-list
                struct: class-type-struct?
                eq: eq?
                get-name: ##type-name))

(def (make-class-predicate klass)
  (let (tid (##type-id klass))
    (cond
     ((class-type-final? klass) (cut ##structure-direct-instance-of? <> tid))
     ((class-type-struct? klass) (cut ##structure-instance-of? <> tid))
     (else (cut class-instance? klass <>)))))

;; Given a klass descriptor, a slot name (symbol), and three accessor-makers
;; for the respective cases of (a) the descriptor being a struct or final
;; (so all direct or indirect instances have the slot is at a fixed field),
;; (b) the field being part of the struct base of the class
;; (same as above but you have a more expensive argument class check to be safe)
;; or (c) the slot being a regular class slot (the more expensive code path),
;; return an accessor for this klass and slot.
(def (if-class-slot-field klass slot if-final if-struct if-struct-field if-class-slot)
  (let (field (hash-get (class-type-slot-table klass) slot))
    (cond
     ((not field)
      (error "unknown slot" class: klass slot: slot))
     ((class-type-final? klass)
      (if-final klass slot field))
     ((class-type-struct? klass)
      (if-struct klass slot field))
     ((let (strukt (base-struct/1 klass))
        (and (class-type? strukt)
             (##fx< field (##vector-length (class-type-slot-vector strukt)))))
      (if-struct-field klass slot field))
     (else
      (if-class-slot klass slot field)))))

(def (make-class-slot-accessor klass slot)
  (if-class-slot-field klass slot
     make-final-slot-accessor
     make-struct-slot-accessor
     make-struct-subclass-slot-accessor
     make-class-cached-slot-accessor))

(def (make-class-slot-mutator klass slot)
  (if-class-slot-field klass slot
     make-final-slot-mutator
     make-struct-slot-mutator
     make-struct-subclass-slot-mutator
     make-class-cached-slot-mutator))

(def (make-class-slot-unchecked-accessor klass slot)
  (if-class-slot-field klass slot
     make-struct-slot-unchecked-accessor
     make-struct-slot-unchecked-accessor
     make-struct-slot-unchecked-accessor
     make-class-cached-slot-unchecked-accessor))

(def (make-class-slot-unchecked-mutator klass slot)
  (if-class-slot-field klass slot
     make-struct-slot-unchecked-mutator
     make-struct-slot-unchecked-mutator
     make-struct-slot-unchecked-mutator
     make-class-cached-slot-unchecked-mutator))

(def (not-an-instance object class (slot #f))
  (apply error "not an instance" object: object class: class
         (if slot [slot: slot] [])))

(def ((make-final-slot-accessor klass slot field) obj)
  (##direct-structure-ref obj field klass slot))
(def ((make-final-slot-mutator klass slot field) obj val)
  (##direct-structure-set! obj val field klass slot))

(def ((make-struct-slot-accessor klass slot field) obj)
  (##structure-ref obj field klass slot))
(def ((make-struct-slot-mutator klass slot field) obj val)
  (##structure-set! obj val field klass slot))

(def ((make-struct-slot-unchecked-accessor klass slot field) obj)
  (##unchecked-structure-ref obj field klass slot))
(def ((make-struct-slot-unchecked-mutator klass slot field) obj val)
  (##unchecked-structure-set! obj val field klass slot))

(def ((make-struct-subclass-slot-accessor klass slot field) obj)
  (if (class-instance? klass obj)
    (unchecked-slot-ref obj field)
    (not-an-instance obj klass slot)))
(def ((make-struct-subclass-slot-mutator klass slot field) obj val)
  (if (class-instance? klass obj)
    (unchecked-field-set! obj field val)
    (not-an-instance obj klass slot)))

(def ((make-class-cached-slot-accessor klass slot field) obj)
  (cond
   ((direct-instance? klass obj)
    (unchecked-field-ref obj field))
   ((class-instance? klass obj)
    (unchecked-slot-ref obj slot))
   (else
    (not-an-instance obj klass slot))))
(def ((make-class-cached-slot-mutator klass slot field) obj val)
  (cond
   ((direct-instance? klass obj)
    (unchecked-field-set! obj field val))
   ((class-instance? klass obj)
    (unchecked-slot-set! obj slot val))
   (else
    (not-an-instance obj klass slot))))

(def ((make-class-cached-slot-unchecked-accessor klass slot field) obj)
  (if (direct-instance? klass obj)
    (unchecked-field-ref obj field)
    (unchecked-slot-ref obj slot)))
(def ((make-class-cached-slot-unchecked-mutator klass slot field) obj val)
  (if (direct-instance? klass obj)
    (unchecked-field-set! obj field val)
    (unchecked-slot-set! obj slot val)))

(def (class-slot-offset klass slot)
  (hash-get (class-type-slot-table klass) slot))

(def (class-slot-ref klass obj slot)
  (if (class-instance? klass obj)
    (let (off (class-slot-offset (object-type obj) slot))
      (##unchecked-structure-ref obj off klass slot))
    (not-an-instance obj klass)))
(def (class-slot-set! klass obj slot val)
  (if (class-instance? klass obj)
    (let (off (class-slot-offset (object-type obj) slot))
      (##unchecked-structure-set! obj val off klass slot))
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
        ((and (class-type? klass)
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
               (class-type-precedence-list maybe-sub-class)))))

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
         (and (class-type? type)
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

(def (new-instance klass)
  (make-object klass (##vector-length (class-type-slot-vector klass))))

(def (make-instance klass . args)
  (let (obj (new-instance klass))
    (cond
     ((class-type-constructor klass)
      => (lambda (kons-id)
           (__constructor-init! klass kons-id obj args)))
     ((not (class-type-struct? klass))
      (__class-instance-init! klass obj args))
     ((##fx= (##fx- (##structure-length obj) 1) (length args))
      (apply ##structure klass args))
     (else
      (error "arguments don't match object size"
        class: klass slots: (class-type-slot-list klass)
        args: args)))))

(def make-class-instance make-instance)

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
      (if (class-type? klass)
        (let (slot-vector (class-type-slot-vector klass))
          (let loop ((index (##fx- (##vector-length slot-vector) 1))
                     (plist []))
            (if (##fx< index 1)
              (cons klass plist)
              (let ((slot (##vector-ref slot-vector index)))
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
  (if (class-type? klass)
    (__find-method klass id)
    (builtin-find-method klass id)))

(def (__find-method klass id)
  (cond
   ((direct-method-ref klass id))
   ((class-type-sealed? klass)
    #f)
   (else
    (mixin-method-ref klass id))))

(def (class-find-method klass id)
  (and (class-type? klass)
       (__find-method klass id)))

(def (mixin-find-method mixins id)
  (ormap (cut direct-method-ref <> id) mixins))

(def (builtin-find-method klass id)
  (and (##type? klass)
       (or (builtin-method-ref klass id)
           (builtin-find-method (##type-super klass) id))))

(def (direct-method-ref klass id)
  (cond
   ((class-type-methods klass)
    => (lambda (ht) (hash-get ht id)))
   (else #f)))

(def (mixin-method-ref klass id)
  (mixin-find-method (class-type-precedence-list klass) id))

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
   ((class-type? klass)
    (let (ht (class-type-methods klass))
      (if ht
        (bind! ht)
        (let (ht (make-hash-table-eq))
          (class-type-methods-set! klass ht)
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
    (error "bad class; expected class or builtin type" klass))))

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
       ((class-type-methods klass) => merge!)))

    (for-each collect-direct-methods!
              (reverse (class-precedence-list klass))))

  (when (class-type? klass)
    (unless (class-type-sealed? klass)
      (unless (class-type-final? klass)
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
        (class-type-methods-set! klass vtab)
        (class-type-seal! klass)))))

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
     ((class-type? klass)
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
