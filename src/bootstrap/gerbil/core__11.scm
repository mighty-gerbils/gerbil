(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<match>[2]#_g47099_|
    (gx#core-quote-syntax 'match-macro::t))
  (define |gerbil/core::<match>[2]#_g47100_|
    (gx#core-quote-syntax 'macro-object::t))
  (define |gerbil/core::<match>[2]#_g47101_|
    (gx#core-quote-syntax 'match-macro::t))
  (define |gerbil/core::<match>[2]#_g47102_|
    (gx#core-quote-syntax 'make-match-macro))
  (define |gerbil/core::<match>[2]#_g47103_|
    (gx#core-quote-syntax 'match-macro?))
  (define |gerbil/core::<match>[2]#_g47104_|
    (gx#core-quote-syntax 'macro-object))
  (begin
    (define |gerbil/core::<match>[:1:]#match-macro|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core::<match>[2]#_g47099_|
       'expander-identifiers:
       (cons (cons |gerbil/core::<match>[2]#_g47100_| '())
             (cons |gerbil/core::<match>[2]#_g47101_|
                   (cons |gerbil/core::<match>[2]#_g47102_|
                         (cons |gerbil/core::<match>[2]#_g47103_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-exhibitor|
        'gerbil.core#match-macro::t
        (list |gerbil/core::<match>[2]#_g47104_|)
        'match-macro
        '#f
        '()
        '())))))
