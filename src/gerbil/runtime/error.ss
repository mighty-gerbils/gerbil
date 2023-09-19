;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil exceptions
prelude: :gerbil/core
package: gerbil/runtime
namespace: #f

(import "gambit" "util" "mop")
(export #t)

;;; Exception classes
;; Exceptions base class for all exceptional conditions
(defclass Exception ())

;; Mixin for getting stack traces
(defclass StackTrace (continuation)
  unckeced: #t)

;; Error base class
(defclass (Error StackTrace Exception) (message irritants where)
  constructor: :init!
  unchecked: #t
  transparent: #t)

;;; Runtime Errors -- wrapped gambit emitted exceptions
(defclass (RuntimeException StackTrace Exception) (exception)
  unchecked: #t
  transparent: #t)

;;; exception control
(def (gerbil-exception-handler-hook exn continue)
  (let (exn (wrap-runtime-exception exn))
    (##repl-exception-handler-hook exn continue)))

(##primordial-exception-handler-hook-set! gerbil-exception-handler-hook)

(def (raise exn)
  (when (StackTrace? exn)
    (unless (&StackTrace-continuation exn)
      (##continuation-capture
       (lambda (cont)
         (set! (&StackTrace-continuation exn)
           (##continuation-next cont))))))
  (##raise exn))

(def (error message . irritants)
  (raise
   (Error message irritants: irritants)))

(defrules check-procedure ()
  ((_ arg where)
   (unless (procedure? arg)
     (raise (Error "expected procedure" where: 'where irritants: [arg])))))

(def (with-exception-handler handler thunk)
  (check-procedure handler with-exception-handler)
  (check-procedure thunk with-exception-hander)
  (##with-exception-handler
   (lambda (exn)
     (let (exn (wrap-runtime-exception exn))
       (handler exn)))
   thunk))

(def (with-catch handler thunk)
  (check-procedure handler with-exception-handler)
  (check-procedure thunk with-exception-hander)
  (##continuation-capture
   (lambda (cont)
     (with-exception-handler
      (lambda (exn) (##continuation-graft cont handler exn))
      thunk))))

(def (wrap-runtime-exception exn)
  (cond
   ((or (heap-overflow-exception? exn)   ; out of memory, don't allocate
        (stack-overflow-exception? exn)) ; not safe to do much
    exn)
   ((or (Error? exn) (Exception? exn))  ; already has it if we want it
    exn)
   ((macro-exception? exn)              ; runtime emitted exception
    (let (rte (RuntimeException exception: exn))
      (##continuation-capture
       (lambda (cont)
         (set! (&StackTrace-continuation rte)
           (##continuation-next cont))))
      rte))
   (else
    exn)))

;; compatibility shims for existing code
(def exception? Exception?)
(def error? Error?)

(def (error-object? obj)
  (or (Error? obj)
      (error-exception? obj)))

(def (error-message obj)
  (cond
   ((Error? obj)
    (Error-message) obj)
   ((error-exception? obj)
    (error-exception-message obj))
   (else #f)))

(def (error-irritants obj)
  (cond
   ((Error? obj)
    (Error-irritants obj))
   ((error-exception? obj)
    (error-exception-parameters obj))
   (else #f)))

(def (error-trace obj)
  (and (Error? obj)
       (Error-where obj)))

;; exception display
(define (display-exception e (port (current-error-port)))
  (cond
   ((method-ref e 'display-exception)
    => (lambda (f) (f e port)))
   (else
    (##default-display-exception e port))))

(##display-exception-hook-set! display-exception)

;; method implementations
(defmethod {:init! Error}
  (lambda (self message where: (where #f) irritants: (irritants []))
    (set! (&Error-message self) message)
    (when irritants
      (set! (&Error-irritants self) irritants))
    (when where
      (set! (&Error-where self) where))))

(defmethod {display-exception Error}
  (lambda (self port)
    (let (old-width (fix-port-width! port))
      (parameterize ((current-output-port port))
        (display "*** ERROR IN ")
        (cond
         ((&Error-where self) => display)
         (else (display "?")))
        (display* " [" (##type-name (object-type self)) "]: ")
        (displayln (&Error-message self))
        (let (irritants (&Error-irritants self))
          (unless (null? irritants)
            (display "--- irritants: ")
            (for-each
              (lambda (obj) (display* obj " "))
              irritants)
            (newline)))
        (when (StackTrace? self)
          (alet (cont (&StackTrace-continuation self))
            (displayln "--- continuation backtrace:")
            (display-continuation-backtrace cont))))
      (reset-port-width! port old-width)))
  rebind: #t)

(defmethod {display-exception RuntimeException}
  (lambda (self port)
    (let (old-width (fix-port-width! port))
      (##default-display-exception (&RuntimeException-exception self) port)
      (alet (cont (&StackTrace-continuation self))
        (display "--- continuation backtrace:" port)
        (newline port)
        (display-continuation-backtrace cont port))
      (reset-port-width! port old-width))))

;;;; Hack to workaround stack trace line truncation issues with port widths
(def (fix-port-width! port)
  (when (macro-character-port? port)
    (let (old-width (macro-character-port-output-width port))
      (macro-character-port-output-width-set! port (lambda (port) 256))
      old-width)))

(def (reset-port-width! port old-width)
  (when (macro-character-port? port)
    (macro-character-port-output-width-set! port old-width)))

;;; Runtime Exceptions
(defsyntax (defruntime-exception stx)
  (syntax-case stx ()
    ((_ (is? getf ...))
     (with-syntax ((macro-is? (stx-identifier #'is? "macro-" #'predicate))
                   ((macro-getf ...)
                    (map (lambda (f) (stx-identifier f "macro-" f))
                         #'(getf ...))))
       #'(begin
           (extern macro-is? macro-getf ...)
           ...
           (def (is? exn)
             (if (RuntimeException? exn)
               (macro-is? (&RuntimeException-exception exn))
               (macro-is? exn)))
           (def (getf exn)
             (if (RuntimeException? exn)
               (macro-getf (&RuntimeException-exception exn))
               (macro-getf exn)))
           ...)))))

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
