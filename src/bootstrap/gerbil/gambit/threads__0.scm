(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
  (define gerbil/gambit/threads#spawn
    (lambda (_f28537_ . _args28538_)
      (apply gerbil/gambit/threads#spawn/name
             (let ((_$e28540_ (##procedure-name _f28537_)))
               (if _$e28540_ _$e28540_ '#!void))
             _f28537_
             _args28538_)))
  (define gerbil/gambit/threads#spawn/name
    (lambda (_name28532_ _f28533_ . _args28534_)
      (begin
        (if (procedure? _f28533_)
            '#!void
            (error '"Expected procedure" _f28533_))
        (thread-start!
         (make-thread
          (if (null? _args28534_)
              _f28533_
              (lambda () (apply _f28533_ _args28534_)))
          _name28532_)))))
  (define gerbil/gambit/threads#with-lock
    (lambda (_mutex28527_ _proc28528_)
      (dynamic-wind
       (lambda () (mutex-lock! _mutex28527_))
       _proc28528_
       (lambda () (mutex-unlock! _mutex28527_))))))
