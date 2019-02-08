(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/threads#spawn
    (lambda (_f686_ . _args687_)
      (gerbil/gambit/threads#spawn-actor _f686_ _args687_ '#!void '#f)))
  (define gerbil/gambit/threads#spawn/name
    (lambda (_name682_ _f683_ . _args684_)
      (gerbil/gambit/threads#spawn-actor _f683_ _args684_ _name682_ '#f)))
  (define gerbil/gambit/threads#spawn/group
    (lambda (_name676_ _f677_ . _args678_)
      (let ((_tgroup680_ (make-thread-group _name676_)))
        (gerbil/gambit/threads#spawn-actor
         _f677_
         _args678_
         _name676_
         _tgroup680_))))
  (define gerbil/gambit/threads#spawn-actor
    (lambda (_f654_ _args655_ _name656_ _tgroup657_)
      (letrec ((_thread-main659_
                (lambda (_thunk668_)
                  (lambda ()
                    (with-exception-handler
                     (lambda (_exn671_)
                       (##continuation-capture
                        (lambda (_cont673_)
                          (if gerbil/gambit/threads#unhandled-actor-exception-hook
                              (with-catch
                               void
                               (lambda ()
                                 (gerbil/gambit/threads#unhandled-actor-exception-hook
                                  _cont673_
                                  _exn671_)))
                              '#!void)
                          (##continuation-graft
                           (##continuation-last _cont673_)
                           ##primordial-exception-handler
                           _exn671_))))
                     _thunk668_)))))
        (if (procedure? _f654_)
            (let ((_thunk665_
                   (if (null? _args655_)
                       _f654_
                       (lambda () (apply _f654_ _args655_))))
                  (_tgroup666_
                   (let ((_$e662_ _tgroup657_))
                     (if _$e662_
                         _$e662_
                         (gerbil/gambit/threads#current-thread-group)))))
              (thread-start!
               (thread-init!
                (gerbil/gambit/threads#construct-actor-thread '#f)
                (_thread-main659_ _thunk665_)
                _name656_
                _tgroup666_)))
            (error '"Bad argument; expected procedure" _f654_)))))
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
    (let ((_opt-lambda630636_
           (lambda (_thunk632_ _name633_ _tgroup634_)
             (thread-start! (make-thread _thunk632_ _name633_ _tgroup634_)))))
      (lambda _g689_
        (let ((_g688_ (length _g689_)))
          (cond ((##fx= _g688_ 1)
                 (apply (lambda (_thunk639_)
                          (let* ((_name641_ absent-obj)
                                 (_tgroup643_ absent-obj))
                            (_opt-lambda630636_
                             _thunk639_
                             _name641_
                             _tgroup643_)))
                        _g689_))
                ((##fx= _g688_ 2)
                 (apply (lambda (_thunk645_ _name646_)
                          (let ((_tgroup648_ absent-obj))
                            (_opt-lambda630636_
                             _thunk645_
                             _name646_
                             _tgroup648_)))
                        _g689_))
                ((##fx= _g688_ 3) (apply _opt-lambda630636_ _g689_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/threads#spawn-thread
                  _g689_)))))))
  (define gerbil/gambit/threads#thread-local-ref
    (let ((_opt-lambda614621_
           (lambda (_key616_ _default617_)
             (let ((_tab619_ (gerbil/gambit/threads#thread-local-table)))
               (hash-ref _tab619_ _key616_ _default617_)))))
      (lambda _g691_
        (let ((_g690_ (length _g691_)))
          (cond ((##fx= _g690_ 1)
                 (apply (lambda (_key624_)
                          (let ((_default626_ absent-obj))
                            (_opt-lambda614621_ _key624_ _default626_)))
                        _g691_))
                ((##fx= _g690_ 2) (apply _opt-lambda614621_ _g691_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/threads#thread-local-ref
                  _g691_)))))))
  (define gerbil/gambit/threads#thread-local-get
    (lambda (_key613_) (gerbil/gambit/threads#thread-local-ref _key613_ '#f)))
  (define gerbil/gambit/threads#thread-local-set!
    (lambda (_key608_ _value609_)
      (let ((_tab611_ (gerbil/gambit/threads#thread-local-table)))
        (hash-put! _tab611_ _key608_ _value609_))))
  (define gerbil/gambit/threads#thread-local-clear!
    (lambda (_key604_)
      (let ((_tab606_ (gerbil/gambit/threads#thread-local-table)))
        (hash-remove! _tab606_ _key604_))))
  (define gerbil/gambit/threads#thread-local-table
    (lambda ()
      (let ((_thr590_ (current-thread)))
        (if (gerbil/gambit/threads#actor-thread? _thr590_)
            (let ((_$e592_ (gerbil/gambit/threads#actor-thread-locals
                            _thr590_)))
              (if _$e592_
                  (values _$e592_)
                  (let ((_tab595_ (make-hash-table-eq)))
                    (gerbil/gambit/threads#actor-thread-locals-set!
                     _thr590_
                     _tab595_)
                    _tab595_)))
            (if (eq? _thr590_ ##primordial-thread)
                gerbil/gambit/threads#*primordial-thread-locals*
                (begin
                  (mutex-lock! gerbil/gambit/threads#*thread-locals-mutex*)
                  (let ((_$e597_ (hash-get
                                  gerbil/gambit/threads#*thread-locals*
                                  _thr590_)))
                    (if _$e597_
                        ((lambda (_tab600_)
                           (mutex-unlock!
                            gerbil/gambit/threads#*thread-locals-mutex*)
                           _tab600_)
                         _$e597_)
                        (let ((_tab602_ (make-hash-table-eq)))
                          (hash-put!
                           gerbil/gambit/threads#*thread-locals*
                           _thr590_
                           _tab602_)
                          (mutex-unlock!
                           gerbil/gambit/threads#*thread-locals-mutex*)
                          _tab602_)))))))))
  (define gerbil/gambit/threads#*primordial-thread-locals*
    (make-hash-table-eq))
  (define gerbil/gambit/threads#*thread-locals*
    (make-hash-table-eq 'weak-keys: '#t))
  (define gerbil/gambit/threads#*thread-locals-mutex*
    (make-mutex 'thread-locals))
  (define gerbil/gambit/threads#unhandled-actor-exception-hook '#f)
  (define gerbil/gambit/threads#unhandled-actor-exception-hook-set!
    (lambda (_proc584_)
      (if (or (not _proc584_) (procedure? _proc584_))
          (set! gerbil/gambit/threads#unhandled-actor-exception-hook _proc584_)
          (error '"Bad argument; expected procedure or #f" _proc584_))))
  (define gerbil/gambit/threads#with-exception-stack-trace
    (let ((_opt-lambda563574_
           (lambda (_thunk565_ _error-port566_)
             (with-exception-handler
              (let ((_E568_ (current-exception-handler)))
                (lambda (_exn570_)
                  (##continuation-capture
                   (lambda (_cont572_)
                     (gerbil/gambit/threads#dump-stack-trace!
                      _cont572_
                      _exn570_
                      _error-port566_)
                     (_E568_ _exn570_)))))
              _thunk565_))))
      (lambda _g693_
        (let ((_g692_ (length _g693_)))
          (cond ((##fx= _g692_ 1)
                 (apply (lambda (_thunk577_)
                          (let ((_error-port579_ (current-error-port)))
                            (_opt-lambda563574_ _thunk577_ _error-port579_)))
                        _g693_))
                ((##fx= _g692_ 2) (apply _opt-lambda563574_ _g693_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/threads#with-exception-stack-trace
                  _g693_)))))))
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
    (lambda (_mx558_ _proc559_)
      (dynamic-wind
       (lambda () (mutex-lock! _mx558_))
       _proc559_
       (lambda () (mutex-unlock! _mx558_))))))
