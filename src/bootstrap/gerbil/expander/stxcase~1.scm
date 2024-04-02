(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g129150_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129152_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129154_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129156_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129158_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129159_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129160_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129162_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129163_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129164_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129166_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129167_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129168_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129170_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129171_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g129172_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj128978
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
         __obj128978
         'gx#syntax-pattern::t
         '1
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128978 'syntax-pattern '2 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128978 '(id depth) '4 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128978 '(e id depth) '6 '#f '#f))
      (let ((__tmp129149 (cons |gx[1]#_g129150_| '())))
        (declare (not safe))
        (##unchecked-structure-set! __obj128978 __tmp129149 '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128978 '#t '7 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128978 '#f '8 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128978 '#f '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128978 '#f '11 '#f '#f))
      (let ((__tmp129151 |gx[1]#_g129152_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj128978 __tmp129151 '12 '#f '#f))
      (let ((__tmp129153 |gx[1]#_g129154_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj128978 __tmp129153 '13 '#f '#f))
      (let ((__tmp129155 |gx[1]#_g129156_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj128978 __tmp129155 '14 '#f '#f))
      (let ((__tmp129157
             (cons (cons 'id |gx[1]#_g129158_|)
                   (cons (cons 'depth |gx[1]#_g129159_|)
                         (cons (cons 'e |gx[1]#_g129160_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj128978 __tmp129157 '15 '#f '#f))
      (let ((__tmp129161
             (cons (cons 'id |gx[1]#_g129162_|)
                   (cons (cons 'depth |gx[1]#_g129163_|)
                         (cons (cons 'e |gx[1]#_g129164_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj128978 __tmp129161 '16 '#f '#f))
      (let ((__tmp129165
             (cons (cons 'id |gx[1]#_g129166_|)
                   (cons (cons 'depth |gx[1]#_g129167_|)
                         (cons (cons 'e |gx[1]#_g129168_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj128978 __tmp129165 '17 '#f '#f))
      (let ((__tmp129169
             (cons (cons 'id |gx[1]#_g129170_|)
                   (cons (cons 'depth |gx[1]#_g129171_|)
                         (cons (cons 'e |gx[1]#_g129172_|) '())))))
        (declare (not safe))
        (##unchecked-structure-set! __obj128978 __tmp129169 '18 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128978 '() '19 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128978 '() '21 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj128978 '() '20 '#f '#f))
      __obj128978)))
