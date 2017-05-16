(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g3774_| (gx#core-quote-syntax 'identifier-wrap::t))
  (define |gx[1]#_g3775_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g3776_| (gx#core-quote-syntax 'identifier-wrap::t))
  (define |gx[1]#_g3777_| (gx#core-quote-syntax 'make-identifier-wrap))
  (define |gx[1]#_g3778_| (gx#core-quote-syntax 'identifier-wrap?))
  (define |gx[1]#_g3779_| (gx#core-quote-syntax 'identifier-wrap-marks))
  (define |gx[1]#_g3780_| (gx#core-quote-syntax 'identifier-wrap-marks-set!))
  (define |gx[1]#_g3781_| (gx#core-quote-syntax 'AST))
  (define |gx[1]#_g3782_| (gx#core-quote-syntax 'syntax-wrap::t))
  (define |gx[1]#_g3783_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g3784_| (gx#core-quote-syntax 'syntax-wrap::t))
  (define |gx[1]#_g3785_| (gx#core-quote-syntax 'make-syntax-wrap))
  (define |gx[1]#_g3786_| (gx#core-quote-syntax 'syntax-wrap?))
  (define |gx[1]#_g3787_| (gx#core-quote-syntax 'syntax-wrap-mark))
  (define |gx[1]#_g3788_| (gx#core-quote-syntax 'syntax-wrap-mark-set!))
  (define |gx[1]#_g3789_| (gx#core-quote-syntax 'AST))
  (define |gx[1]#_g3790_| (gx#core-quote-syntax 'syntax-quote::t))
  (define |gx[1]#_g3791_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g3792_| (gx#core-quote-syntax 'syntax-quote::t))
  (define |gx[1]#_g3793_| (gx#core-quote-syntax 'make-syntax-quote))
  (define |gx[1]#_g3794_| (gx#core-quote-syntax 'syntax-quote?))
  (define |gx[1]#_g3795_| (gx#core-quote-syntax 'syntax-quote-context))
  (define |gx[1]#_g3796_| (gx#core-quote-syntax 'syntax-quote-marks))
  (define |gx[1]#_g3797_| (gx#core-quote-syntax 'syntax-quote-context-set!))
  (define |gx[1]#_g3798_| (gx#core-quote-syntax 'syntax-quote-marks-set!))
  (define |gx[1]#_g3799_| (gx#core-quote-syntax 'AST))
  (begin
    (define |gx[:0:]#identifier-wrap|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g3774_|
       'expander-identifiers:
       (cons |gx[1]#_g3775_|
             (cons |gx[1]#_g3776_|
                   (cons |gx[1]#_g3777_|
                         (cons |gx[1]#_g3778_|
                               (cons (cons |gx[1]#_g3779_| '())
                                     (cons (cons |gx[1]#_g3780_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#identifier-wrap::t
        |gx[1]#_g3781_|
        'syntax
        '#f
        '((final: . #t))
        '(marks))))
    (define |gx[:0:]#syntax-wrap|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g3782_|
       'expander-identifiers:
       (cons |gx[1]#_g3783_|
             (cons |gx[1]#_g3784_|
                   (cons |gx[1]#_g3785_|
                         (cons |gx[1]#_g3786_|
                               (cons (cons |gx[1]#_g3787_| '())
                                     (cons (cons |gx[1]#_g3788_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-wrap::t
        |gx[1]#_g3789_|
        'syntax
        '#f
        '((final: . #t))
        '(mark))))
    (define |gx[:0:]#syntax-quote|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g3790_|
       'expander-identifiers:
       (cons |gx[1]#_g3791_|
             (cons |gx[1]#_g3792_|
                   (cons |gx[1]#_g3793_|
                         (cons |gx[1]#_g3794_|
                               (cons (cons |gx[1]#_g3795_|
                                           (cons |gx[1]#_g3796_| '()))
                                     (cons (cons |gx[1]#_g3797_|
                                                 (cons |gx[1]#_g3798_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-quote::t
        |gx[1]#_g3799_|
        'syntax
        '#f
        '((final: . #t))
        '(context marks))))))
