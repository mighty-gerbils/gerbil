(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g30326_|
    (gx#core-quote-syntax 'runtime-type-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g30327_|
    (gx#core-quote-syntax 'runtime-struct-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g30328_|
    (gx#core-quote-syntax 'runtime-class-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g30329_|
    (gx#core-quote-syntax 'expander-type-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g30330_|
    (gx#core-quote-syntax 'extended-runtime-type-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g30331_|
    (gx#core-quote-syntax 'extended-struct-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g30332_|
    (gx#core-quote-syntax 'extended-class-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g30333_|
    (gx#core-quote-syntax 'runtime-rtd-exhibitor::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g30334_|
    (gx#core-quote-syntax 'runtime-struct-exhibitor::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g30335_|
    (gx#core-quote-syntax 'runtime-class-exhibitor::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g30336_|
    (gx#core-quote-syntax 'macro-object::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g30337_|
    (gx#core-quote-syntax 'macro-object::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g30338_|
    (gx#core-quote-syntax 'make-macro-object))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g30339_|
    (gx#core-quote-syntax 'macro-object?))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g30340_|
    (gx#core-quote-syntax 'macro-object-macro))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g30341_|
    (gx#core-quote-syntax 'macro-object-macro-set!))
  (begin
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-type-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g30326_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-struct-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g30327_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-class-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g30328_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#expander-type-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g30329_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#extended-runtime-type-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g30330_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#extended-struct-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g30331_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#extended-class-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g30332_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-rtd-exhibitor|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g30333_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-struct-exhibitor|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g30334_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-class-exhibitor|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g30335_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#macro-object|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g30336_|
       'expander-identifiers:
       (cons '()
             (cons |gerbil/core::<MOP>::<MOP:3>[2]#_g30337_|
                   (cons |gerbil/core::<MOP>::<MOP:3>[2]#_g30338_|
                         (cons |gerbil/core::<MOP>::<MOP:3>[2]#_g30339_|
                               (cons (cons |gerbil/core::<MOP>::<MOP:3>[2]#_g30340_|
                                           '())
                                     (cons (cons |gerbil/core::<MOP>::<MOP:3>[2]#_g30341_|
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
