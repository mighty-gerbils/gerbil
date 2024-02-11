(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1707660400)
  (begin
    (define spawn
      (lambda (_f95568_ . _args95569_)
        (if (let () (declare (not safe)) (procedure? _f95568_))
            '#!void
            (raise (let ((__obj100038
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100038
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f95568_ '())))
                     __obj100038)))
        (let ()
          (declare (not safe))
          (spawn-actor _f95568_ _args95569_ '#!void '#f))))
    (define spawn/name
      (lambda (_name95564_ _f95565_ . _args95566_)
        (if (let () (declare (not safe)) (procedure? _f95565_))
            '#!void
            (raise (let ((__obj100039
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100039
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f95565_ '())))
                     __obj100039)))
        (let ()
          (declare (not safe))
          (spawn-actor _f95565_ _args95566_ _name95564_ '#f))))
    (define spawn/group
      (lambda (_name95558_ _f95559_ . _args95560_)
        (if (let () (declare (not safe)) (procedure? _f95559_))
            '#!void
            (raise (let ((__obj100040
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100040
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f95559_ '())))
                     __obj100040)))
        (let ((_tgroup95562_ (make-thread-group _name95558_)))
          (declare (not safe))
          (spawn-actor _f95559_ _args95560_ _name95558_ _tgroup95562_))))
    (define spawn-actor
      (lambda (_f95531_ _args95532_ _name95533_ _tgroup95534_)
        (letrec ((_thread-main95536_
                  (lambda (_thunk95550_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn95553_)
                         (let ((__tmp100042
                                (lambda (_cont95555_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp100043
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont95555_
                                                _exn95553_))))
                                        (declare (not safe))
                                        (with-catch void __tmp100043))
                                      '#!void)
                                  (let ((__tmp100044
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont95555_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp100044
                                     ##primordial-exception-handler
                                     _exn95553_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp100042)))
                       _thunk95550_)))))
          (let* ((_thunk95539_
                  (if (let () (declare (not safe)) (null? _args95532_))
                      _f95531_
                      (lambda () (apply _f95531_ _args95532_))))
                 (_thunk95542_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk95539_))))
                 (_tgroup95547_
                  (let ((_$e95544_ _tgroup95534_))
                    (if _$e95544_
                        _$e95544_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main95536_ _thunk95542_))
              _name95533_
              _tgroup95547_))))))
    (define spawn-thread__%
      (lambda (_thunk95509_ _name95510_ _tgroup95511_)
        (thread-start! (make-thread _thunk95509_ _name95510_ _tgroup95511_))))
    (define spawn-thread__0
      (lambda (_thunk95516_)
        (let* ((_name95518_ absent-obj) (_tgroup95520_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk95516_ _name95518_ _tgroup95520_))))
    (define spawn-thread__1
      (lambda (_thunk95522_ _name95523_)
        (let ((_tgroup95525_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk95522_ _name95523_ _tgroup95525_))))
    (define spawn-thread
      (lambda _g100046_
        (let ((_g100045_ (let () (declare (not safe)) (##length _g100046_))))
          (cond ((let () (declare (not safe)) (##fx= _g100045_ 1))
                 (apply (lambda (_thunk95516_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk95516_)))
                        _g100046_))
                ((let () (declare (not safe)) (##fx= _g100045_ 2))
                 (apply (lambda (_thunk95522_ _name95523_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk95522_ _name95523_)))
                        _g100046_))
                ((let () (declare (not safe)) (##fx= _g100045_ 3))
                 (apply (lambda (_thunk95527_ _name95528_ _tgroup95529_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk95527_
                             _name95528_
                             _tgroup95529_)))
                        _g100046_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g100046_))))))
    (define thread-local-ref__%
      (lambda (_key95493_ _default95494_)
        (let ((_tab95496_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab95496_ _key95493_ _default95494_))))
    (define thread-local-ref__0
      (lambda (_key95501_)
        (let ((_default95503_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key95501_ _default95503_))))
    (define thread-local-ref
      (lambda _g100048_
        (let ((_g100047_ (let () (declare (not safe)) (##length _g100048_))))
          (cond ((let () (declare (not safe)) (##fx= _g100047_ 1))
                 (apply (lambda (_key95501_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key95501_)))
                        _g100048_))
                ((let () (declare (not safe)) (##fx= _g100047_ 2))
                 (apply (lambda (_key95505_ _default95506_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key95505_ _default95506_)))
                        _g100048_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g100048_))))))
    (define thread-local-get
      (lambda (_key95490_)
        (let () (declare (not safe)) (thread-local-ref _key95490_ '#f))))
    (define thread-local-set!
      (lambda (_key95485_ _value95486_)
        (let ((_tab95488_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab95488_ _key95485_ _value95486_))))
    (define thread-local-clear!
      (lambda (_key95481_)
        (let ((_tab95483_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab95483_ _key95481_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr95467_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr95467_))
              (let ((_$e95469_ (actor-thread-locals _thr95467_)))
                (if _$e95469_
                    (values _$e95469_)
                    (let ((_tab95472_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr95467_ _tab95472_)
                      _tab95472_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr95467_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e95474_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr95467_ '#f))))
                      (if _$e95474_
                          ((lambda (_tab95477_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab95477_)
                           _$e95474_)
                          (let ((_tab95479_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr95467_
                               _tab95479_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab95479_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc95464_)
        (if (let () (declare (not safe)) (procedure? _proc95464_))
            '#!void
            (raise (let ((__obj100041
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100041
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc95464_ '())))
                     __obj100041)))
        (set! __unhandled-actor-exception-hook _proc95464_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx95452_ _proc95453_)
        (let ((_handler95455_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e95457_)
             (let ((__tmp100049
                    (lambda ()
                      (mutex-unlock! _mx95452_)
                      (_handler95455_ _e95457_))))
               (declare (not safe))
               (with-catch void __tmp100049))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e95457_)))
           (lambda ()
             (mutex-lock! _mx95452_)
             (let ((_result95461_ (_proc95453_)))
               (mutex-unlock! _mx95452_)
               _result95461_))))))
    (define with-dynamic-lock
      (lambda (_mx95447_ _proc95448_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx95447_))
         _proc95448_
         (lambda () (mutex-unlock! _mx95447_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk95428_ _error-port95429_)
        (with-exception-handler
         (let ((_E95431_ (current-exception-handler)))
           (lambda (_exn95433_)
             (continuation-capture
              (lambda (_cont95435_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont95435_
                       _exn95433_
                       _error-port95429_))
                    '#!void)
                (_E95431_ _exn95433_)))))
         _thunk95428_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk95440_)
        (let ((_error-port95442_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk95440_ _error-port95442_))))
    (define with-exception-stack-trace
      (lambda _g100051_
        (let ((_g100050_ (let () (declare (not safe)) (##length _g100051_))))
          (cond ((let () (declare (not safe)) (##fx= _g100050_ 1))
                 (apply (lambda (_thunk95440_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk95440_)))
                        _g100051_))
                ((let () (declare (not safe)) (##fx= _g100050_ 2))
                 (apply (lambda (_thunk95444_ _error-port95445_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk95444_
                             _error-port95445_)))
                        _g100051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g100051_))))))
    (define dump-stack-trace!__%
      (lambda (_cont95409_ _exn95410_ _error-port95411_)
        (let ((_out95413_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out95413_))
          (display '"*** Unhandled exception in " _out95413_)
          (display (current-thread) _out95413_)
          (newline _out95413_)
          (display-exception _exn95410_ _out95413_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn95410_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out95413_)
                (newline _out95413_)
                (display-continuation-backtrace _cont95409_ _out95413_)))
          (let ((__tmp100052 (get-output-string _out95413_)))
            (declare (not safe))
            (##write-string __tmp100052 _error-port95411_)))))
    (define dump-stack-trace!__0
      (lambda (_cont95418_ _exn95419_)
        (let ((_error-port95421_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont95418_ _exn95419_ _error-port95421_))))
    (define dump-stack-trace!
      (lambda _g100054_
        (let ((_g100053_ (let () (declare (not safe)) (##length _g100054_))))
          (cond ((let () (declare (not safe)) (##fx= _g100053_ 2))
                 (apply (lambda (_cont95418_ _exn95419_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont95418_ _exn95419_)))
                        _g100054_))
                ((let () (declare (not safe)) (##fx= _g100053_ 3))
                 (apply (lambda (_cont95423_ _exn95424_ _error-port95425_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont95423_
                             _exn95424_
                             _error-port95425_)))
                        _g100054_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g100054_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
