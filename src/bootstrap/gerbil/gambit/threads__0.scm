(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/threads#spawn
    (lambda (_f344_ . _args345_)
      (gerbil/gambit/threads#spawn/name/args
       (let ((_$e347_ (##procedure-name _f344_))) (if _$e347_ _$e347_ '#!void))
       _f344_
       _args345_)))
  (define gerbil/gambit/threads#spawn/name
    (lambda (_name340_ _f341_ . _args342_)
      (gerbil/gambit/threads#spawn/name/args _name340_ _f341_ _args342_)))
  (define gerbil/gambit/threads#spawn/name/args
    (lambda (_name335_ _f336_ _args337_)
      (begin
        (if (procedure? _f336_) '#!void (error '"Expected procedure" _f336_))
        (thread-start!
         (make-thread
          (if (null? _args337_) _f336_ (lambda () (apply _f336_ _args337_)))
          _name335_)))))
  (define gerbil/gambit/threads#with-lock
    (lambda (_mx330_ _proc331_)
      (begin
        (mutex-lock! _mx330_)
        (with-unwind-protect
         (lambda () (_proc331_))
         (lambda () (mutex-unlock! _mx330_)))))))
