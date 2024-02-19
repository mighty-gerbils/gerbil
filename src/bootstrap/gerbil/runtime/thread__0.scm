(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1708337963)
  (begin
    (define spawn
      (lambda (_f109530_ . _args109531_)
        (if (let () (declare (not safe)) (procedure? _f109530_))
            '#!void
            (raise (let ((__obj113518
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj113518
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f109530_ '())))
                     __obj113518)))
        (let ()
          (declare (not safe))
          (spawn-actor _f109530_ _args109531_ '#!void '#f))))
    (define spawn/name
      (lambda (_name109526_ _f109527_ . _args109528_)
        (if (let () (declare (not safe)) (procedure? _f109527_))
            '#!void
            (raise (let ((__obj113519
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj113519
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f109527_ '())))
                     __obj113519)))
        (let ()
          (declare (not safe))
          (spawn-actor _f109527_ _args109528_ _name109526_ '#f))))
    (define spawn/group
      (lambda (_name109520_ _f109521_ . _args109522_)
        (if (let () (declare (not safe)) (procedure? _f109521_))
            '#!void
            (raise (let ((__obj113520
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj113520
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f109521_ '())))
                     __obj113520)))
        (let ((_tgroup109524_ (make-thread-group _name109520_)))
          (declare (not safe))
          (spawn-actor _f109521_ _args109522_ _name109520_ _tgroup109524_))))
    (define spawn-actor
      (lambda (_f109493_ _args109494_ _name109495_ _tgroup109496_)
        (letrec ((_thread-main109498_
                  (lambda (_thunk109512_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn109515_)
                         (let ((__tmp113522
                                (lambda (_cont109517_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp113523
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont109517_
                                                _exn109515_))))
                                        (declare (not safe))
                                        (with-catch void __tmp113523))
                                      '#!void)
                                  (let ((__tmp113524
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last
                                            _cont109517_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp113524
                                     ##primordial-exception-handler
                                     _exn109515_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp113522)))
                       _thunk109512_)))))
          (let* ((_thunk109501_
                  (if (let () (declare (not safe)) (null? _args109494_))
                      _f109493_
                      (lambda () (apply _f109493_ _args109494_))))
                 (_thunk109504_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk109501_))))
                 (_tgroup109509_
                  (let ((_$e109506_ _tgroup109496_))
                    (if _$e109506_
                        _$e109506_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main109498_ _thunk109504_))
              _name109495_
              _tgroup109509_))))))
    (define spawn-thread__%
      (lambda (_thunk109471_ _name109472_ _tgroup109473_)
        (thread-start!
         (make-thread _thunk109471_ _name109472_ _tgroup109473_))))
    (define spawn-thread__0
      (lambda (_thunk109478_)
        (let* ((_name109480_ absent-obj) (_tgroup109482_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk109478_ _name109480_ _tgroup109482_))))
    (define spawn-thread__1
      (lambda (_thunk109484_ _name109485_)
        (let ((_tgroup109487_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk109484_ _name109485_ _tgroup109487_))))
    (define spawn-thread
      (lambda _g113526_
        (let ((_g113525_ (let () (declare (not safe)) (##length _g113526_))))
          (cond ((let () (declare (not safe)) (##fx= _g113525_ 1))
                 (apply (lambda (_thunk109478_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk109478_)))
                        _g113526_))
                ((let () (declare (not safe)) (##fx= _g113525_ 2))
                 (apply (lambda (_thunk109484_ _name109485_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk109484_ _name109485_)))
                        _g113526_))
                ((let () (declare (not safe)) (##fx= _g113525_ 3))
                 (apply (lambda (_thunk109489_ _name109490_ _tgroup109491_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk109489_
                             _name109490_
                             _tgroup109491_)))
                        _g113526_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g113526_))))))
    (define thread-local-ref__%
      (lambda (_key109455_ _default109456_)
        (let ((_tab109458_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab109458_ _key109455_ _default109456_))))
    (define thread-local-ref__0
      (lambda (_key109463_)
        (let ((_default109465_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key109463_ _default109465_))))
    (define thread-local-ref
      (lambda _g113528_
        (let ((_g113527_ (let () (declare (not safe)) (##length _g113528_))))
          (cond ((let () (declare (not safe)) (##fx= _g113527_ 1))
                 (apply (lambda (_key109463_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key109463_)))
                        _g113528_))
                ((let () (declare (not safe)) (##fx= _g113527_ 2))
                 (apply (lambda (_key109467_ _default109468_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key109467_ _default109468_)))
                        _g113528_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g113528_))))))
    (define thread-local-get
      (lambda (_key109452_)
        (let () (declare (not safe)) (thread-local-ref__% _key109452_ '#f))))
    (define thread-local-set!
      (lambda (_key109447_ _value109448_)
        (let ((_tab109450_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab109450_ _key109447_ _value109448_))))
    (define thread-local-clear!
      (lambda (_key109443_)
        (let ((_tab109445_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab109445_ _key109443_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr109429_ (current-thread)))
          (if (actor-thread? _thr109429_)
              (let ((_$e109431_ (actor-thread-locals _thr109429_)))
                (if _$e109431_
                    (values _$e109431_)
                    (let ((_tab109434_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr109429_ _tab109434_)
                      _tab109434_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr109429_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e109436_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr109429_))))
                      (if _$e109436_
                          ((lambda (_tab109439_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab109439_)
                           _$e109436_)
                          (let ((_tab109441_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr109429_
                               _tab109441_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab109441_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc109426_)
        (if (let () (declare (not safe)) (procedure? _proc109426_))
            '#!void
            (raise (let ((__obj113521
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj113521
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc109426_ '())))
                     __obj113521)))
        (set! __unhandled-actor-exception-hook _proc109426_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx109414_ _proc109415_)
        (let ((_handler109417_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e109419_)
             (let ((__tmp113529
                    (lambda ()
                      (mutex-unlock! _mx109414_)
                      (_handler109417_ _e109419_))))
               (declare (not safe))
               (with-catch void __tmp113529))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e109419_)))
           (lambda ()
             (mutex-lock! _mx109414_)
             (let ((_result109423_ (_proc109415_)))
               (mutex-unlock! _mx109414_)
               _result109423_))))))
    (define with-dynamic-lock
      (lambda (_mx109409_ _proc109410_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx109409_))
         _proc109410_
         (lambda () (mutex-unlock! _mx109409_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk109390_ _error-port109391_)
        (with-exception-handler
         (let ((_E109393_ (current-exception-handler)))
           (lambda (_exn109395_)
             (continuation-capture
              (lambda (_cont109397_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont109397_
                       _exn109395_
                       _error-port109391_))
                    '#!void)
                (_E109393_ _exn109395_)))))
         _thunk109390_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk109402_)
        (let ((_error-port109404_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk109402_ _error-port109404_))))
    (define with-exception-stack-trace
      (lambda _g113531_
        (let ((_g113530_ (let () (declare (not safe)) (##length _g113531_))))
          (cond ((let () (declare (not safe)) (##fx= _g113530_ 1))
                 (apply (lambda (_thunk109402_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk109402_)))
                        _g113531_))
                ((let () (declare (not safe)) (##fx= _g113530_ 2))
                 (apply (lambda (_thunk109406_ _error-port109407_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk109406_
                             _error-port109407_)))
                        _g113531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g113531_))))))
    (define dump-stack-trace!__%
      (lambda (_cont109371_ _exn109372_ _error-port109373_)
        (let ((_out109375_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out109375_))
          (display '"*** Unhandled exception in " _out109375_)
          (display (current-thread) _out109375_)
          (newline _out109375_)
          (display-exception _exn109372_ _out109375_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn109372_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out109375_)
                (newline _out109375_)
                (display-continuation-backtrace _cont109371_ _out109375_)))
          (let ((__tmp113532 (get-output-string _out109375_)))
            (declare (not safe))
            (##write-string __tmp113532 _error-port109373_)))))
    (define dump-stack-trace!__0
      (lambda (_cont109380_ _exn109381_)
        (let ((_error-port109383_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont109380_ _exn109381_ _error-port109383_))))
    (define dump-stack-trace!
      (lambda _g113534_
        (let ((_g113533_ (let () (declare (not safe)) (##length _g113534_))))
          (cond ((let () (declare (not safe)) (##fx= _g113533_ 2))
                 (apply (lambda (_cont109380_ _exn109381_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont109380_ _exn109381_)))
                        _g113534_))
                ((let () (declare (not safe)) (##fx= _g113533_ 3))
                 (apply (lambda (_cont109385_ _exn109386_ _error-port109387_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont109385_
                             _exn109386_
                             _error-port109387_)))
                        _g113534_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g113534_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
