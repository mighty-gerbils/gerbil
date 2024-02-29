(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1709213449)
  (begin
    (define spawn
      (lambda (_f73457_ . _args73458_)
        (if (let () (declare (not safe)) (procedure? _f73457_))
            '#!void
            (raise (let ((__obj73459
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73459
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f73457_ '())))
                     __obj73459)))
        (let ()
          (declare (not safe))
          (spawn-actor _f73457_ _args73458_ '#!void '#f))))
    (define spawn/name
      (lambda (_name73453_ _f73454_ . _args73455_)
        (if (let () (declare (not safe)) (procedure? _f73454_))
            '#!void
            (raise (let ((__obj73460
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73460
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f73454_ '())))
                     __obj73460)))
        (let ()
          (declare (not safe))
          (spawn-actor _f73454_ _args73455_ _name73453_ '#f))))
    (define spawn/group
      (lambda (_name73447_ _f73448_ . _args73449_)
        (if (let () (declare (not safe)) (procedure? _f73448_))
            '#!void
            (raise (let ((__obj73461
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73461
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f73448_ '())))
                     __obj73461)))
        (let ((_tgroup73451_ (make-thread-group _name73447_)))
          (declare (not safe))
          (spawn-actor _f73448_ _args73449_ _name73447_ _tgroup73451_))))
    (define spawn-actor
      (lambda (_f73420_ _args73421_ _name73422_ _tgroup73423_)
        (letrec ((_thread-main73425_
                  (lambda (_thunk73439_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn73442_)
                         (let ((__tmp73463
                                (lambda (_cont73444_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp73464
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont73444_
                                                _exn73442_))))
                                        (declare (not safe))
                                        (with-catch void __tmp73464))
                                      '#!void)
                                  (let ((__tmp73465
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont73444_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp73465
                                     ##primordial-exception-handler
                                     _exn73442_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp73463)))
                       _thunk73439_)))))
          (let* ((_thunk73428_
                  (if (let () (declare (not safe)) (null? _args73421_))
                      _f73420_
                      (lambda () (apply _f73420_ _args73421_))))
                 (_thunk73431_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk73428_))))
                 (_tgroup73436_
                  (let ((_$e73433_ _tgroup73423_))
                    (if _$e73433_
                        _$e73433_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main73425_ _thunk73431_))
              _name73422_
              _tgroup73436_))))))
    (define spawn-thread__%
      (lambda (_thunk73398_ _name73399_ _tgroup73400_)
        (thread-start! (make-thread _thunk73398_ _name73399_ _tgroup73400_))))
    (define spawn-thread__0
      (lambda (_thunk73405_)
        (let* ((_name73407_ absent-obj) (_tgroup73409_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk73405_ _name73407_ _tgroup73409_))))
    (define spawn-thread__1
      (lambda (_thunk73411_ _name73412_)
        (let ((_tgroup73414_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk73411_ _name73412_ _tgroup73414_))))
    (define spawn-thread
      (lambda _g73467_
        (let ((_g73466_ (let () (declare (not safe)) (##length _g73467_))))
          (cond ((let () (declare (not safe)) (##fx= _g73466_ 1))
                 (apply (lambda (_thunk73405_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk73405_)))
                        _g73467_))
                ((let () (declare (not safe)) (##fx= _g73466_ 2))
                 (apply (lambda (_thunk73411_ _name73412_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk73411_ _name73412_)))
                        _g73467_))
                ((let () (declare (not safe)) (##fx= _g73466_ 3))
                 (apply (lambda (_thunk73416_ _name73417_ _tgroup73418_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk73416_
                             _name73417_
                             _tgroup73418_)))
                        _g73467_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g73467_))))))
    (define thread-local-ref__%
      (lambda (_key73382_ _default73383_)
        (let ((_tab73385_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab73385_ _key73382_ _default73383_))))
    (define thread-local-ref__0
      (lambda (_key73390_)
        (let ((_default73392_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key73390_ _default73392_))))
    (define thread-local-ref
      (lambda _g73469_
        (let ((_g73468_ (let () (declare (not safe)) (##length _g73469_))))
          (cond ((let () (declare (not safe)) (##fx= _g73468_ 1))
                 (apply (lambda (_key73390_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key73390_)))
                        _g73469_))
                ((let () (declare (not safe)) (##fx= _g73468_ 2))
                 (apply (lambda (_key73394_ _default73395_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key73394_ _default73395_)))
                        _g73469_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g73469_))))))
    (define thread-local-get
      (lambda (_key73379_)
        (let () (declare (not safe)) (thread-local-ref__% _key73379_ '#f))))
    (define thread-local-set!
      (lambda (_key73374_ _value73375_)
        (let ((_tab73377_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab73377_ _key73374_ _value73375_))))
    (define thread-local-clear!
      (lambda (_key73370_)
        (let ((_tab73372_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab73372_ _key73370_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr73356_ (current-thread)))
          (if (actor-thread? _thr73356_)
              (let ((_$e73358_ (actor-thread-locals _thr73356_)))
                (if _$e73358_
                    (values _$e73358_)
                    (let ((_tab73361_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr73356_ _tab73361_)
                      _tab73361_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr73356_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e73363_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr73356_))))
                      (if _$e73363_
                          ((lambda (_tab73366_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab73366_)
                           _$e73363_)
                          (let ((_tab73368_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr73356_
                               _tab73368_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab73368_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc73353_)
        (if (let () (declare (not safe)) (procedure? _proc73353_))
            '#!void
            (raise (let ((__obj73462
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73462
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc73353_ '())))
                     __obj73462)))
        (set! __unhandled-actor-exception-hook _proc73353_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx73341_ _proc73342_)
        (let ((_handler73344_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e73346_)
             (let ((__tmp73470
                    (lambda ()
                      (mutex-unlock! _mx73341_)
                      (_handler73344_ _e73346_))))
               (declare (not safe))
               (with-catch void __tmp73470))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e73346_)))
           (lambda ()
             (mutex-lock! _mx73341_)
             (let ((_result73350_ (_proc73342_)))
               (mutex-unlock! _mx73341_)
               _result73350_))))))
    (define with-dynamic-lock
      (lambda (_mx73336_ _proc73337_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx73336_))
         _proc73337_
         (lambda () (mutex-unlock! _mx73336_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk73317_ _error-port73318_)
        (with-exception-handler
         (let ((_E73320_ (current-exception-handler)))
           (lambda (_exn73322_)
             (continuation-capture
              (lambda (_cont73324_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont73324_
                       _exn73322_
                       _error-port73318_))
                    '#!void)
                (_E73320_ _exn73322_)))))
         _thunk73317_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk73329_)
        (let ((_error-port73331_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk73329_ _error-port73331_))))
    (define with-exception-stack-trace
      (lambda _g73472_
        (let ((_g73471_ (let () (declare (not safe)) (##length _g73472_))))
          (cond ((let () (declare (not safe)) (##fx= _g73471_ 1))
                 (apply (lambda (_thunk73329_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk73329_)))
                        _g73472_))
                ((let () (declare (not safe)) (##fx= _g73471_ 2))
                 (apply (lambda (_thunk73333_ _error-port73334_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk73333_
                             _error-port73334_)))
                        _g73472_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g73472_))))))
    (define dump-stack-trace!__%
      (lambda (_cont73298_ _exn73299_ _error-port73300_)
        (let ((_out73302_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out73302_))
          (display '"*** Unhandled exception in " _out73302_)
          (display (current-thread) _out73302_)
          (newline _out73302_)
          (display-exception _exn73299_ _out73302_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn73299_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out73302_)
                (newline _out73302_)
                (display-continuation-backtrace _cont73298_ _out73302_)))
          (let ((__tmp73473 (get-output-string _out73302_)))
            (declare (not safe))
            (##write-string __tmp73473 _error-port73300_)))))
    (define dump-stack-trace!__0
      (lambda (_cont73307_ _exn73308_)
        (let ((_error-port73310_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont73307_ _exn73308_ _error-port73310_))))
    (define dump-stack-trace!
      (lambda _g73475_
        (let ((_g73474_ (let () (declare (not safe)) (##length _g73475_))))
          (cond ((let () (declare (not safe)) (##fx= _g73474_ 2))
                 (apply (lambda (_cont73307_ _exn73308_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont73307_ _exn73308_)))
                        _g73475_))
                ((let () (declare (not safe)) (##fx= _g73474_ 3))
                 (apply (lambda (_cont73312_ _exn73313_ _error-port73314_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont73312_
                             _exn73313_
                             _error-port73314_)))
                        _g73475_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g73475_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
