(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/threads#spawn
    (lambda (_f343_ . _args344_)
      (gerbil/gambit/threads#spawn/name/args
       (let ((_$e346_ (##procedure-name _f343_))) (if _$e346_ _$e346_ '#!void))
       _f343_
       _args344_)))
  (define gerbil/gambit/threads#spawn/name
    (lambda (_name339_ _f340_ . _args341_)
      (gerbil/gambit/threads#spawn/name/args _name339_ _f340_ _args341_)))
  (define gerbil/gambit/threads#spawn/name/args
    (lambda (_name334_ _f335_ _args336_)
      (begin
        (if (procedure? _f335_) '#!void (error '"Expected procedure" _f335_))
        (thread-start!
         (make-thread
          (if (null? _args336_) _f335_ (lambda () (apply _f335_ _args336_)))
          _name334_)))))
  (define gerbil/gambit/threads#with-lock
    (lambda (_mx329_ _proc330_)
      (begin
        (mutex-lock! _mx329_)
        (with-unwind-protect
         (lambda () (_proc330_))
         (lambda () (mutex-unlock! _mx329_)))))))
