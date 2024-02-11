(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1707674929)
  (begin
    (define spawn
      (lambda (_f96473_ . _args96474_)
        (if (let () (declare (not safe)) (procedure? _f96473_))
            '#!void
            (raise (let ((__obj101043
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj101043
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f96473_ '())))
                     __obj101043)))
        (let ()
          (declare (not safe))
          (spawn-actor _f96473_ _args96474_ '#!void '#f))))
    (define spawn/name
      (lambda (_name96469_ _f96470_ . _args96471_)
        (if (let () (declare (not safe)) (procedure? _f96470_))
            '#!void
            (raise (let ((__obj101044
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj101044
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f96470_ '())))
                     __obj101044)))
        (let ()
          (declare (not safe))
          (spawn-actor _f96470_ _args96471_ _name96469_ '#f))))
    (define spawn/group
      (lambda (_name96463_ _f96464_ . _args96465_)
        (if (let () (declare (not safe)) (procedure? _f96464_))
            '#!void
            (raise (let ((__obj101045
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj101045
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f96464_ '())))
                     __obj101045)))
        (let ((_tgroup96467_ (make-thread-group _name96463_)))
          (declare (not safe))
          (spawn-actor _f96464_ _args96465_ _name96463_ _tgroup96467_))))
    (define spawn-actor
      (lambda (_f96436_ _args96437_ _name96438_ _tgroup96439_)
        (letrec ((_thread-main96441_
                  (lambda (_thunk96455_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn96458_)
                         (let ((__tmp101047
                                (lambda (_cont96460_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp101048
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont96460_
                                                _exn96458_))))
                                        (declare (not safe))
                                        (with-catch void __tmp101048))
                                      '#!void)
                                  (let ((__tmp101049
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont96460_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp101049
                                     ##primordial-exception-handler
                                     _exn96458_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp101047)))
                       _thunk96455_)))))
          (let* ((_thunk96444_
                  (if (let () (declare (not safe)) (null? _args96437_))
                      _f96436_
                      (lambda () (apply _f96436_ _args96437_))))
                 (_thunk96447_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk96444_))))
                 (_tgroup96452_
                  (let ((_$e96449_ _tgroup96439_))
                    (if _$e96449_
                        _$e96449_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main96441_ _thunk96447_))
              _name96438_
              _tgroup96452_))))))
    (define spawn-thread__%
      (lambda (_thunk96414_ _name96415_ _tgroup96416_)
        (thread-start! (make-thread _thunk96414_ _name96415_ _tgroup96416_))))
    (define spawn-thread__0
      (lambda (_thunk96421_)
        (let* ((_name96423_ absent-obj) (_tgroup96425_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk96421_ _name96423_ _tgroup96425_))))
    (define spawn-thread__1
      (lambda (_thunk96427_ _name96428_)
        (let ((_tgroup96430_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk96427_ _name96428_ _tgroup96430_))))
    (define spawn-thread
      (lambda _g101051_
        (let ((_g101050_ (let () (declare (not safe)) (##length _g101051_))))
          (cond ((let () (declare (not safe)) (##fx= _g101050_ 1))
                 (apply (lambda (_thunk96421_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk96421_)))
                        _g101051_))
                ((let () (declare (not safe)) (##fx= _g101050_ 2))
                 (apply (lambda (_thunk96427_ _name96428_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk96427_ _name96428_)))
                        _g101051_))
                ((let () (declare (not safe)) (##fx= _g101050_ 3))
                 (apply (lambda (_thunk96432_ _name96433_ _tgroup96434_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk96432_
                             _name96433_
                             _tgroup96434_)))
                        _g101051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g101051_))))))
    (define thread-local-ref__%
      (lambda (_key96398_ _default96399_)
        (let ((_tab96401_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab96401_ _key96398_ _default96399_))))
    (define thread-local-ref__0
      (lambda (_key96406_)
        (let ((_default96408_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key96406_ _default96408_))))
    (define thread-local-ref
      (lambda _g101053_
        (let ((_g101052_ (let () (declare (not safe)) (##length _g101053_))))
          (cond ((let () (declare (not safe)) (##fx= _g101052_ 1))
                 (apply (lambda (_key96406_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key96406_)))
                        _g101053_))
                ((let () (declare (not safe)) (##fx= _g101052_ 2))
                 (apply (lambda (_key96410_ _default96411_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key96410_ _default96411_)))
                        _g101053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g101053_))))))
    (define thread-local-get
      (lambda (_key96395_)
        (let () (declare (not safe)) (thread-local-ref _key96395_ '#f))))
    (define thread-local-set!
      (lambda (_key96390_ _value96391_)
        (let ((_tab96393_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab96393_ _key96390_ _value96391_))))
    (define thread-local-clear!
      (lambda (_key96386_)
        (let ((_tab96388_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab96388_ _key96386_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr96372_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr96372_))
              (let ((_$e96374_ (actor-thread-locals _thr96372_)))
                (if _$e96374_
                    (values _$e96374_)
                    (let ((_tab96377_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr96372_ _tab96377_)
                      _tab96377_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr96372_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e96379_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr96372_ '#f))))
                      (if _$e96379_
                          ((lambda (_tab96382_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab96382_)
                           _$e96379_)
                          (let ((_tab96384_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr96372_
                               _tab96384_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab96384_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc96369_)
        (if (let () (declare (not safe)) (procedure? _proc96369_))
            '#!void
            (raise (let ((__obj101046
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj101046
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc96369_ '())))
                     __obj101046)))
        (set! __unhandled-actor-exception-hook _proc96369_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx96357_ _proc96358_)
        (let ((_handler96360_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e96362_)
             (let ((__tmp101054
                    (lambda ()
                      (mutex-unlock! _mx96357_)
                      (_handler96360_ _e96362_))))
               (declare (not safe))
               (with-catch void __tmp101054))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e96362_)))
           (lambda ()
             (mutex-lock! _mx96357_)
             (let ((_result96366_ (_proc96358_)))
               (mutex-unlock! _mx96357_)
               _result96366_))))))
    (define with-dynamic-lock
      (lambda (_mx96352_ _proc96353_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx96352_))
         _proc96353_
         (lambda () (mutex-unlock! _mx96352_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk96333_ _error-port96334_)
        (with-exception-handler
         (let ((_E96336_ (current-exception-handler)))
           (lambda (_exn96338_)
             (continuation-capture
              (lambda (_cont96340_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont96340_
                       _exn96338_
                       _error-port96334_))
                    '#!void)
                (_E96336_ _exn96338_)))))
         _thunk96333_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk96345_)
        (let ((_error-port96347_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk96345_ _error-port96347_))))
    (define with-exception-stack-trace
      (lambda _g101056_
        (let ((_g101055_ (let () (declare (not safe)) (##length _g101056_))))
          (cond ((let () (declare (not safe)) (##fx= _g101055_ 1))
                 (apply (lambda (_thunk96345_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk96345_)))
                        _g101056_))
                ((let () (declare (not safe)) (##fx= _g101055_ 2))
                 (apply (lambda (_thunk96349_ _error-port96350_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk96349_
                             _error-port96350_)))
                        _g101056_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g101056_))))))
    (define dump-stack-trace!__%
      (lambda (_cont96314_ _exn96315_ _error-port96316_)
        (let ((_out96318_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out96318_))
          (display '"*** Unhandled exception in " _out96318_)
          (display (current-thread) _out96318_)
          (newline _out96318_)
          (display-exception _exn96315_ _out96318_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn96315_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out96318_)
                (newline _out96318_)
                (display-continuation-backtrace _cont96314_ _out96318_)))
          (let ((__tmp101057 (get-output-string _out96318_)))
            (declare (not safe))
            (##write-string __tmp101057 _error-port96316_)))))
    (define dump-stack-trace!__0
      (lambda (_cont96323_ _exn96324_)
        (let ((_error-port96326_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont96323_ _exn96324_ _error-port96326_))))
    (define dump-stack-trace!
      (lambda _g101059_
        (let ((_g101058_ (let () (declare (not safe)) (##length _g101059_))))
          (cond ((let () (declare (not safe)) (##fx= _g101058_ 2))
                 (apply (lambda (_cont96323_ _exn96324_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont96323_ _exn96324_)))
                        _g101059_))
                ((let () (declare (not safe)) (##fx= _g101058_ 3))
                 (apply (lambda (_cont96328_ _exn96329_ _error-port96330_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont96328_
                             _exn96329_
                             _error-port96330_)))
                        _g101059_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g101059_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
