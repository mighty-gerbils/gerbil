;;; -*- Gerbil -*-
;;; © vyzo
;;; serde interfaces
;;;
;;; In general, we use 'serde to refer to a particular algorithm
;;; implemented by Gerbil in order to handle general purpose
;;; serialization and deserialization of any object expressible
;;; in Gerbil.
;;; Not for kids; let there be cycles and all the crabs cry.
(import :std/error
        :std/interface
        :std/io/interface
        :std/io/bio/api
        ./scan)
(export #t)

(deftype @WriteTraits WriteTraits)

;; seriailization (write) environment for the serde algorithm
(defstruct WriteContext
  ((scan         :- ScanContext)
   ;; serialization methods
   (methods      :- @WriteTraits)
   ;; class serialize filter
   (allow-class? :- :procedure))
  transparent: #f
  final: #t)

;; WriteTraits represents a concrete serialization protocol
;; which serializes using the serde algorithm
(interface WriteTraits
  (write-delimiter (writer : BufferedWriter)
                   (ctx    : WriteContext))
  => :fixnum
  (write-field-delimiter (writer : BufferedWriter)
                         (ctx    : WriteContext))
  => :fixnum
  (write-pair-delimiter (writer : BufferedWriter)
                        (ctx    : WriteContext))
  => :fixnum
  (write-anchor-begin (writer : BufferedWriter)
                      (id     : :fixnum)
                      (ctx    : WriteContext))
  => :fixnum
  (write-anchor-end (writer : BufferedWriter)
                    (ctx    : WriteContext))
  => :fixnum
  (write-reference (writer : BufferedWriter)
                   (id     : :fixnum)
                   (ctx    : WriteContext))
  => :fixnum
  (write-object-begin (writer : BufferedWriter)
                      (ctx    : WriteContext))
  => :fixnum
  (write-object-end (writer : BufferedWriter)
                    (ctx    : WriteContext))
  => :fixnum

  (write-list-begin (writer : BufferedWriter)
                    (ctx    : WriteContext))
  => :fixnum
  (write-list-end (writer : BufferedWriter)
                  (ctx    : WriteContext))
  => :fixnum
  (write-class (writer : BufferedWriter)
               (klass  : class)
               (ctx    : WriteContext))
  => :fixnum
  (write-slot (writer : BufferedWriter)
              (slot   : :symbol)
              (ctx    : WriteContext))
  => :fixnum
  (write-char (writer : BufferedWriter)
              (char   : :char)
              (ctx    : WriteContext))
  => :fixnum
  (write-boolean (writer : BufferedWriter)
                 (bool   : :boolean)
                 (ctx    : WriteContext))
  => :fixnum
  (write-special (writer : BufferedWriter)
                 (atom   : :special)
                 (ctx    : WriteContext))
  => :fixnum
  (write-integer (writer : BufferedWriter)
                 (int    : :integer)
                 (ctx    : WriteContext))
  => :fixnum
  (write-flonum (writer : BufferedWriter)
                (int    : :flonum)
                (ctx    : WriteContext))
  => :fixnum
  (write-ratnum (writer : BufferedWriter)
                (int    : :ratnum)
                (ctx    : WriteContext))
  => :fixnum
  (write-cpxnum (writer : BufferedWriter)
                (int    : :cpxnum)
                (ctx    : WriteContext))
  => :fixnum
  (write-symbol (writer : BufferedWriter)
                (sym    : :symbol)
                (ctx    : WriteContext))
  => :fixnum
  (write-keyword (writer : BufferedWriter)
                 (sym    : :keyword)
                 (ctx    : WriteContext))
  => :fixnum
  (write-string (writer : BufferedWriter)
                (str    : :string)
                (ctx    : WriteContext))
  => :fixnum
  (write-vector-begin (writer : BufferedWriter)
                      (vec    : :vector)
                      (ctx    : WriteContext))
  => :fixnum
  (write-vector-end (writer : BufferedWriter)
                    (ctx    : WriteContext))
  => :fixnum
  (write-hvector-begin (writer : BufferedWriter)
                       (vec    : :hvector)
                       (ctx    : WriteContext))
  => :fixnum
  (write-hvector-end (writer : BufferedWriter)
                     (ctx    : WriteContext))
  => :fixnum
  (write-values-begin (writer : BufferedWriter)
                      (vals   : :values)
                      (ctx    : WriteContext))
  => :fixnum
  (write-values-end (writer : BufferedWriter)
                    (ctx    : WriteContext))
  => :fixnum
  (write-box-begin (writer : BufferedWriter)
                   (ctx    : WriteContext))
  => :fixnum
  (write-box-end (writer : BufferedWriter)
                 (ctx    : WriteContext))
  => :fixnum
  (write-hash-table (writer : BufferedWriter)
                    (ht     : HashTable)
                    (ctx    : WriteContext))
  => :fixnum)

;; ObjectWriter represents machinery for serializing objects
;; with the serde algorithm
(interface ObjectWriter
  (write (writer : BufferedWriter) (ctx : WriteContext))
  => :fixnum)

(defsyntax-case defobject-writer ()
  ((_ klass (write-method writer obj ctx)
      body ...)
   (with-identifier (writer.write-method #'writer #'writer "." #'write-method)
                    #'(begin
                        (defwriter-ext (write-method writer (obj : klass) (ctx : WriteContext))
                          body ...)

                        (defmethod {write klass}
                          (lambda (self writer ctx)
                            (writer.write-method self ctx))
                          interface: ObjectWriter)
                        (@implement ObjectWriter klass)))))

(defcall-interface-method ObjectWriter write
  (__object-write obj writer ctx)
  :- :fixnum)

(deftype @ReadTraits ReadTraits)

;; deserialization (read) ctxironment for the serde algorithm
(defstruct ReadContext
  ((dict             :- HashTable)
   ;; deserialization methods
   (methods          :- @ReadTraits)
   ;; class deserialize filter
   (classes          :- HashTable)
   (allow-class?     :- :procedure)
   ;; procedure deserialize filter
   (procedures       :- HashTable)
   (allow-procedure? :- :procedure)
   ;; symblic intern filters
   (intern-symbol    :- :procedure)
   (intern-keyword   :- :procedure))
  transparent: #f
  final: #t
  constructor: :init!)

;; ObjectConstructor reoresents functionality for progressive object construction
(interface ObjectBuilder
  ;; streaming construction
  ;; pushes a new element to the object under construction
  (push! val hint (ctx : ReadContext))
  => :void

  ;; finishes object constructor
  (finish!)
  => :t)

(deftype @Anchor Anchor)

;; Anchor represents an under construction
;; (potentially) cyclic object.
(interface Anchor
  ;; progressive object construction
  (cons! (klass : class) hint)
  => ObjectBuilder

  ;; set the object associated with an anchor
  (set! obj)
  => :t

  ;; temporary recursive anchor context
  (temporary)
  => @Anchor

  ;; finish deserialization:
  ;; - resolves all references
  ;; - invokes deserialize! on the resulting object for validation
  ;;   and state reconciliation where appropriate
  ;; - returns the final deserialized object; the top anchor
  ;;   also invokes untaint! which ensures the object state
  ;;   is recursively fully reconstructoed.
  (resolve! (ctx : ReadContext))
  => :t)

;; MetaConstructor is a class level interface for creating object
;; constructors for an anchor
(interface MetaConstructor
  (new (klass : class) (anchor : Anchor) hint)
  => ObjectBuilder)

;; ReadTraits represents the machniery necessary to deserialize
;; complex objects from a serde stream
(interface ReadTraits
  ;; creates a new (potentially) cyclic object anchor
  (anchor! (index : :fixnum) (ctx : ReadContext))
  => Anchor
  ;; resolves an anchor reference; it must be present in the dictionary
  (reference (index : :fixnum) (ctx : ReadContext))
  => Anchor
  ;; resolves and if necessary (and allowed) loads a class by name
  ;; name can be a symbol or a string
  (resolve-class! name (ctx : ReadContext))
  => class)

;; ObjectDeserializer represents logic necessary to complete and
;; validate and object that has been deserialized.
;; it came from the network, can't trust it.
(interface ObjectDeserializer
  ;; deserialize! is called after the serde stream has been parsed.
  ;; the method if responsible for resolving anchors inside the object
  (resolve! (ctx : ReadContext)) => :void

  ;; untaint! is called after the serde stream has been fully deserialized
  ;; to validate and reconstruct missing state
  (untaint! (seen : HashTable)) => :void)

;; defines a suitable untaint! method according to class slot contracts
(defsyntax-case defobject-untaint ()
  ((_ klass)
   (syntax-local-class-type-info? #'klass)
   (with-syntax (((slot ...)
                  (map car (!class-type-accessors (syntax-local-value #'klass)))))
     (with-identifier (untaint! ,untaint!)
       #'(defmethod {untaint! klass}
           (lambda (self seen)
             (untaint-slot! klass slot self seen)
             ...
             #!void)
           interface: ObjectDeserializer
           ))))
  ((_ klass ...)
   #'(begin
       (defobject-untaint klass) ...)))

(defsyntax-case untaint-slot! ()
  ((_ klass slot self seen)
   (syntax-local-class-type-info? #'klass)
   (let* ((info
           (syntax-local-value #' klass))
          (slot-symbol
           (stx-e #'slot))
          (getf
           (agetq slot-symbol (!class-type-unchecked-accessors info)))
          (contracts
           (!class-type-slot-contracts info))
          (contract
           (and contracts
                (cond
                 ((agetq slot-symbol contracts)
                  => syntax-local-introduce)
                 (else #f))))
          (contract-predicate
           (and contract
                (syntax-case contract (:~)
                  ((:~ pred . rest)
                   #'pred)
                  (_ #f))))
          (contract-maybe
           (and contract
                (not contract-predicate)
                (syntax-case contract (:?)
                  ((:? . rest) #t)
                  (_ #f))))
          (types
           (!class-type-slot-types info))
          (type
           (and types
                (cond
                 ((agetq slot-symbol types)
                  => (lambda (t)
                       (resolve-type stx (syntax-local-introduce t))))
                 (else #f))))
          (type-predicate
           (and type
                (cond
                 ((class-type-info? type)
                  (!class-type-predicate type))
                 ((interface-info? type)
                  (interface-info-instance-predicate type))
                 (else
                  (raise-syntax-error #f "unexpected slot type" stx #'slot type))))))

     (with-identifier (untaint! ,untaint!)
       (cond
        ((not getf)
         (raise-syntax-error #f "no accessor for slot" stx #'slot))
        ((or contract-predicate type-predicate)
         => (lambda (predicate)
              (with-syntax* ((t::t (core-quote-syntax 't::t))
                             (getf getf)
                             (predicate predicate)
                             (predicate
                              (if contract-maybe
                                #'(? (or not predicate))
                                #'predicate)))
                #'(let (value
                        ;; prevent the compiler from assuming
                        ;; the return type of the accessor
                        (begin-annotation (@type t::t)
                          (getf self)))
                    (if (predicate value)
                      (untaint! value seen)
                      (raise-contract-violation untaint-slot! "slot value does not specify contract predicate"
                                                slot: 'slot
                                                value: value
                                                predicate: 'predicate))))))
        (else
         (with-syntax ((getf getf))
           #'(untaint! (getf self) seen))))))))

(deferror-class (ParseError IOError) () parse-error?)

(defraise/context (raise-parse-error where message irritants ...)
  (ParseError message irritants: [irritants ...]))
