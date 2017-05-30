(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29420_|
    (gx#core-quote-syntax 'runtime-type-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29421_|
    (gx#core-quote-syntax 'runtime-struct-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29422_|
    (gx#core-quote-syntax 'runtime-class-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29423_|
    (gx#core-quote-syntax 'expander-type-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29424_|
    (gx#core-quote-syntax 'extended-runtime-type-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29425_|
    (gx#core-quote-syntax 'extended-struct-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29426_|
    (gx#core-quote-syntax 'extended-class-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29427_|
    (gx#core-quote-syntax 'runtime-rtd-exhibitor::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29428_|
    (gx#core-quote-syntax 'runtime-struct-exhibitor::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29429_|
    (gx#core-quote-syntax 'runtime-class-exhibitor::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29430_|
    (gx#core-quote-syntax 'macro-object::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29431_|
    (gx#core-quote-syntax 'macro-object::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29432_|
    (gx#core-quote-syntax 'make-macro-object))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29433_|
    (gx#core-quote-syntax 'macro-object?))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29434_|
    (gx#core-quote-syntax 'macro-object-macro))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29435_|
    (gx#core-quote-syntax 'macro-object-macro-set!))
  (begin
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-type-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g29420_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-struct-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g29421_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-class-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g29422_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#expander-type-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g29423_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#extended-runtime-type-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g29424_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#extended-struct-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g29425_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#extended-class-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g29426_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-rtd-exhibitor|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g29427_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-struct-exhibitor|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g29428_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-class-exhibitor|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g29429_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#macro-object|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g29430_|
       'expander-identifiers:
       (cons '()
             (cons |gerbil/core::<MOP>::<MOP:3>[2]#_g29431_|
                   (cons |gerbil/core::<MOP>::<MOP:3>[2]#_g29432_|
                         (cons |gerbil/core::<MOP>::<MOP:3>[2]#_g29433_|
                               (cons (cons |gerbil/core::<MOP>::<MOP:3>[2]#_g29434_|
                                           '())
                                     (cons (cons |gerbil/core::<MOP>::<MOP:3>[2]#_g29435_|
                                                 '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-exhibitor|
        'gerbil.core#macro-object::t
        (list)
        'macro-object
        '#f
        '()
        '(macro))))))
