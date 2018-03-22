(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g18491_|
    (gx#make-syntax-quote
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g18492_|
    (gx#make-syntax-quote 'expander::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g18493_|
    (gx#make-syntax-quote
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g18494_|
    (gx#make-syntax-quote
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g18495_|
    (gx#make-syntax-quote
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g18496_|
    (gx#make-syntax-quote
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g18497_|
    (gx#make-syntax-quote
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g18498_|
    (gx#make-syntax-quote
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g18499_|
    (gx#make-syntax-quote
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g18500_|
    (gx#make-syntax-quote 'expander #f (gx#current-expander-context) '()))
  (define |gx[:0:]#syntax-pattern|
    (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
     'runtime-identifier:
     |gx[1]#_g18491_|
     'expander-identifiers:
     (cons |gx[1]#_g18492_|
           (cons |gx[1]#_g18493_|
                 (cons |gx[1]#_g18494_|
                       (cons |gx[1]#_g18495_|
                             (cons (cons |gx[1]#_g18496_|
                                         (cons |gx[1]#_g18497_| '()))
                                   (cons (cons |gx[1]#_g18498_|
                                               (cons |gx[1]#_g18499_| '()))
                                         '()))))))
     'type-exhibitor:
     (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
      'gx#syntax-pattern::t
      |gx[1]#_g18500_|
      'syntax-pattern
      '#f
      '()
      '(id depth)))))
