(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/threads#spawn
    (lambda (_f642_ . _args643_)
      (gerbil/gambit/threads#spawn-actor
       _f642_
       _args643_
       (let ((_$e645_ (##procedure-name _f642_))) (if _$e645_ _$e645_ '#!void))
       '#f)))
  (define gerbil/gambit/threads#spawn*
    (lambda (_f639_ . _args640_)
      (gerbil/gambit/threads#spawn-actor _f639_ _args640_ '#!void '#f)))
  (define gerbil/gambit/threads#spawn/name
    (lambda (_name635_ _f636_ . _args637_)
      (gerbil/gambit/threads#spawn-actor _f636_ _args637_ _name635_ '#f)))
  (define gerbil/gambit/threads#spawn/group
    (lambda (_name629_ _f630_ . _args631_)
      (let ((_tgroup633_ (make-thread-group _name629_)))
        (gerbil/gambit/threads#spawn-actor
         _f630_
         _args631_
         _name629_
         _tgroup633_))))
  (define gerbil/gambit/threads#spawn-actor
    (lambda (_f607_ _args608_ _name609_ _tgroup610_)
      (letrec ((_thread-main612_
                (lambda (_thunk621_)
                  (lambda ()
                    (with-exception-handler
                     (lambda (_exn624_)
                       (##continuation-capture
                        (lambda (_cont626_)
                          (begin
                            (if gerbil/gambit/threads#unhandled-actor-exception-hook
                                (with-catch
                                 void
                                 (lambda ()
                                   (gerbil/gambit/threads#unhandled-actor-exception-hook
                                    _cont626_
                                    _exn624_)))
                                '#!void)
                            (##continuation-graft
                             (##continuation-last _cont626_)
                             ##primordial-exception-handler
                             _exn624_)))))
                     _thunk621_)))))
        (if (procedure? _f607_)
            (let ((_thunk618_
                   (if (null? _args608_)
                       _f607_
                       (lambda () (apply _f607_ _args608_))))
                  (_tgroup619_
                   (let ((_$e615_ _tgroup610_))
                     (if _$e615_
                         _$e615_
                         (gerbil/gambit/threads#current-thread-group)))))
              (thread-start!
               (make-thread
                (_thread-main612_ _thunk618_)
                _name609_
                _tgroup619_)))
            (error '"Bad argument; expected procedure" _f607_)))))
  (define gerbil/gambit/threads#spawn-thread
    (lambda (_thunk604_ _name605_)
      (thread-start! (make-thread _thunk604_ _name605_))))
  (define gerbil/gambit/threads#current-thread-group
    (lambda () (thread-thread-group (current-thread))))
  (define gerbil/gambit/threads#with-lock
    (lambda (_mx598_ _proc599_)
      (dynamic-wind
       (lambda () (mutex-lock! _mx598_))
       _proc599_
       (lambda () (mutex-unlock! _mx598_)))))
  (define gerbil/gambit/threads#unhandled-actor-exception-hook '#f)
  (define gerbil/gambit/threads#unhandled-actor-exception-hook-set!
    (lambda (_proc596_)
      (if (procedure? _proc596_)
          (set! gerbil/gambit/threads#unhandled-actor-exception-hook _proc596_)
          (error '"Bad argument; expected procedure" _proc596_))))
  (begin
    (namespace ("gerbil/gambit/threads#" dump-stack-trace!))
    (define (dump-stack-trace! cont exn)
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
        (##write-string (get-output-string out) ##stderr-port)))))
