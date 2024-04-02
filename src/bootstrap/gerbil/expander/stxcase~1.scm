(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g129345_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129347_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129349_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129351_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129353_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129354_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129355_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129357_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129358_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129359_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129361_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129362_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129363_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129365_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129366_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129367_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj129173
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
         __obj129173
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129173 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129173 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129173 '(e id depth) '6 '#f '#f))
      (let ((__tmp129344 (cons |gx[1]#_g129345_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj129173 __tmp129344 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129173 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129173 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129173 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129173 '#f '11 '#f '#f))
      (let ((__tmp129346 |gx[1]#_g129347_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129173 __tmp129346 '12 '#f '#f))
      (let ((__tmp129348 |gx[1]#_g129349_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129173 __tmp129348 '13 '#f '#f))
      (let ((__tmp129350 |gx[1]#_g129351_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129173 __tmp129350 '14 '#f '#f))
      (let ((__tmp129352
             (cons (cons 'id |gx[1]#_g129353_|)
                   (cons (cons 'depth |gx[1]#_g129354_|)
                         (cons (cons 'e |gx[1]#_g129355_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129173 __tmp129352 '15 '#f '#f))
      (let ((__tmp129356
             (cons (cons 'id |gx[1]#_g129357_|)
                   (cons (cons 'depth |gx[1]#_g129358_|)
                         (cons (cons 'e |gx[1]#_g129359_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129173 __tmp129356 '16 '#f '#f))
      (let ((__tmp129360
             (cons (cons 'id |gx[1]#_g129361_|)
                   (cons (cons 'depth |gx[1]#_g129362_|)
                         (cons (cons 'e |gx[1]#_g129363_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129173 __tmp129360 '17 '#f '#f))
      (let ((__tmp129364
             (cons (cons 'id |gx[1]#_g129365_|)
                   (cons (cons 'depth |gx[1]#_g129366_|)
                         (cons (cons 'e |gx[1]#_g129367_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129173 __tmp129364 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129173 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129173 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129173 '() '20 '#f '#f))
      __obj129173)))
