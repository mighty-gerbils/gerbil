;;; -*- Gerbil -*-
;;; © vyzo
;;; Generics: builtin types
package: std/generic

(import :std/generic/macros)
(export #t)


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
(defprimitive-type <string> (string))
(defprimitive-type <symbol> (symbol))
(defprimitive-type <keyword> (keyword))
(defprimitive-type <u8vector> (u8vector))
(defprimitive-type <vector> (vector))
(defprimitive-type <values> (values))
(defprimitive-type <pair> (pair))
(defprimitive-type <procedure> (procedure))
(defprimitive-type <object> (object))

;; TODO: define all builtin gambit types
(defbuiltin-type <hash-table> (macro-type-table))
(defbuiltin-type <thread> (macro-type-thread))
(defbuiltin-type <mutex> (macro-type-mutex))
(defbuiltin-type <condvar> (macro-type-condvar))
(defbuiltin-type <port> (macro-type-port))
(defbuiltin-type <exception> (macro-type-exception))

;; _gambit#
(extern namespace: #f
  macro-type-table
  macro-type-thread
  macro-type-mutex
  macro-type-condvar
  macro-type-port
  macro-type-exception)
