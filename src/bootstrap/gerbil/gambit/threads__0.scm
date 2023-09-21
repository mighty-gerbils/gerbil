(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/threads::timestamp 1695292388)
  (begin
    (define gerbil/gambit/threads#spawn
      (lambda (_f330_ . _args331_)
        (gerbil/gambit/threads#spawn-actor _f330_ _args331_ '#!void '#f)))
    (define gerbil/gambit/threads#spawn/name
      (lambda (_name326_ _f327_ . _args328_)
        (gerbil/gambit/threads#spawn-actor _f327_ _args328_ _name326_ '#f)))
    (define gerbil/gambit/threads#spawn/group
      (lambda (_name320_ _f321_ . _args322_)
        (let ((_tgroup324_ (make-thread-group _name320_)))
          (gerbil/gambit/threads#spawn-actor
           _f321_
           _args322_
           _name320_
           _tgroup324_))))
    (define gerbil/gambit/threads#spawn-actor
      (lambda (_f298_ _args299_ _name300_ _tgroup301_)
        (letrec ((_thread-main303_
                  (lambda (_thunk312_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn315_)
                         (let ((__tmp332
                                (lambda (_cont317_)
                                  (if gerbil/gambit/threads#unhandled-actor-exception-hook
                                      (with-catch
                                       void
                                       (lambda ()
                                         (gerbil/gambit/threads#unhandled-actor-exception-hook
                                          _cont317_
                                          _exn315_)))
                                      '#!void)
                                  (let ((__tmp333
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont317_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp333
                                     ##primordial-exception-handler
                                     _exn315_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp332)))
                       _thunk312_)))))
          (if (procedure? _f298_)
              (let ((_thunk309_
                     (if (null? _args299_)
                         _f298_
                         (lambda () (apply _f298_ _args299_))))
                    (_tgroup310_
                     (let ((_$e306_ _tgroup301_))
                       (if _$e306_
                           _$e306_
                           (gerbil/gambit/threads#current-thread-group)))))
                (thread-start!
                 (thread-init!
                  (gerbil/gambit/threads#construct-actor-thread '#f '0)
                  (_thread-main303_ _thunk309_)
                  _name300_
                  _tgroup310_)))
              (error '"Bad argument; expected procedure" _f298_)))))
    (namespace
     ("gerbil/gambit/threads#"
      construct-actor-thread
      actor-thread?
      actor-thread-locals
      actor-thread-locals-set!
      actor-thread-nonce
      actor-thread-nonce-set!))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor-thread::t
     locals
     nonce)
    (define gerbil/gambit/threads#spawn-thread
      (let ((_opt-lambda274280_
             (lambda (_thunk276_ _name277_ _tgroup278_)
               (thread-start!
                (make-thread _thunk276_ _name277_ _tgroup278_)))))
        (lambda _g335_
          (let ((_g334_ (let () (declare (not safe)) (##length _g335_))))
            (cond ((let () (declare (not safe)) (##fx= _g334_ 1))
                   (apply (lambda (_thunk283_)
                            (let* ((_name285_ absent-obj)
                                   (_tgroup287_ absent-obj))
                              (_opt-lambda274280_
                               _thunk283_
                               _name285_
                               _tgroup287_)))
                          _g335_))
                  ((let () (declare (not safe)) (##fx= _g334_ 2))
                   (apply (lambda (_thunk289_ _name290_)
                            (let ((_tgroup292_ absent-obj))
                              (_opt-lambda274280_
                               _thunk289_
                               _name290_
                               _tgroup292_)))
                          _g335_))
                  ((let () (declare (not safe)) (##fx= _g334_ 3))
                   (apply _opt-lambda274280_ _g335_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/gambit/threads#spawn-thread
                    _g335_)))))))
    (define gerbil/gambit/threads#thread-local-ref
      (let ((_opt-lambda258265_
             (lambda (_key260_ _default261_)
               (let ((_tab263_ (gerbil/gambit/threads#thread-local-table)))
                 (hash-ref _tab263_ _key260_ _default261_)))))
        (lambda _g337_
          (let ((_g336_ (let () (declare (not safe)) (##length _g337_))))
            (cond ((let () (declare (not safe)) (##fx= _g336_ 1))
                   (apply (lambda (_key268_)
                            (let ((_default270_ absent-obj))
                              (_opt-lambda258265_ _key268_ _default270_)))
                          _g337_))
                  ((let () (declare (not safe)) (##fx= _g336_ 2))
                   (apply _opt-lambda258265_ _g337_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/gambit/threads#thread-local-ref
                    _g337_)))))))
    (define gerbil/gambit/threads#thread-local-get
      (lambda (_key257_)
        (gerbil/gambit/threads#thread-local-ref _key257_ '#f)))
    (define gerbil/gambit/threads#thread-local-set!
      (lambda (_key252_ _value253_)
        (let ((_tab255_ (gerbil/gambit/threads#thread-local-table)))
          (hash-put! _tab255_ _key252_ _value253_))))
    (define gerbil/gambit/threads#thread-local-clear!
      (lambda (_key248_)
        (let ((_tab250_ (gerbil/gambit/threads#thread-local-table)))
          (hash-remove! _tab250_ _key248_))))
    (define gerbil/gambit/threads#thread-local-table
      (lambda ()
        (let ((_thr234_ (current-thread)))
          (if (gerbil/gambit/threads#actor-thread? _thr234_)
              (let ((_$e236_ (gerbil/gambit/threads#actor-thread-locals
                              _thr234_)))
                (if _$e236_
                    (values _$e236_)
                    (let ((_tab239_ (make-hash-table-eq)))
                      (gerbil/gambit/threads#actor-thread-locals-set!
                       _thr234_
                       _tab239_)
                      _tab239_)))
              (if (eq? _thr234_ ##primordial-thread)
                  gerbil/gambit/threads#*primordial-thread-locals*
                  (begin
                    (mutex-lock! gerbil/gambit/threads#*thread-locals-mutex*)
                    (let ((_$e241_ (hash-get
                                    gerbil/gambit/threads#*thread-locals*
                                    _thr234_)))
                      (if _$e241_
                          ((lambda (_tab244_)
                             (mutex-unlock!
                              gerbil/gambit/threads#*thread-locals-mutex*)
                             _tab244_)
                           _$e241_)
                          (let ((_tab246_ (make-hash-table-eq)))
                            (hash-put!
                             gerbil/gambit/threads#*thread-locals*
                             _thr234_
                             _tab246_)
                            (mutex-unlock!
                             gerbil/gambit/threads#*thread-locals-mutex*)
                            _tab246_)))))))))
    (define gerbil/gambit/threads#*primordial-thread-locals*
      (make-hash-table-eq))
    (define gerbil/gambit/threads#*thread-locals*
      (make-hash-table-eq 'weak-keys: '#t))
    (define gerbil/gambit/threads#*thread-locals-mutex*
      (make-mutex 'thread-locals))
    (define gerbil/gambit/threads#unhandled-actor-exception-hook '#f)
    (define gerbil/gambit/threads#unhandled-actor-exception-hook-set!
      (lambda (_proc228_)
        (if (or (not _proc228_) (procedure? _proc228_))
            (set! gerbil/gambit/threads#unhandled-actor-exception-hook
                  _proc228_)
            (error '"Bad argument; expected procedure or #f" _proc228_))))
    (define gerbil/gambit/threads#current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define gerbil/gambit/threads#with-lock
      (lambda (_mx216_ _proc217_)
        (let ((_handler219_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e221_)
             (with-catch
              void
              (lambda () (mutex-unlock! _mx216_) (_handler219_ _e221_)))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e221_)))
           (lambda ()
             (mutex-lock! _mx216_)
             (let ((_result225_ (_proc217_)))
               (mutex-unlock! _mx216_)
               _result225_))))))
    (define gerbil/gambit/threads#with-dynamic-lock
      (lambda (_mx211_ _proc212_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx211_))
         _proc212_
         (lambda () (mutex-unlock! _mx211_)))))))
