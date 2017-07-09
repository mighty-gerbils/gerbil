;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gambit specific runtime symbols: exceptions
package: gerbil/gambit

(export #t)
(extern namespace: #f
  display-exception

  primordial-exception-handler
  err-code->string

  fixnum-overflow-exception?
  fixnum-overflow-exception-procedure
  fixnum-overflow-exception-arguments

  initialized-thread-exception?
  initialized-thread-exception-procedure
  initialized-thread-exception-arguments
  uninitialized-thread-exception?
  uninitialized-thread-exception-procedure
  uninitialized-thread-exception-arguments
  inactive-thread-exception?
  inactive-thread-exception-procedure
  inactive-thread-exception-arguments

  unterminated-process-exception?
  unterminated-process-exception-procedure
  unterminated-process-exception-arguments

  nonempty-input-port-character-buffer-exception?
  nonempty-input-port-character-buffer-exception-arguments
  nonempty-input-port-character-buffer-exception-procedure

  unbound-serial-number-exception?
  unbound-serial-number-exception-procedure
  unbound-serial-number-exception-arguments
  unbound-table-key-exception?
  unbound-table-key-exception-procedure
  unbound-table-key-exception-arguments

  mailbox-receive-timeout-exception?
  mailbox-receive-timeout-exception-procedure
  mailbox-receive-timeout-exception-arguments
  heap-overflow-exception?
  stack-overflow-exception?
  os-exception?
  os-exception-procedure
  os-exception-arguments
  os-exception-code
  os-exception-message
  no-such-file-or-directory-exception?
  no-such-file-or-directory-exception-procedure
  no-such-file-or-directory-exception-arguments
  unbound-os-environment-variable-exception?
  unbound-os-environment-variable-exception-procedure
  unbound-os-environment-variable-exception-arguments
  scheduler-exception?
  scheduler-exception-reason
  deadlock-exception?
  abandoned-mutex-exception?
  join-timeout-exception?
  join-timeout-exception-procedure
  join-timeout-exception-arguments
  started-thread-exception?
  started-thread-exception-procedure
  started-thread-exception-arguments
  terminated-thread-exception?
  terminated-thread-exception-procedure
  terminated-thread-exception-arguments
  uncaught-exception?
  uncaught-exception-procedure
  uncaught-exception-arguments
  uncaught-exception-reason
  cfun-conversion-exception?
  cfun-conversion-exception-procedure
  cfun-conversion-exception-arguments
  cfun-conversion-exception-code
  cfun-conversion-exception-message
  sfun-conversion-exception?
  sfun-conversion-exception-procedure
  sfun-conversion-exception-arguments
  sfun-conversion-exception-code
  sfun-conversion-exception-message
  multiple-c-return-exception?
  datum-parsing-exception?
  datum-parsing-exception-kind
  datum-parsing-exception-parameters
  datum-parsing-exception-readenv
  expression-parsing-exception?
  expression-parsing-exception-kind
  expression-parsing-exception-parameters
  expression-parsing-exception-source
  unbound-global-exception?
  unbound-global-exception-variable
  unbound-global-exception-code
  unbound-global-exception-rte
  type-exception?
  type-exception-procedure
  type-exception-arguments
  type-exception-arg-num
  type-exception-type-id
  range-exception?
  range-exception-procedure
  range-exception-arguments
  range-exception-arg-num
  divide-by-zero-exception?
  divide-by-zero-exception-procedure
  divide-by-zero-exception-arguments
  improper-length-list-exception?
  improper-length-list-exception-procedure
  improper-length-list-exception-arguments
  improper-length-list-exception-arg-num
  wrong-number-of-arguments-exception?
  wrong-number-of-arguments-exception-procedure
  wrong-number-of-arguments-exception-arguments
  number-of-arguments-limit-exception?
  number-of-arguments-limit-exception-procedure
  number-of-arguments-limit-exception-arguments
  nonprocedure-operator-exception?
  nonprocedure-operator-exception-operator
  nonprocedure-operator-exception-arguments
  nonprocedure-operator-exception-code
  nonprocedure-operator-exception-rte
  unknown-keyword-argument-exception?
  unknown-keyword-argument-exception-procedure
  unknown-keyword-argument-exception-arguments
  keyword-expected-exception?
  keyword-expected-exception-procedure
  keyword-expected-exception-arguments
  error-exception?
  error-exception-message
  error-exception-parameters

  invalid-hash-number-exception?
  invalid-hash-number-exception-procedure
  invalid-hash-number-exception-arguments
  )
