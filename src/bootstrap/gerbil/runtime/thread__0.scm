(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1708334573)
  (begin
    (define spawn
      (lambda (_f110489_ . _args110490_)
        (if (let () (declare (not safe)) (procedure? _f110489_))
            '#!void
            (raise (let ((__obj114558
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj114558
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f110489_ '())))
                     __obj114558)))
        (let ()
          (declare (not safe))
          (spawn-actor _f110489_ _args110490_ '#!void '#f))))
    (define spawn/name
      (lambda (_name110485_ _f110486_ . _args110487_)
        (if (let () (declare (not safe)) (procedure? _f110486_))
            '#!void
            (raise (let ((__obj114559
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj114559
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f110486_ '())))
                     __obj114559)))
        (let ()
          (declare (not safe))
          (spawn-actor _f110486_ _args110487_ _name110485_ '#f))))
    (define spawn/group
      (lambda (_name110479_ _f110480_ . _args110481_)
        (if (let () (declare (not safe)) (procedure? _f110480_))
            '#!void
            (raise (let ((__obj114560
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj114560
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f110480_ '())))
                     __obj114560)))
        (let ((_tgroup110483_ (make-thread-group _name110479_)))
          (declare (not safe))
          (spawn-actor _f110480_ _args110481_ _name110479_ _tgroup110483_))))
    (define spawn-actor
      (lambda (_f110452_ _args110453_ _name110454_ _tgroup110455_)
        (letrec ((_thread-main110457_
                  (lambda (_thunk110471_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn110474_)
                         (let ((__tmp114562
                                (lambda (_cont110476_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp114563
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont110476_
                                                _exn110474_))))
                                        (declare (not safe))
                                        (with-catch void __tmp114563))
                                      '#!void)
                                  (let ((__tmp114564
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last
                                            _cont110476_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp114564
                                     ##primordial-exception-handler
                                     _exn110474_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp114562)))
                       _thunk110471_)))))
          (let* ((_thunk110460_
                  (if (let () (declare (not safe)) (null? _args110453_))
                      _f110452_
                      (lambda () (apply _f110452_ _args110453_))))
                 (_thunk110463_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk110460_))))
                 (_tgroup110468_
                  (let ((_$e110465_ _tgroup110455_))
                    (if _$e110465_
                        _$e110465_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main110457_ _thunk110463_))
              _name110454_
              _tgroup110468_))))))
    (define spawn-thread__%
      (lambda (_thunk110430_ _name110431_ _tgroup110432_)
        (thread-start!
         (make-thread _thunk110430_ _name110431_ _tgroup110432_))))
    (define spawn-thread__0
      (lambda (_thunk110437_)
        (let* ((_name110439_ absent-obj) (_tgroup110441_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk110437_ _name110439_ _tgroup110441_))))
    (define spawn-thread__1
      (lambda (_thunk110443_ _name110444_)
        (let ((_tgroup110446_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk110443_ _name110444_ _tgroup110446_))))
    (define spawn-thread
      (lambda _g114566_
        (let ((_g114565_ (let () (declare (not safe)) (##length _g114566_))))
          (cond ((let () (declare (not safe)) (##fx= _g114565_ 1))
                 (apply (lambda (_thunk110437_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk110437_)))
                        _g114566_))
                ((let () (declare (not safe)) (##fx= _g114565_ 2))
                 (apply (lambda (_thunk110443_ _name110444_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk110443_ _name110444_)))
                        _g114566_))
                ((let () (declare (not safe)) (##fx= _g114565_ 3))
                 (apply (lambda (_thunk110448_ _name110449_ _tgroup110450_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk110448_
                             _name110449_
                             _tgroup110450_)))
                        _g114566_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g114566_))))))
    (define thread-local-ref__%
      (lambda (_key110414_ _default110415_)
        (let ((_tab110417_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab110417_ _key110414_ _default110415_))))
    (define thread-local-ref__0
      (lambda (_key110422_)
        (let ((_default110424_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key110422_ _default110424_))))
    (define thread-local-ref
      (lambda _g114568_
        (let ((_g114567_ (let () (declare (not safe)) (##length _g114568_))))
          (cond ((let () (declare (not safe)) (##fx= _g114567_ 1))
                 (apply (lambda (_key110422_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key110422_)))
                        _g114568_))
                ((let () (declare (not safe)) (##fx= _g114567_ 2))
                 (apply (lambda (_key110426_ _default110427_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key110426_ _default110427_)))
                        _g114568_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g114568_))))))
    (define thread-local-get
      (lambda (_key110411_)
        (let () (declare (not safe)) (thread-local-ref _key110411_ '#f))))
    (define thread-local-set!
      (lambda (_key110406_ _value110407_)
        (let ((_tab110409_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab110409_ _key110406_ _value110407_))))
    (define thread-local-clear!
      (lambda (_key110402_)
        (let ((_tab110404_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab110404_ _key110402_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr110388_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr110388_))
              (let ((_$e110390_ (actor-thread-locals _thr110388_)))
                (if _$e110390_
                    (values _$e110390_)
                    (let ((_tab110393_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr110388_ _tab110393_)
                      _tab110393_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr110388_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e110395_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr110388_))))
                      (if _$e110395_
                          ((lambda (_tab110398_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab110398_)
                           _$e110395_)
                          (let ((_tab110400_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr110388_
                               _tab110400_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab110400_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc110385_)
        (if (let () (declare (not safe)) (procedure? _proc110385_))
            '#!void
            (raise (let ((__obj114561
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj114561
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc110385_ '())))
                     __obj114561)))
        (set! __unhandled-actor-exception-hook _proc110385_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx110373_ _proc110374_)
        (let ((_handler110376_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e110378_)
             (let ((__tmp114569
                    (lambda ()
                      (mutex-unlock! _mx110373_)
                      (_handler110376_ _e110378_))))
               (declare (not safe))
               (with-catch void __tmp114569))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e110378_)))
           (lambda ()
             (mutex-lock! _mx110373_)
             (let ((_result110382_ (_proc110374_)))
               (mutex-unlock! _mx110373_)
               _result110382_))))))
    (define with-dynamic-lock
      (lambda (_mx110368_ _proc110369_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx110368_))
         _proc110369_
         (lambda () (mutex-unlock! _mx110368_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk110349_ _error-port110350_)
        (with-exception-handler
         (let ((_E110352_ (current-exception-handler)))
           (lambda (_exn110354_)
             (continuation-capture
              (lambda (_cont110356_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont110356_
                       _exn110354_
                       _error-port110350_))
                    '#!void)
                (_E110352_ _exn110354_)))))
         _thunk110349_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk110361_)
        (let ((_error-port110363_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk110361_ _error-port110363_))))
    (define with-exception-stack-trace
      (lambda _g114571_
        (let ((_g114570_ (let () (declare (not safe)) (##length _g114571_))))
          (cond ((let () (declare (not safe)) (##fx= _g114570_ 1))
                 (apply (lambda (_thunk110361_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk110361_)))
                        _g114571_))
                ((let () (declare (not safe)) (##fx= _g114570_ 2))
                 (apply (lambda (_thunk110365_ _error-port110366_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk110365_
                             _error-port110366_)))
                        _g114571_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g114571_))))))
    (define dump-stack-trace!__%
      (lambda (_cont110330_ _exn110331_ _error-port110332_)
        (let ((_out110334_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out110334_))
          (display '"*** Unhandled exception in " _out110334_)
          (display (current-thread) _out110334_)
          (newline _out110334_)
          (display-exception _exn110331_ _out110334_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn110331_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out110334_)
                (newline _out110334_)
                (display-continuation-backtrace _cont110330_ _out110334_)))
          (let ((__tmp114572 (get-output-string _out110334_)))
            (declare (not safe))
            (##write-string __tmp114572 _error-port110332_)))))
    (define dump-stack-trace!__0
      (lambda (_cont110339_ _exn110340_)
        (let ((_error-port110342_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont110339_ _exn110340_ _error-port110342_))))
    (define dump-stack-trace!
      (lambda _g114574_
        (let ((_g114573_ (let () (declare (not safe)) (##length _g114574_))))
          (cond ((let () (declare (not safe)) (##fx= _g114573_ 2))
                 (apply (lambda (_cont110339_ _exn110340_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont110339_ _exn110340_)))
                        _g114574_))
                ((let () (declare (not safe)) (##fx= _g114573_ 3))
                 (apply (lambda (_cont110344_ _exn110345_ _error-port110346_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont110344_
                             _exn110345_
                             _error-port110346_)))
                        _g114574_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g114574_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
