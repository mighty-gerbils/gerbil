(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<more-sugar>[2]#_g30840_|
    (gx#make-syntax-quote 'setq-macro::t #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g30841_|
    (gx#make-syntax-quote
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g30842_|
    (gx#make-syntax-quote 'setq-macro::t #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g30843_|
    (gx#make-syntax-quote
     'make-setq-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g30844_|
    (gx#make-syntax-quote 'setq-macro? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g30845_|
    (gx#make-syntax-quote 'macro-object #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g30846_|
    (gx#make-syntax-quote 'setf-macro::t #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g30847_|
    (gx#make-syntax-quote
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g30848_|
    (gx#make-syntax-quote 'setf-macro::t #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g30849_|
    (gx#make-syntax-quote
     'make-setf-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g30850_|
    (gx#make-syntax-quote 'setf-macro? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g30851_|
    (gx#make-syntax-quote 'macro-object #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<more-sugar>[:1:]#setq-macro|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core$<more-sugar>[2]#_g30840_|
       'expander-identifiers:
       (cons (cons |gerbil/core$<more-sugar>[2]#_g30841_| '())
             (cons |gerbil/core$<more-sugar>[2]#_g30842_|
                   (cons |gerbil/core$<more-sugar>[2]#_g30843_|
                         (cons |gerbil/core$<more-sugar>[2]#_g30844_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        'gerbil.core#setq-macro::t
        (list |gerbil/core$<more-sugar>[2]#_g30845_|)
        'setq-macro
        '#f
        '()
        '())))
    (define |gerbil/core$<more-sugar>[:1:]#setf-macro|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core$<more-sugar>[2]#_g30846_|
       'expander-identifiers:
       (cons (cons |gerbil/core$<more-sugar>[2]#_g30847_| '())
             (cons |gerbil/core$<more-sugar>[2]#_g30848_|
                   (cons |gerbil/core$<more-sugar>[2]#_g30849_|
                         (cons |gerbil/core$<more-sugar>[2]#_g30850_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        'gerbil.core#setf-macro::t
        (list |gerbil/core$<more-sugar>[2]#_g30851_|)
        'setf-macro
        '#f
        '()
        '())))))
