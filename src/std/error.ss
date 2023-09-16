;;; -*- Gerbil -*-
;;; (C) vyzo
;;; Gerbil error objects
(import :gerbil/gambit/continuations)
(export Error Error?
        Error-message Error-irritants Error-where
        Error:::init!
        Error::display-exception
        StackTrace StackTrace?
        BadArgument BadArgument? raise-bad-argument bad-argument-error?
        IOError IOError? raise-io-error io-error?
        IOClosed IOClosed? raise-io-closed io-closed-error?
        PrematureEndOfInput PrematureEndOfInput? raise-premature-end-of-input
        premature-end-of-input-error?
        Timeout Timeout? raise-timeout timeout-error?
        Exception Exception?
        (rename: raise/stack-trace raise))

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
          (display-continuation-backtrace cont)))))
  rebind: #t)

(def (Error-message err)
  (##structure-ref err 1 error::t #f))
(def (Error-irritants err)
  (##structure-ref err 2 error::t #f))
(def (Error-where err)
  (##structure-ref err 3 error::t #f))

;; Mixin for getting stack traces
(defclass StackTrace (continuation))

;; Input argument errors
(defclass (BadArgument StackTrace Error) ())
(defmethod {:init! BadArgument}
  Error:::init!)
(def bad-argument-error? BadArgument?)

;; IO Errors
(defclass (IOError StackTrace Error) ())
(defmethod {:init! IOError}
  Error:::init!)
(def io-error? IOError?)

(defclass (PrematureEndOfInput IOError) ())
(defmethod {:init! PrematureEndOfInput}
  Error:::init!)
(def premature-end-of-input-error? PrematureEndOfInput?)

(defclass (IOClosed IOError) ())
(defmethod {:init! IOClosed}
  Error:::init!)
(def io-closed-error? IOClosed?)

;; Timeouts
(defclass (Timeout StackTrace Error) ())
(defmethod {:init! Timeout}
  Error:::init!)
(def timeout-error? Timeout?)

;; Exceptions base class for non error exceptional conditions
(defclass (Exception <exception>) ())

;; check to the raiser!
(def (raise-bad-argument where expectation . irritants)
  (raise/stack-trace
   (BadArgument (string-append "Bad argument; expected " expectation)
                where: where irritants: irritants)))

(def (raise-io-error where what . irritants)
  (raise/stack-trace
   (IOError what where: where irritants: irritants)))

(def (raise-premature-end-of-input where . irritants)
  (raise/stack-trace
   (PrematureEndOfInput "premature end of input" where: where irritants: irritants)))

(def (raise-io-closed where what . irritants)
  (raise/stack-trace
   (IOClosed what where: where irritants: irritants)))

(def (raise-timeout where what . irritants)
  (raise/stack-trace
   (Timeout what where: where irritants: irritants)))


;; raises an exception, filling the continuation if the exception mixes in StackTrace
(def (raise/stack-trace exn)
  (when (StackTrace? exn)
    (unless (StackTrace-continuation exn)
      (continuation-capture
       (lambda (cont)
         (set! (StackTrace-continuation exn) cont)))))
  (raise exn))
