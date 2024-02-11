(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g182837_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182839_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182841_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182843_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182849_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182852_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182855_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182861_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182864_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182867_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182873_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182876_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182879_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182885_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182888_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182891_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj182587
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
         __obj182587
         'gx#syntax-pattern::t
         '1
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182587
         'syntax-pattern
         '2
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182587
         '(id depth)
         '4
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182835
             (let ((__tmp182836 |gx[1]#_g182837_|))
               (declare (not safe))
               (cons __tmp182836 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182587
         __tmp182835
         '3
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182587
         '#t
         '5
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182587
         '#f
         '6
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182587
         '#f
         '7
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182838 |gx[1]#_g182839_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182587
         __tmp182838
         '8
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182840 |gx[1]#_g182841_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182587
         __tmp182840
         '9
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182842 |gx[1]#_g182843_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182587
         __tmp182842
         '10
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182844
             (let ((__tmp182853
                    (let ((__tmp182854 |gx[1]#_g182855_|))
                      (declare (not safe))
                      (cons 'id __tmp182854)))
                   (__tmp182845
                    (let ((__tmp182850
                           (let ((__tmp182851 |gx[1]#_g182852_|))
                             (declare (not safe))
                             (cons 'depth __tmp182851)))
                          (__tmp182846
                           (let ((__tmp182847
                                  (let ((__tmp182848 |gx[1]#_g182849_|))
                                    (declare (not safe))
                                    (cons 'e __tmp182848))))
                             (declare (not safe))
                             (cons __tmp182847 '()))))
                      (declare (not safe))
                      (cons __tmp182850 __tmp182846))))
               (declare (not safe))
               (cons __tmp182853 __tmp182845))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182587
         __tmp182844
         '11
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182856
             (let ((__tmp182865
                    (let ((__tmp182866 |gx[1]#_g182867_|))
                      (declare (not safe))
                      (cons 'id __tmp182866)))
                   (__tmp182857
                    (let ((__tmp182862
                           (let ((__tmp182863 |gx[1]#_g182864_|))
                             (declare (not safe))
                             (cons 'depth __tmp182863)))
                          (__tmp182858
                           (let ((__tmp182859
                                  (let ((__tmp182860 |gx[1]#_g182861_|))
                                    (declare (not safe))
                                    (cons 'e __tmp182860))))
                             (declare (not safe))
                             (cons __tmp182859 '()))))
                      (declare (not safe))
                      (cons __tmp182862 __tmp182858))))
               (declare (not safe))
               (cons __tmp182865 __tmp182857))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182587
         __tmp182856
         '12
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182868
             (let ((__tmp182877
                    (let ((__tmp182878 |gx[1]#_g182879_|))
                      (declare (not safe))
                      (cons 'id __tmp182878)))
                   (__tmp182869
                    (let ((__tmp182874
                           (let ((__tmp182875 |gx[1]#_g182876_|))
                             (declare (not safe))
                             (cons 'depth __tmp182875)))
                          (__tmp182870
                           (let ((__tmp182871
                                  (let ((__tmp182872 |gx[1]#_g182873_|))
                                    (declare (not safe))
                                    (cons 'e __tmp182872))))
                             (declare (not safe))
                             (cons __tmp182871 '()))))
                      (declare (not safe))
                      (cons __tmp182874 __tmp182870))))
               (declare (not safe))
               (cons __tmp182877 __tmp182869))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182587
         __tmp182868
         '13
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182880
             (let ((__tmp182889
                    (let ((__tmp182890 |gx[1]#_g182891_|))
                      (declare (not safe))
                      (cons 'id __tmp182890)))
                   (__tmp182881
                    (let ((__tmp182886
                           (let ((__tmp182887 |gx[1]#_g182888_|))
                             (declare (not safe))
                             (cons 'depth __tmp182887)))
                          (__tmp182882
                           (let ((__tmp182883
                                  (let ((__tmp182884 |gx[1]#_g182885_|))
                                    (declare (not safe))
                                    (cons 'e __tmp182884))))
                             (declare (not safe))
                             (cons __tmp182883 '()))))
                      (declare (not safe))
                      (cons __tmp182886 __tmp182882))))
               (declare (not safe))
               (cons __tmp182889 __tmp182881))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182587
         __tmp182880
         '14
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      __obj182587)))
