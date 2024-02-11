(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g182958_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182960_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182962_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182964_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182970_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182973_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182976_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182982_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182985_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182988_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182994_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g182997_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183000_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183006_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183009_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183012_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[:0:]#syntax-pattern|
    (let ((__obj182708
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
         __obj182708
         'gx#syntax-pattern::t
         '1
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182708
         'syntax-pattern
         '2
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182708
         '(id depth)
         '4
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182956
             (let ((__tmp182957 |gx[1]#_g182958_|))
               (declare (not safe))
               (cons __tmp182957 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182708
         __tmp182956
         '3
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182708
         '#t
         '5
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182708
         '#f
         '6
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182708
         '#f
         '7
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182959 |gx[1]#_g182960_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182708
         __tmp182959
         '8
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182961 |gx[1]#_g182962_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182708
         __tmp182961
         '9
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182963 |gx[1]#_g182964_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182708
         __tmp182963
         '10
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182965
             (let ((__tmp182974
                    (let ((__tmp182975 |gx[1]#_g182976_|))
                      (declare (not safe))
                      (cons 'id __tmp182975)))
                   (__tmp182966
                    (let ((__tmp182971
                           (let ((__tmp182972 |gx[1]#_g182973_|))
                             (declare (not safe))
                             (cons 'depth __tmp182972)))
                          (__tmp182967
                           (let ((__tmp182968
                                  (let ((__tmp182969 |gx[1]#_g182970_|))
                                    (declare (not safe))
                                    (cons 'e __tmp182969))))
                             (declare (not safe))
                             (cons __tmp182968 '()))))
                      (declare (not safe))
                      (cons __tmp182971 __tmp182967))))
               (declare (not safe))
               (cons __tmp182974 __tmp182966))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182708
         __tmp182965
         '11
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182977
             (let ((__tmp182986
                    (let ((__tmp182987 |gx[1]#_g182988_|))
                      (declare (not safe))
                      (cons 'id __tmp182987)))
                   (__tmp182978
                    (let ((__tmp182983
                           (let ((__tmp182984 |gx[1]#_g182985_|))
                             (declare (not safe))
                             (cons 'depth __tmp182984)))
                          (__tmp182979
                           (let ((__tmp182980
                                  (let ((__tmp182981 |gx[1]#_g182982_|))
                                    (declare (not safe))
                                    (cons 'e __tmp182981))))
                             (declare (not safe))
                             (cons __tmp182980 '()))))
                      (declare (not safe))
                      (cons __tmp182983 __tmp182979))))
               (declare (not safe))
               (cons __tmp182986 __tmp182978))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182708
         __tmp182977
         '12
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp182989
             (let ((__tmp182998
                    (let ((__tmp182999 |gx[1]#_g183000_|))
                      (declare (not safe))
                      (cons 'id __tmp182999)))
                   (__tmp182990
                    (let ((__tmp182995
                           (let ((__tmp182996 |gx[1]#_g182997_|))
                             (declare (not safe))
                             (cons 'depth __tmp182996)))
                          (__tmp182991
                           (let ((__tmp182992
                                  (let ((__tmp182993 |gx[1]#_g182994_|))
                                    (declare (not safe))
                                    (cons 'e __tmp182993))))
                             (declare (not safe))
                             (cons __tmp182992 '()))))
                      (declare (not safe))
                      (cons __tmp182995 __tmp182991))))
               (declare (not safe))
               (cons __tmp182998 __tmp182990))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182708
         __tmp182989
         '13
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp183001
             (let ((__tmp183010
                    (let ((__tmp183011 |gx[1]#_g183012_|))
                      (declare (not safe))
                      (cons 'id __tmp183011)))
                   (__tmp183002
                    (let ((__tmp183007
                           (let ((__tmp183008 |gx[1]#_g183009_|))
                             (declare (not safe))
                             (cons 'depth __tmp183008)))
                          (__tmp183003
                           (let ((__tmp183004
                                  (let ((__tmp183005 |gx[1]#_g183006_|))
                                    (declare (not safe))
                                    (cons 'e __tmp183005))))
                             (declare (not safe))
                             (cons __tmp183004 '()))))
                      (declare (not safe))
                      (cons __tmp183007 __tmp183003))))
               (declare (not safe))
               (cons __tmp183010 __tmp183002))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj182708
         __tmp183001
         '14
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      __obj182708)))
