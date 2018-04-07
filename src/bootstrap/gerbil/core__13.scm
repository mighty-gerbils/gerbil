(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-sugar>[2]#_g41422_|
    (##structure
     gx#syntax-quote::t
     'setq-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g41423_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g41424_|
    (##structure
     gx#syntax-quote::t
     'make-setq-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g41425_|
    (##structure
     gx#syntax-quote::t
     'setq-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g41426_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g41427_|
    (##structure
     gx#syntax-quote::t
     'setf-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g41428_|
    (##structure
     gx#syntax-quote::t
     'make-setf-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g41429_|
    (##structure
     gx#syntax-quote::t
     'setf-macro?
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<more-sugar>[:1:]#setq-macro|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core$<more-sugar>[2]#_g41422_|
       'expander-identifiers:
       (cons (cons |gerbil/core$<more-sugar>[2]#_g41423_| '())
             (cons |gerbil/core$<more-sugar>[2]#_g41422_|
                   (cons |gerbil/core$<more-sugar>[2]#_g41424_|
                         (cons |gerbil/core$<more-sugar>[2]#_g41425_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (##structure
        |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
        'gerbil.core#setq-macro::t
        (list |gerbil/core$<more-sugar>[2]#_g41426_|)
        'setq-macro
        '#f
        '()
        '())))
    (define |gerbil/core$<more-sugar>[:1:]#setf-macro|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core$<more-sugar>[2]#_g41427_|
       'expander-identifiers:
       (cons (cons |gerbil/core$<more-sugar>[2]#_g41423_| '())
             (cons |gerbil/core$<more-sugar>[2]#_g41427_|
                   (cons |gerbil/core$<more-sugar>[2]#_g41428_|
                         (cons |gerbil/core$<more-sugar>[2]#_g41429_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (##structure
        |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
        'gerbil.core#setf-macro::t
        (list |gerbil/core$<more-sugar>[2]#_g41426_|)
        'setf-macro
        '#f
        '()
        '())))))
