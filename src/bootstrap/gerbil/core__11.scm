(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<match>[2]#_g28477_|
    (gx#core-quote-syntax 'match-macro::t))
  (define |gerbil/core::<match>[2]#_g28478_|
    (gx#core-quote-syntax 'macro-object::t))
  (define |gerbil/core::<match>[2]#_g28479_|
    (gx#core-quote-syntax 'match-macro::t))
  (define |gerbil/core::<match>[2]#_g28480_|
    (gx#core-quote-syntax 'make-match-macro))
  (define |gerbil/core::<match>[2]#_g28481_|
    (gx#core-quote-syntax 'match-macro?))
  (define |gerbil/core::<match>[2]#_g28482_|
    (gx#core-quote-syntax 'macro-object))
  (begin
    (define |gerbil/core::<match>[:1:]#match-macro|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core::<match>[2]#_g28477_|
       'expander-identifiers:
       (cons (cons |gerbil/core::<match>[2]#_g28478_| '())
             (cons |gerbil/core::<match>[2]#_g28479_|
                   (cons |gerbil/core::<match>[2]#_g28480_|
                         (cons |gerbil/core::<match>[2]#_g28481_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-exhibitor|
        'gerbil.core#match-macro::t
        (list |gerbil/core::<match>[2]#_g28482_|)
        'match-macro
        '#f
        '()
        '())))))
