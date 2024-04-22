(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g132890_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132892_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132894_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132896_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132898_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132899_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132900_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132902_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132903_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132904_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132906_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132907_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132908_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132910_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132911_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g132912_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj132767
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
         __obj132767
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132767 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132767 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132767 '(e id depth) '6 '#f '#f))
      (let ((__tmp132889 (cons |gx[1]#_g132890_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj132767 __tmp132889 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132767 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132767 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132767 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132767 '#f '11 '#f '#f))
      (let ((__tmp132891 |gx[1]#_g132892_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj132767 __tmp132891 '12 '#f '#f))
      (let ((__tmp132893 |gx[1]#_g132894_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj132767 __tmp132893 '13 '#f '#f))
      (let ((__tmp132895 |gx[1]#_g132896_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj132767 __tmp132895 '14 '#f '#f))
      (let ((__tmp132897
             (cons (cons 'id |gx[1]#_g132898_|)
                   (cons (cons 'depth |gx[1]#_g132899_|)
                         (cons (cons 'e |gx[1]#_g132900_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj132767 __tmp132897 '15 '#f '#f))
      (let ((__tmp132901
             (cons (cons 'id |gx[1]#_g132902_|)
                   (cons (cons 'depth |gx[1]#_g132903_|)
                         (cons (cons 'e |gx[1]#_g132904_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj132767 __tmp132901 '16 '#f '#f))
      (let ((__tmp132905
             (cons (cons 'id |gx[1]#_g132906_|)
                   (cons (cons 'depth |gx[1]#_g132907_|)
                         (cons (cons 'e |gx[1]#_g132908_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj132767 __tmp132905 '17 '#f '#f))
      (let ((__tmp132909
             (cons (cons 'id |gx[1]#_g132910_|)
                   (cons (cons 'depth |gx[1]#_g132911_|)
                         (cons (cons 'e |gx[1]#_g132912_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj132767 __tmp132909 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132767 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132767 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132767 '() '20 '#f '#f))
      __obj132767)))
