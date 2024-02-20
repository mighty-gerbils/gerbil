(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1708451992)
  (begin
    (define spawn
      (lambda (_f70026_ . _args70027_)
        (if (let () (declare (not safe)) (procedure? _f70026_))
            '#!void
            (raise (let ((__obj70028
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj70028
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f70026_ '())))
                     __obj70028)))
        (let ()
          (declare (not safe))
          (spawn-actor _f70026_ _args70027_ '#!void '#f))))
    (define spawn/name
      (lambda (_name70022_ _f70023_ . _args70024_)
        (if (let () (declare (not safe)) (procedure? _f70023_))
            '#!void
            (raise (let ((__obj70029
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj70029
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f70023_ '())))
                     __obj70029)))
        (let ()
          (declare (not safe))
          (spawn-actor _f70023_ _args70024_ _name70022_ '#f))))
    (define spawn/group
      (lambda (_name70016_ _f70017_ . _args70018_)
        (if (let () (declare (not safe)) (procedure? _f70017_))
            '#!void
            (raise (let ((__obj70030
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj70030
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f70017_ '())))
                     __obj70030)))
        (let ((_tgroup70020_ (make-thread-group _name70016_)))
          (declare (not safe))
          (spawn-actor _f70017_ _args70018_ _name70016_ _tgroup70020_))))
    (define spawn-actor
      (lambda (_f69989_ _args69990_ _name69991_ _tgroup69992_)
        (letrec ((_thread-main69994_
                  (lambda (_thunk70008_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn70011_)
                         (let ((__tmp70032
                                (lambda (_cont70013_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp70033
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont70013_
                                                _exn70011_))))
                                        (declare (not safe))
                                        (with-catch void __tmp70033))
                                      '#!void)
                                  (let ((__tmp70034
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont70013_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp70034
                                     ##primordial-exception-handler
                                     _exn70011_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp70032)))
                       _thunk70008_)))))
          (let* ((_thunk69997_
                  (if (let () (declare (not safe)) (null? _args69990_))
                      _f69989_
                      (lambda () (apply _f69989_ _args69990_))))
                 (_thunk70000_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk69997_))))
                 (_tgroup70005_
                  (let ((_$e70002_ _tgroup69992_))
                    (if _$e70002_
                        _$e70002_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main69994_ _thunk70000_))
              _name69991_
              _tgroup70005_))))))
    (define spawn-thread__%
      (lambda (_thunk69967_ _name69968_ _tgroup69969_)
        (thread-start! (make-thread _thunk69967_ _name69968_ _tgroup69969_))))
    (define spawn-thread__0
      (lambda (_thunk69974_)
        (let* ((_name69976_ absent-obj) (_tgroup69978_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk69974_ _name69976_ _tgroup69978_))))
    (define spawn-thread__1
      (lambda (_thunk69980_ _name69981_)
        (let ((_tgroup69983_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk69980_ _name69981_ _tgroup69983_))))
    (define spawn-thread
      (lambda _g70036_
        (let ((_g70035_ (let () (declare (not safe)) (##length _g70036_))))
          (cond ((let () (declare (not safe)) (##fx= _g70035_ 1))
                 (apply (lambda (_thunk69974_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk69974_)))
                        _g70036_))
                ((let () (declare (not safe)) (##fx= _g70035_ 2))
                 (apply (lambda (_thunk69980_ _name69981_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk69980_ _name69981_)))
                        _g70036_))
                ((let () (declare (not safe)) (##fx= _g70035_ 3))
                 (apply (lambda (_thunk69985_ _name69986_ _tgroup69987_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk69985_
                             _name69986_
                             _tgroup69987_)))
                        _g70036_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g70036_))))))
    (define thread-local-ref__%
      (lambda (_key69951_ _default69952_)
        (let ((_tab69954_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab69954_ _key69951_ _default69952_))))
    (define thread-local-ref__0
      (lambda (_key69959_)
        (let ((_default69961_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key69959_ _default69961_))))
    (define thread-local-ref
      (lambda _g70038_
        (let ((_g70037_ (let () (declare (not safe)) (##length _g70038_))))
          (cond ((let () (declare (not safe)) (##fx= _g70037_ 1))
                 (apply (lambda (_key69959_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key69959_)))
                        _g70038_))
                ((let () (declare (not safe)) (##fx= _g70037_ 2))
                 (apply (lambda (_key69963_ _default69964_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key69963_ _default69964_)))
                        _g70038_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g70038_))))))
    (define thread-local-get
      (lambda (_key69948_)
        (let () (declare (not safe)) (thread-local-ref__% _key69948_ '#f))))
    (define thread-local-set!
      (lambda (_key69943_ _value69944_)
        (let ((_tab69946_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab69946_ _key69943_ _value69944_))))
    (define thread-local-clear!
      (lambda (_key69939_)
        (let ((_tab69941_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab69941_ _key69939_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr69925_ (current-thread)))
          (if (actor-thread? _thr69925_)
              (let ((_$e69927_ (actor-thread-locals _thr69925_)))
                (if _$e69927_
                    (values _$e69927_)
                    (let ((_tab69930_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr69925_ _tab69930_)
                      _tab69930_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr69925_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e69932_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr69925_))))
                      (if _$e69932_
                          ((lambda (_tab69935_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab69935_)
                           _$e69932_)
                          (let ((_tab69937_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr69925_
                               _tab69937_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab69937_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc69922_)
        (if (let () (declare (not safe)) (procedure? _proc69922_))
            '#!void
            (raise (let ((__obj70031
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj70031
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc69922_ '())))
                     __obj70031)))
        (set! __unhandled-actor-exception-hook _proc69922_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx69910_ _proc69911_)
        (let ((_handler69913_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e69915_)
             (let ((__tmp70039
                    (lambda ()
                      (mutex-unlock! _mx69910_)
                      (_handler69913_ _e69915_))))
               (declare (not safe))
               (with-catch void __tmp70039))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e69915_)))
           (lambda ()
             (mutex-lock! _mx69910_)
             (let ((_result69919_ (_proc69911_)))
               (mutex-unlock! _mx69910_)
               _result69919_))))))
    (define with-dynamic-lock
      (lambda (_mx69905_ _proc69906_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx69905_))
         _proc69906_
         (lambda () (mutex-unlock! _mx69905_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk69886_ _error-port69887_)
        (with-exception-handler
         (let ((_E69889_ (current-exception-handler)))
           (lambda (_exn69891_)
             (continuation-capture
              (lambda (_cont69893_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont69893_
                       _exn69891_
                       _error-port69887_))
                    '#!void)
                (_E69889_ _exn69891_)))))
         _thunk69886_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk69898_)
        (let ((_error-port69900_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk69898_ _error-port69900_))))
    (define with-exception-stack-trace
      (lambda _g70041_
        (let ((_g70040_ (let () (declare (not safe)) (##length _g70041_))))
          (cond ((let () (declare (not safe)) (##fx= _g70040_ 1))
                 (apply (lambda (_thunk69898_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk69898_)))
                        _g70041_))
                ((let () (declare (not safe)) (##fx= _g70040_ 2))
                 (apply (lambda (_thunk69902_ _error-port69903_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk69902_
                             _error-port69903_)))
                        _g70041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g70041_))))))
    (define dump-stack-trace!__%
      (lambda (_cont69867_ _exn69868_ _error-port69869_)
        (let ((_out69871_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out69871_))
          (display '"*** Unhandled exception in " _out69871_)
          (display (current-thread) _out69871_)
          (newline _out69871_)
          (display-exception _exn69868_ _out69871_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn69868_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out69871_)
                (newline _out69871_)
                (display-continuation-backtrace _cont69867_ _out69871_)))
          (let ((__tmp70042 (get-output-string _out69871_)))
            (declare (not safe))
            (##write-string __tmp70042 _error-port69869_)))))
    (define dump-stack-trace!__0
      (lambda (_cont69876_ _exn69877_)
        (let ((_error-port69879_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont69876_ _exn69877_ _error-port69879_))))
    (define dump-stack-trace!
      (lambda _g70044_
        (let ((_g70043_ (let () (declare (not safe)) (##length _g70044_))))
          (cond ((let () (declare (not safe)) (##fx= _g70043_ 2))
                 (apply (lambda (_cont69876_ _exn69877_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont69876_ _exn69877_)))
                        _g70044_))
                ((let () (declare (not safe)) (##fx= _g70043_ 3))
                 (apply (lambda (_cont69881_ _exn69882_ _error-port69883_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont69881_
                             _exn69882_
                             _error-port69883_)))
                        _g70044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g70044_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
