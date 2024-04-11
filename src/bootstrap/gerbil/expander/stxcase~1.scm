(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g131077_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131079_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131081_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131083_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131085_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131086_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131087_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131089_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131090_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131091_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131093_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131094_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131095_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131097_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131098_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g131099_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj130954
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
         __obj130954
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130954 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130954 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130954 '(e id depth) '6 '#f '#f))
      (let ((__tmp131076 (cons |gx[1]#_g131077_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj130954 __tmp131076 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130954 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130954 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130954 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130954 '#f '11 '#f '#f))
      (let ((__tmp131078 |gx[1]#_g131079_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj130954 __tmp131078 '12 '#f '#f))
      (let ((__tmp131080 |gx[1]#_g131081_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj130954 __tmp131080 '13 '#f '#f))
      (let ((__tmp131082 |gx[1]#_g131083_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj130954 __tmp131082 '14 '#f '#f))
      (let ((__tmp131084
             (cons (cons 'id |gx[1]#_g131085_|)
                   (cons (cons 'depth |gx[1]#_g131086_|)
                         (cons (cons 'e |gx[1]#_g131087_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj130954 __tmp131084 '15 '#f '#f))
      (let ((__tmp131088
             (cons (cons 'id |gx[1]#_g131089_|)
                   (cons (cons 'depth |gx[1]#_g131090_|)
                         (cons (cons 'e |gx[1]#_g131091_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj130954 __tmp131088 '16 '#f '#f))
      (let ((__tmp131092
             (cons (cons 'id |gx[1]#_g131093_|)
                   (cons (cons 'depth |gx[1]#_g131094_|)
                         (cons (cons 'e |gx[1]#_g131095_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj130954 __tmp131092 '17 '#f '#f))
      (let ((__tmp131096
             (cons (cons 'id |gx[1]#_g131097_|)
                   (cons (cons 'depth |gx[1]#_g131098_|)
                         (cons (cons 'e |gx[1]#_g131099_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj130954 __tmp131096 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130954 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130954 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj130954 '() '20 '#f '#f))
      __obj130954)))
