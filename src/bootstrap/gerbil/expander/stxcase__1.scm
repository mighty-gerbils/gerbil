(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g185037_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185039_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185041_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185043_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185049_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185052_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185055_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185061_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185064_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185067_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185073_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185076_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185079_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185085_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185088_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g185091_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj184787
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
         __obj184787
         'gx#syntax-pattern::t
         '1
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184787
         'syntax-pattern
         '2
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184787
         '(id depth)
         '4
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185035
             (let ((__tmp185036 |gx[1]#_g185037_|))
               (declare (not safe))
               (cons __tmp185036 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184787
         __tmp185035
         '3
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184787
         '#t
         '5
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184787
         '#f
         '6
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184787
         '#f
         '7
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185038 |gx[1]#_g185039_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184787
         __tmp185038
         '8
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185040 |gx[1]#_g185041_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184787
         __tmp185040
         '9
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185042 |gx[1]#_g185043_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184787
         __tmp185042
         '10
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185044
             (let ((__tmp185053
                    (let ((__tmp185054 |gx[1]#_g185055_|))
                      (declare (not safe))
                      (cons 'id __tmp185054)))
                   (__tmp185045
                    (let ((__tmp185050
                           (let ((__tmp185051 |gx[1]#_g185052_|))
                             (declare (not safe))
                             (cons 'depth __tmp185051)))
                          (__tmp185046
                           (let ((__tmp185047
                                  (let ((__tmp185048 |gx[1]#_g185049_|))
                                    (declare (not safe))
                                    (cons 'e __tmp185048))))
                             (declare (not safe))
                             (cons __tmp185047 '()))))
                      (declare (not safe))
                      (cons __tmp185050 __tmp185046))))
               (declare (not safe))
               (cons __tmp185053 __tmp185045))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184787
         __tmp185044
         '11
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185056
             (let ((__tmp185065
                    (let ((__tmp185066 |gx[1]#_g185067_|))
                      (declare (not safe))
                      (cons 'id __tmp185066)))
                   (__tmp185057
                    (let ((__tmp185062
                           (let ((__tmp185063 |gx[1]#_g185064_|))
                             (declare (not safe))
                             (cons 'depth __tmp185063)))
                          (__tmp185058
                           (let ((__tmp185059
                                  (let ((__tmp185060 |gx[1]#_g185061_|))
                                    (declare (not safe))
                                    (cons 'e __tmp185060))))
                             (declare (not safe))
                             (cons __tmp185059 '()))))
                      (declare (not safe))
                      (cons __tmp185062 __tmp185058))))
               (declare (not safe))
               (cons __tmp185065 __tmp185057))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184787
         __tmp185056
         '12
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185068
             (let ((__tmp185077
                    (let ((__tmp185078 |gx[1]#_g185079_|))
                      (declare (not safe))
                      (cons 'id __tmp185078)))
                   (__tmp185069
                    (let ((__tmp185074
                           (let ((__tmp185075 |gx[1]#_g185076_|))
                             (declare (not safe))
                             (cons 'depth __tmp185075)))
                          (__tmp185070
                           (let ((__tmp185071
                                  (let ((__tmp185072 |gx[1]#_g185073_|))
                                    (declare (not safe))
                                    (cons 'e __tmp185072))))
                             (declare (not safe))
                             (cons __tmp185071 '()))))
                      (declare (not safe))
                      (cons __tmp185074 __tmp185070))))
               (declare (not safe))
               (cons __tmp185077 __tmp185069))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184787
         __tmp185068
         '13
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp185080
             (let ((__tmp185089
                    (let ((__tmp185090 |gx[1]#_g185091_|))
                      (declare (not safe))
                      (cons 'id __tmp185090)))
                   (__tmp185081
                    (let ((__tmp185086
                           (let ((__tmp185087 |gx[1]#_g185088_|))
                             (declare (not safe))
                             (cons 'depth __tmp185087)))
                          (__tmp185082
                           (let ((__tmp185083
                                  (let ((__tmp185084 |gx[1]#_g185085_|))
                                    (declare (not safe))
                                    (cons 'e __tmp185084))))
                             (declare (not safe))
                             (cons __tmp185083 '()))))
                      (declare (not safe))
                      (cons __tmp185086 __tmp185082))))
               (declare (not safe))
               (cons __tmp185089 __tmp185081))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj184787
         __tmp185080
         '14
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      __obj184787)))
