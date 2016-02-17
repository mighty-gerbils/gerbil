(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<match>[2]#_g28181_|
    (gx#core-quote-syntax 'match-macro::t))
  (define |gerbil/core::<match>[2]#_g28182_|
    (gx#core-quote-syntax 'macro-object::t))
  (define |gerbil/core::<match>[2]#_g28183_|
    (gx#core-quote-syntax 'match-macro::t))
  (define |gerbil/core::<match>[2]#_g28184_|
    (gx#core-quote-syntax 'make-match-macro))
  (define |gerbil/core::<match>[2]#_g28185_|
    (gx#core-quote-syntax 'match-macro?))
  (define |gerbil/core::<match>[2]#_g28186_|
    (gx#core-quote-syntax 'macro-object))
  (begin
    (define |gerbil/core::<match>[:1:]#match-macro|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core::<match>[2]#_g28181_|
       'expander-identifiers:
       (cons (cons |gerbil/core::<match>[2]#_g28182_| '())
             (cons |gerbil/core::<match>[2]#_g28183_|
                   (cons |gerbil/core::<match>[2]#_g28184_|
                         (cons |gerbil/core::<match>[2]#_g28185_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-exhibitor|
        'gerbil.core#match-macro::t
        (list |gerbil/core::<match>[2]#_g28186_|)
        'match-macro
        '#f
        '()
        '())))))
