(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<match>[2]#_g28440_|
    (gx#core-quote-syntax 'match-macro::t))
  (define |gerbil/core::<match>[2]#_g28441_|
    (gx#core-quote-syntax 'macro-object::t))
  (define |gerbil/core::<match>[2]#_g28442_|
    (gx#core-quote-syntax 'match-macro::t))
  (define |gerbil/core::<match>[2]#_g28443_|
    (gx#core-quote-syntax 'make-match-macro))
  (define |gerbil/core::<match>[2]#_g28444_|
    (gx#core-quote-syntax 'match-macro?))
  (define |gerbil/core::<match>[2]#_g28445_|
    (gx#core-quote-syntax 'macro-object))
  (begin
    (define |gerbil/core::<match>[:1:]#match-macro|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core::<match>[2]#_g28440_|
       'expander-identifiers:
       (cons (cons |gerbil/core::<match>[2]#_g28441_| '())
             (cons |gerbil/core::<match>[2]#_g28442_|
                   (cons |gerbil/core::<match>[2]#_g28443_|
                         (cons |gerbil/core::<match>[2]#_g28444_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-exhibitor|
        'gerbil.core#match-macro::t
        (list |gerbil/core::<match>[2]#_g28445_|)
        'match-macro
        '#f
        '()
        '())))))
