(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g151487_|
    (##structure
     gx#syntax-quote::t
     '::basic-xform
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151489_|
    (##structure
     gx#syntax-quote::t
     '::optimize-annotated::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151491_|
    (##structure
     gx#syntax-quote::t
     'make-::optimize-annotated
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151493_|
    (##structure
     gx#syntax-quote::t
     '::optimize-annotated?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151496_|
    (##structure
     gx#syntax-quote::t
     '::generate-runtime
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151498_|
    (##structure
     gx#syntax-quote::t
     '::generate-runtime-repr::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151500_|
    (##structure
     gx#syntax-quote::t
     'make-::generate-runtime-repr
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151502_|
    (##structure
     gx#syntax-quote::t
     '::generate-runtime-repr?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151504_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151506_|
    (##structure
     gx#syntax-quote::t
     'make-::push-match-vars
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151508_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151513_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars-K
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151516_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars-vars
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151521_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars-K-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151524_|
    (##structure
     gx#syntax-quote::t
     '::push-match-vars-vars-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151529_|
    (##structure
     gx#syntax-quote::t
     '&::push-match-vars-K
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151532_|
    (##structure
     gx#syntax-quote::t
     '&::push-match-vars-vars
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151537_|
    (##structure
     gx#syntax-quote::t
     '&::push-match-vars-K-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g151540_|
    (##structure
     gx#syntax-quote::t
     '&::push-match-vars-vars-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#::optimize-annotated|
      (let ((__obj150872
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop$<MOP:2>#class-type-info::t
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
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150872
           'gxc#::optimize-annotated::t
           '1
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150872
           '::optimize-annotated
           '2
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150872
           '()
           '4
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151485
               (let ((__tmp151486 |gxc[1]#_g151487_|))
                 (declare (not safe))
                 (cons __tmp151486 '()))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150872
           __tmp151485
           '3
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150872
           '#f
           '5
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150872
           '#t
           '6
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150872
           '#f
           '7
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150872
           '#f
           '8
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151488 |gxc[1]#_g151489_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150872
           __tmp151488
           '9
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151490 |gxc[1]#_g151491_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150872
           __tmp151490
           '10
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151492 |gxc[1]#_g151493_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150872
           __tmp151492
           '11
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150872
           '()
           '12
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150872
           '()
           '13
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150872
           '()
           '14
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150872
           '()
           '15
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        __obj150872))
    (define |gxc[:0:]#::generate-runtime-repr|
      (let ((__obj150874
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop$<MOP:2>#class-type-info::t
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
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150874
           'gxc#::generate-runtime-repr::t
           '1
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150874
           '::generate-runtime-repr
           '2
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150874
           '()
           '4
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151494
               (let ((__tmp151495 |gxc[1]#_g151496_|))
                 (declare (not safe))
                 (cons __tmp151495 '()))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150874
           __tmp151494
           '3
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150874
           '#f
           '5
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150874
           '#t
           '6
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150874
           '#f
           '7
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150874
           '#f
           '8
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151497 |gxc[1]#_g151498_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150874
           __tmp151497
           '9
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151499 |gxc[1]#_g151500_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150874
           __tmp151499
           '10
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151501 |gxc[1]#_g151502_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150874
           __tmp151501
           '11
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150874
           '()
           '12
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150874
           '()
           '13
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150874
           '()
           '14
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150874
           '()
           '15
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        __obj150874))
    (define |gxc[:0:]#::push-match-vars|
      (let ((__obj150876
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop$<MOP:2>#class-type-info::t
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
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150876
           'gxc#::push-match-vars::t
           '1
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150876
           '::push-match-vars
           '2
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150876
           '(vars K)
           '4
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150876
           '()
           '3
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150876
           '#f
           '5
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150876
           '#t
           '6
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150876
           '#f
           '7
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150876
           '#f
           '8
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151503 |gxc[1]#_g151504_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150876
           __tmp151503
           '9
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151505 |gxc[1]#_g151506_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150876
           __tmp151505
           '10
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151507 |gxc[1]#_g151508_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150876
           __tmp151507
           '11
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151509
               (let ((__tmp151514
                      (let ((__tmp151515 |gxc[1]#_g151516_|))
                        (declare (not safe))
                        (cons 'vars __tmp151515)))
                     (__tmp151510
                      (let ((__tmp151511
                             (let ((__tmp151512 |gxc[1]#_g151513_|))
                               (declare (not safe))
                               (cons 'K __tmp151512))))
                        (declare (not safe))
                        (cons __tmp151511 '()))))
                 (declare (not safe))
                 (cons __tmp151514 __tmp151510))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150876
           __tmp151509
           '12
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151517
               (let ((__tmp151522
                      (let ((__tmp151523 |gxc[1]#_g151524_|))
                        (declare (not safe))
                        (cons 'vars __tmp151523)))
                     (__tmp151518
                      (let ((__tmp151519
                             (let ((__tmp151520 |gxc[1]#_g151521_|))
                               (declare (not safe))
                               (cons 'K __tmp151520))))
                        (declare (not safe))
                        (cons __tmp151519 '()))))
                 (declare (not safe))
                 (cons __tmp151522 __tmp151518))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150876
           __tmp151517
           '13
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151525
               (let ((__tmp151530
                      (let ((__tmp151531 |gxc[1]#_g151532_|))
                        (declare (not safe))
                        (cons 'vars __tmp151531)))
                     (__tmp151526
                      (let ((__tmp151527
                             (let ((__tmp151528 |gxc[1]#_g151529_|))
                               (declare (not safe))
                               (cons 'K __tmp151528))))
                        (declare (not safe))
                        (cons __tmp151527 '()))))
                 (declare (not safe))
                 (cons __tmp151530 __tmp151526))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150876
           __tmp151525
           '14
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp151533
               (let ((__tmp151538
                      (let ((__tmp151539 |gxc[1]#_g151540_|))
                        (declare (not safe))
                        (cons 'vars __tmp151539)))
                     (__tmp151534
                      (let ((__tmp151535
                             (let ((__tmp151536 |gxc[1]#_g151537_|))
                               (declare (not safe))
                               (cons 'K __tmp151536))))
                        (declare (not safe))
                        (cons __tmp151535 '()))))
                 (declare (not safe))
                 (cons __tmp151538 __tmp151534))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj150876
           __tmp151533
           '15
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        __obj150876))))
