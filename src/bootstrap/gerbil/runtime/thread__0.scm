(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1707552286)
  (begin
    (define spawn
      (lambda (_f93363_ . _args93364_)
        (if (let () (declare (not safe)) (procedure? _f93363_))
            '#!void
            (raise (let ((__obj97559 (make-object Error::t '5)))
                     (Error:::init!
                      __obj97559
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f93363_ '())))
                     __obj97559)))
        (let ()
          (declare (not safe))
          (spawn-actor _f93363_ _args93364_ '#!void '#f))))
    (define spawn/name
      (lambda (_name93359_ _f93360_ . _args93361_)
        (if (let () (declare (not safe)) (procedure? _f93360_))
            '#!void
            (raise (let ((__obj97560 (make-object Error::t '5)))
                     (Error:::init!
                      __obj97560
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f93360_ '())))
                     __obj97560)))
        (let ()
          (declare (not safe))
          (spawn-actor _f93360_ _args93361_ _name93359_ '#f))))
    (define spawn/group
      (lambda (_name93353_ _f93354_ . _args93355_)
        (if (let () (declare (not safe)) (procedure? _f93354_))
            '#!void
            (raise (let ((__obj97561 (make-object Error::t '5)))
                     (Error:::init!
                      __obj97561
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f93354_ '())))
                     __obj97561)))
        (let ((_tgroup93357_ (make-thread-group _name93353_)))
          (declare (not safe))
          (spawn-actor _f93354_ _args93355_ _name93353_ _tgroup93357_))))
    (define spawn-actor
      (lambda (_f93326_ _args93327_ _name93328_ _tgroup93329_)
        (letrec ((_thread-main93331_
                  (lambda (_thunk93345_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn93348_)
                         (let ((__tmp97563
                                (lambda (_cont93350_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp97564
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont93350_
                                                _exn93348_))))
                                        (declare (not safe))
                                        (with-catch void __tmp97564))
                                      '#!void)
                                  (let ((__tmp97565
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont93350_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp97565
                                     ##primordial-exception-handler
                                     _exn93348_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp97563)))
                       _thunk93345_)))))
          (let* ((_thunk93334_
                  (if (let () (declare (not safe)) (null? _args93327_))
                      _f93326_
                      (lambda () (apply _f93326_ _args93327_))))
                 (_thunk93337_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk93334_))))
                 (_tgroup93342_
                  (let ((_$e93339_ _tgroup93329_))
                    (if _$e93339_
                        _$e93339_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main93331_ _thunk93337_))
              _name93328_
              _tgroup93342_))))))
    (define spawn-thread__%
      (lambda (_thunk93304_ _name93305_ _tgroup93306_)
        (thread-start! (make-thread _thunk93304_ _name93305_ _tgroup93306_))))
    (define spawn-thread__0
      (lambda (_thunk93311_)
        (let* ((_name93313_ absent-obj) (_tgroup93315_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk93311_ _name93313_ _tgroup93315_))))
    (define spawn-thread__1
      (lambda (_thunk93317_ _name93318_)
        (let ((_tgroup93320_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk93317_ _name93318_ _tgroup93320_))))
    (define spawn-thread
      (lambda _g97567_
        (let ((_g97566_ (let () (declare (not safe)) (##length _g97567_))))
          (cond ((let () (declare (not safe)) (##fx= _g97566_ 1))
                 (apply (lambda (_thunk93311_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk93311_)))
                        _g97567_))
                ((let () (declare (not safe)) (##fx= _g97566_ 2))
                 (apply (lambda (_thunk93317_ _name93318_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk93317_ _name93318_)))
                        _g97567_))
                ((let () (declare (not safe)) (##fx= _g97566_ 3))
                 (apply (lambda (_thunk93322_ _name93323_ _tgroup93324_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk93322_
                             _name93323_
                             _tgroup93324_)))
                        _g97567_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g97567_))))))
    (define thread-local-ref__%
      (lambda (_key93288_ _default93289_)
        (let ((_tab93291_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab93291_ _key93288_ _default93289_))))
    (define thread-local-ref__0
      (lambda (_key93296_)
        (let ((_default93298_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key93296_ _default93298_))))
    (define thread-local-ref
      (lambda _g97569_
        (let ((_g97568_ (let () (declare (not safe)) (##length _g97569_))))
          (cond ((let () (declare (not safe)) (##fx= _g97568_ 1))
                 (apply (lambda (_key93296_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key93296_)))
                        _g97569_))
                ((let () (declare (not safe)) (##fx= _g97568_ 2))
                 (apply (lambda (_key93300_ _default93301_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key93300_ _default93301_)))
                        _g97569_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g97569_))))))
    (define thread-local-get
      (lambda (_key93285_)
        (let () (declare (not safe)) (thread-local-ref _key93285_ '#f))))
    (define thread-local-set!
      (lambda (_key93280_ _value93281_)
        (let ((_tab93283_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab93283_ _key93280_ _value93281_))))
    (define thread-local-clear!
      (lambda (_key93276_)
        (let ((_tab93278_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab93278_ _key93276_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr93262_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr93262_))
              (let ((_$e93264_ (actor-thread-locals _thr93262_)))
                (if _$e93264_
                    (values _$e93264_)
                    (let ((_tab93267_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr93262_ _tab93267_)
                      _tab93267_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr93262_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e93269_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr93262_ '#f))))
                      (if _$e93269_
                          ((lambda (_tab93272_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab93272_)
                           _$e93269_)
                          (let ((_tab93274_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr93262_
                               _tab93274_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab93274_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc93259_)
        (if (let () (declare (not safe)) (procedure? _proc93259_))
            '#!void
            (raise (let ((__obj97562 (make-object Error::t '5)))
                     (Error:::init!
                      __obj97562
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc93259_ '())))
                     __obj97562)))
        (set! __unhandled-actor-exception-hook _proc93259_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx93247_ _proc93248_)
        (let ((_handler93250_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e93252_)
             (let ((__tmp97570
                    (lambda ()
                      (mutex-unlock! _mx93247_)
                      (_handler93250_ _e93252_))))
               (declare (not safe))
               (with-catch void __tmp97570))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e93252_)))
           (lambda ()
             (mutex-lock! _mx93247_)
             (let ((_result93256_ (_proc93248_)))
               (mutex-unlock! _mx93247_)
               _result93256_))))))
    (define with-dynamic-lock
      (lambda (_mx93242_ _proc93243_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx93242_))
         _proc93243_
         (lambda () (mutex-unlock! _mx93242_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk93223_ _error-port93224_)
        (with-exception-handler
         (let ((_E93226_ (current-exception-handler)))
           (lambda (_exn93228_)
             (continuation-capture
              (lambda (_cont93230_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont93230_
                       _exn93228_
                       _error-port93224_))
                    '#!void)
                (_E93226_ _exn93228_)))))
         _thunk93223_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk93235_)
        (let ((_error-port93237_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk93235_ _error-port93237_))))
    (define with-exception-stack-trace
      (lambda _g97572_
        (let ((_g97571_ (let () (declare (not safe)) (##length _g97572_))))
          (cond ((let () (declare (not safe)) (##fx= _g97571_ 1))
                 (apply (lambda (_thunk93235_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk93235_)))
                        _g97572_))
                ((let () (declare (not safe)) (##fx= _g97571_ 2))
                 (apply (lambda (_thunk93239_ _error-port93240_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk93239_
                             _error-port93240_)))
                        _g97572_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g97572_))))))
    (define dump-stack-trace!__%
      (lambda (_cont93204_ _exn93205_ _error-port93206_)
        (let ((_out93208_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out93208_))
          (display '"*** Unhandled exception in " _out93208_)
          (display (current-thread) _out93208_)
          (newline _out93208_)
          (display-exception _exn93205_ _out93208_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn93205_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out93208_)
                (newline _out93208_)
                (display-continuation-backtrace _cont93204_ _out93208_)))
          (let ((__tmp97573 (get-output-string _out93208_)))
            (declare (not safe))
            (##write-string __tmp97573 _error-port93206_)))))
    (define dump-stack-trace!__0
      (lambda (_cont93213_ _exn93214_)
        (let ((_error-port93216_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont93213_ _exn93214_ _error-port93216_))))
    (define dump-stack-trace!
      (lambda _g97575_
        (let ((_g97574_ (let () (declare (not safe)) (##length _g97575_))))
          (cond ((let () (declare (not safe)) (##fx= _g97574_ 2))
                 (apply (lambda (_cont93213_ _exn93214_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont93213_ _exn93214_)))
                        _g97575_))
                ((let () (declare (not safe)) (##fx= _g97574_ 3))
                 (apply (lambda (_cont93218_ _exn93219_ _error-port93220_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont93218_
                             _exn93219_
                             _error-port93220_)))
                        _g97575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g97575_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
