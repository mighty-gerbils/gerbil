(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1707767842)
  (begin
    (define spawn
      (lambda (_f96510_ . _args96511_)
        (if (let () (declare (not safe)) (procedure? _f96510_))
            '#!void
            (raise (let ((__obj101080
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj101080
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f96510_ '())))
                     __obj101080)))
        (let ()
          (declare (not safe))
          (spawn-actor _f96510_ _args96511_ '#!void '#f))))
    (define spawn/name
      (lambda (_name96506_ _f96507_ . _args96508_)
        (if (let () (declare (not safe)) (procedure? _f96507_))
            '#!void
            (raise (let ((__obj101081
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj101081
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f96507_ '())))
                     __obj101081)))
        (let ()
          (declare (not safe))
          (spawn-actor _f96507_ _args96508_ _name96506_ '#f))))
    (define spawn/group
      (lambda (_name96500_ _f96501_ . _args96502_)
        (if (let () (declare (not safe)) (procedure? _f96501_))
            '#!void
            (raise (let ((__obj101082
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj101082
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f96501_ '())))
                     __obj101082)))
        (let ((_tgroup96504_ (make-thread-group _name96500_)))
          (declare (not safe))
          (spawn-actor _f96501_ _args96502_ _name96500_ _tgroup96504_))))
    (define spawn-actor
      (lambda (_f96473_ _args96474_ _name96475_ _tgroup96476_)
        (letrec ((_thread-main96478_
                  (lambda (_thunk96492_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn96495_)
                         (let ((__tmp101084
                                (lambda (_cont96497_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp101085
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont96497_
                                                _exn96495_))))
                                        (declare (not safe))
                                        (with-catch void __tmp101085))
                                      '#!void)
                                  (let ((__tmp101086
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont96497_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp101086
                                     ##primordial-exception-handler
                                     _exn96495_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp101084)))
                       _thunk96492_)))))
          (let* ((_thunk96481_
                  (if (let () (declare (not safe)) (null? _args96474_))
                      _f96473_
                      (lambda () (apply _f96473_ _args96474_))))
                 (_thunk96484_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk96481_))))
                 (_tgroup96489_
                  (let ((_$e96486_ _tgroup96476_))
                    (if _$e96486_
                        _$e96486_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main96478_ _thunk96484_))
              _name96475_
              _tgroup96489_))))))
    (define spawn-thread__%
      (lambda (_thunk96451_ _name96452_ _tgroup96453_)
        (thread-start! (make-thread _thunk96451_ _name96452_ _tgroup96453_))))
    (define spawn-thread__0
      (lambda (_thunk96458_)
        (let* ((_name96460_ absent-obj) (_tgroup96462_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk96458_ _name96460_ _tgroup96462_))))
    (define spawn-thread__1
      (lambda (_thunk96464_ _name96465_)
        (let ((_tgroup96467_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk96464_ _name96465_ _tgroup96467_))))
    (define spawn-thread
      (lambda _g101088_
        (let ((_g101087_ (let () (declare (not safe)) (##length _g101088_))))
          (cond ((let () (declare (not safe)) (##fx= _g101087_ 1))
                 (apply (lambda (_thunk96458_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk96458_)))
                        _g101088_))
                ((let () (declare (not safe)) (##fx= _g101087_ 2))
                 (apply (lambda (_thunk96464_ _name96465_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk96464_ _name96465_)))
                        _g101088_))
                ((let () (declare (not safe)) (##fx= _g101087_ 3))
                 (apply (lambda (_thunk96469_ _name96470_ _tgroup96471_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk96469_
                             _name96470_
                             _tgroup96471_)))
                        _g101088_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g101088_))))))
    (define thread-local-ref__%
      (lambda (_key96435_ _default96436_)
        (let ((_tab96438_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab96438_ _key96435_ _default96436_))))
    (define thread-local-ref__0
      (lambda (_key96443_)
        (let ((_default96445_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key96443_ _default96445_))))
    (define thread-local-ref
      (lambda _g101090_
        (let ((_g101089_ (let () (declare (not safe)) (##length _g101090_))))
          (cond ((let () (declare (not safe)) (##fx= _g101089_ 1))
                 (apply (lambda (_key96443_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key96443_)))
                        _g101090_))
                ((let () (declare (not safe)) (##fx= _g101089_ 2))
                 (apply (lambda (_key96447_ _default96448_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key96447_ _default96448_)))
                        _g101090_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g101090_))))))
    (define thread-local-get
      (lambda (_key96432_)
        (let () (declare (not safe)) (thread-local-ref _key96432_ '#f))))
    (define thread-local-set!
      (lambda (_key96427_ _value96428_)
        (let ((_tab96430_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab96430_ _key96427_ _value96428_))))
    (define thread-local-clear!
      (lambda (_key96423_)
        (let ((_tab96425_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab96425_ _key96423_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr96409_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr96409_))
              (let ((_$e96411_ (actor-thread-locals _thr96409_)))
                (if _$e96411_
                    (values _$e96411_)
                    (let ((_tab96414_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr96409_ _tab96414_)
                      _tab96414_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr96409_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e96416_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr96409_ '#f))))
                      (if _$e96416_
                          ((lambda (_tab96419_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab96419_)
                           _$e96416_)
                          (let ((_tab96421_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr96409_
                               _tab96421_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab96421_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc96406_)
        (if (let () (declare (not safe)) (procedure? _proc96406_))
            '#!void
            (raise (let ((__obj101083
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj101083
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc96406_ '())))
                     __obj101083)))
        (set! __unhandled-actor-exception-hook _proc96406_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx96394_ _proc96395_)
        (let ((_handler96397_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e96399_)
             (let ((__tmp101091
                    (lambda ()
                      (mutex-unlock! _mx96394_)
                      (_handler96397_ _e96399_))))
               (declare (not safe))
               (with-catch void __tmp101091))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e96399_)))
           (lambda ()
             (mutex-lock! _mx96394_)
             (let ((_result96403_ (_proc96395_)))
               (mutex-unlock! _mx96394_)
               _result96403_))))))
    (define with-dynamic-lock
      (lambda (_mx96389_ _proc96390_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx96389_))
         _proc96390_
         (lambda () (mutex-unlock! _mx96389_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk96370_ _error-port96371_)
        (with-exception-handler
         (let ((_E96373_ (current-exception-handler)))
           (lambda (_exn96375_)
             (continuation-capture
              (lambda (_cont96377_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont96377_
                       _exn96375_
                       _error-port96371_))
                    '#!void)
                (_E96373_ _exn96375_)))))
         _thunk96370_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk96382_)
        (let ((_error-port96384_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk96382_ _error-port96384_))))
    (define with-exception-stack-trace
      (lambda _g101093_
        (let ((_g101092_ (let () (declare (not safe)) (##length _g101093_))))
          (cond ((let () (declare (not safe)) (##fx= _g101092_ 1))
                 (apply (lambda (_thunk96382_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk96382_)))
                        _g101093_))
                ((let () (declare (not safe)) (##fx= _g101092_ 2))
                 (apply (lambda (_thunk96386_ _error-port96387_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk96386_
                             _error-port96387_)))
                        _g101093_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g101093_))))))
    (define dump-stack-trace!__%
      (lambda (_cont96351_ _exn96352_ _error-port96353_)
        (let ((_out96355_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out96355_))
          (display '"*** Unhandled exception in " _out96355_)
          (display (current-thread) _out96355_)
          (newline _out96355_)
          (display-exception _exn96352_ _out96355_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn96352_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out96355_)
                (newline _out96355_)
                (display-continuation-backtrace _cont96351_ _out96355_)))
          (let ((__tmp101094 (get-output-string _out96355_)))
            (declare (not safe))
            (##write-string __tmp101094 _error-port96353_)))))
    (define dump-stack-trace!__0
      (lambda (_cont96360_ _exn96361_)
        (let ((_error-port96363_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont96360_ _exn96361_ _error-port96363_))))
    (define dump-stack-trace!
      (lambda _g101096_
        (let ((_g101095_ (let () (declare (not safe)) (##length _g101096_))))
          (cond ((let () (declare (not safe)) (##fx= _g101095_ 2))
                 (apply (lambda (_cont96360_ _exn96361_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont96360_ _exn96361_)))
                        _g101096_))
                ((let () (declare (not safe)) (##fx= _g101095_ 3))
                 (apply (lambda (_cont96365_ _exn96366_ _error-port96367_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont96365_
                             _exn96366_
                             _error-port96367_)))
                        _g101096_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g101096_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
