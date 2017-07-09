(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<match>[2]#_g29830_|
    (gx#core-quote-syntax 'match-macro::t))
  (define |gerbil/core::<match>[2]#_g29831_|
    (gx#core-quote-syntax 'macro-object::t))
  (define |gerbil/core::<match>[2]#_g29832_|
    (gx#core-quote-syntax 'match-macro::t))
  (define |gerbil/core::<match>[2]#_g29833_|
    (gx#core-quote-syntax 'make-match-macro))
  (define |gerbil/core::<match>[2]#_g29834_|
    (gx#core-quote-syntax 'match-macro?))
  (define |gerbil/core::<match>[2]#_g29835_|
    (gx#core-quote-syntax 'macro-object))
  (define |gerbil/core::<match>[:1:]#match-macro|
    (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-class-info|
     'runtime-identifier:
     |gerbil/core::<match>[2]#_g29830_|
     'expander-identifiers:
     (cons (cons |gerbil/core::<match>[2]#_g29831_| '())
           (cons |gerbil/core::<match>[2]#_g29832_|
                 (cons |gerbil/core::<match>[2]#_g29833_|
                       (cons |gerbil/core::<match>[2]#_g29834_|
                             (cons '() (cons '() '()))))))
     'type-exhibitor:
     (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-exhibitor|
      'gerbil.core#match-macro::t
      (list |gerbil/core::<match>[2]#_g29835_|)
      'match-macro
      '#f
      '()
      '()))))
