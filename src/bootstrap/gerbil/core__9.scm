(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28366_|
    (gx#core-quote-syntax 'runtime-type-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28367_|
    (gx#core-quote-syntax 'runtime-struct-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28368_|
    (gx#core-quote-syntax 'runtime-class-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28369_|
    (gx#core-quote-syntax 'expander-type-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28370_|
    (gx#core-quote-syntax 'extended-runtime-type-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28371_|
    (gx#core-quote-syntax 'extended-struct-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28372_|
    (gx#core-quote-syntax 'extended-class-info::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28373_|
    (gx#core-quote-syntax 'runtime-rtd-exhibitor::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28374_|
    (gx#core-quote-syntax 'runtime-struct-exhibitor::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28375_|
    (gx#core-quote-syntax 'runtime-class-exhibitor::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28376_|
    (gx#core-quote-syntax 'macro-object::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28377_|
    (gx#core-quote-syntax 'macro-object::t))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28378_|
    (gx#core-quote-syntax 'make-macro-object))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28379_|
    (gx#core-quote-syntax 'macro-object?))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28380_|
    (gx#core-quote-syntax 'macro-object-macro))
  (define |gerbil/core::<MOP>::<MOP:3>[2]#_g28381_|
    (gx#core-quote-syntax 'macro-object-macro-set!))
  (begin
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-type-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g28366_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-struct-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g28367_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-class-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g28368_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#expander-type-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g28369_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#extended-runtime-type-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g28370_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#extended-struct-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g28371_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#extended-class-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g28372_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-rtd-exhibitor|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g28373_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-struct-exhibitor|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g28374_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#runtime-class-exhibitor|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g28375_|))
    (define |gerbil/core::<MOP>::<MOP:3>[:1:]#macro-object|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core::<MOP>::<MOP:3>[2]#_g28376_|
       'expander-identifiers:
       (cons '()
             (cons |gerbil/core::<MOP>::<MOP:3>[2]#_g28377_|
                   (cons |gerbil/core::<MOP>::<MOP:3>[2]#_g28378_|
                         (cons |gerbil/core::<MOP>::<MOP:3>[2]#_g28379_|
                               (cons (cons |gerbil/core::<MOP>::<MOP:3>[2]#_g28380_|
                                           '())
                                     (cons (cons |gerbil/core::<MOP>::<MOP:3>[2]#_g28381_|
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
