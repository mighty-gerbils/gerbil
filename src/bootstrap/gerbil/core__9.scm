(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g31698_|
    (gx#make-syntax-quote
     'runtime-type-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g31699_|
    (gx#make-syntax-quote
     'runtime-struct-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g31700_|
    (gx#make-syntax-quote
     'runtime-class-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g31701_|
    (gx#make-syntax-quote
     'expander-type-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g31702_|
    (gx#make-syntax-quote
     'extended-runtime-type-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g31703_|
    (gx#make-syntax-quote
     'extended-struct-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g31704_|
    (gx#make-syntax-quote
     'extended-class-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g31705_|
    (gx#make-syntax-quote
     'runtime-rtd-exhibitor::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g31706_|
    (gx#make-syntax-quote
     'runtime-struct-exhibitor::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g31707_|
    (gx#make-syntax-quote
     'runtime-class-exhibitor::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g31708_|
    (gx#make-syntax-quote
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g31709_|
    (gx#make-syntax-quote
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g31710_|
    (gx#make-syntax-quote
     'make-macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g31711_|
    (gx#make-syntax-quote 'macro-object? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g31712_|
    (gx#make-syntax-quote
     'macro-object-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g31713_|
    (gx#make-syntax-quote
     'macro-object-macro-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-type-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g31698_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-struct-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g31699_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-class-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g31700_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#expander-type-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g31701_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#extended-runtime-type-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g31702_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#extended-struct-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g31703_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#extended-class-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g31704_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-rtd-exhibitor|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g31705_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-struct-exhibitor|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g31706_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-class-exhibitor|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g31707_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#macro-object|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g31708_|
       'expander-identifiers:
       (cons '()
             (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g31709_|
                   (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g31710_|
                         (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g31711_|
                               (cons (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g31712_|
                                           '())
                                     (cons (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g31713_|
                                                 '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        'gerbil.core#macro-object::t
        (list)
        'macro-object
        '#f
        '()
        '(macro))))))
