(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1710064746)
  (begin
    (define spawn
      (lambda (_f70407_ . _args70408_)
        (if (let () (declare (not safe)) (procedure? _f70407_))
            '#!void
            (raise (let ((__obj70409
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj70409
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f70407_ '())))
                     __obj70409)))
        (let ()
          (declare (not safe))
          (spawn-actor _f70407_ _args70408_ '#!void '#f))))
    (define spawn/name
      (lambda (_name70403_ _f70404_ . _args70405_)
        (if (let () (declare (not safe)) (procedure? _f70404_))
            '#!void
            (raise (let ((__obj70410
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj70410
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f70404_ '())))
                     __obj70410)))
        (let ()
          (declare (not safe))
          (spawn-actor _f70404_ _args70405_ _name70403_ '#f))))
    (define spawn/group
      (lambda (_name70397_ _f70398_ . _args70399_)
        (if (let () (declare (not safe)) (procedure? _f70398_))
            '#!void
            (raise (let ((__obj70411
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj70411
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f70398_ '())))
                     __obj70411)))
        (let ((_tgroup70401_ (make-thread-group _name70397_)))
          (declare (not safe))
          (spawn-actor _f70398_ _args70399_ _name70397_ _tgroup70401_))))
    (define spawn-actor
      (lambda (_f70370_ _args70371_ _name70372_ _tgroup70373_)
        (letrec ((_thread-main70375_
                  (lambda (_thunk70389_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn70392_)
                         (let ((__tmp70413
                                (lambda (_cont70394_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp70414
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont70394_
                                                _exn70392_))))
                                        (declare (not safe))
                                        (with-catch void __tmp70414))
                                      '#!void)
                                  (let ((__tmp70415
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont70394_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp70415
                                     ##primordial-exception-handler
                                     _exn70392_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp70413)))
                       _thunk70389_)))))
          (let* ((_thunk70378_
                  (if (let () (declare (not safe)) (null? _args70371_))
                      _f70370_
                      (lambda () (apply _f70370_ _args70371_))))
                 (_thunk70381_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk70378_))))
                 (_tgroup70386_
                  (let ((_$e70383_ _tgroup70373_))
                    (if _$e70383_
                        _$e70383_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main70375_ _thunk70381_))
              _name70372_
              _tgroup70386_))))))
    (define spawn-thread__%
      (lambda (_thunk70348_ _name70349_ _tgroup70350_)
        (thread-start! (make-thread _thunk70348_ _name70349_ _tgroup70350_))))
    (define spawn-thread__0
      (lambda (_thunk70355_)
        (let* ((_name70357_ absent-obj) (_tgroup70359_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk70355_ _name70357_ _tgroup70359_))))
    (define spawn-thread__1
      (lambda (_thunk70361_ _name70362_)
        (let ((_tgroup70364_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk70361_ _name70362_ _tgroup70364_))))
    (define spawn-thread
      (lambda _g70417_
        (let ((_g70416_ (let () (declare (not safe)) (##length _g70417_))))
          (cond ((let () (declare (not safe)) (##fx= _g70416_ 1))
                 (apply (lambda (_thunk70355_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk70355_)))
                        _g70417_))
                ((let () (declare (not safe)) (##fx= _g70416_ 2))
                 (apply (lambda (_thunk70361_ _name70362_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk70361_ _name70362_)))
                        _g70417_))
                ((let () (declare (not safe)) (##fx= _g70416_ 3))
                 (apply (lambda (_thunk70366_ _name70367_ _tgroup70368_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk70366_
                             _name70367_
                             _tgroup70368_)))
                        _g70417_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g70417_))))))
    (define thread-local-ref__%
      (lambda (_key70332_ _default70333_)
        (let ((_tab70335_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab70335_ _key70332_ _default70333_))))
    (define thread-local-ref__0
      (lambda (_key70340_)
        (let ((_default70342_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key70340_ _default70342_))))
    (define thread-local-ref
      (lambda _g70419_
        (let ((_g70418_ (let () (declare (not safe)) (##length _g70419_))))
          (cond ((let () (declare (not safe)) (##fx= _g70418_ 1))
                 (apply (lambda (_key70340_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key70340_)))
                        _g70419_))
                ((let () (declare (not safe)) (##fx= _g70418_ 2))
                 (apply (lambda (_key70344_ _default70345_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key70344_ _default70345_)))
                        _g70419_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g70419_))))))
    (define thread-local-get
      (lambda (_key70329_)
        (let () (declare (not safe)) (thread-local-ref__% _key70329_ '#f))))
    (define thread-local-set!
      (lambda (_key70324_ _value70325_)
        (let ((_tab70327_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab70327_ _key70324_ _value70325_))))
    (define thread-local-delete!
      (lambda (_key70320_)
        (let ((_tab70322_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab70322_ _key70320_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr70306_ (current-thread)))
          (if (actor-thread? _thr70306_)
              (let ((_$e70308_ (actor-thread-locals _thr70306_)))
                (if _$e70308_
                    (values _$e70308_)
                    (let ((_tab70311_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr70306_ _tab70311_)
                      _tab70311_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr70306_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e70313_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr70306_))))
                      (if _$e70313_
                          ((lambda (_tab70316_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab70316_)
                           _$e70313_)
                          (let ((_tab70318_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr70306_
                               _tab70318_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab70318_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc70303_)
        (if (let () (declare (not safe)) (procedure? _proc70303_))
            '#!void
            (raise (let ((__obj70412
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj70412
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc70303_ '())))
                     __obj70412)))
        (set! __unhandled-actor-exception-hook _proc70303_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx70291_ _proc70292_)
        (let ((_handler70294_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e70296_)
             (let ((__tmp70420
                    (lambda ()
                      (mutex-unlock! _mx70291_)
                      (_handler70294_ _e70296_))))
               (declare (not safe))
               (with-catch void __tmp70420))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e70296_)))
           (lambda ()
             (mutex-lock! _mx70291_)
             (let ((_result70300_ (_proc70292_)))
               (mutex-unlock! _mx70291_)
               _result70300_))))))
    (define with-dynamic-lock
      (lambda (_mx70286_ _proc70287_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx70286_))
         _proc70287_
         (lambda () (mutex-unlock! _mx70286_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk70267_ _error-port70268_)
        (with-exception-handler
         (let ((_E70270_ (current-exception-handler)))
           (lambda (_exn70272_)
             (continuation-capture
              (lambda (_cont70274_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont70274_
                       _exn70272_
                       _error-port70268_))
                    '#!void)
                (_E70270_ _exn70272_)))))
         _thunk70267_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk70279_)
        (let ((_error-port70281_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk70279_ _error-port70281_))))
    (define with-exception-stack-trace
      (lambda _g70422_
        (let ((_g70421_ (let () (declare (not safe)) (##length _g70422_))))
          (cond ((let () (declare (not safe)) (##fx= _g70421_ 1))
                 (apply (lambda (_thunk70279_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk70279_)))
                        _g70422_))
                ((let () (declare (not safe)) (##fx= _g70421_ 2))
                 (apply (lambda (_thunk70283_ _error-port70284_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk70283_
                             _error-port70284_)))
                        _g70422_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g70422_))))))
    (define dump-stack-trace!__%
      (lambda (_cont70248_ _exn70249_ _error-port70250_)
        (let ((_out70252_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out70252_))
          (display '"*** Unhandled exception in " _out70252_)
          (display (current-thread) _out70252_)
          (newline _out70252_)
          (display-exception _exn70249_ _out70252_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn70249_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out70252_)
                (newline _out70252_)
                (display-continuation-backtrace _cont70248_ _out70252_)))
          (let ((__tmp70423 (get-output-string _out70252_)))
            (declare (not safe))
            (##write-string __tmp70423 _error-port70250_)))))
    (define dump-stack-trace!__0
      (lambda (_cont70257_ _exn70258_)
        (let ((_error-port70260_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont70257_ _exn70258_ _error-port70260_))))
    (define dump-stack-trace!
      (lambda _g70425_
        (let ((_g70424_ (let () (declare (not safe)) (##length _g70425_))))
          (cond ((let () (declare (not safe)) (##fx= _g70424_ 2))
                 (apply (lambda (_cont70257_ _exn70258_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont70257_ _exn70258_)))
                        _g70425_))
                ((let () (declare (not safe)) (##fx= _g70424_ 3))
                 (apply (lambda (_cont70262_ _exn70263_ _error-port70264_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont70262_
                             _exn70263_
                             _error-port70264_)))
                        _g70425_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g70425_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
