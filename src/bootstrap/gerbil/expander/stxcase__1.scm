(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g14369_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g14370_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g14371_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g14372_| (gx#core-quote-syntax 'make-syntax-pattern))
  (define |gx[1]#_g14373_| (gx#core-quote-syntax 'syntax-pattern?))
  (define |gx[1]#_g14374_| (gx#core-quote-syntax 'syntax-pattern-id))
  (define |gx[1]#_g14375_| (gx#core-quote-syntax 'syntax-pattern-depth))
  (define |gx[1]#_g14376_| (gx#core-quote-syntax 'syntax-pattern-id-set!))
  (define |gx[1]#_g14377_| (gx#core-quote-syntax 'syntax-pattern-depth-set!))
  (define |gx[1]#_g14378_| (gx#core-quote-syntax 'expander))
  (define |gx[:0:]#syntax-pattern|
    (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
     'runtime-identifier:
     |gx[1]#_g14369_|
     'expander-identifiers:
     (cons |gx[1]#_g14370_|
           (cons |gx[1]#_g14371_|
                 (cons |gx[1]#_g14372_|
                       (cons |gx[1]#_g14373_|
                             (cons (cons |gx[1]#_g14374_|
                                         (cons |gx[1]#_g14375_| '()))
                                   (cons (cons |gx[1]#_g14376_|
                                               (cons |gx[1]#_g14377_| '()))
                                         '()))))))
     'type-exhibitor:
     (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
      'gx#syntax-pattern::t
      |gx[1]#_g14378_|
      'syntax-pattern
      '#f
      '()
      '(id depth)))))
