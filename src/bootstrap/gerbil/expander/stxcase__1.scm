(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g182859_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182861_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182863_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182865_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182871_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182874_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182877_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182883_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182886_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182889_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182895_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182898_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182901_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182907_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182910_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182913_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj182609
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
         __obj182609
         'gx#syntax-pattern::t
         '1
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182609
         'syntax-pattern
         '2
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182609
         '(id depth)
         '4
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182857
             (let ((__tmp182858 |gx[1]#_g182859_|))
               (declare (not safe))
               (cons __tmp182858 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182609
         __tmp182857
         '3
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182609
         '#t
         '5
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182609
         '#f
         '6
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182609
         '#f
         '7
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182860 |gx[1]#_g182861_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182609
         __tmp182860
         '8
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182862 |gx[1]#_g182863_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182609
         __tmp182862
         '9
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182864 |gx[1]#_g182865_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182609
         __tmp182864
         '10
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182866
             (let ((__tmp182875
                    (let ((__tmp182876 |gx[1]#_g182877_|))
                      (declare (not safe))
                      (cons 'id __tmp182876)))
                   (__tmp182867
                    (let ((__tmp182872
                           (let ((__tmp182873 |gx[1]#_g182874_|))
                             (declare (not safe))
                             (cons 'depth __tmp182873)))
                          (__tmp182868
                           (let ((__tmp182869
                                  (let ((__tmp182870 |gx[1]#_g182871_|))
                                    (declare (not safe))
                                    (cons 'e __tmp182870))))
                             (declare (not safe))
                             (cons __tmp182869 '()))))
                      (declare (not safe))
                      (cons __tmp182872 __tmp182868))))
               (declare (not safe))
               (cons __tmp182875 __tmp182867))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182609
         __tmp182866
         '11
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182878
             (let ((__tmp182887
                    (let ((__tmp182888 |gx[1]#_g182889_|))
                      (declare (not safe))
                      (cons 'id __tmp182888)))
                   (__tmp182879
                    (let ((__tmp182884
                           (let ((__tmp182885 |gx[1]#_g182886_|))
                             (declare (not safe))
                             (cons 'depth __tmp182885)))
                          (__tmp182880
                           (let ((__tmp182881
                                  (let ((__tmp182882 |gx[1]#_g182883_|))
                                    (declare (not safe))
                                    (cons 'e __tmp182882))))
                             (declare (not safe))
                             (cons __tmp182881 '()))))
                      (declare (not safe))
                      (cons __tmp182884 __tmp182880))))
               (declare (not safe))
               (cons __tmp182887 __tmp182879))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182609
         __tmp182878
         '12
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182890
             (let ((__tmp182899
                    (let ((__tmp182900 |gx[1]#_g182901_|))
                      (declare (not safe))
                      (cons 'id __tmp182900)))
                   (__tmp182891
                    (let ((__tmp182896
                           (let ((__tmp182897 |gx[1]#_g182898_|))
                             (declare (not safe))
                             (cons 'depth __tmp182897)))
                          (__tmp182892
                           (let ((__tmp182893
                                  (let ((__tmp182894 |gx[1]#_g182895_|))
                                    (declare (not safe))
                                    (cons 'e __tmp182894))))
                             (declare (not safe))
                             (cons __tmp182893 '()))))
                      (declare (not safe))
                      (cons __tmp182896 __tmp182892))))
               (declare (not safe))
               (cons __tmp182899 __tmp182891))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182609
         __tmp182890
         '13
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182902
             (let ((__tmp182911
                    (let ((__tmp182912 |gx[1]#_g182913_|))
                      (declare (not safe))
                      (cons 'id __tmp182912)))
                   (__tmp182903
                    (let ((__tmp182908
                           (let ((__tmp182909 |gx[1]#_g182910_|))
                             (declare (not safe))
                             (cons 'depth __tmp182909)))
                          (__tmp182904
                           (let ((__tmp182905
                                  (let ((__tmp182906 |gx[1]#_g182907_|))
                                    (declare (not safe))
                                    (cons 'e __tmp182906))))
                             (declare (not safe))
                             (cons __tmp182905 '()))))
                      (declare (not safe))
                      (cons __tmp182908 __tmp182904))))
               (declare (not safe))
               (cons __tmp182911 __tmp182903))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182609
         __tmp182902
         '14
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      __obj182609)))
