(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g130361_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g130363_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g130365_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g130367_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g130369_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g130370_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g130371_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g130373_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g130374_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g130375_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g130377_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g130378_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g130379_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g130381_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g130382_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g130383_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj130238
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
              '#f
              '#f
              '#f
              '#f
              '#f
              '#f))))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj130238
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130238 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130238 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130238 '(e id depth) '6 '#f '#f))
      (let ((__tmp130360 (cons |gx[1]#_g130361_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj130238 __tmp130360 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130238 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130238 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130238 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130238 '#f '11 '#f '#f))
      (let ((__tmp130362 |gx[1]#_g130363_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj130238 __tmp130362 '12 '#f '#f))
      (let ((__tmp130364 |gx[1]#_g130365_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj130238 __tmp130364 '13 '#f '#f))
      (let ((__tmp130366 |gx[1]#_g130367_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj130238 __tmp130366 '14 '#f '#f))
      (let ((__tmp130368
             (cons (cons 'id |gx[1]#_g130369_|)
                   (cons (cons 'depth |gx[1]#_g130370_|)
                         (cons (cons 'e |gx[1]#_g130371_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj130238 __tmp130368 '15 '#f '#f))
      (let ((__tmp130372
             (cons (cons 'id |gx[1]#_g130373_|)
                   (cons (cons 'depth |gx[1]#_g130374_|)
                         (cons (cons 'e |gx[1]#_g130375_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj130238 __tmp130372 '16 '#f '#f))
      (let ((__tmp130376
             (cons (cons 'id |gx[1]#_g130377_|)
                   (cons (cons 'depth |gx[1]#_g130378_|)
                         (cons (cons 'e |gx[1]#_g130379_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj130238 __tmp130376 '17 '#f '#f))
      (let ((__tmp130380
             (cons (cons 'id |gx[1]#_g130381_|)
                   (cons (cons 'depth |gx[1]#_g130382_|)
                         (cons (cons 'e |gx[1]#_g130383_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj130238 __tmp130380 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130238 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130238 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130238 '() '20 '#f '#f))
      __obj130238)))
