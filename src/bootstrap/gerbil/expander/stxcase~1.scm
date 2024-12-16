(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g133192_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133194_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133196_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133198_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133200_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133201_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133202_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133204_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133205_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133206_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133208_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133209_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133210_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133212_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133213_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133214_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj133069
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
         __obj133069
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133069 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133069 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133069 '(e id depth) '6 '#f '#f))
      (let ((__tmp133191 (cons |gx[1]#_g133192_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj133069 __tmp133191 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133069 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133069 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133069 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133069 '#f '11 '#f '#f))
      (let ((__tmp133193 |gx[1]#_g133194_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj133069 __tmp133193 '12 '#f '#f))
      (let ((__tmp133195 |gx[1]#_g133196_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj133069 __tmp133195 '13 '#f '#f))
      (let ((__tmp133197 |gx[1]#_g133198_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj133069 __tmp133197 '14 '#f '#f))
      (let ((__tmp133199
             (cons (cons 'id |gx[1]#_g133200_|)
                   (cons (cons 'depth |gx[1]#_g133201_|)
                         (cons (cons 'e |gx[1]#_g133202_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj133069 __tmp133199 '15 '#f '#f))
      (let ((__tmp133203
             (cons (cons 'id |gx[1]#_g133204_|)
                   (cons (cons 'depth |gx[1]#_g133205_|)
                         (cons (cons 'e |gx[1]#_g133206_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj133069 __tmp133203 '16 '#f '#f))
      (let ((__tmp133207
             (cons (cons 'id |gx[1]#_g133208_|)
                   (cons (cons 'depth |gx[1]#_g133209_|)
                         (cons (cons 'e |gx[1]#_g133210_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj133069 __tmp133207 '17 '#f '#f))
      (let ((__tmp133211
             (cons (cons 'id |gx[1]#_g133212_|)
                   (cons (cons 'depth |gx[1]#_g133213_|)
                         (cons (cons 'e |gx[1]#_g133214_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj133069 __tmp133211 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133069 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133069 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj133069 '() '20 '#f '#f))
      __obj133069)))
