;;; -*- Gerbil -*-
;;; (C) vyzo
;;; Gerbil error objects
(import :gerbil/gambit/continuations)
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
        (rename: raise-unspecified-error error)
        (rename: raise-bug BUG)
        (rename: raise/stack-trace raise)
        is-it-bug?)

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
