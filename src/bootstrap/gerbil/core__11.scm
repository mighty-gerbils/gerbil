(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[2]#_g50539_|
    (##structure
     gx#syntax-quote::t
     'macro-object
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50541_|
    (##structure
     gx#syntax-quote::t
     'match-macro::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50543_|
    (##structure
     gx#syntax-quote::t
     'make-match-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50545_|
    (##structure
     gx#syntax-quote::t
     'match-macro?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50549_|
    (##structure
     gx#syntax-quote::t
     'match-macro-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50553_|
    (##structure
     gx#syntax-quote::t
     'match-macro-macro-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50557_|
    (##structure
     gx#syntax-quote::t
     '&match-macro-macro
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[2]#_g50561_|
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
      (let ((__tmp50537
             (let ((__tmp50538 |gerbil/core$<match>[2]#_g50539_|))
               (declare (not safe))
               (cons __tmp50538 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50537
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
      (let ((__tmp50540 |gerbil/core$<match>[2]#_g50541_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50540
         '8
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50542 |gerbil/core$<match>[2]#_g50543_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50542
         '9
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50544 |gerbil/core$<match>[2]#_g50545_|))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50544
         '10
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50546
             (let ((__tmp50547
                    (let ((__tmp50548 |gerbil/core$<match>[2]#_g50549_|))
                      (declare (not safe))
                      (cons 'macro __tmp50548))))
               (declare (not safe))
               (cons __tmp50547 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50546
         '11
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50550
             (let ((__tmp50551
                    (let ((__tmp50552 |gerbil/core$<match>[2]#_g50553_|))
                      (declare (not safe))
                      (cons 'macro __tmp50552))))
               (declare (not safe))
               (cons __tmp50551 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50550
         '12
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50554
             (let ((__tmp50555
                    (let ((__tmp50556 |gerbil/core$<match>[2]#_g50557_|))
                      (declare (not safe))
                      (cons 'macro __tmp50556))))
               (declare (not safe))
               (cons __tmp50555 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50554
         '13
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      (let ((__tmp50558
             (let ((__tmp50559
                    (let ((__tmp50560 |gerbil/core$<match>[2]#_g50561_|))
                      (declare (not safe))
                      (cons 'macro __tmp50560))))
               (declare (not safe))
               (cons __tmp50559 '()))))
        (declare (not safe))
        (##unchecked-structure-set!
         __obj47287
         __tmp50558
         '14
         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
         '#f))
      __obj47287)))
