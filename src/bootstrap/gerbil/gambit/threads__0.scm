(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/threads#spawn
    (lambda (_f635_ . _args636_)
      (gerbil/gambit/threads#spawn-actor
       _f635_
       _args636_
       (let ((_$e638_ (##procedure-name _f635_))) (if _$e638_ _$e638_ '#!void))
       '#f)))
  (define gerbil/gambit/threads#spawn*
    (lambda (_f632_ . _args633_)
      (gerbil/gambit/threads#spawn-actor _f632_ _args633_ '#!void '#f)))
  (define gerbil/gambit/threads#spawn/name
    (lambda (_name628_ _f629_ . _args630_)
      (gerbil/gambit/threads#spawn-actor _f629_ _args630_ _name628_ '#f)))
  (define gerbil/gambit/threads#spawn/group
    (lambda (_name622_ _f623_ . _args624_)
      (let ((_tgroup626_ (make-thread-group _name622_)))
        (gerbil/gambit/threads#spawn-actor
         _f623_
         _args624_
         _name622_
         _tgroup626_))))
  (define gerbil/gambit/threads#spawn-actor
    (lambda (_f605_ _args606_ _name607_ _tgroup608_)
      (letrec ((_thread-main610_
                (lambda (_thunk619_)
                  (lambda ()
                    (with-catch ##primordial-exception-handler _thunk619_)))))
        (if (procedure? _f605_)
            (let ((_thunk616_
                   (if (null? _args606_)
                       _f605_
                       (lambda () (apply _f605_ _args606_))))
                  (_tgroup617_
                   (let ((_$e613_ _tgroup608_))
                     (if _$e613_
                         _$e613_
                         (gerbil/gambit/threads#current-thread-group)))))
              (thread-start!
               (make-thread
                (_thread-main610_ _thunk616_)
                _name607_
                _tgroup617_)))
            (error '"Bad argument; expected procedure" _f605_)))))
  (define gerbil/gambit/threads#spawn-thread
    (lambda (_thunk602_ _name603_)
      (thread-start! (make-thread _thunk602_ _name603_))))
  (define gerbil/gambit/threads#current-thread-group
    (lambda () (thread-thread-group (current-thread))))
  (define gerbil/gambit/threads#with-lock
    (lambda (_mx596_ _proc597_)
      (dynamic-wind
       (lambda () (mutex-lock! _mx596_))
       _proc597_
       (lambda () (mutex-unlock! _mx596_))))))
