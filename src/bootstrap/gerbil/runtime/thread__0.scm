(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1710687284)
  (begin
    (define spawn
      (lambda (_f74535_ . _args74536_)
        (if (let () (declare (not safe)) (procedure? _f74535_))
            '#!void
            (let ((__tmp74541
                   (let ((__obj74537
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74537
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f74535_ '())))
                     __obj74537)))
              (declare (not safe))
              (raise __tmp74541)))
        (let ()
          (declare (not safe))
          (spawn-actor _f74535_ _args74536_ '#!void '#f))))
    (define spawn/name
      (lambda (_name74531_ _f74532_ . _args74533_)
        (if (let () (declare (not safe)) (procedure? _f74532_))
            '#!void
            (let ((__tmp74542
                   (let ((__obj74538
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74538
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f74532_ '())))
                     __obj74538)))
              (declare (not safe))
              (raise __tmp74542)))
        (let ()
          (declare (not safe))
          (spawn-actor _f74532_ _args74533_ _name74531_ '#f))))
    (define spawn/group
      (lambda (_name74525_ _f74526_ . _args74527_)
        (if (let () (declare (not safe)) (procedure? _f74526_))
            '#!void
            (let ((__tmp74543
                   (let ((__obj74539
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74539
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f74526_ '())))
                     __obj74539)))
              (declare (not safe))
              (raise __tmp74543)))
        (let ((_tgroup74529_ (make-thread-group _name74525_)))
          (declare (not safe))
          (spawn-actor _f74526_ _args74527_ _name74525_ _tgroup74529_))))
    (define spawn-actor
      (lambda (_f74498_ _args74499_ _name74500_ _tgroup74501_)
        (letrec ((_thread-main74503_
                  (lambda (_thunk74517_)
                    (lambda ()
                      (let ((__tmp74544
                             (lambda (_exn74520_)
                               (let ((__tmp74545
                                      (lambda (_cont74522_)
                                        (if __unhandled-actor-exception-hook
                                            (let ((__tmp74546
                                                   (lambda ()
                                                     (__unhandled-actor-exception-hook
                                                      _cont74522_
                                                      _exn74520_))))
                                              (declare (not safe))
                                              (with-catch void __tmp74546))
                                            '#!void)
                                        (let ((__tmp74547
                                               (let ()
                                                 (declare (not safe))
                                                 (##continuation-last
                                                  _cont74522_))))
                                          (declare (not safe))
                                          (##continuation-graft
                                           __tmp74547
                                           ##primordial-exception-handler
                                           _exn74520_)))))
                                 (declare (not safe))
                                 (##continuation-capture __tmp74545)))))
                        (declare (not safe))
                        (with-exception-handler __tmp74544 _thunk74517_))))))
          (let* ((_thunk74506_
                  (if (let () (declare (not safe)) (null? _args74499_))
                      _f74498_
                      (lambda () (apply _f74498_ _args74499_))))
                 (_thunk74509_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk74506_))))
                 (_tgroup74514_
                  (let ((_$e74511_ _tgroup74501_))
                    (if _$e74511_
                        _$e74511_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main74503_ _thunk74509_))
              _name74500_
              _tgroup74514_))))))
    (define spawn-thread__%
      (lambda (_thunk74476_ _name74477_ _tgroup74478_)
        (thread-start! (make-thread _thunk74476_ _name74477_ _tgroup74478_))))
    (define spawn-thread__0
      (lambda (_thunk74483_)
        (let* ((_name74485_ absent-obj) (_tgroup74487_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk74483_ _name74485_ _tgroup74487_))))
    (define spawn-thread__1
      (lambda (_thunk74489_ _name74490_)
        (let ((_tgroup74492_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk74489_ _name74490_ _tgroup74492_))))
    (define spawn-thread
      (lambda _g74549_
        (let ((_g74548_ (let () (declare (not safe)) (##length _g74549_))))
          (cond ((let () (declare (not safe)) (##fx= _g74548_ 1))
                 (apply (lambda (_thunk74483_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk74483_)))
                        _g74549_))
                ((let () (declare (not safe)) (##fx= _g74548_ 2))
                 (apply (lambda (_thunk74489_ _name74490_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk74489_ _name74490_)))
                        _g74549_))
                ((let () (declare (not safe)) (##fx= _g74548_ 3))
                 (apply (lambda (_thunk74494_ _name74495_ _tgroup74496_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk74494_
                             _name74495_
                             _tgroup74496_)))
                        _g74549_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g74549_))))))
    (define thread-local-ref__%
      (lambda (_key74460_ _default74461_)
        (let ((_tab74463_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab74463_ _key74460_ _default74461_))))
    (define thread-local-ref__0
      (lambda (_key74468_)
        (let ((_default74470_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key74468_ _default74470_))))
    (define thread-local-ref
      (lambda _g74551_
        (let ((_g74550_ (let () (declare (not safe)) (##length _g74551_))))
          (cond ((let () (declare (not safe)) (##fx= _g74550_ 1))
                 (apply (lambda (_key74468_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key74468_)))
                        _g74551_))
                ((let () (declare (not safe)) (##fx= _g74550_ 2))
                 (apply (lambda (_key74472_ _default74473_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key74472_ _default74473_)))
                        _g74551_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g74551_))))))
    (define thread-local-get
      (lambda (_key74457_)
        (let () (declare (not safe)) (thread-local-ref__% _key74457_ '#f))))
    (define thread-local-set!
      (lambda (_key74452_ _value74453_)
        (let ((_tab74455_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab74455_ _key74452_ _value74453_))))
    (define thread-local-delete!
      (lambda (_key74448_)
        (let ((_tab74450_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab74450_ _key74448_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr74434_ (current-thread)))
          (if (actor-thread? _thr74434_)
              (let ((_$e74436_ (actor-thread-locals _thr74434_)))
                (if _$e74436_
                    (values _$e74436_)
                    (let ((_tab74439_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr74434_ _tab74439_)
                      _tab74439_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr74434_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e74441_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr74434_))))
                      (if _$e74441_
                          ((lambda (_tab74444_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab74444_)
                           _$e74441_)
                          (let ((_tab74446_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr74434_
                               _tab74446_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab74446_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc74431_)
        (if (let () (declare (not safe)) (procedure? _proc74431_))
            '#!void
            (let ((__tmp74552
                   (let ((__obj74540
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj74540
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc74431_ '())))
                     __obj74540)))
              (declare (not safe))
              (raise __tmp74552)))
        (set! __unhandled-actor-exception-hook _proc74431_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx74419_ _proc74420_)
        (let ((_handler74422_ (current-exception-handler)))
          (let ((__tmp74554
                 (lambda (_e74424_)
                   (let ((__tmp74555
                          (lambda ()
                            (mutex-unlock! _mx74419_)
                            (_handler74422_ _e74424_))))
                     (declare (not safe))
                     (with-catch void __tmp74555))
                   (let ()
                     (declare (not safe))
                     (##thread-end-with-uncaught-exception! _e74424_))))
                (__tmp74553
                 (lambda ()
                   (mutex-lock! _mx74419_)
                   (let ((_result74428_ (_proc74420_)))
                     (mutex-unlock! _mx74419_)
                     _result74428_))))
            (declare (not safe))
            (with-exception-handler __tmp74554 __tmp74553)))))
    (define with-dynamic-lock
      (lambda (_mx74414_ _proc74415_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx74414_))
         _proc74415_
         (lambda () (mutex-unlock! _mx74414_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk74395_ _error-port74396_)
        (let ((__tmp74556
               (let ((_E74398_ (current-exception-handler)))
                 (lambda (_exn74400_)
                   (continuation-capture
                    (lambda (_cont74402_)
                      (if (dump-stack-trace?)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont74402_
                             _exn74400_
                             _error-port74396_))
                          '#!void)
                      (_E74398_ _exn74400_)))))))
          (declare (not safe))
          (with-exception-handler __tmp74556 _thunk74395_))))
    (define with-exception-stack-trace__0
      (lambda (_thunk74407_)
        (let ((_error-port74409_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk74407_ _error-port74409_))))
    (define with-exception-stack-trace
      (lambda _g74558_
        (let ((_g74557_ (let () (declare (not safe)) (##length _g74558_))))
          (cond ((let () (declare (not safe)) (##fx= _g74557_ 1))
                 (apply (lambda (_thunk74407_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk74407_)))
                        _g74558_))
                ((let () (declare (not safe)) (##fx= _g74557_ 2))
                 (apply (lambda (_thunk74411_ _error-port74412_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk74411_
                             _error-port74412_)))
                        _g74558_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g74558_))))))
    (define dump-stack-trace!__%
      (lambda (_cont74376_ _exn74377_ _error-port74378_)
        (let ((_out74380_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out74380_))
          (display '"*** Unhandled exception in " _out74380_)
          (display (current-thread) _out74380_)
          (newline _out74380_)
          (let ()
            (declare (not safe))
            (display-exception _exn74377_ _out74380_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn74377_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out74380_)
                (newline _out74380_)
                (display-continuation-backtrace _cont74376_ _out74380_)))
          (let ((__tmp74559 (get-output-string _out74380_)))
            (declare (not safe))
            (##write-string __tmp74559 _error-port74378_)))))
    (define dump-stack-trace!__0
      (lambda (_cont74385_ _exn74386_)
        (let ((_error-port74388_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont74385_ _exn74386_ _error-port74388_))))
    (define dump-stack-trace!
      (lambda _g74561_
        (let ((_g74560_ (let () (declare (not safe)) (##length _g74561_))))
          (cond ((let () (declare (not safe)) (##fx= _g74560_ 2))
                 (apply (lambda (_cont74385_ _exn74386_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont74385_ _exn74386_)))
                        _g74561_))
                ((let () (declare (not safe)) (##fx= _g74560_ 3))
                 (apply (lambda (_cont74390_ _exn74391_ _error-port74392_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont74390_
                             _exn74391_
                             _error-port74392_)))
                        _g74561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g74561_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
