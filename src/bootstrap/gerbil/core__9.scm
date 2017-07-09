(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29755_|
    (gx#core-quote-syntax 'runtime-type-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29756_|
    (gx#core-quote-syntax 'runtime-struct-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29757_|
    (gx#core-quote-syntax 'runtime-class-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29758_|
    (gx#core-quote-syntax 'expander-type-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29759_|
    (gx#core-quote-syntax 'extended-runtime-type-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29760_|
    (gx#core-quote-syntax 'extended-struct-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29761_|
    (gx#core-quote-syntax 'extended-class-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29762_|
    (gx#core-quote-syntax 'runtime-rtd-exhibitor::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29763_|
    (gx#core-quote-syntax 'runtime-struct-exhibitor::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29764_|
    (gx#core-quote-syntax 'runtime-class-exhibitor::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29765_|
    (gx#core-quote-syntax 'macro-object::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29766_|
    (gx#core-quote-syntax 'macro-object::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29767_|
    (gx#core-quote-syntax 'make-macro-object))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29768_|
    (gx#core-quote-syntax 'macro-object?))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29769_|
    (gx#core-quote-syntax 'macro-object-macro))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g29770_|
    (gx#core-quote-syntax 'macro-object-macro-set!))
  (begin
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-type-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g29755_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-struct-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g29756_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-class-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g29757_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#expander-type-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g29758_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#extended-runtime-type-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g29759_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#extended-struct-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g29760_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#extended-class-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g29761_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-rtd-exhibitor|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g29762_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-struct-exhibitor|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g29763_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-class-exhibitor|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g29764_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#macro-object|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g29765_|
       'expander-identifiers:
       (cons '()
             (cons |gerbil/core::<MOP>::<MOP:3>[2]#_g29766_|
                   (cons |gerbil/core::<MOP>::<MOP:3>[2]#_g29767_|
                         (cons |gerbil/core::<MOP>::<MOP:3>[2]#_g29768_|
                               (cons (cons |gerbil/core::<MOP>::<MOP:3>[2]#_g29769_|
                                           '())
                                     (cons (cons |gerbil/core::<MOP>::<MOP:3>[2]#_g29770_|
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
