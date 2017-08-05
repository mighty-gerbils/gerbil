(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<more-sugar>[2]#_g30425_|
    (gx#core-quote-syntax 'setq-macro::t))
  (define |gerbil/core::<more-sugar>[2]#_g30426_|
    (gx#core-quote-syntax 'macro-object::t))
  (define |gerbil/core::<more-sugar>[2]#_g30427_|
    (gx#core-quote-syntax 'setq-macro::t))
  (define |gerbil/core::<more-sugar>[2]#_g30428_|
    (gx#core-quote-syntax 'make-setq-macro))
  (define |gerbil/core::<more-sugar>[2]#_g30429_|
    (gx#core-quote-syntax 'setq-macro?))
  (define |gerbil/core::<more-sugar>[2]#_g30430_|
    (gx#core-quote-syntax 'macro-object))
  (define |gerbil/core::<more-sugar>[2]#_g30431_|
    (gx#core-quote-syntax 'setf-macro::t))
  (define |gerbil/core::<more-sugar>[2]#_g30432_|
    (gx#core-quote-syntax 'macro-object::t))
  (define |gerbil/core::<more-sugar>[2]#_g30433_|
    (gx#core-quote-syntax 'setf-macro::t))
  (define |gerbil/core::<more-sugar>[2]#_g30434_|
    (gx#core-quote-syntax 'make-setf-macro))
  (define |gerbil/core::<more-sugar>[2]#_g30435_|
    (gx#core-quote-syntax 'setf-macro?))
  (define |gerbil/core::<more-sugar>[2]#_g30436_|
    (gx#core-quote-syntax 'macro-object))
  (begin
    (define |gerbil/core::<more-sugar>[:1:]#setq-macro|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core::<more-sugar>[2]#_g30425_|
       'expander-identifiers:
       (cons (cons |gerbil/core::<more-sugar>[2]#_g30426_| '())
             (cons |gerbil/core::<more-sugar>[2]#_g30427_|
                   (cons |gerbil/core::<more-sugar>[2]#_g30428_|
                         (cons |gerbil/core::<more-sugar>[2]#_g30429_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-exhibitor|
        'gerbil.core#setq-macro::t
        (list |gerbil/core::<more-sugar>[2]#_g30430_|)
        'setq-macro
        '#f
        '()
        '())))
    (define |gerbil/core::<more-sugar>[:1:]#setf-macro|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core::<more-sugar>[2]#_g30431_|
       'expander-identifiers:
       (cons (cons |gerbil/core::<more-sugar>[2]#_g30432_| '())
             (cons |gerbil/core::<more-sugar>[2]#_g30433_|
                   (cons |gerbil/core::<more-sugar>[2]#_g30434_|
                         (cons |gerbil/core::<more-sugar>[2]#_g30435_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-exhibitor|
        'gerbil.core#setf-macro::t
        (list |gerbil/core::<more-sugar>[2]#_g30436_|)
        'setf-macro
        '#f
        '()
        '())))))
