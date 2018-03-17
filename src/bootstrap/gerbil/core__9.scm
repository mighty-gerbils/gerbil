(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35580_|
    (gx#make-syntax-quote
     'runtime-type-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35581_|
    (gx#make-syntax-quote
     'runtime-struct-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35582_|
    (gx#make-syntax-quote
     'runtime-class-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35583_|
    (gx#make-syntax-quote
     'expander-type-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35584_|
    (gx#make-syntax-quote
     'extended-runtime-type-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35585_|
    (gx#make-syntax-quote
     'extended-struct-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35586_|
    (gx#make-syntax-quote
     'extended-class-info::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35587_|
    (gx#make-syntax-quote
     'runtime-rtd-exhibitor::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35588_|
    (gx#make-syntax-quote
     'runtime-struct-exhibitor::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35589_|
    (gx#make-syntax-quote
     'runtime-class-exhibitor::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35590_|
    (gx#make-syntax-quote
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35591_|
    (gx#make-syntax-quote
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35592_|
    (gx#make-syntax-quote
     'make-macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35593_|
    (gx#make-syntax-quote 'macro-object? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35594_|
    (gx#make-syntax-quote
     'macro-object-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<MOP>$<MOP:3>[2]#_g35595_|
    (gx#make-syntax-quote
     'macro-object-macro-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-type-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g35580_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-struct-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g35581_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-class-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g35582_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#expander-type-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g35583_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#extended-runtime-type-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g35584_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#extended-struct-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g35585_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#extended-class-info|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g35586_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-rtd-exhibitor|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g35587_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-struct-exhibitor|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g35588_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#runtime-class-exhibitor|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g35589_|))
    (define |gerbil/core$<MOP>$<MOP:3>[:1:]#macro-object|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core$<MOP>$<MOP:3>[2]#_g35590_|
       'expander-identifiers:
       (cons '()
             (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g35591_|
                   (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g35592_|
                         (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g35593_|
                               (cons (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g35594_|
                                           '())
                                     (cons (cons |gerbil/core$<MOP>$<MOP:3>[2]#_g35595_|
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
