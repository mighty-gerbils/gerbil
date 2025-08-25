(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1756142919)
  (begin
    (define spawn
      (lambda (_%f117826%_ . _%args117827%_)
        (if (procedure? _%f117826%_)
            (let ((_%f117831%_ _%f117826%_))
              (declare (not safe))
              (##apply __spawn _%f117831%_ _%args117827%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@12.14-12.15"
               'contract:
               'procedure?
               'value:
               _%f117826%_)
              '#!void))))
    (define __spawn
      (lambda (_%f117813%_ . _%args117814%_)
        (let ((_%f117817%_ _%f117813%_))
          (spawn-actor _%f117817%_ _%args117814%_ '#!void '#f))))
    (define spawn/name
      (lambda (_%name117797%_ _%f117798%_ . _%args117799%_)
        (if (procedure? _%f117798%_)
            (let ((_%f117803%_ _%f117798%_))
              (declare (not safe))
              (##apply __spawn/name _%name117797%_ _%f117803%_ _%args117799%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@17.24-17.25"
               'contract:
               'procedure?
               'value:
               _%f117798%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name117783%_ _%f117784%_ . _%args117785%_)
        (let ((_%f117788%_ _%f117784%_))
          (spawn-actor _%f117788%_ _%args117785%_ _%name117783%_ '#f))))
    (define spawn/group
      (lambda (_%name117767%_ _%f117768%_ . _%args117769%_)
        (if (procedure? _%f117768%_)
            (let ((_%f117773%_ _%f117768%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name117767%_
                       _%f117773%_
                       _%args117769%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@22.25-22.26"
               'contract:
               'procedure?
               'value:
               _%f117768%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name117751%_ _%f117752%_ . _%args117753%_)
        (let* ((_%f117756%_ _%f117752%_)
               (_%tgroup117765%_ (make-thread-group _%name117751%_)))
          (spawn-actor
           _%f117756%_
           _%args117753%_
           _%name117751%_
           _%tgroup117765%_))))
    (define spawn-actor
      (lambda (_%f117723%_ _%args117724%_ _%name117725%_ _%tgroup117726%_)
        (letrec ((_%thread-main117729%_
                  (lambda (_%thunk117743%_)
                    (lambda ()
                      (let ((__tmp117840
                             (lambda (_%exn117746%_)
                               (let ((__tmp117841
                                      (lambda (_%cont117748%_)
                                        (if unhandled-actor-exception-hook
                                            (let ((__tmp117842
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _%cont117748%_
                                                      _%exn117746%_))))
                                              (declare (not safe))
                                              (__with-catch void __tmp117842))
                                            '#!void)
                                        (let ((__tmp117843
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _%cont117748%_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp117843
                                           ##primordial-exception-handler
                                           _%exn117746%_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp117841)))))
                        (declare (not safe))
                        (with-exception-handler
                         __tmp117840
                         _%thunk117743%_))))))
          (let* ((_%thunk117732%_
                  (if (null? _%args117724%_)
                      _%f117723%_
                      (lambda () (apply _%f117723%_ _%args117724%_))))
                 (_%thunk117735%_
                  (lambda () (with-exception-stack-trace__0 _%thunk117732%_)))
                 (_%tgroup117740%_
                  (let ((_%$e117737%_ _%tgroup117726%_))
                    (if _%$e117737%_ _%$e117737%_ (current-thread-group)))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (_%thread-main117729%_ _%thunk117735%_)
              _%name117725%_
              _%tgroup117740%_))))))
    (define spawn-thread__%
      (lambda (_%thunk117701%_ _%name117702%_ _%tgroup117703%_)
        (thread-start!
         (make-thread _%thunk117701%_ _%name117702%_ _%tgroup117703%_))))
    (define spawn-thread__0
      (lambda (_%thunk117708%_)
        (let* ((_%name117710%_ absent-obj) (_%tgroup117712%_ absent-obj))
          (spawn-thread__% _%thunk117708%_ _%name117710%_ _%tgroup117712%_))))
    (define spawn-thread__1
      (lambda (_%thunk117714%_ _%name117715%_)
        (let ((_%tgroup117717%_ absent-obj))
          (spawn-thread__% _%thunk117714%_ _%name117715%_ _%tgroup117717%_))))
    (define spawn-thread
      (lambda _g117844_
        (let ((_g117845_ (let () (declare (not safe)) (##length _g117844_))))
          (cond ((let () (declare (not safe)) (##fx= _g117845_ 1))
                 (apply spawn-thread__0 _g117844_))
                ((let () (declare (not safe)) (##fx= _g117845_ 2))
                 (apply spawn-thread__1 _g117844_))
                ((let () (declare (not safe)) (##fx= _g117845_ 3))
                 (apply spawn-thread__% _g117844_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g117844_))))))
    (define thread-local-ref__%
      (lambda (_%key117685%_ _%default117686%_)
        (let ((_%tab117688%_ (thread-local-table)))
          (declare (not safe))
          (hash-ref__% _%tab117688%_ _%key117685%_ _%default117686%_))))
    (define thread-local-ref__0
      (lambda (_%key117693%_)
        (let ((_%default117695%_ absent-obj))
          (thread-local-ref__% _%key117693%_ _%default117695%_))))
    (define thread-local-ref
      (lambda _g117846_
        (let ((_g117847_ (let () (declare (not safe)) (##length _g117846_))))
          (cond ((let () (declare (not safe)) (##fx= _g117847_ 1))
                 (apply thread-local-ref__0 _g117846_))
                ((let () (declare (not safe)) (##fx= _g117847_ 2))
                 (apply thread-local-ref__% _g117846_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g117846_))))))
    (define thread-local-get
      (lambda (_%key117682%_) (thread-local-ref__% _%key117682%_ '#f)))
    (define thread-local-set!
      (lambda (_%key117677%_ _%value117678%_)
        (let ((_%tab117680%_ (thread-local-table)))
          (declare (not safe))
          (hash-put! _%tab117680%_ _%key117677%_ _%value117678%_))))
    (define thread-local-delete!
      (lambda (_%key117673%_)
        (let ((_%tab117675%_ (thread-local-table)))
          (declare (not safe))
          (hash-remove! _%tab117675%_ _%key117673%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr117654%_ (current-thread)))
          (if (actor-thread? _%thr117654%_)
              (let ((_%$e117657%_ (actor-thread-locals _%thr117654%_)))
                (if _%$e117657%_
                    _%$e117657%_
                    (let ((_%tab117661%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr117654%_ _%tab117661%_)
                      _%tab117661%_)))
              (if (eq? _%thr117654%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e117665%_
                           (let ()
                             (declare (not safe))
                             (__hash-get __thread-locals _%thr117654%_))))
                      (if _%$e117665%_
                          ((lambda (_%tab117668%_)
                             (mutex-unlock! __thread-locals-mutex)
                             _%tab117668%_)
                           _%$e117665%_)
                          (let ((_%tab117671%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (__hash-put!
                               __thread-locals
                               _%thr117654%_
                               _%tab117671%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab117671%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value117632%_)
        (if ((lambda (_%$obj117635%_)
               (or (not _%$obj117635%_) (procedure? _%$obj117635%_)))
             _%new-value117632%_)
            (let ((_%new-value117642%_ _%new-value117632%_))
              (__unhandled-actor-exception-hook-set! _%new-value117642%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value117632%_)
              '#!void))))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value117619%_)
        (let ((_%new-value117623%_ _%new-value117619%_))
          (set! __unhandled-actor-exception-hook _%new-value117623%_))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_%mx117593%_ _%proc117594%_)
        (if (mutex? _%mx117593%_)
            (let ((_%mx117598%_ _%mx117593%_))
              (if (procedure? _%proc117594%_)
                  (let ((_%proc117608%_ _%proc117594%_))
                    (__with-lock _%mx117598%_ _%proc117608%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@120.32-120.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc117594%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@120.18-120.20"
               'contract:
               'mutex?
               'value:
               _%mx117593%_)
              '#!void))))
    (define __with-lock
      (lambda (_%mx117564%_ _%proc117565%_)
        (let* ((_%mx117568%_ _%mx117564%_)
               (_%proc117576%_ _%proc117565%_)
               (_%handler117585%_ (current-exception-handler)))
          (let ((__tmp117849
                 (lambda (_%e117587%_)
                   (let ((__tmp117850
                          (lambda ()
                            (mutex-unlock! _%mx117568%_)
                            (let ()
                              (declare (not safe))
                              (_%handler117585%_ _%e117587%_)))))
                     (declare (not safe))
                     (__with-catch void __tmp117850))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _%e117587%_))))
                (__tmp117848
                 (lambda ()
                   (mutex-lock! _%mx117568%_)
                   (let ((_%result117591%_
                          (let () (declare (not safe)) (_%proc117576%_))))
                     (mutex-unlock! _%mx117568%_)
                     _%result117591%_))))
            (declare (not safe))
            (__with-exception-handler __tmp117849 __tmp117848)))))
    (define with-dynamic-lock
      (lambda (_%mx117539%_ _%proc117540%_)
        (if (mutex? _%mx117539%_)
            (let ((_%mx117544%_ _%mx117539%_))
              (if (procedure? _%proc117540%_)
                  (let ((_%proc117554%_ _%proc117540%_))
                    (__with-dynamic-lock _%mx117544%_ _%proc117554%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@136.40-136.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc117540%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@136.26-136.28"
               'contract:
               'mutex?
               'value:
               _%mx117539%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx117516%_ _%proc117517%_)
        (let* ((_%mx117520%_ _%mx117516%_) (_%proc117528%_ _%proc117517%_))
          (let ((__tmp117852 (lambda () (mutex-lock! _%mx117520%_)))
                (__tmp117851 (lambda () (mutex-unlock! _%mx117520%_))))
            (declare (not safe))
            (##dynamic-wind __tmp117852 _%proc117528%_ __tmp117851)))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk117481%_ _%error-port117482%_)
        (if (procedure? _%thunk117481%_)
            (let ((_%thunk117486%_ _%thunk117481%_))
              (if (port? _%error-port117482%_)
                  (let ((_%error-port117496%_ _%error-port117482%_))
                    (__with-exception-stack-trace__%
                     _%thunk117486%_
                     _%error-port117496%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@144.35-144.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port117482%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@143.35-143.40"
               'contract:
               'procedure?
               'value:
               _%thunk117481%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk117509%_)
        (let ((_%error-port117511%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk117509%_
           _%error-port117511%_))))
    (define with-exception-stack-trace
      (lambda _g117853_
        (let ((_g117854_ (let () (declare (not safe)) (##length _g117853_))))
          (cond ((let () (declare (not safe)) (##fx= _g117854_ 1))
                 (apply with-exception-stack-trace__0 _g117853_))
                ((let () (declare (not safe)) (##fx= _g117854_ 2))
                 (apply with-exception-stack-trace__% _g117853_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g117853_))))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk117442%_ _%error-port117443%_)
        (let* ((_%thunk117446%_ _%thunk117442%_)
               (_%error-port117455%_ _%error-port117443%_)
               (__tmp117855
                (let ((_%E117464%_ (current-exception-handler)))
                  (lambda (_%exn117466%_)
                    (let ((__tmp117856
                           (lambda (_%cont117468%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont117468%_
                                  _%exn117466%_
                                  _%error-port117455%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E117464%_ _%exn117466%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp117856))))))
          (declare (not safe))
          (__with-exception-handler __tmp117855 _%thunk117446%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk117473%_)
        (let ((_%error-port117475%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk117473%_
           _%error-port117475%_))))
    (define __with-exception-stack-trace
      (lambda _g117857_
        (let ((_g117858_ (let () (declare (not safe)) (##length _g117857_))))
          (cond ((let () (declare (not safe)) (##fx= _g117858_ 1))
                 (apply __with-exception-stack-trace__0 _g117857_))
                ((let () (declare (not safe)) (##fx= _g117858_ 2))
                 (apply __with-exception-stack-trace__% _g117857_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g117857_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont117423%_ _%exn117424%_ _%error-port117425%_)
        (let ((_%out117427%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out117427%_))
          (display '"*** Unhandled exception in " _%out117427%_)
          (display (current-thread) _%out117427%_)
          (newline _%out117427%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn117424%_ _%out117427%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn117424%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out117427%_)
                (newline _%out117427%_)
                (display-continuation-backtrace _%cont117423%_ _%out117427%_)))
          (let ((__tmp117859 (get-output-string _%out117427%_)))
            (declare (not safe))
            (##write-string __tmp117859 _%error-port117425%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont117432%_ _%exn117433%_)
        (let ((_%error-port117435%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont117432%_
           _%exn117433%_
           _%error-port117435%_))))
    (define dump-stack-trace!
      (lambda _g117860_
        (let ((_g117861_ (let () (declare (not safe)) (##length _g117860_))))
          (cond ((let () (declare (not safe)) (##fx= _g117861_ 2))
                 (apply dump-stack-trace!__0 _g117860_))
                ((let () (declare (not safe)) (##fx= _g117861_ 3))
                 (apply dump-stack-trace!__% _g117860_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g117860_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
