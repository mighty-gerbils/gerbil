;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil exceptions
prelude: "../core"
package: gerbil/runtime
namespace: #f

(import "gambit" "util" "mop")
(export #t)

;;; Exception classes
;; Exceptions base class for all exceptional conditions
(defclass Exception ())

;; Mixin for getting stack traces
(defclass StackTrace (continuation))

;; Error base class
(defclass (Error StackTrace Exception) (message irritants where)
  constructor: :init!
  transparent: #t)

(defclass (ContractViolation Error) ())

;;; Runtime Errors -- wrapped gambit emitted exceptions
(defclass (RuntimeException StackTrace Exception) (exception)
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
         (unchecked-slot-set! exn 'continuation cont)))))
  (##raise exn))

(def (error message . irritants)
  (raise
   (Error message irritants: irritants)))


(def (__raise-contract-violation-error message context: (ctx #f) contract: (contract-expr #f) value: (value #f))
  (raise
   (ContractViolation message
                      where: ctx
                      irritants: [contract: contract-expr value: value])))

(set! raise-contract-violation-error __raise-contract-violation-error)

(def contract-violation-error? ContractViolation?)

(def (with-exception-handler (handler : :procedure) (thunk : :procedure))
  (##with-exception-handler
   (lambda (exn)
     (let (exn (wrap-runtime-exception exn))
       (handler exn)))
   thunk))

(def (with-catch (handler : :procedure) (thunk : :procedure))
  (##continuation-capture
   (lambda (cont)
     (with-exception-handler
      (lambda (exn) (##continuation-graft cont handler exn))
      thunk))))

;; redefine this to avoid clown shoes
(def with-exception-catcher with-catch)

(def (wrap-runtime-exception exn)
  (cond
   ((or (heap-overflow-exception? exn)   ; out of memory, don't allocate
        (stack-overflow-exception? exn)) ; not safe to do much
    exn)
   ((Exception? exn)                    ; already has it if we want it
    exn)
   ((macro-exception? exn)              ; runtime emitted exception
    (let (rte (RuntimeException exception: exn))
      (##continuation-capture
       (lambda (cont)
         (unchecked-slot-set! rte 'continuation (##continuation-next cont))))
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
    (&Error-message obj))
   ((error-exception? obj)
    (error-exception-message obj))
   (else #f)))

(def (error-irritants obj)
  (cond
   ((Error? obj)
    (&Error-irritants obj))
   ((error-exception? obj)
    (error-exception-parameters obj))
   (else #f)))

(def (error-trace obj)
  (and (Error? obj)
       (&Error-where obj)))

;; exception display
(def (display-exception e (port (current-error-port)))
  (cond
   ((method-ref e 'display-exception)
    => (lambda (f) (f e port)))
   (else
    (##default-display-exception e port))))

(##display-exception-hook-set! display-exception)

;; method implementations
(defmethod {:init! Error}
  (lambda (self message . rest)
    (let (message
          (if (string? message)
            message
            (call-with-output-string "" (cut display message <>))))
      (unchecked-slot-set! self 'message message)
      (apply class-instance-init! self rest))))

(defmethod {:init! ContractViolation}
  Error:::init!)

(def dump-stack-trace? (make-parameter #f))

(defmethod {display-exception Error}
  (lambda (self port)
    (let ((tmp-port (open-output-string))
          (display-error-newline
           (> (output-port-column port) 0)))
      (fix-port-width! tmp-port)
      (parameterize ((current-output-port tmp-port))
        (when display-error-newline ; avoid clown shoes at the repl prompt
          (newline))
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
              (lambda (obj) (write obj) (write-char #\space))
              irritants)
            (newline)))
        (when (and (StackTrace? self) (dump-stack-trace?))
          (alet (cont (&StackTrace-continuation self))
            (displayln "--- continuation backtrace:")
            (display-continuation-backtrace cont))))
      (##write-string (get-output-string tmp-port) port)))
  rebind: #t)

(defmethod {display-exception RuntimeException}
  (lambda (self port)
    (let (tmp-port (open-output-string))
      (fix-port-width! tmp-port)
      (##default-display-exception (&RuntimeException-exception self) tmp-port)
      (when (dump-stack-trace?)
        (alet (cont (&StackTrace-continuation self))
          (display "--- continuation backtrace:" tmp-port)
          (newline tmp-port)
          (display-continuation-backtrace cont tmp-port)))
      (##write-string (get-output-string tmp-port) port))))

;;;; Hack to workaround stack trace line truncation issues with port widths
(def (fix-port-width! port)
  (when (macro-character-port? port)
    (let (old-width (macro-character-port-output-width port))
      (macro-character-port-output-width-set! port (lambda (port) 256))
      old-width)))

(def (reset-port-width! port old-width)
  (when (macro-character-port? port)
    (macro-character-port-output-width-set! port old-width)))

;; hook for expander
(def (datum-parsing-exception-filepos e)
  (macro-readenv-filepos (datum-parsing-exception-readenv e)))

;;; Runtime Exceptions
(defsyntax (defruntime-exception stx)
  (syntax-case stx ()
    ((_ (is? getf ...))
     (with-syntax ((macro-is? (stx-identifier #'is? "macro-" #'is?))
                   ((macro-getf ...)
                    (map (lambda (f) (stx-identifier f "macro-" f))
                         #'(getf ...))))
       #'(begin
           (extern macro-is? macro-getf ...)
           (def (is? exn)
             (if (RuntimeException? exn)
               (let (e (&RuntimeException-exception exn))
                 (macro-is? e))
               (macro-is? exn)))
           (def (getf exn)
             (if (RuntimeException? exn)
               (let (e (&RuntimeException-exception exn))
                 (if (macro-is? e)
                   (macro-getf e)
                   (error "not an instance" 'is? ['getf e])))
               (if (macro-is? exn)
                 (macro-getf exn)
                 (error "not an instance" 'is? ['getf exn]))))
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
