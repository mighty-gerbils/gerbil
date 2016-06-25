(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<more-sugar>[2]#_g28501_|
    (gx#core-quote-syntax 'setq-macro::t))
  (define |gerbil/core::<more-sugar>[2]#_g28502_|
    (gx#core-quote-syntax 'macro-object::t))
  (define |gerbil/core::<more-sugar>[2]#_g28503_|
    (gx#core-quote-syntax 'setq-macro::t))
  (define |gerbil/core::<more-sugar>[2]#_g28504_|
    (gx#core-quote-syntax 'make-setq-macro))
  (define |gerbil/core::<more-sugar>[2]#_g28505_|
    (gx#core-quote-syntax 'setq-macro?))
  (define |gerbil/core::<more-sugar>[2]#_g28506_|
    (gx#core-quote-syntax 'macro-object))
  (define |gerbil/core::<more-sugar>[2]#_g28507_|
    (gx#core-quote-syntax 'setf-macro::t))
  (define |gerbil/core::<more-sugar>[2]#_g28508_|
    (gx#core-quote-syntax 'macro-object::t))
  (define |gerbil/core::<more-sugar>[2]#_g28509_|
    (gx#core-quote-syntax 'setf-macro::t))
  (define |gerbil/core::<more-sugar>[2]#_g28510_|
    (gx#core-quote-syntax 'make-setf-macro))
  (define |gerbil/core::<more-sugar>[2]#_g28511_|
    (gx#core-quote-syntax 'setf-macro?))
  (define |gerbil/core::<more-sugar>[2]#_g28512_|
    (gx#core-quote-syntax 'macro-object))
  (begin
    (define |gerbil/core::<more-sugar>[:1:]#setq-macro|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core::<more-sugar>[2]#_g28501_|
       'expander-identifiers:
       (cons (cons |gerbil/core::<more-sugar>[2]#_g28502_| '())
             (cons |gerbil/core::<more-sugar>[2]#_g28503_|
                   (cons |gerbil/core::<more-sugar>[2]#_g28504_|
                         (cons |gerbil/core::<more-sugar>[2]#_g28505_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-exhibitor|
        'gerbil.core#setq-macro::t
        (list |gerbil/core::<more-sugar>[2]#_g28506_|)
        'setq-macro
        '#f
        '()
        '())))
    (define |gerbil/core::<more-sugar>[:1:]#setf-macro|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core::<more-sugar>[2]#_g28507_|
       'expander-identifiers:
       (cons (cons |gerbil/core::<more-sugar>[2]#_g28508_| '())
             (cons |gerbil/core::<more-sugar>[2]#_g28509_|
                   (cons |gerbil/core::<more-sugar>[2]#_g28510_|
                         (cons |gerbil/core::<more-sugar>[2]#_g28511_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-exhibitor|
        'gerbil.core#setf-macro::t
        (list |gerbil/core::<more-sugar>[2]#_g28512_|)
        'setf-macro
        '#f
        '()
        '())))))
