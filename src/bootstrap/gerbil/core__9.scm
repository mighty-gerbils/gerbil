(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28406_|
    (gx#core-quote-syntax 'runtime-type-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28407_|
    (gx#core-quote-syntax 'runtime-struct-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28408_|
    (gx#core-quote-syntax 'runtime-class-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28409_|
    (gx#core-quote-syntax 'expander-type-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28410_|
    (gx#core-quote-syntax 'extended-runtime-type-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28411_|
    (gx#core-quote-syntax 'extended-struct-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28412_|
    (gx#core-quote-syntax 'extended-class-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28413_|
    (gx#core-quote-syntax 'runtime-rtd-exhibitor::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28414_|
    (gx#core-quote-syntax 'runtime-struct-exhibitor::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28415_|
    (gx#core-quote-syntax 'runtime-class-exhibitor::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28416_|
    (gx#core-quote-syntax 'macro-object::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28417_|
    (gx#core-quote-syntax 'macro-object::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28418_|
    (gx#core-quote-syntax 'make-macro-object))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28419_|
    (gx#core-quote-syntax 'macro-object?))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28420_|
    (gx#core-quote-syntax 'macro-object-macro))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28421_|
    (gx#core-quote-syntax 'macro-object-macro-set!))
  (begin
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-type-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g28406_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-struct-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g28407_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-class-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g28408_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#expander-type-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g28409_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#extended-runtime-type-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g28410_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#extended-struct-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g28411_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#extended-class-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g28412_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-rtd-exhibitor|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g28413_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-struct-exhibitor|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g28414_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-class-exhibitor|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g28415_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#macro-object|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g28416_|
       'expander-identifiers:
       (cons '()
             (cons |gerbil/core::<MOP>::<MOP:3>[2]#_g28417_|
                   (cons |gerbil/core::<MOP>::<MOP:3>[2]#_g28418_|
                         (cons |gerbil/core::<MOP>::<MOP:3>[2]#_g28419_|
                               (cons (cons |gerbil/core::<MOP>::<MOP:3>[2]#_g28420_|
                                           '())
                                     (cons (cons |gerbil/core::<MOP>::<MOP:3>[2]#_g28421_|
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
