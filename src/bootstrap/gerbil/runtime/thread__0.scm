(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1708165428)
  (begin
    (define spawn
      (lambda (_f104117_ . _args104118_)
        (if (let () (declare (not safe)) (procedure? _f104117_))
            '#!void
            (raise (let ((__obj108687
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj108687
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f104117_ '())))
                     __obj108687)))
        (let ()
          (declare (not safe))
          (spawn-actor _f104117_ _args104118_ '#!void '#f))))
    (define spawn/name
      (lambda (_name104113_ _f104114_ . _args104115_)
        (if (let () (declare (not safe)) (procedure? _f104114_))
            '#!void
            (raise (let ((__obj108688
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj108688
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f104114_ '())))
                     __obj108688)))
        (let ()
          (declare (not safe))
          (spawn-actor _f104114_ _args104115_ _name104113_ '#f))))
    (define spawn/group
      (lambda (_name104107_ _f104108_ . _args104109_)
        (if (let () (declare (not safe)) (procedure? _f104108_))
            '#!void
            (raise (let ((__obj108689
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj108689
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f104108_ '())))
                     __obj108689)))
        (let ((_tgroup104111_ (make-thread-group _name104107_)))
          (declare (not safe))
          (spawn-actor _f104108_ _args104109_ _name104107_ _tgroup104111_))))
    (define spawn-actor
      (lambda (_f104080_ _args104081_ _name104082_ _tgroup104083_)
        (letrec ((_thread-main104085_
                  (lambda (_thunk104099_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn104102_)
                         (let ((__tmp108691
                                (lambda (_cont104104_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp108692
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont104104_
                                                _exn104102_))))
                                        (declare (not safe))
                                        (with-catch void __tmp108692))
                                      '#!void)
                                  (let ((__tmp108693
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last
                                            _cont104104_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp108693
                                     ##primordial-exception-handler
                                     _exn104102_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp108691)))
                       _thunk104099_)))))
          (let* ((_thunk104088_
                  (if (let () (declare (not safe)) (null? _args104081_))
                      _f104080_
                      (lambda () (apply _f104080_ _args104081_))))
                 (_thunk104091_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk104088_))))
                 (_tgroup104096_
                  (let ((_$e104093_ _tgroup104083_))
                    (if _$e104093_
                        _$e104093_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main104085_ _thunk104091_))
              _name104082_
              _tgroup104096_))))))
    (define spawn-thread__%
      (lambda (_thunk104058_ _name104059_ _tgroup104060_)
        (thread-start!
         (make-thread _thunk104058_ _name104059_ _tgroup104060_))))
    (define spawn-thread__0
      (lambda (_thunk104065_)
        (let* ((_name104067_ absent-obj) (_tgroup104069_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk104065_ _name104067_ _tgroup104069_))))
    (define spawn-thread__1
      (lambda (_thunk104071_ _name104072_)
        (let ((_tgroup104074_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk104071_ _name104072_ _tgroup104074_))))
    (define spawn-thread
      (lambda _g108695_
        (let ((_g108694_ (let () (declare (not safe)) (##length _g108695_))))
          (cond ((let () (declare (not safe)) (##fx= _g108694_ 1))
                 (apply (lambda (_thunk104065_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk104065_)))
                        _g108695_))
                ((let () (declare (not safe)) (##fx= _g108694_ 2))
                 (apply (lambda (_thunk104071_ _name104072_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk104071_ _name104072_)))
                        _g108695_))
                ((let () (declare (not safe)) (##fx= _g108694_ 3))
                 (apply (lambda (_thunk104076_ _name104077_ _tgroup104078_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk104076_
                             _name104077_
                             _tgroup104078_)))
                        _g108695_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g108695_))))))
    (define thread-local-ref__%
      (lambda (_key104042_ _default104043_)
        (let ((_tab104045_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab104045_ _key104042_ _default104043_))))
    (define thread-local-ref__0
      (lambda (_key104050_)
        (let ((_default104052_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key104050_ _default104052_))))
    (define thread-local-ref
      (lambda _g108697_
        (let ((_g108696_ (let () (declare (not safe)) (##length _g108697_))))
          (cond ((let () (declare (not safe)) (##fx= _g108696_ 1))
                 (apply (lambda (_key104050_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key104050_)))
                        _g108697_))
                ((let () (declare (not safe)) (##fx= _g108696_ 2))
                 (apply (lambda (_key104054_ _default104055_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key104054_ _default104055_)))
                        _g108697_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g108697_))))))
    (define thread-local-get
      (lambda (_key104039_)
        (let () (declare (not safe)) (thread-local-ref _key104039_ '#f))))
    (define thread-local-set!
      (lambda (_key104034_ _value104035_)
        (let ((_tab104037_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab104037_ _key104034_ _value104035_))))
    (define thread-local-clear!
      (lambda (_key104030_)
        (let ((_tab104032_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab104032_ _key104030_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr104016_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr104016_))
              (let ((_$e104018_ (actor-thread-locals _thr104016_)))
                (if _$e104018_
                    (values _$e104018_)
                    (let ((_tab104021_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr104016_ _tab104021_)
                      _tab104021_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr104016_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e104023_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr104016_ '#f))))
                      (if _$e104023_
                          ((lambda (_tab104026_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab104026_)
                           _$e104023_)
                          (let ((_tab104028_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr104016_
                               _tab104028_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab104028_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc104013_)
        (if (let () (declare (not safe)) (procedure? _proc104013_))
            '#!void
            (raise (let ((__obj108690
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj108690
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc104013_ '())))
                     __obj108690)))
        (set! __unhandled-actor-exception-hook _proc104013_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx104001_ _proc104002_)
        (let ((_handler104004_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e104006_)
             (let ((__tmp108698
                    (lambda ()
                      (mutex-unlock! _mx104001_)
                      (_handler104004_ _e104006_))))
               (declare (not safe))
               (with-catch void __tmp108698))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e104006_)))
           (lambda ()
             (mutex-lock! _mx104001_)
             (let ((_result104010_ (_proc104002_)))
               (mutex-unlock! _mx104001_)
               _result104010_))))))
    (define with-dynamic-lock
      (lambda (_mx103996_ _proc103997_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx103996_))
         _proc103997_
         (lambda () (mutex-unlock! _mx103996_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk103977_ _error-port103978_)
        (with-exception-handler
         (let ((_E103980_ (current-exception-handler)))
           (lambda (_exn103982_)
             (continuation-capture
              (lambda (_cont103984_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont103984_
                       _exn103982_
                       _error-port103978_))
                    '#!void)
                (_E103980_ _exn103982_)))))
         _thunk103977_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk103989_)
        (let ((_error-port103991_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk103989_ _error-port103991_))))
    (define with-exception-stack-trace
      (lambda _g108700_
        (let ((_g108699_ (let () (declare (not safe)) (##length _g108700_))))
          (cond ((let () (declare (not safe)) (##fx= _g108699_ 1))
                 (apply (lambda (_thunk103989_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk103989_)))
                        _g108700_))
                ((let () (declare (not safe)) (##fx= _g108699_ 2))
                 (apply (lambda (_thunk103993_ _error-port103994_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk103993_
                             _error-port103994_)))
                        _g108700_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g108700_))))))
    (define dump-stack-trace!__%
      (lambda (_cont103958_ _exn103959_ _error-port103960_)
        (let ((_out103962_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out103962_))
          (display '"*** Unhandled exception in " _out103962_)
          (display (current-thread) _out103962_)
          (newline _out103962_)
          (display-exception _exn103959_ _out103962_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn103959_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out103962_)
                (newline _out103962_)
                (display-continuation-backtrace _cont103958_ _out103962_)))
          (let ((__tmp108701 (get-output-string _out103962_)))
            (declare (not safe))
            (##write-string __tmp108701 _error-port103960_)))))
    (define dump-stack-trace!__0
      (lambda (_cont103967_ _exn103968_)
        (let ((_error-port103970_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont103967_ _exn103968_ _error-port103970_))))
    (define dump-stack-trace!
      (lambda _g108703_
        (let ((_g108702_ (let () (declare (not safe)) (##length _g108703_))))
          (cond ((let () (declare (not safe)) (##fx= _g108702_ 2))
                 (apply (lambda (_cont103967_ _exn103968_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont103967_ _exn103968_)))
                        _g108703_))
                ((let () (declare (not safe)) (##fx= _g108702_ 3))
                 (apply (lambda (_cont103972_ _exn103973_ _error-port103974_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont103972_
                             _exn103973_
                             _error-port103974_)))
                        _g108703_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g108703_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
