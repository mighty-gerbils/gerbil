;;; -*- Gerbil -*-
;;; (C) vyzo
;;; Gerbil error objects
(import :gerbil/gambit/continuations
        :gerbil/gambit/exceptions
        :gerbil/gambit/threads)
(export Error Error?
        Error-message Error-irritants Error-where
        Error:::init!
        Error::display-exception
        deferror-class
        StackTrace StackTrace?
        BadArgument BadArgument? raise-bad-argument bad-argument-error?
        IOError IOError? raise-io-error io-error?
        IOClosed IOClosed? raise-io-closed io-closed-error?
        PrematureEndOfInput PrematureEndOfInput? raise-premature-end-of-input
        premature-end-of-input-error?
        Timeout Timeout? raise-timeout timeout-error?
        ContextError ContextError? raise-context-error context-error?
        KeyError KeyError? raise-key-error key-error?
        Exception Exception?
        RuntimeException RuntimeException?
        (rename: raise-unspecified-error error)
        (rename: raise-bug BUG)
        (rename: raise/stack-trace raise)
        is-it-bug?
        with-exception-stack-trace
        dump-stack-trace!
        ;; re-export this so that noone has to import :gerbil/gambit/exceptions
        display-exception)

(defsyntax <exception>
  (make-runtime-struct-info
   runtime-identifier: (quote-syntax exception::t)))

(defsyntax <error>
  (make-runtime-struct-info
   runtime-identifier: (quote-syntax error::t)))

;; Error base class
(defclass (Error <error>) ()
  constructor: :init!)

