(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g12479_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g12480_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g12481_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g12482_| (gx#core-quote-syntax 'make-syntax-pattern))
  (define |gx[1]#_g12483_| (gx#core-quote-syntax 'syntax-pattern?))
  (define |gx[1]#_g12484_| (gx#core-quote-syntax 'syntax-pattern-id))
  (define |gx[1]#_g12485_| (gx#core-quote-syntax 'syntax-pattern-depth))
  (define |gx[1]#_g12486_| (gx#core-quote-syntax 'syntax-pattern-id-set!))
  (define |gx[1]#_g12487_| (gx#core-quote-syntax 'syntax-pattern-depth-set!))
  (define |gx[1]#_g12488_| (gx#core-quote-syntax 'expander))
  (begin
    (define |gx[:0:]#syntax-pattern|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12479_|
       'expander-identifiers:
       (cons |gx[1]#_g12480_|
             (cons |gx[1]#_g12481_|
                   (cons |gx[1]#_g12482_|
                         (cons |gx[1]#_g12483_|
                               (cons (cons |gx[1]#_g12484_|
                                           (cons |gx[1]#_g12485_| '()))
                                     (cons (cons |gx[1]#_g12486_|
                                                 (cons |gx[1]#_g12487_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-pattern::t
        |gx[1]#_g12488_|
        'syntax-pattern
        '#f
        '()
        '(id depth))))))
