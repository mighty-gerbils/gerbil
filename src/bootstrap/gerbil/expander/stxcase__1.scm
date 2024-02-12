(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g185074_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185076_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185078_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185080_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185086_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185089_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185092_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185098_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185101_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185104_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185110_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185113_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185116_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185122_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185125_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185128_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj184824
           (let ()
             (declare (not safe))
             (##structure
              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
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
         __obj184824
         'gx#syntax-pattern::t
         '1
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184824
         'syntax-pattern
         '2
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184824
         '(id depth)
         '4
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185072
             (let ((__tmp185073 |gx[1]#_g185074_|))
               (declare (not safe))
               (cons __tmp185073 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184824
         __tmp185072
         '3
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184824
         '#t
         '5
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184824
         '#f
         '6
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184824
         '#f
         '7
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185075 |gx[1]#_g185076_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184824
         __tmp185075
         '8
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185077 |gx[1]#_g185078_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184824
         __tmp185077
         '9
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185079 |gx[1]#_g185080_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184824
         __tmp185079
         '10
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185081
             (let ((__tmp185090
                    (let ((__tmp185091 |gx[1]#_g185092_|))
                      (declare (not safe))
                      (cons 'id __tmp185091)))
                   (__tmp185082
                    (let ((__tmp185087
                           (let ((__tmp185088 |gx[1]#_g185089_|))
                             (declare (not safe))
                             (cons 'depth __tmp185088)))
                          (__tmp185083
                           (let ((__tmp185084
                                  (let ((__tmp185085 |gx[1]#_g185086_|))
                                    (declare (not safe))
                                    (cons 'e __tmp185085))))
                             (declare (not safe))
                             (cons __tmp185084 '()))))
                      (declare (not safe))
                      (cons __tmp185087 __tmp185083))))
               (declare (not safe))
               (cons __tmp185090 __tmp185082))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184824
         __tmp185081
         '11
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185093
             (let ((__tmp185102
                    (let ((__tmp185103 |gx[1]#_g185104_|))
                      (declare (not safe))
                      (cons 'id __tmp185103)))
                   (__tmp185094
                    (let ((__tmp185099
                           (let ((__tmp185100 |gx[1]#_g185101_|))
                             (declare (not safe))
                             (cons 'depth __tmp185100)))
                          (__tmp185095
                           (let ((__tmp185096
                                  (let ((__tmp185097 |gx[1]#_g185098_|))
                                    (declare (not safe))
                                    (cons 'e __tmp185097))))
                             (declare (not safe))
                             (cons __tmp185096 '()))))
                      (declare (not safe))
                      (cons __tmp185099 __tmp185095))))
               (declare (not safe))
               (cons __tmp185102 __tmp185094))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184824
         __tmp185093
         '12
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185105
             (let ((__tmp185114
                    (let ((__tmp185115 |gx[1]#_g185116_|))
                      (declare (not safe))
                      (cons 'id __tmp185115)))
                   (__tmp185106
                    (let ((__tmp185111
                           (let ((__tmp185112 |gx[1]#_g185113_|))
                             (declare (not safe))
                             (cons 'depth __tmp185112)))
                          (__tmp185107
                           (let ((__tmp185108
                                  (let ((__tmp185109 |gx[1]#_g185110_|))
                                    (declare (not safe))
                                    (cons 'e __tmp185109))))
                             (declare (not safe))
                             (cons __tmp185108 '()))))
                      (declare (not safe))
                      (cons __tmp185111 __tmp185107))))
               (declare (not safe))
               (cons __tmp185114 __tmp185106))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184824
         __tmp185105
         '13
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185117
             (let ((__tmp185126
                    (let ((__tmp185127 |gx[1]#_g185128_|))
                      (declare (not safe))
                      (cons 'id __tmp185127)))
                   (__tmp185118
                    (let ((__tmp185123
                           (let ((__tmp185124 |gx[1]#_g185125_|))
                             (declare (not safe))
                             (cons 'depth __tmp185124)))
                          (__tmp185119
                           (let ((__tmp185120
                                  (let ((__tmp185121 |gx[1]#_g185122_|))
                                    (declare (not safe))
                                    (cons 'e __tmp185121))))
                             (declare (not safe))
                             (cons __tmp185120 '()))))
                      (declare (not safe))
                      (cons __tmp185123 __tmp185119))))
               (declare (not safe))
               (cons __tmp185126 __tmp185118))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184824
         __tmp185117
         '14
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      __obj184824)))
