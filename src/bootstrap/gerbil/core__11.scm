(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[2]#_g50352_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50354_|
    (##structure
     gx#syntax-quote::t
     'match-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50356_|
    (##structure
     gx#syntax-quote::t
     'make-match-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50358_|
    (##structure
     gx#syntax-quote::t
     'match-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50362_|
    (##structure
     gx#syntax-quote::t
     'match-macro-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50366_|
    (##structure
     gx#syntax-quote::t
     'match-macro-macro-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50370_|
    (##structure
     gx#syntax-quote::t
     '&match-macro-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50374_|
    (##structure
     gx#syntax-quote::t
     '&match-macro-macro-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[:1:]#match-macro|
    (let ((__obj47287
           (make-object* gerbil/core$<MOP>$<MOP:2>#class-type-info::t '15)))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         'gerbil.core#match-macro::t
         '1
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         'match-macro
         '2
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         '()
         '4
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50350
             (let ((__tmp50351 |gerbil/core$<match>[2]#_g50352_|))
               (declare (not safe))
               (cons __tmp50351 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50350
         '3
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         '#f
         '5
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         '#f
         '6
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         '#f
         '7
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50353 |gerbil/core$<match>[2]#_g50354_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50353
         '8
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50355 |gerbil/core$<match>[2]#_g50356_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50355
         '9
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50357 |gerbil/core$<match>[2]#_g50358_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50357
         '10
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50359
             (let ((__tmp50360
                    (let ((__tmp50361 |gerbil/core$<match>[2]#_g50362_|))
                      (declare (not safe))
                      (cons 'macro __tmp50361))))
               (declare (not safe))
               (cons __tmp50360 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50359
         '11
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50363
             (let ((__tmp50364
                    (let ((__tmp50365 |gerbil/core$<match>[2]#_g50366_|))
                      (declare (not safe))
                      (cons 'macro __tmp50365))))
               (declare (not safe))
               (cons __tmp50364 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50363
         '12
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50367
             (let ((__tmp50368
                    (let ((__tmp50369 |gerbil/core$<match>[2]#_g50370_|))
                      (declare (not safe))
                      (cons 'macro __tmp50369))))
               (declare (not safe))
               (cons __tmp50368 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50367
         '13
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50371
             (let ((__tmp50372
                    (let ((__tmp50373 |gerbil/core$<match>[2]#_g50374_|))
                      (declare (not safe))
                      (cons 'macro __tmp50373))))
               (declare (not safe))
               (cons __tmp50372 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50371
         '14
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      __obj47287)))
