;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :gerbil/core prelude ssxi
prelude: :gerbil/compiler/ssxi
package: gerbil

;; declare builtin classes in case they are not there
;; this is necessary to recursively bootstrap from unoptimized stage1 builds
;; NOTE this must match :gerbil/runtime/mop-system-classess
(declare-builtin-classes
 (system: t::t ())
 (struct: class::t (t::t) ())
 (system: object::t (t::t))
 (system: immediate::t (t::t))
 (system: char::t (immediate::t))
 (system: boolean::t (immediate::t))
 (system: atom::t (immediate::t))
 (system: void::t (atom::t))
 (system: eof::t (atom::t))
 (system: true::t (boolean::t atom::t))
 (system: false::t (boolean::t atom::t))
 (system: special::t (atom::t))
 (system: number::t (t::t))
 (system: real::t (number::t))
 (system: integer::t (real::t))
 (system: fixnum::t (integer::t immediate::t))
 (system: bignum::t (integer::t))
 (system: ratnum::t (real::t))
 (system: flonum::t (real::t))
 (system: cpxnum::t (number::t))
 (system: symbolic::t (t::t))
 (system: symbol::t (symbolic::t))
 (system: keyword::t (symbolic::t))
 (system: list::t (t::t))
 (system: pair::t (list::t))
 (system: null::t (list::t atom::t))
 (system: sequence::t (t::t))
 (system: vector::t (sequence::t))
 (system: string::t (sequence::t))
 (system: hvector::t (sequence::t))
 (system: u8vector::t (hvector::t))
 (system: s8vector::t (hvector::t))
 (system: u16vector::t (hvector::t))
 (system: s16vector::t (hvector::t))
 (system: u32vector::t (hvector::t))
 (system: s32vector::t (hvector::t))
 (system: u64vector::t (hvector::t))
 (system: s64vector::t (hvector::t))
 (system: f32vector::t (hvector::t))
 (system: f64vector::t (hvector::t))
 (system: values::t (t::t))
 (system: box::t (t::t))
 (system: frame::t (t::t))
 (system: continuation::t (t::t))
 (system: promise::t (t::t))
 (system: weak::t (t::t))
 (system: foreign::t (t::t))
 (system: procedure::t (t::t))
 (system: return::t (t::t))
 (system: time::t (t::t))
 (system: thread::t (t::t))
 (system: thread-group::t (t::t))
 (system: mutex::t (t::t))
 (system: condvar::t (t::t))
 (system: port::t (t::t))
 (system: object-port::t (port::t))
 (system: character-port::t (object-port::t))
 (system: byte-port::t (character-port::t))
 (system: device-port::t (byte-port::t))
 (system: vector-port::t (object-port::t))
 (system: string-port::t (character-port::t))
 (system: u8vector-port::t (byte-port::t))
 (system: raw-device-port::t (port::t))
 (system: tcp-server-port::t (object-port::t))
 (system: udp-port::t (object-port::t))
 (system: directory-port::t (object-port::t))
 (system: event-queue-port::t (object-port::t))
 (system: table::t (t::t))
 (system: readenv::t (t::t))
 (system: writeenv::t (t::t))
 (system: readtable::t (t::t))
 (system: processor::t (t::t))
 (system: vm::t (t::t))
 (system: file-info::t (t::t))
 (system: socket-info::t (t::t))
 (system: address-info::t (t::t)))

;;; signatures for (gambit) scheme primitives
(declare-primitive-predicates
 ;; R5RS
 (boolean? boolean::t)
 (char? char::t)
 (eof-object? eof::t)
 (list? list::t)
 (not false::t)
 (null? null::t)
 (number? number::t)
 (pair? pair::t)
 (procedure? procedure::t)
 (string? string::t)
 (symbol? symbol::t)
 (vector? vector::t)

 ;; R7RS
 (bytevector? u8vector::t)
 (port? port::t)
 (promise? promise::t)
 (exact-integer? integer::t)

 ;; Gambit
 (address-info? address-info::t)
 (box? box::t)
 (condition-variable? condvar::t)
 (continuation? continuation::t)
 (f32vector? f32vector::t)
 (f64vector? f64vector::t)
 (file-info? file-info::t)
 (fixnum? fixnum::t)
 (flonum? flonum::t)
 (foreign? foreign::t)
 (keyword? keyword::t)
 (mutex? mutex::t)
 (processor? processor::t)
 (readtable? readtable::t)
 (s16vector? s16vector::t)
 (s32vector? s32vector::t)
 (s8vector? s8vector::t)
 (table? table::t)
 (thread-group? thread-group::t)
 (time? time::t)
 (thread? thread::t)
 (u16vector? u16vector::t)
 (u32vector? u32vector::t)
 (u8vector? u8vector::t))

