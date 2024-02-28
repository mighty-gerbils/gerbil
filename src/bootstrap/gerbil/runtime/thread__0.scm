(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1709159706)
  (begin
    (define spawn
      (lambda (_f73449_ . _args73450_)
        (if (let () (declare (not safe)) (procedure? _f73449_))
            '#!void
            (raise (let ((__obj73451
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73451
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f73449_ '())))
                     __obj73451)))
        (let ()
          (declare (not safe))
          (spawn-actor _f73449_ _args73450_ '#!void '#f))))
    (define spawn/name
      (lambda (_name73445_ _f73446_ . _args73447_)
        (if (let () (declare (not safe)) (procedure? _f73446_))
            '#!void
            (raise (let ((__obj73452
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73452
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f73446_ '())))
                     __obj73452)))
        (let ()
          (declare (not safe))
          (spawn-actor _f73446_ _args73447_ _name73445_ '#f))))
    (define spawn/group
      (lambda (_name73439_ _f73440_ . _args73441_)
        (if (let () (declare (not safe)) (procedure? _f73440_))
            '#!void
            (raise (let ((__obj73453
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73453
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f73440_ '())))
                     __obj73453)))
        (let ((_tgroup73443_ (make-thread-group _name73439_)))
          (declare (not safe))
          (spawn-actor _f73440_ _args73441_ _name73439_ _tgroup73443_))))
    (define spawn-actor
      (lambda (_f73412_ _args73413_ _name73414_ _tgroup73415_)
        (letrec ((_thread-main73417_
                  (lambda (_thunk73431_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn73434_)
                         (let ((__tmp73455
                                (lambda (_cont73436_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp73456
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont73436_
                                                _exn73434_))))
                                        (declare (not safe))
                                        (with-catch void __tmp73456))
                                      '#!void)
                                  (let ((__tmp73457
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont73436_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp73457
                                     ##primordial-exception-handler
                                     _exn73434_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp73455)))
                       _thunk73431_)))))
          (let* ((_thunk73420_
                  (if (let () (declare (not safe)) (null? _args73413_))
                      _f73412_
                      (lambda () (apply _f73412_ _args73413_))))
                 (_thunk73423_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk73420_))))
                 (_tgroup73428_
                  (let ((_$e73425_ _tgroup73415_))
                    (if _$e73425_
                        _$e73425_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main73417_ _thunk73423_))
              _name73414_
              _tgroup73428_))))))
    (define spawn-thread__%
      (lambda (_thunk73390_ _name73391_ _tgroup73392_)
        (thread-start! (make-thread _thunk73390_ _name73391_ _tgroup73392_))))
    (define spawn-thread__0
      (lambda (_thunk73397_)
        (let* ((_name73399_ absent-obj) (_tgroup73401_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk73397_ _name73399_ _tgroup73401_))))
    (define spawn-thread__1
      (lambda (_thunk73403_ _name73404_)
        (let ((_tgroup73406_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk73403_ _name73404_ _tgroup73406_))))
    (define spawn-thread
      (lambda _g73459_
        (let ((_g73458_ (let () (declare (not safe)) (##length _g73459_))))
          (cond ((let () (declare (not safe)) (##fx= _g73458_ 1))
                 (apply (lambda (_thunk73397_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk73397_)))
                        _g73459_))
                ((let () (declare (not safe)) (##fx= _g73458_ 2))
                 (apply (lambda (_thunk73403_ _name73404_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk73403_ _name73404_)))
                        _g73459_))
                ((let () (declare (not safe)) (##fx= _g73458_ 3))
                 (apply (lambda (_thunk73408_ _name73409_ _tgroup73410_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk73408_
                             _name73409_
                             _tgroup73410_)))
                        _g73459_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g73459_))))))
    (define thread-local-ref__%
      (lambda (_key73374_ _default73375_)
        (let ((_tab73377_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab73377_ _key73374_ _default73375_))))
    (define thread-local-ref__0
      (lambda (_key73382_)
        (let ((_default73384_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key73382_ _default73384_))))
    (define thread-local-ref
      (lambda _g73461_
        (let ((_g73460_ (let () (declare (not safe)) (##length _g73461_))))
          (cond ((let () (declare (not safe)) (##fx= _g73460_ 1))
                 (apply (lambda (_key73382_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key73382_)))
                        _g73461_))
                ((let () (declare (not safe)) (##fx= _g73460_ 2))
                 (apply (lambda (_key73386_ _default73387_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key73386_ _default73387_)))
                        _g73461_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g73461_))))))
    (define thread-local-get
      (lambda (_key73371_)
        (let () (declare (not safe)) (thread-local-ref__% _key73371_ '#f))))
    (define thread-local-set!
      (lambda (_key73366_ _value73367_)
        (let ((_tab73369_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab73369_ _key73366_ _value73367_))))
    (define thread-local-clear!
      (lambda (_key73362_)
        (let ((_tab73364_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab73364_ _key73362_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr73348_ (current-thread)))
          (if (actor-thread? _thr73348_)
              (let ((_$e73350_ (actor-thread-locals _thr73348_)))
                (if _$e73350_
                    (values _$e73350_)
                    (let ((_tab73353_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr73348_ _tab73353_)
                      _tab73353_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr73348_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e73355_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr73348_))))
                      (if _$e73355_
                          ((lambda (_tab73358_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab73358_)
                           _$e73355_)
                          (let ((_tab73360_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr73348_
                               _tab73360_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab73360_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc73345_)
        (if (let () (declare (not safe)) (procedure? _proc73345_))
            '#!void
            (raise (let ((__obj73454
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73454
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc73345_ '())))
                     __obj73454)))
        (set! __unhandled-actor-exception-hook _proc73345_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx73333_ _proc73334_)
        (let ((_handler73336_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e73338_)
             (let ((__tmp73462
                    (lambda ()
                      (mutex-unlock! _mx73333_)
                      (_handler73336_ _e73338_))))
               (declare (not safe))
               (with-catch void __tmp73462))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e73338_)))
           (lambda ()
             (mutex-lock! _mx73333_)
             (let ((_result73342_ (_proc73334_)))
               (mutex-unlock! _mx73333_)
               _result73342_))))))
    (define with-dynamic-lock
      (lambda (_mx73328_ _proc73329_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx73328_))
         _proc73329_
         (lambda () (mutex-unlock! _mx73328_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk73309_ _error-port73310_)
        (with-exception-handler
         (let ((_E73312_ (current-exception-handler)))
           (lambda (_exn73314_)
             (continuation-capture
              (lambda (_cont73316_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont73316_
                       _exn73314_
                       _error-port73310_))
                    '#!void)
                (_E73312_ _exn73314_)))))
         _thunk73309_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk73321_)
        (let ((_error-port73323_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk73321_ _error-port73323_))))
    (define with-exception-stack-trace
      (lambda _g73464_
        (let ((_g73463_ (let () (declare (not safe)) (##length _g73464_))))
          (cond ((let () (declare (not safe)) (##fx= _g73463_ 1))
                 (apply (lambda (_thunk73321_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk73321_)))
                        _g73464_))
                ((let () (declare (not safe)) (##fx= _g73463_ 2))
                 (apply (lambda (_thunk73325_ _error-port73326_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk73325_
                             _error-port73326_)))
                        _g73464_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g73464_))))))
    (define dump-stack-trace!__%
      (lambda (_cont73290_ _exn73291_ _error-port73292_)
        (let ((_out73294_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out73294_))
          (display '"*** Unhandled exception in " _out73294_)
          (display (current-thread) _out73294_)
          (newline _out73294_)
          (display-exception _exn73291_ _out73294_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn73291_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out73294_)
                (newline _out73294_)
                (display-continuation-backtrace _cont73290_ _out73294_)))
          (let ((__tmp73465 (get-output-string _out73294_)))
            (declare (not safe))
            (##write-string __tmp73465 _error-port73292_)))))
    (define dump-stack-trace!__0
      (lambda (_cont73299_ _exn73300_)
        (let ((_error-port73302_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont73299_ _exn73300_ _error-port73302_))))
    (define dump-stack-trace!
      (lambda _g73467_
        (let ((_g73466_ (let () (declare (not safe)) (##length _g73467_))))
          (cond ((let () (declare (not safe)) (##fx= _g73466_ 2))
                 (apply (lambda (_cont73299_ _exn73300_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont73299_ _exn73300_)))
                        _g73467_))
                ((let () (declare (not safe)) (##fx= _g73466_ 3))
                 (apply (lambda (_cont73304_ _exn73305_ _error-port73306_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont73304_
                             _exn73305_
                             _error-port73306_)))
                        _g73467_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g73467_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
