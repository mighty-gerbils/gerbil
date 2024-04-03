(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g129291_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129293_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129295_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129297_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129299_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129300_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129301_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129303_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129304_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129305_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129307_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129308_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129309_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129311_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129312_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129313_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj129119
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
         __obj129119
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129119 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129119 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129119 '(e id depth) '6 '#f '#f))
      (let ((__tmp129290 (cons |gx[1]#_g129291_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj129119 __tmp129290 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129119 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129119 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129119 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129119 '#f '11 '#f '#f))
      (let ((__tmp129292 |gx[1]#_g129293_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129119 __tmp129292 '12 '#f '#f))
      (let ((__tmp129294 |gx[1]#_g129295_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129119 __tmp129294 '13 '#f '#f))
      (let ((__tmp129296 |gx[1]#_g129297_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129119 __tmp129296 '14 '#f '#f))
      (let ((__tmp129298
             (cons (cons 'id |gx[1]#_g129299_|)
                   (cons (cons 'depth |gx[1]#_g129300_|)
                         (cons (cons 'e |gx[1]#_g129301_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129119 __tmp129298 '15 '#f '#f))
      (let ((__tmp129302
             (cons (cons 'id |gx[1]#_g129303_|)
                   (cons (cons 'depth |gx[1]#_g129304_|)
                         (cons (cons 'e |gx[1]#_g129305_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129119 __tmp129302 '16 '#f '#f))
      (let ((__tmp129306
             (cons (cons 'id |gx[1]#_g129307_|)
                   (cons (cons 'depth |gx[1]#_g129308_|)
                         (cons (cons 'e |gx[1]#_g129309_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129119 __tmp129306 '17 '#f '#f))
      (let ((__tmp129310
             (cons (cons 'id |gx[1]#_g129311_|)
                   (cons (cons 'depth |gx[1]#_g129312_|)
                         (cons (cons 'e |gx[1]#_g129313_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129119 __tmp129310 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129119 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129119 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129119 '() '20 '#f '#f))
      __obj129119)))
