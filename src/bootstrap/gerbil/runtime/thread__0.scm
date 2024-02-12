(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1707738030)
  (begin
    (define spawn
      (lambda (_f96482_ . _args96483_)
        (if (let () (declare (not safe)) (procedure? _f96482_))
            '#!void
            (raise (let ((__obj101052
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj101052
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f96482_ '())))
                     __obj101052)))
        (let ()
          (declare (not safe))
          (spawn-actor _f96482_ _args96483_ '#!void '#f))))
    (define spawn/name
      (lambda (_name96478_ _f96479_ . _args96480_)
        (if (let () (declare (not safe)) (procedure? _f96479_))
            '#!void
            (raise (let ((__obj101053
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj101053
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f96479_ '())))
                     __obj101053)))
        (let ()
          (declare (not safe))
          (spawn-actor _f96479_ _args96480_ _name96478_ '#f))))
    (define spawn/group
      (lambda (_name96472_ _f96473_ . _args96474_)
        (if (let () (declare (not safe)) (procedure? _f96473_))
            '#!void
            (raise (let ((__obj101054
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj101054
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f96473_ '())))
                     __obj101054)))
        (let ((_tgroup96476_ (make-thread-group _name96472_)))
          (declare (not safe))
          (spawn-actor _f96473_ _args96474_ _name96472_ _tgroup96476_))))
    (define spawn-actor
      (lambda (_f96445_ _args96446_ _name96447_ _tgroup96448_)
        (letrec ((_thread-main96450_
                  (lambda (_thunk96464_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn96467_)
                         (let ((__tmp101056
                                (lambda (_cont96469_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp101057
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont96469_
                                                _exn96467_))))
                                        (declare (not safe))
                                        (with-catch void __tmp101057))
                                      '#!void)
                                  (let ((__tmp101058
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont96469_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp101058
                                     ##primordial-exception-handler
                                     _exn96467_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp101056)))
                       _thunk96464_)))))
          (let* ((_thunk96453_
                  (if (let () (declare (not safe)) (null? _args96446_))
                      _f96445_
                      (lambda () (apply _f96445_ _args96446_))))
                 (_thunk96456_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk96453_))))
                 (_tgroup96461_
                  (let ((_$e96458_ _tgroup96448_))
                    (if _$e96458_
                        _$e96458_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main96450_ _thunk96456_))
              _name96447_
              _tgroup96461_))))))
    (define spawn-thread__%
      (lambda (_thunk96423_ _name96424_ _tgroup96425_)
        (thread-start! (make-thread _thunk96423_ _name96424_ _tgroup96425_))))
    (define spawn-thread__0
      (lambda (_thunk96430_)
        (let* ((_name96432_ absent-obj) (_tgroup96434_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk96430_ _name96432_ _tgroup96434_))))
    (define spawn-thread__1
      (lambda (_thunk96436_ _name96437_)
        (let ((_tgroup96439_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk96436_ _name96437_ _tgroup96439_))))
    (define spawn-thread
      (lambda _g101060_
        (let ((_g101059_ (let () (declare (not safe)) (##length _g101060_))))
          (cond ((let () (declare (not safe)) (##fx= _g101059_ 1))
                 (apply (lambda (_thunk96430_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk96430_)))
                        _g101060_))
                ((let () (declare (not safe)) (##fx= _g101059_ 2))
                 (apply (lambda (_thunk96436_ _name96437_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk96436_ _name96437_)))
                        _g101060_))
                ((let () (declare (not safe)) (##fx= _g101059_ 3))
                 (apply (lambda (_thunk96441_ _name96442_ _tgroup96443_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk96441_
                             _name96442_
                             _tgroup96443_)))
                        _g101060_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g101060_))))))
    (define thread-local-ref__%
      (lambda (_key96407_ _default96408_)
        (let ((_tab96410_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab96410_ _key96407_ _default96408_))))
    (define thread-local-ref__0
      (lambda (_key96415_)
        (let ((_default96417_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key96415_ _default96417_))))
    (define thread-local-ref
      (lambda _g101062_
        (let ((_g101061_ (let () (declare (not safe)) (##length _g101062_))))
          (cond ((let () (declare (not safe)) (##fx= _g101061_ 1))
                 (apply (lambda (_key96415_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key96415_)))
                        _g101062_))
                ((let () (declare (not safe)) (##fx= _g101061_ 2))
                 (apply (lambda (_key96419_ _default96420_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key96419_ _default96420_)))
                        _g101062_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g101062_))))))
    (define thread-local-get
      (lambda (_key96404_)
        (let () (declare (not safe)) (thread-local-ref _key96404_ '#f))))
    (define thread-local-set!
      (lambda (_key96399_ _value96400_)
        (let ((_tab96402_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab96402_ _key96399_ _value96400_))))
    (define thread-local-clear!
      (lambda (_key96395_)
        (let ((_tab96397_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab96397_ _key96395_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr96381_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr96381_))
              (let ((_$e96383_ (actor-thread-locals _thr96381_)))
                (if _$e96383_
                    (values _$e96383_)
                    (let ((_tab96386_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr96381_ _tab96386_)
                      _tab96386_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr96381_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e96388_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr96381_ '#f))))
                      (if _$e96388_
                          ((lambda (_tab96391_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab96391_)
                           _$e96388_)
                          (let ((_tab96393_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr96381_
                               _tab96393_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab96393_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc96378_)
        (if (let () (declare (not safe)) (procedure? _proc96378_))
            '#!void
            (raise (let ((__obj101055
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj101055
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc96378_ '())))
                     __obj101055)))
        (set! __unhandled-actor-exception-hook _proc96378_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx96366_ _proc96367_)
        (let ((_handler96369_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e96371_)
             (let ((__tmp101063
                    (lambda ()
                      (mutex-unlock! _mx96366_)
                      (_handler96369_ _e96371_))))
               (declare (not safe))
               (with-catch void __tmp101063))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e96371_)))
           (lambda ()
             (mutex-lock! _mx96366_)
             (let ((_result96375_ (_proc96367_)))
               (mutex-unlock! _mx96366_)
               _result96375_))))))
    (define with-dynamic-lock
      (lambda (_mx96361_ _proc96362_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx96361_))
         _proc96362_
         (lambda () (mutex-unlock! _mx96361_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk96342_ _error-port96343_)
        (with-exception-handler
         (let ((_E96345_ (current-exception-handler)))
           (lambda (_exn96347_)
             (continuation-capture
              (lambda (_cont96349_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont96349_
                       _exn96347_
                       _error-port96343_))
                    '#!void)
                (_E96345_ _exn96347_)))))
         _thunk96342_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk96354_)
        (let ((_error-port96356_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk96354_ _error-port96356_))))
    (define with-exception-stack-trace
      (lambda _g101065_
        (let ((_g101064_ (let () (declare (not safe)) (##length _g101065_))))
          (cond ((let () (declare (not safe)) (##fx= _g101064_ 1))
                 (apply (lambda (_thunk96354_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk96354_)))
                        _g101065_))
                ((let () (declare (not safe)) (##fx= _g101064_ 2))
                 (apply (lambda (_thunk96358_ _error-port96359_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk96358_
                             _error-port96359_)))
                        _g101065_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g101065_))))))
    (define dump-stack-trace!__%
      (lambda (_cont96323_ _exn96324_ _error-port96325_)
        (let ((_out96327_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out96327_))
          (display '"*** Unhandled exception in " _out96327_)
          (display (current-thread) _out96327_)
          (newline _out96327_)
          (display-exception _exn96324_ _out96327_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn96324_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out96327_)
                (newline _out96327_)
                (display-continuation-backtrace _cont96323_ _out96327_)))
          (let ((__tmp101066 (get-output-string _out96327_)))
            (declare (not safe))
            (##write-string __tmp101066 _error-port96325_)))))
    (define dump-stack-trace!__0
      (lambda (_cont96332_ _exn96333_)
        (let ((_error-port96335_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont96332_ _exn96333_ _error-port96335_))))
    (define dump-stack-trace!
      (lambda _g101068_
        (let ((_g101067_ (let () (declare (not safe)) (##length _g101068_))))
          (cond ((let () (declare (not safe)) (##fx= _g101067_ 2))
                 (apply (lambda (_cont96332_ _exn96333_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont96332_ _exn96333_)))
                        _g101068_))
                ((let () (declare (not safe)) (##fx= _g101067_ 3))
                 (apply (lambda (_cont96337_ _exn96338_ _error-port96339_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont96337_
                             _exn96338_
                             _error-port96339_)))
                        _g101068_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g101068_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
