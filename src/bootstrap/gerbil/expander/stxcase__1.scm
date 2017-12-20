(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g14399_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g14400_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g14401_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g14402_| (gx#core-quote-syntax 'make-syntax-pattern))
  (define |gx[1]#_g14403_| (gx#core-quote-syntax 'syntax-pattern?))
  (define |gx[1]#_g14404_| (gx#core-quote-syntax 'syntax-pattern-id))
  (define |gx[1]#_g14405_| (gx#core-quote-syntax 'syntax-pattern-depth))
  (define |gx[1]#_g14406_| (gx#core-quote-syntax 'syntax-pattern-id-set!))
  (define |gx[1]#_g14407_| (gx#core-quote-syntax 'syntax-pattern-depth-set!))
  (define |gx[1]#_g14408_| (gx#core-quote-syntax 'expander))
  (define |gx[:0:]#syntax-pattern|
    (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
     'runtime-identifier:
     |gx[1]#_g14399_|
     'expander-identifiers:
     (cons |gx[1]#_g14400_|
           (cons |gx[1]#_g14401_|
                 (cons |gx[1]#_g14402_|
                       (cons |gx[1]#_g14403_|
                             (cons (cons |gx[1]#_g14404_|
                                         (cons |gx[1]#_g14405_| '()))
                                   (cons (cons |gx[1]#_g14406_|
                                               (cons |gx[1]#_g14407_| '()))
                                         '()))))))
     'type-exhibitor:
     (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
      'gx#syntax-pattern::t
      |gx[1]#_g14408_|
      'syntax-pattern
      '#f
      '()
      '(id depth)))))
