prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type
   spawn
   (@lambda (1)
            #f
            signature:
            (return:
             thread::t
             effect:
             #f
             arguments:
             (procedure::t . t::t)
             unchecked:
             __spawn)))
  (declare-type
   __spawn
   (@lambda (1)
            #f
            signature:
            (return: thread::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   spawn/name
   (@lambda (2)
            #f
            signature:
            (return:
             thread::t
             effect:
             #f
             arguments:
             (t::t procedure::t . t::t)
             unchecked:
             __spawn/name)))
  (declare-type
   __spawn/name
   (@lambda (2)
            #f
            signature:
            (return: thread::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   spawn/group
   (@lambda (2)
            #f
            signature:
            (return:
             thread::t
             effect:
             #f
             arguments:
             (t::t procedure::t . t::t)
             unchecked:
             __spawn/group)))
  (declare-type
   __spawn/group
   (@lambda (2)
            #f
            signature:
            (return: thread::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   spawn-actor
   (@lambda 4
            #f
            signature:
            (return: thread::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   spawn-thread__%
   (@lambda 3
            #f
            signature:
            (return: thread::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   spawn-thread__0
   (@lambda 1
            #f
            signature:
            (return: thread::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   spawn-thread__1
   (@lambda 2
            #f
            signature:
            (return: thread::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   spawn-thread
   (@case-lambda
    (1
     spawn-thread__0
     signature:
     (return: thread::t effect: #f arguments: #f unchecked: #f))
    (2
     spawn-thread__1
     signature:
     (return: thread::t effect: #f arguments: #f unchecked: #f))
    (3
     spawn-thread__%
     signature:
     (return: thread::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   thread-local-ref__%
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   thread-local-ref__0
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   thread-local-ref
   (@case-lambda
    (1
     thread-local-ref__0
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))
    (2
     thread-local-ref__%
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   thread-local-get
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   thread-local-set!
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   thread-local-delete!
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type thread-local-table (@lambda 0 #f))
  (declare-type
   __thread-locals-mutex
   (optimizer-resolve-class
    '(typedecl __thread-locals-mutex)
    '#<!class #13507 id: mutex::t super: () precedence-list: (t::t)>))
  (declare-type unhandled-actor-exception-hook-set! (@lambda 1 #f))
  (declare-type
   current-thread-group
   (@lambda 0
            #f
            signature:
            (return: thread-group::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   with-lock
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (mutex::t procedure::t)
             unchecked:
             __with-lock)))
  (declare-type
   __with-lock
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   with-dynamic-lock
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (mutex::t procedure::t)
             unchecked:
             __with-dynamic-lock)))
  (declare-type
   __with-dynamic-lock
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   with-exception-stack-trace__%
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (procedure::t port::t)
             unchecked:
             __with-exception-stack-trace)))
  (declare-type
   with-exception-stack-trace__0
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   with-exception-stack-trace
   (@case-lambda
    (1
     with-exception-stack-trace__0
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))
    (2
     with-exception-stack-trace__%
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   __with-exception-stack-trace__%
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   __with-exception-stack-trace__0
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   __with-exception-stack-trace
   (@case-lambda
    (1
     __with-exception-stack-trace__0
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))
    (2
     __with-exception-stack-trace__%
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))))
  (declare-type dump-stack-trace!__% (@lambda 3 #f))
  (declare-type dump-stack-trace!__0 (@lambda 2 #f))
  (declare-type
   dump-stack-trace!
   (@case-lambda (2 dump-stack-trace!__0) (3 dump-stack-trace!__%))))
