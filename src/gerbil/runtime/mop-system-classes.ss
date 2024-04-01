;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil MOP -- system classes
prelude: "../core"
package: gerbil/runtime
namespace: #f

(export #t)
(import "gambit" "mop")

;; this is necessary or system classes will not be present in fpo executables
;; which breaks the write hook for primitives and results in disaster.
(declare (not optimize-dead-definitions
              immediate::t
              char::t
              boolean::t
              atom::t
              void::t
              eof::t
              true::t
              false::t
              special::t
              number::t
              real::t
              integer::t
              fixnum::t
              bignum::t
              ratnum::t
              flonum::t
              cpxnum::t
              symbolic::t
              symbol::t
              keyword::t
              list::t
              pair::t
              null::t
              sequence::t
              vector::t
              string::t
              hvector::t
              u8vector::t
              s8vector::t
              u16vector::t
              s16vector::t
              u32vector::t
              s32vector::t
              u64vector::t
              s64vector::t
              f32vector::t
              f64vector::t
              values::t
              box::t
              frame::t
              continuation::t
              promise::t
              weak::t
              foreign::t
              procedure::t
              return::t))

;; usual immediates
(defsystem-class immediate::t immediate ())
(defsystem-class char::t char (immediate::t))
(defsystem-class boolean::t boolean (immediate::t))

(defsystem-class atom::t atom (immediate::t))
(defsystem-class void::t void (atom::t))
(defsystem-class eof::t eof (atom::t))
(defsystem-class true::t true (boolean::t atom::t))
(defsystem-class false::t false (boolean::t atom::t))

;; special values
(defsystem-class special::t special (atom::t))

;; numbers
(defsystem-class number::t number ())
(defsystem-class real::t real (number::t))
(defsystem-class integer::t integer (real::t))
(defsystem-class fixnum::t fixnum (integer::t immediate::t))
(defsystem-class bignum::t bignum (integer::t))
(defsystem-class ratnum::t ratnum (real::t))
(defsystem-class flonum::t flonum (real::t))
(defsystem-class cpxnum::t cpxnum (number::t))

;; symbolic
(defsystem-class symbolic::t symbolic ())
(defsystem-class symbol::t symbol (symbolic::t))
(defsystem-class keyword::t keyword (symbolic::t))

;; lists
(defsystem-class list::t list ())
(defsystem-class pair::t pair (list::t))
(defsystem-class null::t null (list::t atom::t))

;; sequences
(defsystem-class sequence::t sequence ())
(defsystem-class vector::t vector (sequence::t))
(defsystem-class string::t string (sequence::t))
(defsystem-class hvector::t hvector (sequence::t))
(defsystem-class u8vector::t u8vector (hvector::t))
(defsystem-class s8vector::t s8vector (hvector::t))
(defsystem-class u16vector::t u16vector (hvector::t))
(defsystem-class s16vector::t s16vector (hvector::t))
(defsystem-class u32vector::t u32vector (hvector::t))
(defsystem-class s32vector::t s32vector (hvector::t))
(defsystem-class u64vector::t u64vector (hvector::t))
(defsystem-class s64vector::t s64vector (hvector::t))
(defsystem-class f32vector::t f32vector (hvector::t))
(defsystem-class f64vector::t f64vector (hvector::t))

;; special
(defsystem-class values::t values ())
(defsystem-class box::t box ())
(defsystem-class frame::t frame ())
(defsystem-class continuation::t continuation ())
(defsystem-class promise::t promise ())
(defsystem-class weak::t weak ())
(defsystem-class foreign::t foreign ())

;; procedures
(defsystem-class procedure::t procedure ())
(defsystem-class return::t return ())

;; some predefined shadow classes
;; time objects
(defshadow-class time::t () (macro-type-time))
;; thread related objects
(defshadow-class thread::t () (macro-type-thread))
(defshadow-class thread-group::t () (macro-type-tgroup))
(defshadow-class mutex::t () (macro-type-mutex))
(defshadow-class condvar::t () (macro-type-condvar))
;; port hierarchy
(defshadow-class port::t () (macro-type-port))
(defshadow-class object-port::t (port::t) (macro-type-object-port))
(defshadow-class character-port::t (object-port::t) (macro-type-character-port))
(defshadow-class byte-port::t (character-port::t) (macro-type-byte-port))
(defshadow-class device-port::t (byte-port::t) (macro-type-device-port))
(defshadow-class vector-port::t (object-port::t) (macro-type-vector-port))
(defshadow-class string-port::t (character-port::t) (macro-type-string-port))
(defshadow-class u8vector-port::t (byte-port::t) (macro-type-u8vector-port))
(defshadow-class raw-device-port::t (port::t) (macro-type-raw-device-port))
(defshadow-class tcp-server-port::t (object-port::t) (macro-type-tcp-server-port))
(defshadow-class udp-port::t (object-port::t) (macro-type-udp-port))
(defshadow-class directory-port::t (object-port::t) (macro-type-directory-port))
(defshadow-class event-queue-port::t (object-port::t) (macro-type-event-queue-port))
;; etc
(defshadow-class table::t () (macro-type-table))
(defshadow-class readenv::t () (macro-type-readenv))
(defshadow-class writeenv::t () (macro-type-writeenv))
(defshadow-class readtable::t () (macro-type-readtable))
(defshadow-class processor::t () (macro-type-processor))
(defshadow-class vm::t () (macro-type-vm))
(defshadow-class file-info::t () (macro-type-file-info))
(defshadow-class socket-info::t () (macro-type-socket-info))
(defshadow-class address-info::t () (macro-type-address-info))

(defsyntax (defpred stx)
  (syntax-case stx (:-)
    ((_ (id obj) :- type body ...)
     (with-syntax ((klass::t (resolve-type->type-descriptor stx #'type)))
       #'(def id
           (begin-annotation (@predicate klass::t)
             (lambda (obj) body ...)))))))

;; some utilities for the prelude part (meta-type definitions)
(defpred (atom? obj) :- :atom
  (and (immediate? obj)
       (not (char? obj))
       (not (fixnum? obj))))

(defpred (special? obj) :- :special
  (and (fx= (:- (##type obj) :fixnum) 2)
       (not (char? obj))
       (not (null? obj))
       (not (boolean? obj))
       (not (void? obj))
       (not (eof-object? obj))))

(defpred (sequence? obj) :- :sequence
  (or (vector? obj)
      (string? obj)
      (hvector? obj)))

(defpred (hvector? obj) :- :sequence
  (or (u8vector? obj)
      (s8vector? obj)
      (u16vector? obj)
      (s16vector? obj)
      (u32vector? obj)
      (s32vector? obj)
      (u64vector? obj)
      (s64vector? obj)
      (f32vector? obj)
      (f64vector? obj)))

(defpred (weak? obj) :- :weak
  (and (##subtyped? obj)
       (eq? (##subtype obj) (macro-subtype-weak))))

(defpred (object-port? obj) :- :object-port
  (##structure-instance-of? obj (##type-id (macro-type-object-port))))
(defpred (character-port? obj) :- :character-port
  (##structure-instance-of? obj (##type-id (macro-type-character-port))))
(defpred (device-port? obj) :- :device-port
  (##structure-instance-of? obj (##type-id (macro-type-device-port))))
(defpred (vector-port? obj) :- :vector-port
  (##structure-instance-of? obj (##type-id (macro-type-vector-port))))
(defpred (string-port? obj) :- :string-port
  (##structure-instance-of? obj (##type-id (macro-type-string-port))))
(defpred (u8vector-port? obj) :- :u8vector-port
  (##structure-instance-of? obj (##type-id (macro-type-u8vector-port))))
(defpred (raw-device-port? obj) :- :raw-device-port
  (##structure-instance-of? obj (##type-id (macro-type-raw-device-port))))
(defpred (tcp-server-port? obj) :- :tcp-server-port
  (##structure-instance-of? obj (##type-id (macro-type-tcp-server-port))))
(defpred (udp-port? obj) :- :udp-port
  (##structure-instance-of? obj (##type-id (macro-type-udp-port))))
(defpred (directory-port? obj) :- :directory-port
  (##structure-instance-of? obj (##type-id (macro-type-directory-port))))
(defpred (event-queue-port? obj) :- :event-queue-port
  (##structure-instance-of? obj (##type-id (macro-type-event-queue-port))))
(defpred (readenv? obj) :- :readenv
  (##structure-instance-of? obj (##type-id (macro-type-readenv))))
(defpred (writeenv? obj) :- :writeenv
  (##structure-instance-of? obj (##type-id (macro-type-writeenv))))
(defpred (vm? obj) :- :vm
  (##structure-instance-of? obj (##type-id (macro-type-vm))))
