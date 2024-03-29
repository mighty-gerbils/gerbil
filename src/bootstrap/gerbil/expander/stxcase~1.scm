(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g95359_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g95361_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g95363_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g95365_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g95367_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g95368_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g95369_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g95371_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g95372_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g95373_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g95375_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g95376_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g95377_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g95379_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g95380_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g95381_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj95187
           (let ()
             (declare (not safe))
             (##structure
              gerbil/core/mop~MOP-2#class-type-info::t
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f))))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj95187
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj95187 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj95187 '(id depth) '4 '#f '#f))
      (let ((__tmp95358 (cons |gx[1]#_g95359_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj95187 __tmp95358 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj95187 '#t '5 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj95187 '#f '6 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj95187 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj95187 '#f '9 '#f '#f))
      (let ((__tmp95360 |gx[1]#_g95361_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj95187 __tmp95360 '10 '#f '#f))
      (let ((__tmp95362 |gx[1]#_g95363_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj95187 __tmp95362 '11 '#f '#f))
      (let ((__tmp95364 |gx[1]#_g95365_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj95187 __tmp95364 '12 '#f '#f))
      (let ((__tmp95366
             (cons (cons 'id |gx[1]#_g95367_|)
                   (cons (cons 'depth |gx[1]#_g95368_|)
                         (cons (cons 'e |gx[1]#_g95369_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj95187 __tmp95366 '13 '#f '#f))
      (let ((__tmp95370
             (cons (cons 'id |gx[1]#_g95371_|)
                   (cons (cons 'depth |gx[1]#_g95372_|)
                         (cons (cons 'e |gx[1]#_g95373_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj95187 __tmp95370 '14 '#f '#f))
      (let ((__tmp95374
             (cons (cons 'id |gx[1]#_g95375_|)
                   (cons (cons 'depth |gx[1]#_g95376_|)
                         (cons (cons 'e |gx[1]#_g95377_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj95187 __tmp95374 '15 '#f '#f))
      (let ((__tmp95378
             (cons (cons 'id |gx[1]#_g95379_|)
                   (cons (cons 'depth |gx[1]#_g95380_|)
                         (cons (cons 'e |gx[1]#_g95381_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj95187 __tmp95378 '16 '#f '#f))
      __obj95187)))
