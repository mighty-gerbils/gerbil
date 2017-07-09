(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<more-sugar>[2]#_g29854_|
    (gx#core-quote-syntax 'setq-macro::t))
  (define |gerbil/core::<more-sugar>[2]#_g29855_|
    (gx#core-quote-syntax 'macro-object::t))
  (define |gerbil/core::<more-sugar>[2]#_g29856_|
    (gx#core-quote-syntax 'setq-macro::t))
  (define |gerbil/core::<more-sugar>[2]#_g29857_|
    (gx#core-quote-syntax 'make-setq-macro))
  (define |gerbil/core::<more-sugar>[2]#_g29858_|
    (gx#core-quote-syntax 'setq-macro?))
  (define |gerbil/core::<more-sugar>[2]#_g29859_|
    (gx#core-quote-syntax 'macro-object))
  (define |gerbil/core::<more-sugar>[2]#_g29860_|
    (gx#core-quote-syntax 'setf-macro::t))
  (define |gerbil/core::<more-sugar>[2]#_g29861_|
    (gx#core-quote-syntax 'macro-object::t))
  (define |gerbil/core::<more-sugar>[2]#_g29862_|
    (gx#core-quote-syntax 'setf-macro::t))
  (define |gerbil/core::<more-sugar>[2]#_g29863_|
    (gx#core-quote-syntax 'make-setf-macro))
  (define |gerbil/core::<more-sugar>[2]#_g29864_|
    (gx#core-quote-syntax 'setf-macro?))
  (define |gerbil/core::<more-sugar>[2]#_g29865_|
    (gx#core-quote-syntax 'macro-object))
  (begin
    (define |gerbil/core::<more-sugar>[:1:]#setq-macro|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core::<more-sugar>[2]#_g29854_|
       'expander-identifiers:
       (cons (cons |gerbil/core::<more-sugar>[2]#_g29855_| '())
             (cons |gerbil/core::<more-sugar>[2]#_g29856_|
                   (cons |gerbil/core::<more-sugar>[2]#_g29857_|
                         (cons |gerbil/core::<more-sugar>[2]#_g29858_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-exhibitor|
        'gerbil.core#setq-macro::t
        (list |gerbil/core::<more-sugar>[2]#_g29859_|)
        'setq-macro
        '#f
        '()
        '())))
    (define |gerbil/core::<more-sugar>[:1:]#setf-macro|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core::<more-sugar>[2]#_g29860_|
       'expander-identifiers:
       (cons (cons |gerbil/core::<more-sugar>[2]#_g29861_| '())
             (cons |gerbil/core::<more-sugar>[2]#_g29862_|
                   (cons |gerbil/core::<more-sugar>[2]#_g29863_|
                         (cons |gerbil/core::<more-sugar>[2]#_g29864_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-exhibitor|
        'gerbil.core#setf-macro::t
        (list |gerbil/core::<more-sugar>[2]#_g29865_|)
        'setf-macro
        '#f
        '()
        '())))))
