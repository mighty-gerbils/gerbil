(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1708343715)
  (begin
    (define spawn
      (lambda (_f72378_ . _args72379_)
        (if (let () (declare (not safe)) (procedure? _f72378_))
            '#!void
            (raise (let ((__obj72380
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj72380
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f72378_ '())))
                     __obj72380)))
        (let ()
          (declare (not safe))
          (spawn-actor _f72378_ _args72379_ '#!void '#f))))
    (define spawn/name
      (lambda (_name72374_ _f72375_ . _args72376_)
        (if (let () (declare (not safe)) (procedure? _f72375_))
            '#!void
            (raise (let ((__obj72381
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj72381
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f72375_ '())))
                     __obj72381)))
        (let ()
          (declare (not safe))
          (spawn-actor _f72375_ _args72376_ _name72374_ '#f))))
    (define spawn/group
      (lambda (_name72368_ _f72369_ . _args72370_)
        (if (let () (declare (not safe)) (procedure? _f72369_))
            '#!void
            (raise (let ((__obj72382
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj72382
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f72369_ '())))
                     __obj72382)))
        (let ((_tgroup72372_ (make-thread-group _name72368_)))
          (declare (not safe))
          (spawn-actor _f72369_ _args72370_ _name72368_ _tgroup72372_))))
    (define spawn-actor
      (lambda (_f72341_ _args72342_ _name72343_ _tgroup72344_)
        (letrec ((_thread-main72346_
                  (lambda (_thunk72360_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn72363_)
                         (let ((__tmp72384
                                (lambda (_cont72365_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp72385
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont72365_
                                                _exn72363_))))
                                        (declare (not safe))
                                        (with-catch void __tmp72385))
                                      '#!void)
                                  (let ((__tmp72386
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont72365_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp72386
                                     ##primordial-exception-handler
                                     _exn72363_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp72384)))
                       _thunk72360_)))))
          (let* ((_thunk72349_
                  (if (let () (declare (not safe)) (null? _args72342_))
                      _f72341_
                      (lambda () (apply _f72341_ _args72342_))))
                 (_thunk72352_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk72349_))))
                 (_tgroup72357_
                  (let ((_$e72354_ _tgroup72344_))
                    (if _$e72354_
                        _$e72354_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main72346_ _thunk72352_))
              _name72343_
              _tgroup72357_))))))
    (define spawn-thread__%
      (lambda (_thunk72319_ _name72320_ _tgroup72321_)
        (thread-start! (make-thread _thunk72319_ _name72320_ _tgroup72321_))))
    (define spawn-thread__0
      (lambda (_thunk72326_)
        (let* ((_name72328_ absent-obj) (_tgroup72330_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk72326_ _name72328_ _tgroup72330_))))
    (define spawn-thread__1
      (lambda (_thunk72332_ _name72333_)
        (let ((_tgroup72335_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk72332_ _name72333_ _tgroup72335_))))
    (define spawn-thread
      (lambda _g72388_
        (let ((_g72387_ (let () (declare (not safe)) (##length _g72388_))))
          (cond ((let () (declare (not safe)) (##fx= _g72387_ 1))
                 (apply (lambda (_thunk72326_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk72326_)))
                        _g72388_))
                ((let () (declare (not safe)) (##fx= _g72387_ 2))
                 (apply (lambda (_thunk72332_ _name72333_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk72332_ _name72333_)))
                        _g72388_))
                ((let () (declare (not safe)) (##fx= _g72387_ 3))
                 (apply (lambda (_thunk72337_ _name72338_ _tgroup72339_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk72337_
                             _name72338_
                             _tgroup72339_)))
                        _g72388_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g72388_))))))
    (define thread-local-ref__%
      (lambda (_key72303_ _default72304_)
        (let ((_tab72306_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab72306_ _key72303_ _default72304_))))
    (define thread-local-ref__0
      (lambda (_key72311_)
        (let ((_default72313_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key72311_ _default72313_))))
    (define thread-local-ref
      (lambda _g72390_
        (let ((_g72389_ (let () (declare (not safe)) (##length _g72390_))))
          (cond ((let () (declare (not safe)) (##fx= _g72389_ 1))
                 (apply (lambda (_key72311_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key72311_)))
                        _g72390_))
                ((let () (declare (not safe)) (##fx= _g72389_ 2))
                 (apply (lambda (_key72315_ _default72316_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key72315_ _default72316_)))
                        _g72390_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g72390_))))))
    (define thread-local-get
      (lambda (_key72300_)
        (let () (declare (not safe)) (thread-local-ref__% _key72300_ '#f))))
    (define thread-local-set!
      (lambda (_key72295_ _value72296_)
        (let ((_tab72298_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab72298_ _key72295_ _value72296_))))
    (define thread-local-clear!
      (lambda (_key72291_)
        (let ((_tab72293_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab72293_ _key72291_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr72277_ (current-thread)))
          (if (actor-thread? _thr72277_)
              (let ((_$e72279_ (actor-thread-locals _thr72277_)))
                (if _$e72279_
                    (values _$e72279_)
                    (let ((_tab72282_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr72277_ _tab72282_)
                      _tab72282_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr72277_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e72284_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr72277_))))
                      (if _$e72284_
                          ((lambda (_tab72287_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab72287_)
                           _$e72284_)
                          (let ((_tab72289_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr72277_
                               _tab72289_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab72289_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc72274_)
        (if (let () (declare (not safe)) (procedure? _proc72274_))
            '#!void
            (raise (let ((__obj72383
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj72383
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc72274_ '())))
                     __obj72383)))
        (set! __unhandled-actor-exception-hook _proc72274_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx72262_ _proc72263_)
        (let ((_handler72265_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e72267_)
             (let ((__tmp72391
                    (lambda ()
                      (mutex-unlock! _mx72262_)
                      (_handler72265_ _e72267_))))
               (declare (not safe))
               (with-catch void __tmp72391))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e72267_)))
           (lambda ()
             (mutex-lock! _mx72262_)
             (let ((_result72271_ (_proc72263_)))
               (mutex-unlock! _mx72262_)
               _result72271_))))))
    (define with-dynamic-lock
      (lambda (_mx72257_ _proc72258_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx72257_))
         _proc72258_
         (lambda () (mutex-unlock! _mx72257_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk72238_ _error-port72239_)
        (with-exception-handler
         (let ((_E72241_ (current-exception-handler)))
           (lambda (_exn72243_)
             (continuation-capture
              (lambda (_cont72245_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont72245_
                       _exn72243_
                       _error-port72239_))
                    '#!void)
                (_E72241_ _exn72243_)))))
         _thunk72238_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk72250_)
        (let ((_error-port72252_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk72250_ _error-port72252_))))
    (define with-exception-stack-trace
      (lambda _g72393_
        (let ((_g72392_ (let () (declare (not safe)) (##length _g72393_))))
          (cond ((let () (declare (not safe)) (##fx= _g72392_ 1))
                 (apply (lambda (_thunk72250_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk72250_)))
                        _g72393_))
                ((let () (declare (not safe)) (##fx= _g72392_ 2))
                 (apply (lambda (_thunk72254_ _error-port72255_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk72254_
                             _error-port72255_)))
                        _g72393_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g72393_))))))
    (define dump-stack-trace!__%
      (lambda (_cont72219_ _exn72220_ _error-port72221_)
        (let ((_out72223_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out72223_))
          (display '"*** Unhandled exception in " _out72223_)
          (display (current-thread) _out72223_)
          (newline _out72223_)
          (display-exception _exn72220_ _out72223_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn72220_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out72223_)
                (newline _out72223_)
                (display-continuation-backtrace _cont72219_ _out72223_)))
          (let ((__tmp72394 (get-output-string _out72223_)))
            (declare (not safe))
            (##write-string __tmp72394 _error-port72221_)))))
    (define dump-stack-trace!__0
      (lambda (_cont72228_ _exn72229_)
        (let ((_error-port72231_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont72228_ _exn72229_ _error-port72231_))))
    (define dump-stack-trace!
      (lambda _g72396_
        (let ((_g72395_ (let () (declare (not safe)) (##length _g72396_))))
          (cond ((let () (declare (not safe)) (##fx= _g72395_ 2))
                 (apply (lambda (_cont72228_ _exn72229_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont72228_ _exn72229_)))
                        _g72396_))
                ((let () (declare (not safe)) (##fx= _g72395_ 3))
                 (apply (lambda (_cont72233_ _exn72234_ _error-port72235_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont72233_
                             _exn72234_
                             _error-port72235_)))
                        _g72396_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g72396_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
