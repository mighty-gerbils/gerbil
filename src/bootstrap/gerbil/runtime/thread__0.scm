(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1708247273)
  (begin
    (define spawn
      (lambda (_f101137_ . _args101138_)
        (if (let () (declare (not safe)) (procedure? _f101137_))
            '#!void
            (raise (let ((__obj105206
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj105206
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f101137_ '())))
                     __obj105206)))
        (let ()
          (declare (not safe))
          (spawn-actor _f101137_ _args101138_ '#!void '#f))))
    (define spawn/name
      (lambda (_name101133_ _f101134_ . _args101135_)
        (if (let () (declare (not safe)) (procedure? _f101134_))
            '#!void
            (raise (let ((__obj105207
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj105207
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f101134_ '())))
                     __obj105207)))
        (let ()
          (declare (not safe))
          (spawn-actor _f101134_ _args101135_ _name101133_ '#f))))
    (define spawn/group
      (lambda (_name101127_ _f101128_ . _args101129_)
        (if (let () (declare (not safe)) (procedure? _f101128_))
            '#!void
            (raise (let ((__obj105208
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj105208
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f101128_ '())))
                     __obj105208)))
        (let ((_tgroup101131_ (make-thread-group _name101127_)))
          (declare (not safe))
          (spawn-actor _f101128_ _args101129_ _name101127_ _tgroup101131_))))
    (define spawn-actor
      (lambda (_f101100_ _args101101_ _name101102_ _tgroup101103_)
        (letrec ((_thread-main101105_
                  (lambda (_thunk101119_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn101122_)
                         (let ((__tmp105210
                                (lambda (_cont101124_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp105211
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont101124_
                                                _exn101122_))))
                                        (declare (not safe))
                                        (with-catch void __tmp105211))
                                      '#!void)
                                  (let ((__tmp105212
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last
                                            _cont101124_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp105212
                                     ##primordial-exception-handler
                                     _exn101122_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp105210)))
                       _thunk101119_)))))
          (let* ((_thunk101108_
                  (if (let () (declare (not safe)) (null? _args101101_))
                      _f101100_
                      (lambda () (apply _f101100_ _args101101_))))
                 (_thunk101111_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk101108_))))
                 (_tgroup101116_
                  (let ((_$e101113_ _tgroup101103_))
                    (if _$e101113_
                        _$e101113_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main101105_ _thunk101111_))
              _name101102_
              _tgroup101116_))))))
    (define spawn-thread__%
      (lambda (_thunk101078_ _name101079_ _tgroup101080_)
        (thread-start!
         (make-thread _thunk101078_ _name101079_ _tgroup101080_))))
    (define spawn-thread__0
      (lambda (_thunk101085_)
        (let* ((_name101087_ absent-obj) (_tgroup101089_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk101085_ _name101087_ _tgroup101089_))))
    (define spawn-thread__1
      (lambda (_thunk101091_ _name101092_)
        (let ((_tgroup101094_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk101091_ _name101092_ _tgroup101094_))))
    (define spawn-thread
      (lambda _g105214_
        (let ((_g105213_ (let () (declare (not safe)) (##length _g105214_))))
          (cond ((let () (declare (not safe)) (##fx= _g105213_ 1))
                 (apply (lambda (_thunk101085_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk101085_)))
                        _g105214_))
                ((let () (declare (not safe)) (##fx= _g105213_ 2))
                 (apply (lambda (_thunk101091_ _name101092_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk101091_ _name101092_)))
                        _g105214_))
                ((let () (declare (not safe)) (##fx= _g105213_ 3))
                 (apply (lambda (_thunk101096_ _name101097_ _tgroup101098_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk101096_
                             _name101097_
                             _tgroup101098_)))
                        _g105214_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g105214_))))))
    (define thread-local-ref__%
      (lambda (_key101062_ _default101063_)
        (let ((_tab101065_ (let () (declare (not safe)) (thread-local-table))))
          (hash-ref _tab101065_ _key101062_ _default101063_))))
    (define thread-local-ref__0
      (lambda (_key101070_)
        (let ((_default101072_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key101070_ _default101072_))))
    (define thread-local-ref
      (lambda _g105216_
        (let ((_g105215_ (let () (declare (not safe)) (##length _g105216_))))
          (cond ((let () (declare (not safe)) (##fx= _g105215_ 1))
                 (apply (lambda (_key101070_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key101070_)))
                        _g105216_))
                ((let () (declare (not safe)) (##fx= _g105215_ 2))
                 (apply (lambda (_key101074_ _default101075_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key101074_ _default101075_)))
                        _g105216_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g105216_))))))
    (define thread-local-get
      (lambda (_key101059_)
        (let () (declare (not safe)) (thread-local-ref _key101059_ '#f))))
    (define thread-local-set!
      (lambda (_key101054_ _value101055_)
        (let ((_tab101057_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab101057_ _key101054_ _value101055_))))
    (define thread-local-clear!
      (lambda (_key101050_)
        (let ((_tab101052_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab101052_ _key101050_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr101036_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr101036_))
              (let ((_$e101038_ (actor-thread-locals _thr101036_)))
                (if _$e101038_
                    (values _$e101038_)
                    (let ((_tab101041_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr101036_ _tab101041_)
                      _tab101041_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr101036_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e101043_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr101036_))))
                      (if _$e101043_
                          ((lambda (_tab101046_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab101046_)
                           _$e101043_)
                          (let ((_tab101048_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr101036_
                               _tab101048_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab101048_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc101033_)
        (if (let () (declare (not safe)) (procedure? _proc101033_))
            '#!void
            (raise (let ((__obj105209
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj105209
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc101033_ '())))
                     __obj105209)))
        (set! __unhandled-actor-exception-hook _proc101033_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx101021_ _proc101022_)
        (let ((_handler101024_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e101026_)
             (let ((__tmp105217
                    (lambda ()
                      (mutex-unlock! _mx101021_)
                      (_handler101024_ _e101026_))))
               (declare (not safe))
               (with-catch void __tmp105217))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e101026_)))
           (lambda ()
             (mutex-lock! _mx101021_)
             (let ((_result101030_ (_proc101022_)))
               (mutex-unlock! _mx101021_)
               _result101030_))))))
    (define with-dynamic-lock
      (lambda (_mx101016_ _proc101017_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx101016_))
         _proc101017_
         (lambda () (mutex-unlock! _mx101016_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk100997_ _error-port100998_)
        (with-exception-handler
         (let ((_E101000_ (current-exception-handler)))
           (lambda (_exn101002_)
             (continuation-capture
              (lambda (_cont101004_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont101004_
                       _exn101002_
                       _error-port100998_))
                    '#!void)
                (_E101000_ _exn101002_)))))
         _thunk100997_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk101009_)
        (let ((_error-port101011_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk101009_ _error-port101011_))))
    (define with-exception-stack-trace
      (lambda _g105219_
        (let ((_g105218_ (let () (declare (not safe)) (##length _g105219_))))
          (cond ((let () (declare (not safe)) (##fx= _g105218_ 1))
                 (apply (lambda (_thunk101009_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk101009_)))
                        _g105219_))
                ((let () (declare (not safe)) (##fx= _g105218_ 2))
                 (apply (lambda (_thunk101013_ _error-port101014_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk101013_
                             _error-port101014_)))
                        _g105219_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g105219_))))))
    (define dump-stack-trace!__%
      (lambda (_cont100978_ _exn100979_ _error-port100980_)
        (let ((_out100982_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out100982_))
          (display '"*** Unhandled exception in " _out100982_)
          (display (current-thread) _out100982_)
          (newline _out100982_)
          (display-exception _exn100979_ _out100982_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn100979_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out100982_)
                (newline _out100982_)
                (display-continuation-backtrace _cont100978_ _out100982_)))
          (let ((__tmp105220 (get-output-string _out100982_)))
            (declare (not safe))
            (##write-string __tmp105220 _error-port100980_)))))
    (define dump-stack-trace!__0
      (lambda (_cont100987_ _exn100988_)
        (let ((_error-port100990_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont100987_ _exn100988_ _error-port100990_))))
    (define dump-stack-trace!
      (lambda _g105222_
        (let ((_g105221_ (let () (declare (not safe)) (##length _g105222_))))
          (cond ((let () (declare (not safe)) (##fx= _g105221_ 2))
                 (apply (lambda (_cont100987_ _exn100988_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont100987_ _exn100988_)))
                        _g105222_))
                ((let () (declare (not safe)) (##fx= _g105221_ 3))
                 (apply (lambda (_cont100992_ _exn100993_ _error-port100994_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont100992_
                             _exn100993_
                             _error-port100994_)))
                        _g105222_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g105222_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
