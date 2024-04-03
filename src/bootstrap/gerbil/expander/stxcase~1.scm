(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g129284_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129286_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129288_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129290_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129292_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129293_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129294_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129296_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129297_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129298_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129300_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129301_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129302_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129304_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129305_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129306_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj129112
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
         __obj129112
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129112 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129112 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129112 '(e id depth) '6 '#f '#f))
      (let ((__tmp129283 (cons |gx[1]#_g129284_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj129112 __tmp129283 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129112 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129112 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129112 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129112 '#f '11 '#f '#f))
      (let ((__tmp129285 |gx[1]#_g129286_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129112 __tmp129285 '12 '#f '#f))
      (let ((__tmp129287 |gx[1]#_g129288_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129112 __tmp129287 '13 '#f '#f))
      (let ((__tmp129289 |gx[1]#_g129290_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129112 __tmp129289 '14 '#f '#f))
      (let ((__tmp129291
             (cons (cons 'id |gx[1]#_g129292_|)
                   (cons (cons 'depth |gx[1]#_g129293_|)
                         (cons (cons 'e |gx[1]#_g129294_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129112 __tmp129291 '15 '#f '#f))
      (let ((__tmp129295
             (cons (cons 'id |gx[1]#_g129296_|)
                   (cons (cons 'depth |gx[1]#_g129297_|)
                         (cons (cons 'e |gx[1]#_g129298_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129112 __tmp129295 '16 '#f '#f))
      (let ((__tmp129299
             (cons (cons 'id |gx[1]#_g129300_|)
                   (cons (cons 'depth |gx[1]#_g129301_|)
                         (cons (cons 'e |gx[1]#_g129302_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129112 __tmp129299 '17 '#f '#f))
      (let ((__tmp129303
             (cons (cons 'id |gx[1]#_g129304_|)
                   (cons (cons 'depth |gx[1]#_g129305_|)
                         (cons (cons 'e |gx[1]#_g129306_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129112 __tmp129303 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129112 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129112 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129112 '() '20 '#f '#f))
      __obj129112)))
