(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1696372335)
  (begin
    (define spawn
      (lambda (_f13130_ . _args13131_)
        (if (let () (declare (not safe)) (procedure? _f13130_))
            '#!void
            (raise (let ((__tmp13132
                          (let () (declare (not safe)) (cons _f13130_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      __tmp13132))))
        (let ()
          (declare (not safe))
          (spawn-actor _f13130_ _args13131_ '#!void '#f))))
    (define spawn/name
      (lambda (_name13126_ _f13127_ . _args13128_)
        (if (let () (declare (not safe)) (procedure? _f13127_))
            '#!void
            (raise (let ((__tmp13133
                          (let () (declare (not safe)) (cons _f13127_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      __tmp13133))))
        (let ()
          (declare (not safe))
          (spawn-actor _f13127_ _args13128_ _name13126_ '#f))))
    (define spawn/group
      (lambda (_name13120_ _f13121_ . _args13122_)
        (if (let () (declare (not safe)) (procedure? _f13121_))
            '#!void
            (raise (let ((__tmp13134
                          (let () (declare (not safe)) (cons _f13121_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      __tmp13134))))
        (let ((_tgroup13124_ (make-thread-group _name13120_)))
          (declare (not safe))
          (spawn-actor _f13121_ _args13122_ _name13120_ _tgroup13124_))))
    (define spawn-actor
      (lambda (_f13093_ _args13094_ _name13095_ _tgroup13096_)
        (letrec ((_thread-main13098_
                  (lambda (_thunk13112_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn13115_)
                         (let ((__tmp13135
                                (lambda (_cont13117_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp13136
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont13117_
                                                _exn13115_))))
                                        (declare (not safe))
                                        (with-catch void __tmp13136))
                                      '#!void)
                                  (let ((__tmp13137
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont13117_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp13137
                                     ##primordial-exception-handler
                                     _exn13115_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp13135)))
                       _thunk13112_)))))
          (let* ((_thunk13101_
                  (if (let () (declare (not safe)) (null? _args13094_))
                      _f13093_
                      (lambda () (apply _f13093_ _args13094_))))
                 (_thunk13104_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk13101_))))
                 (_tgroup13109_
                  (let ((_$e13106_ _tgroup13096_))
                    (if _$e13106_
                        _$e13106_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main13098_ _thunk13104_))
              _name13095_
              _tgroup13109_))))))
    (define spawn-thread__%
      (lambda (_thunk13071_ _name13072_ _tgroup13073_)
        (thread-start! (make-thread _thunk13071_ _name13072_ _tgroup13073_))))
    (define spawn-thread__0
      (lambda (_thunk13078_)
        (let* ((_name13080_ absent-obj) (_tgroup13082_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk13078_ _name13080_ _tgroup13082_))))
    (define spawn-thread__1
      (lambda (_thunk13084_ _name13085_)
        (let ((_tgroup13087_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk13084_ _name13085_ _tgroup13087_))))
    (define spawn-thread
      (lambda _g13139_
        (let ((_g13138_ (let () (declare (not safe)) (##length _g13139_))))
          (cond ((let () (declare (not safe)) (##fx= _g13138_ 1))
                 (apply (lambda (_thunk13078_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk13078_)))
                        _g13139_))
                ((let () (declare (not safe)) (##fx= _g13138_ 2))
                 (apply (lambda (_thunk13084_ _name13085_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk13084_ _name13085_)))
                        _g13139_))
                ((let () (declare (not safe)) (##fx= _g13138_ 3))
                 (apply (lambda (_thunk13089_ _name13090_ _tgroup13091_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk13089_
                             _name13090_
                             _tgroup13091_)))
                        _g13139_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g13139_))))))
    (define thread-local-ref__%
      (lambda (_key13055_ _default13056_)
        (let ((_tab13058_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab13058_ _key13055_ _default13056_))))
    (define thread-local-ref__0
      (lambda (_key13063_)
        (let ((_default13065_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key13063_ _default13065_))))
    (define thread-local-ref
      (lambda _g13141_
        (let ((_g13140_ (let () (declare (not safe)) (##length _g13141_))))
          (cond ((let () (declare (not safe)) (##fx= _g13140_ 1))
                 (apply (lambda (_key13063_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key13063_)))
                        _g13141_))
                ((let () (declare (not safe)) (##fx= _g13140_ 2))
                 (apply (lambda (_key13067_ _default13068_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key13067_ _default13068_)))
                        _g13141_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g13141_))))))
    (define thread-local-get
      (lambda (_key13052_)
        (let () (declare (not safe)) (thread-local-ref _key13052_ '#f))))
    (define thread-local-set!
      (lambda (_key13047_ _value13048_)
        (let ((_tab13050_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab13050_ _key13047_ _value13048_))))
    (define thread-local-clear!
      (lambda (_key13043_)
        (let ((_tab13045_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab13045_ _key13043_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr13029_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr13029_))
              (let ((_$e13031_ (actor-thread-locals _thr13029_)))
                (if _$e13031_
                    (values _$e13031_)
                    (let ((_tab13034_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr13029_ _tab13034_)
                      _tab13034_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr13029_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e13036_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr13029_ '#f))))
                      (if _$e13036_
                          ((lambda (_tab13039_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab13039_)
                           _$e13036_)
                          (let ((_tab13041_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr13029_
                               _tab13041_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab13041_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc13026_)
        (if (let () (declare (not safe)) (procedure? _proc13026_))
            '#!void
            (raise (let ((__tmp13142
                          (let ()
                            (declare (not safe))
                            (cons _proc13026_ '()))))
                     (declare (not safe))
                     (make-class-instance
                      Error::t
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      __tmp13142))))
        (set! __unhandled-actor-exception-hook _proc13026_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx13014_ _proc13015_)
        (let ((_handler13017_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e13019_)
             (let ((__tmp13143
                    (lambda ()
                      (mutex-unlock! _mx13014_)
                      (_handler13017_ _e13019_))))
               (declare (not safe))
               (with-catch void __tmp13143))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e13019_)))
           (lambda ()
             (mutex-lock! _mx13014_)
             (let ((_result13023_ (_proc13015_)))
               (mutex-unlock! _mx13014_)
               _result13023_))))))
    (define with-dynamic-lock
      (lambda (_mx13009_ _proc13010_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx13009_))
         _proc13010_
         (lambda () (mutex-unlock! _mx13009_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk12990_ _error-port12991_)
        (with-exception-handler
         (let ((_E12993_ (current-exception-handler)))
           (lambda (_exn12995_)
             (continuation-capture
              (lambda (_cont12997_)
                (let ()
                  (declare (not safe))
                  (dump-stack-trace!__%
                   _cont12997_
                   _exn12995_
                   _error-port12991_))
                (_E12993_ _exn12995_)))))
         _thunk12990_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk13002_)
        (let ((_error-port13004_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk13002_ _error-port13004_))))
    (define with-exception-stack-trace
      (lambda _g13145_
        (let ((_g13144_ (let () (declare (not safe)) (##length _g13145_))))
          (cond ((let () (declare (not safe)) (##fx= _g13144_ 1))
                 (apply (lambda (_thunk13002_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk13002_)))
                        _g13145_))
                ((let () (declare (not safe)) (##fx= _g13144_ 2))
                 (apply (lambda (_thunk13006_ _error-port13007_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk13006_
                             _error-port13007_)))
                        _g13145_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g13145_))))))
    (define dump-stack-trace!__%
      (lambda (_cont12971_ _exn12972_ _error-port12973_)
        (let ((_out12975_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out12975_))
          (display '"*** Unhandled exception in " _out12975_)
          (display (current-thread) _out12975_)
          (newline _out12975_)
          (display-exception _exn12972_ _out12975_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn12972_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out12975_)
                (newline _out12975_)
                (display-continuation-backtrace _cont12971_ _out12975_)))
          (let ((__tmp13146 (get-output-string _out12975_)))
            (declare (not safe))
            (##write-string __tmp13146 _error-port12973_)))))
    (define dump-stack-trace!__0
      (lambda (_cont12980_ _exn12981_)
        (let ((_error-port12983_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont12980_ _exn12981_ _error-port12983_))))
    (define dump-stack-trace!
      (lambda _g13148_
        (let ((_g13147_ (let () (declare (not safe)) (##length _g13148_))))
          (cond ((let () (declare (not safe)) (##fx= _g13147_ 2))
                 (apply (lambda (_cont12980_ _exn12981_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont12980_ _exn12981_)))
                        _g13148_))
                ((let () (declare (not safe)) (##fx= _g13147_ 3))
                 (apply (lambda (_cont12985_ _exn12986_ _error-port12987_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont12985_
                             _exn12986_
                             _error-port12987_)))
                        _g13148_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g13148_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
