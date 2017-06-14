(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g14311_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g14312_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g14313_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g14314_| (gx#core-quote-syntax 'make-syntax-pattern))
  (define |gx[1]#_g14315_| (gx#core-quote-syntax 'syntax-pattern?))
  (define |gx[1]#_g14316_| (gx#core-quote-syntax 'syntax-pattern-id))
  (define |gx[1]#_g14317_| (gx#core-quote-syntax 'syntax-pattern-depth))
  (define |gx[1]#_g14318_| (gx#core-quote-syntax 'syntax-pattern-id-set!))
  (define |gx[1]#_g14319_| (gx#core-quote-syntax 'syntax-pattern-depth-set!))
  (define |gx[1]#_g14320_| (gx#core-quote-syntax 'expander))
  (define |gx[:0:]#syntax-pattern|
    (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
     'runtime-identifier:
     |gx[1]#_g14311_|
     'expander-identifiers:
     (cons |gx[1]#_g14312_|
           (cons |gx[1]#_g14313_|
                 (cons |gx[1]#_g14314_|
                       (cons |gx[1]#_g14315_|
                             (cons (cons |gx[1]#_g14316_|
                                         (cons |gx[1]#_g14317_| '()))
                                   (cons (cons |gx[1]#_g14318_|
                                               (cons |gx[1]#_g14319_| '()))
                                         '()))))))
     'type-exhibitor:
     (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
      'gx#syntax-pattern::t
      |gx[1]#_g14320_|
      'syntax-pattern
      '#f
      '()
      '(id depth)))))
