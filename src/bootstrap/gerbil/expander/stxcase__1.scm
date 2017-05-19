(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g14117_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g14118_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g14119_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g14120_| (gx#core-quote-syntax 'make-syntax-pattern))
  (define |gx[1]#_g14121_| (gx#core-quote-syntax 'syntax-pattern?))
  (define |gx[1]#_g14122_| (gx#core-quote-syntax 'syntax-pattern-id))
  (define |gx[1]#_g14123_| (gx#core-quote-syntax 'syntax-pattern-depth))
  (define |gx[1]#_g14124_| (gx#core-quote-syntax 'syntax-pattern-id-set!))
  (define |gx[1]#_g14125_| (gx#core-quote-syntax 'syntax-pattern-depth-set!))
  (define |gx[1]#_g14126_| (gx#core-quote-syntax 'expander))
  (define |gx[:0:]#syntax-pattern|
    (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
     'runtime-identifier:
     |gx[1]#_g14117_|
     'expander-identifiers:
     (cons |gx[1]#_g14118_|
           (cons |gx[1]#_g14119_|
                 (cons |gx[1]#_g14120_|
                       (cons |gx[1]#_g14121_|
                             (cons (cons |gx[1]#_g14122_|
                                         (cons |gx[1]#_g14123_| '()))
                                   (cons (cons |gx[1]#_g14124_|
                                               (cons |gx[1]#_g14125_| '()))
                                         '()))))))
     'type-exhibitor:
     (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
      'gx#syntax-pattern::t
      |gx[1]#_g14126_|
      'syntax-pattern
      '#f
      '()
      '(id depth)))))
