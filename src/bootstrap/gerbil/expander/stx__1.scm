(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g3850_| (gx#core-quote-syntax 'identifier-wrap::t))
  (define |gx[1]#_g3851_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g3852_| (gx#core-quote-syntax 'identifier-wrap::t))
  (define |gx[1]#_g3853_| (gx#core-quote-syntax 'make-identifier-wrap))
  (define |gx[1]#_g3854_| (gx#core-quote-syntax 'identifier-wrap?))
  (define |gx[1]#_g3855_| (gx#core-quote-syntax 'identifier-wrap-marks))
  (define |gx[1]#_g3856_| (gx#core-quote-syntax 'identifier-wrap-marks-set!))
  (define |gx[1]#_g3857_| (gx#core-quote-syntax 'AST))
  (define |gx[1]#_g3858_| (gx#core-quote-syntax 'syntax-wrap::t))
  (define |gx[1]#_g3859_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g3860_| (gx#core-quote-syntax 'syntax-wrap::t))
  (define |gx[1]#_g3861_| (gx#core-quote-syntax 'make-syntax-wrap))
  (define |gx[1]#_g3862_| (gx#core-quote-syntax 'syntax-wrap?))
  (define |gx[1]#_g3863_| (gx#core-quote-syntax 'syntax-wrap-mark))
  (define |gx[1]#_g3864_| (gx#core-quote-syntax 'syntax-wrap-mark-set!))
  (define |gx[1]#_g3865_| (gx#core-quote-syntax 'AST))
  (define |gx[1]#_g3866_| (gx#core-quote-syntax 'syntax-quote::t))
  (define |gx[1]#_g3867_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g3868_| (gx#core-quote-syntax 'syntax-quote::t))
  (define |gx[1]#_g3869_| (gx#core-quote-syntax 'make-syntax-quote))
  (define |gx[1]#_g3870_| (gx#core-quote-syntax 'syntax-quote?))
  (define |gx[1]#_g3871_| (gx#core-quote-syntax 'syntax-quote-context))
  (define |gx[1]#_g3872_| (gx#core-quote-syntax 'syntax-quote-marks))
  (define |gx[1]#_g3873_| (gx#core-quote-syntax 'syntax-quote-context-set!))
  (define |gx[1]#_g3874_| (gx#core-quote-syntax 'syntax-quote-marks-set!))
  (define |gx[1]#_g3875_| (gx#core-quote-syntax 'AST))
  (begin
    (define |gx[:0:]#identifier-wrap|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g3850_|
       'expander-identifiers:
       (cons |gx[1]#_g3851_|
             (cons |gx[1]#_g3852_|
                   (cons |gx[1]#_g3853_|
                         (cons |gx[1]#_g3854_|
                               (cons (cons |gx[1]#_g3855_| '())
                                     (cons (cons |gx[1]#_g3856_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#identifier-wrap::t
        |gx[1]#_g3857_|
        'syntax
        '#f
        '((final: . #t))
        '(marks))))
    (define |gx[:0:]#syntax-wrap|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g3858_|
       'expander-identifiers:
       (cons |gx[1]#_g3859_|
             (cons |gx[1]#_g3860_|
                   (cons |gx[1]#_g3861_|
                         (cons |gx[1]#_g3862_|
                               (cons (cons |gx[1]#_g3863_| '())
                                     (cons (cons |gx[1]#_g3864_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-wrap::t
        |gx[1]#_g3865_|
        'syntax
        '#f
        '((final: . #t))
        '(mark))))
    (define |gx[:0:]#syntax-quote|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g3866_|
       'expander-identifiers:
       (cons |gx[1]#_g3867_|
             (cons |gx[1]#_g3868_|
                   (cons |gx[1]#_g3869_|
                         (cons |gx[1]#_g3870_|
                               (cons (cons |gx[1]#_g3871_|
                                           (cons |gx[1]#_g3872_| '()))
                                     (cons (cons |gx[1]#_g3873_|
                                                 (cons |gx[1]#_g3874_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-quote::t
        |gx[1]#_g3875_|
        'syntax
        '#f
        '((final: . #t))
        '(context marks))))))
