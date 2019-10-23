;;; -*- Gerbil -*-
;;; © vyzo
;;; Generics: builtin types

(import :std/generic/macros)
(export #t)

;; primitive types
(defprimitive-type <t> ())
(defprimitive-type <null> (null))
(defprimitive-type <boolean> (boolean))
(defprimitive-type <void> (void))
(defprimitive-type <eof> (eof))
(defprimitive-type <char> (char))
(defprimitive-type <number> (number))
(defprimitive-type <real> (real number))
(defprimitive-type <integer> (integer real number))
(defprimitive-type <fixnum> (fixnum integer real number))
(defprimitive-type <bignum> (bignum integer real number))
(defprimitive-type <flonum> (flonum real number))
(defprimitive-type <rational> (ratnum real number))
(defprimitive-type <complex> (cpxnum number))
(defprimitive-type <vector> (vector))
(defprimitive-type <pair> (pair))
(defprimitive-type <string> (string))
(defprimitive-type <symbol> (symbol))
(defprimitive-type <keyword> (keyword))
(defprimitive-type <values> (values))
(defprimitive-type <box> (box))
(defprimitive-type <procedure> (procedure))
(defprimitive-type <continuation> (continuation))
(defprimitive-type <promise> (promise))
(defprimitive-type <foreign> (foreign))
(defprimitive-type <s8vector> (s8vector))
(defprimitive-type <u8vector> (u8vector))
(defprimitive-type <s16vector> (s16vector))
(defprimitive-type <u16vector> (u16vector))
(defprimitive-type <s32vector> (s32vector))
(defprimitive-type <u32vector> (u32vector))
(defprimitive-type <f32vector> (f32vector))
(defprimitive-type <s64vector> (s64vector))
(defprimitive-type <u64vector> (u64vector))
(defprimitive-type <f64vector> (f64vector))

;; Gerbil object virtual base type (structs and classes)
(defprimitive-type <object> (object))

;; builtin Gambit objects
;; type descriptors: record types and classes
(defbuiltin-type <type> ##type-type)
;; exception base class
(defbuiltin-type <exception> (macro-type-exception))
;; hash-tables and time
(defbuiltin-type <hash-table> (##structure-type (make-hash-table)))
(defbuiltin-type <time> (macro-type-time))
;; thread related objects
(defbuiltin-type <thread> (macro-type-thread))
(defbuiltin-type <thread-group> (macro-type-tgroup))
(defbuiltin-type <mutex> (macro-type-mutex))
(defbuiltin-type <condvar> (macro-type-condvar))
;; port hierarchy
(defbuiltin-type <port> (macro-type-port))
(defbuiltin-type <object-port> (macro-type-object-port))
(defbuiltin-type <character-port> (macro-type-character-port))
(defbuiltin-type <byte-port> (macro-type-byte-port))
(defbuiltin-type <device-port> (macro-type-device-port))
(defbuiltin-type <vector-port> (macro-type-vector-port))
(defbuiltin-type <string-port> (macro-type-string-port))
(defbuiltin-type <u8vector-port> (macro-type-u8vector-port))
(defbuiltin-type <raw-device-port> (macro-type-raw-device-port))
(defbuiltin-type <tcp-server-port> (macro-type-tcp-server-port))
(defbuiltin-type <directory-port> (macro-type-directory-port))
(defbuiltin-type <event-queue-port> (macro-type-event-queue-port))
;; etc
(defbuiltin-type <readtable> (macro-type-readtable))

;; _gambit#
(extern namespace: #f
  macro-type-exception
  macro-type-thread
  macro-type-tgroup
  macro-type-mutex
  macro-type-condvar
  macro-type-time
  macro-type-port
  macro-type-object-port
  macro-type-character-port
  macro-type-byte-port
  macro-type-device-port
  macro-type-vector-port
  macro-type-string-port
  macro-type-u8vector-port
  macro-type-raw-device-port
  macro-type-tcp-server-port
  macro-type-directory-port
  macro-type-event-queue-port
  macro-type-readtable)
