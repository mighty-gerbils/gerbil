(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1701718632)
  (begin
    (define spawn
      (lambda (_f11103_ . _args11104_)
        (if (let () (declare (not safe)) (procedure? _f11103_))
            '#!void
            (raise (let ((__tmp11105
                          (let () (declare (not safe)) (cons _f11103_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      __tmp11105))))
        (let ()
          (declare (not safe))
          (spawn-actor _f11103_ _args11104_ '#!void '#f))))
    (define spawn/name
      (lambda (_name11099_ _f11100_ . _args11101_)
        (if (let () (declare (not safe)) (procedure? _f11100_))
            '#!void
            (raise (let ((__tmp11106
                          (let () (declare (not safe)) (cons _f11100_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      __tmp11106))))
        (let ()
          (declare (not safe))
          (spawn-actor _f11100_ _args11101_ _name11099_ '#f))))
    (define spawn/group
      (lambda (_name11093_ _f11094_ . _args11095_)
        (if (let () (declare (not safe)) (procedure? _f11094_))
            '#!void
            (raise (let ((__tmp11107
                          (let () (declare (not safe)) (cons _f11094_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      __tmp11107))))
        (let ((_tgroup11097_ (make-thread-group _name11093_)))
          (declare (not safe))
          (spawn-actor _f11094_ _args11095_ _name11093_ _tgroup11097_))))
    (define spawn-actor
      (lambda (_f11066_ _args11067_ _name11068_ _tgroup11069_)
        (letrec ((_thread-main11071_
                  (lambda (_thunk11085_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn11088_)
                         (let ((__tmp11108
                                (lambda (_cont11090_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp11109
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont11090_
                                                _exn11088_))))
                                        (declare (not safe))
                                        (with-catch void __tmp11109))
                                      '#!void)
                                  (let ((__tmp11110
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont11090_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp11110
                                     ##primordial-exception-handler
                                     _exn11088_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp11108)))
                       _thunk11085_)))))
          (let* ((_thunk11074_
                  (if (let () (declare (not safe)) (null? _args11067_))
                      _f11066_
                      (lambda () (apply _f11066_ _args11067_))))
                 (_thunk11077_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk11074_))))
                 (_tgroup11082_
                  (let ((_$e11079_ _tgroup11069_))
                    (if _$e11079_
                        _$e11079_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main11071_ _thunk11077_))
              _name11068_
              _tgroup11082_))))))
    (define spawn-thread__%
      (lambda (_thunk11044_ _name11045_ _tgroup11046_)
        (thread-start! (make-thread _thunk11044_ _name11045_ _tgroup11046_))))
    (define spawn-thread__0
      (lambda (_thunk11051_)
        (let* ((_name11053_ absent-obj) (_tgroup11055_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk11051_ _name11053_ _tgroup11055_))))
    (define spawn-thread__1
      (lambda (_thunk11057_ _name11058_)
        (let ((_tgroup11060_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk11057_ _name11058_ _tgroup11060_))))
    (define spawn-thread
      (lambda _g11112_
        (let ((_g11111_ (let () (declare (not safe)) (##length _g11112_))))
          (cond ((let () (declare (not safe)) (##fx= _g11111_ 1))
                 (apply (lambda (_thunk11051_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk11051_)))
                        _g11112_))
                ((let () (declare (not safe)) (##fx= _g11111_ 2))
                 (apply (lambda (_thunk11057_ _name11058_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk11057_ _name11058_)))
                        _g11112_))
                ((let () (declare (not safe)) (##fx= _g11111_ 3))
                 (apply (lambda (_thunk11062_ _name11063_ _tgroup11064_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk11062_
                             _name11063_
                             _tgroup11064_)))
                        _g11112_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g11112_))))))
    (define thread-local-ref__%
      (lambda (_key11028_ _default11029_)
        (let ((_tab11031_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab11031_ _key11028_ _default11029_))))
    (define thread-local-ref__0
      (lambda (_key11036_)
        (let ((_default11038_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key11036_ _default11038_))))
    (define thread-local-ref
      (lambda _g11114_
        (let ((_g11113_ (let () (declare (not safe)) (##length _g11114_))))
          (cond ((let () (declare (not safe)) (##fx= _g11113_ 1))
                 (apply (lambda (_key11036_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key11036_)))
                        _g11114_))
                ((let () (declare (not safe)) (##fx= _g11113_ 2))
                 (apply (lambda (_key11040_ _default11041_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key11040_ _default11041_)))
                        _g11114_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g11114_))))))
    (define thread-local-get
      (lambda (_key11025_)
        (let () (declare (not safe)) (thread-local-ref _key11025_ '#f))))
    (define thread-local-set!
      (lambda (_key11020_ _value11021_)
        (let ((_tab11023_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab11023_ _key11020_ _value11021_))))
    (define thread-local-clear!
      (lambda (_key11016_)
        (let ((_tab11018_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab11018_ _key11016_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr11002_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr11002_))
              (let ((_$e11004_ (actor-thread-locals _thr11002_)))
                (if _$e11004_
                    (values _$e11004_)
                    (let ((_tab11007_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr11002_ _tab11007_)
                      _tab11007_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr11002_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e11009_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr11002_ '#f))))
                      (if _$e11009_
                          ((lambda (_tab11012_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab11012_)
                           _$e11009_)
                          (let ((_tab11014_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr11002_
                               _tab11014_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab11014_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc10999_)
        (if (let () (declare (not safe)) (procedure? _proc10999_))
            '#!void
            (raise (let ((__tmp11115
                          (let ()
                            (declare (not safe))
                            (cons _proc10999_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      __tmp11115))))
        (set! __unhandled-actor-exception-hook _proc10999_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx10987_ _proc10988_)
        (let ((_handler10990_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e10992_)
             (let ((__tmp11116
                    (lambda ()
                      (mutex-unlock! _mx10987_)
                      (_handler10990_ _e10992_))))
               (declare (not safe))
               (with-catch void __tmp11116))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e10992_)))
           (lambda ()
             (mutex-lock! _mx10987_)
             (let ((_result10996_ (_proc10988_)))
               (mutex-unlock! _mx10987_)
               _result10996_))))))
    (define with-dynamic-lock
      (lambda (_mx10982_ _proc10983_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx10982_))
         _proc10983_
         (lambda () (mutex-unlock! _mx10982_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk10963_ _error-port10964_)
        (with-exception-handler
         (let ((_E10966_ (current-exception-handler)))
           (lambda (_exn10968_)
             (continuation-capture
              (lambda (_cont10970_)
                (let ()
                  (declare (not safe))
                  (dump-stack-trace!__%
                   _cont10970_
                   _exn10968_
                   _error-port10964_))
                (_E10966_ _exn10968_)))))
         _thunk10963_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk10975_)
        (let ((_error-port10977_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk10975_ _error-port10977_))))
    (define with-exception-stack-trace
      (lambda _g11118_
        (let ((_g11117_ (let () (declare (not safe)) (##length _g11118_))))
          (cond ((let () (declare (not safe)) (##fx= _g11117_ 1))
                 (apply (lambda (_thunk10975_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk10975_)))
                        _g11118_))
                ((let () (declare (not safe)) (##fx= _g11117_ 2))
                 (apply (lambda (_thunk10979_ _error-port10980_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk10979_
                             _error-port10980_)))
                        _g11118_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g11118_))))))
    (define dump-stack-trace!__%
      (lambda (_cont10944_ _exn10945_ _error-port10946_)
        (let ((_out10948_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out10948_))
          (display '"*** Unhandled exception in " _out10948_)
          (display (current-thread) _out10948_)
          (newline _out10948_)
          (display-exception _exn10945_ _out10948_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn10945_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out10948_)
                (newline _out10948_)
                (display-continuation-backtrace _cont10944_ _out10948_)))
          (let ((__tmp11119 (get-output-string _out10948_)))
            (declare (not safe))
            (##write-string __tmp11119 _error-port10946_)))))
    (define dump-stack-trace!__0
      (lambda (_cont10953_ _exn10954_)
        (let ((_error-port10956_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont10953_ _exn10954_ _error-port10956_))))
    (define dump-stack-trace!
      (lambda _g11121_
        (let ((_g11120_ (let () (declare (not safe)) (##length _g11121_))))
          (cond ((let () (declare (not safe)) (##fx= _g11120_ 2))
                 (apply (lambda (_cont10953_ _exn10954_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont10953_ _exn10954_)))
                        _g11121_))
                ((let () (declare (not safe)) (##fx= _g11120_ 3))
                 (apply (lambda (_cont10958_ _exn10959_ _error-port10960_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont10958_
                             _exn10959_
                             _error-port10960_)))
                        _g11121_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g11121_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
