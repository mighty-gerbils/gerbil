(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g30975_|
    (gx#make-syntax-quote
     'runtime-type-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g30976_|
    (gx#make-syntax-quote
     'runtime-struct-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g30977_|
    (gx#make-syntax-quote
     'runtime-class-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g30978_|
    (gx#make-syntax-quote
     'expander-type-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g30979_|
    (gx#make-syntax-quote
     'extended-runtime-type-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g30980_|
    (gx#make-syntax-quote
     'extended-struct-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g30981_|
    (gx#make-syntax-quote
     'extended-class-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g30982_|
    (gx#make-syntax-quote
     'runtime-rtd-exhibitor::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g30983_|
    (gx#make-syntax-quote
     'runtime-struct-exhibitor::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g30984_|
    (gx#make-syntax-quote
     'runtime-class-exhibitor::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g30985_|
    (gx#make-syntax-quote
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g30986_|
    (gx#make-syntax-quote
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g30987_|
    (gx#make-syntax-quote
     'make-macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g30988_|
    (gx#make-syntax-quote 'macro-object? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g30989_|
    (gx#make-syntax-quote
     'macro-object-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g30990_|
    (gx#make-syntax-quote
     'macro-object-macro-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-type-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g30975_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-struct-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g30976_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-class-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g30977_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#expander-type-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g30978_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#extended-runtime-type-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g30979_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#extended-struct-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g30980_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#extended-class-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g30981_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-rtd-exhibitor|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g30982_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-struct-exhibitor|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g30983_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-class-exhibitor|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g30984_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#macro-object|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g30985_|
       'expander-identifiers:
       (cons '()
             (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g30986_|
                   (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g30987_|
                         (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g30988_|
                               (cons (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g30989_|
                                           '())
                                     (cons (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g30990_|
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
