(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g133294_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133296_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133298_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133300_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133302_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133303_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133304_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133306_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133307_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133308_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133310_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133311_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133312_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133314_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133315_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133316_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj133171
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
         __obj133171
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133171 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133171 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133171 '(e id depth) '6 '#f '#f))
      (let ((__tmp133293 (cons |gx[1]#_g133294_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj133171 __tmp133293 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133171 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133171 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133171 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133171 '#f '11 '#f '#f))
      (let ((__tmp133295 |gx[1]#_g133296_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj133171 __tmp133295 '12 '#f '#f))
      (let ((__tmp133297 |gx[1]#_g133298_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj133171 __tmp133297 '13 '#f '#f))
      (let ((__tmp133299 |gx[1]#_g133300_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj133171 __tmp133299 '14 '#f '#f))
      (let ((__tmp133301
             (cons (cons 'id |gx[1]#_g133302_|)
                   (cons (cons 'depth |gx[1]#_g133303_|)
                         (cons (cons 'e |gx[1]#_g133304_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj133171 __tmp133301 '15 '#f '#f))
      (let ((__tmp133305
             (cons (cons 'id |gx[1]#_g133306_|)
                   (cons (cons 'depth |gx[1]#_g133307_|)
                         (cons (cons 'e |gx[1]#_g133308_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj133171 __tmp133305 '16 '#f '#f))
      (let ((__tmp133309
             (cons (cons 'id |gx[1]#_g133310_|)
                   (cons (cons 'depth |gx[1]#_g133311_|)
                         (cons (cons 'e |gx[1]#_g133312_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj133171 __tmp133309 '17 '#f '#f))
      (let ((__tmp133313
             (cons (cons 'id |gx[1]#_g133314_|)
                   (cons (cons 'depth |gx[1]#_g133315_|)
                         (cons (cons 'e |gx[1]#_g133316_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj133171 __tmp133313 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133171 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133171 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133171 '() '20 '#f '#f))
      __obj133171)))
