(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/threads#spawn
    (lambda (_f781_ . _args782_)
      (gerbil/gambit/threads#spawn-actor _f781_ _args782_ '#!void '#f)))
  (define gerbil/gambit/threads#spawn/name
    (lambda (_name777_ _f778_ . _args779_)
      (gerbil/gambit/threads#spawn-actor _f778_ _args779_ _name777_ '#f)))
  (define gerbil/gambit/threads#spawn/group
    (lambda (_name771_ _f772_ . _args773_)
      (let ((_tgroup775_ (make-thread-group _name771_)))
        (gerbil/gambit/threads#spawn-actor
         _f772_
         _args773_
         _name771_
         _tgroup775_))))
  (define gerbil/gambit/threads#spawn-actor
    (lambda (_f749_ _args750_ _name751_ _tgroup752_)
      (letrec ((_thread-main754_
                (lambda (_thunk763_)
                  (lambda ()
                    (with-exception-handler
                     (lambda (_exn766_)
                       (##continuation-capture
                        (lambda (_cont768_)
                          (begin
                            (if gerbil/gambit/threads#unhandled-actor-exception-hook
                                (with-catch
                                 void
                                 (lambda ()
                                   (gerbil/gambit/threads#unhandled-actor-exception-hook
                                    _cont768_
                                    _exn766_)))
                                '#!void)
                            (##continuation-graft
                             (##continuation-last _cont768_)
                             ##primordial-exception-handler
                             _exn766_)))))
                     _thunk763_)))))
        (if (procedure? _f749_)
            (let ((_thunk760_
                   (if (null? _args750_)
                       _f749_
                       (lambda () (apply _f749_ _args750_))))
                  (_tgroup761_
                   (let ((_$e757_ _tgroup752_))
                     (if _$e757_
                         _$e757_
                         (gerbil/gambit/threads#current-thread-group)))))
              (thread-start!
               (thread-init!
                (gerbil/gambit/threads#construct-actor-thread '#f)
                (_thread-main754_ _thunk760_)
                _name751_
                _tgroup761_)))
            (error '"Bad argument; expected procedure" _f749_)))))
  (begin
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
     locals))
  (define gerbil/gambit/threads#spawn-thread
    (let ((_opt-lambda725731_
           (lambda (_thunk727_ _name728_ _tgroup729_)
             (thread-start! (make-thread _thunk727_ _name728_ _tgroup729_)))))
      (lambda _g784_
        (let ((_g783_ (length _g784_)))
          (cond ((##fx= _g783_ 1)
                 (apply (lambda (_thunk734_)
                          (let* ((_name736_ absent-obj)
                                 (_tgroup738_ absent-obj))
                            (_opt-lambda725731_
                             _thunk734_
                             _name736_
                             _tgroup738_)))
                        _g784_))
                ((##fx= _g783_ 2)
                 (apply (lambda (_thunk740_ _name741_)
                          (let ((_tgroup743_ absent-obj))
                            (_opt-lambda725731_
                             _thunk740_
                             _name741_
                             _tgroup743_)))
                        _g784_))
                ((##fx= _g783_ 3) (apply _opt-lambda725731_ _g784_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/threads#spawn-thread
                  _g784_)))))))
  (define gerbil/gambit/threads#thread-local-ref
    (let ((_opt-lambda709716_
           (lambda (_key711_ _default712_)
             (let ((_tab714_ (gerbil/gambit/threads#thread-local-table)))
               (hash-ref _tab714_ _key711_ _default712_)))))
      (lambda _g786_
        (let ((_g785_ (length _g786_)))
          (cond ((##fx= _g785_ 1)
                 (apply (lambda (_key719_)
                          (let ((_default721_ absent-obj))
                            (_opt-lambda709716_ _key719_ _default721_)))
                        _g786_))
                ((##fx= _g785_ 2) (apply _opt-lambda709716_ _g786_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/threads#thread-local-ref
                  _g786_)))))))
  (define gerbil/gambit/threads#thread-local-get
    (lambda (_key708_) (gerbil/gambit/threads#thread-local-ref _key708_ '#f)))
  (define gerbil/gambit/threads#thread-local-set!
    (lambda (_key703_ _value704_)
      (let ((_tab706_ (gerbil/gambit/threads#thread-local-table)))
        (hash-put! _tab706_ _key703_ _value704_))))
  (define gerbil/gambit/threads#thread-local-clear!
    (lambda (_key699_)
      (let ((_tab701_ (gerbil/gambit/threads#thread-local-table)))
        (hash-remove! _tab701_ _key699_))))
  (define gerbil/gambit/threads#thread-local-table
    (lambda ()
      (let ((_thr685_ (current-thread)))
        (if (gerbil/gambit/threads#actor-thread? _thr685_)
            (let ((_$e687_ (gerbil/gambit/threads#actor-thread-locals
                            _thr685_)))
              (if _$e687_
                  (values _$e687_)
                  (let ((_tab690_ (make-hash-table-eq)))
                    (begin
                      (gerbil/gambit/threads#actor-thread-locals-set!
                       _thr685_
                       _tab690_)
                      _tab690_))))
            (begin
              (mutex-lock! gerbil/gambit/threads#*thread-locals-mutex*)
              (let ((_$e692_ (hash-get
                              gerbil/gambit/threads#*thread-locals*
                              _thr685_)))
                (if _$e692_
                    ((lambda (_tab695_)
                       (begin
                         (mutex-unlock!
                          gerbil/gambit/threads#*thread-locals-mutex*)
                         _tab695_))
                     _$e692_)
                    (let ((_tab697_ (make-hash-table-eq)))
                      (begin
                        (hash-put!
                         gerbil/gambit/threads#*thread-locals*
                         _thr685_
                         _tab697_)
                        (mutex-unlock!
                         gerbil/gambit/threads#*thread-locals-mutex*)
                        _tab697_)))))))))
  (define gerbil/gambit/threads#*thread-locals*
    (make-hash-table-eq 'weak-keys: '#t))
  (define gerbil/gambit/threads#*thread-locals-mutex*
    (make-mutex 'thread-locals))
  (define gerbil/gambit/threads#unhandled-actor-exception-hook '#f)
  (define gerbil/gambit/threads#unhandled-actor-exception-hook-set!
    (lambda (_proc679_)
      (if (if (not _proc679_) '#t (procedure? _proc679_))
          (set! gerbil/gambit/threads#unhandled-actor-exception-hook _proc679_)
          (error '"Bad argument; expected procedure or #f" _proc679_))))
  (define gerbil/gambit/threads#with-exception-stack-trace
    (let ((_opt-lambda658669_
           (lambda (_thunk660_ _error-port661_)
             (with-exception-handler
              (let ((_E663_ (current-exception-handler)))
                (lambda (_exn665_)
                  (##continuation-capture
                   (lambda (_cont667_)
                     (begin
                       (gerbil/gambit/threads#dump-stack-trace!
                        _cont667_
                        _exn665_
                        _error-port661_)
                       (_E663_ _exn665_))))))
              _thunk660_))))
      (lambda _g788_
        (let ((_g787_ (length _g788_)))
          (cond ((##fx= _g787_ 1)
                 (apply (lambda (_thunk672_)
                          (let ((_error-port674_ (current-error-port)))
                            (_opt-lambda658669_ _thunk672_ _error-port674_)))
                        _g788_))
                ((##fx= _g787_ 2) (apply _opt-lambda658669_ _g788_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/threads#with-exception-stack-trace
                  _g788_)))))))
  (begin
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
        (##write-string (get-output-string out) error-port))))
  (define gerbil/gambit/threads#current-thread-group
    (lambda () (thread-thread-group (current-thread))))
  (define gerbil/gambit/threads#with-lock
    (lambda (_mx653_ _proc654_)
      (dynamic-wind
       (lambda () (mutex-lock! _mx653_))
       _proc654_
       (lambda () (mutex-unlock! _mx653_))))))
