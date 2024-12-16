(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g134177_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134179_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134181_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134183_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134185_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134186_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134187_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134189_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134190_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134191_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134193_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134194_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134195_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134197_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134198_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134199_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj134054
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
         __obj134054
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj134054 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj134054 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj134054 '(e id depth) '6 '#f '#f))
      (let ((__tmp134176 (cons |gx[1]#_g134177_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj134054 __tmp134176 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj134054 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj134054 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj134054 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj134054 '#f '11 '#f '#f))
      (let ((__tmp134178 |gx[1]#_g134179_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj134054 __tmp134178 '12 '#f '#f))
      (let ((__tmp134180 |gx[1]#_g134181_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj134054 __tmp134180 '13 '#f '#f))
      (let ((__tmp134182 |gx[1]#_g134183_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj134054 __tmp134182 '14 '#f '#f))
      (let ((__tmp134184
             (cons (cons 'id |gx[1]#_g134185_|)
                   (cons (cons 'depth |gx[1]#_g134186_|)
                         (cons (cons 'e |gx[1]#_g134187_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj134054 __tmp134184 '15 '#f '#f))
      (let ((__tmp134188
             (cons (cons 'id |gx[1]#_g134189_|)
                   (cons (cons 'depth |gx[1]#_g134190_|)
                         (cons (cons 'e |gx[1]#_g134191_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj134054 __tmp134188 '16 '#f '#f))
      (let ((__tmp134192
             (cons (cons 'id |gx[1]#_g134193_|)
                   (cons (cons 'depth |gx[1]#_g134194_|)
                         (cons (cons 'e |gx[1]#_g134195_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj134054 __tmp134192 '17 '#f '#f))
      (let ((__tmp134196
             (cons (cons 'id |gx[1]#_g134197_|)
                   (cons (cons 'depth |gx[1]#_g134198_|)
                         (cons (cons 'e |gx[1]#_g134199_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj134054 __tmp134196 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj134054 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj134054 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj134054 '() '20 '#f '#f))
      __obj134054)))
