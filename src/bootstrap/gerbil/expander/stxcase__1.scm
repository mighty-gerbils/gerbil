(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g185046_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185048_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185050_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185052_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185058_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185061_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185064_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185070_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185073_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185076_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185082_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185085_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185088_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185094_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185097_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185100_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj184796
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
         __obj184796
         'gx#syntax-pattern::t
         '1
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184796
         'syntax-pattern
         '2
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184796
         '(id depth)
         '4
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185044
             (let ((__tmp185045 |gx[1]#_g185046_|))
               (declare (not safe))
               (cons __tmp185045 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184796
         __tmp185044
         '3
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184796
         '#t
         '5
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184796
         '#f
         '6
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184796
         '#f
         '7
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185047 |gx[1]#_g185048_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184796
         __tmp185047
         '8
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185049 |gx[1]#_g185050_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184796
         __tmp185049
         '9
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185051 |gx[1]#_g185052_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184796
         __tmp185051
         '10
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185053
             (let ((__tmp185062
                    (let ((__tmp185063 |gx[1]#_g185064_|))
                      (declare (not safe))
                      (cons 'id __tmp185063)))
                   (__tmp185054
                    (let ((__tmp185059
                           (let ((__tmp185060 |gx[1]#_g185061_|))
                             (declare (not safe))
                             (cons 'depth __tmp185060)))
                          (__tmp185055
                           (let ((__tmp185056
                                  (let ((__tmp185057 |gx[1]#_g185058_|))
                                    (declare (not safe))
                                    (cons 'e __tmp185057))))
                             (declare (not safe))
                             (cons __tmp185056 '()))))
                      (declare (not safe))
                      (cons __tmp185059 __tmp185055))))
               (declare (not safe))
               (cons __tmp185062 __tmp185054))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184796
         __tmp185053
         '11
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185065
             (let ((__tmp185074
                    (let ((__tmp185075 |gx[1]#_g185076_|))
                      (declare (not safe))
                      (cons 'id __tmp185075)))
                   (__tmp185066
                    (let ((__tmp185071
                           (let ((__tmp185072 |gx[1]#_g185073_|))
                             (declare (not safe))
                             (cons 'depth __tmp185072)))
                          (__tmp185067
                           (let ((__tmp185068
                                  (let ((__tmp185069 |gx[1]#_g185070_|))
                                    (declare (not safe))
                                    (cons 'e __tmp185069))))
                             (declare (not safe))
                             (cons __tmp185068 '()))))
                      (declare (not safe))
                      (cons __tmp185071 __tmp185067))))
               (declare (not safe))
               (cons __tmp185074 __tmp185066))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184796
         __tmp185065
         '12
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185077
             (let ((__tmp185086
                    (let ((__tmp185087 |gx[1]#_g185088_|))
                      (declare (not safe))
                      (cons 'id __tmp185087)))
                   (__tmp185078
                    (let ((__tmp185083
                           (let ((__tmp185084 |gx[1]#_g185085_|))
                             (declare (not safe))
                             (cons 'depth __tmp185084)))
                          (__tmp185079
                           (let ((__tmp185080
                                  (let ((__tmp185081 |gx[1]#_g185082_|))
                                    (declare (not safe))
                                    (cons 'e __tmp185081))))
                             (declare (not safe))
                             (cons __tmp185080 '()))))
                      (declare (not safe))
                      (cons __tmp185083 __tmp185079))))
               (declare (not safe))
               (cons __tmp185086 __tmp185078))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184796
         __tmp185077
         '13
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185089
             (let ((__tmp185098
                    (let ((__tmp185099 |gx[1]#_g185100_|))
                      (declare (not safe))
                      (cons 'id __tmp185099)))
                   (__tmp185090
                    (let ((__tmp185095
                           (let ((__tmp185096 |gx[1]#_g185097_|))
                             (declare (not safe))
                             (cons 'depth __tmp185096)))
                          (__tmp185091
                           (let ((__tmp185092
                                  (let ((__tmp185093 |gx[1]#_g185094_|))
                                    (declare (not safe))
                                    (cons 'e __tmp185093))))
                             (declare (not safe))
                             (cons __tmp185092 '()))))
                      (declare (not safe))
                      (cons __tmp185095 __tmp185091))))
               (declare (not safe))
               (cons __tmp185098 __tmp185090))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184796
         __tmp185089
         '14
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      __obj184796)))
