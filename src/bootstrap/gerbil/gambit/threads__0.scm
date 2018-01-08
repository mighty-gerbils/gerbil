(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/threads#spawn
    (lambda (_f685_ . _args686_)
      (gerbil/gambit/threads#spawn-actor
       _f685_
       _args686_
       (let ((_$e688_ (##procedure-name _f685_))) (if _$e688_ _$e688_ '#!void))
       '#f)))
  (define gerbil/gambit/threads#spawn*
    (lambda (_f682_ . _args683_)
      (gerbil/gambit/threads#spawn-actor _f682_ _args683_ '#!void '#f)))
  (define gerbil/gambit/threads#spawn/name
    (lambda (_name678_ _f679_ . _args680_)
      (gerbil/gambit/threads#spawn-actor _f679_ _args680_ _name678_ '#f)))
  (define gerbil/gambit/threads#spawn/group
    (lambda (_name672_ _f673_ . _args674_)
      (let ((_tgroup676_ (make-thread-group _name672_)))
        (gerbil/gambit/threads#spawn-actor
         _f673_
         _args674_
         _name672_
         _tgroup676_))))
  (define gerbil/gambit/threads#spawn-actor
    (lambda (_f650_ _args651_ _name652_ _tgroup653_)
      (letrec ((_thread-main655_
                (lambda (_thunk664_)
                  (lambda ()
                    (with-exception-handler
                     (lambda (_exn667_)
                       (##continuation-capture
                        (lambda (_cont669_)
                          (begin
                            (if gerbil/gambit/threads#unhandled-actor-exception-hook
                                (with-catch
                                 void
                                 (lambda ()
                                   (gerbil/gambit/threads#unhandled-actor-exception-hook
                                    _cont669_
                                    _exn667_)))
                                '#!void)
                            (##continuation-graft
                             (##continuation-last _cont669_)
                             ##primordial-exception-handler
                             _exn667_)))))
                     _thunk664_)))))
        (if (procedure? _f650_)
            (let ((_thunk661_
                   (if (null? _args651_)
                       _f650_
                       (lambda () (apply _f650_ _args651_))))
                  (_tgroup662_
                   (let ((_$e658_ _tgroup653_))
                     (if _$e658_
                         _$e658_
                         (gerbil/gambit/threads#current-thread-group)))))
              (thread-start!
               (make-thread
                (_thread-main655_ _thunk661_)
                _name652_
                _tgroup662_)))
            (error '"Bad argument; expected procedure" _f650_)))))
  (define gerbil/gambit/threads#spawn-thread
    (let ((_opt-lambda626632_
           (lambda (_thunk628_ _name629_ _tgroup630_)
             (thread-start! (make-thread _thunk628_ _name629_ _tgroup630_)))))
      (lambda _g691_
        (let ((_g690_ (length _g691_)))
          (cond ((fx= _g690_ 1)
                 (apply (lambda (_thunk635_)
                          (let* ((_name637_ absent-obj)
                                 (_tgroup639_ absent-obj))
                            (_opt-lambda626632_
                             _thunk635_
                             _name637_
                             _tgroup639_)))
                        _g691_))
                ((fx= _g690_ 2)
                 (apply (lambda (_thunk641_ _name642_)
                          (let ((_tgroup644_ absent-obj))
                            (_opt-lambda626632_
                             _thunk641_
                             _name642_
                             _tgroup644_)))
                        _g691_))
                ((fx= _g690_ 3) (apply _opt-lambda626632_ _g691_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/threads#spawn-thread
                  _g691_)))))))
  (define gerbil/gambit/threads#current-thread-group
    (lambda () (thread-thread-group (current-thread))))
  (define gerbil/gambit/threads#with-lock
    (lambda (_mx621_ _proc622_)
      (dynamic-wind
       (lambda () (mutex-lock! _mx621_))
       _proc622_
       (lambda () (mutex-unlock! _mx621_)))))
  (define gerbil/gambit/threads#unhandled-actor-exception-hook '#f)
  (define gerbil/gambit/threads#unhandled-actor-exception-hook-set!
    (lambda (_proc616_)
      (if (let ((_$e618_ (not _proc616_)))
            (if _$e618_ _$e618_ (procedure? _proc616_)))
          (set! gerbil/gambit/threads#unhandled-actor-exception-hook _proc616_)
          (error '"Bad argument; expected procedure or #f" _proc616_))))
  (define gerbil/gambit/threads#with-exception-stack-trace
    (let ((_opt-lambda595606_
           (lambda (_thunk597_ _error-port598_)
             (with-exception-handler
              (let ((_E600_ (current-exception-handler)))
                (lambda (_exn602_)
                  (##continuation-capture
                   (lambda (_cont604_)
                     (begin
                       (gerbil/gambit/threads#dump-stack-trace!
                        _cont604_
                        _exn602_
                        _error-port598_)
                       (_E600_ _exn602_))))))
              _thunk597_))))
      (lambda _g693_
        (let ((_g692_ (length _g693_)))
          (cond ((fx= _g692_ 1)
                 (apply (lambda (_thunk609_)
                          (let ((_error-port611_ ##stderr-port))
                            (_opt-lambda595606_ _thunk609_ _error-port611_)))
                        _g693_))
                ((fx= _g692_ 2) (apply _opt-lambda595606_ _g693_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/gambit/threads#with-exception-stack-trace
                  _g693_)))))))
  (begin
    (namespace ("gerbil/gambit/threads#" dump-stack-trace!))
    (define (dump-stack-trace! cont exn #!optional (error-port ##stderr-port))
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
