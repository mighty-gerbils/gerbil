(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1708289479)
  (begin
    (define spawn
      (lambda (_f110335_ . _args110336_)
        (if (let () (declare (not safe)) (procedure? _f110335_))
            '#!void
            (raise (let ((__obj114404
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj114404
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f110335_ '())))
                     __obj114404)))
        (let ()
          (declare (not safe))
          (spawn-actor _f110335_ _args110336_ '#!void '#f))))
    (define spawn/name
      (lambda (_name110331_ _f110332_ . _args110333_)
        (if (let () (declare (not safe)) (procedure? _f110332_))
            '#!void
            (raise (let ((__obj114405
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj114405
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f110332_ '())))
                     __obj114405)))
        (let ()
          (declare (not safe))
          (spawn-actor _f110332_ _args110333_ _name110331_ '#f))))
    (define spawn/group
      (lambda (_name110325_ _f110326_ . _args110327_)
        (if (let () (declare (not safe)) (procedure? _f110326_))
            '#!void
            (raise (let ((__obj114406
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj114406
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f110326_ '())))
                     __obj114406)))
        (let ((_tgroup110329_ (make-thread-group _name110325_)))
          (declare (not safe))
          (spawn-actor _f110326_ _args110327_ _name110325_ _tgroup110329_))))
    (define spawn-actor
      (lambda (_f110298_ _args110299_ _name110300_ _tgroup110301_)
        (letrec ((_thread-main110303_
                  (lambda (_thunk110317_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn110320_)
                         (let ((__tmp114408
                                (lambda (_cont110322_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp114409
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont110322_
                                                _exn110320_))))
                                        (declare (not safe))
                                        (with-catch void __tmp114409))
                                      '#!void)
                                  (let ((__tmp114410
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last
                                            _cont110322_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp114410
                                     ##primordial-exception-handler
                                     _exn110320_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp114408)))
                       _thunk110317_)))))
          (let* ((_thunk110306_
                  (if (let () (declare (not safe)) (null? _args110299_))
                      _f110298_
                      (lambda () (apply _f110298_ _args110299_))))
                 (_thunk110309_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk110306_))))
                 (_tgroup110314_
                  (let ((_$e110311_ _tgroup110301_))
                    (if _$e110311_
                        _$e110311_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main110303_ _thunk110309_))
              _name110300_
              _tgroup110314_))))))
    (define spawn-thread__%
      (lambda (_thunk110276_ _name110277_ _tgroup110278_)
        (thread-start!
         (make-thread _thunk110276_ _name110277_ _tgroup110278_))))
    (define spawn-thread__0
      (lambda (_thunk110283_)
        (let* ((_name110285_ absent-obj) (_tgroup110287_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk110283_ _name110285_ _tgroup110287_))))
    (define spawn-thread__1
      (lambda (_thunk110289_ _name110290_)
        (let ((_tgroup110292_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk110289_ _name110290_ _tgroup110292_))))
    (define spawn-thread
      (lambda _g114412_
        (let ((_g114411_ (let () (declare (not safe)) (##length _g114412_))))
          (cond ((let () (declare (not safe)) (##fx= _g114411_ 1))
                 (apply (lambda (_thunk110283_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk110283_)))
                        _g114412_))
                ((let () (declare (not safe)) (##fx= _g114411_ 2))
                 (apply (lambda (_thunk110289_ _name110290_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk110289_ _name110290_)))
                        _g114412_))
                ((let () (declare (not safe)) (##fx= _g114411_ 3))
                 (apply (lambda (_thunk110294_ _name110295_ _tgroup110296_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk110294_
                             _name110295_
                             _tgroup110296_)))
                        _g114412_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g114412_))))))
    (define thread-local-ref__%
      (lambda (_key110260_ _default110261_)
        (let ((_tab110263_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab110263_ _key110260_ _default110261_))))
    (define thread-local-ref__0
      (lambda (_key110268_)
        (let ((_default110270_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key110268_ _default110270_))))
    (define thread-local-ref
      (lambda _g114414_
        (let ((_g114413_ (let () (declare (not safe)) (##length _g114414_))))
          (cond ((let () (declare (not safe)) (##fx= _g114413_ 1))
                 (apply (lambda (_key110268_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key110268_)))
                        _g114414_))
                ((let () (declare (not safe)) (##fx= _g114413_ 2))
                 (apply (lambda (_key110272_ _default110273_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key110272_ _default110273_)))
                        _g114414_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g114414_))))))
    (define thread-local-get
      (lambda (_key110257_)
        (let () (declare (not safe)) (thread-local-ref _key110257_ '#f))))
    (define thread-local-set!
      (lambda (_key110252_ _value110253_)
        (let ((_tab110255_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab110255_ _key110252_ _value110253_))))
    (define thread-local-clear!
      (lambda (_key110248_)
        (let ((_tab110250_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab110250_ _key110248_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr110234_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr110234_))
              (let ((_$e110236_ (actor-thread-locals _thr110234_)))
                (if _$e110236_
                    (values _$e110236_)
                    (let ((_tab110239_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr110234_ _tab110239_)
                      _tab110239_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr110234_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e110241_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr110234_))))
                      (if _$e110241_
                          ((lambda (_tab110244_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab110244_)
                           _$e110241_)
                          (let ((_tab110246_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr110234_
                               _tab110246_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab110246_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc110231_)
        (if (let () (declare (not safe)) (procedure? _proc110231_))
            '#!void
            (raise (let ((__obj114407
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj114407
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc110231_ '())))
                     __obj114407)))
        (set! __unhandled-actor-exception-hook _proc110231_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx110219_ _proc110220_)
        (let ((_handler110222_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e110224_)
             (let ((__tmp114415
                    (lambda ()
                      (mutex-unlock! _mx110219_)
                      (_handler110222_ _e110224_))))
               (declare (not safe))
               (with-catch void __tmp114415))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e110224_)))
           (lambda ()
             (mutex-lock! _mx110219_)
             (let ((_result110228_ (_proc110220_)))
               (mutex-unlock! _mx110219_)
               _result110228_))))))
    (define with-dynamic-lock
      (lambda (_mx110214_ _proc110215_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx110214_))
         _proc110215_
         (lambda () (mutex-unlock! _mx110214_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk110195_ _error-port110196_)
        (with-exception-handler
         (let ((_E110198_ (current-exception-handler)))
           (lambda (_exn110200_)
             (continuation-capture
              (lambda (_cont110202_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont110202_
                       _exn110200_
                       _error-port110196_))
                    '#!void)
                (_E110198_ _exn110200_)))))
         _thunk110195_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk110207_)
        (let ((_error-port110209_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk110207_ _error-port110209_))))
    (define with-exception-stack-trace
      (lambda _g114417_
        (let ((_g114416_ (let () (declare (not safe)) (##length _g114417_))))
          (cond ((let () (declare (not safe)) (##fx= _g114416_ 1))
                 (apply (lambda (_thunk110207_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk110207_)))
                        _g114417_))
                ((let () (declare (not safe)) (##fx= _g114416_ 2))
                 (apply (lambda (_thunk110211_ _error-port110212_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk110211_
                             _error-port110212_)))
                        _g114417_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g114417_))))))
    (define dump-stack-trace!__%
      (lambda (_cont110176_ _exn110177_ _error-port110178_)
        (let ((_out110180_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out110180_))
          (display '"*** Unhandled exception in " _out110180_)
          (display (current-thread) _out110180_)
          (newline _out110180_)
          (display-exception _exn110177_ _out110180_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn110177_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out110180_)
                (newline _out110180_)
                (display-continuation-backtrace _cont110176_ _out110180_)))
          (let ((__tmp114418 (get-output-string _out110180_)))
            (declare (not safe))
            (##write-string __tmp114418 _error-port110178_)))))
    (define dump-stack-trace!__0
      (lambda (_cont110185_ _exn110186_)
        (let ((_error-port110188_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont110185_ _exn110186_ _error-port110188_))))
    (define dump-stack-trace!
      (lambda _g114420_
        (let ((_g114419_ (let () (declare (not safe)) (##length _g114420_))))
          (cond ((let () (declare (not safe)) (##fx= _g114419_ 2))
                 (apply (lambda (_cont110185_ _exn110186_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont110185_ _exn110186_)))
                        _g114420_))
                ((let () (declare (not safe)) (##fx= _g114419_ 3))
                 (apply (lambda (_cont110190_ _exn110191_ _error-port110192_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont110190_
                             _exn110191_
                             _error-port110192_)))
                        _g114420_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g114420_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
