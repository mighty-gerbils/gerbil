(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g41352_|
    (gx#make-syntax-quote
     'runtime-type-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g41353_|
    (gx#make-syntax-quote
     'runtime-struct-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g41354_|
    (gx#make-syntax-quote
     'runtime-class-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g41355_|
    (gx#make-syntax-quote
     'expander-type-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g41356_|
    (gx#make-syntax-quote
     'extended-runtime-type-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g41357_|
    (gx#make-syntax-quote
     'extended-struct-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g41358_|
    (gx#make-syntax-quote
     'extended-class-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g41359_|
    (gx#make-syntax-quote
     'runtime-rtd-exhibitor::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g41360_|
    (gx#make-syntax-quote
     'runtime-struct-exhibitor::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g41361_|
    (gx#make-syntax-quote
     'runtime-class-exhibitor::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g41362_|
    (gx#make-syntax-quote
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g41363_|
    (gx#make-syntax-quote
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g41364_|
    (gx#make-syntax-quote
     'make-macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g41365_|
    (gx#make-syntax-quote 'macro-object? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g41366_|
    (gx#make-syntax-quote
     'macro-object-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g41367_|
    (gx#make-syntax-quote
     'macro-object-macro-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-type-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g41352_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-struct-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g41353_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-class-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g41354_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#expander-type-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g41355_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#extended-runtime-type-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g41356_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#extended-struct-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g41357_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#extended-class-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g41358_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-rtd-exhibitor|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g41359_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-struct-exhibitor|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g41360_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-class-exhibitor|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g41361_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#macro-object|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g41362_|
       'expander-identifiers:
       (cons '()
             (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g41363_|
                   (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g41364_|
                         (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g41365_|
                               (cons (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g41366_|
                                           '())
                                     (cons (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g41367_|
                                                 '())
                                           '()))))))
       'type-exhibitor:
       (##structure
        |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
        'gerbil.core#macro-object::t
        (list)
        'macro-object
        '#f
        '()
        '(macro))))))
