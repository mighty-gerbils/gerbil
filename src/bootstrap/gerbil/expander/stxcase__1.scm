(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g13764_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g13765_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g13766_| (gx#core-quote-syntax 'syntax-pattern::t))
  (define |gx[1]#_g13767_| (gx#core-quote-syntax 'make-syntax-pattern))
  (define |gx[1]#_g13768_| (gx#core-quote-syntax 'syntax-pattern?))
  (define |gx[1]#_g13769_| (gx#core-quote-syntax 'syntax-pattern-id))
  (define |gx[1]#_g13770_| (gx#core-quote-syntax 'syntax-pattern-depth))
  (define |gx[1]#_g13771_| (gx#core-quote-syntax 'syntax-pattern-id-set!))
  (define |gx[1]#_g13772_| (gx#core-quote-syntax 'syntax-pattern-depth-set!))
  (define |gx[1]#_g13773_| (gx#core-quote-syntax 'expander))
  (define |gx[:0:]#syntax-pattern|
    (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
     'runtime-identifier:
     |gx[1]#_g13764_|
     'expander-identifiers:
     (cons |gx[1]#_g13765_|
           (cons |gx[1]#_g13766_|
                 (cons |gx[1]#_g13767_|
                       (cons |gx[1]#_g13768_|
                             (cons (cons |gx[1]#_g13769_|
                                         (cons |gx[1]#_g13770_| '()))
                                   (cons (cons |gx[1]#_g13771_|
                                               (cons |gx[1]#_g13772_| '()))
                                         '()))))))
     'type-exhibitor:
     (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
      'gx#syntax-pattern::t
      |gx[1]#_g13773_|
      'syntax-pattern
      '#f
      '()
      '(id depth)))))
