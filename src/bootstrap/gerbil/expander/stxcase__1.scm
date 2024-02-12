(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g185047_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185049_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185051_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185053_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185059_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185062_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185065_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185071_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185074_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185077_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185083_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185086_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185089_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185095_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185098_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185101_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj184797
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
         __obj184797
         'gx#syntax-pattern::t
         '1
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184797
         'syntax-pattern
         '2
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184797
         '(id depth)
         '4
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185045
             (let ((__tmp185046 |gx[1]#_g185047_|))
               (declare (not safe))
               (cons __tmp185046 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184797
         __tmp185045
         '3
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184797
         '#t
         '5
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184797
         '#f
         '6
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184797
         '#f
         '7
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185048 |gx[1]#_g185049_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184797
         __tmp185048
         '8
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185050 |gx[1]#_g185051_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184797
         __tmp185050
         '9
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185052 |gx[1]#_g185053_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184797
         __tmp185052
         '10
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185054
             (let ((__tmp185063
                    (let ((__tmp185064 |gx[1]#_g185065_|))
                      (declare (not safe))
                      (cons 'id __tmp185064)))
                   (__tmp185055
                    (let ((__tmp185060
                           (let ((__tmp185061 |gx[1]#_g185062_|))
                             (declare (not safe))
                             (cons 'depth __tmp185061)))
                          (__tmp185056
                           (let ((__tmp185057
                                  (let ((__tmp185058 |gx[1]#_g185059_|))
                                    (declare (not safe))
                                    (cons 'e __tmp185058))))
                             (declare (not safe))
                             (cons __tmp185057 '()))))
                      (declare (not safe))
                      (cons __tmp185060 __tmp185056))))
               (declare (not safe))
               (cons __tmp185063 __tmp185055))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184797
         __tmp185054
         '11
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185066
             (let ((__tmp185075
                    (let ((__tmp185076 |gx[1]#_g185077_|))
                      (declare (not safe))
                      (cons 'id __tmp185076)))
                   (__tmp185067
                    (let ((__tmp185072
                           (let ((__tmp185073 |gx[1]#_g185074_|))
                             (declare (not safe))
                             (cons 'depth __tmp185073)))
                          (__tmp185068
                           (let ((__tmp185069
                                  (let ((__tmp185070 |gx[1]#_g185071_|))
                                    (declare (not safe))
                                    (cons 'e __tmp185070))))
                             (declare (not safe))
                             (cons __tmp185069 '()))))
                      (declare (not safe))
                      (cons __tmp185072 __tmp185068))))
               (declare (not safe))
               (cons __tmp185075 __tmp185067))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184797
         __tmp185066
         '12
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185078
             (let ((__tmp185087
                    (let ((__tmp185088 |gx[1]#_g185089_|))
                      (declare (not safe))
                      (cons 'id __tmp185088)))
                   (__tmp185079
                    (let ((__tmp185084
                           (let ((__tmp185085 |gx[1]#_g185086_|))
                             (declare (not safe))
                             (cons 'depth __tmp185085)))
                          (__tmp185080
                           (let ((__tmp185081
                                  (let ((__tmp185082 |gx[1]#_g185083_|))
                                    (declare (not safe))
                                    (cons 'e __tmp185082))))
                             (declare (not safe))
                             (cons __tmp185081 '()))))
                      (declare (not safe))
                      (cons __tmp185084 __tmp185080))))
               (declare (not safe))
               (cons __tmp185087 __tmp185079))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184797
         __tmp185078
         '13
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185090
             (let ((__tmp185099
                    (let ((__tmp185100 |gx[1]#_g185101_|))
                      (declare (not safe))
                      (cons 'id __tmp185100)))
                   (__tmp185091
                    (let ((__tmp185096
                           (let ((__tmp185097 |gx[1]#_g185098_|))
                             (declare (not safe))
                             (cons 'depth __tmp185097)))
                          (__tmp185092
                           (let ((__tmp185093
                                  (let ((__tmp185094 |gx[1]#_g185095_|))
                                    (declare (not safe))
                                    (cons 'e __tmp185094))))
                             (declare (not safe))
                             (cons __tmp185093 '()))))
                      (declare (not safe))
                      (cons __tmp185096 __tmp185092))))
               (declare (not safe))
               (cons __tmp185099 __tmp185091))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184797
         __tmp185090
         '14
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      __obj184797)))
