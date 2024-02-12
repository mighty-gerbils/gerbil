(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g185045_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185047_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185049_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185051_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185057_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185060_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185063_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185069_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185072_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185075_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185081_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185084_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185087_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185093_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185096_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185099_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj184795
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
         __obj184795
         'gx#syntax-pattern::t
         '1
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184795
         'syntax-pattern
         '2
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184795
         '(id depth)
         '4
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185043
             (let ((__tmp185044 |gx[1]#_g185045_|))
               (declare (not safe))
               (cons __tmp185044 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184795
         __tmp185043
         '3
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184795
         '#t
         '5
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184795
         '#f
         '6
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184795
         '#f
         '7
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185046 |gx[1]#_g185047_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184795
         __tmp185046
         '8
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185048 |gx[1]#_g185049_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184795
         __tmp185048
         '9
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185050 |gx[1]#_g185051_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184795
         __tmp185050
         '10
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185052
             (let ((__tmp185061
                    (let ((__tmp185062 |gx[1]#_g185063_|))
                      (declare (not safe))
                      (cons 'id __tmp185062)))
                   (__tmp185053
                    (let ((__tmp185058
                           (let ((__tmp185059 |gx[1]#_g185060_|))
                             (declare (not safe))
                             (cons 'depth __tmp185059)))
                          (__tmp185054
                           (let ((__tmp185055
                                  (let ((__tmp185056 |gx[1]#_g185057_|))
                                    (declare (not safe))
                                    (cons 'e __tmp185056))))
                             (declare (not safe))
                             (cons __tmp185055 '()))))
                      (declare (not safe))
                      (cons __tmp185058 __tmp185054))))
               (declare (not safe))
               (cons __tmp185061 __tmp185053))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184795
         __tmp185052
         '11
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185064
             (let ((__tmp185073
                    (let ((__tmp185074 |gx[1]#_g185075_|))
                      (declare (not safe))
                      (cons 'id __tmp185074)))
                   (__tmp185065
                    (let ((__tmp185070
                           (let ((__tmp185071 |gx[1]#_g185072_|))
                             (declare (not safe))
                             (cons 'depth __tmp185071)))
                          (__tmp185066
                           (let ((__tmp185067
                                  (let ((__tmp185068 |gx[1]#_g185069_|))
                                    (declare (not safe))
                                    (cons 'e __tmp185068))))
                             (declare (not safe))
                             (cons __tmp185067 '()))))
                      (declare (not safe))
                      (cons __tmp185070 __tmp185066))))
               (declare (not safe))
               (cons __tmp185073 __tmp185065))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184795
         __tmp185064
         '12
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185076
             (let ((__tmp185085
                    (let ((__tmp185086 |gx[1]#_g185087_|))
                      (declare (not safe))
                      (cons 'id __tmp185086)))
                   (__tmp185077
                    (let ((__tmp185082
                           (let ((__tmp185083 |gx[1]#_g185084_|))
                             (declare (not safe))
                             (cons 'depth __tmp185083)))
                          (__tmp185078
                           (let ((__tmp185079
                                  (let ((__tmp185080 |gx[1]#_g185081_|))
                                    (declare (not safe))
                                    (cons 'e __tmp185080))))
                             (declare (not safe))
                             (cons __tmp185079 '()))))
                      (declare (not safe))
                      (cons __tmp185082 __tmp185078))))
               (declare (not safe))
               (cons __tmp185085 __tmp185077))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184795
         __tmp185076
         '13
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185088
             (let ((__tmp185097
                    (let ((__tmp185098 |gx[1]#_g185099_|))
                      (declare (not safe))
                      (cons 'id __tmp185098)))
                   (__tmp185089
                    (let ((__tmp185094
                           (let ((__tmp185095 |gx[1]#_g185096_|))
                             (declare (not safe))
                             (cons 'depth __tmp185095)))
                          (__tmp185090
                           (let ((__tmp185091
                                  (let ((__tmp185092 |gx[1]#_g185093_|))
                                    (declare (not safe))
                                    (cons 'e __tmp185092))))
                             (declare (not safe))
                             (cons __tmp185091 '()))))
                      (declare (not safe))
                      (cons __tmp185094 __tmp185090))))
               (declare (not safe))
               (cons __tmp185097 __tmp185089))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184795
         __tmp185088
         '14
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      __obj184795)))
