(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g129824_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129826_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129828_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129830_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129832_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129833_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129834_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129836_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129837_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129838_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129840_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129841_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129842_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129844_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129845_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129846_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj129652
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
         __obj129652
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129652 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129652 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129652 '(e id depth) '6 '#f '#f))
      (let ((__tmp129823 (cons |gx[1]#_g129824_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj129652 __tmp129823 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129652 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129652 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129652 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129652 '#f '11 '#f '#f))
      (let ((__tmp129825 |gx[1]#_g129826_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129652 __tmp129825 '12 '#f '#f))
      (let ((__tmp129827 |gx[1]#_g129828_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129652 __tmp129827 '13 '#f '#f))
      (let ((__tmp129829 |gx[1]#_g129830_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129652 __tmp129829 '14 '#f '#f))
      (let ((__tmp129831
             (cons (cons 'id |gx[1]#_g129832_|)
                   (cons (cons 'depth |gx[1]#_g129833_|)
                         (cons (cons 'e |gx[1]#_g129834_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129652 __tmp129831 '15 '#f '#f))
      (let ((__tmp129835
             (cons (cons 'id |gx[1]#_g129836_|)
                   (cons (cons 'depth |gx[1]#_g129837_|)
                         (cons (cons 'e |gx[1]#_g129838_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129652 __tmp129835 '16 '#f '#f))
      (let ((__tmp129839
             (cons (cons 'id |gx[1]#_g129840_|)
                   (cons (cons 'depth |gx[1]#_g129841_|)
                         (cons (cons 'e |gx[1]#_g129842_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129652 __tmp129839 '17 '#f '#f))
      (let ((__tmp129843
             (cons (cons 'id |gx[1]#_g129844_|)
                   (cons (cons 'depth |gx[1]#_g129845_|)
                         (cons (cons 'e |gx[1]#_g129846_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129652 __tmp129843 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129652 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129652 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129652 '() '20 '#f '#f))
      __obj129652)))
