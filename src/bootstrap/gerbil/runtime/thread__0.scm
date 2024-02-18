(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1708271168)
  (begin
    (define spawn
      (lambda (_f108792_ . _args108793_)
        (if (let () (declare (not safe)) (procedure? _f108792_))
            '#!void
            (raise (let ((__obj112861
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj112861
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f108792_ '())))
                     __obj112861)))
        (let ()
          (declare (not safe))
          (spawn-actor _f108792_ _args108793_ '#!void '#f))))
    (define spawn/name
      (lambda (_name108788_ _f108789_ . _args108790_)
        (if (let () (declare (not safe)) (procedure? _f108789_))
            '#!void
            (raise (let ((__obj112862
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj112862
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f108789_ '())))
                     __obj112862)))
        (let ()
          (declare (not safe))
          (spawn-actor _f108789_ _args108790_ _name108788_ '#f))))
    (define spawn/group
      (lambda (_name108782_ _f108783_ . _args108784_)
        (if (let () (declare (not safe)) (procedure? _f108783_))
            '#!void
            (raise (let ((__obj112863
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj112863
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f108783_ '())))
                     __obj112863)))
        (let ((_tgroup108786_ (make-thread-group _name108782_)))
          (declare (not safe))
          (spawn-actor _f108783_ _args108784_ _name108782_ _tgroup108786_))))
    (define spawn-actor
      (lambda (_f108755_ _args108756_ _name108757_ _tgroup108758_)
        (letrec ((_thread-main108760_
                  (lambda (_thunk108774_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn108777_)
                         (let ((__tmp112865
                                (lambda (_cont108779_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp112866
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont108779_
                                                _exn108777_))))
                                        (declare (not safe))
                                        (with-catch void __tmp112866))
                                      '#!void)
                                  (let ((__tmp112867
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last
                                            _cont108779_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp112867
                                     ##primordial-exception-handler
                                     _exn108777_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp112865)))
                       _thunk108774_)))))
          (let* ((_thunk108763_
                  (if (let () (declare (not safe)) (null? _args108756_))
                      _f108755_
                      (lambda () (apply _f108755_ _args108756_))))
                 (_thunk108766_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk108763_))))
                 (_tgroup108771_
                  (let ((_$e108768_ _tgroup108758_))
                    (if _$e108768_
                        _$e108768_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main108760_ _thunk108766_))
              _name108757_
              _tgroup108771_))))))
    (define spawn-thread__%
      (lambda (_thunk108733_ _name108734_ _tgroup108735_)
        (thread-start!
         (make-thread _thunk108733_ _name108734_ _tgroup108735_))))
    (define spawn-thread__0
      (lambda (_thunk108740_)
        (let* ((_name108742_ absent-obj) (_tgroup108744_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk108740_ _name108742_ _tgroup108744_))))
    (define spawn-thread__1
      (lambda (_thunk108746_ _name108747_)
        (let ((_tgroup108749_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk108746_ _name108747_ _tgroup108749_))))
    (define spawn-thread
      (lambda _g112869_
        (let ((_g112868_ (let () (declare (not safe)) (##length _g112869_))))
          (cond ((let () (declare (not safe)) (##fx= _g112868_ 1))
                 (apply (lambda (_thunk108740_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk108740_)))
                        _g112869_))
                ((let () (declare (not safe)) (##fx= _g112868_ 2))
                 (apply (lambda (_thunk108746_ _name108747_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk108746_ _name108747_)))
                        _g112869_))
                ((let () (declare (not safe)) (##fx= _g112868_ 3))
                 (apply (lambda (_thunk108751_ _name108752_ _tgroup108753_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk108751_
                             _name108752_
                             _tgroup108753_)))
                        _g112869_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g112869_))))))
    (define thread-local-ref__%
      (lambda (_key108717_ _default108718_)
        (let ((_tab108720_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab108720_ _key108717_ _default108718_))))
    (define thread-local-ref__0
      (lambda (_key108725_)
        (let ((_default108727_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key108725_ _default108727_))))
    (define thread-local-ref
      (lambda _g112871_
        (let ((_g112870_ (let () (declare (not safe)) (##length _g112871_))))
          (cond ((let () (declare (not safe)) (##fx= _g112870_ 1))
                 (apply (lambda (_key108725_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key108725_)))
                        _g112871_))
                ((let () (declare (not safe)) (##fx= _g112870_ 2))
                 (apply (lambda (_key108729_ _default108730_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key108729_ _default108730_)))
                        _g112871_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g112871_))))))
    (define thread-local-get
      (lambda (_key108714_)
        (let () (declare (not safe)) (thread-local-ref _key108714_ '#f))))
    (define thread-local-set!
      (lambda (_key108709_ _value108710_)
        (let ((_tab108712_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab108712_ _key108709_ _value108710_))))
    (define thread-local-clear!
      (lambda (_key108705_)
        (let ((_tab108707_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab108707_ _key108705_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr108691_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr108691_))
              (let ((_$e108693_ (actor-thread-locals _thr108691_)))
                (if _$e108693_
                    (values _$e108693_)
                    (let ((_tab108696_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr108691_ _tab108696_)
                      _tab108696_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr108691_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e108698_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr108691_))))
                      (if _$e108698_
                          ((lambda (_tab108701_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab108701_)
                           _$e108698_)
                          (let ((_tab108703_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr108691_
                               _tab108703_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab108703_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc108688_)
        (if (let () (declare (not safe)) (procedure? _proc108688_))
            '#!void
            (raise (let ((__obj112864
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj112864
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc108688_ '())))
                     __obj112864)))
        (set! __unhandled-actor-exception-hook _proc108688_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx108676_ _proc108677_)
        (let ((_handler108679_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e108681_)
             (let ((__tmp112872
                    (lambda ()
                      (mutex-unlock! _mx108676_)
                      (_handler108679_ _e108681_))))
               (declare (not safe))
               (with-catch void __tmp112872))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e108681_)))
           (lambda ()
             (mutex-lock! _mx108676_)
             (let ((_result108685_ (_proc108677_)))
               (mutex-unlock! _mx108676_)
               _result108685_))))))
    (define with-dynamic-lock
      (lambda (_mx108671_ _proc108672_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx108671_))
         _proc108672_
         (lambda () (mutex-unlock! _mx108671_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk108652_ _error-port108653_)
        (with-exception-handler
         (let ((_E108655_ (current-exception-handler)))
           (lambda (_exn108657_)
             (continuation-capture
              (lambda (_cont108659_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont108659_
                       _exn108657_
                       _error-port108653_))
                    '#!void)
                (_E108655_ _exn108657_)))))
         _thunk108652_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk108664_)
        (let ((_error-port108666_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk108664_ _error-port108666_))))
    (define with-exception-stack-trace
      (lambda _g112874_
        (let ((_g112873_ (let () (declare (not safe)) (##length _g112874_))))
          (cond ((let () (declare (not safe)) (##fx= _g112873_ 1))
                 (apply (lambda (_thunk108664_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk108664_)))
                        _g112874_))
                ((let () (declare (not safe)) (##fx= _g112873_ 2))
                 (apply (lambda (_thunk108668_ _error-port108669_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk108668_
                             _error-port108669_)))
                        _g112874_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g112874_))))))
    (define dump-stack-trace!__%
      (lambda (_cont108633_ _exn108634_ _error-port108635_)
        (let ((_out108637_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out108637_))
          (display '"*** Unhandled exception in " _out108637_)
          (display (current-thread) _out108637_)
          (newline _out108637_)
          (display-exception _exn108634_ _out108637_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn108634_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out108637_)
                (newline _out108637_)
                (display-continuation-backtrace _cont108633_ _out108637_)))
          (let ((__tmp112875 (get-output-string _out108637_)))
            (declare (not safe))
            (##write-string __tmp112875 _error-port108635_)))))
    (define dump-stack-trace!__0
      (lambda (_cont108642_ _exn108643_)
        (let ((_error-port108645_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont108642_ _exn108643_ _error-port108645_))))
    (define dump-stack-trace!
      (lambda _g112877_
        (let ((_g112876_ (let () (declare (not safe)) (##length _g112877_))))
          (cond ((let () (declare (not safe)) (##fx= _g112876_ 2))
                 (apply (lambda (_cont108642_ _exn108643_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont108642_ _exn108643_)))
                        _g112877_))
                ((let () (declare (not safe)) (##fx= _g112876_ 3))
                 (apply (lambda (_cont108647_ _exn108648_ _error-port108649_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont108647_
                             _exn108648_
                             _error-port108649_)))
                        _g112877_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g112877_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
