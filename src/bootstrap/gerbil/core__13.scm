(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-sugar>[2]#_g41959_|
    (##structure
     gx#syntax-quote::t
     'setq-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g41960_|
    (##structure
     gx#syntax-quote::t
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g41961_|
    (##structure
     gx#syntax-quote::t
     'make-setq-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g41962_|
    (##structure
     gx#syntax-quote::t
     'setq-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g41963_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g41964_|
    (##structure
     gx#syntax-quote::t
     'setf-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g41965_|
    (##structure
     gx#syntax-quote::t
     'make-setf-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g41966_|
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
       |gerbil/core$<more-sugar>[2]#_g41959_|
       'expander-identifiers:
       (cons (cons |gerbil/core$<more-sugar>[2]#_g41960_| '())
             (cons |gerbil/core$<more-sugar>[2]#_g41959_|
                   (cons |gerbil/core$<more-sugar>[2]#_g41961_|
                         (cons |gerbil/core$<more-sugar>[2]#_g41962_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (##structure
        |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
        'gerbil.core#setq-macro::t
        (list |gerbil/core$<more-sugar>[2]#_g41963_|)
        'setq-macro
        '#f
        '()
        '())))
    (define |gerbil/core$<more-sugar>[:1:]#setf-macro|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core$<more-sugar>[2]#_g41964_|
       'expander-identifiers:
       (cons (cons |gerbil/core$<more-sugar>[2]#_g41960_| '())
             (cons |gerbil/core$<more-sugar>[2]#_g41964_|
                   (cons |gerbil/core$<more-sugar>[2]#_g41965_|
                         (cons |gerbil/core$<more-sugar>[2]#_g41966_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (##structure
        |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
        'gerbil.core#setf-macro::t
        (list |gerbil/core$<more-sugar>[2]#_g41963_|)
        'setf-macro
        '#f
        '()
        '())))))
