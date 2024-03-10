prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type spawn (@lambda (1) #f))
  (declare-type spawn/name (@lambda (2) #f))
  (declare-type spawn/group (@lambda (2) #f))
  (declare-type spawn-actor (@lambda 4 #f))
  (declare-type spawn-thread__% (@lambda 3 #f))
  (declare-type spawn-thread__0 (@lambda 1 #f))
  (declare-type spawn-thread__1 (@lambda 2 #f))
  (declare-type
   spawn-thread
   (@case-lambda (1 spawn-thread__0) (2 spawn-thread__1) (3 spawn-thread__%)))
  (declare-type thread-local-ref__% (@lambda 2 #f))
  (declare-type thread-local-ref__0 (@lambda 1 #f))
  (declare-type
   thread-local-ref
   (@case-lambda (1 thread-local-ref__0) (2 thread-local-ref__%)))
  (declare-type thread-local-get (@lambda 1 #f))
  (declare-type thread-local-set! (@lambda 2 #f))
  (declare-type thread-local-delete! (@lambda 1 #f))
  (declare-type thread-local-table (@lambda 0 #f))
  (declare-type unhandled-actor-exception-hook-set! (@lambda 1 #f))
  (declare-type current-thread-group (@lambda 0 #f))
  (declare-type with-lock (@lambda 2 #f))
  (declare-type with-dynamic-lock (@lambda 2 #f))
  (declare-type with-exception-stack-trace__% (@lambda 2 #f))
  (declare-type with-exception-stack-trace__0 (@lambda 1 #f))
  (declare-type
   with-exception-stack-trace
   (@case-lambda
    (1 with-exception-stack-trace__0)
    (2 with-exception-stack-trace__%)))
  (declare-type dump-stack-trace!__% (@lambda 3 #f))
  (declare-type dump-stack-trace!__0 (@lambda 2 #f))
  (declare-type
   dump-stack-trace!
   (@case-lambda (2 dump-stack-trace!__0) (3 dump-stack-trace!__%))))
