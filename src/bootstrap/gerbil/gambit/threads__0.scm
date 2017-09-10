(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/threads#spawn
    (lambda (_f356_ . _args357_)
      (gerbil/gambit/threads#spawn/name/args
       (let ((_$e359_ (##procedure-name _f356_))) (if _$e359_ _$e359_ '#!void))
       _f356_
       _args357_)))
  (define gerbil/gambit/threads#spawn*
    (lambda (_f353_ . _args354_)
      (gerbil/gambit/threads#spawn/name/args '#!void _f353_ _args354_)))
  (define gerbil/gambit/threads#spawn/name
    (lambda (_name349_ _f350_ . _args351_)
      (gerbil/gambit/threads#spawn/name/args _name349_ _f350_ _args351_)))
  (define gerbil/gambit/threads#spawn/name/args
    (lambda (_name339_ _f340_ _args341_)
      (letrec ((_thread-main343_
                (lambda (_thunk346_)
                  (lambda ()
                    (with-catch ##primordial-exception-handler _thunk346_)))))
        (if (procedure? _f340_)
            (gerbil/gambit/threads#spawn-thread
             (_thread-main343_
              (if (null? _args341_)
                  _f340_
                  (lambda () (apply _f340_ _args341_))))
             _name339_)
            (error '"Bad argument; expected procedure" _f340_)))))
  (define gerbil/gambit/threads#spawn-thread
    (lambda (_thunk336_ _name337_)
      (thread-start! (make-thread _thunk336_ _name337_))))
  (define gerbil/gambit/threads#with-lock
    (lambda (_mx331_ _proc332_)
      (dynamic-wind
       (lambda () (mutex-lock! _mx331_))
       _proc332_
       (lambda () (mutex-unlock! _mx331_))))))
