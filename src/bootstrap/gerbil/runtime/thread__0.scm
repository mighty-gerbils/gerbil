(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1708352924)
  (begin
    (define spawn
      (lambda (_f72379_ . _args72380_)
        (if (let () (declare (not safe)) (procedure? _f72379_))
            '#!void
            (raise (let ((__obj72381
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj72381
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f72379_ '())))
                     __obj72381)))
        (let ()
          (declare (not safe))
          (spawn-actor _f72379_ _args72380_ '#!void '#f))))
    (define spawn/name
      (lambda (_name72375_ _f72376_ . _args72377_)
        (if (let () (declare (not safe)) (procedure? _f72376_))
            '#!void
            (raise (let ((__obj72382
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj72382
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f72376_ '())))
                     __obj72382)))
        (let ()
          (declare (not safe))
          (spawn-actor _f72376_ _args72377_ _name72375_ '#f))))
    (define spawn/group
      (lambda (_name72369_ _f72370_ . _args72371_)
        (if (let () (declare (not safe)) (procedure? _f72370_))
            '#!void
            (raise (let ((__obj72383
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj72383
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f72370_ '())))
                     __obj72383)))
        (let ((_tgroup72373_ (make-thread-group _name72369_)))
          (declare (not safe))
          (spawn-actor _f72370_ _args72371_ _name72369_ _tgroup72373_))))
    (define spawn-actor
      (lambda (_f72342_ _args72343_ _name72344_ _tgroup72345_)
        (letrec ((_thread-main72347_
                  (lambda (_thunk72361_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn72364_)
                         (let ((__tmp72385
                                (lambda (_cont72366_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp72386
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont72366_
                                                _exn72364_))))
                                        (declare (not safe))
                                        (with-catch void __tmp72386))
                                      '#!void)
                                  (let ((__tmp72387
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont72366_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp72387
                                     ##primordial-exception-handler
                                     _exn72364_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp72385)))
                       _thunk72361_)))))
          (let* ((_thunk72350_
                  (if (let () (declare (not safe)) (null? _args72343_))
                      _f72342_
                      (lambda () (apply _f72342_ _args72343_))))
                 (_thunk72353_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk72350_))))
                 (_tgroup72358_
                  (let ((_$e72355_ _tgroup72345_))
                    (if _$e72355_
                        _$e72355_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main72347_ _thunk72353_))
              _name72344_
              _tgroup72358_))))))
    (define spawn-thread__%
      (lambda (_thunk72320_ _name72321_ _tgroup72322_)
        (thread-start! (make-thread _thunk72320_ _name72321_ _tgroup72322_))))
    (define spawn-thread__0
      (lambda (_thunk72327_)
        (let* ((_name72329_ absent-obj) (_tgroup72331_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk72327_ _name72329_ _tgroup72331_))))
    (define spawn-thread__1
      (lambda (_thunk72333_ _name72334_)
        (let ((_tgroup72336_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk72333_ _name72334_ _tgroup72336_))))
    (define spawn-thread
      (lambda _g72389_
        (let ((_g72388_ (let () (declare (not safe)) (##length _g72389_))))
          (cond ((let () (declare (not safe)) (##fx= _g72388_ 1))
                 (apply (lambda (_thunk72327_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk72327_)))
                        _g72389_))
                ((let () (declare (not safe)) (##fx= _g72388_ 2))
                 (apply (lambda (_thunk72333_ _name72334_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk72333_ _name72334_)))
                        _g72389_))
                ((let () (declare (not safe)) (##fx= _g72388_ 3))
                 (apply (lambda (_thunk72338_ _name72339_ _tgroup72340_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk72338_
                             _name72339_
                             _tgroup72340_)))
                        _g72389_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g72389_))))))
    (define thread-local-ref__%
      (lambda (_key72304_ _default72305_)
        (let ((_tab72307_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab72307_ _key72304_ _default72305_))))
    (define thread-local-ref__0
      (lambda (_key72312_)
        (let ((_default72314_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key72312_ _default72314_))))
    (define thread-local-ref
      (lambda _g72391_
        (let ((_g72390_ (let () (declare (not safe)) (##length _g72391_))))
          (cond ((let () (declare (not safe)) (##fx= _g72390_ 1))
                 (apply (lambda (_key72312_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key72312_)))
                        _g72391_))
                ((let () (declare (not safe)) (##fx= _g72390_ 2))
                 (apply (lambda (_key72316_ _default72317_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key72316_ _default72317_)))
                        _g72391_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g72391_))))))
    (define thread-local-get
      (lambda (_key72301_)
        (let () (declare (not safe)) (thread-local-ref__% _key72301_ '#f))))
    (define thread-local-set!
      (lambda (_key72296_ _value72297_)
        (let ((_tab72299_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab72299_ _key72296_ _value72297_))))
    (define thread-local-clear!
      (lambda (_key72292_)
        (let ((_tab72294_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab72294_ _key72292_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr72278_ (current-thread)))
          (if (actor-thread? _thr72278_)
              (let ((_$e72280_ (actor-thread-locals _thr72278_)))
                (if _$e72280_
                    (values _$e72280_)
                    (let ((_tab72283_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr72278_ _tab72283_)
                      _tab72283_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr72278_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e72285_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr72278_))))
                      (if _$e72285_
                          ((lambda (_tab72288_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab72288_)
                           _$e72285_)
                          (let ((_tab72290_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr72278_
                               _tab72290_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab72290_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc72275_)
        (if (let () (declare (not safe)) (procedure? _proc72275_))
            '#!void
            (raise (let ((__obj72384
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj72384
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc72275_ '())))
                     __obj72384)))
        (set! __unhandled-actor-exception-hook _proc72275_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx72263_ _proc72264_)
        (let ((_handler72266_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e72268_)
             (let ((__tmp72392
                    (lambda ()
                      (mutex-unlock! _mx72263_)
                      (_handler72266_ _e72268_))))
               (declare (not safe))
               (with-catch void __tmp72392))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e72268_)))
           (lambda ()
             (mutex-lock! _mx72263_)
             (let ((_result72272_ (_proc72264_)))
               (mutex-unlock! _mx72263_)
               _result72272_))))))
    (define with-dynamic-lock
      (lambda (_mx72258_ _proc72259_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx72258_))
         _proc72259_
         (lambda () (mutex-unlock! _mx72258_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk72239_ _error-port72240_)
        (with-exception-handler
         (let ((_E72242_ (current-exception-handler)))
           (lambda (_exn72244_)
             (continuation-capture
              (lambda (_cont72246_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont72246_
                       _exn72244_
                       _error-port72240_))
                    '#!void)
                (_E72242_ _exn72244_)))))
         _thunk72239_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk72251_)
        (let ((_error-port72253_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk72251_ _error-port72253_))))
    (define with-exception-stack-trace
      (lambda _g72394_
        (let ((_g72393_ (let () (declare (not safe)) (##length _g72394_))))
          (cond ((let () (declare (not safe)) (##fx= _g72393_ 1))
                 (apply (lambda (_thunk72251_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk72251_)))
                        _g72394_))
                ((let () (declare (not safe)) (##fx= _g72393_ 2))
                 (apply (lambda (_thunk72255_ _error-port72256_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk72255_
                             _error-port72256_)))
                        _g72394_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g72394_))))))
    (define dump-stack-trace!__%
      (lambda (_cont72220_ _exn72221_ _error-port72222_)
        (let ((_out72224_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out72224_))
          (display '"*** Unhandled exception in " _out72224_)
          (display (current-thread) _out72224_)
          (newline _out72224_)
          (display-exception _exn72221_ _out72224_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn72221_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out72224_)
                (newline _out72224_)
                (display-continuation-backtrace _cont72220_ _out72224_)))
          (let ((__tmp72395 (get-output-string _out72224_)))
            (declare (not safe))
            (##write-string __tmp72395 _error-port72222_)))))
    (define dump-stack-trace!__0
      (lambda (_cont72229_ _exn72230_)
        (let ((_error-port72232_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont72229_ _exn72230_ _error-port72232_))))
    (define dump-stack-trace!
      (lambda _g72397_
        (let ((_g72396_ (let () (declare (not safe)) (##length _g72397_))))
          (cond ((let () (declare (not safe)) (##fx= _g72396_ 2))
                 (apply (lambda (_cont72229_ _exn72230_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont72229_ _exn72230_)))
                        _g72397_))
                ((let () (declare (not safe)) (##fx= _g72396_ 3))
                 (apply (lambda (_cont72234_ _exn72235_ _error-port72236_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont72234_
                             _exn72235_
                             _error-port72236_)))
                        _g72397_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g72397_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
