(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g40535_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g40536_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g40537_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g40538_| (gx#core-quote-syntax 'make-syntax-pattern))
  (define |gx[1]#_g40539_| (gx#core-quote-syntax 'syntax-pattern?))
  (define |gx[1]#_g40540_| (gx#core-quote-syntax 'syntax-pattern-id))
  (define |gx[1]#_g40541_| (gx#core-quote-syntax 'syntax-pattern-depth))
  (define |gx[1]#_g40542_| (gx#core-quote-syntax 'syntax-pattern-id-set!))
  (define |gx[1]#_g40543_| (gx#core-quote-syntax 'syntax-pattern-depth-set!))
  (define |gx[1]#_g40544_| (gx#core-quote-syntax 'expander))
  (begin
    (define |gx[:0:]#syntax-pattern|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g40535_|
       'expander-identifiers:
       (cons |gx[1]#_g40536_|
             (cons |gx[1]#_g40537_|
                   (cons |gx[1]#_g40538_|
                         (cons |gx[1]#_g40539_|
                               (cons (cons |gx[1]#_g40540_|
                                           (cons |gx[1]#_g40541_| '()))
                                     (cons (cons |gx[1]#_g40542_|
                                                 (cons |gx[1]#_g40543_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-pattern::t
        |gx[1]#_g40544_|
        'syntax-pattern
        '#f
        '()
        '(id depth))))))
