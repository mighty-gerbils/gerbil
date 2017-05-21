(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g4012_| (gx#core-quote-syntax 'identifier-wrap::t))
  (define |gx[1]#_g4013_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g4014_| (gx#core-quote-syntax 'identifier-wrap::t))
  (define |gx[1]#_g4015_| (gx#core-quote-syntax 'make-identifier-wrap))
  (define |gx[1]#_g4016_| (gx#core-quote-syntax 'identifier-wrap?))
  (define |gx[1]#_g4017_| (gx#core-quote-syntax 'identifier-wrap-marks))
  (define |gx[1]#_g4018_| (gx#core-quote-syntax 'identifier-wrap-marks-set!))
  (define |gx[1]#_g4019_| (gx#core-quote-syntax 'AST))
  (define |gx[1]#_g4020_| (gx#core-quote-syntax 'syntax-wrap::t))
  (define |gx[1]#_g4021_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g4022_| (gx#core-quote-syntax 'syntax-wrap::t))
  (define |gx[1]#_g4023_| (gx#core-quote-syntax 'make-syntax-wrap))
  (define |gx[1]#_g4024_| (gx#core-quote-syntax 'syntax-wrap?))
  (define |gx[1]#_g4025_| (gx#core-quote-syntax 'syntax-wrap-mark))
  (define |gx[1]#_g4026_| (gx#core-quote-syntax 'syntax-wrap-mark-set!))
  (define |gx[1]#_g4027_| (gx#core-quote-syntax 'AST))
  (define |gx[1]#_g4028_| (gx#core-quote-syntax 'syntax-quote::t))
  (define |gx[1]#_g4029_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g4030_| (gx#core-quote-syntax 'syntax-quote::t))
  (define |gx[1]#_g4031_| (gx#core-quote-syntax 'make-syntax-quote))
  (define |gx[1]#_g4032_| (gx#core-quote-syntax 'syntax-quote?))
  (define |gx[1]#_g4033_| (gx#core-quote-syntax 'syntax-quote-context))
  (define |gx[1]#_g4034_| (gx#core-quote-syntax 'syntax-quote-marks))
  (define |gx[1]#_g4035_| (gx#core-quote-syntax 'syntax-quote-context-set!))
  (define |gx[1]#_g4036_| (gx#core-quote-syntax 'syntax-quote-marks-set!))
  (define |gx[1]#_g4037_| (gx#core-quote-syntax 'AST))
  (begin
    (define |gx[:0:]#identifier-wrap|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4012_|
       'expander-identifiers:
       (cons |gx[1]#_g4013_|
             (cons |gx[1]#_g4014_|
                   (cons |gx[1]#_g4015_|
                         (cons |gx[1]#_g4016_|
                               (cons (cons |gx[1]#_g4017_| '())
                                     (cons (cons |gx[1]#_g4018_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#identifier-wrap::t
        |gx[1]#_g4019_|
        'syntax
        '#f
        '((final: . #t))
        '(marks))))
    (define |gx[:0:]#syntax-wrap|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4020_|
       'expander-identifiers:
       (cons |gx[1]#_g4021_|
             (cons |gx[1]#_g4022_|
                   (cons |gx[1]#_g4023_|
                         (cons |gx[1]#_g4024_|
                               (cons (cons |gx[1]#_g4025_| '())
                                     (cons (cons |gx[1]#_g4026_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-wrap::t
        |gx[1]#_g4027_|
        'syntax
        '#f
        '((final: . #t))
        '(mark))))
    (define |gx[:0:]#syntax-quote|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4028_|
       'expander-identifiers:
       (cons |gx[1]#_g4029_|
             (cons |gx[1]#_g4030_|
                   (cons |gx[1]#_g4031_|
                         (cons |gx[1]#_g4032_|
                               (cons (cons |gx[1]#_g4033_|
                                           (cons |gx[1]#_g4034_| '()))
                                     (cons (cons |gx[1]#_g4035_|
                                                 (cons |gx[1]#_g4036_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-quote::t
        |gx[1]#_g4037_|
        'syntax
        '#f
        '((final: . #t))
        '(context marks))))))
