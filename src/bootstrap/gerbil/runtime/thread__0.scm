(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1707415535)
  (begin
    (define spawn
      (lambda (_f93432_ . _args93433_)
        (if (let () (declare (not safe)) (procedure? _f93432_))
            '#!void
            (raise (let ((__obj97628 (make-object* Error::t '5)))
                     (Error:::init!
                      __obj97628
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f93432_ '())))
                     __obj97628)))
        (let ()
          (declare (not safe))
          (spawn-actor _f93432_ _args93433_ '#!void '#f))))
    (define spawn/name
      (lambda (_name93428_ _f93429_ . _args93430_)
        (if (let () (declare (not safe)) (procedure? _f93429_))
            '#!void
            (raise (let ((__obj97629 (make-object* Error::t '5)))
                     (Error:::init!
                      __obj97629
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f93429_ '())))
                     __obj97629)))
        (let ()
          (declare (not safe))
          (spawn-actor _f93429_ _args93430_ _name93428_ '#f))))
    (define spawn/group
      (lambda (_name93422_ _f93423_ . _args93424_)
        (if (let () (declare (not safe)) (procedure? _f93423_))
            '#!void
            (raise (let ((__obj97630 (make-object* Error::t '5)))
                     (Error:::init!
                      __obj97630
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f93423_ '())))
                     __obj97630)))
        (let ((_tgroup93426_ (make-thread-group _name93422_)))
          (declare (not safe))
          (spawn-actor _f93423_ _args93424_ _name93422_ _tgroup93426_))))
    (define spawn-actor
      (lambda (_f93395_ _args93396_ _name93397_ _tgroup93398_)
        (letrec ((_thread-main93400_
                  (lambda (_thunk93414_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn93417_)
                         (let ((__tmp97632
                                (lambda (_cont93419_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp97633
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont93419_
                                                _exn93417_))))
                                        (declare (not safe))
                                        (with-catch void __tmp97633))
                                      '#!void)
                                  (let ((__tmp97634
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont93419_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp97634
                                     ##primordial-exception-handler
                                     _exn93417_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp97632)))
                       _thunk93414_)))))
          (let* ((_thunk93403_
                  (if (let () (declare (not safe)) (null? _args93396_))
                      _f93395_
                      (lambda () (apply _f93395_ _args93396_))))
                 (_thunk93406_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk93403_))))
                 (_tgroup93411_
                  (let ((_$e93408_ _tgroup93398_))
                    (if _$e93408_
                        _$e93408_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main93400_ _thunk93406_))
              _name93397_
              _tgroup93411_))))))
    (define spawn-thread__%
      (lambda (_thunk93373_ _name93374_ _tgroup93375_)
        (thread-start! (make-thread _thunk93373_ _name93374_ _tgroup93375_))))
    (define spawn-thread__0
      (lambda (_thunk93380_)
        (let* ((_name93382_ absent-obj) (_tgroup93384_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk93380_ _name93382_ _tgroup93384_))))
    (define spawn-thread__1
      (lambda (_thunk93386_ _name93387_)
        (let ((_tgroup93389_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk93386_ _name93387_ _tgroup93389_))))
    (define spawn-thread
      (lambda _g97636_
        (let ((_g97635_ (let () (declare (not safe)) (##length _g97636_))))
          (cond ((let () (declare (not safe)) (##fx= _g97635_ 1))
                 (apply (lambda (_thunk93380_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk93380_)))
                        _g97636_))
                ((let () (declare (not safe)) (##fx= _g97635_ 2))
                 (apply (lambda (_thunk93386_ _name93387_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk93386_ _name93387_)))
                        _g97636_))
                ((let () (declare (not safe)) (##fx= _g97635_ 3))
                 (apply (lambda (_thunk93391_ _name93392_ _tgroup93393_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk93391_
                             _name93392_
                             _tgroup93393_)))
                        _g97636_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g97636_))))))
    (define thread-local-ref__%
      (lambda (_key93357_ _default93358_)
        (let ((_tab93360_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab93360_ _key93357_ _default93358_))))
    (define thread-local-ref__0
      (lambda (_key93365_)
        (let ((_default93367_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key93365_ _default93367_))))
    (define thread-local-ref
      (lambda _g97638_
        (let ((_g97637_ (let () (declare (not safe)) (##length _g97638_))))
          (cond ((let () (declare (not safe)) (##fx= _g97637_ 1))
                 (apply (lambda (_key93365_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key93365_)))
                        _g97638_))
                ((let () (declare (not safe)) (##fx= _g97637_ 2))
                 (apply (lambda (_key93369_ _default93370_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key93369_ _default93370_)))
                        _g97638_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g97638_))))))
    (define thread-local-get
      (lambda (_key93354_)
        (let () (declare (not safe)) (thread-local-ref _key93354_ '#f))))
    (define thread-local-set!
      (lambda (_key93349_ _value93350_)
        (let ((_tab93352_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab93352_ _key93349_ _value93350_))))
    (define thread-local-clear!
      (lambda (_key93345_)
        (let ((_tab93347_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab93347_ _key93345_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr93331_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr93331_))
              (let ((_$e93333_ (actor-thread-locals _thr93331_)))
                (if _$e93333_
                    (values _$e93333_)
                    (let ((_tab93336_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr93331_ _tab93336_)
                      _tab93336_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr93331_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e93338_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr93331_ '#f))))
                      (if _$e93338_
                          ((lambda (_tab93341_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab93341_)
                           _$e93338_)
                          (let ((_tab93343_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr93331_
                               _tab93343_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab93343_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc93328_)
        (if (let () (declare (not safe)) (procedure? _proc93328_))
            '#!void
            (raise (let ((__obj97631 (make-object* Error::t '5)))
                     (Error:::init!
                      __obj97631
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc93328_ '())))
                     __obj97631)))
        (set! __unhandled-actor-exception-hook _proc93328_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx93316_ _proc93317_)
        (let ((_handler93319_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e93321_)
             (let ((__tmp97639
                    (lambda ()
                      (mutex-unlock! _mx93316_)
                      (_handler93319_ _e93321_))))
               (declare (not safe))
               (with-catch void __tmp97639))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e93321_)))
           (lambda ()
             (mutex-lock! _mx93316_)
             (let ((_result93325_ (_proc93317_)))
               (mutex-unlock! _mx93316_)
               _result93325_))))))
    (define with-dynamic-lock
      (lambda (_mx93311_ _proc93312_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx93311_))
         _proc93312_
         (lambda () (mutex-unlock! _mx93311_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk93292_ _error-port93293_)
        (with-exception-handler
         (let ((_E93295_ (current-exception-handler)))
           (lambda (_exn93297_)
             (continuation-capture
              (lambda (_cont93299_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont93299_
                       _exn93297_
                       _error-port93293_))
                    '#!void)
                (_E93295_ _exn93297_)))))
         _thunk93292_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk93304_)
        (let ((_error-port93306_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk93304_ _error-port93306_))))
    (define with-exception-stack-trace
      (lambda _g97641_
        (let ((_g97640_ (let () (declare (not safe)) (##length _g97641_))))
          (cond ((let () (declare (not safe)) (##fx= _g97640_ 1))
                 (apply (lambda (_thunk93304_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk93304_)))
                        _g97641_))
                ((let () (declare (not safe)) (##fx= _g97640_ 2))
                 (apply (lambda (_thunk93308_ _error-port93309_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk93308_
                             _error-port93309_)))
                        _g97641_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g97641_))))))
    (define dump-stack-trace!__%
      (lambda (_cont93273_ _exn93274_ _error-port93275_)
        (let ((_out93277_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out93277_))
          (display '"*** Unhandled exception in " _out93277_)
          (display (current-thread) _out93277_)
          (newline _out93277_)
          (display-exception _exn93274_ _out93277_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn93274_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out93277_)
                (newline _out93277_)
                (display-continuation-backtrace _cont93273_ _out93277_)))
          (let ((__tmp97642 (get-output-string _out93277_)))
            (declare (not safe))
            (##write-string __tmp97642 _error-port93275_)))))
    (define dump-stack-trace!__0
      (lambda (_cont93282_ _exn93283_)
        (let ((_error-port93285_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont93282_ _exn93283_ _error-port93285_))))
    (define dump-stack-trace!
      (lambda _g97644_
        (let ((_g97643_ (let () (declare (not safe)) (##length _g97644_))))
          (cond ((let () (declare (not safe)) (##fx= _g97643_ 2))
                 (apply (lambda (_cont93282_ _exn93283_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont93282_ _exn93283_)))
                        _g97644_))
                ((let () (declare (not safe)) (##fx= _g97643_ 3))
                 (apply (lambda (_cont93287_ _exn93288_ _error-port93289_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont93287_
                             _exn93288_
                             _error-port93289_)))
                        _g97644_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g97644_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
