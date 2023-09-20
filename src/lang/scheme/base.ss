;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme base) library
(import :gerbil/gambit/ports
        :gerbil/gambit/exact
        :std/srfi/9
        :std/text/utf8
        ./base-impl)

(extern namespace: #f
  boolean=? symbol=?
  call-with-port
  binary-port?
  textual-port?
  input-port-open?
  output-port-open?
  u8-ready?
  read-bytevector read-bytevector!
  write-bytevector
  list-copy list-set!
  floor/ floor-quotient floor-remainder
  truncate/ truncate-quotient truncate-remainder
  square)

(export
  _ ... =>
  < <= = >= > - / * +
  abs
  and
  append
  apply
  assoc
  assq
  assv
  begin
  binary-port?
  boolean=?
  boolean?
  (rename: u8vector bytevector)
  (rename: u8vector? bytevector?)
  (rename: u8vector-append bytevector-append)
  (rename: u8vector-copy bytevector-copy)
  (rename: u8vector-copy! bytevector-copy!)
  (rename: u8vector-length bytevector-length)
  (rename: u8vector-ref bytevector-u8-ref)
  (rename: u8vector-set! bytevector-u8-set!)
  caar
  cadr
  call/cc
  call-with-current-continuation
  call-with-port
  call-with-values
  car
  case
  cdar
  cddr
  cdr
  ceiling
  char<=?
  char<?
  char=?
  char>=?
  char>?
  char?
  char->integer
  char-ready?
  close-input-port
  close-output-port
  close-port
  complex?
  cond
  (rename: r7rs-cond-expand cond-expand)
  cons
  current-error-port
  current-input-port
  current-output-port
  define
  define-record-type
  define-syntax
  define-values
  denominator
  do
  dynamic-wind
  else
  eof-object
  eof-object?
  eq?
  equal?
  eqv?
  error
  error-object?
  (rename: error-irritants error-object-irritants)
  (rename: error-message error-object-message)
  even?
  exact
  exact?
  exact-integer?
  exact-integer-sqrt
  expt
  features
  file-error?
  floor
  floor/
  floor-quotient
  floor-remainder
  (rename: force-output flush-output-port)
  for-each
  gcd
  (rename: get-output-u8vector get-output-bytevector)
  get-output-string
  guard
  if
  (rename: r7rs-include include)
  include-ci
  inexact
  inexact?
  input-port?
  input-port-open?
  integer?
  integer->char
  lambda
  lcm
  length
  let
  let*
  letrec
  letrec*
  letrec-syntax
  let-syntax
  let-values
  let*-values
  list
  list?
  list-copy
  list-ref
  list-set!
  list->string
  list-tail
  list->vector
  (rename: make-u8vector make-bytevector)
  make-list
  make-parameter
  make-string
  make-vector
  map
  max
  member
  memq
  memv
  min
  modulo
  negative?
  newline
  not
  null?
  number?
  number->string
  numerator
  odd?
  (rename: open-input-u8vector open-input-bytevector)
  open-input-string
  (rename: open-output-u8vector open-output-bytevector)
  open-output-string
  or
  output-port?
  output-port-open?
  pair?
  parameterize
  peek-char
  peek-u8
  port?
  positive?
  procedure?
  quasiquote
  quote
  quotient
  (rename: r7rs-raise raise)
  raise-continuable
  rational?
  rationalize
  read-bytevector
  read-bytevector!
  read-char
  read-error?
  read-line
  read-string
  read-u8
  real?
  remainder
  reverse
  round
  set!
  set-car!
  set-cdr!
  square
  string
  string<=?
  string<?
  string=?
  string>=?
  string>?
  string?
  string-append
  string-copy
  string-copy!
  string-fill!
  string-for-each
  string-length
  string->list
  string-map
  string->number
  string-ref
  string-set!
  string->symbol
  string->utf8
  string->vector
  substring
  symbol=?
  symbol?
  symbol->string
  syntax-error
  (phi: +1 syntax-rules)
  textual-port?
  truncate
  truncate/
  truncate-quotient
  truncate-remainder
  u8-ready?
  unless
  unquote
  unquote-splicing
  utf8->string
  values
  vector
  vector?
  vector-append
  vector-copy
  vector-copy!
  vector-fill!
  vector-for-each
  vector-length
  vector->list
  vector-map
  vector-ref
  vector-set!
  vector->string
  when
  (rename: r7rs-with-exception-handler with-exception-handler)
  write-bytevector
  write-char
  write-string
  write-u8
  zero?
  )
