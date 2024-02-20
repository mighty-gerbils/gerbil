(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1708387688)
  (begin
    (define spawn
      (lambda (_f72390_ . _args72391_)
        (if (let () (declare (not safe)) (procedure? _f72390_))
            '#!void
            (raise (let ((__obj72392
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj72392
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f72390_ '())))
                     __obj72392)))
        (let ()
          (declare (not safe))
          (spawn-actor _f72390_ _args72391_ '#!void '#f))))
    (define spawn/name
      (lambda (_name72386_ _f72387_ . _args72388_)
        (if (let () (declare (not safe)) (procedure? _f72387_))
            '#!void
            (raise (let ((__obj72393
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj72393
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f72387_ '())))
                     __obj72393)))
        (let ()
          (declare (not safe))
          (spawn-actor _f72387_ _args72388_ _name72386_ '#f))))
    (define spawn/group
      (lambda (_name72380_ _f72381_ . _args72382_)
        (if (let () (declare (not safe)) (procedure? _f72381_))
            '#!void
            (raise (let ((__obj72394
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj72394
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f72381_ '())))
                     __obj72394)))
        (let ((_tgroup72384_ (make-thread-group _name72380_)))
          (declare (not safe))
          (spawn-actor _f72381_ _args72382_ _name72380_ _tgroup72384_))))
    (define spawn-actor
      (lambda (_f72353_ _args72354_ _name72355_ _tgroup72356_)
        (letrec ((_thread-main72358_
                  (lambda (_thunk72372_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn72375_)
                         (let ((__tmp72396
                                (lambda (_cont72377_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp72397
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont72377_
                                                _exn72375_))))
                                        (declare (not safe))
                                        (with-catch void __tmp72397))
                                      '#!void)
                                  (let ((__tmp72398
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont72377_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp72398
                                     ##primordial-exception-handler
                                     _exn72375_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp72396)))
                       _thunk72372_)))))
          (let* ((_thunk72361_
                  (if (let () (declare (not safe)) (null? _args72354_))
                      _f72353_
                      (lambda () (apply _f72353_ _args72354_))))
                 (_thunk72364_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk72361_))))
                 (_tgroup72369_
                  (let ((_$e72366_ _tgroup72356_))
                    (if _$e72366_
                        _$e72366_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main72358_ _thunk72364_))
              _name72355_
              _tgroup72369_))))))
    (define spawn-thread__%
      (lambda (_thunk72331_ _name72332_ _tgroup72333_)
        (thread-start! (make-thread _thunk72331_ _name72332_ _tgroup72333_))))
    (define spawn-thread__0
      (lambda (_thunk72338_)
        (let* ((_name72340_ absent-obj) (_tgroup72342_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk72338_ _name72340_ _tgroup72342_))))
    (define spawn-thread__1
      (lambda (_thunk72344_ _name72345_)
        (let ((_tgroup72347_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk72344_ _name72345_ _tgroup72347_))))
    (define spawn-thread
      (lambda _g72400_
        (let ((_g72399_ (let () (declare (not safe)) (##length _g72400_))))
          (cond ((let () (declare (not safe)) (##fx= _g72399_ 1))
                 (apply (lambda (_thunk72338_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk72338_)))
                        _g72400_))
                ((let () (declare (not safe)) (##fx= _g72399_ 2))
                 (apply (lambda (_thunk72344_ _name72345_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk72344_ _name72345_)))
                        _g72400_))
                ((let () (declare (not safe)) (##fx= _g72399_ 3))
                 (apply (lambda (_thunk72349_ _name72350_ _tgroup72351_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk72349_
                             _name72350_
                             _tgroup72351_)))
                        _g72400_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g72400_))))))
    (define thread-local-ref__%
      (lambda (_key72315_ _default72316_)
        (let ((_tab72318_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab72318_ _key72315_ _default72316_))))
    (define thread-local-ref__0
      (lambda (_key72323_)
        (let ((_default72325_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key72323_ _default72325_))))
    (define thread-local-ref
      (lambda _g72402_
        (let ((_g72401_ (let () (declare (not safe)) (##length _g72402_))))
          (cond ((let () (declare (not safe)) (##fx= _g72401_ 1))
                 (apply (lambda (_key72323_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key72323_)))
                        _g72402_))
                ((let () (declare (not safe)) (##fx= _g72401_ 2))
                 (apply (lambda (_key72327_ _default72328_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key72327_ _default72328_)))
                        _g72402_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g72402_))))))
    (define thread-local-get
      (lambda (_key72312_)
        (let () (declare (not safe)) (thread-local-ref__% _key72312_ '#f))))
    (define thread-local-set!
      (lambda (_key72307_ _value72308_)
        (let ((_tab72310_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab72310_ _key72307_ _value72308_))))
    (define thread-local-clear!
      (lambda (_key72303_)
        (let ((_tab72305_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab72305_ _key72303_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr72289_ (current-thread)))
          (if (actor-thread? _thr72289_)
              (let ((_$e72291_ (actor-thread-locals _thr72289_)))
                (if _$e72291_
                    (values _$e72291_)
                    (let ((_tab72294_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr72289_ _tab72294_)
                      _tab72294_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr72289_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e72296_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr72289_))))
                      (if _$e72296_
                          ((lambda (_tab72299_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab72299_)
                           _$e72296_)
                          (let ((_tab72301_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr72289_
                               _tab72301_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab72301_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc72286_)
        (if (let () (declare (not safe)) (procedure? _proc72286_))
            '#!void
            (raise (let ((__obj72395
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj72395
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc72286_ '())))
                     __obj72395)))
        (set! __unhandled-actor-exception-hook _proc72286_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx72274_ _proc72275_)
        (let ((_handler72277_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e72279_)
             (let ((__tmp72403
                    (lambda ()
                      (mutex-unlock! _mx72274_)
                      (_handler72277_ _e72279_))))
               (declare (not safe))
               (with-catch void __tmp72403))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e72279_)))
           (lambda ()
             (mutex-lock! _mx72274_)
             (let ((_result72283_ (_proc72275_)))
               (mutex-unlock! _mx72274_)
               _result72283_))))))
    (define with-dynamic-lock
      (lambda (_mx72269_ _proc72270_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx72269_))
         _proc72270_
         (lambda () (mutex-unlock! _mx72269_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk72250_ _error-port72251_)
        (with-exception-handler
         (let ((_E72253_ (current-exception-handler)))
           (lambda (_exn72255_)
             (continuation-capture
              (lambda (_cont72257_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont72257_
                       _exn72255_
                       _error-port72251_))
                    '#!void)
                (_E72253_ _exn72255_)))))
         _thunk72250_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk72262_)
        (let ((_error-port72264_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk72262_ _error-port72264_))))
    (define with-exception-stack-trace
      (lambda _g72405_
        (let ((_g72404_ (let () (declare (not safe)) (##length _g72405_))))
          (cond ((let () (declare (not safe)) (##fx= _g72404_ 1))
                 (apply (lambda (_thunk72262_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk72262_)))
                        _g72405_))
                ((let () (declare (not safe)) (##fx= _g72404_ 2))
                 (apply (lambda (_thunk72266_ _error-port72267_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk72266_
                             _error-port72267_)))
                        _g72405_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g72405_))))))
    (define dump-stack-trace!__%
      (lambda (_cont72231_ _exn72232_ _error-port72233_)
        (let ((_out72235_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out72235_))
          (display '"*** Unhandled exception in " _out72235_)
          (display (current-thread) _out72235_)
          (newline _out72235_)
          (display-exception _exn72232_ _out72235_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn72232_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out72235_)
                (newline _out72235_)
                (display-continuation-backtrace _cont72231_ _out72235_)))
          (let ((__tmp72406 (get-output-string _out72235_)))
            (declare (not safe))
            (##write-string __tmp72406 _error-port72233_)))))
    (define dump-stack-trace!__0
      (lambda (_cont72240_ _exn72241_)
        (let ((_error-port72243_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont72240_ _exn72241_ _error-port72243_))))
    (define dump-stack-trace!
      (lambda _g72408_
        (let ((_g72407_ (let () (declare (not safe)) (##length _g72408_))))
          (cond ((let () (declare (not safe)) (##fx= _g72407_ 2))
                 (apply (lambda (_cont72240_ _exn72241_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont72240_ _exn72241_)))
                        _g72408_))
                ((let () (declare (not safe)) (##fx= _g72407_ 3))
                 (apply (lambda (_cont72245_ _exn72246_ _error-port72247_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont72245_
                             _exn72246_
                             _error-port72247_)))
                        _g72408_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g72408_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
