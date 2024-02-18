(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1708280332)
  (begin
    (define spawn
      (lambda (_f108820_ . _args108821_)
        (if (let () (declare (not safe)) (procedure? _f108820_))
            '#!void
            (raise (let ((__obj112889
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj112889
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f108820_ '())))
                     __obj112889)))
        (let ()
          (declare (not safe))
          (spawn-actor _f108820_ _args108821_ '#!void '#f))))
    (define spawn/name
      (lambda (_name108816_ _f108817_ . _args108818_)
        (if (let () (declare (not safe)) (procedure? _f108817_))
            '#!void
            (raise (let ((__obj112890
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj112890
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f108817_ '())))
                     __obj112890)))
        (let ()
          (declare (not safe))
          (spawn-actor _f108817_ _args108818_ _name108816_ '#f))))
    (define spawn/group
      (lambda (_name108810_ _f108811_ . _args108812_)
        (if (let () (declare (not safe)) (procedure? _f108811_))
            '#!void
            (raise (let ((__obj112891
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj112891
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f108811_ '())))
                     __obj112891)))
        (let ((_tgroup108814_ (make-thread-group _name108810_)))
          (declare (not safe))
          (spawn-actor _f108811_ _args108812_ _name108810_ _tgroup108814_))))
    (define spawn-actor
      (lambda (_f108783_ _args108784_ _name108785_ _tgroup108786_)
        (letrec ((_thread-main108788_
                  (lambda (_thunk108802_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn108805_)
                         (let ((__tmp112893
                                (lambda (_cont108807_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp112894
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont108807_
                                                _exn108805_))))
                                        (declare (not safe))
                                        (with-catch void __tmp112894))
                                      '#!void)
                                  (let ((__tmp112895
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last
                                            _cont108807_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp112895
                                     ##primordial-exception-handler
                                     _exn108805_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp112893)))
                       _thunk108802_)))))
          (let* ((_thunk108791_
                  (if (let () (declare (not safe)) (null? _args108784_))
                      _f108783_
                      (lambda () (apply _f108783_ _args108784_))))
                 (_thunk108794_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk108791_))))
                 (_tgroup108799_
                  (let ((_$e108796_ _tgroup108786_))
                    (if _$e108796_
                        _$e108796_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main108788_ _thunk108794_))
              _name108785_
              _tgroup108799_))))))
    (define spawn-thread__%
      (lambda (_thunk108761_ _name108762_ _tgroup108763_)
        (thread-start!
         (make-thread _thunk108761_ _name108762_ _tgroup108763_))))
    (define spawn-thread__0
      (lambda (_thunk108768_)
        (let* ((_name108770_ absent-obj) (_tgroup108772_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk108768_ _name108770_ _tgroup108772_))))
    (define spawn-thread__1
      (lambda (_thunk108774_ _name108775_)
        (let ((_tgroup108777_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk108774_ _name108775_ _tgroup108777_))))
    (define spawn-thread
      (lambda _g112897_
        (let ((_g112896_ (let () (declare (not safe)) (##length _g112897_))))
          (cond ((let () (declare (not safe)) (##fx= _g112896_ 1))
                 (apply (lambda (_thunk108768_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk108768_)))
                        _g112897_))
                ((let () (declare (not safe)) (##fx= _g112896_ 2))
                 (apply (lambda (_thunk108774_ _name108775_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk108774_ _name108775_)))
                        _g112897_))
                ((let () (declare (not safe)) (##fx= _g112896_ 3))
                 (apply (lambda (_thunk108779_ _name108780_ _tgroup108781_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk108779_
                             _name108780_
                             _tgroup108781_)))
                        _g112897_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g112897_))))))
    (define thread-local-ref__%
      (lambda (_key108745_ _default108746_)
        (let ((_tab108748_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab108748_ _key108745_ _default108746_))))
    (define thread-local-ref__0
      (lambda (_key108753_)
        (let ((_default108755_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key108753_ _default108755_))))
    (define thread-local-ref
      (lambda _g112899_
        (let ((_g112898_ (let () (declare (not safe)) (##length _g112899_))))
          (cond ((let () (declare (not safe)) (##fx= _g112898_ 1))
                 (apply (lambda (_key108753_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key108753_)))
                        _g112899_))
                ((let () (declare (not safe)) (##fx= _g112898_ 2))
                 (apply (lambda (_key108757_ _default108758_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key108757_ _default108758_)))
                        _g112899_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g112899_))))))
    (define thread-local-get
      (lambda (_key108742_)
        (let () (declare (not safe)) (thread-local-ref _key108742_ '#f))))
    (define thread-local-set!
      (lambda (_key108737_ _value108738_)
        (let ((_tab108740_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab108740_ _key108737_ _value108738_))))
    (define thread-local-clear!
      (lambda (_key108733_)
        (let ((_tab108735_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab108735_ _key108733_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr108719_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr108719_))
              (let ((_$e108721_ (actor-thread-locals _thr108719_)))
                (if _$e108721_
                    (values _$e108721_)
                    (let ((_tab108724_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr108719_ _tab108724_)
                      _tab108724_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr108719_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e108726_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr108719_))))
                      (if _$e108726_
                          ((lambda (_tab108729_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab108729_)
                           _$e108726_)
                          (let ((_tab108731_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr108719_
                               _tab108731_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab108731_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc108716_)
        (if (let () (declare (not safe)) (procedure? _proc108716_))
            '#!void
            (raise (let ((__obj112892
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj112892
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc108716_ '())))
                     __obj112892)))
        (set! __unhandled-actor-exception-hook _proc108716_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx108704_ _proc108705_)
        (let ((_handler108707_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e108709_)
             (let ((__tmp112900
                    (lambda ()
                      (mutex-unlock! _mx108704_)
                      (_handler108707_ _e108709_))))
               (declare (not safe))
               (with-catch void __tmp112900))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e108709_)))
           (lambda ()
             (mutex-lock! _mx108704_)
             (let ((_result108713_ (_proc108705_)))
               (mutex-unlock! _mx108704_)
               _result108713_))))))
    (define with-dynamic-lock
      (lambda (_mx108699_ _proc108700_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx108699_))
         _proc108700_
         (lambda () (mutex-unlock! _mx108699_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk108680_ _error-port108681_)
        (with-exception-handler
         (let ((_E108683_ (current-exception-handler)))
           (lambda (_exn108685_)
             (continuation-capture
              (lambda (_cont108687_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont108687_
                       _exn108685_
                       _error-port108681_))
                    '#!void)
                (_E108683_ _exn108685_)))))
         _thunk108680_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk108692_)
        (let ((_error-port108694_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk108692_ _error-port108694_))))
    (define with-exception-stack-trace
      (lambda _g112902_
        (let ((_g112901_ (let () (declare (not safe)) (##length _g112902_))))
          (cond ((let () (declare (not safe)) (##fx= _g112901_ 1))
                 (apply (lambda (_thunk108692_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk108692_)))
                        _g112902_))
                ((let () (declare (not safe)) (##fx= _g112901_ 2))
                 (apply (lambda (_thunk108696_ _error-port108697_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk108696_
                             _error-port108697_)))
                        _g112902_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g112902_))))))
    (define dump-stack-trace!__%
      (lambda (_cont108661_ _exn108662_ _error-port108663_)
        (let ((_out108665_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out108665_))
          (display '"*** Unhandled exception in " _out108665_)
          (display (current-thread) _out108665_)
          (newline _out108665_)
          (display-exception _exn108662_ _out108665_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn108662_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out108665_)
                (newline _out108665_)
                (display-continuation-backtrace _cont108661_ _out108665_)))
          (let ((__tmp112903 (get-output-string _out108665_)))
            (declare (not safe))
            (##write-string __tmp112903 _error-port108663_)))))
    (define dump-stack-trace!__0
      (lambda (_cont108670_ _exn108671_)
        (let ((_error-port108673_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont108670_ _exn108671_ _error-port108673_))))
    (define dump-stack-trace!
      (lambda _g112905_
        (let ((_g112904_ (let () (declare (not safe)) (##length _g112905_))))
          (cond ((let () (declare (not safe)) (##fx= _g112904_ 2))
                 (apply (lambda (_cont108670_ _exn108671_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont108670_ _exn108671_)))
                        _g112905_))
                ((let () (declare (not safe)) (##fx= _g112904_ 3))
                 (apply (lambda (_cont108675_ _exn108676_ _error-port108677_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont108675_
                             _exn108676_
                             _error-port108677_)))
                        _g112905_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g112905_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
