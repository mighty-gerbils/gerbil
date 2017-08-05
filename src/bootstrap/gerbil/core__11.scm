(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<match>[2]#_g30401_|
    (gx#core-quote-syntax 'match-macro::t))
  (define |gerbil/core::<match>[2]#_g30402_|
    (gx#core-quote-syntax 'macro-object::t))
  (define |gerbil/core::<match>[2]#_g30403_|
    (gx#core-quote-syntax 'match-macro::t))
  (define |gerbil/core::<match>[2]#_g30404_|
    (gx#core-quote-syntax 'make-match-macro))
  (define |gerbil/core::<match>[2]#_g30405_|
    (gx#core-quote-syntax 'match-macro?))
  (define |gerbil/core::<match>[2]#_g30406_|
    (gx#core-quote-syntax 'macro-object))
  (define |gerbil/core::<match>[:1:]#match-macro|
    (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-class-info|
     'runtime-identifier:
     |gerbil/core::<match>[2]#_g30401_|
     'expander-identifiers:
     (cons (cons |gerbil/core::<match>[2]#_g30402_| '())
           (cons |gerbil/core::<match>[2]#_g30403_|
                 (cons |gerbil/core::<match>[2]#_g30404_|
                       (cons |gerbil/core::<match>[2]#_g30405_|
                             (cons '() (cons '() '()))))))
     'type-exhibitor:
     (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-exhibitor|
      'gerbil.core#match-macro::t
      (list |gerbil/core::<match>[2]#_g30406_|)
      'match-macro
      '#f
      '()
      '()))))
