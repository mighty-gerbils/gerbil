(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<match>[2]#_g29340_|
    (gx#core-quote-syntax 'match-macro::t))
  (define |gerbil/core::<match>[2]#_g29341_|
    (gx#core-quote-syntax 'macro-object::t))
  (define |gerbil/core::<match>[2]#_g29342_|
    (gx#core-quote-syntax 'match-macro::t))
  (define |gerbil/core::<match>[2]#_g29343_|
    (gx#core-quote-syntax 'make-match-macro))
  (define |gerbil/core::<match>[2]#_g29344_|
    (gx#core-quote-syntax 'match-macro?))
  (define |gerbil/core::<match>[2]#_g29345_|
    (gx#core-quote-syntax 'macro-object))
  (define |gerbil/core::<match>[:1:]#match-macro|
    (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-class-info|
     'runtime-identifier:
     |gerbil/core::<match>[2]#_g29340_|
     'expander-identifiers:
     (cons (cons |gerbil/core::<match>[2]#_g29341_| '())
           (cons |gerbil/core::<match>[2]#_g29342_|
                 (cons |gerbil/core::<match>[2]#_g29343_|
                       (cons |gerbil/core::<match>[2]#_g29344_|
                             (cons '() (cons '() '()))))))
     'type-exhibitor:
     (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-exhibitor|
      'gerbil.core#match-macro::t
      (list |gerbil/core::<match>[2]#_g29345_|)
      'match-macro
      '#f
      '()
      '()))))
