(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/threads#spawn
    (lambda (_f738_ . _args739_)
      (gerbil/gambit/threads#spawn-actor _f738_ _args739_ '#!void '#f)))
  (define gerbil/gambit/threads#spawn/name
    (lambda (_name734_ _f735_ . _args736_)
      (gerbil/gambit/threads#spawn-actor _f735_ _args736_ _name734_ '#f)))
  (define gerbil/gambit/threads#spawn/group
    (lambda (_name728_ _f729_ . _args730_)
      (let ((_tgroup732_ (make-thread-group _name728_)))
        (gerbil/gambit/threads#spawn-actor
         _f729_
         _args730_
         _name728_
         _tgroup732_))))
  (define gerbil/gambit/threads#spawn-actor
    (lambda (_f706_ _args707_ _name708_ _tgroup709_)
      (letrec ((_thread-main711_
                (lambda (_thunk720_)
                  (lambda ()
                    (with-exception-handler
                     (lambda (_exn723_)
                       (##continuation-capture
                        (lambda (_cont725_)
                          (begin
                            (if gerbil/gambit/threads#unhandled-actor-exception-hook
                                (with-catch
                                 void
                                 (lambda ()
                                   (gerbil/gambit/threads#unhandled-actor-exception-hook
                                    _cont725_
                                    _exn723_)))
                                '#!void)
                            (##continuation-graft
                             (##continuation-last _cont725_)
                             ##primordial-exception-handler
                             _exn723_)))))
                     _thunk720_)))))
        (if (procedure? _f706_)
            (let ((_thunk717_
                   (if (null? _args707_)
                       _f706_
                       (lambda () (apply _f706_ _args707_))))
                  (_tgroup718_
                   (let ((_$e714_ _tgroup709_))
                     (if _$e714_
                         _$e714_
                         (gerbil/gambit/threads#current-thread-group)))))
              (thread-start!
               (make-thread
                (_thread-main711_ _thunk717_)
                _name708_
                _tgroup718_)))
            (error '"Bad argument; expected procedure" _f706_)))))
  (define gerbil/gambit/threads#spawn-thread
    (let ((_opt-lambda682688_
           (lambda (_thunk684_ _name685_ _tgroup686_)
             (thread-start! (make-thread _thunk684_ _name685_ _tgroup686_)))))
      (lambda _g741_
        (let ((_g740_ (length _g741_)))
          (cond ((fx= _g740_ 1)
                 (apply (lambda (_thunk691_)
                          (let* ((_name693_ absent-obj)
                                 (_tgroup695_ absent-obj))
                            (_opt-lambda682688_
                             _thunk691_
                             _name693_
                             _tgroup695_)))
                        _g741_))
                ((fx= _g740_ 2)
                 (apply (lambda (_thunk697_ _name698_)
                          (let ((_tgroup700_ absent-obj))
                            (_opt-lambda682688_
                             _thunk697_
                             _name698_
                             _tgroup700_)))
                        _g741_))
                ((fx= _g740_ 3) (apply _opt-lambda682688_ _g741_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/threads#spawn-thread
                  _g741_)))))))
  (define gerbil/gambit/threads#current-thread-group
    (lambda () (thread-thread-group (current-thread))))
  (define gerbil/gambit/threads#with-lock
    (lambda (_mx677_ _proc678_)
      (dynamic-wind
       (lambda () (mutex-lock! _mx677_))
       _proc678_
       (lambda () (mutex-unlock! _mx677_)))))
  (define gerbil/gambit/threads#unhandled-actor-exception-hook '#f)
  (define gerbil/gambit/threads#unhandled-actor-exception-hook-set!
    (lambda (_proc672_)
      (if (let ((_$e674_ (not _proc672_)))
            (if _$e674_ _$e674_ (procedure? _proc672_)))
          (set! gerbil/gambit/threads#unhandled-actor-exception-hook _proc672_)
          (error '"Bad argument; expected procedure or #f" _proc672_))))
  (define gerbil/gambit/threads#with-exception-stack-trace
    (let ((_opt-lambda651662_
           (lambda (_thunk653_ _error-port654_)
             (with-exception-handler
              (let ((_E656_ (current-exception-handler)))
                (lambda (_exn658_)
                  (##continuation-capture
                   (lambda (_cont660_)
                     (begin
                       (gerbil/gambit/threads#dump-stack-trace!
                        _cont660_
                        _exn658_
                        _error-port654_)
                       (_E656_ _exn658_))))))
              _thunk653_))))
      (lambda _g743_
        (let ((_g742_ (length _g743_)))
          (cond ((fx= _g742_ 1)
                 (apply (lambda (_thunk665_)
                          (let ((_error-port667_ (current-error-port)))
                            (_opt-lambda651662_ _thunk665_ _error-port667_)))
                        _g743_))
                ((fx= _g742_ 2) (apply _opt-lambda651662_ _g743_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/threads#with-exception-stack-trace
                  _g743_)))))))
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
        (##write-string (get-output-string out) error-port)))))
