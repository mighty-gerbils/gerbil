(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<more-sugar>[2]#_g31076_|
    (gx#make-syntax-quote 'setq-macro::t #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g31077_|
    (gx#make-syntax-quote
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g31078_|
    (gx#make-syntax-quote 'setq-macro::t #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g31079_|
    (gx#make-syntax-quote
     'make-setq-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g31080_|
    (gx#make-syntax-quote 'setq-macro? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g31081_|
    (gx#make-syntax-quote 'macro-object #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g31082_|
    (gx#make-syntax-quote 'setf-macro::t #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g31083_|
    (gx#make-syntax-quote
     'macro-object::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g31084_|
    (gx#make-syntax-quote 'setf-macro::t #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g31085_|
    (gx#make-syntax-quote
     'make-setf-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<more-sugar>[2]#_g31086_|
    (gx#make-syntax-quote 'setf-macro? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<more-sugar>[2]#_g31087_|
    (gx#make-syntax-quote 'macro-object #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<more-sugar>[:1:]#setq-macro|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core$<more-sugar>[2]#_g31076_|
       'expander-identifiers:
       (cons (cons |gerbil/core$<more-sugar>[2]#_g31077_| '())
             (cons |gerbil/core$<more-sugar>[2]#_g31078_|
                   (cons |gerbil/core$<more-sugar>[2]#_g31079_|
                         (cons |gerbil/core$<more-sugar>[2]#_g31080_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        'gerbil.core#setq-macro::t
        (list |gerbil/core$<more-sugar>[2]#_g31081_|)
        'setq-macro
        '#f
        '()
        '())))
    (define |gerbil/core$<more-sugar>[:1:]#setf-macro|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |gerbil/core$<more-sugar>[2]#_g31082_|
       'expander-identifiers:
       (cons (cons |gerbil/core$<more-sugar>[2]#_g31083_| '())
             (cons |gerbil/core$<more-sugar>[2]#_g31084_|
                   (cons |gerbil/core$<more-sugar>[2]#_g31085_|
                         (cons |gerbil/core$<more-sugar>[2]#_g31086_|
                               (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        'gerbil.core#setf-macro::t
        (list |gerbil/core$<more-sugar>[2]#_g31087_|)
        'setf-macro
        '#f
        '()
        '())))))
