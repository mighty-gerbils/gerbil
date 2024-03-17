(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1710699091)
  (begin
    (define spawn
      (lambda (_f74542_ . _args74543_)
        (if (let () (declare (not safe)) (procedure? _f74542_))
            '#!void
            (let ((__tmp74548
                   (let ((__obj74544
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74544
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f74542_ '())))
                     __obj74544)))
              (declare (not safe))
              (raise __tmp74548)))
        (let ()
          (declare (not safe))
          (spawn-actor _f74542_ _args74543_ '#!void '#f))))
    (define spawn/name
      (lambda (_name74538_ _f74539_ . _args74540_)
        (if (let () (declare (not safe)) (procedure? _f74539_))
            '#!void
            (let ((__tmp74549
                   (let ((__obj74545
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74545
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f74539_ '())))
                     __obj74545)))
              (declare (not safe))
              (raise __tmp74549)))
        (let ()
          (declare (not safe))
          (spawn-actor _f74539_ _args74540_ _name74538_ '#f))))
    (define spawn/group
      (lambda (_name74532_ _f74533_ . _args74534_)
        (if (let () (declare (not safe)) (procedure? _f74533_))
            '#!void
            (let ((__tmp74550
                   (let ((__obj74546
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74546
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f74533_ '())))
                     __obj74546)))
              (declare (not safe))
              (raise __tmp74550)))
        (let ((_tgroup74536_ (make-thread-group _name74532_)))
          (declare (not safe))
          (spawn-actor _f74533_ _args74534_ _name74532_ _tgroup74536_))))
    (define spawn-actor
      (lambda (_f74505_ _args74506_ _name74507_ _tgroup74508_)
        (letrec ((_thread-main74510_
                  (lambda (_thunk74524_)
                    (lambda ()
                      (let ((__tmp74551
                             (lambda (_exn74527_)
                               (let ((__tmp74552
                                      (lambda (_cont74529_)
                                        (if __unhandled-actor-exception-hook
                                            (let ((__tmp74553
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _cont74529_
                                                      _exn74527_))))
                                              (declare (not safe))
                                              (with-catch void __tmp74553))
                                            '#!void)
                                        (let ((__tmp74554
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _cont74529_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp74554
                                           ##primordial-exception-handler
                                           _exn74527_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp74552)))))
                        (declare (not safe))
                        (with-exception-handler __tmp74551 _thunk74524_))))))
          (let* ((_thunk74513_
                  (if (let () (declare (not safe)) (null? _args74506_))
                      _f74505_
                      (lambda () (apply _f74505_ _args74506_))))
                 (_thunk74516_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk74513_))))
                 (_tgroup74521_
                  (let ((_$e74518_ _tgroup74508_))
                    (if _$e74518_
                        _$e74518_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main74510_ _thunk74516_))
              _name74507_
              _tgroup74521_))))))
    (define spawn-thread__%
      (lambda (_thunk74483_ _name74484_ _tgroup74485_)
        (thread-start! (make-thread _thunk74483_ _name74484_ _tgroup74485_))))
    (define spawn-thread__0
      (lambda (_thunk74490_)
        (let* ((_name74492_ absent-obj) (_tgroup74494_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk74490_ _name74492_ _tgroup74494_))))
    (define spawn-thread__1
      (lambda (_thunk74496_ _name74497_)
        (let ((_tgroup74499_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk74496_ _name74497_ _tgroup74499_))))
    (define spawn-thread
      (lambda _g74556_
        (let ((_g74555_ (let () (declare (not safe)) (##length _g74556_))))
          (cond ((let () (declare (not safe)) (##fx= _g74555_ 1))
                 (apply (lambda (_thunk74490_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk74490_)))
                        _g74556_))
                ((let () (declare (not safe)) (##fx= _g74555_ 2))
                 (apply (lambda (_thunk74496_ _name74497_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk74496_ _name74497_)))
                        _g74556_))
                ((let () (declare (not safe)) (##fx= _g74555_ 3))
                 (apply (lambda (_thunk74501_ _name74502_ _tgroup74503_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk74501_
                             _name74502_
                             _tgroup74503_)))
                        _g74556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g74556_))))))
    (define thread-local-ref__%
      (lambda (_key74467_ _default74468_)
        (let ((_tab74470_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab74470_ _key74467_ _default74468_))))
    (define thread-local-ref__0
      (lambda (_key74475_)
        (let ((_default74477_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key74475_ _default74477_))))
    (define thread-local-ref
      (lambda _g74558_
        (let ((_g74557_ (let () (declare (not safe)) (##length _g74558_))))
          (cond ((let () (declare (not safe)) (##fx= _g74557_ 1))
                 (apply (lambda (_key74475_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key74475_)))
                        _g74558_))
                ((let () (declare (not safe)) (##fx= _g74557_ 2))
                 (apply (lambda (_key74479_ _default74480_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key74479_ _default74480_)))
                        _g74558_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g74558_))))))
    (define thread-local-get
      (lambda (_key74464_)
        (let () (declare (not safe)) (thread-local-ref__% _key74464_ '#f))))
    (define thread-local-set!
      (lambda (_key74459_ _value74460_)
        (let ((_tab74462_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab74462_ _key74459_ _value74460_))))
    (define thread-local-delete!
      (lambda (_key74455_)
        (let ((_tab74457_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab74457_ _key74455_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr74441_ (current-thread)))
          (if (actor-thread? _thr74441_)
              (let ((_$e74443_ (actor-thread-locals _thr74441_)))
                (if _$e74443_
                    (values _$e74443_)
                    (let ((_tab74446_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr74441_ _tab74446_)
                      _tab74446_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr74441_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e74448_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr74441_))))
                      (if _$e74448_
                          ((lambda (_tab74451_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab74451_)
                           _$e74448_)
                          (let ((_tab74453_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr74441_
                               _tab74453_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab74453_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc74438_)
        (if (let () (declare (not safe)) (procedure? _proc74438_))
            '#!void
            (let ((__tmp74559
                   (let ((__obj74547
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74547
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc74438_ '())))
                     __obj74547)))
              (declare (not safe))
              (raise __tmp74559)))
        (set! __unhandled-actor-exception-hook _proc74438_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx74426_ _proc74427_)
        (let ((_handler74429_ (current-exception-handler)))
          (let ((__tmp74561
                 (lambda (_e74431_)
                   (let ((__tmp74562
                          (lambda ()
                            (mutex-unlock! _mx74426_)
                            (_handler74429_ _e74431_))))
                     (declare (not safe))
                     (with-catch void __tmp74562))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _e74431_))))
                (__tmp74560
                 (lambda ()
                   (mutex-lock! _mx74426_)
                   (let ((_result74435_ (_proc74427_)))
                     (mutex-unlock! _mx74426_)
                     _result74435_))))
            (declare (not safe))
            (with-exception-handler __tmp74561 __tmp74560)))))
    (define with-dynamic-lock
      (lambda (_mx74421_ _proc74422_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx74421_))
         _proc74422_
         (lambda () (mutex-unlock! _mx74421_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk74402_ _error-port74403_)
        (let ((__tmp74563
               (let ((_E74405_ (current-exception-handler)))
                 (lambda (_exn74407_)
                   (continuation-capture
                    (lambda (_cont74409_)
                      (if (dump-stack-trace?)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont74409_
                             _exn74407_
                             _error-port74403_))
                          '#!void)
                      (_E74405_ _exn74407_)))))))
          (declare (not safe))
          (with-exception-handler __tmp74563 _thunk74402_))))
    (define with-exception-stack-trace__0
      (lambda (_thunk74414_)
        (let ((_error-port74416_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk74414_ _error-port74416_))))
    (define with-exception-stack-trace
      (lambda _g74565_
        (let ((_g74564_ (let () (declare (not safe)) (##length _g74565_))))
          (cond ((let () (declare (not safe)) (##fx= _g74564_ 1))
                 (apply (lambda (_thunk74414_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk74414_)))
                        _g74565_))
                ((let () (declare (not safe)) (##fx= _g74564_ 2))
                 (apply (lambda (_thunk74418_ _error-port74419_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk74418_
                             _error-port74419_)))
                        _g74565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g74565_))))))
    (define dump-stack-trace!__%
      (lambda (_cont74383_ _exn74384_ _error-port74385_)
        (let ((_out74387_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out74387_))
          (display '"*** Unhandled exception in " _out74387_)
          (display (current-thread) _out74387_)
          (newline _out74387_)
          (let ()
            (declare (not safe))
            (display-exception _exn74384_ _out74387_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn74384_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out74387_)
                (newline _out74387_)
                (display-continuation-backtrace _cont74383_ _out74387_)))
          (let ((__tmp74566 (get-output-string _out74387_)))
            (declare (not safe))
            (##write-string __tmp74566 _error-port74385_)))))
    (define dump-stack-trace!__0
      (lambda (_cont74392_ _exn74393_)
        (let ((_error-port74395_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont74392_ _exn74393_ _error-port74395_))))
    (define dump-stack-trace!
      (lambda _g74568_
        (let ((_g74567_ (let () (declare (not safe)) (##length _g74568_))))
          (cond ((let () (declare (not safe)) (##fx= _g74567_ 2))
                 (apply (lambda (_cont74392_ _exn74393_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont74392_ _exn74393_)))
                        _g74568_))
                ((let () (declare (not safe)) (##fx= _g74567_ 3))
                 (apply (lambda (_cont74397_ _exn74398_ _error-port74399_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont74397_
                             _exn74398_
                             _error-port74399_)))
                        _g74568_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g74568_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
