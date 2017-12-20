(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g4042_| (gx#core-quote-syntax 'identifier-wrap::t))
  (define |gx[1]#_g4043_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g4044_| (gx#core-quote-syntax 'identifier-wrap::t))
  (define |gx[1]#_g4045_| (gx#core-quote-syntax 'make-identifier-wrap))
  (define |gx[1]#_g4046_| (gx#core-quote-syntax 'identifier-wrap?))
  (define |gx[1]#_g4047_| (gx#core-quote-syntax 'identifier-wrap-marks))
  (define |gx[1]#_g4048_| (gx#core-quote-syntax 'identifier-wrap-marks-set!))
  (define |gx[1]#_g4049_| (gx#core-quote-syntax 'AST))
  (define |gx[1]#_g4050_| (gx#core-quote-syntax 'syntax-wrap::t))
  (define |gx[1]#_g4051_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g4052_| (gx#core-quote-syntax 'syntax-wrap::t))
  (define |gx[1]#_g4053_| (gx#core-quote-syntax 'make-syntax-wrap))
  (define |gx[1]#_g4054_| (gx#core-quote-syntax 'syntax-wrap?))
  (define |gx[1]#_g4055_| (gx#core-quote-syntax 'syntax-wrap-mark))
  (define |gx[1]#_g4056_| (gx#core-quote-syntax 'syntax-wrap-mark-set!))
  (define |gx[1]#_g4057_| (gx#core-quote-syntax 'AST))
  (define |gx[1]#_g4058_| (gx#core-quote-syntax 'syntax-quote::t))
  (define |gx[1]#_g4059_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g4060_| (gx#core-quote-syntax 'syntax-quote::t))
  (define |gx[1]#_g4061_| (gx#core-quote-syntax 'make-syntax-quote))
  (define |gx[1]#_g4062_| (gx#core-quote-syntax 'syntax-quote?))
  (define |gx[1]#_g4063_| (gx#core-quote-syntax 'syntax-quote-context))
  (define |gx[1]#_g4064_| (gx#core-quote-syntax 'syntax-quote-marks))
  (define |gx[1]#_g4065_| (gx#core-quote-syntax 'syntax-quote-context-set!))
  (define |gx[1]#_g4066_| (gx#core-quote-syntax 'syntax-quote-marks-set!))
  (define |gx[1]#_g4067_| (gx#core-quote-syntax 'AST))
  (begin
    (define |gx[:0:]#identifier-wrap|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4042_|
       'expander-identifiers:
       (cons |gx[1]#_g4043_|
             (cons |gx[1]#_g4044_|
                   (cons |gx[1]#_g4045_|
                         (cons |gx[1]#_g4046_|
                               (cons (cons |gx[1]#_g4047_| '())
                                     (cons (cons |gx[1]#_g4048_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#identifier-wrap::t
        |gx[1]#_g4049_|
        'syntax
        '#f
        '((final: . #t))
        '(marks))))
    (define |gx[:0:]#syntax-wrap|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4050_|
       'expander-identifiers:
       (cons |gx[1]#_g4051_|
             (cons |gx[1]#_g4052_|
                   (cons |gx[1]#_g4053_|
                         (cons |gx[1]#_g4054_|
                               (cons (cons |gx[1]#_g4055_| '())
                                     (cons (cons |gx[1]#_g4056_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-wrap::t
        |gx[1]#_g4057_|
        'syntax
        '#f
        '((final: . #t))
        '(mark))))
    (define |gx[:0:]#syntax-quote|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4058_|
       'expander-identifiers:
       (cons |gx[1]#_g4059_|
             (cons |gx[1]#_g4060_|
                   (cons |gx[1]#_g4061_|
                         (cons |gx[1]#_g4062_|
                               (cons (cons |gx[1]#_g4063_|
                                           (cons |gx[1]#_g4064_| '()))
                                     (cons (cons |gx[1]#_g4065_|
                                                 (cons |gx[1]#_g4066_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-quote::t
        |gx[1]#_g4067_|
        'syntax
        '#f
        '((final: . #t))
        '(context marks))))))
