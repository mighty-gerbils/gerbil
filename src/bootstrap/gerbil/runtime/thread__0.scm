(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1709125254)
  (begin
    (define spawn
      (lambda (_f73437_ . _args73438_)
        (if (let () (declare (not safe)) (procedure? _f73437_))
            '#!void
            (raise (let ((__obj73439
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73439
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f73437_ '())))
                     __obj73439)))
        (let ()
          (declare (not safe))
          (spawn-actor _f73437_ _args73438_ '#!void '#f))))
    (define spawn/name
      (lambda (_name73433_ _f73434_ . _args73435_)
        (if (let () (declare (not safe)) (procedure? _f73434_))
            '#!void
            (raise (let ((__obj73440
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73440
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f73434_ '())))
                     __obj73440)))
        (let ()
          (declare (not safe))
          (spawn-actor _f73434_ _args73435_ _name73433_ '#f))))
    (define spawn/group
      (lambda (_name73427_ _f73428_ . _args73429_)
        (if (let () (declare (not safe)) (procedure? _f73428_))
            '#!void
            (raise (let ((__obj73441
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73441
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f73428_ '())))
                     __obj73441)))
        (let ((_tgroup73431_ (make-thread-group _name73427_)))
          (declare (not safe))
          (spawn-actor _f73428_ _args73429_ _name73427_ _tgroup73431_))))
    (define spawn-actor
      (lambda (_f73400_ _args73401_ _name73402_ _tgroup73403_)
        (letrec ((_thread-main73405_
                  (lambda (_thunk73419_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn73422_)
                         (let ((__tmp73443
                                (lambda (_cont73424_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp73444
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont73424_
                                                _exn73422_))))
                                        (declare (not safe))
                                        (with-catch void __tmp73444))
                                      '#!void)
                                  (let ((__tmp73445
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont73424_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp73445
                                     ##primordial-exception-handler
                                     _exn73422_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp73443)))
                       _thunk73419_)))))
          (let* ((_thunk73408_
                  (if (let () (declare (not safe)) (null? _args73401_))
                      _f73400_
                      (lambda () (apply _f73400_ _args73401_))))
                 (_thunk73411_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk73408_))))
                 (_tgroup73416_
                  (let ((_$e73413_ _tgroup73403_))
                    (if _$e73413_
                        _$e73413_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main73405_ _thunk73411_))
              _name73402_
              _tgroup73416_))))))
    (define spawn-thread__%
      (lambda (_thunk73378_ _name73379_ _tgroup73380_)
        (thread-start! (make-thread _thunk73378_ _name73379_ _tgroup73380_))))
    (define spawn-thread__0
      (lambda (_thunk73385_)
        (let* ((_name73387_ absent-obj) (_tgroup73389_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk73385_ _name73387_ _tgroup73389_))))
    (define spawn-thread__1
      (lambda (_thunk73391_ _name73392_)
        (let ((_tgroup73394_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk73391_ _name73392_ _tgroup73394_))))
    (define spawn-thread
      (lambda _g73447_
        (let ((_g73446_ (let () (declare (not safe)) (##length _g73447_))))
          (cond ((let () (declare (not safe)) (##fx= _g73446_ 1))
                 (apply (lambda (_thunk73385_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk73385_)))
                        _g73447_))
                ((let () (declare (not safe)) (##fx= _g73446_ 2))
                 (apply (lambda (_thunk73391_ _name73392_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk73391_ _name73392_)))
                        _g73447_))
                ((let () (declare (not safe)) (##fx= _g73446_ 3))
                 (apply (lambda (_thunk73396_ _name73397_ _tgroup73398_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk73396_
                             _name73397_
                             _tgroup73398_)))
                        _g73447_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g73447_))))))
    (define thread-local-ref__%
      (lambda (_key73362_ _default73363_)
        (let ((_tab73365_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab73365_ _key73362_ _default73363_))))
    (define thread-local-ref__0
      (lambda (_key73370_)
        (let ((_default73372_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key73370_ _default73372_))))
    (define thread-local-ref
      (lambda _g73449_
        (let ((_g73448_ (let () (declare (not safe)) (##length _g73449_))))
          (cond ((let () (declare (not safe)) (##fx= _g73448_ 1))
                 (apply (lambda (_key73370_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key73370_)))
                        _g73449_))
                ((let () (declare (not safe)) (##fx= _g73448_ 2))
                 (apply (lambda (_key73374_ _default73375_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key73374_ _default73375_)))
                        _g73449_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g73449_))))))
    (define thread-local-get
      (lambda (_key73359_)
        (let () (declare (not safe)) (thread-local-ref__% _key73359_ '#f))))
    (define thread-local-set!
      (lambda (_key73354_ _value73355_)
        (let ((_tab73357_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab73357_ _key73354_ _value73355_))))
    (define thread-local-clear!
      (lambda (_key73350_)
        (let ((_tab73352_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab73352_ _key73350_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr73336_ (current-thread)))
          (if (actor-thread? _thr73336_)
              (let ((_$e73338_ (actor-thread-locals _thr73336_)))
                (if _$e73338_
                    (values _$e73338_)
                    (let ((_tab73341_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr73336_ _tab73341_)
                      _tab73341_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr73336_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e73343_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr73336_))))
                      (if _$e73343_
                          ((lambda (_tab73346_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab73346_)
                           _$e73343_)
                          (let ((_tab73348_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr73336_
                               _tab73348_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab73348_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc73333_)
        (if (let () (declare (not safe)) (procedure? _proc73333_))
            '#!void
            (raise (let ((__obj73442
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73442
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc73333_ '())))
                     __obj73442)))
        (set! __unhandled-actor-exception-hook _proc73333_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx73321_ _proc73322_)
        (let ((_handler73324_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e73326_)
             (let ((__tmp73450
                    (lambda ()
                      (mutex-unlock! _mx73321_)
                      (_handler73324_ _e73326_))))
               (declare (not safe))
               (with-catch void __tmp73450))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e73326_)))
           (lambda ()
             (mutex-lock! _mx73321_)
             (let ((_result73330_ (_proc73322_)))
               (mutex-unlock! _mx73321_)
               _result73330_))))))
    (define with-dynamic-lock
      (lambda (_mx73316_ _proc73317_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx73316_))
         _proc73317_
         (lambda () (mutex-unlock! _mx73316_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk73297_ _error-port73298_)
        (with-exception-handler
         (let ((_E73300_ (current-exception-handler)))
           (lambda (_exn73302_)
             (continuation-capture
              (lambda (_cont73304_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont73304_
                       _exn73302_
                       _error-port73298_))
                    '#!void)
                (_E73300_ _exn73302_)))))
         _thunk73297_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk73309_)
        (let ((_error-port73311_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk73309_ _error-port73311_))))
    (define with-exception-stack-trace
      (lambda _g73452_
        (let ((_g73451_ (let () (declare (not safe)) (##length _g73452_))))
          (cond ((let () (declare (not safe)) (##fx= _g73451_ 1))
                 (apply (lambda (_thunk73309_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk73309_)))
                        _g73452_))
                ((let () (declare (not safe)) (##fx= _g73451_ 2))
                 (apply (lambda (_thunk73313_ _error-port73314_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk73313_
                             _error-port73314_)))
                        _g73452_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g73452_))))))
    (define dump-stack-trace!__%
      (lambda (_cont73278_ _exn73279_ _error-port73280_)
        (let ((_out73282_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out73282_))
          (display '"*** Unhandled exception in " _out73282_)
          (display (current-thread) _out73282_)
          (newline _out73282_)
          (display-exception _exn73279_ _out73282_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn73279_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out73282_)
                (newline _out73282_)
                (display-continuation-backtrace _cont73278_ _out73282_)))
          (let ((__tmp73453 (get-output-string _out73282_)))
            (declare (not safe))
            (##write-string __tmp73453 _error-port73280_)))))
    (define dump-stack-trace!__0
      (lambda (_cont73287_ _exn73288_)
        (let ((_error-port73290_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont73287_ _exn73288_ _error-port73290_))))
    (define dump-stack-trace!
      (lambda _g73455_
        (let ((_g73454_ (let () (declare (not safe)) (##length _g73455_))))
          (cond ((let () (declare (not safe)) (##fx= _g73454_ 2))
                 (apply (lambda (_cont73287_ _exn73288_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont73287_ _exn73288_)))
                        _g73455_))
                ((let () (declare (not safe)) (##fx= _g73454_ 3))
                 (apply (lambda (_cont73292_ _exn73293_ _error-port73294_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont73292_
                             _exn73293_
                             _error-port73294_)))
                        _g73455_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g73455_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
