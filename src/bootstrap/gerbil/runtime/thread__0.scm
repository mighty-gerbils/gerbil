(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1709127356)
  (begin
    (define spawn
      (lambda (_f73447_ . _args73448_)
        (if (let () (declare (not safe)) (procedure? _f73447_))
            '#!void
            (raise (let ((__obj73449
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73449
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f73447_ '())))
                     __obj73449)))
        (let ()
          (declare (not safe))
          (spawn-actor _f73447_ _args73448_ '#!void '#f))))
    (define spawn/name
      (lambda (_name73443_ _f73444_ . _args73445_)
        (if (let () (declare (not safe)) (procedure? _f73444_))
            '#!void
            (raise (let ((__obj73450
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73450
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f73444_ '())))
                     __obj73450)))
        (let ()
          (declare (not safe))
          (spawn-actor _f73444_ _args73445_ _name73443_ '#f))))
    (define spawn/group
      (lambda (_name73437_ _f73438_ . _args73439_)
        (if (let () (declare (not safe)) (procedure? _f73438_))
            '#!void
            (raise (let ((__obj73451
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73451
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f73438_ '())))
                     __obj73451)))
        (let ((_tgroup73441_ (make-thread-group _name73437_)))
          (declare (not safe))
          (spawn-actor _f73438_ _args73439_ _name73437_ _tgroup73441_))))
    (define spawn-actor
      (lambda (_f73410_ _args73411_ _name73412_ _tgroup73413_)
        (letrec ((_thread-main73415_
                  (lambda (_thunk73429_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn73432_)
                         (let ((__tmp73453
                                (lambda (_cont73434_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp73454
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont73434_
                                                _exn73432_))))
                                        (declare (not safe))
                                        (with-catch void __tmp73454))
                                      '#!void)
                                  (let ((__tmp73455
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont73434_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp73455
                                     ##primordial-exception-handler
                                     _exn73432_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp73453)))
                       _thunk73429_)))))
          (let* ((_thunk73418_
                  (if (let () (declare (not safe)) (null? _args73411_))
                      _f73410_
                      (lambda () (apply _f73410_ _args73411_))))
                 (_thunk73421_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk73418_))))
                 (_tgroup73426_
                  (let ((_$e73423_ _tgroup73413_))
                    (if _$e73423_
                        _$e73423_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main73415_ _thunk73421_))
              _name73412_
              _tgroup73426_))))))
    (define spawn-thread__%
      (lambda (_thunk73388_ _name73389_ _tgroup73390_)
        (thread-start! (make-thread _thunk73388_ _name73389_ _tgroup73390_))))
    (define spawn-thread__0
      (lambda (_thunk73395_)
        (let* ((_name73397_ absent-obj) (_tgroup73399_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk73395_ _name73397_ _tgroup73399_))))
    (define spawn-thread__1
      (lambda (_thunk73401_ _name73402_)
        (let ((_tgroup73404_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk73401_ _name73402_ _tgroup73404_))))
    (define spawn-thread
      (lambda _g73457_
        (let ((_g73456_ (let () (declare (not safe)) (##length _g73457_))))
          (cond ((let () (declare (not safe)) (##fx= _g73456_ 1))
                 (apply (lambda (_thunk73395_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk73395_)))
                        _g73457_))
                ((let () (declare (not safe)) (##fx= _g73456_ 2))
                 (apply (lambda (_thunk73401_ _name73402_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk73401_ _name73402_)))
                        _g73457_))
                ((let () (declare (not safe)) (##fx= _g73456_ 3))
                 (apply (lambda (_thunk73406_ _name73407_ _tgroup73408_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk73406_
                             _name73407_
                             _tgroup73408_)))
                        _g73457_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g73457_))))))
    (define thread-local-ref__%
      (lambda (_key73372_ _default73373_)
        (let ((_tab73375_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab73375_ _key73372_ _default73373_))))
    (define thread-local-ref__0
      (lambda (_key73380_)
        (let ((_default73382_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key73380_ _default73382_))))
    (define thread-local-ref
      (lambda _g73459_
        (let ((_g73458_ (let () (declare (not safe)) (##length _g73459_))))
          (cond ((let () (declare (not safe)) (##fx= _g73458_ 1))
                 (apply (lambda (_key73380_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key73380_)))
                        _g73459_))
                ((let () (declare (not safe)) (##fx= _g73458_ 2))
                 (apply (lambda (_key73384_ _default73385_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key73384_ _default73385_)))
                        _g73459_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g73459_))))))
    (define thread-local-get
      (lambda (_key73369_)
        (let () (declare (not safe)) (thread-local-ref__% _key73369_ '#f))))
    (define thread-local-set!
      (lambda (_key73364_ _value73365_)
        (let ((_tab73367_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab73367_ _key73364_ _value73365_))))
    (define thread-local-clear!
      (lambda (_key73360_)
        (let ((_tab73362_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab73362_ _key73360_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr73346_ (current-thread)))
          (if (actor-thread? _thr73346_)
              (let ((_$e73348_ (actor-thread-locals _thr73346_)))
                (if _$e73348_
                    (values _$e73348_)
                    (let ((_tab73351_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr73346_ _tab73351_)
                      _tab73351_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr73346_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e73353_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr73346_))))
                      (if _$e73353_
                          ((lambda (_tab73356_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab73356_)
                           _$e73353_)
                          (let ((_tab73358_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr73346_
                               _tab73358_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab73358_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc73343_)
        (if (let () (declare (not safe)) (procedure? _proc73343_))
            '#!void
            (raise (let ((__obj73452
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73452
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc73343_ '())))
                     __obj73452)))
        (set! __unhandled-actor-exception-hook _proc73343_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx73331_ _proc73332_)
        (let ((_handler73334_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e73336_)
             (let ((__tmp73460
                    (lambda ()
                      (mutex-unlock! _mx73331_)
                      (_handler73334_ _e73336_))))
               (declare (not safe))
               (with-catch void __tmp73460))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e73336_)))
           (lambda ()
             (mutex-lock! _mx73331_)
             (let ((_result73340_ (_proc73332_)))
               (mutex-unlock! _mx73331_)
               _result73340_))))))
    (define with-dynamic-lock
      (lambda (_mx73326_ _proc73327_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx73326_))
         _proc73327_
         (lambda () (mutex-unlock! _mx73326_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk73307_ _error-port73308_)
        (with-exception-handler
         (let ((_E73310_ (current-exception-handler)))
           (lambda (_exn73312_)
             (continuation-capture
              (lambda (_cont73314_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont73314_
                       _exn73312_
                       _error-port73308_))
                    '#!void)
                (_E73310_ _exn73312_)))))
         _thunk73307_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk73319_)
        (let ((_error-port73321_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk73319_ _error-port73321_))))
    (define with-exception-stack-trace
      (lambda _g73462_
        (let ((_g73461_ (let () (declare (not safe)) (##length _g73462_))))
          (cond ((let () (declare (not safe)) (##fx= _g73461_ 1))
                 (apply (lambda (_thunk73319_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk73319_)))
                        _g73462_))
                ((let () (declare (not safe)) (##fx= _g73461_ 2))
                 (apply (lambda (_thunk73323_ _error-port73324_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk73323_
                             _error-port73324_)))
                        _g73462_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g73462_))))))
    (define dump-stack-trace!__%
      (lambda (_cont73288_ _exn73289_ _error-port73290_)
        (let ((_out73292_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out73292_))
          (display '"*** Unhandled exception in " _out73292_)
          (display (current-thread) _out73292_)
          (newline _out73292_)
          (display-exception _exn73289_ _out73292_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn73289_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out73292_)
                (newline _out73292_)
                (display-continuation-backtrace _cont73288_ _out73292_)))
          (let ((__tmp73463 (get-output-string _out73292_)))
            (declare (not safe))
            (##write-string __tmp73463 _error-port73290_)))))
    (define dump-stack-trace!__0
      (lambda (_cont73297_ _exn73298_)
        (let ((_error-port73300_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont73297_ _exn73298_ _error-port73300_))))
    (define dump-stack-trace!
      (lambda _g73465_
        (let ((_g73464_ (let () (declare (not safe)) (##length _g73465_))))
          (cond ((let () (declare (not safe)) (##fx= _g73464_ 2))
                 (apply (lambda (_cont73297_ _exn73298_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont73297_ _exn73298_)))
                        _g73465_))
                ((let () (declare (not safe)) (##fx= _g73464_ 3))
                 (apply (lambda (_cont73302_ _exn73303_ _error-port73304_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont73302_
                             _exn73303_
                             _error-port73304_)))
                        _g73465_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g73465_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
