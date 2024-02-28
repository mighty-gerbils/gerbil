(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1709111635)
  (begin
    (define spawn
      (lambda (_f73030_ . _args73031_)
        (if (let () (declare (not safe)) (procedure? _f73030_))
            '#!void
            (raise (let ((__obj73032
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73032
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f73030_ '())))
                     __obj73032)))
        (let ()
          (declare (not safe))
          (spawn-actor _f73030_ _args73031_ '#!void '#f))))
    (define spawn/name
      (lambda (_name73026_ _f73027_ . _args73028_)
        (if (let () (declare (not safe)) (procedure? _f73027_))
            '#!void
            (raise (let ((__obj73033
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73033
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f73027_ '())))
                     __obj73033)))
        (let ()
          (declare (not safe))
          (spawn-actor _f73027_ _args73028_ _name73026_ '#f))))
    (define spawn/group
      (lambda (_name73020_ _f73021_ . _args73022_)
        (if (let () (declare (not safe)) (procedure? _f73021_))
            '#!void
            (raise (let ((__obj73034
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73034
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f73021_ '())))
                     __obj73034)))
        (let ((_tgroup73024_ (make-thread-group _name73020_)))
          (declare (not safe))
          (spawn-actor _f73021_ _args73022_ _name73020_ _tgroup73024_))))
    (define spawn-actor
      (lambda (_f72993_ _args72994_ _name72995_ _tgroup72996_)
        (letrec ((_thread-main72998_
                  (lambda (_thunk73012_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn73015_)
                         (let ((__tmp73036
                                (lambda (_cont73017_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp73037
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont73017_
                                                _exn73015_))))
                                        (declare (not safe))
                                        (with-catch void __tmp73037))
                                      '#!void)
                                  (let ((__tmp73038
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont73017_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp73038
                                     ##primordial-exception-handler
                                     _exn73015_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp73036)))
                       _thunk73012_)))))
          (let* ((_thunk73001_
                  (if (let () (declare (not safe)) (null? _args72994_))
                      _f72993_
                      (lambda () (apply _f72993_ _args72994_))))
                 (_thunk73004_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk73001_))))
                 (_tgroup73009_
                  (let ((_$e73006_ _tgroup72996_))
                    (if _$e73006_
                        _$e73006_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main72998_ _thunk73004_))
              _name72995_
              _tgroup73009_))))))
    (define spawn-thread__%
      (lambda (_thunk72971_ _name72972_ _tgroup72973_)
        (thread-start! (make-thread _thunk72971_ _name72972_ _tgroup72973_))))
    (define spawn-thread__0
      (lambda (_thunk72978_)
        (let* ((_name72980_ absent-obj) (_tgroup72982_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk72978_ _name72980_ _tgroup72982_))))
    (define spawn-thread__1
      (lambda (_thunk72984_ _name72985_)
        (let ((_tgroup72987_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk72984_ _name72985_ _tgroup72987_))))
    (define spawn-thread
      (lambda _g73040_
        (let ((_g73039_ (let () (declare (not safe)) (##length _g73040_))))
          (cond ((let () (declare (not safe)) (##fx= _g73039_ 1))
                 (apply (lambda (_thunk72978_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk72978_)))
                        _g73040_))
                ((let () (declare (not safe)) (##fx= _g73039_ 2))
                 (apply (lambda (_thunk72984_ _name72985_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk72984_ _name72985_)))
                        _g73040_))
                ((let () (declare (not safe)) (##fx= _g73039_ 3))
                 (apply (lambda (_thunk72989_ _name72990_ _tgroup72991_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk72989_
                             _name72990_
                             _tgroup72991_)))
                        _g73040_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g73040_))))))
    (define thread-local-ref__%
      (lambda (_key72955_ _default72956_)
        (let ((_tab72958_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab72958_ _key72955_ _default72956_))))
    (define thread-local-ref__0
      (lambda (_key72963_)
        (let ((_default72965_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key72963_ _default72965_))))
    (define thread-local-ref
      (lambda _g73042_
        (let ((_g73041_ (let () (declare (not safe)) (##length _g73042_))))
          (cond ((let () (declare (not safe)) (##fx= _g73041_ 1))
                 (apply (lambda (_key72963_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key72963_)))
                        _g73042_))
                ((let () (declare (not safe)) (##fx= _g73041_ 2))
                 (apply (lambda (_key72967_ _default72968_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key72967_ _default72968_)))
                        _g73042_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g73042_))))))
    (define thread-local-get
      (lambda (_key72952_)
        (let () (declare (not safe)) (thread-local-ref__% _key72952_ '#f))))
    (define thread-local-set!
      (lambda (_key72947_ _value72948_)
        (let ((_tab72950_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab72950_ _key72947_ _value72948_))))
    (define thread-local-clear!
      (lambda (_key72943_)
        (let ((_tab72945_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab72945_ _key72943_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr72929_ (current-thread)))
          (if (actor-thread? _thr72929_)
              (let ((_$e72931_ (actor-thread-locals _thr72929_)))
                (if _$e72931_
                    (values _$e72931_)
                    (let ((_tab72934_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr72929_ _tab72934_)
                      _tab72934_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr72929_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e72936_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr72929_))))
                      (if _$e72936_
                          ((lambda (_tab72939_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab72939_)
                           _$e72936_)
                          (let ((_tab72941_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr72929_
                               _tab72941_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab72941_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc72926_)
        (if (let () (declare (not safe)) (procedure? _proc72926_))
            '#!void
            (raise (let ((__obj73035
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73035
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc72926_ '())))
                     __obj73035)))
        (set! __unhandled-actor-exception-hook _proc72926_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx72914_ _proc72915_)
        (let ((_handler72917_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e72919_)
             (let ((__tmp73043
                    (lambda ()
                      (mutex-unlock! _mx72914_)
                      (_handler72917_ _e72919_))))
               (declare (not safe))
               (with-catch void __tmp73043))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e72919_)))
           (lambda ()
             (mutex-lock! _mx72914_)
             (let ((_result72923_ (_proc72915_)))
               (mutex-unlock! _mx72914_)
               _result72923_))))))
    (define with-dynamic-lock
      (lambda (_mx72909_ _proc72910_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx72909_))
         _proc72910_
         (lambda () (mutex-unlock! _mx72909_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk72890_ _error-port72891_)
        (with-exception-handler
         (let ((_E72893_ (current-exception-handler)))
           (lambda (_exn72895_)
             (continuation-capture
              (lambda (_cont72897_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont72897_
                       _exn72895_
                       _error-port72891_))
                    '#!void)
                (_E72893_ _exn72895_)))))
         _thunk72890_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk72902_)
        (let ((_error-port72904_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk72902_ _error-port72904_))))
    (define with-exception-stack-trace
      (lambda _g73045_
        (let ((_g73044_ (let () (declare (not safe)) (##length _g73045_))))
          (cond ((let () (declare (not safe)) (##fx= _g73044_ 1))
                 (apply (lambda (_thunk72902_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk72902_)))
                        _g73045_))
                ((let () (declare (not safe)) (##fx= _g73044_ 2))
                 (apply (lambda (_thunk72906_ _error-port72907_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk72906_
                             _error-port72907_)))
                        _g73045_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g73045_))))))
    (define dump-stack-trace!__%
      (lambda (_cont72871_ _exn72872_ _error-port72873_)
        (let ((_out72875_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out72875_))
          (display '"*** Unhandled exception in " _out72875_)
          (display (current-thread) _out72875_)
          (newline _out72875_)
          (display-exception _exn72872_ _out72875_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn72872_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out72875_)
                (newline _out72875_)
                (display-continuation-backtrace _cont72871_ _out72875_)))
          (let ((__tmp73046 (get-output-string _out72875_)))
            (declare (not safe))
            (##write-string __tmp73046 _error-port72873_)))))
    (define dump-stack-trace!__0
      (lambda (_cont72880_ _exn72881_)
        (let ((_error-port72883_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont72880_ _exn72881_ _error-port72883_))))
    (define dump-stack-trace!
      (lambda _g73048_
        (let ((_g73047_ (let () (declare (not safe)) (##length _g73048_))))
          (cond ((let () (declare (not safe)) (##fx= _g73047_ 2))
                 (apply (lambda (_cont72880_ _exn72881_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont72880_ _exn72881_)))
                        _g73048_))
                ((let () (declare (not safe)) (##fx= _g73047_ 3))
                 (apply (lambda (_cont72885_ _exn72886_ _error-port72887_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont72885_
                             _exn72886_
                             _error-port72887_)))
                        _g73048_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g73048_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
