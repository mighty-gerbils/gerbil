(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g133086_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133088_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133090_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133092_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133094_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133095_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133096_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133098_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133099_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133100_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133102_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133103_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133104_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133106_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133107_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g133108_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj132963
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
         __obj132963
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132963 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132963 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132963 '(e id depth) '6 '#f '#f))
      (let ((__tmp133085 (cons |gx[1]#_g133086_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj132963 __tmp133085 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132963 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132963 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132963 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132963 '#f '11 '#f '#f))
      (let ((__tmp133087 |gx[1]#_g133088_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj132963 __tmp133087 '12 '#f '#f))
      (let ((__tmp133089 |gx[1]#_g133090_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj132963 __tmp133089 '13 '#f '#f))
      (let ((__tmp133091 |gx[1]#_g133092_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj132963 __tmp133091 '14 '#f '#f))
      (let ((__tmp133093
             (cons (cons 'id |gx[1]#_g133094_|)
                   (cons (cons 'depth |gx[1]#_g133095_|)
                         (cons (cons 'e |gx[1]#_g133096_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj132963 __tmp133093 '15 '#f '#f))
      (let ((__tmp133097
             (cons (cons 'id |gx[1]#_g133098_|)
                   (cons (cons 'depth |gx[1]#_g133099_|)
                         (cons (cons 'e |gx[1]#_g133100_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj132963 __tmp133097 '16 '#f '#f))
      (let ((__tmp133101
             (cons (cons 'id |gx[1]#_g133102_|)
                   (cons (cons 'depth |gx[1]#_g133103_|)
                         (cons (cons 'e |gx[1]#_g133104_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj132963 __tmp133101 '17 '#f '#f))
      (let ((__tmp133105
             (cons (cons 'id |gx[1]#_g133106_|)
                   (cons (cons 'depth |gx[1]#_g133107_|)
                         (cons (cons 'e |gx[1]#_g133108_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj132963 __tmp133105 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132963 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132963 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj132963 '() '20 '#f '#f))
      __obj132963)))
