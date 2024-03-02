(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1709375797)
  (begin
    (define spawn
      (lambda (_f73444_ . _args73445_)
        (if (let () (declare (not safe)) (procedure? _f73444_))
            '#!void
            (raise (let ((__obj73446
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73446
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f73444_ '())))
                     __obj73446)))
        (let ()
          (declare (not safe))
          (spawn-actor _f73444_ _args73445_ '#!void '#f))))
    (define spawn/name
      (lambda (_name73440_ _f73441_ . _args73442_)
        (if (let () (declare (not safe)) (procedure? _f73441_))
            '#!void
            (raise (let ((__obj73447
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73447
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f73441_ '())))
                     __obj73447)))
        (let ()
          (declare (not safe))
          (spawn-actor _f73441_ _args73442_ _name73440_ '#f))))
    (define spawn/group
      (lambda (_name73434_ _f73435_ . _args73436_)
        (if (let () (declare (not safe)) (procedure? _f73435_))
            '#!void
            (raise (let ((__obj73448
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73448
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f73435_ '())))
                     __obj73448)))
        (let ((_tgroup73438_ (make-thread-group _name73434_)))
          (declare (not safe))
          (spawn-actor _f73435_ _args73436_ _name73434_ _tgroup73438_))))
    (define spawn-actor
      (lambda (_f73407_ _args73408_ _name73409_ _tgroup73410_)
        (letrec ((_thread-main73412_
                  (lambda (_thunk73426_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn73429_)
                         (let ((__tmp73450
                                (lambda (_cont73431_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp73451
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont73431_
                                                _exn73429_))))
                                        (declare (not safe))
                                        (with-catch void __tmp73451))
                                      '#!void)
                                  (let ((__tmp73452
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont73431_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp73452
                                     ##primordial-exception-handler
                                     _exn73429_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp73450)))
                       _thunk73426_)))))
          (let* ((_thunk73415_
                  (if (let () (declare (not safe)) (null? _args73408_))
                      _f73407_
                      (lambda () (apply _f73407_ _args73408_))))
                 (_thunk73418_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk73415_))))
                 (_tgroup73423_
                  (let ((_$e73420_ _tgroup73410_))
                    (if _$e73420_
                        _$e73420_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main73412_ _thunk73418_))
              _name73409_
              _tgroup73423_))))))
    (define spawn-thread__%
      (lambda (_thunk73385_ _name73386_ _tgroup73387_)
        (thread-start! (make-thread _thunk73385_ _name73386_ _tgroup73387_))))
    (define spawn-thread__0
      (lambda (_thunk73392_)
        (let* ((_name73394_ absent-obj) (_tgroup73396_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk73392_ _name73394_ _tgroup73396_))))
    (define spawn-thread__1
      (lambda (_thunk73398_ _name73399_)
        (let ((_tgroup73401_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk73398_ _name73399_ _tgroup73401_))))
    (define spawn-thread
      (lambda _g73454_
        (let ((_g73453_ (let () (declare (not safe)) (##length _g73454_))))
          (cond ((let () (declare (not safe)) (##fx= _g73453_ 1))
                 (apply (lambda (_thunk73392_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk73392_)))
                        _g73454_))
                ((let () (declare (not safe)) (##fx= _g73453_ 2))
                 (apply (lambda (_thunk73398_ _name73399_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk73398_ _name73399_)))
                        _g73454_))
                ((let () (declare (not safe)) (##fx= _g73453_ 3))
                 (apply (lambda (_thunk73403_ _name73404_ _tgroup73405_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk73403_
                             _name73404_
                             _tgroup73405_)))
                        _g73454_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g73454_))))))
    (define thread-local-ref__%
      (lambda (_key73369_ _default73370_)
        (let ((_tab73372_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab73372_ _key73369_ _default73370_))))
    (define thread-local-ref__0
      (lambda (_key73377_)
        (let ((_default73379_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key73377_ _default73379_))))
    (define thread-local-ref
      (lambda _g73456_
        (let ((_g73455_ (let () (declare (not safe)) (##length _g73456_))))
          (cond ((let () (declare (not safe)) (##fx= _g73455_ 1))
                 (apply (lambda (_key73377_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key73377_)))
                        _g73456_))
                ((let () (declare (not safe)) (##fx= _g73455_ 2))
                 (apply (lambda (_key73381_ _default73382_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key73381_ _default73382_)))
                        _g73456_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g73456_))))))
    (define thread-local-get
      (lambda (_key73366_)
        (let () (declare (not safe)) (thread-local-ref__% _key73366_ '#f))))
    (define thread-local-set!
      (lambda (_key73361_ _value73362_)
        (let ((_tab73364_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab73364_ _key73361_ _value73362_))))
    (define thread-local-clear!
      (lambda (_key73357_)
        (let ((_tab73359_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab73359_ _key73357_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr73343_ (current-thread)))
          (if (actor-thread? _thr73343_)
              (let ((_$e73345_ (actor-thread-locals _thr73343_)))
                (if _$e73345_
                    (values _$e73345_)
                    (let ((_tab73348_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr73343_ _tab73348_)
                      _tab73348_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr73343_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e73350_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr73343_))))
                      (if _$e73350_
                          ((lambda (_tab73353_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab73353_)
                           _$e73350_)
                          (let ((_tab73355_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr73343_
                               _tab73355_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab73355_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc73340_)
        (if (let () (declare (not safe)) (procedure? _proc73340_))
            '#!void
            (raise (let ((__obj73449
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73449
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc73340_ '())))
                     __obj73449)))
        (set! __unhandled-actor-exception-hook _proc73340_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx73328_ _proc73329_)
        (let ((_handler73331_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e73333_)
             (let ((__tmp73457
                    (lambda ()
                      (mutex-unlock! _mx73328_)
                      (_handler73331_ _e73333_))))
               (declare (not safe))
               (with-catch void __tmp73457))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e73333_)))
           (lambda ()
             (mutex-lock! _mx73328_)
             (let ((_result73337_ (_proc73329_)))
               (mutex-unlock! _mx73328_)
               _result73337_))))))
    (define with-dynamic-lock
      (lambda (_mx73323_ _proc73324_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx73323_))
         _proc73324_
         (lambda () (mutex-unlock! _mx73323_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk73304_ _error-port73305_)
        (with-exception-handler
         (let ((_E73307_ (current-exception-handler)))
           (lambda (_exn73309_)
             (continuation-capture
              (lambda (_cont73311_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont73311_
                       _exn73309_
                       _error-port73305_))
                    '#!void)
                (_E73307_ _exn73309_)))))
         _thunk73304_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk73316_)
        (let ((_error-port73318_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk73316_ _error-port73318_))))
    (define with-exception-stack-trace
      (lambda _g73459_
        (let ((_g73458_ (let () (declare (not safe)) (##length _g73459_))))
          (cond ((let () (declare (not safe)) (##fx= _g73458_ 1))
                 (apply (lambda (_thunk73316_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk73316_)))
                        _g73459_))
                ((let () (declare (not safe)) (##fx= _g73458_ 2))
                 (apply (lambda (_thunk73320_ _error-port73321_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk73320_
                             _error-port73321_)))
                        _g73459_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g73459_))))))
    (define dump-stack-trace!__%
      (lambda (_cont73285_ _exn73286_ _error-port73287_)
        (let ((_out73289_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out73289_))
          (display '"*** Unhandled exception in " _out73289_)
          (display (current-thread) _out73289_)
          (newline _out73289_)
          (display-exception _exn73286_ _out73289_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn73286_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out73289_)
                (newline _out73289_)
                (display-continuation-backtrace _cont73285_ _out73289_)))
          (let ((__tmp73460 (get-output-string _out73289_)))
            (declare (not safe))
            (##write-string __tmp73460 _error-port73287_)))))
    (define dump-stack-trace!__0
      (lambda (_cont73294_ _exn73295_)
        (let ((_error-port73297_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont73294_ _exn73295_ _error-port73297_))))
    (define dump-stack-trace!
      (lambda _g73462_
        (let ((_g73461_ (let () (declare (not safe)) (##length _g73462_))))
          (cond ((let () (declare (not safe)) (##fx= _g73461_ 2))
                 (apply (lambda (_cont73294_ _exn73295_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont73294_ _exn73295_)))
                        _g73462_))
                ((let () (declare (not safe)) (##fx= _g73461_ 3))
                 (apply (lambda (_cont73299_ _exn73300_ _error-port73301_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont73299_
                             _exn73300_
                             _error-port73301_)))
                        _g73462_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g73462_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
