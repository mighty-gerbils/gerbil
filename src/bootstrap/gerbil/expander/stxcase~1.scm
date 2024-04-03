(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g129256_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129258_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129260_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129262_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129264_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129265_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129266_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129268_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129269_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129270_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129272_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129273_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129274_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129276_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129277_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129278_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj129084
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
         __obj129084
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129084 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129084 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129084 '(e id depth) '6 '#f '#f))
      (let ((__tmp129255 (cons |gx[1]#_g129256_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj129084 __tmp129255 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129084 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129084 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129084 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129084 '#f '11 '#f '#f))
      (let ((__tmp129257 |gx[1]#_g129258_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129084 __tmp129257 '12 '#f '#f))
      (let ((__tmp129259 |gx[1]#_g129260_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129084 __tmp129259 '13 '#f '#f))
      (let ((__tmp129261 |gx[1]#_g129262_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129084 __tmp129261 '14 '#f '#f))
      (let ((__tmp129263
             (cons (cons 'id |gx[1]#_g129264_|)
                   (cons (cons 'depth |gx[1]#_g129265_|)
                         (cons (cons 'e |gx[1]#_g129266_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129084 __tmp129263 '15 '#f '#f))
      (let ((__tmp129267
             (cons (cons 'id |gx[1]#_g129268_|)
                   (cons (cons 'depth |gx[1]#_g129269_|)
                         (cons (cons 'e |gx[1]#_g129270_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129084 __tmp129267 '16 '#f '#f))
      (let ((__tmp129271
             (cons (cons 'id |gx[1]#_g129272_|)
                   (cons (cons 'depth |gx[1]#_g129273_|)
                         (cons (cons 'e |gx[1]#_g129274_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129084 __tmp129271 '17 '#f '#f))
      (let ((__tmp129275
             (cons (cons 'id |gx[1]#_g129276_|)
                   (cons (cons 'depth |gx[1]#_g129277_|)
                         (cons (cons 'e |gx[1]#_g129278_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129084 __tmp129275 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129084 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129084 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129084 '() '20 '#f '#f))
      __obj129084)))
