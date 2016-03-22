(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<more-sugar>[2]#_g28464_|
    (gx#core-quote-syntax 'setq-macro::t))
  (define |gerbil/core::<more-sugar>[2]#_g28465_|
    (gx#core-quote-syntax 'macro-object::t))
  (define |gerbil/core::<more-sugar>[2]#_g28466_|
    (gx#core-quote-syntax 'setq-macro::t))
  (define |gerbil/core::<more-sugar>[2]#_g28467_|
    (gx#core-quote-syntax 'make-setq-macro))
  (define |gerbil/core::<more-sugar>[2]#_g28468_|
    (gx#core-quote-syntax 'setq-macro?))
  (define |gerbil/core::<more-sugar>[2]#_g28469_|
    (gx#core-quote-syntax 'macro-object))
  (define |gerbil/core::<more-sugar>[2]#_g28470_|
    (gx#core-quote-syntax 'setf-macro::t))
  (define |gerbil/core::<more-sugar>[2]#_g28471_|
    (gx#core-quote-syntax 'macro-object::t))
  (define |gerbil/core::<more-sugar>[2]#_g28472_|
    (gx#core-quote-syntax 'setf-macro::t))
  (define |gerbil/core::<more-sugar>[2]#_g28473_|
    (gx#core-quote-syntax 'make-setf-macro))
  (define |gerbil/core::<more-sugar>[2]#_g28474_|
    (gx#core-quote-syntax 'setf-macro?))
  (define |gerbil/core::<more-sugar>[2]#_g28475_|
    (gx#core-quote-syntax 'macro-object))
  (begin
    (define |gerbil/core::<more-sugar>[:1:]#setq-macro|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core::<more-sugar>[2]#_g28464_|
       'expander-identifiers:
       (cons (cons |gerbil/core::<more-sugar>[2]#_g28465_| '())
             (cons |gerbil/core::<more-sugar>[2]#_g28466_|
                   (cons |gerbil/core::<more-sugar>[2]#_g28467_|
                         (cons |gerbil/core::<more-sugar>[2]#_g28468_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-exhibitor|
        'gerbil.core#setq-macro::t
        (list |gerbil/core::<more-sugar>[2]#_g28469_|)
        'setq-macro
        '#f
        '()
        '())))
    (define |gerbil/core::<more-sugar>[:1:]#setf-macro|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core::<more-sugar>[2]#_g28470_|
       'expander-identifiers:
       (cons (cons |gerbil/core::<more-sugar>[2]#_g28471_| '())
             (cons |gerbil/core::<more-sugar>[2]#_g28472_|
                   (cons |gerbil/core::<more-sugar>[2]#_g28473_|
                         (cons |gerbil/core::<more-sugar>[2]#_g28474_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-exhibitor|
        'gerbil.core#setf-macro::t
        (list |gerbil/core::<more-sugar>[2]#_g28475_|)
        'setf-macro
        '#f
        '()
        '())))))
