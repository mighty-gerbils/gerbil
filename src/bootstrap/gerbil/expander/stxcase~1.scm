(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g129864_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129866_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129868_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129870_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129872_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129873_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129874_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129876_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129877_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129878_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129880_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129881_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129882_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129884_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129885_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129886_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj129692
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
         __obj129692
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129692 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129692 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129692 '(e id depth) '6 '#f '#f))
      (let ((__tmp129863 (cons |gx[1]#_g129864_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj129692 __tmp129863 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129692 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129692 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129692 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129692 '#f '11 '#f '#f))
      (let ((__tmp129865 |gx[1]#_g129866_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129692 __tmp129865 '12 '#f '#f))
      (let ((__tmp129867 |gx[1]#_g129868_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129692 __tmp129867 '13 '#f '#f))
      (let ((__tmp129869 |gx[1]#_g129870_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj129692 __tmp129869 '14 '#f '#f))
      (let ((__tmp129871
             (cons (cons 'id |gx[1]#_g129872_|)
                   (cons (cons 'depth |gx[1]#_g129873_|)
                         (cons (cons 'e |gx[1]#_g129874_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129692 __tmp129871 '15 '#f '#f))
      (let ((__tmp129875
             (cons (cons 'id |gx[1]#_g129876_|)
                   (cons (cons 'depth |gx[1]#_g129877_|)
                         (cons (cons 'e |gx[1]#_g129878_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129692 __tmp129875 '16 '#f '#f))
      (let ((__tmp129879
             (cons (cons 'id |gx[1]#_g129880_|)
                   (cons (cons 'depth |gx[1]#_g129881_|)
                         (cons (cons 'e |gx[1]#_g129882_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129692 __tmp129879 '17 '#f '#f))
      (let ((__tmp129883
             (cons (cons 'id |gx[1]#_g129884_|)
                   (cons (cons 'depth |gx[1]#_g129885_|)
                         (cons (cons 'e |gx[1]#_g129886_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj129692 __tmp129883 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129692 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129692 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj129692 '() '20 '#f '#f))
      __obj129692)))
