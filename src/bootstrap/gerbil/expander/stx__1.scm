(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g3757_| (gx#core-quote-syntax 'identifier-wrap::t))
  (define |gx[1]#_g3758_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g3759_| (gx#core-quote-syntax 'identifier-wrap::t))
  (define |gx[1]#_g3760_| (gx#core-quote-syntax 'make-identifier-wrap))
  (define |gx[1]#_g3761_| (gx#core-quote-syntax 'identifier-wrap?))
  (define |gx[1]#_g3762_| (gx#core-quote-syntax 'identifier-wrap-marks))
  (define |gx[1]#_g3763_| (gx#core-quote-syntax 'identifier-wrap-marks-set!))
  (define |gx[1]#_g3764_| (gx#core-quote-syntax 'AST))
  (define |gx[1]#_g3765_| (gx#core-quote-syntax 'syntax-wrap::t))
  (define |gx[1]#_g3766_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g3767_| (gx#core-quote-syntax 'syntax-wrap::t))
  (define |gx[1]#_g3768_| (gx#core-quote-syntax 'make-syntax-wrap))
  (define |gx[1]#_g3769_| (gx#core-quote-syntax 'syntax-wrap?))
  (define |gx[1]#_g3770_| (gx#core-quote-syntax 'syntax-wrap-mark))
  (define |gx[1]#_g3771_| (gx#core-quote-syntax 'syntax-wrap-mark-set!))
  (define |gx[1]#_g3772_| (gx#core-quote-syntax 'AST))
  (define |gx[1]#_g3773_| (gx#core-quote-syntax 'syntax-quote::t))
  (define |gx[1]#_g3774_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g3775_| (gx#core-quote-syntax 'syntax-quote::t))
  (define |gx[1]#_g3776_| (gx#core-quote-syntax 'make-syntax-quote))
  (define |gx[1]#_g3777_| (gx#core-quote-syntax 'syntax-quote?))
  (define |gx[1]#_g3778_| (gx#core-quote-syntax 'syntax-quote-context))
  (define |gx[1]#_g3779_| (gx#core-quote-syntax 'syntax-quote-marks))
  (define |gx[1]#_g3780_| (gx#core-quote-syntax 'syntax-quote-context-set!))
  (define |gx[1]#_g3781_| (gx#core-quote-syntax 'syntax-quote-marks-set!))
  (define |gx[1]#_g3782_| (gx#core-quote-syntax 'AST))
  (begin
    (define |gx[:0:]#identifier-wrap|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g3757_|
       'expander-identifiers:
       (cons |gx[1]#_g3758_|
             (cons |gx[1]#_g3759_|
                   (cons |gx[1]#_g3760_|
                         (cons |gx[1]#_g3761_|
                               (cons (cons |gx[1]#_g3762_| '())
                                     (cons (cons |gx[1]#_g3763_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#identifier-wrap::t
        |gx[1]#_g3764_|
        'syntax
        '#f
        '((final: . #t))
        '(marks))))
    (define |gx[:0:]#syntax-wrap|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g3765_|
       'expander-identifiers:
       (cons |gx[1]#_g3766_|
             (cons |gx[1]#_g3767_|
                   (cons |gx[1]#_g3768_|
                         (cons |gx[1]#_g3769_|
                               (cons (cons |gx[1]#_g3770_| '())
                                     (cons (cons |gx[1]#_g3771_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-wrap::t
        |gx[1]#_g3772_|
        'syntax
        '#f
        '((final: . #t))
        '(mark))))
    (define |gx[:0:]#syntax-quote|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g3773_|
       'expander-identifiers:
       (cons |gx[1]#_g3774_|
             (cons |gx[1]#_g3775_|
                   (cons |gx[1]#_g3776_|
                         (cons |gx[1]#_g3777_|
                               (cons (cons |gx[1]#_g3778_|
                                           (cons |gx[1]#_g3779_| '()))
                                     (cons (cons |gx[1]#_g3780_|
                                                 (cons |gx[1]#_g3781_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-quote::t
        |gx[1]#_g3782_|
        'syntax
        '#f
        '((final: . #t))
        '(context marks))))))