(defmethod {:init! Error}
  (lambda (self message where: (where #f) irritants: (irritants []))
    (struct-instance-init! self message irritants where)))

(defmethod {display-exception Error}
  (lambda (self port)
    (let (old-width (fix-port-width! port))
      (parameterize ((current-output-port port))
        (cond
         ((Error-where self)
          => (lambda (where) (display* where ": "))))
        (display* "[" (##type-name (object-type self)) "] ")
        (displayln (Error-message self))
        (let (irritants (Error-irritants self))
          (unless (null? irritants)
            (display "--- irritants: ")
            (for-each
              (lambda (obj) (display* obj " "))
              irritants)
            (newline)))
        (when (StackTrace? self)
          (alet (cont (StackTrace-continuation self))
            (displayln "--- continuation backtrace:")
            (display-continuation-backtrace cont))))
      (reset-port-width! port old-width)))
  rebind: #t)

(def (Error-message err)
  (##structure-ref err 1 error::t #f))
(def (Error-irritants err)
  (##structure-ref err 2 error::t #f))
(def (Error-where err)
  (##structure-ref err 3 error::t #f))

;; utility macro
(defsyntax (deferror-class stx)
  (syntax-case stx ()
    ((_ Class slots predicate-alias)
     (identifier? #'Class)
     #'(deferror-class (Class StackTrace Error) slots predicate-alias Error:::init!))
    ((_ Class slots predicate-alias kons)
     (identifier? #'Class)
     #'(deferror-class (Class StackTrace Error) slots predicate-alias kons))
    ((_ (Class Mixin ...) slots predicate-alias)
     (identifier-list? #'(Class Mixin ...))
     #'(deferror-class (Class Mixin ...) slots predicate-alias Error:::init!))
    ((_ (Class Mixin ...) slots predicate-alias kons)
     (identifier-list? #'(Class Mixin ...))
     (with-syntax ((Class? (stx-identifier #'Class #'Class "?")))
       #'(begin
           (defclass (Class Mixin ...) slots)
           (defmethod {:init! Class}
             kons)
           (def predicate-alias Class?))))))

;; Mixin for getting stack traces
(defclass StackTrace (continuation))

;; Input argument errors
(deferror-class BadArgument () bad-argument-error?)

;; IO Errors
(deferror-class IOError () io-error?)
(deferror-class (PrematureEndOfInput IOError) () premature-end-of-input-error?)
(deferror-class (IOClosed IOError) () io-closed-error?)

;; Timeouts
(deferror-class Timeout () timeout-error?)

;; contextual errors
(deferror-class ContextError () context-error?)

;; key lookup errors
(deferror-class KeyError () key-error?)

;; unspecified errors
(deferror-class UnspecifiedError () unspecified-error?)

;; Exceptions base class for non error exceptional conditions
(defclass (Exception <exception>) ())

;; check to the raiser!
(def (raise-bad-argument where expectation . irritants)
  (raise/stack-trace
   (BadArgument (string-append "Bad argument; expected " expectation)
                where: where irritants: irritants)))

(def (raise-io-error where message . irritants)
  (raise/stack-trace
   (IOError message where: where irritants: irritants)))

(def (raise-premature-end-of-input where . irritants)
  (raise/stack-trace
   (PrematureEndOfInput "premature end of input" where: where irritants: irritants)))

(def (raise-io-closed where message . irritants)
  (raise/stack-trace
   (IOClosed message where: where irritants: irritants)))

(def (raise-timeout where message . irritants)
  (raise/stack-trace
   (Timeout message where: where irritants: irritants)))

(def (raise-context-error where message . irritants)
  (raise/stack-trace
   (ContextError message where: where irritants: irritants)))

(def (raise-key-error where . irritants)
  (raise/stack-trace
   (KeyError "no value associated with key" where: where irritants: irritants)))

(def (raise-unspecified-error message . irritants)
  (raise/stack-trace
   (UnspecifiedError message irritants: irritants)))

;; it's a bug
(deferror-class BUG () is-it-bug?)
(def (raise-bug where message . irritants)
  (raise (BUG (string-append "BUG: " message) where: where irritants: irritants)))

;; raises an exception, filling the continuation if the exception mixes in StackTrace
(def (raise/stack-trace exn)
  (when (StackTrace? exn)
    (unless (StackTrace-continuation exn)
      (continuation-capture
       (lambda (cont)
         (set! (StackTrace-continuation exn) (##continuation-next cont))))))
  (raise exn))

;; utilities for exception printing
(def (with-exception-stack-trace thunk (error-port (current-error-port)))
  (with-exception-handler
   (let (E (current-exception-handler))
     (lambda (exn)
       (continuation-capture
        (lambda (cont)
          (dump-stack-trace! cont exn error-port)
          (E exn)))))
   thunk))

(def (dump-stack-trace! cont exn (error-port (current-error-port)))
  (let ((out (open-output-string)))
    (fix-port-width! out)
    (display "*** Unhandled exception in " out)
    (display (current-thread) out)
    (newline out)
    (display-exception exn out)

    ;; only do that if there no stack trace in the exception already
    (unless (StackTrace? exn)
      (display "Continuation backtrace: " out)
      (newline out)
      (display-continuation-backtrace cont out))

    (##write-string (get-output-string out) error-port)))

;;; Runtime Errors -- stack traces for gambit emitted exceptions
(defclass (RuntimeException StackTrace Exception) (exception))

(defmethod {display-exception RuntimeException}
  (lambda (self port)
    (let (old-width (fix-port-width! port))
      #;(##default-display-exception (RuntimeException-exception self) port)
      (alet (cont (StackTrace-continuation self))
        (display "--- continuation backtrace:" port)
        (newline port)
        (display-continuation-backtrace cont port))
      (reset-port-width! port old-width))))

;; exception?
(def (exception-handler-hook exn continue)
  (cond
   ((heap-overflow-exception? exn)      ; not safe to do much
    (continue exn))
   ((or (Error? exn) (Exception? exn))  ; already has it if we want it
    (continue exn))
   ((macro-exception? exn)
    (let (rte (RuntimeException exception: exn))
      (continuation-capture
       (lambda (cont)
         (set! (StackTrace-continuation rte) (##continuation-next cont))))
      (if (eq? continue ##thread-end-with-uncaught-exception!)
        (##repl-exception-handler-hook rte continue)
        (continue rte))))
   (else
    (continue exn))))

(##primordial-exception-handler-hook-set! exception-handler-hook)

(defsyntax (defruntime-exception stx)
  (syntax-case stx ()
    ((_ (predicate accessor ...))
     (with-syntax ((is? (stx-identifier #'predicate "is-" #'predicate))
                   ((getf ...)
                    (map (lambda (f) (stx-identifier f "get-" f))
                         #'(accessor ...))))
       #'(begin
           (def (is? exn)
             (if (RuntimeException? exn)
               (predicate (RuntimeException-exception exn))
               (predicate exn)))
           (def (getf exn)
             (if (RuntimeException? exn)
               (accessor (RuntimeException-exception exn))
               (accessor exn)))
           ...
           (export
             (rename: is? predicate)
             (rename: getf accessor)
             ...))))))

(defrules defruntime-exceptions ()
  ((_ defexn ...)
   (begin
     (defruntime-exception defexn)
     ...)))

(defruntime-exceptions
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

(extern namespace: #f
  macro-exception?
  macro-debug-settings-uncaught-primordial
  macro-debug-settings-uncaught
  macro-character-port?
  macro-character-port-output-width
  macro-character-port-output-width-set!)

;;;; Hack to workaround stack trace line truncation issues with port widths
(def (fix-port-width! port)
  (when (macro-character-port? port)
    (let (old-width (macro-character-port-output-width port))
      (macro-character-port-output-width-set! port (lambda (port) 256))
      old-width)))

(def (reset-port-width! port old-width)
  (when (macro-character-port? port)
    (macro-character-port-output-width-set! port old-width)))
