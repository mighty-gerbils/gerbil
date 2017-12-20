(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/threads#spawn
    (lambda (_f620_ . _args621_)
      (gerbil/gambit/threads#spawn/name/args
       (let ((_$e623_ (##procedure-name _f620_))) (if _$e623_ _$e623_ '#!void))
       _f620_
       _args621_)))
  (define gerbil/gambit/threads#spawn*
    (lambda (_f617_ . _args618_)
      (gerbil/gambit/threads#spawn/name/args '#!void _f617_ _args618_)))
  (define gerbil/gambit/threads#spawn/name
    (lambda (_name613_ _f614_ . _args615_)
      (gerbil/gambit/threads#spawn/name/args _name613_ _f614_ _args615_)))
  (define gerbil/gambit/threads#spawn/name/args
    (lambda (_name603_ _f604_ _args605_)
      (letrec ((_thread-main607_
                (lambda (_thunk610_)
                  (lambda ()
                    (with-catch ##primordial-exception-handler _thunk610_)))))
        (if (procedure? _f604_)
            (gerbil/gambit/threads#spawn-thread
             (_thread-main607_
              (if (null? _args605_)
                  _f604_
                  (lambda () (apply _f604_ _args605_))))
             _name603_)
            (error '"Bad argument; expected procedure" _f604_)))))
  (define gerbil/gambit/threads#spawn-thread
    (lambda (_thunk600_ _name601_)
      (thread-start! (make-thread _thunk600_ _name601_))))
  (define gerbil/gambit/threads#with-lock
    (lambda (_mx595_ _proc596_)
      (dynamic-wind
       (lambda () (mutex-lock! _mx595_))
       _proc596_
       (lambda () (mutex-unlock! _mx595_))))))
