(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1708210939)
  (begin
    (define spawn
      (lambda (_f95467_ . _args95468_)
        (if (let () (declare (not safe)) (procedure? _f95467_))
            '#!void
            (raise (let ((__obj99536
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj99536
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f95467_ '())))
                     __obj99536)))
        (let ()
          (declare (not safe))
          (spawn-actor _f95467_ _args95468_ '#!void '#f))))
    (define spawn/name
      (lambda (_name95463_ _f95464_ . _args95465_)
        (if (let () (declare (not safe)) (procedure? _f95464_))
            '#!void
            (raise (let ((__obj99537
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj99537
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f95464_ '())))
                     __obj99537)))
        (let ()
          (declare (not safe))
          (spawn-actor _f95464_ _args95465_ _name95463_ '#f))))
    (define spawn/group
      (lambda (_name95457_ _f95458_ . _args95459_)
        (if (let () (declare (not safe)) (procedure? _f95458_))
            '#!void
            (raise (let ((__obj99538
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj99538
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f95458_ '())))
                     __obj99538)))
        (let ((_tgroup95461_ (make-thread-group _name95457_)))
          (declare (not safe))
          (spawn-actor _f95458_ _args95459_ _name95457_ _tgroup95461_))))
    (define spawn-actor
      (lambda (_f95430_ _args95431_ _name95432_ _tgroup95433_)
        (letrec ((_thread-main95435_
                  (lambda (_thunk95449_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn95452_)
                         (let ((__tmp99540
                                (lambda (_cont95454_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp99541
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont95454_
                                                _exn95452_))))
                                        (declare (not safe))
                                        (with-catch void __tmp99541))
                                      '#!void)
                                  (let ((__tmp99542
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont95454_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp99542
                                     ##primordial-exception-handler
                                     _exn95452_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp99540)))
                       _thunk95449_)))))
          (let* ((_thunk95438_
                  (if (let () (declare (not safe)) (null? _args95431_))
                      _f95430_
                      (lambda () (apply _f95430_ _args95431_))))
                 (_thunk95441_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk95438_))))
                 (_tgroup95446_
                  (let ((_$e95443_ _tgroup95433_))
                    (if _$e95443_
                        _$e95443_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main95435_ _thunk95441_))
              _name95432_
              _tgroup95446_))))))
    (define spawn-thread__%
      (lambda (_thunk95408_ _name95409_ _tgroup95410_)
        (thread-start! (make-thread _thunk95408_ _name95409_ _tgroup95410_))))
    (define spawn-thread__0
      (lambda (_thunk95415_)
        (let* ((_name95417_ absent-obj) (_tgroup95419_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk95415_ _name95417_ _tgroup95419_))))
    (define spawn-thread__1
      (lambda (_thunk95421_ _name95422_)
        (let ((_tgroup95424_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk95421_ _name95422_ _tgroup95424_))))
    (define spawn-thread
      (lambda _g99544_
        (let ((_g99543_ (let () (declare (not safe)) (##length _g99544_))))
          (cond ((let () (declare (not safe)) (##fx= _g99543_ 1))
                 (apply (lambda (_thunk95415_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk95415_)))
                        _g99544_))
                ((let () (declare (not safe)) (##fx= _g99543_ 2))
                 (apply (lambda (_thunk95421_ _name95422_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk95421_ _name95422_)))
                        _g99544_))
                ((let () (declare (not safe)) (##fx= _g99543_ 3))
                 (apply (lambda (_thunk95426_ _name95427_ _tgroup95428_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk95426_
                             _name95427_
                             _tgroup95428_)))
                        _g99544_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g99544_))))))
    (define thread-local-ref__%
      (lambda (_key95392_ _default95393_)
        (let ((_tab95395_ (let () (declare (not safe)) (thread-local-table))))
          (hash-ref _tab95395_ _key95392_ _default95393_))))
    (define thread-local-ref__0
      (lambda (_key95400_)
        (let ((_default95402_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key95400_ _default95402_))))
    (define thread-local-ref
      (lambda _g99546_
        (let ((_g99545_ (let () (declare (not safe)) (##length _g99546_))))
          (cond ((let () (declare (not safe)) (##fx= _g99545_ 1))
                 (apply (lambda (_key95400_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key95400_)))
                        _g99546_))
                ((let () (declare (not safe)) (##fx= _g99545_ 2))
                 (apply (lambda (_key95404_ _default95405_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key95404_ _default95405_)))
                        _g99546_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g99546_))))))
    (define thread-local-get
      (lambda (_key95389_)
        (let () (declare (not safe)) (thread-local-ref _key95389_ '#f))))
    (define thread-local-set!
      (lambda (_key95384_ _value95385_)
        (let ((_tab95387_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab95387_ _key95384_ _value95385_))))
    (define thread-local-clear!
      (lambda (_key95380_)
        (let ((_tab95382_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab95382_ _key95380_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr95366_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr95366_))
              (let ((_$e95368_ (actor-thread-locals _thr95366_)))
                (if _$e95368_
                    (values _$e95368_)
                    (let ((_tab95371_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr95366_ _tab95371_)
                      _tab95371_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr95366_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e95373_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr95366_))))
                      (if _$e95373_
                          ((lambda (_tab95376_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab95376_)
                           _$e95373_)
                          (let ((_tab95378_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr95366_
                               _tab95378_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab95378_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc95363_)
        (if (let () (declare (not safe)) (procedure? _proc95363_))
            '#!void
            (raise (let ((__obj99539
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj99539
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc95363_ '())))
                     __obj99539)))
        (set! __unhandled-actor-exception-hook _proc95363_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx95351_ _proc95352_)
        (let ((_handler95354_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e95356_)
             (let ((__tmp99547
                    (lambda ()
                      (mutex-unlock! _mx95351_)
                      (_handler95354_ _e95356_))))
               (declare (not safe))
               (with-catch void __tmp99547))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e95356_)))
           (lambda ()
             (mutex-lock! _mx95351_)
             (let ((_result95360_ (_proc95352_)))
               (mutex-unlock! _mx95351_)
               _result95360_))))))
    (define with-dynamic-lock
      (lambda (_mx95346_ _proc95347_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx95346_))
         _proc95347_
         (lambda () (mutex-unlock! _mx95346_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk95327_ _error-port95328_)
        (with-exception-handler
         (let ((_E95330_ (current-exception-handler)))
           (lambda (_exn95332_)
             (continuation-capture
              (lambda (_cont95334_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont95334_
                       _exn95332_
                       _error-port95328_))
                    '#!void)
                (_E95330_ _exn95332_)))))
         _thunk95327_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk95339_)
        (let ((_error-port95341_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk95339_ _error-port95341_))))
    (define with-exception-stack-trace
      (lambda _g99549_
        (let ((_g99548_ (let () (declare (not safe)) (##length _g99549_))))
          (cond ((let () (declare (not safe)) (##fx= _g99548_ 1))
                 (apply (lambda (_thunk95339_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk95339_)))
                        _g99549_))
                ((let () (declare (not safe)) (##fx= _g99548_ 2))
                 (apply (lambda (_thunk95343_ _error-port95344_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk95343_
                             _error-port95344_)))
                        _g99549_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g99549_))))))
    (define dump-stack-trace!__%
      (lambda (_cont95308_ _exn95309_ _error-port95310_)
        (let ((_out95312_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out95312_))
          (display '"*** Unhandled exception in " _out95312_)
          (display (current-thread) _out95312_)
          (newline _out95312_)
          (display-exception _exn95309_ _out95312_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn95309_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out95312_)
                (newline _out95312_)
                (display-continuation-backtrace _cont95308_ _out95312_)))
          (let ((__tmp99550 (get-output-string _out95312_)))
            (declare (not safe))
            (##write-string __tmp99550 _error-port95310_)))))
    (define dump-stack-trace!__0
      (lambda (_cont95317_ _exn95318_)
        (let ((_error-port95320_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont95317_ _exn95318_ _error-port95320_))))
    (define dump-stack-trace!
      (lambda _g99552_
        (let ((_g99551_ (let () (declare (not safe)) (##length _g99552_))))
          (cond ((let () (declare (not safe)) (##fx= _g99551_ 2))
                 (apply (lambda (_cont95317_ _exn95318_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont95317_ _exn95318_)))
                        _g99552_))
                ((let () (declare (not safe)) (##fx= _g99551_ 3))
                 (apply (lambda (_cont95322_ _exn95323_ _error-port95324_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont95322_
                             _exn95323_
                             _error-port95324_)))
                        _g99552_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g99552_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
