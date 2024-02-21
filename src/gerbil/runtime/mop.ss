;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil MOP
prelude: "../prelude/core"
package: gerbil/runtime
namespace: #f

(export #t)
(import "gambit" "util" "table" "c3")

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
(def class-type-flag-metaclass 4096) ;; it is a class of classes, supporting the metaclass protocol

;; the metaclass type id
(def class::t.id 'gerbil#class::t)

;; the metaclass itself
(def class::t
    (begin-annotation
        (@mop.class gerbil#class::t     ; type-id
                    ()                  ; super
                    (id name super flags fields
                        precedence-list slot-vector slot-table
                        properties constructor methods) ; slots
                    #f                  ; constructor method
                    #t                  ; struct?
                    #f                  ; final?
                    #f)                 ; metaclass
      (let* ((slots
              '(id name super flags fields
                   precedence-list slot-vector slot-table properties constructor methods))
             (slot-vector
              (list->vector (cons #f slots)))
             (slot-table
              (let (slot-table (make-symbolic-table #f 0))
                (for-each
                  (lambda (slot field)
                    (symbolic-table-set! slot-table slot field)
                    (symbolic-table-set! slot-table (symbol->keyword slot) field))
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
              `((direct-slots: ,@slots) ;; include those from ##type-type because it's not a class
                (struct: . #t)))
             (t (##structure
                 #f                  ; type: self reference, set below
                 class::t.id         ; type-id
                 'class              ; type-name
                 flags               ; type-flags
                 ##type-type         ; type-super
                 fields              ; type-fields
                 []                  ; class-type-precedence-list
                 slot-vector         ; class-type-slot-vector
                 slot-table          ; class-type-slot-table
                 properties          ; class-type-properties
                 #f                  ; class-type-constructor
                 #f)))               ; class-type-methods
        (##structure-type-set! t t)  ; self reference
        t)))

(def class-type?
  (begin-annotation (@mop.predicate class::t)
    (lambda (obj)
      (##structure-instance-of? obj class::t.id))))

(def (class-type=? x y)
  (eq? (class-type-id x) (class-type-id y)))

(defrules fxflag-set? ()
  ((_ value flag)
   (or (identifier? #'flag) (stx-fixnum? #'flag))
   (##fx= (##fxand value flag) flag))
  ((_ value flag) (let (flag flag) (##fx= (##fxand value flag) flag))))
(defrules fxflag-unset? ()
  ((_ value flag)
   (or (identifier? #'flag) (stx-fixnum? #'flag))
   (##fx= (##fxand value flag) 0))
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
  (fxflag-set? (##type-flags klass) class-type-flag-sealed))
(def (class-type-metaclass? klass)
  (fxflag-set? (##type-flags klass) class-type-flag-metaclass))

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
    (def ht (make-symbolic-table #f 0))
    (def (put-slots! ht slots)
      (for-each (cut symbolic-table-set! ht <> #t) slots))
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
         (metaclass
          (alet (metaclass (assgetq metaclass: properties))
            (unless (class-type? metaclass)
              (error "metaclass is not a class type" class: type-id metaclass: metaclass))
            metaclass))
         (opaque?
          (or (not all-slots-equalable?)
              (and type-super (type-opaque? type-super))))
         (type-flags
          (##fxior type-flag-id type-flag-concrete
                   (if final? 0 type-flag-extensible)
                   (if opaque? type-flag-opaque 0)
                   (if struct? class-type-flag-struct 0)
                   (if metaclass class-type-flag-metaclass 0))))
    (let loop ((i first-new-field)
               (j 0))
      (when (##fx< j field-info-length)
        (let* ((slot (##vector-ref slot-vector i))
               (flags
                (if transparent? 0
                    (##fxior (if (or all-slots-printable? (symbolic-table-ref printable slot #f)) 0 1)
                             (if (or all-slots-equalable? (symbolic-table-ref equalable slot #f)) 0 4)))))
          (vector-set! field-info j slot)
          (vector-set! field-info (##fx+ j 1) flags)
          (loop (##fx+ i 1) (##fx+ j 3)))))
    (if metaclass
      (make-instance metaclass
                     ;; gambit type fields
                     type-id type-name type-flags type-super field-info
                     ;; gerbil class fields
                     precedence-list slot-vector slot-table properties constructor methods)
      (##structure class::t
                   ;; gambit type fields
                   type-id type-name type-flags type-super field-info
                   ;; gerbil class fields
                   precedence-list slot-vector slot-table properties constructor methods))))

;;; class type utilities
(defsyntax (defrefset stx)
  (syntax-case stx ()
    ((_ (slot field))
     (with-syntax* ((klass::t (core-quote-syntax 'class::t))
                    (ref (stx-identifier #'slot "class-type-" #'slot))
                    (&ref (stx-identifier #'slot "&" #'ref))
                    (setq (stx-identifier #'slot #'ref "-set!"))
                    (&setq (stx-identifier #'slot "&" #'setq)))
       #'(begin
           (def ref
             (begin-annotation (@mop.accessor klass::t slot #t)
               (lambda (klass)
                 (##structure-ref klass field class::t 'slot))))
           (def &ref
             (begin-annotation (@mop.accessor klass::t slot #f)
               (lambda (klass)
                 (##unchecked-structure-ref klass field class::t 'slot))))
           (def setq
             (begin-annotation (@mop.mutator klass::t slot #t)
               (lambda (klass val)
                 (##structure-set! klass val field class::t 'slot))))
           (def &setq
             (begin-annotation (@mop.mutator klass::t slot #f)
               (lambda (klass val)
                 (##unchecked-structure-set! klass val field class::t 'slot)))))))))

(defrules defrefset* ()
  ((_ (slot field) ...)
   (begin (defrefset (slot field)) ...)))

(defrefset*
  (id 1)
  (name 2)
  (super 3)
  (flags 4)
  (fields 5)
  (precedence-list 6)
  (slot-vector 7)
  (slot-table 8)
  (properties 9)
  (constructor 10)
  (methods 11))

(def (class-type-slot-list klass)
  (cdr (vector->list (class-type-slot-vector klass))))
(def (class-type-field-count klass)
  (##fx- (##vector-length (class-type-slot-vector klass)) 1))
(def (class-type-seal! klass)
  (##structure-set! klass (##fxior class-type-flag-sealed (##type-flags klass))
                    3 class::t class-type-seal!))
(def (&class-type-seal! klass)
  (##unchecked-structure-set! klass (##fxior class-type-flag-sealed (##type-flags klass))
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
        ((&class-type-constructor hd)
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
         (slot-table (make-symbolic-table #f 0))
         (r-slots '(__class))
         (process-slot
          (lambda (slot)
            (unless (symbol? slot)
              (error "invalid slot name" slot))
            (when (eq? (symbolic-table-ref slot-table slot absent-value)
                       absent-value);; ignore if already registered as a slot
              (symbolic-table-set! slot-table slot next-slot)
              (symbolic-table-set! slot-table (symbol->keyword slot) next-slot)
              (set! r-slots (cons slot r-slots))
              (set! next-slot (##fx+ next-slot 1)))))
         (process-slots (cut for-each process-slot <>)))
    (for-each (lambda (mixin)
                (process-slots
                 (assgetq direct-slots: (&class-type-properties mixin) [])))
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
  (cons klass (&class-type-precedence-list klass)))

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
  (let (field (symbolic-table-ref (&class-type-slot-table klass) slot #f))
    (cond
     ((not field)
      (error "unknown slot" class: klass slot: slot))
     ((class-type-final? klass)
      (if-final klass slot field))
     ((class-type-struct? klass)
      (if-struct klass slot field))
     ((let (strukt (base-struct/1 klass))
        (and (class-type? strukt)
             (##fx< field (##vector-length (&class-type-slot-vector strukt)))))
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
  (symbolic-table-ref (&class-type-slot-table klass) slot #f))

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
               (&class-type-precedence-list maybe-sub-class)))))

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
  (make-object klass (##vector-length (&class-type-slot-vector klass))))

(def (make-instance klass . args)
  (let (obj (new-instance klass))
    (cond
     ((&class-type-constructor klass)
      => (lambda (kons-id)
           (__constructor-init! klass kons-id obj args)))
     ((class-type-metaclass? klass)
      (__metaclass-instance-init! klass obj args))
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

(def (__metaclass-instance-init! klass obj args)
  (apply call-method klass 'instance-init! obj args))

(def (constructor-init! klass kons-id obj . args)
  (__constructor-init! klass kons-id obj args))

(def (__constructor-init! klass kons-id obj args)
  (cond
   ((__find-method klass obj kons-id)
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
        (let (slot-vector (&class-type-slot-vector klass))
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
  (make-symbolic-table #f 0))

(def (method-ref obj id)
  (and (object? obj)
       (find-method (object-type obj) obj id)))

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

(def (find-method klass obj id)
  (if (class-type? klass)
    (__find-method klass obj id)
    (builtin-find-method klass obj id)))

(def (__find-method klass obj id)
  (cond
   ((direct-method-ref klass obj id))
   ((class-type-sealed? klass)
    #f)
   (else
    (mixin-method-ref klass obj id))))

(def (class-find-method klass obj id)
  (and (class-type? klass)
       (__find-method klass obj id)))

(def (mixin-find-method mixins obj id)
  (ormap (cut direct-method-ref <> obj id) mixins))

(def (builtin-find-method klass obj id)
  (and (##type? klass)
       (or (builtin-method-ref klass obj id)
           (builtin-find-method (##type-super klass) obj id))))

(def (direct-method-ref klass obj id)
  (def (metaclass-resolve-method)
    (call-method klass 'direct-method-ref obj id))

  (def (metaclass-resolve-method!)
    (let (method (metaclass-resolve-method))
      (symbolic-table-set! (&class-type-methods klass) id
                           (if method 'resolved 'unknown))
      method))

  (cond
   ((&class-type-methods klass)
    => (lambda (ht)
         (let (method (symbolic-table-ref ht id #f))
           (cond
            ((procedure? method) method)
            ((class-type-metaclass? klass)
             (case method
               ((resolved)
                (metaclass-resolve-method))
               ((unknown) #f)
               (else
                (metaclass-resolve-method!))))
            (else #f)))))
   ((class-type-metaclass? klass)
    (let (tab (make-symbolic-table #f 0))
      (&class-type-methods-set! klass tab)
      (metaclass-resolve-method!)))
   (else #f)))

(def (mixin-method-ref klass obj id)
  (mixin-find-method (class-type-precedence-list klass) obj id))

(def (builtin-method-ref klass obj id)
  (cond
   ((symbolic-table-ref __builtin-type-methods (##type-id klass) #f)
    => (lambda (mtab) (symbolic-table-ref mtab id #f)))
   (else #f)))

(def (bind-method! klass id proc (rebind? #t))
  (def (bind! ht)
    (if (and (not rebind?) (symbolic-table-ref ht id #f))
      (error "method already bound" class: klass method: id)
      (symbolic-table-set! ht id proc)))

  (unless (procedure? proc)
    (error "bad method; expected procedure" proc))

  (cond
   ((class-type? klass)
    (let (ht (&class-type-methods klass))
      (if ht
        (bind! ht)
        (let (ht (make-symbolic-table #f 0))
          (&class-type-methods-set! klass ht)
          (bind! ht)))))
   ((##type? klass)
    (let (ht
          (cond
           ((symbolic-table-ref __builtin-type-methods (##type-id klass) #f))
           (else
            (let (ht (make-symbolic-table #f 0))
              (symbolic-table-set! __builtin-type-methods (##type-id klass) ht)
              ht))))
      (bind! ht)))
   (else
    (error "bad class; expected class or builtin type" klass))))

;;; specializers
;;; ___method-specializers is a table mapping procedures implementing
;;; methods for some class, to a specializer procediure.
;;; The specializer procedure is applied with the concrete class being
;;; specialized and a method table that (will) contain all specialized
;;; class methods at runtime.
;;; It is expected to return a (new) procecure where all slot and method
;;; lookups in the concrete receiver class have been resolved, possibly with
;;; a delay. This allows us to remove most of the dynamic MOP overhead within
;;; methods at the interface boundary.
;;;;
;; procedure method => lambda (klass method-table) => procedure method
;; compiler populated
(def __method-specializers
  (make-eq-table #f 0))
(def __method-specializers-mx
  (__make-inline-lock))

;;; binds a specializer procedure for a method procedure
(def (bind-specializer! method-proc specializer)
  (__lock-inline! __method-specializers-mx)
  (eq-table-set! __method-specializers method-proc specializer)
  (__unlock-inline! __method-specializers-mx))

(def (__lookup-method-specializer proc)
  (__lock-inline! __method-specializers-mx)
  (let (specializer (eq-table-ref __method-specializers proc #f))
    (__unlock-inline! __method-specializers-mx)
    specializer))

(def (__class-specializer-hash-key klass)
  (symbolic-hash (##type-id klass)))

(defspecialized-table make-class-specializer-table
  class-specializer-table-ref
  class-specializer-table-set! __class-specializer-table-set!
  class-specializer-table-update! __class-specializer-table-update!
  class-specializer-trable-delete!
  __class-specializer-hash-key eq?)

(def __class-specializers-mx (__make-inline-lock))
(def __class-specializers (make-class-specializer-table #f 0))
(def __class-specializers-key (cons #f #f)) ; pre-allocated key for lookups

;; Specializes all current class methods in the hierarchy
;; returns symbolic table mapping method => specialized procedure
;; the result is cached in the __class-specializers table
(def (specialize-class klass)
  (cond
   ((__lookup-class-specializer klass))
   (else
    (let (method-table (__specialize-class klass))
      (__bind-class-specializer! klass method-table)
      method-table))))

(def (__lookup-class-specializer klass)
  (__lock-inline! __class-specializers-mx)
  (let (method-table (class-specializer-table-ref __class-specializers klass #f))
    (__unlock-inline! __class-specializers-mx)
    method-table))

(def (__bind-class-specializer! klass method-table)
  (__lock-inline! __class-specializers-mx)
  (class-specializer-table-set! __class-specializers klass method-table)
  (__unlock-inline! __class-specializers-mx))

(def (__specialize-method klass method-table method proc)
  (cond
   ((symbolic-table-ref method-table method #f))
   ((__lookup-method-specializer proc)
    => (lambda (specialize)
         (let (specialized-proc (specialize klass method-table))
           ;; ideally we want to name the procedure and bind the global
           ;; table to be accessible in the debugger, but this is
           ;; not SMP safe (and it is also quite slow)
           (symbolic-table-set! method-table method specialized-proc))))
   (else
    ;; no specializer -- identity transform
    (symbolic-table-set! method-table method proc))))

;;; class => symbolic-table method => proccedure for all object methods
(def (__specialize-class klass)
  (cond
   ((not (class-type? klass))
    (if (##type? klass)
      ;; builtin type
      (let (method-table (make-symbolic-table #f 0))
        (let loop ((xklass klass))
          (when xklass
            (alet (xmethod-table (symbolic-table-ref __builtin-type-methods (##type-id xklass) #f))
              (raw-table-for-each
               xmethod-table
               (cut __specialize-method klass method-table <> <>)))
            (loop (##type-super xklass))))
        method-table)
      (error "bad class; cannot specialize" klass)))
   ((class-type-metaclass? klass)
    (call-method klass 'specialize-class))
   ((find class-type-metaclass? (&class-type-precedence-list klass))
    (error "cannot specialize class that extends metaclass without a metaclass" klass))
   (else
    (let (method-table (make-symbolic-table #f 0))
      (let loop ((rest (class-precedence-list klass)))
        (match rest
          ([xklass . rest]
           (alet (xmethod-table (&class-type-methods xklass))
             (raw-table-for-each
              xmethod-table
              (cut __specialize-method klass method-table <> <>)))
           (loop rest))
          (else method-table)))))))

;;; class sealing
(def (seal-class! klass)
  (when (class-type? klass)
    (unless (class-type-sealed? klass)
      (unless (class-type-final? klass)
        (error "cannot seal non-final class" klass))
      (cond
       ((class-type-metaclass? klass)
        (call-method klass 'seal-class!))
       ((find class-type-metaclass? (&class-type-precedence-list klass))
        (error "cannot seal class that extends metaclass without a metaclass" klass))
       (else
        (let (method-table (specialize-class klass))
          (&class-type-methods-set! klass method-table))))
      (&class-type-seal! klass))))

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
             (mixin-find-method rest obj id)
             (lp rest)))
          (else #f))))
     ((##type? klass)
      (let lp ((klass klass))
        (cond
         ((eq? type-id (##type-id klass))
          (builtin-find-method (##type-super klass) obj id))
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
