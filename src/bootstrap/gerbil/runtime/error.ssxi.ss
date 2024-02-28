prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type
   Exception::t
   (@class gerbil/runtime/error#Exception::t () () () () #f #f #f #f #f))
  (declare-type Exception? (@predicate Exception::t))
  (declare-type make-Exception (@constructor Exception::t))
  (declare-type
   StackTrace::t
   (@class gerbil/runtime/error#StackTrace::t
           ()
           ()
           (continuation)
           (continuation)
           #f
           #f
           #f
           #f
           #f))
  (declare-type StackTrace? (@predicate StackTrace::t))
  (declare-type make-StackTrace (@constructor StackTrace::t))
  (declare-type
   StackTrace-continuation
   (@accessor StackTrace::t continuation #t))
  (declare-type
   StackTrace-continuation-set!
   (@mutator StackTrace::t continuation #t))
  (declare-type
   &StackTrace-continuation
   (@accessor StackTrace::t continuation #f))
  (declare-type
   &StackTrace-continuation-set!
   (@mutator StackTrace::t continuation #f))
  (declare-type
   Error::t
   (@class gerbil/runtime/error#Error::t
           (StackTrace::t Exception::t)
           (StackTrace::t Exception::t)
           (message irritants where)
           (continuation message irritants where)
           :init!
           #f
           #f
           #f
           ((:init! . Error:::init!)
            (display-exception . Error::display-exception))))
  (declare-type Error? (@predicate Error::t))
  (declare-type make-Error (@constructor Error::t))
  (declare-type Error-message (@accessor Error::t message #t))
  (declare-type Error-irritants (@accessor Error::t irritants #t))
  (declare-type Error-where (@accessor Error::t where #t))
  (declare-type Error-continuation (@accessor Error::t continuation #t))
  (declare-type Error-message-set! (@mutator Error::t message #t))
  (declare-type Error-irritants-set! (@mutator Error::t irritants #t))
  (declare-type Error-where-set! (@mutator Error::t where #t))
  (declare-type Error-continuation-set! (@mutator Error::t continuation #t))
  (declare-type &Error-message (@accessor Error::t message #f))
  (declare-type &Error-irritants (@accessor Error::t irritants #f))
  (declare-type &Error-where (@accessor Error::t where #f))
  (declare-type &Error-continuation (@accessor Error::t continuation #f))
  (declare-type &Error-message-set! (@mutator Error::t message #f))
  (declare-type &Error-irritants-set! (@mutator Error::t irritants #f))
  (declare-type &Error-where-set! (@mutator Error::t where #f))
  (declare-type &Error-continuation-set! (@mutator Error::t continuation #f))
  (declare-type
   RuntimeException::t
   (@class gerbil/runtime/error#RuntimeException::t
           (StackTrace::t Exception::t)
           (StackTrace::t Exception::t)
           (exception)
           (continuation exception)
           #f
           #f
           #f
           #f
           ((display-exception . RuntimeException::display-exception))))
  (declare-type RuntimeException? (@predicate RuntimeException::t))
  (declare-type make-RuntimeException (@constructor RuntimeException::t))
  (declare-type
   RuntimeException-exception
   (@accessor RuntimeException::t exception #t))
  (declare-type
   RuntimeException-continuation
   (@accessor RuntimeException::t continuation #t))
  (declare-type
   RuntimeException-exception-set!
   (@mutator RuntimeException::t exception #t))
  (declare-type
   RuntimeException-continuation-set!
   (@mutator RuntimeException::t continuation #t))
  (declare-type
   &RuntimeException-exception
   (@accessor RuntimeException::t exception #f))
  (declare-type
   &RuntimeException-continuation
   (@accessor RuntimeException::t continuation #f))
  (declare-type
   &RuntimeException-exception-set!
   (@mutator RuntimeException::t exception #f))
  (declare-type
   &RuntimeException-continuation-set!
   (@mutator RuntimeException::t continuation #f))
  (declare-type gerbil-exception-handler-hook (@lambda 2 #f))
  (declare-type raise (@lambda 1 #f))
  (declare-type error (@lambda (1) #f))
  (declare-type with-exception-handler (@lambda 2 #f))
  (declare-type with-catch (@lambda 2 #f))
  (declare-type with-exception-catcher (@lambda 2 #f))
  (declare-type wrap-runtime-exception (@lambda 1 #f))
  (declare-type exception? (@lambda 1 #f))
  (declare-type error? (@lambda 1 #f))
  (declare-type error-object? (@lambda 1 #f))
  (declare-type error-message (@lambda 1 #f))
  (declare-type error-irritants (@lambda 1 #f))
  (declare-type error-trace (@lambda 1 #f))
  (declare-type display-exception__% (@lambda 2 #f))
  (declare-type display-exception__0 (@lambda 1 #f))
  (declare-type display-exception (@case-lambda (1 #f) (2 #f)))
  (declare-type Error:::init! (@lambda (2) #f))
  (declare-type Error:::init!::specialize (@lambda 2 #f))
  (declare-type Error::display-exception (@lambda 2 #f))
  (declare-type Error::display-exception::specialize (@lambda 2 #f))
  (declare-type RuntimeException::display-exception (@lambda 2 #f))
  (declare-type RuntimeException::display-exception::specialize (@lambda 2 #f))
  (declare-type fix-port-width! (@lambda 1 #f))
  (declare-type reset-port-width! (@lambda 2 #f))
  (declare-type datum-parsing-exception-filepos (@lambda 1 #f))
  (declare-type abandoned-mutex-exception? (@lambda 1 #f))
  (declare-type cfun-conversion-exception? (@lambda 1 #f))
  (declare-type cfun-conversion-exception-arguments (@lambda 1 #f))
  (declare-type cfun-conversion-exception-code (@lambda 1 #f))
  (declare-type cfun-conversion-exception-message (@lambda 1 #f))
  (declare-type cfun-conversion-exception-procedure (@lambda 1 #f))
  (declare-type datum-parsing-exception? (@lambda 1 #f))
  (declare-type datum-parsing-exception-kind (@lambda 1 #f))
  (declare-type datum-parsing-exception-parameters (@lambda 1 #f))
  (declare-type datum-parsing-exception-readenv (@lambda 1 #f))
  (declare-type deadlock-exception? (@lambda 1 #f))
  (declare-type divide-by-zero-exception? (@lambda 1 #f))
  (declare-type divide-by-zero-exception-arguments (@lambda 1 #f))
  (declare-type divide-by-zero-exception-procedure (@lambda 1 #f))
  (declare-type error-exception? (@lambda 1 #f))
  (declare-type error-exception-message (@lambda 1 #f))
  (declare-type error-exception-parameters (@lambda 1 #f))
  (declare-type expression-parsing-exception? (@lambda 1 #f))
  (declare-type expression-parsing-exception-kind (@lambda 1 #f))
  (declare-type expression-parsing-exception-parameters (@lambda 1 #f))
  (declare-type expression-parsing-exception-source (@lambda 1 #f))
  (declare-type file-exists-exception? (@lambda 1 #f))
  (declare-type file-exists-exception-arguments (@lambda 1 #f))
  (declare-type file-exists-exception-procedure (@lambda 1 #f))
  (declare-type fixnum-overflow-exception? (@lambda 1 #f))
  (declare-type fixnum-overflow-exception-arguments (@lambda 1 #f))
  (declare-type fixnum-overflow-exception-procedure (@lambda 1 #f))
  (declare-type heap-overflow-exception? (@lambda 1 #f))
  (declare-type inactive-thread-exception? (@lambda 1 #f))
  (declare-type inactive-thread-exception-arguments (@lambda 1 #f))
  (declare-type inactive-thread-exception-procedure (@lambda 1 #f))
  (declare-type initialized-thread-exception? (@lambda 1 #f))
  (declare-type initialized-thread-exception-arguments (@lambda 1 #f))
  (declare-type initialized-thread-exception-procedure (@lambda 1 #f))
  (declare-type invalid-hash-number-exception? (@lambda 1 #f))
  (declare-type invalid-hash-number-exception-arguments (@lambda 1 #f))
  (declare-type invalid-hash-number-exception-procedure (@lambda 1 #f))
  (declare-type invalid-utf8-encoding-exception? (@lambda 1 #f))
  (declare-type invalid-utf8-encoding-exception-arguments (@lambda 1 #f))
  (declare-type invalid-utf8-encoding-exception-procedure (@lambda 1 #f))
  (declare-type join-timeout-exception? (@lambda 1 #f))
  (declare-type join-timeout-exception-arguments (@lambda 1 #f))
  (declare-type join-timeout-exception-procedure (@lambda 1 #f))
  (declare-type keyword-expected-exception? (@lambda 1 #f))
  (declare-type keyword-expected-exception-arguments (@lambda 1 #f))
  (declare-type keyword-expected-exception-procedure (@lambda 1 #f))
  (declare-type length-mismatch-exception? (@lambda 1 #f))
  (declare-type length-mismatch-exception-arg-id (@lambda 1 #f))
  (declare-type length-mismatch-exception-arguments (@lambda 1 #f))
  (declare-type length-mismatch-exception-procedure (@lambda 1 #f))
  (declare-type mailbox-receive-timeout-exception? (@lambda 1 #f))
  (declare-type mailbox-receive-timeout-exception-arguments (@lambda 1 #f))
  (declare-type mailbox-receive-timeout-exception-procedure (@lambda 1 #f))
  (declare-type module-not-found-exception? (@lambda 1 #f))
  (declare-type module-not-found-exception-arguments (@lambda 1 #f))
  (declare-type module-not-found-exception-procedure (@lambda 1 #f))
  (declare-type multiple-c-return-exception? (@lambda 1 #f))
  (declare-type no-such-file-or-directory-exception? (@lambda 1 #f))
  (declare-type no-such-file-or-directory-exception-arguments (@lambda 1 #f))
  (declare-type no-such-file-or-directory-exception-procedure (@lambda 1 #f))
  (declare-type noncontinuable-exception? (@lambda 1 #f))
  (declare-type noncontinuable-exception-reason (@lambda 1 #f))
  (declare-type nonempty-input-port-character-buffer-exception? (@lambda 1 #f))
  (declare-type
   nonempty-input-port-character-buffer-exception-arguments
   (@lambda 1 #f))
  (declare-type
   nonempty-input-port-character-buffer-exception-procedure
   (@lambda 1 #f))
  (declare-type nonprocedure-operator-exception? (@lambda 1 #f))
  (declare-type nonprocedure-operator-exception-arguments (@lambda 1 #f))
  (declare-type nonprocedure-operator-exception-code (@lambda 1 #f))
  (declare-type nonprocedure-operator-exception-operator (@lambda 1 #f))
  (declare-type nonprocedure-operator-exception-rte (@lambda 1 #f))
  (declare-type not-in-compilation-context-exception? (@lambda 1 #f))
  (declare-type not-in-compilation-context-exception-arguments (@lambda 1 #f))
  (declare-type not-in-compilation-context-exception-procedure (@lambda 1 #f))
  (declare-type number-of-arguments-limit-exception? (@lambda 1 #f))
  (declare-type number-of-arguments-limit-exception-arguments (@lambda 1 #f))
  (declare-type number-of-arguments-limit-exception-procedure (@lambda 1 #f))
  (declare-type os-exception? (@lambda 1 #f))
  (declare-type os-exception-arguments (@lambda 1 #f))
  (declare-type os-exception-code (@lambda 1 #f))
  (declare-type os-exception-message (@lambda 1 #f))
  (declare-type os-exception-procedure (@lambda 1 #f))
  (declare-type permission-denied-exception? (@lambda 1 #f))
  (declare-type permission-denied-exception-arguments (@lambda 1 #f))
  (declare-type permission-denied-exception-procedure (@lambda 1 #f))
  (declare-type range-exception? (@lambda 1 #f))
  (declare-type range-exception-arg-id (@lambda 1 #f))
  (declare-type range-exception-arguments (@lambda 1 #f))
  (declare-type range-exception-procedure (@lambda 1 #f))
  (declare-type rpc-remote-error-exception? (@lambda 1 #f))
  (declare-type rpc-remote-error-exception-arguments (@lambda 1 #f))
  (declare-type rpc-remote-error-exception-message (@lambda 1 #f))
  (declare-type rpc-remote-error-exception-procedure (@lambda 1 #f))
  (declare-type scheduler-exception? (@lambda 1 #f))
  (declare-type scheduler-exception-reason (@lambda 1 #f))
  (declare-type sfun-conversion-exception? (@lambda 1 #f))
  (declare-type sfun-conversion-exception-arguments (@lambda 1 #f))
  (declare-type sfun-conversion-exception-code (@lambda 1 #f))
  (declare-type sfun-conversion-exception-message (@lambda 1 #f))
  (declare-type sfun-conversion-exception-procedure (@lambda 1 #f))
  (declare-type stack-overflow-exception? (@lambda 1 #f))
  (declare-type started-thread-exception? (@lambda 1 #f))
  (declare-type started-thread-exception-arguments (@lambda 1 #f))
  (declare-type started-thread-exception-procedure (@lambda 1 #f))
  (declare-type terminated-thread-exception? (@lambda 1 #f))
  (declare-type terminated-thread-exception-arguments (@lambda 1 #f))
  (declare-type terminated-thread-exception-procedure (@lambda 1 #f))
  (declare-type type-exception? (@lambda 1 #f))
  (declare-type type-exception-arg-id (@lambda 1 #f))
  (declare-type type-exception-arguments (@lambda 1 #f))
  (declare-type type-exception-procedure (@lambda 1 #f))
  (declare-type type-exception-type-id (@lambda 1 #f))
  (declare-type unbound-global-exception? (@lambda 1 #f))
  (declare-type unbound-global-exception-code (@lambda 1 #f))
  (declare-type unbound-global-exception-rte (@lambda 1 #f))
  (declare-type unbound-global-exception-variable (@lambda 1 #f))
  (declare-type unbound-key-exception? (@lambda 1 #f))
  (declare-type unbound-key-exception-arguments (@lambda 1 #f))
  (declare-type unbound-key-exception-procedure (@lambda 1 #f))
  (declare-type unbound-os-environment-variable-exception? (@lambda 1 #f))
  (declare-type
   unbound-os-environment-variable-exception-arguments
   (@lambda 1 #f))
  (declare-type
   unbound-os-environment-variable-exception-procedure
   (@lambda 1 #f))
  (declare-type unbound-serial-number-exception? (@lambda 1 #f))
  (declare-type unbound-serial-number-exception-arguments (@lambda 1 #f))
  (declare-type unbound-serial-number-exception-procedure (@lambda 1 #f))
  (declare-type uncaught-exception? (@lambda 1 #f))
  (declare-type uncaught-exception-arguments (@lambda 1 #f))
  (declare-type uncaught-exception-procedure (@lambda 1 #f))
  (declare-type uncaught-exception-reason (@lambda 1 #f))
  (declare-type uninitialized-thread-exception? (@lambda 1 #f))
  (declare-type uninitialized-thread-exception-arguments (@lambda 1 #f))
  (declare-type uninitialized-thread-exception-procedure (@lambda 1 #f))
  (declare-type unknown-keyword-argument-exception? (@lambda 1 #f))
  (declare-type unknown-keyword-argument-exception-arguments (@lambda 1 #f))
  (declare-type unknown-keyword-argument-exception-procedure (@lambda 1 #f))
  (declare-type unterminated-process-exception? (@lambda 1 #f))
  (declare-type unterminated-process-exception-arguments (@lambda 1 #f))
  (declare-type unterminated-process-exception-procedure (@lambda 1 #f))
  (declare-type wrong-number-of-arguments-exception? (@lambda 1 #f))
  (declare-type wrong-number-of-arguments-exception-arguments (@lambda 1 #f))
  (declare-type wrong-number-of-arguments-exception-procedure (@lambda 1 #f))
  (declare-type wrong-number-of-values-exception? (@lambda 1 #f))
  (declare-type wrong-number-of-values-exception-code (@lambda 1 #f))
  (declare-type wrong-number-of-values-exception-rte (@lambda 1 #f))
  (declare-type wrong-number-of-values-exception-vals (@lambda 1 #f))
  (declare-type wrong-processor-c-return-exception? (@lambda 1 #f)))
