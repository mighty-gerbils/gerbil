(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g131079_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131081_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131083_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131085_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131087_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131088_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131089_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131091_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131092_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131093_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131095_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131096_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131097_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131099_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131100_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131101_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj130956
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
         __obj130956
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130956 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130956 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130956 '(e id depth) '6 '#f '#f))
      (let ((__tmp131078 (cons |gx[1]#_g131079_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj130956 __tmp131078 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130956 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130956 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130956 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130956 '#f '11 '#f '#f))
      (let ((__tmp131080 |gx[1]#_g131081_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj130956 __tmp131080 '12 '#f '#f))
      (let ((__tmp131082 |gx[1]#_g131083_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj130956 __tmp131082 '13 '#f '#f))
      (let ((__tmp131084 |gx[1]#_g131085_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj130956 __tmp131084 '14 '#f '#f))
      (let ((__tmp131086
             (cons (cons 'id |gx[1]#_g131087_|)
                   (cons (cons 'depth |gx[1]#_g131088_|)
                         (cons (cons 'e |gx[1]#_g131089_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj130956 __tmp131086 '15 '#f '#f))
      (let ((__tmp131090
             (cons (cons 'id |gx[1]#_g131091_|)
                   (cons (cons 'depth |gx[1]#_g131092_|)
                         (cons (cons 'e |gx[1]#_g131093_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj130956 __tmp131090 '16 '#f '#f))
      (let ((__tmp131094
             (cons (cons 'id |gx[1]#_g131095_|)
                   (cons (cons 'depth |gx[1]#_g131096_|)
                         (cons (cons 'e |gx[1]#_g131097_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj130956 __tmp131094 '17 '#f '#f))
      (let ((__tmp131098
             (cons (cons 'id |gx[1]#_g131099_|)
                   (cons (cons 'depth |gx[1]#_g131100_|)
                         (cons (cons 'e |gx[1]#_g131101_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj130956 __tmp131098 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130956 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130956 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130956 '() '20 '#f '#f))
      __obj130956)))
