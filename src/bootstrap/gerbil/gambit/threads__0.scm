(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/threads#spawn
    (lambda (_f705_ . _args706_)
      (gerbil/gambit/threads#spawn-actor _f705_ _args706_ '#!void '#f)))
  (define gerbil/gambit/threads#spawn/name
    (lambda (_name701_ _f702_ . _args703_)
      (gerbil/gambit/threads#spawn-actor _f702_ _args703_ _name701_ '#f)))
  (define gerbil/gambit/threads#spawn/group
    (lambda (_name695_ _f696_ . _args697_)
      (let ((_tgroup699_ (make-thread-group _name695_)))
        (gerbil/gambit/threads#spawn-actor
         _f696_
         _args697_
         _name695_
         _tgroup699_))))
  (define gerbil/gambit/threads#spawn-actor
    (lambda (_f673_ _args674_ _name675_ _tgroup676_)
      (letrec ((_thread-main678_
                (lambda (_thunk687_)
                  (lambda ()
                    (with-exception-handler
                     (lambda (_exn690_)
                       (##continuation-capture
                        (lambda (_cont692_)
                          (begin
                            (if gerbil/gambit/threads#unhandled-actor-exception-hook
                                (with-catch
                                 void
                                 (lambda ()
                                   (gerbil/gambit/threads#unhandled-actor-exception-hook
                                    _cont692_
                                    _exn690_)))
                                '#!void)
                            (##continuation-graft
                             (##continuation-last _cont692_)
                             ##primordial-exception-handler
                             _exn690_)))))
                     _thunk687_)))))
        (if (procedure? _f673_)
            (let ((_thunk684_
                   (if (null? _args674_)
                       _f673_
                       (lambda () (apply _f673_ _args674_))))
                  (_tgroup685_
                   (let ((_$e681_ _tgroup676_))
                     (if _$e681_
                         _$e681_
                         (gerbil/gambit/threads#current-thread-group)))))
              (thread-start!
               (make-thread
                (_thread-main678_ _thunk684_)
                _name675_
                _tgroup685_)))
            (error '"Bad argument; expected procedure" _f673_)))))
  (define gerbil/gambit/threads#spawn-thread
    (let ((_opt-lambda649655_
           (lambda (_thunk651_ _name652_ _tgroup653_)
             (thread-start! (make-thread _thunk651_ _name652_ _tgroup653_)))))
      (lambda _g708_
        (let ((_g707_ (length _g708_)))
          (cond ((fx= _g707_ 1)
                 (apply (lambda (_thunk658_)
                          (let* ((_name660_ absent-obj)
                                 (_tgroup662_ absent-obj))
                            (_opt-lambda649655_
                             _thunk658_
                             _name660_
                             _tgroup662_)))
                        _g708_))
                ((fx= _g707_ 2)
                 (apply (lambda (_thunk664_ _name665_)
                          (let ((_tgroup667_ absent-obj))
                            (_opt-lambda649655_
                             _thunk664_
                             _name665_
                             _tgroup667_)))
                        _g708_))
                ((fx= _g707_ 3) (apply _opt-lambda649655_ _g708_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/threads#spawn-thread
                  _g708_)))))))
  (define gerbil/gambit/threads#current-thread-group
    (lambda () (thread-thread-group (current-thread))))
  (define gerbil/gambit/threads#with-lock
    (lambda (_mx644_ _proc645_)
      (dynamic-wind
       (lambda () (mutex-lock! _mx644_))
       _proc645_
       (lambda () (mutex-unlock! _mx644_)))))
  (define gerbil/gambit/threads#unhandled-actor-exception-hook '#f)
  (define gerbil/gambit/threads#unhandled-actor-exception-hook-set!
    (lambda (_proc639_)
      (if (let ((_$e641_ (not _proc639_)))
            (if _$e641_ _$e641_ (procedure? _proc639_)))
          (set! gerbil/gambit/threads#unhandled-actor-exception-hook _proc639_)
          (error '"Bad argument; expected procedure or #f" _proc639_))))
  (define gerbil/gambit/threads#with-exception-stack-trace
    (let ((_opt-lambda618629_
           (lambda (_thunk620_ _error-port621_)
             (with-exception-handler
              (let ((_E623_ (current-exception-handler)))
                (lambda (_exn625_)
                  (##continuation-capture
                   (lambda (_cont627_)
                     (begin
                       (gerbil/gambit/threads#dump-stack-trace!
                        _cont627_
                        _exn625_
                        _error-port621_)
                       (_E623_ _exn625_))))))
              _thunk620_))))
      (lambda _g710_
        (let ((_g709_ (length _g710_)))
          (cond ((fx= _g709_ 1)
                 (apply (lambda (_thunk632_)
                          (let ((_error-port634_ (current-error-port)))
                            (_opt-lambda618629_ _thunk632_ _error-port634_)))
                        _g710_))
                ((fx= _g709_ 2) (apply _opt-lambda618629_ _g710_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/threads#with-exception-stack-trace
                  _g710_)))))))
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
