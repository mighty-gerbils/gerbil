(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1707556025)
  (begin
    (define spawn
      (lambda (_f93362_ . _args93363_)
        (if (let () (declare (not safe)) (procedure? _f93362_))
            '#!void
            (raise (let ((__obj97558 (make-object Error::t '5)))
                     (Error:::init!
                      __obj97558
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f93362_ '())))
                     __obj97558)))
        (let ()
          (declare (not safe))
          (spawn-actor _f93362_ _args93363_ '#!void '#f))))
    (define spawn/name
      (lambda (_name93358_ _f93359_ . _args93360_)
        (if (let () (declare (not safe)) (procedure? _f93359_))
            '#!void
            (raise (let ((__obj97559 (make-object Error::t '5)))
                     (Error:::init!
                      __obj97559
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f93359_ '())))
                     __obj97559)))
        (let ()
          (declare (not safe))
          (spawn-actor _f93359_ _args93360_ _name93358_ '#f))))
    (define spawn/group
      (lambda (_name93352_ _f93353_ . _args93354_)
        (if (let () (declare (not safe)) (procedure? _f93353_))
            '#!void
            (raise (let ((__obj97560 (make-object Error::t '5)))
                     (Error:::init!
                      __obj97560
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f93353_ '())))
                     __obj97560)))
        (let ((_tgroup93356_ (make-thread-group _name93352_)))
          (declare (not safe))
          (spawn-actor _f93353_ _args93354_ _name93352_ _tgroup93356_))))
    (define spawn-actor
      (lambda (_f93325_ _args93326_ _name93327_ _tgroup93328_)
        (letrec ((_thread-main93330_
                  (lambda (_thunk93344_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn93347_)
                         (let ((__tmp97562
                                (lambda (_cont93349_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp97563
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont93349_
                                                _exn93347_))))
                                        (declare (not safe))
                                        (with-catch void __tmp97563))
                                      '#!void)
                                  (let ((__tmp97564
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont93349_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp97564
                                     ##primordial-exception-handler
                                     _exn93347_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp97562)))
                       _thunk93344_)))))
          (let* ((_thunk93333_
                  (if (let () (declare (not safe)) (null? _args93326_))
                      _f93325_
                      (lambda () (apply _f93325_ _args93326_))))
                 (_thunk93336_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk93333_))))
                 (_tgroup93341_
                  (let ((_$e93338_ _tgroup93328_))
                    (if _$e93338_
                        _$e93338_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main93330_ _thunk93336_))
              _name93327_
              _tgroup93341_))))))
    (define spawn-thread__%
      (lambda (_thunk93303_ _name93304_ _tgroup93305_)
        (thread-start! (make-thread _thunk93303_ _name93304_ _tgroup93305_))))
    (define spawn-thread__0
      (lambda (_thunk93310_)
        (let* ((_name93312_ absent-obj) (_tgroup93314_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk93310_ _name93312_ _tgroup93314_))))
    (define spawn-thread__1
      (lambda (_thunk93316_ _name93317_)
        (let ((_tgroup93319_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk93316_ _name93317_ _tgroup93319_))))
    (define spawn-thread
      (lambda _g97566_
        (let ((_g97565_ (let () (declare (not safe)) (##length _g97566_))))
          (cond ((let () (declare (not safe)) (##fx= _g97565_ 1))
                 (apply (lambda (_thunk93310_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk93310_)))
                        _g97566_))
                ((let () (declare (not safe)) (##fx= _g97565_ 2))
                 (apply (lambda (_thunk93316_ _name93317_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk93316_ _name93317_)))
                        _g97566_))
                ((let () (declare (not safe)) (##fx= _g97565_ 3))
                 (apply (lambda (_thunk93321_ _name93322_ _tgroup93323_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk93321_
                             _name93322_
                             _tgroup93323_)))
                        _g97566_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g97566_))))))
    (define thread-local-ref__%
      (lambda (_key93287_ _default93288_)
        (let ((_tab93290_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab93290_ _key93287_ _default93288_))))
    (define thread-local-ref__0
      (lambda (_key93295_)
        (let ((_default93297_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key93295_ _default93297_))))
    (define thread-local-ref
      (lambda _g97568_
        (let ((_g97567_ (let () (declare (not safe)) (##length _g97568_))))
          (cond ((let () (declare (not safe)) (##fx= _g97567_ 1))
                 (apply (lambda (_key93295_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key93295_)))
                        _g97568_))
                ((let () (declare (not safe)) (##fx= _g97567_ 2))
                 (apply (lambda (_key93299_ _default93300_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key93299_ _default93300_)))
                        _g97568_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g97568_))))))
    (define thread-local-get
      (lambda (_key93284_)
        (let () (declare (not safe)) (thread-local-ref _key93284_ '#f))))
    (define thread-local-set!
      (lambda (_key93279_ _value93280_)
        (let ((_tab93282_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab93282_ _key93279_ _value93280_))))
    (define thread-local-clear!
      (lambda (_key93275_)
        (let ((_tab93277_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab93277_ _key93275_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr93261_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr93261_))
              (let ((_$e93263_ (actor-thread-locals _thr93261_)))
                (if _$e93263_
                    (values _$e93263_)
                    (let ((_tab93266_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr93261_ _tab93266_)
                      _tab93266_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr93261_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e93268_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr93261_ '#f))))
                      (if _$e93268_
                          ((lambda (_tab93271_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab93271_)
                           _$e93268_)
                          (let ((_tab93273_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr93261_
                               _tab93273_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab93273_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc93258_)
        (if (let () (declare (not safe)) (procedure? _proc93258_))
            '#!void
            (raise (let ((__obj97561 (make-object Error::t '5)))
                     (Error:::init!
                      __obj97561
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc93258_ '())))
                     __obj97561)))
        (set! __unhandled-actor-exception-hook _proc93258_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx93246_ _proc93247_)
        (let ((_handler93249_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e93251_)
             (let ((__tmp97569
                    (lambda ()
                      (mutex-unlock! _mx93246_)
                      (_handler93249_ _e93251_))))
               (declare (not safe))
               (with-catch void __tmp97569))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e93251_)))
           (lambda ()
             (mutex-lock! _mx93246_)
             (let ((_result93255_ (_proc93247_)))
               (mutex-unlock! _mx93246_)
               _result93255_))))))
    (define with-dynamic-lock
      (lambda (_mx93241_ _proc93242_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx93241_))
         _proc93242_
         (lambda () (mutex-unlock! _mx93241_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk93222_ _error-port93223_)
        (with-exception-handler
         (let ((_E93225_ (current-exception-handler)))
           (lambda (_exn93227_)
             (continuation-capture
              (lambda (_cont93229_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont93229_
                       _exn93227_
                       _error-port93223_))
                    '#!void)
                (_E93225_ _exn93227_)))))
         _thunk93222_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk93234_)
        (let ((_error-port93236_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk93234_ _error-port93236_))))
    (define with-exception-stack-trace
      (lambda _g97571_
        (let ((_g97570_ (let () (declare (not safe)) (##length _g97571_))))
          (cond ((let () (declare (not safe)) (##fx= _g97570_ 1))
                 (apply (lambda (_thunk93234_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk93234_)))
                        _g97571_))
                ((let () (declare (not safe)) (##fx= _g97570_ 2))
                 (apply (lambda (_thunk93238_ _error-port93239_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk93238_
                             _error-port93239_)))
                        _g97571_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g97571_))))))
    (define dump-stack-trace!__%
      (lambda (_cont93203_ _exn93204_ _error-port93205_)
        (let ((_out93207_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out93207_))
          (display '"*** Unhandled exception in " _out93207_)
          (display (current-thread) _out93207_)
          (newline _out93207_)
          (display-exception _exn93204_ _out93207_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn93204_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out93207_)
                (newline _out93207_)
                (display-continuation-backtrace _cont93203_ _out93207_)))
          (let ((__tmp97572 (get-output-string _out93207_)))
            (declare (not safe))
            (##write-string __tmp97572 _error-port93205_)))))
    (define dump-stack-trace!__0
      (lambda (_cont93212_ _exn93213_)
        (let ((_error-port93215_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont93212_ _exn93213_ _error-port93215_))))
    (define dump-stack-trace!
      (lambda _g97574_
        (let ((_g97573_ (let () (declare (not safe)) (##length _g97574_))))
          (cond ((let () (declare (not safe)) (##fx= _g97573_ 2))
                 (apply (lambda (_cont93212_ _exn93213_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont93212_ _exn93213_)))
                        _g97574_))
                ((let () (declare (not safe)) (##fx= _g97573_ 3))
                 (apply (lambda (_cont93217_ _exn93218_ _error-port93219_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont93217_
                             _exn93218_
                             _error-port93219_)))
                        _g97574_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g97574_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
