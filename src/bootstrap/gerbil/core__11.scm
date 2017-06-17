(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<match>[2]#_g29600_|
    (gx#core-quote-syntax 'match-macro::t))
  (define |gerbil/core::<match>[2]#_g29601_|
    (gx#core-quote-syntax 'macro-object::t))
  (define |gerbil/core::<match>[2]#_g29602_|
    (gx#core-quote-syntax 'match-macro::t))
  (define |gerbil/core::<match>[2]#_g29603_|
    (gx#core-quote-syntax 'make-match-macro))
  (define |gerbil/core::<match>[2]#_g29604_|
    (gx#core-quote-syntax 'match-macro?))
  (define |gerbil/core::<match>[2]#_g29605_|
    (gx#core-quote-syntax 'macro-object))
  (define |gerbil/core::<match>[:1:]#match-macro|
    (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-class-info|
     'runtime-identifier:
     |gerbil/core::<match>[2]#_g29600_|
     'expander-identifiers:
     (cons (cons |gerbil/core::<match>[2]#_g29601_| '())
           (cons |gerbil/core::<match>[2]#_g29602_|
                 (cons |gerbil/core::<match>[2]#_g29603_|
                       (cons |gerbil/core::<match>[2]#_g29604_|
                             (cons '() (cons '() '()))))))
     'type-exhibitor:
     (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-exhibitor|
      'gerbil.core#match-macro::t
      (list |gerbil/core::<match>[2]#_g29605_|)
      'match-macro
      '#f
      '()
      '()))))
