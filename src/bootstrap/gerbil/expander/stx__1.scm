(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g12503_| (gx#core-quote-syntax 'identifier-wrap::t))
  (define |gx[1]#_g12504_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g12505_| (gx#core-quote-syntax 'identifier-wrap::t))
  (define |gx[1]#_g12506_| (gx#core-quote-syntax 'make-identifier-wrap))
  (define |gx[1]#_g12507_| (gx#core-quote-syntax 'identifier-wrap?))
  (define |gx[1]#_g12508_| (gx#core-quote-syntax 'identifier-wrap-marks))
  (define |gx[1]#_g12509_| (gx#core-quote-syntax 'identifier-wrap-marks-set!))
  (define |gx[1]#_g12510_| (gx#core-quote-syntax 'AST))
  (define |gx[1]#_g12511_| (gx#core-quote-syntax 'syntax-wrap::t))
  (define |gx[1]#_g12512_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g12513_| (gx#core-quote-syntax 'syntax-wrap::t))
  (define |gx[1]#_g12514_| (gx#core-quote-syntax 'make-syntax-wrap))
  (define |gx[1]#_g12515_| (gx#core-quote-syntax 'syntax-wrap?))
  (define |gx[1]#_g12516_| (gx#core-quote-syntax 'syntax-wrap-mark))
  (define |gx[1]#_g12517_| (gx#core-quote-syntax 'syntax-wrap-mark-set!))
  (define |gx[1]#_g12518_| (gx#core-quote-syntax 'AST))
  (define |gx[1]#_g12519_| (gx#core-quote-syntax 'syntax-quote::t))
  (define |gx[1]#_g12520_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g12521_| (gx#core-quote-syntax 'syntax-quote::t))
  (define |gx[1]#_g12522_| (gx#core-quote-syntax 'make-syntax-quote))
  (define |gx[1]#_g12523_| (gx#core-quote-syntax 'syntax-quote?))
  (define |gx[1]#_g12524_| (gx#core-quote-syntax 'syntax-quote-context))
  (define |gx[1]#_g12525_| (gx#core-quote-syntax 'syntax-quote-marks))
  (define |gx[1]#_g12526_| (gx#core-quote-syntax 'syntax-quote-context-set!))
  (define |gx[1]#_g12527_| (gx#core-quote-syntax 'syntax-quote-marks-set!))
  (define |gx[1]#_g12528_| (gx#core-quote-syntax 'AST))
  (begin
    (define |gx[:0:]#identifier-wrap|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12503_|
       'expander-identifiers:
       (cons |gx[1]#_g12504_|
             (cons |gx[1]#_g12505_|
                   (cons |gx[1]#_g12506_|
                         (cons |gx[1]#_g12507_|
                               (cons (cons |gx[1]#_g12508_| '())
                                     (cons (cons |gx[1]#_g12509_| '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#identifier-wrap::t
        |gx[1]#_g12510_|
        'syntax
        '#f
        '((final: . #t))
        '(marks))))
    (define |gx[:0:]#syntax-wrap|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12511_|
       'expander-identifiers:
       (cons |gx[1]#_g12512_|
             (cons |gx[1]#_g12513_|
                   (cons |gx[1]#_g12514_|
                         (cons |gx[1]#_g12515_|
                               (cons (cons |gx[1]#_g12516_| '())
                                     (cons (cons |gx[1]#_g12517_| '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-wrap::t
        |gx[1]#_g12518_|
        'syntax
        '#f
        '((final: . #t))
        '(mark))))
    (define |gx[:0:]#syntax-quote|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12519_|
       'expander-identifiers:
       (cons |gx[1]#_g12520_|
             (cons |gx[1]#_g12521_|
                   (cons |gx[1]#_g12522_|
                         (cons |gx[1]#_g12523_|
                               (cons (cons |gx[1]#_g12524_|
                                           (cons |gx[1]#_g12525_| '()))
                                     (cons (cons |gx[1]#_g12526_|
                                                 (cons |gx[1]#_g12527_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-quote::t
        |gx[1]#_g12528_|
        'syntax
        '#f
        '((final: . #t))
        '(context marks))))))
