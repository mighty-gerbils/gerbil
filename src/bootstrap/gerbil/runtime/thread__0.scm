(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1710067691)
  (begin
    (define spawn
      (lambda (_f73038_ . _args73039_)
        (if (let () (declare (not safe)) (procedure? _f73038_))
            '#!void
            (let ((__tmp73044
                   (let ((__obj73040
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73040
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f73038_ '())))
                     __obj73040)))
              (declare (not safe))
              (raise __tmp73044)))
        (let ()
          (declare (not safe))
          (spawn-actor _f73038_ _args73039_ '#!void '#f))))
    (define spawn/name
      (lambda (_name73034_ _f73035_ . _args73036_)
        (if (let () (declare (not safe)) (procedure? _f73035_))
            '#!void
            (let ((__tmp73045
                   (let ((__obj73041
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73041
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f73035_ '())))
                     __obj73041)))
              (declare (not safe))
              (raise __tmp73045)))
        (let ()
          (declare (not safe))
          (spawn-actor _f73035_ _args73036_ _name73034_ '#f))))
    (define spawn/group
      (lambda (_name73028_ _f73029_ . _args73030_)
        (if (let () (declare (not safe)) (procedure? _f73029_))
            '#!void
            (let ((__tmp73046
                   (let ((__obj73042
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73042
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f73029_ '())))
                     __obj73042)))
              (declare (not safe))
              (raise __tmp73046)))
        (let ((_tgroup73032_ (make-thread-group _name73028_)))
          (declare (not safe))
          (spawn-actor _f73029_ _args73030_ _name73028_ _tgroup73032_))))
    (define spawn-actor
      (lambda (_f73001_ _args73002_ _name73003_ _tgroup73004_)
        (letrec ((_thread-main73006_
                  (lambda (_thunk73020_)
                    (lambda ()
                      (let ((__tmp73047
                             (lambda (_exn73023_)
                               (let ((__tmp73048
                                      (lambda (_cont73025_)
                                        (if __unhandled-actor-exception-hook
                                            (let ((__tmp73049
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _cont73025_
                                                      _exn73023_))))
                                              (declare (not safe))
                                              (with-catch void __tmp73049))
                                            '#!void)
                                        (let ((__tmp73050
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _cont73025_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp73050
                                           ##primordial-exception-handler
                                           _exn73023_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp73048)))))
                        (declare (not safe))
                        (with-exception-handler __tmp73047 _thunk73020_))))))
          (let* ((_thunk73009_
                  (if (let () (declare (not safe)) (null? _args73002_))
                      _f73001_
                      (lambda () (apply _f73001_ _args73002_))))
                 (_thunk73012_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk73009_))))
                 (_tgroup73017_
                  (let ((_$e73014_ _tgroup73004_))
                    (if _$e73014_
                        _$e73014_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main73006_ _thunk73012_))
              _name73003_
              _tgroup73017_))))))
    (define spawn-thread__%
      (lambda (_thunk72979_ _name72980_ _tgroup72981_)
        (thread-start! (make-thread _thunk72979_ _name72980_ _tgroup72981_))))
    (define spawn-thread__0
      (lambda (_thunk72986_)
        (let* ((_name72988_ absent-obj) (_tgroup72990_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk72986_ _name72988_ _tgroup72990_))))
    (define spawn-thread__1
      (lambda (_thunk72992_ _name72993_)
        (let ((_tgroup72995_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk72992_ _name72993_ _tgroup72995_))))
    (define spawn-thread
      (lambda _g73052_
        (let ((_g73051_ (let () (declare (not safe)) (##length _g73052_))))
          (cond ((let () (declare (not safe)) (##fx= _g73051_ 1))
                 (apply (lambda (_thunk72986_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk72986_)))
                        _g73052_))
                ((let () (declare (not safe)) (##fx= _g73051_ 2))
                 (apply (lambda (_thunk72992_ _name72993_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk72992_ _name72993_)))
                        _g73052_))
                ((let () (declare (not safe)) (##fx= _g73051_ 3))
                 (apply (lambda (_thunk72997_ _name72998_ _tgroup72999_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk72997_
                             _name72998_
                             _tgroup72999_)))
                        _g73052_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g73052_))))))
    (define thread-local-ref__%
      (lambda (_key72963_ _default72964_)
        (let ((_tab72966_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab72966_ _key72963_ _default72964_))))
    (define thread-local-ref__0
      (lambda (_key72971_)
        (let ((_default72973_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key72971_ _default72973_))))
    (define thread-local-ref
      (lambda _g73054_
        (let ((_g73053_ (let () (declare (not safe)) (##length _g73054_))))
          (cond ((let () (declare (not safe)) (##fx= _g73053_ 1))
                 (apply (lambda (_key72971_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key72971_)))
                        _g73054_))
                ((let () (declare (not safe)) (##fx= _g73053_ 2))
                 (apply (lambda (_key72975_ _default72976_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key72975_ _default72976_)))
                        _g73054_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g73054_))))))
    (define thread-local-get
      (lambda (_key72960_)
        (let () (declare (not safe)) (thread-local-ref__% _key72960_ '#f))))
    (define thread-local-set!
      (lambda (_key72955_ _value72956_)
        (let ((_tab72958_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab72958_ _key72955_ _value72956_))))
    (define thread-local-delete!
      (lambda (_key72951_)
        (let ((_tab72953_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab72953_ _key72951_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr72937_ (current-thread)))
          (if (actor-thread? _thr72937_)
              (let ((_$e72939_ (actor-thread-locals _thr72937_)))
                (if _$e72939_
                    (values _$e72939_)
                    (let ((_tab72942_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr72937_ _tab72942_)
                      _tab72942_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr72937_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e72944_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr72937_))))
                      (if _$e72944_
                          ((lambda (_tab72947_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab72947_)
                           _$e72944_)
                          (let ((_tab72949_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr72937_
                               _tab72949_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab72949_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc72934_)
        (if (let () (declare (not safe)) (procedure? _proc72934_))
            '#!void
            (let ((__tmp73055
                   (let ((__obj73043
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj73043
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc72934_ '())))
                     __obj73043)))
              (declare (not safe))
              (raise __tmp73055)))
        (set! __unhandled-actor-exception-hook _proc72934_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx72922_ _proc72923_)
        (let ((_handler72925_ (current-exception-handler)))
          (let ((__tmp73057
                 (lambda (_e72927_)
                   (let ((__tmp73058
                          (lambda ()
                            (mutex-unlock! _mx72922_)
                            (_handler72925_ _e72927_))))
                     (declare (not safe))
                     (with-catch void __tmp73058))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _e72927_))))
                (__tmp73056
                 (lambda ()
                   (mutex-lock! _mx72922_)
                   (let ((_result72931_ (_proc72923_)))
                     (mutex-unlock! _mx72922_)
                     _result72931_))))
            (declare (not safe))
            (with-exception-handler __tmp73057 __tmp73056)))))
    (define with-dynamic-lock
      (lambda (_mx72917_ _proc72918_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx72917_))
         _proc72918_
         (lambda () (mutex-unlock! _mx72917_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk72898_ _error-port72899_)
        (let ((__tmp73059
               (let ((_E72901_ (current-exception-handler)))
                 (lambda (_exn72903_)
                   (continuation-capture
                    (lambda (_cont72905_)
                      (if (dump-stack-trace?)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont72905_
                             _exn72903_
                             _error-port72899_))
                          '#!void)
                      (_E72901_ _exn72903_)))))))
          (declare (not safe))
          (with-exception-handler __tmp73059 _thunk72898_))))
    (define with-exception-stack-trace__0
      (lambda (_thunk72910_)
        (let ((_error-port72912_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk72910_ _error-port72912_))))
    (define with-exception-stack-trace
      (lambda _g73061_
        (let ((_g73060_ (let () (declare (not safe)) (##length _g73061_))))
          (cond ((let () (declare (not safe)) (##fx= _g73060_ 1))
                 (apply (lambda (_thunk72910_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk72910_)))
                        _g73061_))
                ((let () (declare (not safe)) (##fx= _g73060_ 2))
                 (apply (lambda (_thunk72914_ _error-port72915_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk72914_
                             _error-port72915_)))
                        _g73061_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g73061_))))))
    (define dump-stack-trace!__%
      (lambda (_cont72879_ _exn72880_ _error-port72881_)
        (let ((_out72883_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out72883_))
          (display '"*** Unhandled exception in " _out72883_)
          (display (current-thread) _out72883_)
          (newline _out72883_)
          (let ()
            (declare (not safe))
            (display-exception _exn72880_ _out72883_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn72880_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out72883_)
                (newline _out72883_)
                (display-continuation-backtrace _cont72879_ _out72883_)))
          (let ((__tmp73062 (get-output-string _out72883_)))
            (declare (not safe))
            (##write-string __tmp73062 _error-port72881_)))))
    (define dump-stack-trace!__0
      (lambda (_cont72888_ _exn72889_)
        (let ((_error-port72891_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont72888_ _exn72889_ _error-port72891_))))
    (define dump-stack-trace!
      (lambda _g73064_
        (let ((_g73063_ (let () (declare (not safe)) (##length _g73064_))))
          (cond ((let () (declare (not safe)) (##fx= _g73063_ 2))
                 (apply (lambda (_cont72888_ _exn72889_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont72888_ _exn72889_)))
                        _g73064_))
                ((let () (declare (not safe)) (##fx= _g73063_ 3))
                 (apply (lambda (_cont72893_ _exn72894_ _error-port72895_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont72893_
                             _exn72894_
                             _error-port72895_)))
                        _g73064_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g73064_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
