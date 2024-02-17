(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1708202846)
  (begin
    (define spawn
      (lambda (_f95464_ . _args95465_)
        (if (let () (declare (not safe)) (procedure? _f95464_))
            '#!void
            (raise (let ((__obj99533
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj99533
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f95464_ '())))
                     __obj99533)))
        (let ()
          (declare (not safe))
          (spawn-actor _f95464_ _args95465_ '#!void '#f))))
    (define spawn/name
      (lambda (_name95460_ _f95461_ . _args95462_)
        (if (let () (declare (not safe)) (procedure? _f95461_))
            '#!void
            (raise (let ((__obj99534
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj99534
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f95461_ '())))
                     __obj99534)))
        (let ()
          (declare (not safe))
          (spawn-actor _f95461_ _args95462_ _name95460_ '#f))))
    (define spawn/group
      (lambda (_name95454_ _f95455_ . _args95456_)
        (if (let () (declare (not safe)) (procedure? _f95455_))
            '#!void
            (raise (let ((__obj99535
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj99535
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f95455_ '())))
                     __obj99535)))
        (let ((_tgroup95458_ (make-thread-group _name95454_)))
          (declare (not safe))
          (spawn-actor _f95455_ _args95456_ _name95454_ _tgroup95458_))))
    (define spawn-actor
      (lambda (_f95427_ _args95428_ _name95429_ _tgroup95430_)
        (letrec ((_thread-main95432_
                  (lambda (_thunk95446_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn95449_)
                         (let ((__tmp99537
                                (lambda (_cont95451_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp99538
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont95451_
                                                _exn95449_))))
                                        (declare (not safe))
                                        (with-catch void __tmp99538))
                                      '#!void)
                                  (let ((__tmp99539
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont95451_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp99539
                                     ##primordial-exception-handler
                                     _exn95449_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp99537)))
                       _thunk95446_)))))
          (let* ((_thunk95435_
                  (if (let () (declare (not safe)) (null? _args95428_))
                      _f95427_
                      (lambda () (apply _f95427_ _args95428_))))
                 (_thunk95438_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk95435_))))
                 (_tgroup95443_
                  (let ((_$e95440_ _tgroup95430_))
                    (if _$e95440_
                        _$e95440_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main95432_ _thunk95438_))
              _name95429_
              _tgroup95443_))))))
    (define spawn-thread__%
      (lambda (_thunk95405_ _name95406_ _tgroup95407_)
        (thread-start! (make-thread _thunk95405_ _name95406_ _tgroup95407_))))
    (define spawn-thread__0
      (lambda (_thunk95412_)
        (let* ((_name95414_ absent-obj) (_tgroup95416_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk95412_ _name95414_ _tgroup95416_))))
    (define spawn-thread__1
      (lambda (_thunk95418_ _name95419_)
        (let ((_tgroup95421_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk95418_ _name95419_ _tgroup95421_))))
    (define spawn-thread
      (lambda _g99541_
        (let ((_g99540_ (let () (declare (not safe)) (##length _g99541_))))
          (cond ((let () (declare (not safe)) (##fx= _g99540_ 1))
                 (apply (lambda (_thunk95412_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk95412_)))
                        _g99541_))
                ((let () (declare (not safe)) (##fx= _g99540_ 2))
                 (apply (lambda (_thunk95418_ _name95419_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk95418_ _name95419_)))
                        _g99541_))
                ((let () (declare (not safe)) (##fx= _g99540_ 3))
                 (apply (lambda (_thunk95423_ _name95424_ _tgroup95425_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk95423_
                             _name95424_
                             _tgroup95425_)))
                        _g99541_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g99541_))))))
    (define thread-local-ref__%
      (lambda (_key95389_ _default95390_)
        (let ((_tab95392_ (let () (declare (not safe)) (thread-local-table))))
          (hash-ref _tab95392_ _key95389_ _default95390_))))
    (define thread-local-ref__0
      (lambda (_key95397_)
        (let ((_default95399_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key95397_ _default95399_))))
    (define thread-local-ref
      (lambda _g99543_
        (let ((_g99542_ (let () (declare (not safe)) (##length _g99543_))))
          (cond ((let () (declare (not safe)) (##fx= _g99542_ 1))
                 (apply (lambda (_key95397_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key95397_)))
                        _g99543_))
                ((let () (declare (not safe)) (##fx= _g99542_ 2))
                 (apply (lambda (_key95401_ _default95402_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key95401_ _default95402_)))
                        _g99543_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g99543_))))))
    (define thread-local-get
      (lambda (_key95386_)
        (let () (declare (not safe)) (thread-local-ref _key95386_ '#f))))
    (define thread-local-set!
      (lambda (_key95381_ _value95382_)
        (let ((_tab95384_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab95384_ _key95381_ _value95382_))))
    (define thread-local-clear!
      (lambda (_key95377_)
        (let ((_tab95379_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab95379_ _key95377_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr95363_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr95363_))
              (let ((_$e95365_ (actor-thread-locals _thr95363_)))
                (if _$e95365_
                    (values _$e95365_)
                    (let ((_tab95368_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr95363_ _tab95368_)
                      _tab95368_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr95363_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e95370_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr95363_))))
                      (if _$e95370_
                          ((lambda (_tab95373_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab95373_)
                           _$e95370_)
                          (let ((_tab95375_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr95363_
                               _tab95375_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab95375_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc95360_)
        (if (let () (declare (not safe)) (procedure? _proc95360_))
            '#!void
            (raise (let ((__obj99536
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj99536
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc95360_ '())))
                     __obj99536)))
        (set! __unhandled-actor-exception-hook _proc95360_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx95348_ _proc95349_)
        (let ((_handler95351_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e95353_)
             (let ((__tmp99544
                    (lambda ()
                      (mutex-unlock! _mx95348_)
                      (_handler95351_ _e95353_))))
               (declare (not safe))
               (with-catch void __tmp99544))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e95353_)))
           (lambda ()
             (mutex-lock! _mx95348_)
             (let ((_result95357_ (_proc95349_)))
               (mutex-unlock! _mx95348_)
               _result95357_))))))
    (define with-dynamic-lock
      (lambda (_mx95343_ _proc95344_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx95343_))
         _proc95344_
         (lambda () (mutex-unlock! _mx95343_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk95324_ _error-port95325_)
        (with-exception-handler
         (let ((_E95327_ (current-exception-handler)))
           (lambda (_exn95329_)
             (continuation-capture
              (lambda (_cont95331_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont95331_
                       _exn95329_
                       _error-port95325_))
                    '#!void)
                (_E95327_ _exn95329_)))))
         _thunk95324_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk95336_)
        (let ((_error-port95338_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk95336_ _error-port95338_))))
    (define with-exception-stack-trace
      (lambda _g99546_
        (let ((_g99545_ (let () (declare (not safe)) (##length _g99546_))))
          (cond ((let () (declare (not safe)) (##fx= _g99545_ 1))
                 (apply (lambda (_thunk95336_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk95336_)))
                        _g99546_))
                ((let () (declare (not safe)) (##fx= _g99545_ 2))
                 (apply (lambda (_thunk95340_ _error-port95341_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk95340_
                             _error-port95341_)))
                        _g99546_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g99546_))))))
    (define dump-stack-trace!__%
      (lambda (_cont95305_ _exn95306_ _error-port95307_)
        (let ((_out95309_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out95309_))
          (display '"*** Unhandled exception in " _out95309_)
          (display (current-thread) _out95309_)
          (newline _out95309_)
          (display-exception _exn95306_ _out95309_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn95306_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out95309_)
                (newline _out95309_)
                (display-continuation-backtrace _cont95305_ _out95309_)))
          (let ((__tmp99547 (get-output-string _out95309_)))
            (declare (not safe))
            (##write-string __tmp99547 _error-port95307_)))))
    (define dump-stack-trace!__0
      (lambda (_cont95314_ _exn95315_)
        (let ((_error-port95317_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont95314_ _exn95315_ _error-port95317_))))
    (define dump-stack-trace!
      (lambda _g99549_
        (let ((_g99548_ (let () (declare (not safe)) (##length _g99549_))))
          (cond ((let () (declare (not safe)) (##fx= _g99548_ 2))
                 (apply (lambda (_cont95314_ _exn95315_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont95314_ _exn95315_)))
                        _g99549_))
                ((let () (declare (not safe)) (##fx= _g99548_ 3))
                 (apply (lambda (_cont95319_ _exn95320_ _error-port95321_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont95319_
                             _exn95320_
                             _error-port95321_)))
                        _g99549_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g99549_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
