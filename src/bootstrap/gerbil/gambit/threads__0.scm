(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/threads#spawn
    (lambda (_f645_ . _args646_)
      (gerbil/gambit/threads#spawn-actor
       _f645_
       _args646_
       (let ((_$e648_ (##procedure-name _f645_))) (if _$e648_ _$e648_ '#!void))
       '#f)))
  (define gerbil/gambit/threads#spawn*
    (lambda (_f642_ . _args643_)
      (gerbil/gambit/threads#spawn-actor _f642_ _args643_ '#!void '#f)))
  (define gerbil/gambit/threads#spawn/name
    (lambda (_name638_ _f639_ . _args640_)
      (gerbil/gambit/threads#spawn-actor _f639_ _args640_ _name638_ '#f)))
  (define gerbil/gambit/threads#spawn/group
    (lambda (_name632_ _f633_ . _args634_)
      (let ((_tgroup636_ (make-thread-group _name632_)))
        (gerbil/gambit/threads#spawn-actor
         _f633_
         _args634_
         _name632_
         _tgroup636_))))
  (define gerbil/gambit/threads#spawn-actor
    (lambda (_f610_ _args611_ _name612_ _tgroup613_)
      (letrec ((_thread-main615_
                (lambda (_thunk624_)
                  (lambda ()
                    (with-exception-handler
                     (lambda (_exn627_)
                       (##continuation-capture
                        (lambda (_cont629_)
                          (begin
                            (if gerbil/gambit/threads#unhandled-actor-exception-hook
                                (with-catch
                                 void
                                 (lambda ()
                                   (gerbil/gambit/threads#unhandled-actor-exception-hook
                                    _cont629_
                                    _exn627_)))
                                '#!void)
                            (##continuation-graft
                             (##continuation-last _cont629_)
                             ##primordial-exception-handler
                             _exn627_)))))
                     _thunk624_)))))
        (if (procedure? _f610_)
            (let ((_thunk621_
                   (if (null? _args611_)
                       _f610_
                       (lambda () (apply _f610_ _args611_))))
                  (_tgroup622_
                   (let ((_$e618_ _tgroup613_))
                     (if _$e618_
                         _$e618_
                         (gerbil/gambit/threads#current-thread-group)))))
              (thread-start!
               (make-thread
                (_thread-main615_ _thunk621_)
                _name612_
                _tgroup622_)))
            (error '"Bad argument; expected procedure" _f610_)))))
  (define gerbil/gambit/threads#spawn-thread
    (lambda (_thunk607_ _name608_)
      (thread-start! (make-thread _thunk607_ _name608_))))
  (define gerbil/gambit/threads#current-thread-group
    (lambda () (thread-thread-group (current-thread))))
  (define gerbil/gambit/threads#with-lock
    (lambda (_mx601_ _proc602_)
      (dynamic-wind
       (lambda () (mutex-lock! _mx601_))
       _proc602_
       (lambda () (mutex-unlock! _mx601_)))))
  (define gerbil/gambit/threads#unhandled-actor-exception-hook '#f)
  (define gerbil/gambit/threads#unhandled-actor-exception-hook-set!
    (lambda (_proc596_)
      (if (let ((_$e598_ (not _proc596_)))
            (if _$e598_ _$e598_ (procedure? _proc596_)))
          (set! gerbil/gambit/threads#unhandled-actor-exception-hook _proc596_)
          (error '"Bad argument; expected procedure or #f" _proc596_))))
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
