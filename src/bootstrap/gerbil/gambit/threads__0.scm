(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/threads#spawn
    (lambda (_f623_ . _args624_)
      (gerbil/gambit/threads#spawn/name/args
       (let ((_$e626_ (##procedure-name _f623_))) (if _$e626_ _$e626_ '#!void))
       _f623_
       _args624_)))
  (define gerbil/gambit/threads#spawn*
    (lambda (_f620_ . _args621_)
      (gerbil/gambit/threads#spawn/name/args '#!void _f620_ _args621_)))
  (define gerbil/gambit/threads#spawn/name
    (lambda (_name616_ _f617_ . _args618_)
      (gerbil/gambit/threads#spawn/name/args _name616_ _f617_ _args618_)))
  (define gerbil/gambit/threads#spawn/name/args
    (lambda (_name606_ _f607_ _args608_)
      (letrec ((_thread-main610_
                (lambda (_thunk613_)
                  (lambda ()
                    (with-catch ##primordial-exception-handler _thunk613_)))))
        (if (procedure? _f607_)
            (gerbil/gambit/threads#spawn-thread
             (_thread-main610_
              (if (null? _args608_)
                  _f607_
                  (lambda () (apply _f607_ _args608_))))
             _name606_)
            (error '"Bad argument; expected procedure" _f607_)))))
  (define gerbil/gambit/threads#spawn-thread
    (lambda (_thunk603_ _name604_)
      (thread-start! (make-thread _thunk603_ _name604_))))
  (define gerbil/gambit/threads#with-lock
    (lambda (_mx598_ _proc599_)
      (dynamic-wind
       (lambda () (mutex-lock! _mx598_))
       _proc599_
       (lambda () (mutex-unlock! _mx598_)))))
  (define gerbil/gambit/threads#thread-group-kill!
    (lambda (_tg596_)
      (begin
        (for-each
         gerbil/gambit/threads#thread-group-kill!
         (thread-group->thread-group-list _tg596_))
        (for-each thread-terminate! (thread-group->thread-list _tg596_))))))
