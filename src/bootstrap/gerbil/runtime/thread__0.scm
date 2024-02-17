(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1708168068)
  (begin
    (define spawn
      (lambda (_f104558_ . _args104559_)
        (if (let () (declare (not safe)) (procedure? _f104558_))
            '#!void
            (raise (let ((__obj109128
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj109128
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f104558_ '())))
                     __obj109128)))
        (let ()
          (declare (not safe))
          (spawn-actor _f104558_ _args104559_ '#!void '#f))))
    (define spawn/name
      (lambda (_name104554_ _f104555_ . _args104556_)
        (if (let () (declare (not safe)) (procedure? _f104555_))
            '#!void
            (raise (let ((__obj109129
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj109129
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f104555_ '())))
                     __obj109129)))
        (let ()
          (declare (not safe))
          (spawn-actor _f104555_ _args104556_ _name104554_ '#f))))
    (define spawn/group
      (lambda (_name104548_ _f104549_ . _args104550_)
        (if (let () (declare (not safe)) (procedure? _f104549_))
            '#!void
            (raise (let ((__obj109130
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj109130
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f104549_ '())))
                     __obj109130)))
        (let ((_tgroup104552_ (make-thread-group _name104548_)))
          (declare (not safe))
          (spawn-actor _f104549_ _args104550_ _name104548_ _tgroup104552_))))
    (define spawn-actor
      (lambda (_f104521_ _args104522_ _name104523_ _tgroup104524_)
        (letrec ((_thread-main104526_
                  (lambda (_thunk104540_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn104543_)
                         (let ((__tmp109132
                                (lambda (_cont104545_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp109133
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont104545_
                                                _exn104543_))))
                                        (declare (not safe))
                                        (with-catch void __tmp109133))
                                      '#!void)
                                  (let ((__tmp109134
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last
                                            _cont104545_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp109134
                                     ##primordial-exception-handler
                                     _exn104543_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp109132)))
                       _thunk104540_)))))
          (let* ((_thunk104529_
                  (if (let () (declare (not safe)) (null? _args104522_))
                      _f104521_
                      (lambda () (apply _f104521_ _args104522_))))
                 (_thunk104532_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk104529_))))
                 (_tgroup104537_
                  (let ((_$e104534_ _tgroup104524_))
                    (if _$e104534_
                        _$e104534_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main104526_ _thunk104532_))
              _name104523_
              _tgroup104537_))))))
    (define spawn-thread__%
      (lambda (_thunk104499_ _name104500_ _tgroup104501_)
        (thread-start!
         (make-thread _thunk104499_ _name104500_ _tgroup104501_))))
    (define spawn-thread__0
      (lambda (_thunk104506_)
        (let* ((_name104508_ absent-obj) (_tgroup104510_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk104506_ _name104508_ _tgroup104510_))))
    (define spawn-thread__1
      (lambda (_thunk104512_ _name104513_)
        (let ((_tgroup104515_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk104512_ _name104513_ _tgroup104515_))))
    (define spawn-thread
      (lambda _g109136_
        (let ((_g109135_ (let () (declare (not safe)) (##length _g109136_))))
          (cond ((let () (declare (not safe)) (##fx= _g109135_ 1))
                 (apply (lambda (_thunk104506_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk104506_)))
                        _g109136_))
                ((let () (declare (not safe)) (##fx= _g109135_ 2))
                 (apply (lambda (_thunk104512_ _name104513_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk104512_ _name104513_)))
                        _g109136_))
                ((let () (declare (not safe)) (##fx= _g109135_ 3))
                 (apply (lambda (_thunk104517_ _name104518_ _tgroup104519_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk104517_
                             _name104518_
                             _tgroup104519_)))
                        _g109136_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g109136_))))))
    (define thread-local-ref__%
      (lambda (_key104483_ _default104484_)
        (let ((_tab104486_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab104486_ _key104483_ _default104484_))))
    (define thread-local-ref__0
      (lambda (_key104491_)
        (let ((_default104493_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key104491_ _default104493_))))
    (define thread-local-ref
      (lambda _g109138_
        (let ((_g109137_ (let () (declare (not safe)) (##length _g109138_))))
          (cond ((let () (declare (not safe)) (##fx= _g109137_ 1))
                 (apply (lambda (_key104491_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key104491_)))
                        _g109138_))
                ((let () (declare (not safe)) (##fx= _g109137_ 2))
                 (apply (lambda (_key104495_ _default104496_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key104495_ _default104496_)))
                        _g109138_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g109138_))))))
    (define thread-local-get
      (lambda (_key104480_)
        (let () (declare (not safe)) (thread-local-ref _key104480_ '#f))))
    (define thread-local-set!
      (lambda (_key104475_ _value104476_)
        (let ((_tab104478_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab104478_ _key104475_ _value104476_))))
    (define thread-local-clear!
      (lambda (_key104471_)
        (let ((_tab104473_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab104473_ _key104471_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr104457_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr104457_))
              (let ((_$e104459_ (actor-thread-locals _thr104457_)))
                (if _$e104459_
                    (values _$e104459_)
                    (let ((_tab104462_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr104457_ _tab104462_)
                      _tab104462_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr104457_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e104464_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr104457_ '#f))))
                      (if _$e104464_
                          ((lambda (_tab104467_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab104467_)
                           _$e104464_)
                          (let ((_tab104469_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr104457_
                               _tab104469_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab104469_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc104454_)
        (if (let () (declare (not safe)) (procedure? _proc104454_))
            '#!void
            (raise (let ((__obj109131
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj109131
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc104454_ '())))
                     __obj109131)))
        (set! __unhandled-actor-exception-hook _proc104454_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx104442_ _proc104443_)
        (let ((_handler104445_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e104447_)
             (let ((__tmp109139
                    (lambda ()
                      (mutex-unlock! _mx104442_)
                      (_handler104445_ _e104447_))))
               (declare (not safe))
               (with-catch void __tmp109139))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e104447_)))
           (lambda ()
             (mutex-lock! _mx104442_)
             (let ((_result104451_ (_proc104443_)))
               (mutex-unlock! _mx104442_)
               _result104451_))))))
    (define with-dynamic-lock
      (lambda (_mx104437_ _proc104438_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx104437_))
         _proc104438_
         (lambda () (mutex-unlock! _mx104437_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk104418_ _error-port104419_)
        (with-exception-handler
         (let ((_E104421_ (current-exception-handler)))
           (lambda (_exn104423_)
             (continuation-capture
              (lambda (_cont104425_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont104425_
                       _exn104423_
                       _error-port104419_))
                    '#!void)
                (_E104421_ _exn104423_)))))
         _thunk104418_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk104430_)
        (let ((_error-port104432_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk104430_ _error-port104432_))))
    (define with-exception-stack-trace
      (lambda _g109141_
        (let ((_g109140_ (let () (declare (not safe)) (##length _g109141_))))
          (cond ((let () (declare (not safe)) (##fx= _g109140_ 1))
                 (apply (lambda (_thunk104430_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk104430_)))
                        _g109141_))
                ((let () (declare (not safe)) (##fx= _g109140_ 2))
                 (apply (lambda (_thunk104434_ _error-port104435_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk104434_
                             _error-port104435_)))
                        _g109141_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g109141_))))))
    (define dump-stack-trace!__%
      (lambda (_cont104399_ _exn104400_ _error-port104401_)
        (let ((_out104403_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out104403_))
          (display '"*** Unhandled exception in " _out104403_)
          (display (current-thread) _out104403_)
          (newline _out104403_)
          (display-exception _exn104400_ _out104403_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn104400_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out104403_)
                (newline _out104403_)
                (display-continuation-backtrace _cont104399_ _out104403_)))
          (let ((__tmp109142 (get-output-string _out104403_)))
            (declare (not safe))
            (##write-string __tmp109142 _error-port104401_)))))
    (define dump-stack-trace!__0
      (lambda (_cont104408_ _exn104409_)
        (let ((_error-port104411_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont104408_ _exn104409_ _error-port104411_))))
    (define dump-stack-trace!
      (lambda _g109144_
        (let ((_g109143_ (let () (declare (not safe)) (##length _g109144_))))
          (cond ((let () (declare (not safe)) (##fx= _g109143_ 2))
                 (apply (lambda (_cont104408_ _exn104409_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont104408_ _exn104409_)))
                        _g109144_))
                ((let () (declare (not safe)) (##fx= _g109143_ 3))
                 (apply (lambda (_cont104413_ _exn104414_ _error-port104415_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont104413_
                             _exn104414_
                             _error-port104415_)))
                        _g109144_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g109144_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
