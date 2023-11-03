;;; -*- Gerbil -*-
;;; (C) vyzo
;;; Gerbil error objects
(import :gerbil/runtime/error
        :gerbil/runtime/thread
        (for-syntax :gerbil/expander))
(export Exception Exception?
        RuntimeException RuntimeException?
        Error Error?
        Error-message Error-irritants Error-where
        exception-context
        Error:::init!
        deferror-class
        defraise/context
        raise/context
        StackTrace StackTrace?
        check-argument
        exception-context
        IOError IOError? raise-io-error io-error?
        Closed Closed? raise-io-closed io-closed-error?
        PrematureEndOfInput PrematureEndOfInput? raise-premature-end-of-input
        premature-end-of-input-error?
        Timeout Timeout? raise-timeout timeout-error?
        UnboundKey UnboundKey? raise-unbound-key unbound-key-error?
        ContextError ContextError? raise-context-error context-error?
        UnsupportedMethod UnsupportedMethod? raise-unsupported-method unsupported-method-error?
        ContractViolation ContractViolation? raise-contract-violation contract-violation-error?
        raise-bad-argument
        (rename: raise-bug BUG)
        is-it-bug?
        with-exception-stack-trace
        dump-stack-trace!
        exit-with-error
        exit-on-error?
        call-with-exit-on-error
        with-exit-on-error)

