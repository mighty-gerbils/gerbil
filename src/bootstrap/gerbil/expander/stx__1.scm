(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g40559_| (gx#core-quote-syntax 'identifier-wrap::t))
  (define |gx[1]#_g40560_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g40561_| (gx#core-quote-syntax 'identifier-wrap::t))
  (define |gx[1]#_g40562_| (gx#core-quote-syntax 'make-identifier-wrap))
  (define |gx[1]#_g40563_| (gx#core-quote-syntax 'identifier-wrap?))
  (define |gx[1]#_g40564_| (gx#core-quote-syntax 'identifier-wrap-marks))
  (define |gx[1]#_g40565_| (gx#core-quote-syntax 'identifier-wrap-marks-set!))
  (define |gx[1]#_g40566_| (gx#core-quote-syntax 'AST))
  (define |gx[1]#_g40567_| (gx#core-quote-syntax 'syntax-wrap::t))
  (define |gx[1]#_g40568_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g40569_| (gx#core-quote-syntax 'syntax-wrap::t))
  (define |gx[1]#_g40570_| (gx#core-quote-syntax 'make-syntax-wrap))
  (define |gx[1]#_g40571_| (gx#core-quote-syntax 'syntax-wrap?))
  (define |gx[1]#_g40572_| (gx#core-quote-syntax 'syntax-wrap-mark))
  (define |gx[1]#_g40573_| (gx#core-quote-syntax 'syntax-wrap-mark-set!))
  (define |gx[1]#_g40574_| (gx#core-quote-syntax 'AST))
  (define |gx[1]#_g40575_| (gx#core-quote-syntax 'syntax-quote::t))
  (define |gx[1]#_g40576_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g40577_| (gx#core-quote-syntax 'syntax-quote::t))
  (define |gx[1]#_g40578_| (gx#core-quote-syntax 'make-syntax-quote))
  (define |gx[1]#_g40579_| (gx#core-quote-syntax 'syntax-quote?))
  (define |gx[1]#_g40580_| (gx#core-quote-syntax 'syntax-quote-context))
  (define |gx[1]#_g40581_| (gx#core-quote-syntax 'syntax-quote-marks))
  (define |gx[1]#_g40582_| (gx#core-quote-syntax 'syntax-quote-context-set!))
  (define |gx[1]#_g40583_| (gx#core-quote-syntax 'syntax-quote-marks-set!))
  (define |gx[1]#_g40584_| (gx#core-quote-syntax 'AST))
  (begin
    (define |gx[:0:]#identifier-wrap|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g40559_|
       'expander-identifiers:
       (cons |gx[1]#_g40560_|
             (cons |gx[1]#_g40561_|
                   (cons |gx[1]#_g40562_|
                         (cons |gx[1]#_g40563_|
                               (cons (cons |gx[1]#_g40564_| '())
                                     (cons (cons |gx[1]#_g40565_| '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#identifier-wrap::t
        |gx[1]#_g40566_|
        'syntax
        '#f
        '((final: . #t))
        '(marks))))
    (define |gx[:0:]#syntax-wrap|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g40567_|
       'expander-identifiers:
       (cons |gx[1]#_g40568_|
             (cons |gx[1]#_g40569_|
                   (cons |gx[1]#_g40570_|
                         (cons |gx[1]#_g40571_|
                               (cons (cons |gx[1]#_g40572_| '())
                                     (cons (cons |gx[1]#_g40573_| '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-wrap::t
        |gx[1]#_g40574_|
        'syntax
        '#f
        '((final: . #t))
        '(mark))))
    (define |gx[:0:]#syntax-quote|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g40575_|
       'expander-identifiers:
       (cons |gx[1]#_g40576_|
             (cons |gx[1]#_g40577_|
                   (cons |gx[1]#_g40578_|
                         (cons |gx[1]#_g40579_|
                               (cons (cons |gx[1]#_g40580_|
                                           (cons |gx[1]#_g40581_| '()))
                                     (cons (cons |gx[1]#_g40582_|
                                                 (cons |gx[1]#_g40583_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-quote::t
        |gx[1]#_g40584_|
        'syntax
        '#f
        '((final: . #t))
        '(context marks))))))
