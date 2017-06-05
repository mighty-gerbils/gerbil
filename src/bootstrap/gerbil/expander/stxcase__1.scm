(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g14270_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g14271_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g14272_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g14273_| (gx#core-quote-syntax 'make-syntax-pattern))
  (define |gx[1]#_g14274_| (gx#core-quote-syntax 'syntax-pattern?))
  (define |gx[1]#_g14275_| (gx#core-quote-syntax 'syntax-pattern-id))
  (define |gx[1]#_g14276_| (gx#core-quote-syntax 'syntax-pattern-depth))
  (define |gx[1]#_g14277_| (gx#core-quote-syntax 'syntax-pattern-id-set!))
  (define |gx[1]#_g14278_| (gx#core-quote-syntax 'syntax-pattern-depth-set!))
  (define |gx[1]#_g14279_| (gx#core-quote-syntax 'expander))
  (define |gx[:0:]#syntax-pattern|
    (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
     'runtime-identifier:
     |gx[1]#_g14270_|
     'expander-identifiers:
     (cons |gx[1]#_g14271_|
           (cons |gx[1]#_g14272_|
                 (cons |gx[1]#_g14273_|
                       (cons |gx[1]#_g14274_|
                             (cons (cons |gx[1]#_g14275_|
                                         (cons |gx[1]#_g14276_| '()))
                                   (cons (cons |gx[1]#_g14277_|
                                               (cons |gx[1]#_g14278_| '()))
                                         '()))))))
     'type-exhibitor:
     (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
      'gx#syntax-pattern::t
      |gx[1]#_g14279_|
      'syntax-pattern
      '#f
      '()
      '(id depth)))))
