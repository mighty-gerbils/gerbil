(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g2567_| (gx#core-quote-syntax 'identifier-wrap::t))
  (define |gx[1]#_g2568_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g2569_| (gx#core-quote-syntax 'identifier-wrap::t))
  (define |gx[1]#_g2570_| (gx#core-quote-syntax 'make-identifier-wrap))
  (define |gx[1]#_g2571_| (gx#core-quote-syntax 'identifier-wrap?))
  (define |gx[1]#_g2572_| (gx#core-quote-syntax 'identifier-wrap-marks))
  (define |gx[1]#_g2573_| (gx#core-quote-syntax 'identifier-wrap-marks-set!))
  (define |gx[1]#_g2574_| (gx#core-quote-syntax 'AST))
  (define |gx[1]#_g2575_| (gx#core-quote-syntax 'syntax-wrap::t))
  (define |gx[1]#_g2576_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g2577_| (gx#core-quote-syntax 'syntax-wrap::t))
  (define |gx[1]#_g2578_| (gx#core-quote-syntax 'make-syntax-wrap))
  (define |gx[1]#_g2579_| (gx#core-quote-syntax 'syntax-wrap?))
  (define |gx[1]#_g2580_| (gx#core-quote-syntax 'syntax-wrap-mark))
  (define |gx[1]#_g2581_| (gx#core-quote-syntax 'syntax-wrap-mark-set!))
  (define |gx[1]#_g2582_| (gx#core-quote-syntax 'AST))
  (define |gx[1]#_g2583_| (gx#core-quote-syntax 'syntax-quote::t))
  (define |gx[1]#_g2584_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g2585_| (gx#core-quote-syntax 'syntax-quote::t))
  (define |gx[1]#_g2586_| (gx#core-quote-syntax 'make-syntax-quote))
  (define |gx[1]#_g2587_| (gx#core-quote-syntax 'syntax-quote?))
  (define |gx[1]#_g2588_| (gx#core-quote-syntax 'syntax-quote-context))
  (define |gx[1]#_g2589_| (gx#core-quote-syntax 'syntax-quote-marks))
  (define |gx[1]#_g2590_| (gx#core-quote-syntax 'syntax-quote-context-set!))
  (define |gx[1]#_g2591_| (gx#core-quote-syntax 'syntax-quote-marks-set!))
  (define |gx[1]#_g2592_| (gx#core-quote-syntax 'AST))
  (begin
    (define |gx[:0:]#identifier-wrap|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g2567_|
       'expander-identifiers:
       (cons |gx[1]#_g2568_|
             (cons |gx[1]#_g2569_|
                   (cons |gx[1]#_g2570_|
                         (cons |gx[1]#_g2571_|
                               (cons (cons |gx[1]#_g2572_| '())
                                     (cons (cons |gx[1]#_g2573_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#identifier-wrap::t
        |gx[1]#_g2574_|
        'syntax
        '#f
        '((final: . #t))
        '(marks))))
    (define |gx[:0:]#syntax-wrap|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g2575_|
       'expander-identifiers:
       (cons |gx[1]#_g2576_|
             (cons |gx[1]#_g2577_|
                   (cons |gx[1]#_g2578_|
                         (cons |gx[1]#_g2579_|
                               (cons (cons |gx[1]#_g2580_| '())
                                     (cons (cons |gx[1]#_g2581_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-wrap::t
        |gx[1]#_g2582_|
        'syntax
        '#f
        '((final: . #t))
        '(mark))))
    (define |gx[:0:]#syntax-quote|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g2583_|
       'expander-identifiers:
       (cons |gx[1]#_g2584_|
             (cons |gx[1]#_g2585_|
                   (cons |gx[1]#_g2586_|
                         (cons |gx[1]#_g2587_|
                               (cons (cons |gx[1]#_g2588_|
                                           (cons |gx[1]#_g2589_| '()))
                                     (cons (cons |gx[1]#_g2590_|
                                                 (cons |gx[1]#_g2591_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-quote::t
        |gx[1]#_g2592_|
        'syntax
        '#f
        '((final: . #t))
        '(context marks))))))
