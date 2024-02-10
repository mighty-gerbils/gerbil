(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1707554636)
  (begin
    (define spawn
      (lambda (_f93368_ . _args93369_)
        (if (let () (declare (not safe)) (procedure? _f93368_))
            '#!void
            (raise (let ((__obj97564 (make-object Error::t '5)))
                     (Error:::init!
                      __obj97564
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f93368_ '())))
                     __obj97564)))
        (let ()
          (declare (not safe))
          (spawn-actor _f93368_ _args93369_ '#!void '#f))))
    (define spawn/name
      (lambda (_name93364_ _f93365_ . _args93366_)
        (if (let () (declare (not safe)) (procedure? _f93365_))
            '#!void
            (raise (let ((__obj97565 (make-object Error::t '5)))
                     (Error:::init!
                      __obj97565
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f93365_ '())))
                     __obj97565)))
        (let ()
          (declare (not safe))
          (spawn-actor _f93365_ _args93366_ _name93364_ '#f))))
    (define spawn/group
      (lambda (_name93358_ _f93359_ . _args93360_)
        (if (let () (declare (not safe)) (procedure? _f93359_))
            '#!void
            (raise (let ((__obj97566 (make-object Error::t '5)))
                     (Error:::init!
                      __obj97566
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f93359_ '())))
                     __obj97566)))
        (let ((_tgroup93362_ (make-thread-group _name93358_)))
          (declare (not safe))
          (spawn-actor _f93359_ _args93360_ _name93358_ _tgroup93362_))))
    (define spawn-actor
      (lambda (_f93331_ _args93332_ _name93333_ _tgroup93334_)
        (letrec ((_thread-main93336_
                  (lambda (_thunk93350_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn93353_)
                         (let ((__tmp97568
                                (lambda (_cont93355_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp97569
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont93355_
                                                _exn93353_))))
                                        (declare (not safe))
                                        (with-catch void __tmp97569))
                                      '#!void)
                                  (let ((__tmp97570
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont93355_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp97570
                                     ##primordial-exception-handler
                                     _exn93353_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp97568)))
                       _thunk93350_)))))
          (let* ((_thunk93339_
                  (if (let () (declare (not safe)) (null? _args93332_))
                      _f93331_
                      (lambda () (apply _f93331_ _args93332_))))
                 (_thunk93342_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk93339_))))
                 (_tgroup93347_
                  (let ((_$e93344_ _tgroup93334_))
                    (if _$e93344_
                        _$e93344_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main93336_ _thunk93342_))
              _name93333_
              _tgroup93347_))))))
    (define spawn-thread__%
      (lambda (_thunk93309_ _name93310_ _tgroup93311_)
        (thread-start! (make-thread _thunk93309_ _name93310_ _tgroup93311_))))
    (define spawn-thread__0
      (lambda (_thunk93316_)
        (let* ((_name93318_ absent-obj) (_tgroup93320_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk93316_ _name93318_ _tgroup93320_))))
    (define spawn-thread__1
      (lambda (_thunk93322_ _name93323_)
        (let ((_tgroup93325_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk93322_ _name93323_ _tgroup93325_))))
    (define spawn-thread
      (lambda _g97572_
        (let ((_g97571_ (let () (declare (not safe)) (##length _g97572_))))
          (cond ((let () (declare (not safe)) (##fx= _g97571_ 1))
                 (apply (lambda (_thunk93316_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk93316_)))
                        _g97572_))
                ((let () (declare (not safe)) (##fx= _g97571_ 2))
                 (apply (lambda (_thunk93322_ _name93323_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk93322_ _name93323_)))
                        _g97572_))
                ((let () (declare (not safe)) (##fx= _g97571_ 3))
                 (apply (lambda (_thunk93327_ _name93328_ _tgroup93329_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk93327_
                             _name93328_
                             _tgroup93329_)))
                        _g97572_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g97572_))))))
    (define thread-local-ref__%
      (lambda (_key93293_ _default93294_)
        (let ((_tab93296_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab93296_ _key93293_ _default93294_))))
    (define thread-local-ref__0
      (lambda (_key93301_)
        (let ((_default93303_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key93301_ _default93303_))))
    (define thread-local-ref
      (lambda _g97574_
        (let ((_g97573_ (let () (declare (not safe)) (##length _g97574_))))
          (cond ((let () (declare (not safe)) (##fx= _g97573_ 1))
                 (apply (lambda (_key93301_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key93301_)))
                        _g97574_))
                ((let () (declare (not safe)) (##fx= _g97573_ 2))
                 (apply (lambda (_key93305_ _default93306_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key93305_ _default93306_)))
                        _g97574_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g97574_))))))
    (define thread-local-get
      (lambda (_key93290_)
        (let () (declare (not safe)) (thread-local-ref _key93290_ '#f))))
    (define thread-local-set!
      (lambda (_key93285_ _value93286_)
        (let ((_tab93288_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab93288_ _key93285_ _value93286_))))
    (define thread-local-clear!
      (lambda (_key93281_)
        (let ((_tab93283_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab93283_ _key93281_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr93267_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr93267_))
              (let ((_$e93269_ (actor-thread-locals _thr93267_)))
                (if _$e93269_
                    (values _$e93269_)
                    (let ((_tab93272_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr93267_ _tab93272_)
                      _tab93272_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr93267_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e93274_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr93267_ '#f))))
                      (if _$e93274_
                          ((lambda (_tab93277_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab93277_)
                           _$e93274_)
                          (let ((_tab93279_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr93267_
                               _tab93279_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab93279_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc93264_)
        (if (let () (declare (not safe)) (procedure? _proc93264_))
            '#!void
            (raise (let ((__obj97567 (make-object Error::t '5)))
                     (Error:::init!
                      __obj97567
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc93264_ '())))
                     __obj97567)))
        (set! __unhandled-actor-exception-hook _proc93264_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx93252_ _proc93253_)
        (let ((_handler93255_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e93257_)
             (let ((__tmp97575
                    (lambda ()
                      (mutex-unlock! _mx93252_)
                      (_handler93255_ _e93257_))))
               (declare (not safe))
               (with-catch void __tmp97575))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e93257_)))
           (lambda ()
             (mutex-lock! _mx93252_)
             (let ((_result93261_ (_proc93253_)))
               (mutex-unlock! _mx93252_)
               _result93261_))))))
    (define with-dynamic-lock
      (lambda (_mx93247_ _proc93248_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx93247_))
         _proc93248_
         (lambda () (mutex-unlock! _mx93247_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk93228_ _error-port93229_)
        (with-exception-handler
         (let ((_E93231_ (current-exception-handler)))
           (lambda (_exn93233_)
             (continuation-capture
              (lambda (_cont93235_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont93235_
                       _exn93233_
                       _error-port93229_))
                    '#!void)
                (_E93231_ _exn93233_)))))
         _thunk93228_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk93240_)
        (let ((_error-port93242_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk93240_ _error-port93242_))))
    (define with-exception-stack-trace
      (lambda _g97577_
        (let ((_g97576_ (let () (declare (not safe)) (##length _g97577_))))
          (cond ((let () (declare (not safe)) (##fx= _g97576_ 1))
                 (apply (lambda (_thunk93240_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk93240_)))
                        _g97577_))
                ((let () (declare (not safe)) (##fx= _g97576_ 2))
                 (apply (lambda (_thunk93244_ _error-port93245_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk93244_
                             _error-port93245_)))
                        _g97577_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g97577_))))))
    (define dump-stack-trace!__%
      (lambda (_cont93209_ _exn93210_ _error-port93211_)
        (let ((_out93213_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out93213_))
          (display '"*** Unhandled exception in " _out93213_)
          (display (current-thread) _out93213_)
          (newline _out93213_)
          (display-exception _exn93210_ _out93213_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn93210_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out93213_)
                (newline _out93213_)
                (display-continuation-backtrace _cont93209_ _out93213_)))
          (let ((__tmp97578 (get-output-string _out93213_)))
            (declare (not safe))
            (##write-string __tmp97578 _error-port93211_)))))
    (define dump-stack-trace!__0
      (lambda (_cont93218_ _exn93219_)
        (let ((_error-port93221_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont93218_ _exn93219_ _error-port93221_))))
    (define dump-stack-trace!
      (lambda _g97580_
        (let ((_g97579_ (let () (declare (not safe)) (##length _g97580_))))
          (cond ((let () (declare (not safe)) (##fx= _g97579_ 2))
                 (apply (lambda (_cont93218_ _exn93219_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont93218_ _exn93219_)))
                        _g97580_))
                ((let () (declare (not safe)) (##fx= _g97579_ 3))
                 (apply (lambda (_cont93223_ _exn93224_ _error-port93225_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont93223_
                             _exn93224_
                             _error-port93225_)))
                        _g97580_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g97580_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