(declare-primitive-procedures
 ;; R5RS
 (* number::t number::t effect: (pure))
 (+ number::t number::t effect: (pure))
 (- number::t number::t effect: (pure))
 (/ (number::t . number::t) number::t effect: (pure))
 (< number::t boolean::t effect: (pure))
 (<= number::t boolean::t effect: (pure))
 (= number::t boolean::t effect: (pure))
 (> number::t boolean::t effect: (pure))
 (>= number::t boolean::t effect: (pure))
 (abs (number::t) number::t effect: (pure))
 (acos (number::t) number::t effect: (pure))
 (angle (number::t) number::t effect: (pure))
 (append list::t list::t effect: (alloc) unchecked:)
 (apply [((procedure::t list::t) t::t unchecked:)
         ((procedure::t t::t . t::t) t::t)])
 (asin (number::t) number::t effect: (pure))
 (assoc [((t::t list::t) t::t effect: (pure))
         ((t::t list::t procedure::t) t::t effect: (pure))])
 (assq [((t::t list::t) t::t effect: (pure))
        ((t::t list::t procedure::t) t::t effect: (pure))])
 (assv [((t::t list::t) t::t effect: (pure))
        ((t::t list::t procedure::t) t::t effect: (pure))])
 (atan (number::t number::t) number::t effect: (pure))
 (caaaar (pair::t) t::t effect: (pure))
 (caaadr (pair::t) t::t effect: (pure))
 (caaar (pair::t) t::t effect: (pure))
 (caadar (pair::t) t::t effect: (pure))
 (caaddr (pair::t) t::t effect: (pure))
 (caadr (pair::t) t::t effect: (pure))
 (caar (pair::t) t::t effect: (pure))
 (cadaar (pair::t) t::t effect: (pure))
 (cadadr (pair::t) t::t effect: (pure))
 (cadar (pair::t) t::t effect: (pure))
 (caddar (pair::t) t::t effect: (pure))
 (cadddr (pair::t) t::t effect: (pure))
 (caddr (pair::t) t::t effect: (pure))
 (cadr (pair::t) t::t effect: (pure))
 (call-with-current-continuation (procedure::t) t::t effect: (continuation-capture) unchecked:)
 (call-with-input-file (t::t procedure::t) t::t effect: (io) unchecked:)
 (call-with-output-file (t::t procedure::t) t::t effect: (io) unchecked:)
 (car (pair::t) t::t effect: (pure) unchecked:)
 (cdaaar (pair::t) t::t effect: (pure))
 (cdaadr (pair::t) t::t effect: (pure))
 (cdaar (pair::t) t::t effect: (pure))
 (cdadar (pair::t) t::t effect: (pure))
 (cdaddr (pair::t) t::t effect: (pure))
 (cdadr (pair::t) t::t effect: (pure))
 (cdar (pair::t) t::t effect: (pure))
 (cddaar (pair::t) t::t effect: (pure))
 (cddadr (pair::t) t::t effect: (pure))
 (cddar (pair::t) t::t effect: (pure))
 (cdddar (pair::t) t::t effect: (pure))
 (cddddr (pair::t) t::t effect: (pure))
 (cdddr (pair::t) t::t effect: (pure))
 (cddr (pair::t) t::t effect: (pure))
 (cdr (pair::t) t::t effect: (pure) unchecked:)
 (ceiling (number::t) number::t effect: (pure))
 (char->integer (char::t) fixnum::t effect: (pure) unchecked:)
 (char-alphabetic? (char::t) boolean::t effect: (pure))
 (char-ci<=? (char::t char::t . char::t) boolean::t effect: (pure) unchecked:)
 (char-ci<? (char::t char::t . char::t) boolean::t effect: (pure) unchecked:)
 (char-ci=? (char::t char::t . char::t) boolean::t effect: (pure) unchecked:)
 (char-ci>=? (char::t char::t . char::t) boolean::t effect: (pure) unchecked:)
 (char-ci>? (char::t char::t . char::t) boolean::t effect: (pure) unchecked:)
 (char-downcase (char::t) char::t effect: (pure))
 (char-lower-case? (char::t) boolean::t effect: (pure))
 (char-numeric? (char::t) boolean::t effect: (pure))
 (char-ready? (char::t) boolean::t effect: (pure))
 (char-upcase (char::t) char::t effect: (pure))
 (char-upper-case? (char::t) boolean::t effect: (pure))
 (char-whitespace? (char::t) boolean::t effect: (pure))
 (char<=? (char::t char::t . char::t) boolean::t effect: (pure) unchecked:)
 (char<? (char::t char::t . char::t) boolean::t effect: (pure) unchecked:)
 (char=? (char::t char::t . char::t) boolean::t effect: (pure) unchecked:)
 (char>=? (char::t char::t . char::t) boolean::t effect: (pure) unchecked:)
 (char>? (char::t char::t . char::t) boolean::t effect: (pure) unchecked:)
 (close-input-port (port::t) void::t effect: (io))
 (close-output-port (port::t) void::t effect: (io))
 (complex? (t::t) boolean::t effect: (pure))
 (cons (t::t t::t) pair::t effect: (alloc))
 (cos (number::t) number::t effect: (pure))
 (current-input-port [(() port::t)
                      ((port::t) void::t)])
 (current-output-port [(() port::t)
                       ((port::t) void::t)])
 (denominator (number::t) number::t effect: (pure))
 (display [((t::t) void::t effect: (io))
           ((t::t port::t) void::t effect: (io))])
 (eq? (t::t t::t) boolean::t effect: (pure))
 (equal? (t::t t::t) boolean::t effect: (pure))
 (eqv? (t::t t::t) boolean::t effect: (pure))
 (even? (number::t) boolean::t effect: (pure))
 (exact->inexact (number::t) number::t effect: (pure))
 (exact? (number::t) boolean::t effect: (pure))
 (exp (number::t) number::t effect: (pure))
 (expt (number::t number::t) number::t effect: (pure))
 (floor (number::t) number::t effect: (pure))
 (for-each [((procedure::t list::t) void::t unchecked:)
            ((procedure::t list::t . list::t) void::t unchecked:)])
 (force (t::t) t::t)
 (gcd (number::t number::t) number::t effect: (pure))
 (imag-part (number::t) number::t effect: (pure))
 (inexact->exact (number::t) number::t effect: (pure))
 (inexact? (number::t) boolean::t effect: (pure))
 (integer? (t::t) boolean::t effect: (pure))
 (input-port? (t::t) boolean::t effect: (pure))
 (integer->char (fixnum::t) char::t effect: (pure))
 (lcm (number::t number::t) number::t effect: (pure))
 (length (list::t) fixnum::t effect: (pure) unchecked:)
 (list t::t list::t effect: (alloc))
 (list->string (list::t) string::t effect: (alloc))
 (list->vector (list::t) vector::t effect: (alloc))
 (list-ref (list::t fixnum::t) t::t effect: (pure))
 (list-tail (list::t fixnum::t) list::t effect: (pure))
 (load (string::t) void::t)
 (log [((number::t) number::t effect: (pure))
       ((number::t number::t) number::t effect: (pure))])
 (magnitude (number::t) number::t effect: (pure))
 (make-polar (number::t number::t) number::t effect: (pure))
 (make-rectangular (number::t number::t) number::t effect: (pure))
 (make-string [((fixnum::t) string::t unchecked:)
               ((fixnum::t char::t) string::t unchecked:)])
 (make-vector [((fixnum::t) vector::t unchecked:)
               ((fixnum::t t::t) vector::t unchecked:)])
 (map [((procedure::t list::t) list::t unchecked:)
       ((procedure::t list::t . list::t) list::t unchecked:)])
 (max number::t number::t effect: (pure))
 (member [((t::t list::t) t::t effect: (pure) unchecked:)
          ((t::t list::t procedure::t) t::t unchecked:)])
 (memq [((t::t list::t) t::t effect: (pure) unchecked:)
        ((t::t list::t procedure::t) t::t unchecked:)])
 (memv [((t::t list::t) t::t effect: (pure) unchecked:)
        ((t::t list::t procedure::t) t::t unchecked:)])
 (min number::t number::t effect: (pure))
 (modulo (number::t number::t) number::t effect: (pure))
 (negative? (number::t) boolean::t effect: (pure))
 (newline [(() void::t effect: (io))
           ((port::t) void::t effect: (io))])
 (number->string [((number::t) string::t effect: (alloc) unchecked:)
                  ((number::t fixnum::t) string::t effect: (alloc) unchecked:)])
 (numerator (number::t) number::t effect: (pure))
 (odd? (number::t) boolean::t effect: (pure))
 (open-input-file (t::t) port::t effect: (io))
 (open-output-file (t::t) port::t effect: (io))
 (output-port? (t::t) boolean::t effect: (pure))
 (peek-char [(() t::t effect: (io))
             ((port::t) t::t effect: (io))])
 (positive? (number::t) boolean::t effect: (pure))
 (quotient (number::t number::t) number::t effect: (pure))
 (rational? (number::t) boolean::t effect: (pure))
 (rationalize (number::t) number::t effect: (pure))
 (read [(() t::t effect: (io) unchecked:)
        ((port::t) t::t effect: (io))])
 (read-char [(() t::t effect: (io) unchecked:)
             ((port::t) t::t effect: (io))])
 (real-part (number::t) number::t effect: (pure))
 (real? (number::t) boolean::t effect: (pure))
 (remainder (number::t number::t) number::t effect: (pure))
 (reverse (list::t) list::t effect: (alloc) unchecked:)
 (round (number::t) number::t effect: (pure))
 (set-car! (pair::t t::t) void::t effect: (mut) unchecked:)
 (set-cdr! (pair::t t::t) void::t effect: (mut) unchecked:)
 (sin (number::t) boolean::t effect: (pure))
 (sqrt (number::t) boolean::t effect: (pure))
 (string char::t string::t effect: (alloc) unchecked:)
 (string->list [((string::t) list::t effect: (alloc) unchecked:)
                ((string::t fixnum::t) list::t effect: (alloc))
                ((string::t fixnum::t fixnum::t) list::t effect: (alloc))])
 (string->number [((string::t) number::t effect: (pure) unchecked:)
                  ((string::t fixnum::t) number::t effect: (pure) unchecked:)])
 (string->symbol (string::t) symbol::t effect: (pure) unchecked:)
 (string-append string::t string::t effect: (alloc) unchecked:)
 (string-ci<=? (string::t string::t . string::t) boolean::t effect: (pure) unchecked:)
 (string-ci<? (string::t string::t . string::t) boolean::t effect: (pure) unchecked:)
 (string-ci=? (string::t string::t . string::t) boolean::t effect: (pure) unchecked:)
 (string-ci>=? (string::t string::t . string::t) boolean::t effect: (pure) unchecked:)
 (string-ci>? (string::t string::t . string::t) boolean::t effect: (pure) unchecked:)
 (string-copy [((string::t) string::t effect: (alloc) unchecked:)
               ((string::t fixnum::t) string::t effect: (alloc))
               ((string::t fixnum::t fixnum::t) string::t effect: (alloc))])
 (string-fill! [((string::t char::t) string::t effect: (mut) unchecked:)
                ((string::t char::t fixnum::t) string::t effect: (mut))
                ((string::t char::t fixnum::t fixnum::t) string::t effect: (mut))])
 (string-length (string::t) fixnum::t effect: (pure) unchecked:)
 (string-ref (string::t fixnum::t) char::t effect: (pure))
 (string-set! (string::t fixnum::t char::t) void::t effect: (mut))
 (string<=? (string::t string::t . string::t) boolean::t effect: (pure) unchecked:)
 (string<? (string::t string::t . string::t) boolean::t effect: (pure) unchecked:)
 (string=? (string::t string::t . string::t) boolean::t effect: (pure) unchecked:)
 (string>=? (string::t string::t . string::t) boolean::t effect: (pure) unchecked:)
 (string>? (string::t string::t . string::t) boolean::t effect: (pure) unchecked:)
 (substring (string::t fixnum::t fixnum::t) string::t effect: (alloc))
 (symbol->string (symbol::t) string::t effect: (pure) unchecked:)
 (tan (number::t number::t) number::t)
 (truncate (number::t) number::t)
 (vector t::t vector::t)
 (vector->list [((vector::t) list::t effect: (alloc) unchecked:)
                ((vector::t fixnum::t) list::t effect: (alloc))
                ((vector::t fixnum::t fixnum::t) list::t effect: (alloc))])
 (vector-fill! [((vector::t char::t) vector::t effect: (mut) unchecked:)
                ((vector::t char::t fixnum::t) vector::t effect: (mut))
                ((vector::t char::t fixnum::t fixnum::t) vector::t effect: (mut))])
 (vector-length (vector::t) fixnum::t effect: (pure) unchecked:)
 (vector-ref (vector::t fixnum::t) t::t effect: (pure))
 (vector-set! (vector::t fixnum::t t::t) void::t effect: (mut))
 (with-input-from-file (t::t procedure::t) t::t effect: (io) unchecked:)
 (with-output-to-file (t::t procedure::t) t::t effect: (io) unchecked:)
 (write [((t::t) void::t effect: (io) unchecked:)
         ((t::t port::t) void::t effect: (io))])
 (write-char [((char::t) void::t effect: (io) unchecked:)
              ((char::t port::t) void::t effect: (io))])
 (zero? (number::t) boolean::t effect: (pure))
 (call-with-values (procedure::t procedure::t) t::t unchecked:)
 (dynamic-wind (procedure::t procedure::t procedure::t) t::t unchecked:)
 (eval (t::t) t::t)
 (values [(() t::t effect: (pure))
          ((t::t) t::t effect: (pure))
          ((t::t . t::t) values::t effect: (pure))])

 ;; R7RS
 (balanced-quotient (number::t number::t) number::t effect: (pure))
 (balanced-remainder (number::t number::t) number::t effect: (pure))
 (balanced/ (number::t number::t) number::t effect: (pure))
 (binary-port? (t::t) boolean::t effect: (pure))
 (boolean=? (boolean::t boolean::t) boolean::t effect: (pure))
 (bytevector fixnum::t u8vector::t effect: (alloc))
 (bytevector-append u8vector::t u8vector::t effect: (alloc) unchecked: ##u8vector-append)
 (bytevector-copy [((u8vector::t) u8vector::t effect: (alloc) unchecked: ##u8vector-copy)
                   ((u8vector::t fixnum::t) u8vector::t effect: (alloc))
                   ((u8vector::t fixnum::t fixnum::t) u8vector::t effect: (alloc))])
 (bytevector-copy! [((u8vector::t fixnum::t u8vector::t) void::t effect: (mut))
                    ((u8vector::t fixnum::t u8vector::t fixnum::t) void::t effect: (mut))
                    ((u8vector::t fixnum::t u8vector::t fixnum::t fixnum::t) void::t effect: (mut))])
 (bytevector-length (u8vector::t) fixnum::t effect: (pure) unchecked: ##u8vector-length)
 (bytevector-u8-ref (u8vector::t fixnum::t) fixnum::t effect: (pure))
 (bytevector-u8-set! (u8vector::t fixnum::t fixnum::t) void::t effect: (mut))

 (call-with-port (port::t procedure::t) t::t effect: (io) unchecked:)
 (ceiling-quotient (number::t number::t) number::t effect: (pure))
 (ceiling-remainder (number::t number::t) number::t effect: (pure))
 (ceiling/ (number::t number::t) number::t effect: (pure))
 (char-foldcase (char::t) char::t effect: (pure) unchecked:)
 (close-port (port::t) void::t effect: (io) unchecked:)
 (command-line () list::t effect: (pure))
 (current-error-port [(() port::t)
                      ((port::t) void::t)])
 (current-jiffy () fixnum::t)
 (current-second () fixnum::t )
 (delete-file (string::t) void::t unchecked:)
 (digit-value (char::t) fixnum::t unchecked:)
 (emergency-exit [(() void::t effect: (abort))
                  ((t::t) void::t effect: (abort))])
 (eof-object () eof::t effect: (pure))
 (error-object-irritants (t::t) list::t effect: (pure))
 (error-object-message (t::t) string::t effect: (pure))
 (error-object? (t::t) boolean::t effect: (pure))
 (euclidean-quotient (number::t number::t) number::t effect: (pure))
 (euclidean-remainder (number::t number::t) number::t effect: (pure))
 (euclidean/ (number::t number::t) number::t effect: (pure))
 (exact (number::t) number::t effect: (pure))
 (exact-integer-sqrt (number::t) number::t effect: (pure))
 (exit [(() void::t effect: (abort))
        ((t::t) void::t effect: (abort))])
 (features () list::t)
 (file-error? (t::t) boolean::t effect: (pure))
 (file-exists? (string::t) boolean::t unchecked:)
 (finite? (number::t) boolean::t effect: (pure))
 (floor-quotient (number::t number::t) number::t effect: (pure))
 (floor-remainder (number::t number::t) number::t effect: (pure))
 (floor/ (number::t number::t) number::t effect: (pure))
 (flush-output-port [(() void::t effect: (io))
                     ((port::t) void::t effect: (io))])
 (get-environment-variable (string::t) string::t)
 (get-environment-variables () list::t)
 (get-output-bytevector (port::t) u8vector::t effect: (io))
 (get-output-string (port::t) string::t effect: (io))
 (inexact (number::t) number::t)
 (infinite? (number::t) boolean::t effect: (pure))
 (input-port-open? (port::t) boolean::t effect: (io))
 (jiffies-per-second () fixnum::t effect: (pure))
 (list-copy (list::t) list::t effect: (alloc) unchecked:)
 (list-set! (list::t fixnum::t t::t) void::t effect: (mut))
 (make-bytevector [((fixnum::t) u8vector::t unchecked: ##make-u8vector)
                   ((fixnum::t char::t) u8vector::t unchecked: ##make-u8vector)])
 (make-list [((fixnum::t) list::t)
             ((fixnum::t t::t) list::t)])
 (make-parameter [((t::t) procedure::t)
                  ((t::t procedure::t) procedure::t)
                  ((t::t procedure::t procedure::t) procedure::t)])
 ;;make-promise ; incompatible semantics between r7rs and Gerbil
 (nan? (number::t) boolean::t effect: (pure))
 (open-binary-input-file (string::t) port::t effect: (io))
 (open-binary-output-file (string::t) port::t effect: (io))
 (open-input-bytevector (u8vector::t) port::t effect: (io))
 (open-input-string (string::t) port::t effect: (io))
 (open-output-bytevector [(() port::t effect: (io))
                          ((t::t) port::t effect: (io))])
 (open-output-string [(() port::t effect: (io))
                      ((t::t) port::t effect: (io))])
 (output-port-open? (port::t) boolean::t effect: (io))
 (peek-u8 [(() t::t effect: (io))
           ((port::t) t::t effect: (io))])
 (read-bytevector [((fixnum::t) u8vector::t effect: (io))
                   ((fixnum::t port::t) u8vector::t effect: (io))])
 (read-bytevector! [((u8vector::t) fixnum::t effect: (io mut))
                    ((u8vector::t port::t) fixnum::t effect: (io mut))
                    ((u8vector::t port::t fixnum::t) fixnum::t effect: (io mut))
                    ((u8vector::t port::t fixnum::t fixnum::t) fixnum::t effect: (io mut))])
 (read-error? (t::t) boolean::t effect: (pure))
 (read-line [(() t::t effect: (io))
             ((port::t) t::t effect: (io))
             ((port::t t::t) t::t effect: (io))
             ((port::t t::t boolean::t) t::t effect: (io))
             ((port::t t::t boolean::t fixnum::t) t::t effect: (io))])
 (read-string [((fixnum::t) string::t effect: (io))
               ((fixnum::t port::t) string::t effect: (io))])
 (read-u8 [(() t::t effect: (io))
           ((port::t) t::t effect: (io))])
 (round-quotient (number::t number::t) number::t effect: (pure))
 (round-remainder (number::t number::t) number::t effect: (pure))
 (round/ (number::t number::t) number::t effect: (pure))
 (square (number::t) number::t effect: (pure))
 (string->utf8 [((string::t) u8vector::t effect: (alloc) unchecked:)
                ((string::t fixnum::t) u8vector::t effect: (alloc))
                ((string::t fixnum::t fixnum::t) u8vector::t effect: (alloc))])
 (string->vector [((string::t) vector::t effect: (alloc))
                  ((string::t fixnum::t) vector::t effect: (alloc))
                  ((string::t fixnum::t fixnum::t) vector::t effect: (alloc))])
 (string-copy! [((string::t fixnum::t string::t) void::t effect: (mut))
                ((string::t fixnum::t string::t fixnum::t) void::t effect: (mut))
                ((string::t fixnum::t string::t fixnum::t fixnum::t) void::t effect: (mut))])
 (string-downcase (string::t) string::t effect: (alloc) unchecked:)
 (string-foldcase (string::t) string::t effect: (alloc) unchecked:)
 (string-for-each (procedure::t string::t . string::t) void::t)
 (string-map (procedure::t string::t . string::t) string::t)
 (string-upcase (string::t) string::t effect: (alloc) unchecked:)
 (symbol=? (symbol::t symbol::t) boolean::t effect: (pure) unchecked:)
 (textual-port? (t::t) boolean::t effect: (pure))
 (truncate-quotient (number::t number::t) number::t effect: (pure))
 (truncate-remainder (number::t number::t) number::t effect: (pure))
 (truncate/ (number::t number::t) number::t effect: (pure))
 (u8-ready? [(() boolean::t effect: (io))
             ((port::t) boolean::t effect: (io))])
 (utf8->string [((u8vector::t) string::t effect: (alloc) unchecked:)
                ((u8vector::t fixnum::t) string::t effect: (alloc))
                ((u8vector::t fixnum::t fixnum::t) string::t effect: (alloc))])
 (vector->string [((vector::t) string::t effect: (alloc))
                  ((vector::t fixnum::t) string::t effect: (alloc))
                  ((vector::t fixnum::t fixnum::t) string::t effect: (alloc))])
 (vector-append vector::t vector::t effect: (alloc) unchecked:)
 (vector-copy [((vector::t) vector::t effect: (alloc) unchecked:)
               ((vector::t fixnum::t) vector::t effect: (alloc))
               ((vector::t fixnum::t fixnum::t) vector::t effect: (alloc))])
 (vector-copy! [((vector::t fixnum::t vector::t) void::t effect: (mut))
                ((vector::t fixnum::t vector::t fixnum::t) void::t effect: (mut))
                ((vector::t fixnum::t vector::t fixnum::t fixnum::t) void::t effect: (mut))])
 (vector-for-each (procedure::t vector::t . vector::t) void::t)
 (vector-map (procedure::t vector::t . vector::t) vector::t)
 (write-bytevector [((u8vector::t) void::t effect: (io))
                    ((u8vector::t port::t) void::t effect: (io))
                    ((u8vector::t port::t fixnum::t) void::t effect: (io))
                    ((u8vector::t port::t fixnum::t fixnum::t) void::t effect: (io))])
 (write-shared [((t::t) void::t effect: (io))
                ((t::t port::t) void::t effect: (io))])
 (write-simple [((t::t) void::t effect: (io))
                ((t::t port::t) void::t effect: (io))])
 (write-string [((string::t) void::t effect: (io))
                ((string::t port::t) void::t effect: (io))
                ((string::t port::t fixnum::t) void::t effect: (io))
                ((string::t port::t fixnum::t fixnum::t) void::t effect: (io))])
 (write-u8 [((fixnum::t) void::t effect: (io))
            ((fixnum::t port::t) void::t effect: (io))])
 ;; Gambit
 (abort (t::t) void::t effect: (abort))
 (acosh (number::t) number::t effect: (pure))
 (address-info-family (address-info::t) symbol::t effect: (pure))
 (address-info-protocol (address-info::t) symbol::t effect: (pure))
 (address-info-socket-info (address-info::t) socket-info::t effect: (pure))
 (address-info-socket-type (address-info::t) symbol::t effect: (pure))
 (address-infos t::t list::t effect: (io))
 (all-bits-set? (integer::t integer::t) boolean::t effect: (pure))
 (any [((procedure::t list::t) t::t unchecked:)
       ((procedure::t list::t . list::t) t::t unchecked:)])
 (any-bit-set? (integer::t integer::t) boolean::t effect: (pure))
 (any-bits-set?  (integer::t integer::t) boolean::t effect: (pure))
 (append! list::t list::t effect: (mut))
 (append-reverse (list::t list::t) list::t effect: (alloc) unchecked:)
 (append-reverse! (list::t list::t) list::t effect: (mut) unchecked:)
 (apropos [((string::t) void::t effect: (io))
           ((string::t port::t) void::t effect: (io))])
 (arithmetic-shift (integer::t integer::t) integer::t effect: (pure))
 (asinh (number::t) number::t effect: (pure))
 (atanh (number::t) number::t effect: (pure))
 (bit-count (integer::t) fixnum::t effect: (pure))
 (bit-field (integer::t fixnum::t fixnum::t) integer::t effect: (pure))
 (bit-field-any? (integer::t fixnum::t fixnum::t) boolean::t effect: (pure))
 (bit-field-clear (integer::t fixnum::t fixnum::t) integer::t effect: (pure))
 (bit-field-every? (integer::t fixnum::t fixnum::t) boolean::t effect: (pure))
 (bit-field-replace (integer::t integer::t fixnum::t fixnum::t) integer::t effect: (pure))
 (bit-field-replace-same (integer::t integer::t fixnum::t fixnum::t) integer::t effect: (pure))
 (bit-field-reverse (integer::t fixnum::t fixnum::t) integer::t effect: (pure))
 (bit-field-rotate (integer::t integer::t fixnum::t fixnum::t) integer::t effect: (pure))
 (bit-field-set (integer::t fixnum::t fixnum::t) integer::t effect: (pure))
 (bit-set? (integer::t integer::t) boolean::t effect: (pure))
 (bit-swap (fixnum::t fixnum::t integer::t) integer::t effect: (pure))
 (bits boolean::t integer::t effect: (pure))
 (bits->list [((integer::t) list::t effect: (alloc))
              ((integer::t fixnum::t) list::t effect: (alloc))])
 (bits->vector [((integer::t) vector::t effect: (alloc))
                ((integer::t fixnum::t) vector::t effect: (alloc))])
 (bitwise-and integer::t integer::t effect: (pure))
 (bitwise-andc1 integer::t integer::t effect: (pure))
 (bitwise-andc2 integer::t integer::t effect: (pure))
 (bitwise-eqv (integer::t integer::t) boolean::t effect: (pure))
 (bitwise-fold (procedure::t t::t integer::t) t::t)
 (bitwise-for-each (procedure::t integer::t) t::t)
 (bitwise-if (integer::t integer::t integer::t) integer::t effect: (pure))
 (bitwise-ior integer::t integer::t effect: (pure))
 (bitwise-merge (integer::t integer::t integer::t) integer::t effect: (pure))
 (bitwise-nand integer::t integer::t effect: (pure))
 (bitwise-nor integer::t integer::t effect: (pure))
 (bitwise-not (integer::t) integer::t effect: (pure))
 (bitwise-orc1 integer::t integer::t effect: (pure))
 (bitwise-orc2 integer::t integer::t effect: (pure))
 (bitwise-unfold (procedure::t procedure::t procedure::t t::t) list::t effect: (pure))
 (bitwise-xor integer::t integer::t effect: (pure))
 (box (t::t) box::t effect: (alloc))
 ;;break
 (call-with-input-process (t::t procedure::t) t::t effect: (io))
 (call-with-input-string (t::t procedure::t) t::t effect: (io))
 (call-with-input-u8vector (t::t procedure::t) t::t effect: (io))
 (call-with-input-vector (t::t procedure::t) t::t effect: (io))
 (call-with-output-process (t::t procedure::t) t::t effect: (io))
 (call-with-output-string [((procedure::t) t::t effect: (io))
                           ((t::t procedure::t) t::t effect: (io))])
 (call-with-output-u8vector [((procedure::t) t::t effect: (io))
                             ((t::t procedure::t) t::t effect: (io))])
 (call-with-output-vector [((procedure::t) t::t effect: (io))
                           ((t::t procedure::t) t::t effect: (io))])
 (call/cc (procedure::t) t::t effect: (continuation-capture) unchecked: ##call-with-current-continuation)
 (car+cdr (pair::t) values::t effect: (pure))
 ;;cfun-conversion-exception-arguments
 ;;cfun-conversion-exception-code
 ;;cfun-conversion-exception-message
 ;;cfun-conversion-exception-procedure
 ;;cfun-conversion-exception?
 ;; TODO uncomment these for char-set support [needs system class too]
 ;; char-set
 ;; char-set->list
 ;; char-set->string
 ;; char-set-adjoin
 ;; char-set-adjoin!
 ;; char-set-any
 ;; char-set-complement
 ;; char-set-complement!
 ;; char-set-contains?
 ;; char-set-copy
 ;; char-set-count
 ;; char-set-cursor
 ;; char-set-cursor-next
 ;; char-set-delete
 ;; char-set-delete!
 ;; char-set-diff+intersection
 ;; char-set-diff+intersection!
 ;; char-set-difference
 ;; char-set-difference!
 ;; char-set-every
 ;; char-set-filter
 ;; char-set-filter!
 ;; char-set-fold
 ;; char-set-for-each
 ;; char-set-hash
 ;; char-set-intersection
 ;; char-set-intersection!
 ;; char-set-map
 ;; char-set-ref
 ;; char-set-size
 ;; char-set-unfold
 ;; char-set-unfold!
 ;; char-set-union
 ;; char-set-union!
 ;; char-set-xor
 ;; char-set-xor!
 ;; char-set<=
 ;; char-set=
 ;; char-set?
 (circular-list t::t list::t)
 (circular-list? (t::t) boolean::t effect: (pure))
 (clear-bit-field (fixnum::t fixnum::t integer::t) integer::t effect: (pure))
 ;; command-args
 ;; command-name
 ;; compilation-target
 ;; compile-file
 ;; compile-file-to-target
 (concatenate [((list::t) list::t effect: (alloc))
               ((list::t list::t) list::t effect: (alloc))])
 (concatenate! [((list::t) list::t effect: (mut))
                ((list::t list::t) list::t effect: (mut))])
 (condition-variable-broadcast! (condvar::t) void::t effect: (io))
 (condition-variable-name (condvar::t) t::t effect: (pure))
 (condition-variable-signal! (condvar::t) void::t effect: (io))
 (condition-variable-specific (condvar::t) t::t effect: (pure))
 (condition-variable-specific-set! (condvar::t t::t) void::t effect: (mut))
 (configure-command-string () string::t effect: (pure))
 (conjugate (number::t) number::t effect: (pure))
 (cons* (t::t t::t . t::t) pair::t effect: (alloc))
 (console-port () port::t)
 (continuation-capture (procedure::t) t::t effect: (continuation-capture) unchecked: ##continuation-capture)
 (continuation-graft (continuation::t procedure::t . t::t) t::t effect: (abort) unchecked:)
 (continuation-return (continuation::t . t::t) t::t effect: (abort) unchecked:)
 (copy-bit (fixnum::t integer::t boolean::t) integer::t effect: (pure))
 (copy-bit-field (fixnum::t fixnum::t integer::t integer::t) integer::t effect: (pure))
 (copy-file (string::t string::t) void::t effect: (io) unchecked:)
 (cosh (number::t) number::t effect: (pure))
 (cpu-time () flonum::t effect: (io))
 (create-directory (t::t) void::t effect: (io))
 (create-fifo (t::t) void::t effect: (io))
 (create-link (string::t string::t) void::t effect: (io) unchecked:)
 (create-symbolic-link (string::t string::t) void::t effect: (io) unchecked:)
 (create-temporary-directory (t::t) void::t effect: (io))
 (current-directory [(() string::t)
                     ((string::t) void::t)])
 (current-exception-handler [(() procedure::t)
                             ((procedure::t) void::t)])
 (current-processor () processor::t)
 (current-readtable [(() readtable::t)
                     ((readtable::t) void::t)])
 (current-thread () thread::t)
 (current-time () time::t)
 (current-user-interrupt-handler [(() procedure::t)
                                  ((procedure::t) void::t)])
 ;; datum->syntax
 ;;datum-parsing-exception-kind
 ;;datum-parsing-exception-parameters
 ;;datum-parsing-exception-readenv
 ;;datum-parsing-exception?
 ;;dead-end
 ;;deadlock-exception?
 ;;default-user-interrupt-handler
 ;;defer-user-interrupts
 (delete [((t::t list::t) list::t effect: (alloc))
          ((t::t list::t procedure::t) list::t effect: (alloc))])
 (delete! [((t::t list::t) list::t effect: (mut))
           ((t::t list::t procedure::t) list::t effect: (mut))])
 (delete-directory (string::t) void::t effect: (io) unchecked:)
 (delete-file-or-directory [((string::t) void::t effect: (io) unchecked:)
                            ((string::t boolean::t) void::t effect: (io) unchecked:)])
 (directory-files [(() list::t effect: (io))
                   ((t::t) list::t effect: (io))])
 ;;display-continuation-backtrace
 ;;display-continuation-dynamic-environment
 ;;display-continuation-environment
 (display-exception [((t::t) void::t effect: (io))
                     ((t::t port::t) void::t effect: (io))])
 ;;display-exception-in-context
 ;;display-procedure-environment
 ;;divide-by-zero-exception-arguments
 ;;divide-by-zero-exception-procedure
 ;;divide-by-zero-exception?
 (dotted-list? (t::t) boolean::t effect: (pure))
 (drop (t::t fixnum::t) t::t effect: (pure))
 (drop-right (t::t fixnum::t) t::t effect: (alloc))
 (drop-right! (t::t fixnum::t) t::t effect: (mut))
 (eighth (list::t) t::t effect: (pure))
 ;;end-of-char-set?
 (eq?-hash (t::t) fixnum::t effect: (io))
 (equal?-hash (t::t) fixnum::t effect: (pure))
 (eqv?-hash (t::t) fixnum::t effect: (io))
 ;;err-code->string
 ;;error
 ;;error-exception-message
 ;;error-exception-parameters
 ;;error-exception?
 (every (procedure::t list::t . list::t) boolean::t unchecked:)
 (every-bit-set? (integer::t integer::t) boolean::t effect: (pure))
 ;;executable-path
 ;;expression-parsing-exception-kind
 ;;expression-parsing-exception-parameters
 ;;expression-parsing-exception-source
 ;;expression-parsing-exception?
 (extract-bit-field (fixnum::t fixnum::t integer::t) integer::t effect: (pure))
 (f32vector flonum::t f32vector::t effect: (alloc))
 (f32vector->list (f32vector::t) list::t effect: (alloc))
 (f32vector-append f32vector::t f32vector::t effect: (alloc))
 (f32vector-concatenate (list::t) f32vector::t effect: (alloc))
 (f32vector-copy [((f32vector::t) f32vector::t effect: (alloc) unchecked:)
                  ((f32vector::t fixnum::t) f32vector::t effect: (alloc))
                  ((f32vector::t fixnum::t fixnum::t) f32vector::t effect: (alloc))])
 (f32vector-copy! [((f32vector::t fixnum::t f32vector::t) void::t effect: (mut))
                   ((f32vector::t fixnum::t f32vector::t fixnum::t) void::t effect: (mut))
                   ((f32vector::t fixnum::t f32vector::t fixnum::t fixnum::t) void::t effect: (mut))])
 (f32vector-fill! [((f32vector::t flonum::t) void::t effect: (mut) unchecked:)
                   ((f32vector::t flonum::t fixnum::t) void::t effect: (mut))
                   ((f32vector::t flonum::t fixnum::t fixnum::t) void::t effect: (mut))])
 (f32vector-length (f32vector::t) fixnum::t effect: (pure) unchecked:)
 (f32vector-ref (f32vector::t fixnum::t) flonum::t effect: (pure))
 (f32vector-set (f32vector::t fixnum::t) f32vector::t effect: (alloc))
 (f32vector-set! (f32vector::t fixnum::t flonum::t) void::t effect: (mut))
 (f32vector-shrink! (f32vector::t fixnum::t) void::t effect: (mut))
 (f32vector-swap! (f32vector::t fixnum::t fixnum::t) void::t effect: (mut))
 (f64vector flonum::t f64vector::t effect: (alloc))
 (f64vector->list (f64vector::t) list::t effect: (alloc))
 (f64vector-append f64vector::t f64vector::t effect: (alloc))
 (f64vector-concatenate (list::t) f64vector::t effect: (alloc))
 (f64vector-copy [((f64vector::t) f64vector::t effect: (alloc) unchecked:)
                  ((f64vector::t fixnum::t) f64vector::t effect: (alloc))
                  ((f64vector::t fixnum::t fixnum::t) f64vector::t effect: (alloc))])
 (f64vector-copy! [((f64vector::t fixnum::t f64vector::t) void::t effect: (mut))
                   ((f64vector::t fixnum::t f64vector::t fixnum::t) void::t effect: (mut))
                   ((f64vector::t fixnum::t f64vector::t fixnum::t fixnum::t) void::t effect: (mut))])
 (f64vector-fill! [((f64vector::t flonum::t) void::t effect: (mut) unchecked:)
                   ((f64vector::t flonum::t fixnum::t) void::t effect: (mut))
                   ((f64vector::t flonum::t fixnum::t fixnum::t) void::t effect: (mut))])
 (f64vector-length (f64vector::t) fixnum::t effect: (pure) unchecked:)
 (f64vector-ref (f64vector::t fixnum::t) flonum::t effect: (pure))
 (f64vector-set (f64vector::t fixnum::t) f64vector::t effect: (alloc))
 (f64vector-set! (f64vector::t fixnum::t flonum::t) void::t effect: (mut))
 (f64vector-shrink! (f64vector::t fixnum::t) void::t effect: (mut))
 (f64vector-swap! (f64vector::t fixnum::t fixnum::t) void::t effect: (mut))
 (fifth (list::t) t::t effect: (pure))
 (file-attributes (string::t) fixnum::t effect: (io))
 (file-creation-time (string::t) time::t effect: (io))
 (file-device (string::t) fixnum::t effect: (io))
 ;;file-exists-exception-arguments
 ;;file-exists-exception-procedure
 ;;file-exists-exception?
 (file-group (string::t) fixnum::t effect: (io))
 (file-info [((string::t) file-info::t effect: (io) unchecked:)
             ((string::t boolean::t) file-info::t effect: (io) unchecked:)])
 (file-info-attributes (file-info::t) fixnum::t effect: (pure) unchecked:)
 (file-info-creation-time (file-info::t) time::t effect: (pure) unchecked:)
 (file-info-device (file-info::t) fixnum::t effect: (pure) unchecked:)
 (file-info-group (file-info::t) fixnum::t effect: (pure) unchecked:)
 (file-info-inode (file-info::t) fixnum::t effect: (pure) unchecked:)
 (file-info-last-access-time (file-info::t) time::t effect: (pure) unchecked:)
 (file-info-last-change-time (file-info::t) time::t effect: (pure) unchecked:)
 (file-info-last-modification-time (file-info::t) time::t effect: (pure) unchecked:)
 (file-info-mode (file-info::t) fixnum::t effect: (pure) unchecked:)
 (file-info-number-of-links (file-info::t) fixnum::t effect: (pure) unchecked:)
 (file-info-owner (file-info::t) fixnum::t effect: (pure) unchecked:)
 (file-info-size (file-info::t) integer::t effect: (pure) unchecked:)
 (file-info-type (file-info::t) fixnum::t effect: (pure) unchecked:)
 (file-inode (string::t) fixnum::t effect: (io))
 (file-last-access-and-modification-times-set! [((string::t) void::t effect: (io))
                                                ((string::t t::t) void::t effect: (io))
                                                ((string::t t::t t::t) void::t effect: (io))])
 (file-last-access-time (string::t) time::t effect: (io))
 (file-last-change-time (string::t) time::t effect: (io))
 (file-last-modification-time (string::t) time::t effect: (io))
 (file-mode (string::t) fixnum::t effect: (io))
 (file-number-of-links (string::t) fixnum::t effect: (io))
 (file-owner (string::t) fixnum::t effect: (io))
 (file-size (string::t) fixnum::t effect: (io))
 (file-type (string::t) fixnum::t effect: (io))
 (filter (procedure::t list::t) list::t effect: (alloc) unchecked:)
 (filter! (procedure::t list::t) list::t effect: (mut))
 (first (list::t) t::t effect: (pure))
 (first-set-bit (integer::t) fixnum::t effect: (pure) unchecked:)
 (fixnum->flonum (fixnum::t) flonum::t effect: (pure) unchecked:)
 ;;fixnum-overflow-exception-arguments
 ;;fixnum-overflow-exception-procedure
 ;;fixnum-overflow-exception?

 (fl* flonum::t flonum::t effect: (pure) unchecked:)
 (fl+ flonum::t flonum::t effect: (pure) unchecked:)
 (fl+* flonum::t flonum::t effect: (pure) unchecked:)
 (fl- flonum::t flonum::t effect: (pure) unchecked:)
 (fl/ flonum::t flonum::t effect: (pure) unchecked:)
 (fl< flonum::t boolean::t effect: (pure) unchecked:)
 (fl<= flonum::t boolean::t effect: (pure) unchecked:)
 (fl= flonum::t boolean::t effect: (pure) unchecked:)
 (fl> flonum::t boolean::t effect: (pure) unchecked:)
 (fl>= flonum::t boolean::t effect: (pure) unchecked:)
 (flabs (flonum::t) flonum::t effect: (pure) unchecked:)
 (flacos (flonum::t) flonum::t effect: (pure) unchecked:)
 (flacosh (flonum::t) flonum::t effect: (pure) unchecked:)
 (flasin (flonum::t) flonum::t effect: (pure) unchecked:)
 (flasinh (flonum::t) flonum::t effect: (pure) unchecked:)
 (flatan (flonum::t) flonum::t effect: (pure) unchecked:)
 (flatanh (flonum::t) flonum::t effect: (pure) unchecked:)
 (flceiling (flonum::t) flonum::t effect: (pure) unchecked:)
 (flcos (flonum::t) flonum::t effect: (pure) unchecked:)
 (flcosh (flonum::t) flonum::t effect: (pure) unchecked:)
 (fldenominator (flonum::t) flonum::t effect: (pure) unchecked:)
 (fleven? (flonum::t) boolean::t effect: (pure) unchecked:)
 (flexp (flonum::t) flonum::t effect: (pure) unchecked:)
 (flexpm1 (flonum::t) flonum::t effect: (pure) unchecked:)
 (flexpt (flonum::t flonum::t) flonum::t effect: (pure) unchecked:)
 (flfinite? (flonum::t) boolean::t effect: (pure) unchecked:)
 (flfloor (flonum::t) flonum::t effect: (pure) unchecked:)
 (flhypot (flonum::t flonum::t) flonum::t effect: (pure) unchecked:)
 (flilogb (flonum::t) flonum::t effect: (pure) unchecked:)
 (flinfinite? (flonum::t) boolean::t effect: (pure) unchecked:)
 (flinteger? (flonum::t) boolean::t effect: (pure) unchecked:)
 (fllog (flonum::t) flonum::t effect: (pure) unchecked:)
 (fllog1p (flonum::t) flonum::t effect: (pure) unchecked:)
 (flmax flonum::t flonum::t effect: (pure) unchecked:)
 (flmin flonum::t flonum::t effect: (pure) unchecked:)
 (flnan? (flonum::t) boolean::t effect: (pure) unchecked:)
 (flnegative? (flonum::t) boolean::t effect: (pure) unchecked:)
 (flnumerator (flonum::t) flonum::t effect: (pure) unchecked:)
 (flodd? (flonum::t) boolean::t effect: (pure) unchecked:)
 (flpositive? (flonum::t) boolean::t effect: (pure) unchecked:)
 (flround (flonum::t) flonum::t effect: (pure) unchecked:)
 (flscalbn (flonum::t) flonum::t effect: (pure) unchecked:)
 (flsin (flonum::t) flonum::t effect: (pure) unchecked:)
 (flsinh (flonum::t) flonum::t effect: (pure) unchecked:)
 (flsqrt (flonum::t) flonum::t effect: (pure) unchecked:)
 (flsquare (flonum::t) flonum::t effect: (pure) unchecked:)
 (fltan (flonum::t) flonum::t effect: (pure) unchecked:)
 (fltanh (flonum::t) flonum::t effect: (pure) unchecked:)
 (fltruncate (flonum::t) flonum::t effect: (pure) unchecked:)
 (flzero? (flonum::t) boolean::t effect: (pure) unchecked:)
 (fold (procedure::t t::t list::t . list::t) t::t)
 (fold-right (procedure::t t::t list::t . list::t) t::t)
 (force-output [(() void::t effect: (io))
                ((port::t) void::t effect: (io))])
 (foreign-address (foreign::t) integer::t effect: (pure))
 (foreign-release! (foreign::t) void::t effect: (io))
 (foreign-released? (foreign::t) boolean::t effect: (pure))
 (foreign-tags (foreign::t) list::t effect: (pure))
 (fourth (list::t) t::t effect: (pure))
 (fx* fixnum::t fixnum::t effect: (pure) unchecked:)
 (fx+ fixnum::t fixnum::t effect: (pure) unchecked:)
 (fx- fixnum::t fixnum::t effect: (pure) unchecked:)
 (fx< fixnum::t boolean::t effect: (pure) unchecked:)
 (fx<= fixnum::t boolean::t effect: (pure) unchecked:)
 (fx= fixnum::t boolean::t effect: (pure) unchecked:)
 (fx> fixnum::t boolean::t effect: (pure) unchecked:)
 (fx>= fixnum::t boolean::t effect: (pure) unchecked:)
 (fxabs (fixnum::t) fixnum::t effect: (pure) unchecked:)
 (fxand fixnum::t fixnum::t effect: (pure) unchecked:)
 (fxandc1 fixnum::t fixnum::t effect: (pure) unchecked:)
 (fxandc2 fixnum::t fixnum::t effect: (pure) unchecked:)
 (fxarithmetic-shift (fixnum::t fixnum::t) fixnum::t effect: (pure) unchecked:)
 (fxarithmetic-shift-left (fixnum::t fixnum::t) fixnum::t effect: (pure) unchecked:)
 (fxarithmetic-shift-right (fixnum::t fixnum::t) fixnum::t effect: (pure) unchecked:)
 (fxbit-count (fixnum::t) fixnum::t effect: (pure) unchecked:)
 (fxbit-set? (fixnum::t fixnum::t) boolean::t effect: (pure) unchecked:)
 (fxeqv (fixnum::t fixnum::t) boolean::t effect: (pure) unchecked:)
 (fxeven? (fixnum::t) boolean::t effect: (pure) unchecked:)
 (fxfirst-set-bit (fixnum::t) fixnum::t effect: (pure) unchecked:)
 (fxif (fixnum::t fixnum::t fixnum::t) fixnum::t effect: (pure) unchecked:)
 (fxior fixnum::t fixnum::t effect: (pure) unchecked:)
 (fxlength (fixnum::t) fixnum::t effect: (pure) unchecked:)
 (fxmax fixnum::t fixnum::t effect: (pure) unchecked:)
 (fxmin fixnum::t fixnum::t effect: (pure) unchecked:)
 (fxmodulo (fixnum::t fixnum::t) fixnum::t effect: (pure) unchecked:)
 (fxnand fixnum::t fixnum::t effect: (pure) unchecked:)
 (fxnegative? (fixnum::t) boolean::t effect: (pure) unchecked:)
 (fxnor fixnum::t fixnum::t effect: (pure) unchecked:)
 (fxnot (fixnum::t) fixnum::t effect: (pure) unchecked:)
 (fxodd? (fixnum::t) boolean::t effect: (pure) unchecked:)
 (fxorc1 fixnum::t fixnum::t effect: (pure) unchecked:)
 (fxorc2 fixnum::t fixnum::t effect: (pure) unchecked:)
 (fxpositive? (fixnum::t) boolean::t effect: (pure) unchecked:)
 (fxquotient (fixnum::t fixnum::t) fixnum::t effect: (pure) unchecked:)
 (fxremainder (fixnum::t fixnum::t) fixnum::t effect: (pure) unchecked:)
 (fxsquare (fixnum::t) fixnum::t effect: (pure) unchecked:)
 (fxwrap* fixnum::t fixnum::t effect: (pure) unchecked:)
 (fxwrap+ fixnum::t fixnum::t effect: (pure) unchecked:)
 (fxwrap- fixnum::t fixnum::t effect: (pure) unchecked:)
 (fxwrapabs (fixnum::t) fixnum::t effect: (pure) unchecked:)
 (fxwraparithmetic-shift (fixnum::t fixnum::t) fixnum::t effect: (pure) unchecked:)
 (fxwraparithmetic-shift-left (fixnum::t fixnum::t) fixnum::t effect: (pure) unchecked:)
 (fxwraplogical-shift-right (fixnum::t fixnum::t) fixnum::t effect: (pure) unchecked:)
 (fxwrapquotient (fixnum::t fixnum::t) fixnum::t effect: (pure) unchecked:)
 (fxwrapsquare (fixnum::t) fixnum::t effect: (pure) unchecked:)
 (fxxor fixnum::t fixnum::t effect: (pure) unchecked:)
 (fxzero? (fixnum::t) boolean::t effect: (pure) unchecked:)

 ;;gc-report-set!
 ;;generate-proper-tail-calls

 (gensym [(() symbol::t effect: (alloc) unchecked:)
          ((symbol::t) symbol::t effect: (alloc) unchecked:)])
 (get-output-u8vector (port::t) u8vector::t effect: (io))
 (get-output-vector (port::t) vector::t effect: (io))
 (getenv [((string::t) string::t effect: (pure) unchecked:)
          ((string::t t::t) t::t effect: (pure) unchecked:)])

 ;; TODO add group-info::t
 ;;group-info
 ;;group-info-gid
 ;;group-info-members
 ;;group-info-name
 ;;group-info?

 ;;heap-overflow-exception?
 ;;help
 ;;help-browser

 ;;TODO add host-info::t
 ;;host-info
 ;;host-info-addresses
 ;;host-info-aliases
 ;;host-info-name
 ;;host-info?

 (host-name () string::t effect: (pure) unchecked:)
 (identity (t::t) t::t effect: (pure))

 ;;inactive-thread-exception-arguments
 ;;inactive-thread-exception-procedure
 ;;inactive-thread-exception?

 ;;nitial-current-directory

 ;;initialized-thread-exception-arguments
 ;;initialized-thread-exception-procedure
 ;;initialized-thread-exception?

 (input-port-byte-position (port::t) integer::t effect: (io))
 (input-port-bytes-buffered (port::t) integer::t effect: (io))
 (input-port-char-position (port::t) integer::t effect: (io))
 (input-port-characters-buffered (port::t) integer::t effect: (io))
 (input-port-column (port::t) integer::t effect: (io))
 (input-port-line (port::t) integer::t effect: (io))
 (input-port-readtable (port::t) integer::t effect: (io))
 (input-port-readtable-set! (port::t readtable::t) void::t effect: (mut io))
 (input-port-timeout-set! (port::t t::t) void::t effect: (mut io))
 (integer-length (integer::t) fixnum::t effect: (pure))
 (integer-nth-root (integer::t integer::t) integer::t effect: (pure))
 (integer-sqrt (integer::t) integer::t effect: (pure))

 ;;invalid-hash-number-exception-arguments
 ;;invalid-hash-number-exception-procedure
 ;;invalid-hash-number-exception?
 ;;invalid-utf8-encoding-exception-arguments
 ;;invalid-utf8-encoding-exception-procedure
 ;;invalid-utf8-encoding-exception?

 (iota [((fixnum::t) list::t effect: (alloc) unchecked:)
        ((fixnum::t fixnum::t) list::t effect: (alloc) unchecked:)
        ((fixnum::t fixnum::t fixnum::t) list::t effect: (alloc) unchecked:)])

 ;;join-timeout-exception-arguments
 ;;join-timeout-exception-procedure
 ;;join-timeout-exception?

 (keyword->string (keyword::t) string::t effect: (pure) unchecked:)

 ;;keyword-expected-exception-arguments
 ;;keyword-expected-exception-procedure
 ;;keyword-expected-exception?

 (keyword-hash (keyword::t) fixnum::t effect: (pure) unchecked:)

 (last (pair::t) t::t effect: (pure) unchecked:)
 (last-pair (pair::t) pair::t effect: (pure) unchecked:)
 (length+ (list::t) fixnum::t effect: (pure) unchecked:)

 ;;length-mismatch-exception-arg-id
 ;;length-mismatch-exception-arguments
 ;;length-mismatch-exception-procedure
 ;;length-mismatch-exception?
 ;;link-flat
 ;;link-incremental

 (list->bits (list::t) integer::t effect: (pure))

 ;; TODO char-set::t
 ;;list->char-set
 ;;list->char-set!

 (list->f32vector (list::t) f32vector::t effect: (alloc))
 (list->f64vector (list::t) f64vector::t effect: (alloc))
 (list->s16vector (list::t) s16vector::t effect: (alloc))
 (list->s32vector (list::t) s32vector::t effect: (alloc))
 (list->s64vector (list::t) s64vector::t effect: (alloc))
 (list->s8vector (list::t) s8vector::t effect: (alloc))
 (list->table (list::t) table::t effect: (alloc))
 (list->u16vector (list::t) u16vector::t effect: (alloc))
 (list->u32vector (list::t) u32vector::t effect: (alloc))
 (list->u64vector (list::t) u64vector::t effect: (alloc))
 (list->u8vector (list::t) u8vector::t effect: (alloc))
 (list-set (list::t fixnum::t t::t) list::t effect: (alloc))
 (list-sort (procedure::t list::t) list::t effect: (alloc) unchecked:)
 (list-sort! (procedure::t list::t) list::t effect: (mut) unchecked:)
 (list-tabulate (fixnum::t procedure::t) list::t effect: (alloc) unchecked:)
 (list= (procedure::t . list::t) boolean::t)

 ;;mailbox-receive-timeout-exception-arguments
 ;;mailbox-receive-timeout-exception-procedure
 ;;mailbox-receive-timeout-exception?
 ;;main
 ;;make-bitwise-generator

 (make-condition-variable [(() condvar::t effect: (alloc))
                           ((t::t) condvar::t effect: (alloc))])
 (make-f32vector [((fixnum::t) f32vector::t unchecked:)
                  ((fixnum::t flonum::t) f32vector::t unchecked:)])
 (make-f64vector [((fixnum::t) f64vector::t unchecked:)
                  ((fixnum::t flonum::t) f64vector::t unchecked:)])
 (make-mutex [(() mutex::t effect: (alloc))
              ((t::t) mutex::t effect: (alloc))])
 ;; TODO random-source::t
 ;;make-random-source

 (make-root-thread [((procedure::t) thread::t effect: (alloc))
                    ((procedure::t t::t) thread::t effect: (io))
                    ((procedure::t t::t thread-group::t) thread::t effect: (io))
                    ((procedure::t t::t port::t) thread::t effect: (io))
                    ((procedure::t t::t port::t port::t) thread::t effect: (io))])
 (make-s16vector [((fixnum::t) s16vector::t effect: (alloc) unchecked:)
                  ((fixnum::t fixnum::t) s16vector::t effect: (alloc) unchecked:)])
 (make-s32vector [((fixnum::t) s32vector::t effect: (alloc) unchecked:)
                  ((fixnum::t fixnum::t) s32vector::t effect: (alloc) unchecked:)])
 (make-s64vector [((fixnum::t) s64vector::t effect: (alloc) unchecked:)
                  ((fixnum::t fixnum::t) s64vector::t effect: (alloc) unchecked:)])
 (make-s8vector [((fixnum::t) s8vector::t effect: (alloc) unchecked:)
                 ((fixnum::t fixnum::t) s8vector::t effect: (alloc) unchecked:)])
 (make-table t::t table::t effect: (alloc))
 (make-thread [((procedure::t) thread::t effect: (alloc))
               ((procedure::t t::t) thread::t effect: (alloc))
               ((procedure::t t::t thread-group::t) thread::t effect: (alloc))])
 (make-thread-group [(() thread-group::t effect: (io))
                     ((t::t) thread-group::t effect: (io))
                     ((t::t thread-group::t) thread-group::t effect: (io))])
 ;;make-tls-context
 (make-u16vector [((fixnum::t) u16vector::t effect: (alloc) unchecked:)
                  ((fixnum::t fixnum::t) u16vector::t effect: (alloc) unchecked:)])
 (make-u32vector [((fixnum::t) u32vector::t effect: (alloc) unchecked:)
                  ((fixnum::t fixnum::t) u32vector::t effect: (alloc) unchecked:)])
 (make-u64vector [((fixnum::t) u64vector::t effect: (alloc) unchecked:)
                  ((fixnum::t fixnum::t) u64vector::t effect: (alloc) unchecked:)])
 (make-u8vector [((fixnum::t) u8vector::t effect: (alloc) unchecked:)
                 ((fixnum::t fixnum::t) u8vector::t effect: (alloc) unchecked:)])
 (make-will (t::t procedure::t) weak::t effect: (io))

 ;;module-not-found-exception-arguments
 ;;module-not-found-exception-procedure
 ;;module-not-found-exception?

 ;; TODO loader integration
 ;;module-search-order-add!
 ;;module-search-order-reset!
 ;;module-whitelist-add!
 ;;module-whitelist-reset!

 ;;multiple-c-return-exception?

 (mutex-lock! [((mutex::t) void::t effect: (io))
               ((mutex::t t::t) void::t effect: (io))
               ((mutex::t t::t thread::t) void::t effect: (io))])
 (mutex-name (mutex::t) t::t effect: (pure))
 (mutex-specific (mutex::t) t::t effect: (pure))
 (mutex-specific-set! (mutex::t t::t) void::t effect: (mut))
 (mutex-state (mutex::t) t::t effect: (pure))
 (mutex-unlock! [((mutex::t) void::t effect: (io))
                 ((mutex::t condvar::t) void::t effect: (io))
                 ((mutex::t condvar::t t::t) void::t effect: (io))])

 ;; TODO network-info::t
 ;;network-info
 ;;network-info-aliases
 ;;network-info-name
 ;;network-info-number
 ;;network-info?

 (ninth (list::t) t::t effect: (pure))

 ;;no-such-file-or-directory-exception-arguments
 ;;no-such-file-or-directory-exception-procedure
 ;;no-such-file-or-directory-exception?
 ;;noncontinuable-exception-reason
 ;;noncontinuable-exception?
 ;;nonempty-input-port-character-buffer-exception-arguments
 ;;nonempty-input-port-character-buffer-exception-procedure
 ;;nonempty-input-port-character-buffer-exception?
 ;;nonprocedure-operator-exception-arguments
 ;;nonprocedure-operator-exception-code
 ;;nonprocedure-operator-exception-operator
 ;;nonprocedure-operator-exception-rte
 ;;nonprocedure-operator-exception?
 ;;not-in-compilation-context-exception-arguments
 ;;not-in-compilation-context-exception-procedure
 ;;not-in-compilation-context-exception?

 (not-pair? (t::t) boolean::t effect: (pure))
 (null-list? (t::t) boolean::t effect: (pure))


 ;;number-of-arguments-limit-exception-arguments
 ;;number-of-arguments-limit-exception-procedure
 ;;number-of-arguments-limit-exception?

 (object->serial-number (t::t) fixnum::t effect: (io))
 (object->string (t::t) string::t effect: (pure))
 (object->u8vector (t::t) u8vector::t effect: (pure))
 (open-directory (t::t) port::t effect: (io))
 (open-dummy (t::t) port::t effect: (io))
 (open-event-queue (t::t) port::t effect: (io))
 (open-file (t::t) port::t effect: (io))
 (open-input-process (t::t) port::t effect: (io))
 (open-input-u8vector (t::t) port::t effect: (io))
 (open-input-vector (t::t) port::t effect: (io))
 (open-output-bytevector [(() port::t effect: (io))
                          ((t::t) port::t effect: (io))])
 (open-output-process (t::t) port::t effect: (io))
 (open-output-u8vector [(() port::t effect: (io))
                        ((t::t) port::t effect: (io))])
 (open-output-vector [(() port::t effect: (io))
                      ((t::t) port::t effect: (io))])
 (open-process (t::t) port::t effect: (io))
 (open-string (t::t) port::t effect: (io))
 (open-string-pipe (t::t) port::t effect: (io))
 (open-tcp-client (t::t) port::t effect: (io))
 (open-tcp-server (t::t) port::t effect: (io))
 (open-u8vector (t::t) port::t effect: (io))
 (open-u8vector-pipe (t::t) port::t effect: (io))
 (open-udp (t::t) port::t effect: (io))
 (open-vector (t::t) port::t effect: (io))
 (open-vector-pipe (t::t) port::t effect: (io))

 ;;os-exception-arguments
 ;;os-exception-code
 ;;os-exception-message
 ;;os-exception-procedure
 ;;os-exception?

 (output-port-byte-position (port::t) integer::t effect: (io))
 (output-port-char-position (port::t) integer::t effect: (io))
 (output-port-column (port::t) integer::t effect: (io))
 (output-port-line (port::t) integer::t effect: (io))
 (output-port-readtable (port::t) readtable::t effect: (io))
 (output-port-readtable-set! (port::t readtable::t) void::t effect: (mut io))
 (output-port-timeout-set! (port::t readtable::t) void::t effect: (mut io))
 (output-port-width (port::t) fixnum::t effect: (pure))
 (partition (procedure::t list::t) values::t effect: (alloc))
 (partition!(procedure::t list::t) values::t effect: (mut))
 (path-directory (string::t) string::t effect: (alloc))
 (path-expand [((string::t) string::t effect: (alloc))
               ((string::t string::t) string::t effect: (alloc))])
 (path-extension (string::t) string::t effect: (alloc))
 (path-normalize [((string::t) string::t effect: (io))
                  ((string::t boolean::t) string::t effect: (io))
                  ((string::t boolean::t string::t) string::t effect: (io))])
 (path-strip-directory (string::t) string::t effect: (alloc))
 (path-strip-extension (string::t) string::t effect: (alloc))
 (path-strip-trailing-directory-separator (string::t) string::t effect: (alloc))
 (path-strip-volume (string::t) string::t effect: (alloc))
 (path-volume (string::t) string::t effect: (alloc))

 ;;permission-denied-exception-arguments
 ;;permission-denied-exception-procedure
 ;;permission-denied-exception?
 ;;poll-point
 ;;port-io-exception-handler-set!
 ;;port-settings-set!

 (pp [((t::t) void::t effect: (io))
      ((t::t port::t) void::t effect: (io))])
 (pretty-print [((t::t) void::t effect: (io))
                ((t::t port::t) void::t effect: (io))])
 ;;primordial-exception-handler
 (print t::t void::t effect: (io))
 (println t::t void::t effect: (io))
 (process-pid (port::t) fixnum::t effect: (pure))
 (process-status (port::t) fixnum::t effect: (io))
 (process-times () f64vector::t effect: (io))
 (processor-id (processor::t) fixnum::t effect: (pure))
 (proper-list? (t::t) boolean::t effect: (pure))

 ;; TODO protocol-info::t
 ;;protocol-info
 ;;protocol-info-aliases
 ;;protocol-info-name
 ;;protocol-info-number
 ;;protocol-info?

 ;;r7rs-raise
 ;;r7rs-raise-continuable
 ;;r7rs-with-exception-handler
 ;; raise

 (random-f64vector (fixnum::t) f64vector::t effect: (io))
 (random-integer (integer::t) integer::t effect: (io))
 (random-real () flonum::t effect: (io))

 ;; TODO random-source::t
 ;;random-source-make-f64vectors
 ;;random-source-make-integers
 ;;random-source-make-reals
 ;;random-source-make-u8vectors
 ;;random-source-pseudo-randomize!
 ;;random-source-randomize!
 ;;random-source-state-ref
 ;;random-source-state-set!
 ;;random-source?
 ;;random-u8vector

 ;;range-exception-arg-id
 ;;range-exception-arguments
 ;;range-exception-procedure
 ;;range-exception?

 (read-all [(() list::t effect: (io))
            ((t::t) list::t effect: (io))
            ((t::t procedure::t) list::t effect: (io))])
 (read-file-string (t::t) string::t effect: (io))
 (read-file-string-list (t::t) list::t effect: (io))
 (read-file-u8vector (t::t) u8vector::t effect: (io))
 (read-substring [((string::t fixnum::t fixnum::t) fixnum::t effect: (io mut))
                  ((string::t fixnum::t fixnum::t port::t) fixnum::t effect: (io mut))
                  ((string::t fixnum::t fixnum::t port::t fixnum::t) fixnum::t effect: (io mut))])
 (read-subu8vector [((u8vector::t fixnum::t fixnum::t) fixnum::t effect: (io mut))
                    ((u8vector::t fixnum::t fixnum::t port::t) fixnum::t effect: (io mut))
                    ((u8vector::t fixnum::t fixnum::t port::t fixnum::t) fixnum::t effect: (io mut))])
 (readtable-case-conversion? (readtable::t) boolean::t effect: (pure))
 (readtable-case-conversion?-set (readtable::t boolean::t) readtable::t effect: (alloc))
 (readtable-comment-handler (readtable::t) t::t effect: (pure))
 (readtable-comment-handler-set (readtable::t procedure::t) readtable::t effect: (alloc))
 (readtable-eval-allowed? (readtable::t) boolean::t effect: (pure))
 (readtable-eval-allowed?-set (readtable::t boolean::t) readtable::t effect: (alloc))
 (readtable-keywords-allowed? (readtable::t) boolean::t effect: (pure))
 (readtable-keywords-allowed?-set (readtable::t boolean::t) readtable::t effect: (alloc))
 (readtable-max-unescaped-char (readtable::t) t::t effect: (pure))
 (readtable-max-unescaped-char-set (readtable::t t::t) readtable::t effect: (alloc))
 (readtable-max-write-length (readtable::t) t::t effect: (pure))
 (readtable-max-write-length-set (readtable::t integer::t) readtable::t effect: (alloc))
 (readtable-max-write-level (readtable::t) t::t effect: (pure))
 (readtable-max-write-level-set (readtable::t integer::t) readtable::t effect: (alloc))
 (readtable-sharing-allowed? (readtable::t) boolean::t effect: (pure))
 (readtable-sharing-allowed?-set (readtable::t boolean::t) readtable::t effect: (alloc))
 (readtable-start-syntax (readtable::t) t::t effect: (pure))
 (readtable-start-syntax-set (readtable::t t::t) readtable::t effect: (alloc))
 (readtable-write-cdr-read-macros? (readtable::t) boolean::t effect: (pure))
 (readtable-write-cdr-read-macros?-set (readtable::t boolean::t) readtable::t effect: (alloc))
 (readtable-write-extended-read-macros? (readtable::t) boolean::t effect: (pure))
 (readtable-write-extended-read-macros?-set (readtable::t boolean::t) readtable::t effect: (alloc))
 (real-time () flonum::t effect: (io))
 (remove (procedure::t list::t) list::t effect: (alloc))
 (remove! (procedure::t list::t) list::t effect: (mut))
 (remq (t::t list::t) list::t effect: (alloc))
 (rename-file (string::t string::t) void::t effect: (io) unchecked:)

 ;;repl-backtrace-detail-level
 ;;repl-highlight-source-level
 ;;repl-error-port
 ;;repl-input-port
 ;;repl-output-port
 ;;repl-result-history-max-length-set!
 ;;repl-result-history-ref

 (replace-bit-field (fixnum::t fixnum::t integer::t integer::t) integer::t effect: (pure))
 (reverse! (list::t) list::t effect: (mut))

 ;;rpc-remote-error-exception-arguments
 ;;rpc-remote-error-exception-message
 ;;rpc-remote-error-exception-procedure
 ;;rpc-remote-error-exception?

 (s16vector fixnum::t s16vector::t effect: (alloc))
 (s16vector->list (s16vector::t) list::t effect: (alloc))
 (s16vector-append s16vector::t s16vector::t effect: (alloc))
 (s16vector-concatenate (list::t) s16vector::t effect: (alloc))
 (s16vector-copy [((s16vector::t) s16vector::t effect: (alloc) unchecked:)
                  ((s16vector::t fixnum::t) s16vector::t effect: (alloc))
                  ((s16vector::t fixnum::t fixnum::t) s16vector::t effect: (alloc))])
 (s16vector-copy! [((s16vector::t fixnum::t s16vector::t) void::t effect: (mut))
                   ((s16vector::t fixnum::t s16vector::t fixnum::t) void::t effect: (mut))
                   ((s16vector::t fixnum::t s16vector::t fixnum::t fixnum::t) void::t effect: (mut))])
 (s16vector-fill! [((s16vector::t fixnum::t) void::t effect: (mut) unchecked:)
                   ((s16vector::t fixnum::t fixnum::t) void::t effect: (mut))
                   ((s16vector::t fixnum::t fixnum::t fixnum::t) void::t effect: (mut))])
 (s16vector-length (s16vector::t) fixnum::t effect: (pure) unchecked:)
 (s16vector-ref (s16vector::t fixnum::t) fixnum::t effect: (pure))
 (s16vector-set (s16vector::t fixnum::t) s16vector::t effect: (alloc))
 (s16vector-set! (s16vector::t fixnum::t fixnum::t) void::t effect: (mut))
 (s16vector-shrink! (s16vector::t fixnum::t) void::t effect: (mut))
 (s16vector-swap! (s16vector::t fixnum::t fixnum::t) void::t effect: (mut))

 (s32vector fixnum::t s32vector::t effect: (alloc))
 (s32vector->list (s32vector::t) list::t effect: (alloc))
 (s32vector-append s32vector::t s32vector::t effect: (alloc))
 (s32vector-concatenate (list::t) s32vector::t effect: (alloc))
 (s32vector-copy [((s32vector::t) s32vector::t effect: (alloc) unchecked:)
                  ((s32vector::t fixnum::t) s32vector::t effect: (alloc))
                  ((s32vector::t fixnum::t fixnum::t) s32vector::t effect: (alloc))])
 (s32vector-copy! [((s32vector::t fixnum::t s32vector::t) void::t effect: (mut))
                   ((s32vector::t fixnum::t s32vector::t fixnum::t) void::t effect: (mut))
                   ((s32vector::t fixnum::t s32vector::t fixnum::t fixnum::t) void::t effect: (mut))])
 (s32vector-fill! [((s32vector::t fixnum::t) void::t effect: (mut) unchecked:)
                   ((s32vector::t fixnum::t fixnum::t) void::t effect: (mut))
                   ((s32vector::t fixnum::t fixnum::t fixnum::t) void::t effect: (mut))])
 (s32vector-length (s32vector::t) fixnum::t effect: (pure) unchecked:)
 (s32vector-ref (s32vector::t fixnum::t) fixnum::t effect: (pure))
 (s32vector-set (s32vector::t fixnum::t) s32vector::t effect: (alloc))
 (s32vector-set! (s32vector::t fixnum::t fixnum::t) void::t effect: (mut))
 (s32vector-shrink! (s32vector::t fixnum::t) void::t effect: (mut))
 (s32vector-swap! (s32vector::t fixnum::t fixnum::t) void::t effect: (mut))

 (s64vector integer::t s64vector::t effect: (alloc))
 (s64vector->list (s64vector::t) list::t effect: (alloc))
 (s64vector-append s64vector::t s64vector::t effect: (alloc))
 (s64vector-concatenate (list::t) s64vector::t effect: (alloc))
 (s64vector-copy [((s64vector::t) s64vector::t effect: (alloc) unchecked:)
                  ((s64vector::t fixnum::t) s64vector::t effect: (alloc))
                  ((s64vector::t fixnum::t integer::t) s64vector::t effect: (alloc))])
 (s64vector-copy! [((s64vector::t fixnum::t s64vector::t) void::t effect: (mut))
                   ((s64vector::t fixnum::t s64vector::t fixnum::t) void::t effect: (mut))
                   ((s64vector::t fixnum::t s64vector::t fixnum::t fixnum::t) void::t effect: (mut))])
 (s64vector-fill! [((s64vector::t integer::t) void::t effect: (mut) unchecked:)
                   ((s64vector::t integer::t fixnum::t) void::t effect: (mut))
                   ((s64vector::t integer::t fixnum::t fixnum::t) void::t effect: (mut))])
 (s64vector-length (s64vector::t) fixnum::t effect: (pure) unchecked:)
 (s64vector-ref (s64vector::t fixnum::t) integer::t effect: (pure))
 (s64vector-set (s64vector::t fixnum::t) s64vector::t effect: (alloc))
 (s64vector-set! (s64vector::t fixnum::t integer::t) void::t effect: (mut))
 (s64vector-shrink! (s64vector::t fixnum::t) void::t effect: (mut))
 (s64vector-swap! (s64vector::t fixnum::t fixnum::t) void::t effect: (mut))

 (s8vector fixnum::t s8vector::t effect: (alloc))
 (s8vector->list (s8vector::t) list::t effect: (alloc))
 (s8vector-append s8vector::t s8vector::t effect: (alloc))
 (s8vector-concatenate (list::t) s8vector::t effect: (alloc))
 (s8vector-copy [((s8vector::t) s8vector::t effect: (alloc) unchecked:)
                 ((s8vector::t fixnum::t) s8vector::t effect: (alloc))
                 ((s8vector::t fixnum::t fixnum::t) s8vector::t effect: (alloc))])
 (s8vector-copy! [((s8vector::t fixnum::t s8vector::t) void::t effect: (mut))
                  ((s8vector::t fixnum::t s8vector::t fixnum::t) void::t effect: (mut))
                  ((s8vector::t fixnum::t s8vector::t fixnum::t fixnum::t) void::t effect: (mut))])
 (s8vector-fill! [((s8vector::t fixnum::t) void::t effect: (mut) unchecked:)
                  ((s8vector::t fixnum::t fixnum::t) void::t effect: (mut))
                  ((s8vector::t fixnum::t fixnum::t fixnum::t) void::t effect: (mut))])
 (s8vector-length (s8vector::t) fixnum::t effect: (pure) unchecked:)
 (s8vector-ref (s8vector::t fixnum::t) fixnum::t effect: (pure))
 (s8vector-set (s8vector::t fixnum::t) s8vector::t effect: (alloc))
 (s8vector-set! (s8vector::t fixnum::t fixnum::t) void::t effect: (mut))
 (s8vector-shrink! (s8vector::t fixnum::t) void::t effect: (mut))
 (s8vector-swap! (s8vector::t fixnum::t fixnum::t) void::t effect: (mut))

 ;;scheduler-exception-reason
 ;;scheduler-exception?
 ;;script-directory
 ;;script-file

 (second (list::t) t::t effect: (pure))
 (seconds->time (real::t) time::t effect: (alloc) unchecked:)
 (serial-number->object (fixnum::t) t::t effect: (io) unchecked:)

 ;; TODO service-info::t
 ;;service-info
 ;;service-info-aliases
 ;;service-info-name
 ;;service-info-port-number
 ;;service-info-protocol
 ;;service-info?

 (set-box! (box::t t::t) void::t effect: (mut) unchecked:)
 (setenv (string::t string::t) void::t effect: (io) unchecked:)
 (seventh (list::t) t::t effect: (pure))

 ;;sfun-conversion-exception-arguments
 ;;sfun-conversion-exception-code
 ;;sfun-conversion-exception-message
 ;;sfun-conversion-exception-procedure
 ;;sfun-conversion-exception?

 (shell-command [((string::t) t::t effect: (io) unchecked:)
                 ((string::t boolean::t) t::t effect: (io) unchecked:)])
 (sinh (number::t) number::t effect: (pure))
 (sixth (list::t) t::t effect: (pure))

 ;; TODO socket-info::t
 ;;socket-info-address
 ;;socket-info-family
 ;;socket-info-port-number
 ;;socket-info?

 (split-at (t::t fixnum::t) values::t effect: (pure))
 (split-at! (t::t fixnum::t) values::t effect: (mut))

 ;;stack-overflow-exception?
 ;;started-thread-exception-arguments
 ;;started-thread-exception-procedure
 ;;started-thread-exception?
 ;;step
 ;;step-level-set!

 ;; TODO char-set
 ;;string->char-set
 ;;string->char-set!

 (string->keyword (string::t) keyword::t effect: (pure) unchecked:)
 (string->uninterned-keyword (string::t) keyword::t effect: (pure) unchecked:)
 (string->uninterned-symbol (string::t) symbol::t effect: (pure) unchecked:)
 (string-ci=?-hash (string::t) fixnum::t effect: (pure) unchecked:)
 (string-concatenate string::t string::t effect: (alloc) unchecked:)
 (string-contains [((string::t string::t) boolean::t effect: (pure) unchecked:)
                   ((string::t string::t fixnum::t) boolean::t effect: (pure))
                   ((string::t string::t fixnum::t fixnum::t) boolean::t effect: (pure))
                   ((string::t string::t fixnum::t fixnum::t fixnum::t) boolean::t effect: (pure))
                   ((string::t string::t fixnum::t fixnum::t fixnum::t fixnum::t) boolean::t effect: (pure))])
 (string-contains-ci [((string::t string::t) boolean::t effect: (pure) unchecked:)
                      ((string::t string::t fixnum::t) boolean::t effect: (pure))
                      ((string::t string::t fixnum::t fixnum::t) boolean::t effect: (pure))
                      ((string::t string::t fixnum::t fixnum::t fixnum::t) boolean::t effect: (pure))
                      ((string::t string::t fixnum::t fixnum::t fixnum::t fixnum::t) boolean::t effect: (pure))])
 (string-prefix-ci? (string::t string::t) boolean::t effect: (pure) unchecked:)
 (string-prefix-length [((string::t string::t) fixnum::t effect: (pure) unchecked:)
                        ((string::t string::t fixnum::t) fixnum::t effect: (pure))
                        ((string::t string::t fixnum::t fixnum::t) fixnum::t effect: (pure))
                        ((string::t string::t fixnum::t fixnum::t fixnum::t) fixnum::t effect: (pure))
                        ((string::t string::t fixnum::t fixnum::t fixnum::t fixnum::t) fixnum::t effect: (pure))])
 (string-prefix-length-ci [((string::t string::t) fixnum::t effect: (pure) unchecked:)
                           ((string::t string::t fixnum::t) fixnum::t effect: (pure))
                           ((string::t string::t fixnum::t fixnum::t) fixnum::t effect: (pure))
                           ((string::t string::t fixnum::t fixnum::t fixnum::t) fixnum::t effect: (pure))
                           ((string::t string::t fixnum::t fixnum::t fixnum::t fixnum::t) fixnum::t effect: (pure))])
 (string-prefix? (string::t string::t) boolean::t effect: (pure) unchecked:)
 (string-set (string::t fixnum::t char::t) string::t effect: (alloc))
 (string-shrink! (string::t fixnum::t) string::t effect: (mut))
 (string-suffix-ci? (string::t string::t) boolean::t effect: (pure) unchecked:)
 (string-suffix-length [((string::t string::t) fixnum::t effect: (pure) unchecked:)
                        ((string::t string::t fixnum::t) fixnum::t effect: (pure))
                        ((string::t string::t fixnum::t fixnum::t) fixnum::t effect: (pure))
                        ((string::t string::t fixnum::t fixnum::t fixnum::t) fixnum::t effect: (pure))
                        ((string::t string::t fixnum::t fixnum::t fixnum::t fixnum::t) fixnum::t effect: (pure))])
 (string-suffix-length-ci [((string::t string::t) fixnum::t effect: (pure) unchecked:)
                           ((string::t string::t fixnum::t) fixnum::t effect: (pure))
                           ((string::t string::t fixnum::t fixnum::t) fixnum::t effect: (pure))
                           ((string::t string::t fixnum::t fixnum::t fixnum::t) fixnum::t effect: (pure))
                           ((string::t string::t fixnum::t fixnum::t fixnum::t fixnum::t) fixnum::t effect: (pure))])
 (string-suffix? (string::t string::t) boolean::t effect: (pure) unchecked:)
 (string-swap! (string::t fixnum::t fixnum::t) void::t effect: (mut))
 (string=?-hash (string::t) fixnum::t effect: (pure) unchecked:)

 (subf32vector (f32vector::t fixnum::t fixnum::t) f32vector::t effect: (alloc))
 (subf32vector-fill! [((f32vector::t flonum::t) void::t effect: (mut))
                      ((f32vector::t flonum::t fixnum::t) void::t effect: (mut))
                      ((f32vector::t flonum::t fixnum::t fixnum::t) void::t effect: (mut))])
 (subf32vector-move! (f32vector::t fixnum::t fixnum::t f32vector::t fixnum::t) void::t effect: (mut))

 (subf64vector (f64vector::t fixnum::t fixnum::t) f64vector::t effect: (alloc))
 (subf64vector-fill! [((f64vector::t flonum::t) void::t effect: (mut))
                      ((f64vector::t flonum::t fixnum::t) void::t effect: (mut))
                      ((f64vector::t flonum::t fixnum::t fixnum::t) void::t effect: (mut))])
 (subf64vector-move! (f64vector::t fixnum::t fixnum::t f64vector::t fixnum::t) void::t effect: (mut))

 (subs16vector (s16vector::t fixnum::t fixnum::t) s16vector::t effect: (alloc))
 (subs16vector-fill! [((s16vector::t fixnum::t) void::t effect: (mut))
                      ((s16vector::t fixnum::t fixnum::t) void::t effect: (mut))
                      ((s16vector::t fixnum::t fixnum::t fixnum::t) void::t effect: (mut))])
 (subs16vector-move! (s16vector::t fixnum::t fixnum::t s16vector::t fixnum::t) void::t effect: (mut))

 (subs32vector (s32vector::t fixnum::t fixnum::t) s32vector::t effect: (alloc))
 (subs32vector-fill! [((s32vector::t fixnum::t) void::t effect: (mut))
                      ((s32vector::t fixnum::t fixnum::t) void::t effect: (mut))
                      ((s32vector::t fixnum::t fixnum::t fixnum::t) void::t effect: (mut))])
 (subs32vector-move! (s32vector::t fixnum::t fixnum::t s32vector::t fixnum::t) void::t effect: (mut))

 (subs64vector (s64vector::t fixnum::t fixnum::t) s64vector::t effect: (alloc))
 (subs64vector-fill! [((s64vector::t integer::t) void::t effect: (mut))
                      ((s64vector::t integer::t fixnum::t) void::t effect: (mut))
                      ((s64vector::t integer::t fixnum::t fixnum::t) void::t effect: (mut))])
 (subs64vector-move! (s64vector::t fixnum::t fixnum::t s64vector::t fixnum::t) void::t effect: (mut))


 (subs8vector (s8vector::t fixnum::t fixnum::t) s8vector::t effect: (alloc))
 (subs8vector-fill! [((s8vector::t fixnum::t) void::t effect: (mut))
                     ((s8vector::t fixnum::t fixnum::t) void::t effect: (mut))
                     ((s8vector::t fixnum::t fixnum::t fixnum::t) void::t effect: (mut))])
 (subs8vector-move! (s8vector::t fixnum::t fixnum::t s8vector::t fixnum::t) void::t effect: (mut))


 (substring-fill! [((string::t char::t) void::t effect: (mut))
                   ((string::t char::t fixnum::t) void::t effect: (mut))
                   ((string::t char::t fixnum::t fixnum::t) void::t effect: (mut))])
 (substring-move! (string::t fixnum::t fixnum::t string::t fixnum::t) void::t effect: (mut))

 (subu16vector (u16vector::t fixnum::t fixnum::t) u16vector::t effect: (alloc))
 (subu16vector-fill! [((u16vector::t fixnum::t) void::t effect: (mut))
                      ((u16vector::t fixnum::t fixnum::t) void::t effect: (mut))
                      ((u16vector::t fixnum::t fixnum::t fixnum::t) void::t effect: (mut))])
 (subu16vector-move! (u16vector::t fixnum::t fixnum::t u16vector::t fixnum::t) void::t effect: (mut))

 (subu32vector (u32vector::t fixnum::t fixnum::t) u32vector::t effect: (alloc))
 (subu32vector-fill! [((u32vector::t fixnum::t) void::t effect: (mut))
                      ((u32vector::t fixnum::t fixnum::t) void::t effect: (mut))
                      ((u32vector::t fixnum::t fixnum::t fixnum::t) void::t effect: (mut))])
 (subu32vector-move! (u32vector::t fixnum::t fixnum::t u32vector::t fixnum::t) void::t effect: (mut))


 (subu64vector (u64vector::t fixnum::t fixnum::t) u64vector::t effect: (alloc))
 (subu64vector-fill! [((u64vector::t integer::t) void::t effect: (mut))
                      ((u64vector::t integer::t fixnum::t) void::t effect: (mut))
                      ((u64vector::t integer::t fixnum::t fixnum::t) void::t effect: (mut))])
 (subu64vector-move! (u64vector::t fixnum::t fixnum::t u64vector::t fixnum::t) void::t effect: (mut))

 (subu8vector (u8vector::t fixnum::t fixnum::t) u8vector::t effect: (alloc))
 (subu8vector-fill! [((u8vector::t fixnum::t) void::t effect: (mut))
                     ((u8vector::t fixnum::t fixnum::t) void::t effect: (mut))
                     ((u8vector::t fixnum::t fixnum::t fixnum::t) void::t effect: (mut))])
 (subu8vector-move! (u8vector::t fixnum::t fixnum::t u8vector::t fixnum::t) void::t effect: (mut))


 (subvector (vector::t fixnum::t fixnum::t) vector::t effect: (alloc))
 (subvector-fill! [((vector::t t::t) void::t effect: (mut))
                   ((vector::t t::t fixnum::t) void::t effect: (mut))
                   ((vector::t t::t fixnum::t fixnum::t) void::t effect: (mut))])
 (subvector-move! (vector::t fixnum::t fixnum::t vector::t fixnum::t) void::t effect: (mut))

 (symbol-hash (symbol::t) fixnum::t effect: (pure) unchecked:)

 ;; syntax->datum
 ;; syntax->list
 ;; syntax->vector

 (system-stamp () integer::t effect: (pure))
 (system-type () list::t effect: (pure))
 (system-type-string () string::t effect: (pure))
 (system-version () fixnum::t effect: (pure))
 (system-version-string () string::t effect: (pure))
 (table->list (table::t) list::t effect: (alloc) unchecked:)
 (table-copy (table::t) table::t effect: (pure) unchecked:)
 (table-for-each (procedure::t table::t) void::t unchecked:)
 (table-length (table::t) fixnum::t effect: (pure) unchecked:)
 (table-merge [((table::t table::t) table::t effect: (alloc) unchecked:)
               ((table::t table::t boolean::t) table::t effect: (alloc) unchecked:)])
 (table-merge! [((table::t table::t) table::t effect: (mut) unchecked:)
                ((table::t table::t boolean::t) table::t effect: (mut) unchecked:)])
 (table-ref [((table::t t::t) t::t effect: (pure) unchecked:)
             ((table::t t::t t::t) t::t effect: (pure) unchecked:)])
 (table-search (procedure::t table::t) t::t unchecked:)
 (table-set! [((table::t t::t) t::t effect: (mut) unchecked:)
              ((table::t t::t t::t) t::t effect: (mut) unchecked:)])

 (take (list::t fixnum::t) list::t effect: (pure))
 (take! (list::t fixnum::t) list::t effect: (mut))
 (take-right (list::t fixnum::t) list::t effect: (alloc))
 (tanh (number::t) number::t)

 ;; TODO socket-info::t
 ;;tcp-client-local-socket-info
 ;;tcp-client-peer-socket-info
 ;;tcp-client-self-socket-info
 ;;tcp-server-socket-info

 ;;tcp-service-register!
 ;;tcp-service-unregister!

 (tenth (list::t) t::t effect: (pure))

 ;;terminated-thread-exception-arguments
 ;;terminated-thread-exception-procedure
 ;;terminated-thread-exception?

 (test-bit-field? (fixnum::t fixnum::t integer::t) integer::t)
 (third (list::t) t::t effect: (pure))
 (thread (procedure::t) thread::t effect: (io))
 (thread-base-priority (thread::t) fixnum::t effect: (pure))
 (thread-base-priority-set! (thread::t fixnum::t) void::t effect: (mut io))
 (thread-group->thread-group-list (thread-group::t) list::t effect: (io))
 (thread-group->thread-group-vector (thread-group::t) vector::t effect: (io))
 (thread-group->thread-list (thread-group::t) list::t effect: (io))
 (thread-group->thread-vector (thread-group::t) vector::t effect: (io))
 (thread-group-name (thread-group::t) t::t effect: (pure))
 (thread-group-parent (thread-group::t) thread-group::t effect: (pure))
 (thread-group-resume! (thread-group::t) void::t effect: (io))
 (thread-group-specific (thread-group::t) t::t effect: (pure))
 (thread-group-specific-set! (thread-group::t t::t) void::t effect: (mut))
 (thread-group-suspend! (thread-group::t) void::t effect: (io))
 (thread-group-terminate! (thread-group::t) void::t effect: (io))

 (thread-init! [((thread::t procedure::t) thread::t effect: (mut))
                ((thread::t procedure::t t::t) thread::t effect: (mut))
                ((thread::t procedure::t t::t thread-group::t) thread::t effect: (mut))])
 (thread-interrupt! [((thread::t) void::t effect: (io))
                     ((thread::t procedure::t) void::t effect: (io))])
 (thread-join! [((thread::t) t::t effect: (io))
                ((thread::t t::t) t::t effect: (io))
                ((thread::t t::t t::t) t::t effect: (io))])
 (thread-mailbox-extract-and-rewind () void::t effect: (io))
 (thread-mailbox-next [(() t::t effect: (io))
	                   ((t::t) t::t effect: (io))
                       ((t::t t::t) t::t effect: (io))])
 (thread-mailbox-rewind () void::t effect: (io))
 (thread-name (thread::t) t::t effect: (pure))
 (thread-priority-boost (thread::t) real::t effect: (pure))
 (thread-priority-boost-set! (thread::t real::t) t::t effect: (io mut))
 (thread-quantum (thread::t) real::t effect: (pure))
 (thread-quantum-set! (thread::t real::t) void::t effect: (io mut))
 (thread-receive  [(() t::t effect: (io))
	               ((t::t) t::t effect: (io))
                   ((t::t t::t) t::t effect: (io))])
 (thread-resume! (thread::t) void::t effect: (io))
 (thread-send (thread::t t::t) void::t effect: (io) unchecked:)
 (thread-sleep! (t::t) void::t effect: (io))
 (thread-specific (thread::t) t::t effect: (pure))
 (thread-specific-set! (thread::t t::t) void::t effect: (mut))
 (thread-start! (thread::t) thread::t effect: (io))
 (thread-state (thread::t) t::t effect: (io))
 (thread-state-abnormally-terminated-reason (t::t) t::t effect: (pure))
 (thread-state-abnormally-terminated? (t::t) boolean::t effect: (pure))
 (thread-state-initialized? (t::t) boolean::t effect: (pure))
 (thread-state-normally-terminated-result (t::t) t::t effect: (pure))
 (thread-state-normally-terminated? (t::t) boolean::t effect: (pure))
 (thread-state-running-processor (t::t) processor::t  effect: (pure))
 (thread-state-running? (t::t) boolean::t effect: (pure))
 (thread-state-uninitialized? (t::t) boolean::t effect: (pure))
 (thread-state-waiting-for (t::t) t::t effect: (pure))
 (thread-state-waiting-timeout (t::t) t::t effect: (pure))
 (thread-state-waiting? (t::t) boolean::t effect: (pure))
 (thread-suspend! (thread::t) void::t effect: (io))
 (thread-terminate! (thread::t) void::t effect: (io))
 (thread-thread-group (thread::t) thread-group::t effect: (pure))
 (thread-yield! () void::t effect: (io))
 (time->seconds (time::t) flonum::t effect: (pure) unchecked:)
 (timeout->time (t::t) time::t effect: (pure))

 ;;top
 ;;touch
 ;;trace
 ;;tty-history
 ;;tty-history-max-length-set!
 ;;tty-history-set!
 (tty-mode-set! [((port::t boolean::t boolean::t boolean::t boolean::t) void::t effect: (io))
                 ((port::t boolean::t boolean::t boolean::t boolean::t t::t) void::t effect: (io))])
 ;;tty-paren-balance-duration-set!
 (tty-text-attributes-set! (port::t fixnum::t fixnum::t) void::t effect: (io))
 (tty-type-set! (port::t string::t t::t) void::t effect: (io))
 (tty? (port::t) boolean::t effect: (pure))

 ;;type-exception-arg-id
 ;;type-exception-arguments
 ;;type-exception-procedure
 ;;type-exception-type-id
 ;;type-exception?

 (u16vector fixnum::t u16vector::t effect: (alloc))
 (u16vector->list (u16vector::t) list::t effect: (alloc))
 (u16vector-append u16vector::t u16vector::t effect: (alloc))
 (u16vector-concatenate (list::t) u16vector::t effect: (alloc))
 (u16vector-copy [((u16vector::t) u16vector::t effect: (alloc) unchecked:)
                  ((u16vector::t fixnum::t) u16vector::t effect: (alloc))
                  ((u16vector::t fixnum::t fixnum::t) u16vector::t effect: (alloc))])
 (u16vector-copy! [((u16vector::t fixnum::t u16vector::t) void::t effect: (mut))
                   ((u16vector::t fixnum::t u16vector::t fixnum::t) void::t effect: (mut))
                   ((u16vector::t fixnum::t u16vector::t fixnum::t fixnum::t) void::t effect: (mut))])
 (u16vector-fill! [((u16vector::t fixnum::t) void::t effect: (mut) unchecked:)
                   ((u16vector::t fixnum::t fixnum::t) void::t effect: (mut))
                   ((u16vector::t fixnum::t fixnum::t fixnum::t) void::t effect: (mut))])
 (u16vector-length (u16vector::t) fixnum::t effect: (pure) unchecked:)
 (u16vector-ref (u16vector::t fixnum::t) fixnum::t effect: (pure))
 (u16vector-set (u16vector::t fixnum::t) u16vector::t effect: (alloc))
 (u16vector-set! (u16vector::t fixnum::t fixnum::t) void::t effect: (mut))
 (u16vector-shrink! (u16vector::t fixnum::t) void::t effect: (mut))
 (u16vector-swap! (u16vector::t fixnum::t fixnum::t) void::t effect: (mut))

 (u32vector fixnum::t u32vector::t effect: (alloc))
 (u32vector->list (u32vector::t) list::t effect: (alloc))
 (u32vector-append u32vector::t u32vector::t effect: (alloc))
 (u32vector-concatenate (list::t) u32vector::t effect: (alloc))
 (u32vector-copy [((u32vector::t) u32vector::t effect: (alloc) unchecked:)
                  ((u32vector::t fixnum::t) u32vector::t effect: (alloc))
                  ((u32vector::t fixnum::t fixnum::t) u32vector::t effect: (alloc))])
 (u32vector-copy! [((u32vector::t fixnum::t u32vector::t) void::t effect: (mut))
                   ((u32vector::t fixnum::t u32vector::t fixnum::t) void::t effect: (mut))
                   ((u32vector::t fixnum::t u32vector::t fixnum::t fixnum::t) void::t effect: (mut))])
 (u32vector-fill! [((u32vector::t fixnum::t) void::t effect: (mut) unchecked:)
                   ((u32vector::t fixnum::t fixnum::t) void::t effect: (mut))
                   ((u32vector::t fixnum::t fixnum::t fixnum::t) void::t effect: (mut))])
 (u32vector-length (u32vector::t) fixnum::t effect: (pure) unchecked:)
 (u32vector-ref (u32vector::t fixnum::t) fixnum::t effect: (pure))
 (u32vector-set (u32vector::t fixnum::t) u32vector::t effect: (alloc))
 (u32vector-set! (u32vector::t fixnum::t fixnum::t) void::t effect: (mut))
 (u32vector-shrink! (u32vector::t fixnum::t) void::t effect: (mut))
 (u32vector-swap! (u32vector::t fixnum::t fixnum::t) void::t effect: (mut))

 (u64vector integer::t u64vector::t effect: (alloc))
 (u64vector->list (u64vector::t) list::t effect: (alloc))
 (u64vector-append u64vector::t u64vector::t effect: (alloc))
 (u64vector-concatenate (list::t) u64vector::t effect: (alloc))
 (u64vector-copy [((u64vector::t) u64vector::t effect: (alloc) unchecked:)
                  ((u64vector::t fixnum::t) u64vector::t effect: (alloc))
                  ((u64vector::t fixnum::t integer::t) u64vector::t effect: (alloc))])
 (u64vector-copy! [((u64vector::t fixnum::t u64vector::t) void::t effect: (mut))
                   ((u64vector::t fixnum::t u64vector::t fixnum::t) void::t effect: (mut))
                   ((u64vector::t fixnum::t u64vector::t fixnum::t fixnum::t) void::t effect: (mut))])
 (u64vector-fill! [((u64vector::t integer::t) void::t effect: (mut) unchecked:)
                   ((u64vector::t integer::t fixnum::t) void::t effect: (mut))
                   ((u64vector::t integer::t fixnum::t fixnum::t) void::t effect: (mut))])
 (u64vector-length (u64vector::t) fixnum::t effect: (pure) unchecked:)
 (u64vector-ref (u64vector::t fixnum::t) integer::t effect: (pure))
 (u64vector-set (u64vector::t fixnum::t) u64vector::t effect: (alloc))
 (u64vector-set! (u64vector::t fixnum::t integer::t) void::t effect: (mut))
 (u64vector-shrink! (u64vector::t fixnum::t) void::t effect: (mut))
 (u64vector-swap! (u64vector::t fixnum::t fixnum::t) void::t effect: (mut))

 (u8vector fixnum::t u8vector::t effect: (alloc))
 (u8vector->list (u8vector::t) list::t effect: (alloc))
 (u8vector-append u8vector::t u8vector::t effect: (alloc))
 (u8vector-concatenate (list::t) u8vector::t effect: (alloc))
 (u8vector-copy [((u8vector::t) u8vector::t effect: (alloc) unchecked:)
                 ((u8vector::t fixnum::t) u8vector::t effect: (alloc))
                 ((u8vector::t fixnum::t fixnum::t) u8vector::t effect: (alloc))])
 (u8vector-copy! [((u8vector::t fixnum::t u8vector::t) void::t effect: (mut))
                  ((u8vector::t fixnum::t u8vector::t fixnum::t) void::t effect: (mut))
                  ((u8vector::t fixnum::t u8vector::t fixnum::t fixnum::t) void::t effect: (mut))])
 (u8vector-fill! [((u8vector::t fixnum::t) void::t effect: (mut) unchecked:)
                  ((u8vector::t fixnum::t fixnum::t) void::t effect: (mut))
                  ((u8vector::t fixnum::t fixnum::t fixnum::t) void::t effect: (mut))])
 (u8vector-length (u8vector::t) fixnum::t effect: (pure) unchecked:)
 (u8vector-ref (u8vector::t fixnum::t) fixnum::t effect: (pure))
 (u8vector-set (u8vector::t fixnum::t) u8vector::t effect: (alloc))
 (u8vector-set! (u8vector::t fixnum::t fixnum::t) void::t effect: (mut))
 (u8vector-shrink! (u8vector::t fixnum::t) void::t effect: (mut))
 (u8vector-swap! (u8vector::t fixnum::t fixnum::t) void::t effect: (mut))

 ;; TODO char-set::t
 ;;ucs-range->char-set
 ;;ucs-range->char-set!

 (udp-destination-set! [((string::t fixnum::t) void::t effect: (io))
                        ((string::t fixnum::t port::t) void::t effect: (io))])
 ;; TODO socket-info::t
 ;;udp-local-socket-info
 (udp-read-subu8vector [((u8vector::t fixnum::t fixnum::t) fixnum::t effect: (io))
                        ((u8vector::t fixnum::t fixnum::t port::t) fixnum::t effect: (io))])
 (udp-read-u8vector [(() u8vector::t effect: (io))
                     ((port::t) u8vector::t effect: (io))])
 ;; TODO socket-info::t
 ;;udp-source-socket-info

 (udp-write-subu8vector [((u8vector::t fixnum::t fixnum::t) fixnum::t effect: (io))
                         ((u8vector::t fixnum::t fixnum::t port::t) fixnum::t effect: (io))])
 (udp-write-u8vector [((u8vector::t) void::t effect: (io))
                      ((u8vector::t port::t) void::t effect: (io))])

 ;;unbound-global-exception-code
 ;;unbound-global-exception-rte
 ;;unbound-global-exception-variable
 ;;unbound-global-exception?
 ;;unbound-key-exception-arguments
 ;;unbound-key-exception-procedure
 ;;unbound-key-exception?
 ;;unbound-os-environment-variable-exception-arguments
 ;;unbound-os-environment-variable-exception-procedure
 ;;unbound-os-environment-variable-exception?
 ;;unbound-serial-number-exception-arguments
 ;;unbound-serial-number-exception-procedure
 ;;unbound-serial-number-exception?

 (unbox (box::t) t::t effect: (pure))

 ;;unbreak
 ;;uncaught-exception-arguments
 ;;uncaught-exception-procedure
 ;;uncaught-exception-reason
 ;;uncaught-exception?
 ;;uninitialized-thread-exception-arguments
 ;;uninitialized-thread-exception-procedure
 ;;uninitialized-thread-exception?
 ;;uninterned-keyword?

 (uninterned-symbol? (t::t) boolean::t effect: (pure))

 ;;unknown-keyword-argument-exception-arguments
 ;;unknown-keyword-argument-exception-procedure
 ;;unknown-keyword-argument-exception?
 ;;unterminated-process-exception-arguments
 ;;unterminated-process-exception-procedure
 ;;unterminated-process-exception?
 ;;untrace

 ;; TODO user-info::t
 ;;user-info
 ;;user-info-gid
 ;;user-info-home
 ;;user-info-name
 ;;user-info-shell
 ;;user-info-uid
 ;;user-info?

 (user-name () string::t)
 (vector->bits (vector::t) integer::t effect: (pure))
 (vector-any (procedure::t vector::t . vector::t) t::t)
 (vector-cas! (vector::t fixnum::t t::t t::t) t::t effect: (io mut))
 (vector-concatenate vector::t vector::t effect: (alloc))
 (vector-cumulate (procedure::t t::t vector::t) vector::t effect: (alloc))
 (vector-every (procedure::t vector::t . vector::t) boolean::t)
 (vector-fold (procedure::t t::t vector::t . vector::t) t::t)
 (vector-fold-right (procedure::t t::t vector::t . vector::t) t::t)
 (vector-inc! [((vector::t fixnum::t) fixnum::t effect: (io mut))
               ((vector::t fixnum::t fixnum::t) fixnum::t effect: (io mut))])
 (vector-set (vector::t fixnum::t t::t) vector::t effect: (alloc))
 (vector-shrink! (vector::t fixnum::t) void::t effect: (mut))
 (vector-swap! (vector::t fixnum::t fixnum::t) void::t effect: (mut))
 (vector-unfold (procedure::t fixnum::t . t::t) vector::t)
 (vector-unfold-right (procedure::t fixnum::t . t::t) vector::t)

 ;; gerbil redefines to be variadic
 ;; void

 (will-execute! (weak::t) void::t)
 (will-testator (weak::t) t::t effect: (pure))
 (will? (t::t) boolean::t effect: (pure))

 ;; redefined by gerbil runtime
 ;;with-exception-catcher
 ;;with-exception-handler

 (with-input-from-port (port::t procedure::t) t::t effect: (io))
 (with-input-from-process (t::t procedure::t) t::t effect: (io))
 (with-input-from-string (t::t procedure::t) t::t effect: (io))
 (with-input-from-u8vector (t::t procedure::t) t::t effect: (io))
 (with-input-from-vector (t::t procedure::t) t::t effect: (io))
 (with-output-to-port (port::t procedure::t) t::t effect: (io))
 (with-output-to-process (t::t procedure::t) t::t effect: (io))
 (with-output-to-string (t::t procedure::t) t::t effect: (io))
 (with-output-to-u8vector (t::t procedure::t) t::t effect: (io))
 (with-output-to-vector (t::t procedure::t) t::t effect: (io))
 (write-file-string (t::t string::t) void::t effect: (io))
 (write-file-string-list (t::t list::t) void::t effect: (io))
 (write-file-u8vector (t::t u8vector::t) void::t effect: (io))
 (write-substring [((string::t fixnum::t fixnum::t) void::t effect: (io))
                   ((string::t fixnum::t fixnum::t port::t) void::t effect: (io))])
 (write-subu8vector [((u8vector::t fixnum::t fixnum::t) void::t effect: (io))
                     ((u8vector::t fixnum::t fixnum::t port::t) void::t effect: (io))])

 ;;wrong-number-of-arguments-exception-arguments
 ;;wrong-number-of-arguments-exception-procedure
 ;;wrong-number-of-arguments-exception?
 ;;wrong-number-of-values-exception-code
 ;;wrong-number-of-values-exception-rte
 ;;wrong-number-of-values-exception-vals
 ;;wrong-number-of-values-exception?
 ;;wrong-processor-c-return-exception?

 (xcons (t::t t::t) pair::t effect: (alloc)))
