(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g14217_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g14218_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g14219_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g14220_| (gx#core-quote-syntax 'make-syntax-pattern))
  (define |gx[1]#_g14221_| (gx#core-quote-syntax 'syntax-pattern?))
  (define |gx[1]#_g14222_| (gx#core-quote-syntax 'syntax-pattern-id))
  (define |gx[1]#_g14223_| (gx#core-quote-syntax 'syntax-pattern-depth))
  (define |gx[1]#_g14224_| (gx#core-quote-syntax 'syntax-pattern-id-set!))
  (define |gx[1]#_g14225_| (gx#core-quote-syntax 'syntax-pattern-depth-set!))
  (define |gx[1]#_g14226_| (gx#core-quote-syntax 'expander))
  (define |gx[:0:]#syntax-pattern|
    (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
     'runtime-identifier:
     |gx[1]#_g14217_|
     'expander-identifiers:
     (cons |gx[1]#_g14218_|
           (cons |gx[1]#_g14219_|
                 (cons |gx[1]#_g14220_|
                       (cons |gx[1]#_g14221_|
                             (cons (cons |gx[1]#_g14222_|
                                         (cons |gx[1]#_g14223_| '()))
                                   (cons (cons |gx[1]#_g14224_|
                                               (cons |gx[1]#_g14225_| '()))
                                         '()))))))
     'type-exhibitor:
     (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
      'gx#syntax-pattern::t
      |gx[1]#_g14226_|
      'syntax-pattern
      '#f
      '()
      '(id depth)))))