;; utility macro for definint error classes
(defsyntax (deferror-class stx)
  (syntax-case stx ()
    ((_ Class slots)
     (identifier? #'Class)
     #'(deferror-class (Class Error) slots #f Error:::init!))
    ((_ Class slots predicate-alias)
     (identifier? #'Class)
     #'(deferror-class (Class Error) slots predicate-alias Error:::init!))
    ((_ Class slots predicate-alias kons)
     (identifier? #'Class)
     #'(deferror-class (Class Error) slots predicate-alias kons))
    ((_ (Class Mixin ...) slots)
     (identifier-list? #'(Class Mixin ...))
     #'(deferror-class (Class Mixin ...) slots #f Error:::init!))
    ((_ (Class Mixin ...) slots predicate-alias)
     (identifier-list? #'(Class Mixin ...))
     #'(deferror-class (Class Mixin ...) slots predicate-alias Error:::init!))
    ((_ (Class Mixin ...) slots predicate-alias kons)
     (identifier-list? #'(Class Mixin ...))
     (with-syntax ((defpredicate-alias
                     (if (stx-e #'predicate-alias)
                       (with-syntax ((Class? (stx-identifier #'Class #'Class "?")))
                         #'(def predicate-alias Class?))
                       #'(begin))))
       #'(begin
           (defclass (Class Mixin ...) slots transparent: #t)
           (defmethod {:init! Class}
             kons)
           defpredicate-alias)))))

;; IO Errors
(deferror-class IOError () io-error?)
(deferror-class (PrematureEndOfInput IOError) () premature-end-of-input-error?)
(deferror-class (Closed IOError) () io-closed-error?)

;; Timeouts
(deferror-class Timeout () timeout-error?)

;; contextual errors
(deferror-class ContextError () context-error?)

;; key lookup errors
(deferror-class UnboundKey () unbound-key-error?)

;; unsupported interface methods
(deferror-class UnsupportedMethod () unsupported-method-error?)

;; contract violations
(deferror-class ContractViolation () contract-violation-error?)

;; utility macros
(defsyntax (exception-context stx)
  (syntax-case stx ()
    ((macro)
     #'(exception-context macro))
    ((_ here)
     (with-syntax ((where
                    (cond
                     ((or (stx-source #'here)
                          (stx-source stx))
                      => (lambda (locat)
                           (call-with-output-string "" (cut ##display-locat locat #t <>))))
                     (else
                      (expander-context-id (core-context-top))))))
       #'(quote where)))))

(defrules check-argument ()
  ((_ expr expectation argument)
   (begin-annotation @contract
     (unless expr
       (raise-contract-violation argument expr (string-append "bad argument; expected " expectation) argument)))))

;; check to the raiser!
(defrules raise/context ()
  ((macro exn)
   (raise/context exn where: macro))
  ((_ exn where: ctx)
   (let (e exn)
     (set! (@ e where) (exception-context ctx))
     (raise e))))

(defrules defraise/context ()
  ((_ (rule where args ...) (Klass message irritants: irritants))
   (defrules rule ()
     ((_ where args ...)
      (raise
       (Klass message
              where: (exception-context where)
              irritants: (cons 'where irritants)))))))

(defraise/context (raise-io-error where message irritants ...)
  (IOError message irritants: [irritants ...]))

(defraise/context (raise-premature-end-of-input where irritants ...)
  (PrematureEndOfInput "premature end of input" irritants: [irritants ...]))

(defraise/context (raise-io-closed where message irritants ...)
  (Closed message irritants: [irritants ...]))

(defraise/context (raise-timeout where message irritants ...)
  (Timeout message irritants: [irritants ...]))

(defraise/context (raise-context-error where message irritants ...)
  (ContextError message irritants: [irritants ...]))

(defraise/context (raise-unbound-key where irritants ...)
  (UnboundKey "no value associated with key" irritants: [irritants ...]))

(defraise/context (raise-unsupported-method where)
  (UnsupportedMethod "unsupported method" irritants: []))

(defraise/context (raise-contract-violation where contract irritants ...)
  (ContractViolation "contract violation" irritants: ['contract irritants ...]))

(defraise/context (raise-bad-argument where expectation irritants ...)
  (ContractViolation "contract violation" irritants: [expectation irritants ...]))

;; it's a bug
(deferror-class BUG () is-it-bug?)

(defraise/context (raise-bug where message irritants ...)
  (BUG (string-append "BUG: " message) irritants: [irritants ...]))

;; runtime exceptions
(defrules export-runtime-exceptions ()
  ((_ (symbol ...) ...)
   (begin (export symbol ...) ...)))

(export-runtime-exceptions
  (abandoned-mutex-exception?)

  (cfun-conversion-exception?
   cfun-conversion-exception-arguments
   cfun-conversion-exception-code
   cfun-conversion-exception-message
   cfun-conversion-exception-procedure)

  (datum-parsing-exception?
   datum-parsing-exception-kind
   datum-parsing-exception-parameters
   datum-parsing-exception-readenv)

  (deadlock-exception?)

  (divide-by-zero-exception?
   divide-by-zero-exception-arguments
   divide-by-zero-exception-procedure)

  (error-exception?
   error-exception-message
   error-exception-parameters)

  (expression-parsing-exception?
   expression-parsing-exception-kind
   expression-parsing-exception-parameters
   expression-parsing-exception-source)

  (file-exists-exception?
   file-exists-exception-arguments
   file-exists-exception-procedure)

  (fixnum-overflow-exception?
   fixnum-overflow-exception-arguments
   fixnum-overflow-exception-procedure)

  (heap-overflow-exception?)

  (inactive-thread-exception?
   inactive-thread-exception-arguments
   inactive-thread-exception-procedure)

  (initialized-thread-exception?
   initialized-thread-exception-arguments
   initialized-thread-exception-procedure)

  (invalid-hash-number-exception?
   invalid-hash-number-exception-arguments
   invalid-hash-number-exception-procedure)

  (invalid-utf8-encoding-exception?
   invalid-utf8-encoding-exception-arguments
   invalid-utf8-encoding-exception-procedure)

  (join-timeout-exception?
   join-timeout-exception-arguments
   join-timeout-exception-procedure)

  (keyword-expected-exception?
   keyword-expected-exception-arguments
   keyword-expected-exception-procedure)

  (length-mismatch-exception?
   length-mismatch-exception-arg-id
   length-mismatch-exception-arguments
   length-mismatch-exception-procedure)

  (mailbox-receive-timeout-exception?
   mailbox-receive-timeout-exception-arguments
   mailbox-receive-timeout-exception-procedure)

  (module-not-found-exception?
   module-not-found-exception-arguments
   module-not-found-exception-procedure)

  (multiple-c-return-exception?)

  (no-such-file-or-directory-exception?
   no-such-file-or-directory-exception-arguments
   no-such-file-or-directory-exception-procedure)

  (noncontinuable-exception?
   noncontinuable-exception-reason)

  (nonempty-input-port-character-buffer-exception?
   nonempty-input-port-character-buffer-exception-arguments
   nonempty-input-port-character-buffer-exception-procedure)

  (nonprocedure-operator-exception?
   nonprocedure-operator-exception-arguments
   nonprocedure-operator-exception-code
   nonprocedure-operator-exception-operator
   nonprocedure-operator-exception-rte)

  (not-in-compilation-context-exception?
   not-in-compilation-context-exception-arguments
   not-in-compilation-context-exception-procedure)

  (number-of-arguments-limit-exception?
   number-of-arguments-limit-exception-arguments
   number-of-arguments-limit-exception-procedure)

  (os-exception?
   os-exception-arguments
   os-exception-code
   os-exception-message
   os-exception-procedure)

  (permission-denied-exception?
   permission-denied-exception-arguments
   permission-denied-exception-procedure)

  (range-exception?
   range-exception-arg-id
   range-exception-arguments
   range-exception-procedure)

  (rpc-remote-error-exception?
   rpc-remote-error-exception-arguments
   rpc-remote-error-exception-message
   rpc-remote-error-exception-procedure)

  (scheduler-exception?
   scheduler-exception-reason)

  (sfun-conversion-exception?
   sfun-conversion-exception-arguments
   sfun-conversion-exception-code
   sfun-conversion-exception-message
   sfun-conversion-exception-procedure)

  (stack-overflow-exception?)

  (started-thread-exception?
   started-thread-exception-arguments
   started-thread-exception-procedure)

  (terminated-thread-exception?
   terminated-thread-exception-arguments
   terminated-thread-exception-procedure)

  (type-exception?
   type-exception-arg-id
   type-exception-arguments
   type-exception-procedure
   type-exception-type-id)

  (unbound-global-exception?
   unbound-global-exception-code
   unbound-global-exception-rte
   unbound-global-exception-variable)

  (unbound-key-exception?
   unbound-key-exception-arguments
   unbound-key-exception-procedure)

  (unbound-os-environment-variable-exception?
   unbound-os-environment-variable-exception-arguments
   unbound-os-environment-variable-exception-procedure)

  (unbound-serial-number-exception?
   unbound-serial-number-exception-arguments
   unbound-serial-number-exception-procedure)

  (uncaught-exception?
   uncaught-exception-arguments
   uncaught-exception-procedure
   uncaught-exception-reason)

  (uninitialized-thread-exception?
   uninitialized-thread-exception-arguments
   uninitialized-thread-exception-procedure)

  (unknown-keyword-argument-exception?
   unknown-keyword-argument-exception-arguments
   unknown-keyword-argument-exception-procedure)

  (unterminated-process-exception?
   unterminated-process-exception-arguments
   unterminated-process-exception-procedure)

  (wrong-number-of-arguments-exception?
   wrong-number-of-arguments-exception-arguments
   wrong-number-of-arguments-exception-procedure)

  (wrong-number-of-values-exception?
   wrong-number-of-values-exception-code
   wrong-number-of-values-exception-rte
   wrong-number-of-values-exception-vals)

  (wrong-processor-c-return-exception?))

(def exit-on-error? (make-parameter #t))

(def (exit-with-error e)
  (def port (current-error-port))
  (defrules ignore-errors () ((_ body ...) (with-catch void (lambda () body ...))))
  (ignore-errors (force-output port))
  #;(ignore-errors (display-build-manifest build-manifest port)) ;; only available in v0.19
  (ignore-errors (newline port))
  (ignore-errors (display-exception e port))
  ;; If the stack trace was printed, making the message out of reach of the user,
  ;; then redundantly print the error message at the bottom without the stack trace.
  (ignore-errors
   (when (StackTrace? e)
     (display-exception e port)))
  (ignore-errors (force-output port))
  (exit 2))

(def (call-with-exit-on-error thunk)
  (with-catch
    (lambda (e)
      (if (exit-on-error?)
        (exit-with-error e)
        (raise e)))
    thunk))

(defrules with-exit-on-error ()
  ((_ body ...) (call-with-exit-on-error (lambda () body ...))))
