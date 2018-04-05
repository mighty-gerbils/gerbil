(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g19695_|
    (gx#make-syntax-quote
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g19696_|
    (gx#make-syntax-quote 'expander::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g19697_|
    (gx#make-syntax-quote
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g19698_|
    (gx#make-syntax-quote
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g19699_|
    (gx#make-syntax-quote
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g19700_|
    (gx#make-syntax-quote
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g19701_|
    (gx#make-syntax-quote
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g19702_|
    (gx#make-syntax-quote
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g19703_|
    (gx#make-syntax-quote 'expander #f (gx#current-expander-context) '()))
  (define |gx[:0:]#syntax-pattern|
    (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
     'runtime-identifier:
     |gx[1]#_g19695_|
     'expander-identifiers:
     (cons |gx[1]#_g19696_|
           (cons |gx[1]#_g19695_|
                 (cons |gx[1]#_g19697_|
                       (cons |gx[1]#_g19698_|
                             (cons (cons |gx[1]#_g19699_|
                                         (cons |gx[1]#_g19700_| '()))
                                   (cons (cons |gx[1]#_g19701_|
                                               (cons |gx[1]#_g19702_| '()))
                                         '()))))))
     'type-exhibitor:
     (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
      'gx#syntax-pattern::t
      |gx[1]#_g19703_|
      'syntax-pattern
      '#f
      '()
      '(id depth)))))
