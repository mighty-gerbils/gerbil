(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/threads::timestamp 1693679888)
  (begin
    (define gerbil/gambit/threads#spawn
      (lambda (_f350_ . _args351_)
        (gerbil/gambit/threads#spawn-actor _f350_ _args351_ '#!void '#f)))
    (define gerbil/gambit/threads#spawn/name
      (lambda (_name346_ _f347_ . _args348_)
        (gerbil/gambit/threads#spawn-actor _f347_ _args348_ _name346_ '#f)))
    (define gerbil/gambit/threads#spawn/group
      (lambda (_name340_ _f341_ . _args342_)
        (let ((_tgroup344_ (make-thread-group _name340_)))
          (gerbil/gambit/threads#spawn-actor
           _f341_
           _args342_
           _name340_
           _tgroup344_))))
    (define gerbil/gambit/threads#spawn-actor
      (lambda (_f318_ _args319_ _name320_ _tgroup321_)
        (letrec ((_thread-main323_
                  (lambda (_thunk332_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn335_)
                         (let ((__tmp352
                                (lambda (_cont337_)
                                  (if gerbil/gambit/threads#unhandled-actor-exception-hook
                                      (with-catch
                                       void
                                       (lambda ()
                                         (gerbil/gambit/threads#unhandled-actor-exception-hook
                                          _cont337_
                                          _exn335_)))
                                      '#!void)
                                  (let ((__tmp353
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont337_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp353
                                     ##primordial-exception-handler
                                     _exn335_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp352)))
                       _thunk332_)))))
          (if (procedure? _f318_)
              (let ((_thunk329_
                     (if (null? _args319_)
                         _f318_
                         (lambda () (apply _f318_ _args319_))))
                    (_tgroup330_
                     (let ((_$e326_ _tgroup321_))
                       (if _$e326_
                           _$e326_
                           (gerbil/gambit/threads#current-thread-group)))))
                (thread-start!
                 (thread-init!
                  (gerbil/gambit/threads#construct-actor-thread '#f)
                  (_thread-main323_ _thunk329_)
                  _name320_
                  _tgroup330_)))
              (error '"Bad argument; expected procedure" _f318_)))))
    (namespace
     ("gerbil/gambit/threads#"
      construct-actor-thread
      actor-thread?
      actor-thread-locals
      actor-thread-locals-set!))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor-thread::t
     locals)
    (define gerbil/gambit/threads#spawn-thread
      (let ((_opt-lambda294300_
             (lambda (_thunk296_ _name297_ _tgroup298_)
               (thread-start!
                (make-thread _thunk296_ _name297_ _tgroup298_)))))
        (lambda _g355_
          (let ((_g354_ (let () (declare (not safe)) (##length _g355_))))
            (cond ((let () (declare (not safe)) (##fx= _g354_ 1))
                   (apply (lambda (_thunk303_)
                            (let* ((_name305_ absent-obj)
                                   (_tgroup307_ absent-obj))
                              (_opt-lambda294300_
                               _thunk303_
                               _name305_
                               _tgroup307_)))
                          _g355_))
                  ((let () (declare (not safe)) (##fx= _g354_ 2))
                   (apply (lambda (_thunk309_ _name310_)
                            (let ((_tgroup312_ absent-obj))
                              (_opt-lambda294300_
                               _thunk309_
                               _name310_
                               _tgroup312_)))
                          _g355_))
                  ((let () (declare (not safe)) (##fx= _g354_ 3))
                   (apply _opt-lambda294300_ _g355_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/gambit/threads#spawn-thread
                    _g355_)))))))
    (define gerbil/gambit/threads#thread-local-ref
      (let ((_opt-lambda278285_
             (lambda (_key280_ _default281_)
               (let ((_tab283_ (gerbil/gambit/threads#thread-local-table)))
                 (hash-ref _tab283_ _key280_ _default281_)))))
        (lambda _g357_
          (let ((_g356_ (let () (declare (not safe)) (##length _g357_))))
            (cond ((let () (declare (not safe)) (##fx= _g356_ 1))
                   (apply (lambda (_key288_)
                            (let ((_default290_ absent-obj))
                              (_opt-lambda278285_ _key288_ _default290_)))
                          _g357_))
                  ((let () (declare (not safe)) (##fx= _g356_ 2))
                   (apply _opt-lambda278285_ _g357_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/gambit/threads#thread-local-ref
                    _g357_)))))))
    (define gerbil/gambit/threads#thread-local-get
      (lambda (_key277_)
        (gerbil/gambit/threads#thread-local-ref _key277_ '#f)))
    (define gerbil/gambit/threads#thread-local-set!
      (lambda (_key272_ _value273_)
        (let ((_tab275_ (gerbil/gambit/threads#thread-local-table)))
          (hash-put! _tab275_ _key272_ _value273_))))
    (define gerbil/gambit/threads#thread-local-clear!
      (lambda (_key268_)
        (let ((_tab270_ (gerbil/gambit/threads#thread-local-table)))
          (hash-remove! _tab270_ _key268_))))
    (define gerbil/gambit/threads#thread-local-table
      (lambda ()
        (let ((_thr254_ (current-thread)))
          (if (gerbil/gambit/threads#actor-thread? _thr254_)
              (let ((_$e256_ (gerbil/gambit/threads#actor-thread-locals
                              _thr254_)))
                (if _$e256_
                    (values _$e256_)
                    (let ((_tab259_ (make-hash-table-eq)))
                      (gerbil/gambit/threads#actor-thread-locals-set!
                       _thr254_
                       _tab259_)
                      _tab259_)))
              (if (eq? _thr254_ ##primordial-thread)
                  gerbil/gambit/threads#*primordial-thread-locals*
                  (begin
                    (mutex-lock! gerbil/gambit/threads#*thread-locals-mutex*)
                    (let ((_$e261_ (hash-get
                                    gerbil/gambit/threads#*thread-locals*
                                    _thr254_)))
                      (if _$e261_
                          ((lambda (_tab264_)
                             (mutex-unlock!
                              gerbil/gambit/threads#*thread-locals-mutex*)
                             _tab264_)
                           _$e261_)
                          (let ((_tab266_ (make-hash-table-eq)))
                            (hash-put!
                             gerbil/gambit/threads#*thread-locals*
                             _thr254_
                             _tab266_)
                            (mutex-unlock!
                             gerbil/gambit/threads#*thread-locals-mutex*)
                            _tab266_)))))))))
    (define gerbil/gambit/threads#*primordial-thread-locals*
      (make-hash-table-eq))
    (define gerbil/gambit/threads#*thread-locals*
      (make-hash-table-eq 'weak-keys: '#t))
    (define gerbil/gambit/threads#*thread-locals-mutex*
      (make-mutex 'thread-locals))
    (define gerbil/gambit/threads#unhandled-actor-exception-hook '#f)
    (define gerbil/gambit/threads#unhandled-actor-exception-hook-set!
      (lambda (_proc248_)
        (if (or (not _proc248_) (procedure? _proc248_))
            (set! gerbil/gambit/threads#unhandled-actor-exception-hook
                  _proc248_)
            (error '"Bad argument; expected procedure or #f" _proc248_))))
    (define gerbil/gambit/threads#with-exception-stack-trace
      (let ((_opt-lambda227238_
             (lambda (_thunk229_ _error-port230_)
               (with-exception-handler
                (let ((_E232_ (current-exception-handler)))
                  (lambda (_exn234_)
                    (let ((__tmp358
                           (lambda (_cont236_)
                             (gerbil/gambit/threads#dump-stack-trace!
                              _cont236_
                              _exn234_
                              _error-port230_)
                             (_E232_ _exn234_))))
                      (declare (not safe))
                      (##continuation-capture __tmp358))))
                _thunk229_))))
        (lambda _g360_
          (let ((_g359_ (let () (declare (not safe)) (##length _g360_))))
            (cond ((let () (declare (not safe)) (##fx= _g359_ 1))
                   (apply (lambda (_thunk241_)
                            (let ((_error-port243_ (current-error-port)))
                              (_opt-lambda227238_ _thunk241_ _error-port243_)))
                          _g360_))
                  ((let () (declare (not safe)) (##fx= _g359_ 2))
                   (apply _opt-lambda227238_ _g360_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/gambit/threads#with-exception-stack-trace
                    _g360_)))))))
    (namespace ("gerbil/gambit/threads#" dump-stack-trace!))
    (define (dump-stack-trace!
             cont
             exn
             #!optional
             (error-port (current-error-port)))
      (let ((out (open-output-string)))
        (display "*** Unhandled exception in " out)
        (display (current-thread) out)
        (newline out)
        (display-exception exn out)
        (display "Continuation backtrace: " out)
        (newline out)
        (##display-continuation-backtrace
         cont
         out
         #f
         #f
         ##backtrace-default-max-head
         ##backtrace-default-max-tail
         0)
        (##write-string (get-output-string out) error-port)))
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
