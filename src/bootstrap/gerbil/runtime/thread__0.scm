(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1707651232)
  (begin
    (define spawn
      (lambda (_f95637_ . _args95638_)
        (if (let () (declare (not safe)) (procedure? _f95637_))
            '#!void
            (raise (let ((__obj100107
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100107
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f95637_ '())))
                     __obj100107)))
        (let ()
          (declare (not safe))
          (spawn-actor _f95637_ _args95638_ '#!void '#f))))
    (define spawn/name
      (lambda (_name95633_ _f95634_ . _args95635_)
        (if (let () (declare (not safe)) (procedure? _f95634_))
            '#!void
            (raise (let ((__obj100108
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100108
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f95634_ '())))
                     __obj100108)))
        (let ()
          (declare (not safe))
          (spawn-actor _f95634_ _args95635_ _name95633_ '#f))))
    (define spawn/group
      (lambda (_name95627_ _f95628_ . _args95629_)
        (if (let () (declare (not safe)) (procedure? _f95628_))
            '#!void
            (raise (let ((__obj100109
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100109
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f95628_ '())))
                     __obj100109)))
        (let ((_tgroup95631_ (make-thread-group _name95627_)))
          (declare (not safe))
          (spawn-actor _f95628_ _args95629_ _name95627_ _tgroup95631_))))
    (define spawn-actor
      (lambda (_f95600_ _args95601_ _name95602_ _tgroup95603_)
        (letrec ((_thread-main95605_
                  (lambda (_thunk95619_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn95622_)
                         (let ((__tmp100111
                                (lambda (_cont95624_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp100112
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont95624_
                                                _exn95622_))))
                                        (declare (not safe))
                                        (with-catch void __tmp100112))
                                      '#!void)
                                  (let ((__tmp100113
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont95624_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp100113
                                     ##primordial-exception-handler
                                     _exn95622_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp100111)))
                       _thunk95619_)))))
          (let* ((_thunk95608_
                  (if (let () (declare (not safe)) (null? _args95601_))
                      _f95600_
                      (lambda () (apply _f95600_ _args95601_))))
                 (_thunk95611_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk95608_))))
                 (_tgroup95616_
                  (let ((_$e95613_ _tgroup95603_))
                    (if _$e95613_
                        _$e95613_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main95605_ _thunk95611_))
              _name95602_
              _tgroup95616_))))))
    (define spawn-thread__%
      (lambda (_thunk95578_ _name95579_ _tgroup95580_)
        (thread-start! (make-thread _thunk95578_ _name95579_ _tgroup95580_))))
    (define spawn-thread__0
      (lambda (_thunk95585_)
        (let* ((_name95587_ absent-obj) (_tgroup95589_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk95585_ _name95587_ _tgroup95589_))))
    (define spawn-thread__1
      (lambda (_thunk95591_ _name95592_)
        (let ((_tgroup95594_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk95591_ _name95592_ _tgroup95594_))))
    (define spawn-thread
      (lambda _g100115_
        (let ((_g100114_ (let () (declare (not safe)) (##length _g100115_))))
          (cond ((let () (declare (not safe)) (##fx= _g100114_ 1))
                 (apply (lambda (_thunk95585_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk95585_)))
                        _g100115_))
                ((let () (declare (not safe)) (##fx= _g100114_ 2))
                 (apply (lambda (_thunk95591_ _name95592_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk95591_ _name95592_)))
                        _g100115_))
                ((let () (declare (not safe)) (##fx= _g100114_ 3))
                 (apply (lambda (_thunk95596_ _name95597_ _tgroup95598_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk95596_
                             _name95597_
                             _tgroup95598_)))
                        _g100115_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g100115_))))))
    (define thread-local-ref__%
      (lambda (_key95562_ _default95563_)
        (let ((_tab95565_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab95565_ _key95562_ _default95563_))))
    (define thread-local-ref__0
      (lambda (_key95570_)
        (let ((_default95572_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key95570_ _default95572_))))
    (define thread-local-ref
      (lambda _g100117_
        (let ((_g100116_ (let () (declare (not safe)) (##length _g100117_))))
          (cond ((let () (declare (not safe)) (##fx= _g100116_ 1))
                 (apply (lambda (_key95570_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key95570_)))
                        _g100117_))
                ((let () (declare (not safe)) (##fx= _g100116_ 2))
                 (apply (lambda (_key95574_ _default95575_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key95574_ _default95575_)))
                        _g100117_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g100117_))))))
    (define thread-local-get
      (lambda (_key95559_)
        (let () (declare (not safe)) (thread-local-ref _key95559_ '#f))))
    (define thread-local-set!
      (lambda (_key95554_ _value95555_)
        (let ((_tab95557_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab95557_ _key95554_ _value95555_))))
    (define thread-local-clear!
      (lambda (_key95550_)
        (let ((_tab95552_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab95552_ _key95550_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr95536_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr95536_))
              (let ((_$e95538_ (actor-thread-locals _thr95536_)))
                (if _$e95538_
                    (values _$e95538_)
                    (let ((_tab95541_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr95536_ _tab95541_)
                      _tab95541_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr95536_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e95543_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr95536_ '#f))))
                      (if _$e95543_
                          ((lambda (_tab95546_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab95546_)
                           _$e95543_)
                          (let ((_tab95548_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr95536_
                               _tab95548_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab95548_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc95533_)
        (if (let () (declare (not safe)) (procedure? _proc95533_))
            '#!void
            (raise (let ((__obj100110
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100110
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc95533_ '())))
                     __obj100110)))
        (set! __unhandled-actor-exception-hook _proc95533_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx95521_ _proc95522_)
        (let ((_handler95524_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e95526_)
             (let ((__tmp100118
                    (lambda ()
                      (mutex-unlock! _mx95521_)
                      (_handler95524_ _e95526_))))
               (declare (not safe))
               (with-catch void __tmp100118))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e95526_)))
           (lambda ()
             (mutex-lock! _mx95521_)
             (let ((_result95530_ (_proc95522_)))
               (mutex-unlock! _mx95521_)
               _result95530_))))))
    (define with-dynamic-lock
      (lambda (_mx95516_ _proc95517_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx95516_))
         _proc95517_
         (lambda () (mutex-unlock! _mx95516_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk95497_ _error-port95498_)
        (with-exception-handler
         (let ((_E95500_ (current-exception-handler)))
           (lambda (_exn95502_)
             (continuation-capture
              (lambda (_cont95504_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont95504_
                       _exn95502_
                       _error-port95498_))
                    '#!void)
                (_E95500_ _exn95502_)))))
         _thunk95497_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk95509_)
        (let ((_error-port95511_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk95509_ _error-port95511_))))
    (define with-exception-stack-trace
      (lambda _g100120_
        (let ((_g100119_ (let () (declare (not safe)) (##length _g100120_))))
          (cond ((let () (declare (not safe)) (##fx= _g100119_ 1))
                 (apply (lambda (_thunk95509_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk95509_)))
                        _g100120_))
                ((let () (declare (not safe)) (##fx= _g100119_ 2))
                 (apply (lambda (_thunk95513_ _error-port95514_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk95513_
                             _error-port95514_)))
                        _g100120_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g100120_))))))
    (define dump-stack-trace!__%
      (lambda (_cont95478_ _exn95479_ _error-port95480_)
        (let ((_out95482_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out95482_))
          (display '"*** Unhandled exception in " _out95482_)
          (display (current-thread) _out95482_)
          (newline _out95482_)
          (display-exception _exn95479_ _out95482_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn95479_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out95482_)
                (newline _out95482_)
                (display-continuation-backtrace _cont95478_ _out95482_)))
          (let ((__tmp100121 (get-output-string _out95482_)))
            (declare (not safe))
            (##write-string __tmp100121 _error-port95480_)))))
    (define dump-stack-trace!__0
      (lambda (_cont95487_ _exn95488_)
        (let ((_error-port95490_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont95487_ _exn95488_ _error-port95490_))))
    (define dump-stack-trace!
      (lambda _g100123_
        (let ((_g100122_ (let () (declare (not safe)) (##length _g100123_))))
          (cond ((let () (declare (not safe)) (##fx= _g100122_ 2))
                 (apply (lambda (_cont95487_ _exn95488_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont95487_ _exn95488_)))
                        _g100123_))
                ((let () (declare (not safe)) (##fx= _g100122_ 3))
                 (apply (lambda (_cont95492_ _exn95493_ _error-port95494_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont95492_
                             _exn95493_
                             _error-port95494_)))
                        _g100123_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g100123_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
