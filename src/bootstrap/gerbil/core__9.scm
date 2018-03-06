(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35029_|
    (gx#make-syntax-quote
     'runtime-type-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35030_|
    (gx#make-syntax-quote
     'runtime-struct-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35031_|
    (gx#make-syntax-quote
     'runtime-class-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35032_|
    (gx#make-syntax-quote
     'expander-type-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35033_|
    (gx#make-syntax-quote
     'extended-runtime-type-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35034_|
    (gx#make-syntax-quote
     'extended-struct-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35035_|
    (gx#make-syntax-quote
     'extended-class-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35036_|
    (gx#make-syntax-quote
     'runtime-rtd-exhibitor::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35037_|
    (gx#make-syntax-quote
     'runtime-struct-exhibitor::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35038_|
    (gx#make-syntax-quote
     'runtime-class-exhibitor::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35039_|
    (gx#make-syntax-quote
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35040_|
    (gx#make-syntax-quote
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35041_|
    (gx#make-syntax-quote
     'make-macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35042_|
    (gx#make-syntax-quote 'macro-object? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35043_|
    (gx#make-syntax-quote
     'macro-object-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35044_|
    (gx#make-syntax-quote
     'macro-object-macro-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-type-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g35029_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-struct-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g35030_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-class-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g35031_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#expander-type-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g35032_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#extended-runtime-type-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g35033_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#extended-struct-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g35034_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#extended-class-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g35035_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-rtd-exhibitor|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g35036_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-struct-exhibitor|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g35037_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-class-exhibitor|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g35038_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#macro-object|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g35039_|
       'expander-identifiers:
       (cons '()
             (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g35040_|
                   (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g35041_|
                         (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g35042_|
                               (cons (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g35043_|
                                           '())
                                     (cons (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g35044_|
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
