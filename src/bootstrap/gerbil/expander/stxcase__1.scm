(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g13857_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g13858_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g13859_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g13860_| (gx#core-quote-syntax 'make-syntax-pattern))
  (define |gx[1]#_g13861_| (gx#core-quote-syntax 'syntax-pattern?))
  (define |gx[1]#_g13862_| (gx#core-quote-syntax 'syntax-pattern-id))
  (define |gx[1]#_g13863_| (gx#core-quote-syntax 'syntax-pattern-depth))
  (define |gx[1]#_g13864_| (gx#core-quote-syntax 'syntax-pattern-id-set!))
  (define |gx[1]#_g13865_| (gx#core-quote-syntax 'syntax-pattern-depth-set!))
  (define |gx[1]#_g13866_| (gx#core-quote-syntax 'expander))
  (define |gx[:0:]#syntax-pattern|
    (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
     'runtime-identifier:
     |gx[1]#_g13857_|
     'expander-identifiers:
     (cons |gx[1]#_g13858_|
           (cons |gx[1]#_g13859_|
                 (cons |gx[1]#_g13860_|
                       (cons |gx[1]#_g13861_|
                             (cons (cons |gx[1]#_g13862_|
                                         (cons |gx[1]#_g13863_| '()))
                                   (cons (cons |gx[1]#_g13864_|
                                               (cons |gx[1]#_g13865_| '()))
                                         '()))))))
     'type-exhibitor:
     (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
      'gx#syntax-pattern::t
      |gx[1]#_g13866_|
      'syntax-pattern
      '#f
      '()
      '(id depth)))))
