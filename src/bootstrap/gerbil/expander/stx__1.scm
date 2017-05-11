(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g2628_| (gx#core-quote-syntax 'identifier-wrap::t))
  (define |gx[1]#_g2629_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g2630_| (gx#core-quote-syntax 'identifier-wrap::t))
  (define |gx[1]#_g2631_| (gx#core-quote-syntax 'make-identifier-wrap))
  (define |gx[1]#_g2632_| (gx#core-quote-syntax 'identifier-wrap?))
  (define |gx[1]#_g2633_| (gx#core-quote-syntax 'identifier-wrap-marks))
  (define |gx[1]#_g2634_| (gx#core-quote-syntax 'identifier-wrap-marks-set!))
  (define |gx[1]#_g2635_| (gx#core-quote-syntax 'AST))
  (define |gx[1]#_g2636_| (gx#core-quote-syntax 'syntax-wrap::t))
  (define |gx[1]#_g2637_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g2638_| (gx#core-quote-syntax 'syntax-wrap::t))
  (define |gx[1]#_g2639_| (gx#core-quote-syntax 'make-syntax-wrap))
  (define |gx[1]#_g2640_| (gx#core-quote-syntax 'syntax-wrap?))
  (define |gx[1]#_g2641_| (gx#core-quote-syntax 'syntax-wrap-mark))
  (define |gx[1]#_g2642_| (gx#core-quote-syntax 'syntax-wrap-mark-set!))
  (define |gx[1]#_g2643_| (gx#core-quote-syntax 'AST))
  (define |gx[1]#_g2644_| (gx#core-quote-syntax 'syntax-quote::t))
  (define |gx[1]#_g2645_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g2646_| (gx#core-quote-syntax 'syntax-quote::t))
  (define |gx[1]#_g2647_| (gx#core-quote-syntax 'make-syntax-quote))
  (define |gx[1]#_g2648_| (gx#core-quote-syntax 'syntax-quote?))
  (define |gx[1]#_g2649_| (gx#core-quote-syntax 'syntax-quote-context))
  (define |gx[1]#_g2650_| (gx#core-quote-syntax 'syntax-quote-marks))
  (define |gx[1]#_g2651_| (gx#core-quote-syntax 'syntax-quote-context-set!))
  (define |gx[1]#_g2652_| (gx#core-quote-syntax 'syntax-quote-marks-set!))
  (define |gx[1]#_g2653_| (gx#core-quote-syntax 'AST))
  (begin
    (define |gx[:0:]#identifier-wrap|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g2628_|
       'expander-identifiers:
       (cons |gx[1]#_g2629_|
             (cons |gx[1]#_g2630_|
                   (cons |gx[1]#_g2631_|
                         (cons |gx[1]#_g2632_|
                               (cons (cons |gx[1]#_g2633_| '())
                                     (cons (cons |gx[1]#_g2634_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#identifier-wrap::t
        |gx[1]#_g2635_|
        'syntax
        '#f
        '((final: . #t))
        '(marks))))
    (define |gx[:0:]#syntax-wrap|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g2636_|
       'expander-identifiers:
       (cons |gx[1]#_g2637_|
             (cons |gx[1]#_g2638_|
                   (cons |gx[1]#_g2639_|
                         (cons |gx[1]#_g2640_|
                               (cons (cons |gx[1]#_g2641_| '())
                                     (cons (cons |gx[1]#_g2642_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-wrap::t
        |gx[1]#_g2643_|
        'syntax
        '#f
        '((final: . #t))
        '(mark))))
    (define |gx[:0:]#syntax-quote|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g2644_|
       'expander-identifiers:
       (cons |gx[1]#_g2645_|
             (cons |gx[1]#_g2646_|
                   (cons |gx[1]#_g2647_|
                         (cons |gx[1]#_g2648_|
                               (cons (cons |gx[1]#_g2649_|
                                           (cons |gx[1]#_g2650_| '()))
                                     (cons (cons |gx[1]#_g2651_|
                                                 (cons |gx[1]#_g2652_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-quote::t
        |gx[1]#_g2653_|
        'syntax
        '#f
        '((final: . #t))
        '(context marks))))))
