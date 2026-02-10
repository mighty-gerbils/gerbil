;;; -*- Gerbil -*-
;;; © vyzo
;;; buffered IO interfaces
(import ./base)
(export #t)

(defrule (byte? o)
  (and (fixnum? o)
       (fx<= 0 o 255)))

(defrule (nonnegative-integer? o)
  (and (integer? o) (>= o 0)))

(defrule (previous-input? type?)
  (lambda (o)
    (or (type? o)
        ((list-of? type?) o))))

;; buffered IO
(interface (PeekableReader Reader)
  ;; reads a single byte
  ;; returns the byte or eof object
  (read-u8) => :t
  ;; peeks the next byte
  ;; returns the byte or eof object
  (peek-u8) => :t)

(deftype @BufferedReader BufferedReader)
(interface (BufferedReader PeekableReader)
  ;; puts back some bytes previously read; can also inject bytes.
  ;; - previous-input is a u8 or a list of u8s injected back into the buffer
  (put-back (previous-input :~ (previous-input? fixnum?)))
  => :void

  ;; skips the next count bytes of input
  (skip (count :~ nonnegative-fixnum? :- :fixnum))
  => :void

  ;; returns a new BufferedReader instance delimiting the input length that shares the underlying
  ;; buffer; the limit must be an nonnegative integer
  (delimit (limit :~ nonnegative-integer? :- :integer))
  => @BufferedReader

  ;; returns the number of buffered bytes available to read without further I/O
  (available)
  => :fixnum)

(interface (BufferedWriter Writer)
  ;; writes a single byte
  (write-u8 (u8 :~ byte? : :fixnum))
  => :fixnum

  ;; flushes the buffer to the underlying output instance
  (flush)
  => :void)
