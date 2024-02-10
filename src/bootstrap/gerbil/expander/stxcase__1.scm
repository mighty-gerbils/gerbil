(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g182989_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182991_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182993_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182995_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183001_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183004_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183007_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183013_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183016_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183019_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183025_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183028_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183031_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183037_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183040_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183043_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj182740
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
         __obj182740
         'gx#syntax-pattern::t
         '1
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182740
         'syntax-pattern
         '2
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182740
         '(id depth)
         '4
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182987
             (let ((__tmp182988 |gx[1]#_g182989_|))
               (declare (not safe))
               (cons __tmp182988 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182740
         __tmp182987
         '3
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182740
         '#t
         '5
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182740
         '#f
         '6
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182740
         '#f
         '7
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182990 |gx[1]#_g182991_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182740
         __tmp182990
         '8
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182992 |gx[1]#_g182993_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182740
         __tmp182992
         '9
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182994 |gx[1]#_g182995_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182740
         __tmp182994
         '10
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182996
             (let ((__tmp183005
                    (let ((__tmp183006 |gx[1]#_g183007_|))
                      (declare (not safe))
                      (cons 'id __tmp183006)))
                   (__tmp182997
                    (let ((__tmp183002
                           (let ((__tmp183003 |gx[1]#_g183004_|))
                             (declare (not safe))
                             (cons 'depth __tmp183003)))
                          (__tmp182998
                           (let ((__tmp182999
                                  (let ((__tmp183000 |gx[1]#_g183001_|))
                                    (declare (not safe))
                                    (cons 'e __tmp183000))))
                             (declare (not safe))
                             (cons __tmp182999 '()))))
                      (declare (not safe))
                      (cons __tmp183002 __tmp182998))))
               (declare (not safe))
               (cons __tmp183005 __tmp182997))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182740
         __tmp182996
         '11
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183008
             (let ((__tmp183017
                    (let ((__tmp183018 |gx[1]#_g183019_|))
                      (declare (not safe))
                      (cons 'id __tmp183018)))
                   (__tmp183009
                    (let ((__tmp183014
                           (let ((__tmp183015 |gx[1]#_g183016_|))
                             (declare (not safe))
                             (cons 'depth __tmp183015)))
                          (__tmp183010
                           (let ((__tmp183011
                                  (let ((__tmp183012 |gx[1]#_g183013_|))
                                    (declare (not safe))
                                    (cons 'e __tmp183012))))
                             (declare (not safe))
                             (cons __tmp183011 '()))))
                      (declare (not safe))
                      (cons __tmp183014 __tmp183010))))
               (declare (not safe))
               (cons __tmp183017 __tmp183009))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182740
         __tmp183008
         '12
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183020
             (let ((__tmp183029
                    (let ((__tmp183030 |gx[1]#_g183031_|))
                      (declare (not safe))
                      (cons 'id __tmp183030)))
                   (__tmp183021
                    (let ((__tmp183026
                           (let ((__tmp183027 |gx[1]#_g183028_|))
                             (declare (not safe))
                             (cons 'depth __tmp183027)))
                          (__tmp183022
                           (let ((__tmp183023
                                  (let ((__tmp183024 |gx[1]#_g183025_|))
                                    (declare (not safe))
                                    (cons 'e __tmp183024))))
                             (declare (not safe))
                             (cons __tmp183023 '()))))
                      (declare (not safe))
                      (cons __tmp183026 __tmp183022))))
               (declare (not safe))
               (cons __tmp183029 __tmp183021))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182740
         __tmp183020
         '13
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183032
             (let ((__tmp183041
                    (let ((__tmp183042 |gx[1]#_g183043_|))
                      (declare (not safe))
                      (cons 'id __tmp183042)))
                   (__tmp183033
                    (let ((__tmp183038
                           (let ((__tmp183039 |gx[1]#_g183040_|))
                             (declare (not safe))
                             (cons 'depth __tmp183039)))
                          (__tmp183034
                           (let ((__tmp183035
                                  (let ((__tmp183036 |gx[1]#_g183037_|))
                                    (declare (not safe))
                                    (cons 'e __tmp183036))))
                             (declare (not safe))
                             (cons __tmp183035 '()))))
                      (declare (not safe))
                      (cons __tmp183038 __tmp183034))))
               (declare (not safe))
               (cons __tmp183041 __tmp183033))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182740
         __tmp183032
         '14
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      __obj182740)))
