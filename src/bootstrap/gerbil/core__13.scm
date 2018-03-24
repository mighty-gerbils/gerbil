(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-sugar>[2]#_g41450_|
    (gx#make-syntax-quote 'setq-macro::t #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g41451_|
    (gx#make-syntax-quote
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g41452_|
    (gx#make-syntax-quote 'setq-macro::t #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g41453_|
    (gx#make-syntax-quote
     'make-setq-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g41454_|
    (gx#make-syntax-quote 'setq-macro? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g41455_|
    (gx#make-syntax-quote 'macro-object #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g41456_|
    (gx#make-syntax-quote 'setf-macro::t #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g41457_|
    (gx#make-syntax-quote
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g41458_|
    (gx#make-syntax-quote 'setf-macro::t #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g41459_|
    (gx#make-syntax-quote
     'make-setf-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g41460_|
    (gx#make-syntax-quote 'setf-macro? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g41461_|
    (gx#make-syntax-quote 'macro-object #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<more-sugar>[:1:]#setq-macro|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core$<more-sugar>[2]#_g41450_|
       'expander-identifiers:
       (cons (cons |gerbil/core$<more-sugar>[2]#_g41451_| '())
             (cons |gerbil/core$<more-sugar>[2]#_g41452_|
                   (cons |gerbil/core$<more-sugar>[2]#_g41453_|
                         (cons |gerbil/core$<more-sugar>[2]#_g41454_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (##structure
        |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
        'gerbil.core#setq-macro::t
        (list |gerbil/core$<more-sugar>[2]#_g41455_|)
        'setq-macro
        '#f
        '()
        '())))
    (define |gerbil/core$<more-sugar>[:1:]#setf-macro|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core$<more-sugar>[2]#_g41456_|
       'expander-identifiers:
       (cons (cons |gerbil/core$<more-sugar>[2]#_g41457_| '())
             (cons |gerbil/core$<more-sugar>[2]#_g41458_|
                   (cons |gerbil/core$<more-sugar>[2]#_g41459_|
                         (cons |gerbil/core$<more-sugar>[2]#_g41460_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (##structure
        |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
        'gerbil.core#setf-macro::t
        (list |gerbil/core$<more-sugar>[2]#_g41461_|)
        'setf-macro
        '#f
        '()
        '())))))
