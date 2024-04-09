(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g128986_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128988_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128990_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128992_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128994_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128995_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128996_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128998_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g128999_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129000_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129002_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129003_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129004_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129006_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129007_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129008_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj128863
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
         __obj128863
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128863 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128863 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128863 '(e id depth) '6 '#f '#f))
      (let ((__tmp128985 (cons |gx[1]#_g128986_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj128863 __tmp128985 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128863 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128863 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128863 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128863 '#f '11 '#f '#f))
      (let ((__tmp128987 |gx[1]#_g128988_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj128863 __tmp128987 '12 '#f '#f))
      (let ((__tmp128989 |gx[1]#_g128990_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj128863 __tmp128989 '13 '#f '#f))
      (let ((__tmp128991 |gx[1]#_g128992_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj128863 __tmp128991 '14 '#f '#f))
      (let ((__tmp128993
             (cons (cons 'id |gx[1]#_g128994_|)
                   (cons (cons 'depth |gx[1]#_g128995_|)
                         (cons (cons 'e |gx[1]#_g128996_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj128863 __tmp128993 '15 '#f '#f))
      (let ((__tmp128997
             (cons (cons 'id |gx[1]#_g128998_|)
                   (cons (cons 'depth |gx[1]#_g128999_|)
                         (cons (cons 'e |gx[1]#_g129000_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj128863 __tmp128997 '16 '#f '#f))
      (let ((__tmp129001
             (cons (cons 'id |gx[1]#_g129002_|)
                   (cons (cons 'depth |gx[1]#_g129003_|)
                         (cons (cons 'e |gx[1]#_g129004_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj128863 __tmp129001 '17 '#f '#f))
      (let ((__tmp129005
             (cons (cons 'id |gx[1]#_g129006_|)
                   (cons (cons 'depth |gx[1]#_g129007_|)
                         (cons (cons 'e |gx[1]#_g129008_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj128863 __tmp129005 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128863 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128863 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128863 '() '20 '#f '#f))
      __obj128863)))
