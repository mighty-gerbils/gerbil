(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-sugar>[2]#_g42015_|
    (##structure
     gx#syntax-quote::t
     'setq-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42016_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42017_|
    (##structure
     gx#syntax-quote::t
     'make-setq-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42018_|
    (##structure
     gx#syntax-quote::t
     'setq-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42019_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42020_|
    (##structure
     gx#syntax-quote::t
     'setf-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42021_|
    (##structure
     gx#syntax-quote::t
     'make-setf-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g42022_|
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
       |gerbil/core$<more-sugar>[2]#_g42015_|
       'expander-identifiers:
       (cons (cons |gerbil/core$<more-sugar>[2]#_g42016_| '())
             (cons |gerbil/core$<more-sugar>[2]#_g42015_|
                   (cons |gerbil/core$<more-sugar>[2]#_g42017_|
                         (cons |gerbil/core$<more-sugar>[2]#_g42018_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (##structure
        |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
        'gerbil.core#setq-macro::t
        (list |gerbil/core$<more-sugar>[2]#_g42019_|)
        'setq-macro
        '#f
        '()
        '())))
    (define |gerbil/core$<more-sugar>[:1:]#setf-macro|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core$<more-sugar>[2]#_g42020_|
       'expander-identifiers:
       (cons (cons |gerbil/core$<more-sugar>[2]#_g42016_| '())
             (cons |gerbil/core$<more-sugar>[2]#_g42020_|
                   (cons |gerbil/core$<more-sugar>[2]#_g42021_|
                         (cons |gerbil/core$<more-sugar>[2]#_g42022_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (##structure
        |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
        'gerbil.core#setf-macro::t
        (list |gerbil/core$<more-sugar>[2]#_g42019_|)
        'setf-macro
        '#f
        '()
        '())))))
