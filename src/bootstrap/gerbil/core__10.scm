(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[1]#_g49541_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49542_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49599_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49600_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49601_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49603_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49604_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49605_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49606_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49607_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49608_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49609_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49610_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49611_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49612_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50005_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50089_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50109_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50110_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50239_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50240_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50241_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50242_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50243_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<match>[1]#match-macro::t|
      (make-class-type
       'gerbil.core#match-macro::t
       'match-macro
       (list gerbil/core$<macro-object>#macro-object::t)
       '()
       '()
       '#f))
    (define |gerbil/core$<match>[1]#match-macro?|
      (let ()
        (declare (not safe))
        (make-class-predicate |gerbil/core$<match>[1]#match-macro::t|)))
    (define |gerbil/core$<match>[1]#make-match-macro|
      (lambda _$args30464_
        (apply make-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args30464_)))
    (define |gerbil/core$<match>[1]#match-macro-macro|
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         |gerbil/core$<match>[1]#match-macro::t|
         'macro)))
    (define |gerbil/core$<match>[1]#match-macro-macro-set!|
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         |gerbil/core$<match>[1]#match-macro::t|
         'macro)))
    (define |gerbil/core$<match>[1]#&match-macro-macro|
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         |gerbil/core$<match>[1]#match-macro::t|
         'macro)))
    (define |gerbil/core$<match>[1]#&match-macro-macro-set!|
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         |gerbil/core$<match>[1]#match-macro::t|
         'macro)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx30461_)
        (if (gx#identifier? _stx30461_)
            (let ((__tmp49526 (gx#syntax-local-value _stx30461_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core$<match>[1]#match-macro::t|
               __tmp49526))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern__%|
      (lambda (_stx28767_ _match-stx28769_)
        (letrec ((_parse128771_
                  (lambda (_hd29124_)
                    (let* ((___stx4460044601_ _hd29124_)
                           (_g2915029292_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4460044601_))))
                      (let ((___kont4460344604_
                             (lambda (_L30224_ _L30226_)
                               (let* ((___stx4452044521_ _L30224_)
                                      (_g3024330276_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4452044521_))))
                                 (let ((___kont4452344524_
                                        (lambda ()
                                          (let ((__tmp49527
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L30226_ '()))))
                                            (declare (not safe))
                                            (cons '?: __tmp49527))))
                                       (___kont4452544526_
                                        (lambda (_L30417_)
                                          (let ((__tmp49528
                                                 (let ((__tmp49529
                                                        (let ((__tmp49530
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (_parse128771_ _L30417_))))
                  (declare (not safe))
                  (cons __tmp49530 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30226_
                                                         __tmp49529))))
                                            (declare (not safe))
                                            (cons '?: __tmp49528))))
                                       (___kont4452744528_
                                        (lambda (_L30387_)
                                          (let ((__tmp49531
                                                 (let ((__tmp49532
                                                        (let ((__tmp49533
                                                               (let ((__tmp49534
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_parse128771_ _L30387_))))
                         (declare (not safe))
                         (cons __tmp49534 '()))))
                  (declare (not safe))
                  (cons '=>: __tmp49533))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30226_
                                                         __tmp49532))))
                                            (declare (not safe))
                                            (cons '?: __tmp49531))))
                                       (___kont4452944530_
                                        (lambda (_L30338_ _L30340_)
                                          (let ((__tmp49535
                                                 (let ((__tmp49536
                                                        (let ((__tmp49537
                                                               (let ((__tmp49538
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp49539
                                     (let ((__tmp49540
                                            (let ()
                                              (declare (not safe))
                                              (_parse128771_ _L30338_))))
                                       (declare (not safe))
                                       (cons __tmp49540 '()))))
                                (declare (not safe))
                                (cons '=>: __tmp49539))))
                         (declare (not safe))
                         (cons _L30340_ __tmp49538))))
                  (declare (not safe))
                  (cons ':: __tmp49537))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30226_
                                                         __tmp49536))))
                                            (declare (not safe))
                                            (cons '?: __tmp49535))))
                                       (___kont4453144532_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_parse-error28778_ _hd29124_)))))
                                   (let ((_g3023930428_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 ___stx4452044521_)
                                                (let ((_e3024830407_
                                                       (gx#syntax-e
                                                        ___stx4452044521_)))
                                                  (let ((_tl3024630414_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3024830407_)))
                                                        (_hd3024730411_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3024830407_))))
                                                    (if (gx#stx-null?
                                                         _tl3024630414_)
                                                        (___kont4452544526_
                                                         _hd3024730411_)
                                                        (if (gx#identifier?
                                                             _hd3024730411_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g49542_|
                         _hd3024730411_)
                        (if (gx#stx-pair? _tl3024630414_)
                            (let ((_e3025530377_ (gx#syntax-e _tl3024630414_)))
                              (let ((_tl3025330384_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3025530377_)))
                                    (_hd3025430381_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3025530377_))))
                                (if (gx#stx-null? _tl3025330384_)
                                    (___kont4452744528_ _hd3025430381_)
                                    (___kont4453144532_))))
                            (___kont4453144532_))
                        (___kont4453144532_))
                    (if (gx#stx-datum? _hd3024730411_)
                        (let ((_e3026130304_ (gx#stx-e _hd3024730411_)))
                          (if (let ()
                                (declare (not safe))
                                (equal? _e3026130304_ '::))
                              (if (gx#stx-pair? _tl3024630414_)
                                  (let ((_e3026430308_
                                         (gx#syntax-e _tl3024630414_)))
                                    (let ((_tl3026230315_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3026430308_)))
                                          (_hd3026330312_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3026430308_))))
                                      (if (gx#stx-pair? _tl3026230315_)
                                          (let ((_e3026730318_
                                                 (gx#syntax-e _tl3026230315_)))
                                            (let ((_tl3026530325_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3026730318_)))
                                                  (_hd3026630322_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3026730318_))))
                                              (if (gx#identifier?
                                                   _hd3026630322_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g49541_|
                                                       _hd3026630322_)
                                                      (if (gx#stx-pair?
                                                           _tl3026530325_)
                                                          (let ((_e3027030328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3026530325_)))
                    (let ((_tl3026830335_
                           (let () (declare (not safe)) (##cdr _e3027030328_)))
                          (_hd3026930332_
                           (let ()
                             (declare (not safe))
                             (##car _e3027030328_))))
                      (if (gx#stx-null? _tl3026830335_)
                          (___kont4452944530_ _hd3026930332_ _hd3026330312_)
                          (___kont4453144532_))))
                  (___kont4453144532_))
              (___kont4453144532_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4453144532_))))
                                          (___kont4453144532_))))
                                  (___kont4453144532_))
                              (___kont4453144532_)))
                        (___kont4453144532_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4453144532_)))))
                                     (if (gx#stx-null? ___stx4452044521_)
                                         (___kont4452344524_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3023930428_))))))))
                            (___kont4460544606_
                             (lambda (_L30129_)
                               (let* ((___stx4450244503_ _L30129_)
                                      (_g3014130152_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4450244503_))))
                                 (let ((___kont4450544506_
                                        (lambda (_L30180_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse128771_ _L30180_))))
                                       (___kont4450744508_
                                        (lambda ()
                                          (let ((__tmp49543
                                                 (gx#stx-map
                                                  _parse128771_
                                                  _L30129_)))
                                            (declare (not safe))
                                            (cons 'and: __tmp49543)))))
                                   (if (gx#stx-pair? ___stx4450244503_)
                                       (let ((_e3014630170_
                                              (gx#syntax-e ___stx4450244503_)))
                                         (let ((_tl3014430177_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3014630170_)))
                                               (_hd3014530174_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3014630170_))))
                                           (if (gx#stx-null? _tl3014430177_)
                                               (___kont4450544506_
                                                _hd3014530174_)
                                               (___kont4450744508_))))
                                       (___kont4450744508_))))))
                            (___kont4460744608_
                             (lambda (_L30044_)
                               (let* ((___stx4448444485_ _L30044_)
                                      (_g3005630067_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4448444485_))))
                                 (let ((___kont4448744488_
                                        (lambda (_L30095_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse128771_ _L30095_))))
                                       (___kont4448944490_
                                        (lambda ()
                                          (let ((__tmp49544
                                                 (gx#stx-map
                                                  _parse128771_
                                                  _L30044_)))
                                            (declare (not safe))
                                            (cons 'or: __tmp49544)))))
                                   (if (gx#stx-pair? ___stx4448444485_)
                                       (let ((_e3006130085_
                                              (gx#syntax-e ___stx4448444485_)))
                                         (let ((_tl3005930092_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3006130085_)))
                                               (_hd3006030089_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3006130085_))))
                                           (if (gx#stx-null? _tl3005930092_)
                                               (___kont4448744488_
                                                _hd3006030089_)
                                               (___kont4448944490_))))
                                       (___kont4448944490_))))))
                            (___kont4460944610_
                             (lambda (_L30014_)
                               (let ((__tmp49545
                                      (let ((__tmp49546
                                             (let ()
                                               (declare (not safe))
                                               (_parse128771_ _L30014_))))
                                        (declare (not safe))
                                        (cons __tmp49546 '()))))
                                 (declare (not safe))
                                 (cons 'not: __tmp49545))))
                            (___kont4461144612_
                             (lambda (_L29970_ _L29972_)
                               (let ((__tmp49547
                                      (let ((__tmp49550
                                             (let ()
                                               (declare (not safe))
                                               (_parse128771_ _L29972_)))
                                            (__tmp49548
                                             (let ((__tmp49549
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse128771_
                                                       _L29970_))))
                                               (declare (not safe))
                                               (cons __tmp49549 '()))))
                                        (declare (not safe))
                                        (cons __tmp49550 __tmp49548))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp49547))))
                            (___kont4461344614_
                             (lambda (_L29914_ _L29916_ _L29917_)
                               (if (gx#stx-null? _L29914_)
                                   (let ((__tmp49558
                                          (let ((__tmp49561
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse128771_ _L29917_)))
                                                (__tmp49559
                                                 (let ((__tmp49560
                                                        (let ()
                                                          (declare (not safe))
                                                          (_parse128771_
                                                           _L29916_))))
                                                   (declare (not safe))
                                                   (cons __tmp49560 '()))))
                                            (declare (not safe))
                                            (cons __tmp49561 __tmp49559))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp49558))
                                   (let ((__tmp49551
                                          (let ((__tmp49557
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse128771_ _L29917_)))
                                                (__tmp49552
                                                 (let ((__tmp49553
                                                        (let ((__tmp49554
                                                               (let ((__tmp49556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'cons*))
                             (__tmp49555
                              (let ()
                                (declare (not safe))
                                (cons _L29916_ _L29914_))))
                         (declare (not safe))
                         (cons __tmp49556 __tmp49555))))
                  (declare (not safe))
                  (_parse128771_ __tmp49554))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49553 '()))))
                                            (declare (not safe))
                                            (cons __tmp49557 __tmp49552))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp49551)))))
                            (___kont4461544616_
                             (lambda (_L29866_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-list28773_ _L29866_))))
                            (___kont4461744618_
                             (lambda (_L29836_)
                               (let ((__tmp49562
                                      (let ((__tmp49563
                                             (let ()
                                               (declare (not safe))
                                               (_parse128771_ _L29836_))))
                                        (declare (not safe))
                                        (cons __tmp49563 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp49562))))
                            (___kont4461944620_
                             (lambda (_L29799_)
                               (let ((__tmp49564
                                      (let ((__tmp49565
                                             (let ()
                                               (declare (not safe))
                                               (_parse128771_ _L29799_))))
                                        (declare (not safe))
                                        (cons __tmp49565 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp49564))))
                            (___kont4462144622_
                             (lambda (_L29775_)
                               (let ()
                                 (declare (not safe))
                                 (_parse128771_ _L29775_))))
                            (___kont4462344624_
                             (lambda (_L29737_)
                               (let ((__tmp49566
                                      (let ((__tmp49567
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector28774_
                                                _L29737_))))
                                        (declare (not safe))
                                        (cons __tmp49567 '()))))
                                 (declare (not safe))
                                 (cons 'values: __tmp49566))))
                            (___kont4462544626_
                             (lambda (_L29709_)
                               (let ((__tmp49568
                                      (let ((__tmp49569
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector28774_
                                                _L29709_))))
                                        (declare (not safe))
                                        (cons __tmp49569 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp49568))))
                            (___kont4462744628_
                             (lambda (_L29670_)
                               (let ((__tmp49570
                                      (let ((__tmp49571
                                             (let ((__tmp49572
                                                    (let ((__tmp49573
                                                           (lambda (_g2968329686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2968429689_)
                     (let ()
                       (declare (not safe))
                       (cons _g2968329686_ _g2968429689_)))))
              (declare (not safe))
              (foldr1 __tmp49573 '() _L29670_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_parse-vector28774_
                                                __tmp49572))))
                                        (declare (not safe))
                                        (cons __tmp49571 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp49570))))
                            (___kont4463144632_
                             (lambda (_L29616_ _L29618_)
                               (let ((__tmp49574
                                      (let ((__tmp49577
                                             (gx#syntax-local-value _L29618_))
                                            (__tmp49575
                                             (let ((__tmp49576
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-vector28774_
                                                       _L29616_))))
                                               (declare (not safe))
                                               (cons __tmp49576 '()))))
                                        (declare (not safe))
                                        (cons __tmp49577 __tmp49575))))
                                 (declare (not safe))
                                 (cons 'struct: __tmp49574))))
                            (___kont4463344634_
                             (lambda (_L29586_ _L29588_)
                               (let ((__tmp49578
                                      (let ((__tmp49581
                                             (gx#syntax-local-value _L29588_))
                                            (__tmp49579
                                             (let ((__tmp49580
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-class-body28776_
                                                       _L29586_))))
                                               (declare (not safe))
                                               (cons __tmp49580 '()))))
                                        (declare (not safe))
                                        (cons __tmp49581 __tmp49579))))
                                 (declare (not safe))
                                 (cons 'class: __tmp49578))))
                            (___kont4463544636_
                             (lambda (_L29546_ _L29548_)
                               (let ((__tmp49582
                                      (let ((__tmp49583
                                             (let ((__tmp49588
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cut))
                                                   (__tmp49584
                                                    (let ((__tmp49585
                                                           (let ((__tmp49587
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '<>))
                         (__tmp49586
                          (let () (declare (not safe)) (cons _L29546_ '()))))
                     (declare (not safe))
                     (cons __tmp49587 __tmp49586))))
              (declare (not safe))
              (cons _L29548_ __tmp49585))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49588 __tmp49584))))
                                        (declare (not safe))
                                        (cons __tmp49583 '()))))
                                 (declare (not safe))
                                 (cons '?: __tmp49582))))
                            (___kont4463744638_
                             (lambda (_L29506_)
                               (let ((__tmp49589
                                      (let ((__tmp49590 (gx#stx-e _L29506_)))
                                        (declare (not safe))
                                        (cons __tmp49590 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp49589))))
                            (___kont4463944640_
                             (lambda (_L29466_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-qq28777_ _L29466_))))
                            (___kont4464144642_
                             (lambda (_L29422_ _L29424_)
                               (let ((__tmp49591
                                      (let ((__tmp49592
                                             (let ((__tmp49593
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse128771_
                                                       _L29422_))))
                                               (declare (not safe))
                                               (cons __tmp49593 '()))))
                                        (declare (not safe))
                                        (cons _L29424_ __tmp49592))))
                                 (declare (not safe))
                                 (cons 'apply: __tmp49591))))
                            (___kont4464344644_
                             (lambda (_L29370_)
                               (let ((__tmp49594
                                      (gx#core-apply-expander
                                       (gx#syntax-local-e _L29370_)
                                       (gx#stx-wrap-source
                                        (let ()
                                          (declare (not safe))
                                          (cons 'match: _hd29124_))
                                        (let ((_$e29381_
                                               (gx#stx-source _hd29124_)))
                                          (if _$e29381_
                                              _$e29381_
                                              (gx#stx-source _stx28767_)))))))
                                 (declare (not safe))
                                 (_parse128771_ __tmp49594))))
                            (___kont4464544646_
                             (lambda (_L29344_)
                               (let () (declare (not safe)) (cons 'any: '()))))
                            (___kont4464744648_
                             (lambda (_L29328_)
                               (let ((__tmp49595
                                      (let ()
                                        (declare (not safe))
                                        (cons _L29328_ '()))))
                                 (declare (not safe))
                                 (cons 'var: __tmp49595))))
                            (___kont4464944650_
                             (lambda (_L29310_)
                               (let ((__tmp49596
                                      (let ((__tmp49597 (gx#stx-e _L29310_)))
                                        (declare (not safe))
                                        (cons __tmp49597 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp49596))))
                            (___kont4465144652_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_parse-error28778_ _hd29124_)))))
                        (let* ((_g2914829321_
                                (lambda ()
                                  (let ((_L29310_ ___stx4460044601_))
                                    (if (gx#stx-datum? _L29310_)
                                        (___kont4464944650_ _L29310_)
                                        (___kont4465144652_)))))
                               (_g2914729337_
                                (lambda ()
                                  (let ((_L29328_ ___stx4460044601_))
                                    (if (and (gx#identifier? _L29328_)
                                             (let ((__tmp49598
                                                    (gx#ellipsis? _L29328_)))
                                               (declare (not safe))
                                               (not __tmp49598)))
                                        (___kont4464744648_ _L29328_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2914829321_))))))
                               (_g2914629353_
                                (lambda ()
                                  (let ((_L29344_ ___stx4460044601_))
                                    (if (gx#underscore? _L29344_)
                                        (___kont4464544646_ _L29344_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2914729337_))))))
                               (___match4492744928_
                                (lambda (_e2928329360_
                                         _hd2928229364_
                                         _tl2928129367_)
                                  (let ((_L29370_ _hd2928229364_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                           _L29370_))
                                        (___kont4464344644_ _L29370_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2914629353_))))))
                               (___match4486144862_
                                (lambda (_e2925129526_
                                         _hd2925029530_
                                         _tl2924929533_
                                         _e2925429536_
                                         _hd2925329540_
                                         _tl2925229543_)
                                  (let ((_L29546_ _hd2925329540_)
                                        (_L29548_ _hd2925029530_))
                                    (if (and (gx#identifier? _L29548_)
                                             (or (gx#free-identifier=?
                                                  _L29548_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _L29548_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _L29548_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (___kont4463544636_ _L29546_ _L29548_)
                                        (if (gx#identifier? _hd2925029530_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g49600_|
                                                 _hd2925029530_)
                                                (___kont4463744638_
                                                 _hd2925329540_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<match>[1]#_g49599_|
                                                     _hd2925029530_)
                                                    (___kont4463944640_
                                                     _hd2925329540_)
                                                    (___match4492744928_
                                                     _e2925129526_
                                                     _hd2925029530_
                                                     _tl2924929533_)))
                                            (___match4492744928_
                                             _e2925129526_
                                             _hd2925029530_
                                             _tl2924929533_))))))
                               (___match4484744848_
                                (lambda (_e2924629576_
                                         _hd2924529580_
                                         _tl2924429583_)
                                  (let ((_L29586_ _tl2924429583_)
                                        (_L29588_ _hd2924529580_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                                           _L29588_))
                                        (___kont4463344634_ _L29586_ _L29588_)
                                        (if (gx#stx-pair? _tl2924429583_)
                                            (let ((_e2925429536_
                                                   (gx#syntax-e
                                                    _tl2924429583_)))
                                              (let ((_tl2925229543_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2925429536_)))
                                                    (_hd2925329540_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2925429536_))))
                                                (if (gx#stx-null?
                                                     _tl2925229543_)
                                                    (___match4486144862_
                                                     _e2924629576_
                                                     _hd2924529580_
                                                     _tl2924429583_
                                                     _e2925429536_
                                                     _hd2925329540_
                                                     _tl2925229543_)
                                                    (if (gx#identifier?
                                                         _hd2924529580_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core$<match>[1]#_g49600_|
                                                             _hd2924529580_)
                                                            (___match4492744928_
                                                             _e2924629576_
                                                             _hd2924529580_
                                                             _tl2924429583_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g49599_|
                         _hd2924529580_)
                        (___match4492744928_
                         _e2924629576_
                         _hd2924529580_
                         _tl2924429583_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g49601_|
                             _hd2924529580_)
                            (if (gx#stx-pair? _tl2925229543_)
                                (let ((_e2927929412_
                                       (gx#syntax-e _tl2925229543_)))
                                  (let ((_tl2927729419_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2927929412_)))
                                        (_hd2927829416_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2927929412_))))
                                    (if (gx#stx-null? _tl2927729419_)
                                        (___kont4464144642_
                                         _hd2927829416_
                                         _hd2925329540_)
                                        (___match4492744928_
                                         _e2924629576_
                                         _hd2924529580_
                                         _tl2924429583_))))
                                (___match4492744928_
                                 _e2924629576_
                                 _hd2924529580_
                                 _tl2924429583_))
                            (___match4492744928_
                             _e2924629576_
                             _hd2924529580_
                             _tl2924429583_))))
                (___match4492744928_
                 _e2924629576_
                 _hd2924529580_
                 _tl2924429583_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___match4492744928_
                                             _e2924629576_
                                             _hd2924529580_
                                             _tl2924429583_))))))
                               (___match4484144842_
                                (lambda (_e2924129606_
                                         _hd2924029610_
                                         _tl2923929613_)
                                  (let ((_L29616_ _tl2923929613_)
                                        (_L29618_ _hd2924029610_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__%
                                           _L29618_
                                           gerbil/core$<MOP>$<MOP:2>#class-type-struct?))
                                        (___kont4463144632_ _L29616_ _L29618_)
                                        (___match4484744848_
                                         _e2924129606_
                                         _hd2924029610_
                                         _tl2923929613_)))))
                               (___match4483544836_
                                (lambda (_e2922729636_
                                         ___splice4462944630_
                                         _target2922829640_
                                         _tl2923029643_)
                                  (letrec ((_loop2923129646_
                                            (lambda (_hd2922929650_
                                                     _body2923529653_)
                                              (if (gx#stx-pair? _hd2922929650_)
                                                  (let ((_e2923229656_
                                                         (gx#syntax-e
                                                          _hd2922929650_)))
                                                    (let ((_lp-tl2923429663_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2923229656_)))
                                                          (_lp-hd2923329660_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2923229656_))))
                                                      (let ((__tmp49602
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd2923329660_ _body2923529653_))))
                (declare (not safe))
                (_loop2923129646_ _lp-tl2923429663_ __tmp49602))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_body2923629666_
                                                         (reverse _body2923529653_)))
                                                    (___kont4462744628_
                                                     _body2923629666_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop2923129646_
                                       _target2922829640_
                                       '())))))
                               (_g2913829692_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx4460044601_)
                                      (let ((_e2922729636_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx4460044601_))))
                                        (if (gx#stx-pair/null? _e2922729636_)
                                            (let ((___splice4462944630_
                                                   (gx#syntax-split-splice
                                                    _e2922729636_
                                                    '0)))
                                              (let ((_tl2923029643_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4462944630_
                                                        '1)))
                                                    (_target2922829640_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4462944630_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl2923029643_)
                                                    (___match4483544836_
                                                     _e2922729636_
                                                     ___splice4462944630_
                                                     _target2922829640_
                                                     _tl2923029643_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2914629353_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g2914629353_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2914629353_)))))
                               (_g2913429809_
                                (lambda ()
                                  (if (gx#stx-box? ___stx4460044601_)
                                      (let ((_e2921029795_
                                             (unbox (gx#syntax-e
                                                     ___stx4460044601_))))
                                        (___kont4461944620_ _e2921029795_))
                                      (let ()
                                        (declare (not safe))
                                        (_g2913829692_)))))
                               (___match4468944690_
                                (lambda (_e2916730034_
                                         _hd2916630038_
                                         _tl2916530041_)
                                  (let ((_L30044_ _tl2916530041_))
                                    (if (gx#stx-list? _L30044_)
                                        (___kont4460744608_ _L30044_)
                                        (___match4484144842_
                                         _e2916730034_
                                         _hd2916630038_
                                         _tl2916530041_)))))
                               (___match4467944680_
                                (lambda (_e2916330119_
                                         _hd2916230123_
                                         _tl2916130126_)
                                  (let ((_L30129_ _tl2916130126_))
                                    (if (gx#stx-list? _L30129_)
                                        (___kont4460544606_ _L30129_)
                                        (___match4484144842_
                                         _e2916330119_
                                         _hd2916230123_
                                         _tl2916130126_))))))
                          (if (gx#stx-pair? ___stx4460044601_)
                              (let ((_e2915630204_
                                     (gx#syntax-e ___stx4460044601_)))
                                (let ((_tl2915430211_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2915630204_)))
                                      (_hd2915530208_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2915630204_))))
                                  (if (gx#identifier? _hd2915530208_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g49612_|
                                           _hd2915530208_)
                                          (if (gx#stx-pair? _tl2915430211_)
                                              (let ((_e2915930214_
                                                     (gx#syntax-e
                                                      _tl2915430211_)))
                                                (let ((_tl2915730221_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2915930214_)))
                                                      (_hd2915830218_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2915930214_))))
                                                  (___kont4460344604_
                                                   _tl2915730221_
                                                   _hd2915830218_)))
                                              (___match4484144842_
                                               _e2915630204_
                                               _hd2915530208_
                                               _tl2915430211_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g49611_|
                                               _hd2915530208_)
                                              (___match4467944680_
                                               _e2915630204_
                                               _hd2915530208_
                                               _tl2915430211_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g49610_|
                                                   _hd2915530208_)
                                                  (___match4468944690_
                                                   _e2915630204_
                                                   _hd2915530208_
                                                   _tl2915430211_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g49609_|
                                                       _hd2915530208_)
                                                      (if (gx#stx-pair?
                                                           _tl2915430211_)
                                                          (let ((_e2917430004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2915430211_)))
                    (let ((_tl2917230011_
                           (let () (declare (not safe)) (##cdr _e2917430004_)))
                          (_hd2917330008_
                           (let ()
                             (declare (not safe))
                             (##car _e2917430004_))))
                      (if (gx#stx-null? _tl2917230011_)
                          (___kont4460944610_ _hd2917330008_)
                          (___match4484144842_
                           _e2915630204_
                           _hd2915530208_
                           _tl2915430211_))))
                  (___match4484144842_
                   _e2915630204_
                   _hd2915530208_
                   _tl2915430211_))
              (if (gx#free-identifier=?
                   |gerbil/core$<match>[1]#_g49608_|
                   _hd2915530208_)
                  (if (gx#stx-pair? _tl2915430211_)
                      (let ((_e2918229950_ (gx#syntax-e _tl2915430211_)))
                        (let ((_tl2918029957_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2918229950_)))
                              (_hd2918129954_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2918229950_))))
                          (if (gx#stx-pair? _tl2918029957_)
                              (let ((_e2918529960_
                                     (gx#syntax-e _tl2918029957_)))
                                (let ((_tl2918329967_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2918529960_)))
                                      (_hd2918429964_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2918529960_))))
                                  (if (gx#stx-null? _tl2918329967_)
                                      (___kont4461144612_
                                       _hd2918429964_
                                       _hd2918129954_)
                                      (___match4484144842_
                                       _e2915630204_
                                       _hd2915530208_
                                       _tl2915430211_))))
                              (___match4484144842_
                               _e2915630204_
                               _hd2915530208_
                               _tl2915430211_))))
                      (___match4484144842_
                       _e2915630204_
                       _hd2915530208_
                       _tl2915430211_))
                  (if (gx#free-identifier=?
                       |gerbil/core$<match>[1]#_g49607_|
                       _hd2915530208_)
                      (if (gx#stx-pair? _tl2915430211_)
                          (let ((_e2919429894_ (gx#syntax-e _tl2915430211_)))
                            (let ((_tl2919229901_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2919429894_)))
                                  (_hd2919329898_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2919429894_))))
                              (if (gx#stx-pair? _tl2919229901_)
                                  (let ((_e2919729904_
                                         (gx#syntax-e _tl2919229901_)))
                                    (let ((_tl2919529911_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2919729904_)))
                                          (_hd2919629908_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2919729904_))))
                                      (___kont4461344614_
                                       _tl2919529911_
                                       _hd2919629908_
                                       _hd2919329898_)))
                                  (___match4484144842_
                                   _e2915630204_
                                   _hd2915530208_
                                   _tl2915430211_))))
                          (___match4484144842_
                           _e2915630204_
                           _hd2915530208_
                           _tl2915430211_))
                      (if (gx#free-identifier=?
                           |gerbil/core$<match>[1]#_g49606_|
                           _hd2915530208_)
                          (___kont4461544616_ _tl2915430211_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g49605_|
                               _hd2915530208_)
                              (if (gx#stx-pair? _tl2915430211_)
                                  (let ((_e2920829826_
                                         (gx#syntax-e _tl2915430211_)))
                                    (let ((_tl2920629833_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2920829826_)))
                                          (_hd2920729830_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2920829826_))))
                                      (if (gx#stx-null? _tl2920629833_)
                                          (___kont4461744618_ _hd2920729830_)
                                          (___match4484144842_
                                           _e2915630204_
                                           _hd2915530208_
                                           _tl2915430211_))))
                                  (___match4484144842_
                                   _e2915630204_
                                   _hd2915530208_
                                   _tl2915430211_))
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g49604_|
                                   _hd2915530208_)
                                  (if (gx#stx-pair? _tl2915430211_)
                                      (let ((_e2921729765_
                                             (gx#syntax-e _tl2915430211_)))
                                        (let ((_tl2921529772_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2921729765_)))
                                              (_hd2921629769_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2921729765_))))
                                          (if (gx#stx-null? _tl2921529772_)
                                              (___kont4462144622_
                                               _hd2921629769_)
                                              (___kont4462344624_
                                               _tl2915430211_))))
                                      (___kont4462344624_ _tl2915430211_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g49603_|
                                       _hd2915530208_)
                                      (___kont4462544626_ _tl2915430211_)
                                      (___match4484144842_
                                       _e2915630204_
                                       _hd2915530208_
                                       _tl2915430211_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___match4484144842_
                                       _e2915630204_
                                       _hd2915530208_
                                       _tl2915430211_))))
                              (let ()
                                (declare (not safe))
                                (_g2913429809_))))))))
                 (_parse-list28773_
                  (lambda (_body28953_)
                    (let* ((___stx4493044931_ _body28953_)
                           (_g2895928988_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4493044931_))))
                      (let ((___kont4493344934_
                             (lambda (_L29106_)
                               (let ()
                                 (declare (not safe))
                                 (_parse128771_ _L29106_))))
                            (___kont4493544936_
                             (lambda (_L29058_ _L29060_ _L29061_)
                               (let ((__tmp49613
                                      (let ((__tmp49616
                                             (let ()
                                               (declare (not safe))
                                               (_parse128771_ _L29061_)))
                                            (__tmp49614
                                             (let ((__tmp49615
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list28773_
                                                       _L29058_))))
                                               (declare (not safe))
                                               (cons __tmp49615 '()))))
                                        (declare (not safe))
                                        (cons __tmp49616 __tmp49614))))
                                 (declare (not safe))
                                 (cons 'splice: __tmp49613))))
                            (___kont4493744938_
                             (lambda (_L29016_ _L29018_)
                               (let ((__tmp49617
                                      (let ((__tmp49620
                                             (let ()
                                               (declare (not safe))
                                               (_parse128771_ _L29018_)))
                                            (__tmp49618
                                             (let ((__tmp49619
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list28773_
                                                       _L29016_))))
                                               (declare (not safe))
                                               (cons __tmp49619 '()))))
                                        (declare (not safe))
                                        (cons __tmp49620 __tmp49618))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp49617))))
                            (___kont4493944940_
                             (lambda ()
                               (if (gx#stx-null? _body28953_)
                                   (let ()
                                     (declare (not safe))
                                     (cons 'null: '()))
                                   (if (let ((__tmp49621
                                              (gx#stx-pair? _body28953_)))
                                         (declare (not safe))
                                         (not __tmp49621))
                                       (let ()
                                         (declare (not safe))
                                         (_parse128771_ _body28953_))
                                       (let ()
                                         (declare (not safe))
                                         (_parse-error28778_ _body28953_)))))))
                        (let* ((___match4497944980_
                                (lambda (_e2898229006_
                                         _hd2898129010_
                                         _tl2898029013_)
                                  (let ((_L29016_ _tl2898029013_)
                                        (_L29018_ _hd2898129010_))
                                    (if (let ((__tmp49622
                                               (gx#ellipsis? _L29018_)))
                                          (declare (not safe))
                                          (not __tmp49622))
                                        (___kont4493744938_ _L29016_ _L29018_)
                                        (___kont4493944940_)))))
                               (___match4497344974_
                                (lambda (_e2897429038_
                                         _hd2897329042_
                                         _tl2897229045_
                                         _e2897729048_
                                         _hd2897629052_
                                         _tl2897529055_)
                                  (let ((_L29058_ _tl2897529055_)
                                        (_L29060_ _hd2897629052_)
                                        (_L29061_ _hd2897329042_))
                                    (if (gx#ellipsis? _L29060_)
                                        (___kont4493544936_
                                         _L29058_
                                         _L29060_
                                         _L29061_)
                                        (___match4497944980_
                                         _e2897429038_
                                         _hd2897329042_
                                         _tl2897229045_))))))
                          (if (gx#stx-pair? ___stx4493044931_)
                              (let ((_e2896429082_
                                     (gx#syntax-e ___stx4493044931_)))
                                (let ((_tl2896229089_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2896429082_)))
                                      (_hd2896329086_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2896429082_))))
                                  (if (gx#stx-datum? _hd2896329086_)
                                      (let ((_e2896529092_
                                             (gx#stx-e _hd2896329086_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e2896529092_ '::))
                                            (if (gx#stx-pair? _tl2896229089_)
                                                (let ((_e2896829096_
                                                       (gx#syntax-e
                                                        _tl2896229089_)))
                                                  (let ((_tl2896629103_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2896829096_)))
                                                        (_hd2896729100_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2896829096_))))
                                                    (if (gx#stx-null?
                                                         _tl2896629103_)
                                                        (___kont4493344934_
                                                         _hd2896729100_)
                                                        (___match4497344974_
                                                         _e2896429082_
                                                         _hd2896329086_
                                                         _tl2896229089_
                                                         _e2896829096_
                                                         _hd2896729100_
                                                         _tl2896629103_))))
                                                (___match4497944980_
                                                 _e2896429082_
                                                 _hd2896329086_
                                                 _tl2896229089_))
                                            (if (gx#stx-pair? _tl2896229089_)
                                                (let ((_e2897729048_
                                                       (gx#syntax-e
                                                        _tl2896229089_)))
                                                  (let ((_tl2897529055_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2897729048_)))
                                                        (_hd2897629052_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2897729048_))))
                                                    (___match4497344974_
                                                     _e2896429082_
                                                     _hd2896329086_
                                                     _tl2896229089_
                                                     _e2897729048_
                                                     _hd2897629052_
                                                     _tl2897529055_)))
                                                (___match4497944980_
                                                 _e2896429082_
                                                 _hd2896329086_
                                                 _tl2896229089_))))
                                      (if (gx#stx-pair? _tl2896229089_)
                                          (let ((_e2897729048_
                                                 (gx#syntax-e _tl2896229089_)))
                                            (let ((_tl2897529055_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2897729048_)))
                                                  (_hd2897629052_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2897729048_))))
                                              (___match4497344974_
                                               _e2896429082_
                                               _hd2896329086_
                                               _tl2896229089_
                                               _e2897729048_
                                               _hd2897629052_
                                               _tl2897529055_)))
                                          (___match4497944980_
                                           _e2896429082_
                                           _hd2896329086_
                                           _tl2896229089_)))))
                              (___kont4493944940_)))))))
                 (_parse-vector28774_
                  (lambda (_body28950_)
                    (if (let ()
                          (declare (not safe))
                          (_simple-vector?28775_ _body28950_))
                        (let ((__tmp49625
                               (let ((__tmp49626
                                      (gx#stx-map _parse128771_ _body28950_)))
                                 (declare (not safe))
                                 (cons __tmp49626 '()))))
                          (declare (not safe))
                          (cons 'simple: __tmp49625))
                        (let ((__tmp49623
                               (let ((__tmp49624
                                      (let ()
                                        (declare (not safe))
                                        (_parse-list28773_ _body28950_))))
                                 (declare (not safe))
                                 (cons __tmp49624 '()))))
                          (declare (not safe))
                          (cons 'list: __tmp49623)))))
                 (_simple-vector?28775_
                  (lambda (_body28887_)
                    (let* ((___stx4498244983_ _body28887_)
                           (_g2889128903_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4498244983_))))
                      (let ((___kont4498544986_
                             (lambda (_L28931_ _L28933_)
                               (if (let ((__tmp49627 (gx#ellipsis? _L28933_)))
                                     (declare (not safe))
                                     (not __tmp49627))
                                   (let ()
                                     (declare (not safe))
                                     (_simple-vector?28775_ _L28931_))
                                   '#f)))
                            (___kont4498744988_
                             (lambda () (gx#stx-null? _body28887_))))
                        (if (gx#stx-pair? ___stx4498244983_)
                            (let ((_e2889728921_
                                   (gx#syntax-e ___stx4498244983_)))
                              (let ((_tl2889528928_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2889728921_)))
                                    (_hd2889628925_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2889728921_))))
                                (___kont4498544986_
                                 _tl2889528928_
                                 _hd2889628925_)))
                            (___kont4498744988_))))))
                 (_parse-class-body28776_
                  (lambda (_body28796_)
                    (let _recur28799_ ((_rest28802_ _body28796_))
                      (let* ((___stx4499844999_ _rest28802_)
                             (_g2880628822_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4499844999_))))
                        (let ((___kont4500145002_
                               (lambda (_L28860_ _L28862_ _L28863_)
                                 (let ((__tmp49628
                                        (let ((__tmp49630
                                               (let ()
                                                 (declare (not safe))
                                                 (_parse128771_ _L28862_)))
                                              (__tmp49629
                                               (let ()
                                                 (declare (not safe))
                                                 (_recur28799_ _L28860_))))
                                          (declare (not safe))
                                          (cons __tmp49630 __tmp49629))))
                                   (declare (not safe))
                                   (cons _L28863_ __tmp49628))))
                              (___kont4500345004_
                               (lambda ()
                                 (if (gx#stx-null? _rest28802_)
                                     '()
                                     (let ()
                                       (declare (not safe))
                                       (_parse-error28778_ _rest28802_))))))
                          (let ((___match4501745018_
                                 (lambda (_e2881328840_
                                          _hd2881228844_
                                          _tl2881128847_
                                          _e2881628850_
                                          _hd2881528854_
                                          _tl2881428857_)
                                   (let ((_L28860_ _tl2881428857_)
                                         (_L28862_ _hd2881528854_)
                                         (_L28863_ _hd2881228844_))
                                     (if (gx#stx-keyword? _L28863_)
                                         (___kont4500145002_
                                          _L28860_
                                          _L28862_
                                          _L28863_)
                                         (___kont4500345004_))))))
                            (if (gx#stx-pair? ___stx4499844999_)
                                (let ((_e2881328840_
                                       (gx#syntax-e ___stx4499844999_)))
                                  (let ((_tl2881128847_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2881328840_)))
                                        (_hd2881228844_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2881328840_))))
                                    (if (gx#stx-pair? _tl2881128847_)
                                        (let ((_e2881628850_
                                               (gx#syntax-e _tl2881128847_)))
                                          (let ((_tl2881428857_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2881628850_)))
                                                (_hd2881528854_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2881628850_))))
                                            (___match4501745018_
                                             _e2881328840_
                                             _hd2881228844_
                                             _tl2881128847_
                                             _e2881628850_
                                             _hd2881528854_
                                             _tl2881428857_)))
                                        (___kont4500345004_))))
                                (___kont4500345004_))))))))
                 (_parse-qq28777_
                  (lambda (_hd28783_)
                    (let ((_g2878528792_
                           (lambda (_g2878628788_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g2878628788_))))
                      (declare (not safe))
                      (_g2878528792_ _hd28783_))))
                 (_parse-error28778_
                  (lambda (_hd28780_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _match-stx28769_
                               (let ((__tmp49632
                                      (let ((__tmp49633
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd28780_ '()))))
                                        (declare (not safe))
                                        (cons _stx28767_ __tmp49633))))
                                 (declare (not safe))
                                 (cons _match-stx28769_ __tmp49632))
                               (let ((__tmp49631
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd28780_ '()))))
                                 (declare (not safe))
                                 (cons _stx28767_ __tmp49631)))))))
          (let () (declare (not safe)) (_parse128771_ _stx28767_)))))
    (define |gerbil/core$<match>[1]#parse-match-pattern__0|
      (lambda (_stx30451_)
        (let ((_match-stx30454_ '#f))
          (declare (not safe))
          (|gerbil/core$<match>[1]#parse-match-pattern__%|
           _stx30451_
           _match-stx30454_))))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (lambda _g49635_
        (let ((_g49634_ (let () (declare (not safe)) (##length _g49635_))))
          (cond ((let () (declare (not safe)) (##fx= _g49634_ 1))
                 (apply (lambda (_stx30451_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__0|
                             _stx30451_)))
                        _g49635_))
                ((let () (declare (not safe)) (##fx= _g49634_ 2))
                 (apply (lambda (_stx30457_ _match-stx30459_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__%|
                             _stx30457_
                             _match-stx30459_)))
                        _g49635_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<match>[1]#parse-match-pattern|
                  _g49635_))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx28751_)
        (call-with-current-continuation
         (lambda (_E28755_)
           (with-exception-handler
            (let ((_E!28758_ (current-exception-handler)))
              (lambda (_e28761_)
                (if (syntax-error? _e28761_)
                    (_E28755_ '#f)
                    (_E!28758_ _e28761_))))
            (lambda ()
              (let ()
                (declare (not safe))
                (|gerbil/core$<match>[1]#parse-match-pattern__0| _stx28751_))
              '#t))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree27486_)
        (letrec ((_loop27489_
                  (lambda (_ptree27776_ _vars27778_ _K27779_)
                    (let* ((___stx4511645117_ _ptree27776_)
                           (_g2779227902_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4511645117_))))
                      (let ((___kont4511945120_
                             (lambda (_L28532_)
                               (let* ((___stx4503645037_ _L28532_)
                                      (_g2854928583_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4503645037_))))
                                 (let ((___kont4503945040_
                                        (lambda (_L28732_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27489_
                                             _L28732_
                                             _vars27778_
                                             _K27779_))))
                                       (___kont4504145042_
                                        (lambda (_L28701_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27489_
                                             _L28701_
                                             _vars27778_
                                             _K27779_))))
                                       (___kont4504345044_
                                        (lambda (_L28649_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27489_
                                             _L28649_
                                             _vars27778_
                                             _K27779_))))
                                       (___kont4504545046_
                                        (lambda () (_K27779_ _vars27778_))))
                                   (if (gx#stx-pair? ___stx4503645037_)
                                       (let ((_e2855428722_
                                              (gx#syntax-e ___stx4503645037_)))
                                         (let ((_tl2855228729_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2855428722_)))
                                               (_hd2855328726_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2855428722_))))
                                           (if (gx#stx-null? _tl2855228729_)
                                               (___kont4503945040_
                                                _hd2855328726_)
                                               (if (gx#stx-datum?
                                                    _hd2855328726_)
                                                   (let ((_e2855928687_
                                                          (gx#stx-e
                                                           _hd2855328726_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e2855928687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '=>:))
                 (if (gx#stx-pair? _tl2855228729_)
                     (let ((_e2856228691_ (gx#syntax-e _tl2855228729_)))
                       (let ((_tl2856028698_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2856228691_)))
                             (_hd2856128695_
                              (let ()
                                (declare (not safe))
                                (##car _e2856228691_))))
                         (if (gx#stx-null? _tl2856028698_)
                             (___kont4504145042_ _hd2856128695_)
                             (___kont4504545046_))))
                     (___kont4504545046_))
                 (if (let () (declare (not safe)) (equal? _e2855928687_ '::))
                     (if (gx#stx-pair? _tl2855228729_)
                         (let ((_e2857028615_ (gx#syntax-e _tl2855228729_)))
                           (let ((_tl2856828622_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2857028615_)))
                                 (_hd2856928619_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2857028615_))))
                             (if (gx#stx-pair? _tl2856828622_)
                                 (let ((_e2857328625_
                                        (gx#syntax-e _tl2856828622_)))
                                   (let ((_tl2857128632_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2857328625_)))
                                         (_hd2857228629_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2857328625_))))
                                     (if (gx#stx-datum? _hd2857228629_)
                                         (let ((_e2857428635_
                                                (gx#stx-e _hd2857228629_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (equal? _e2857428635_ '=>:))
                                               (if (gx#stx-pair?
                                                    _tl2857128632_)
                                                   (let ((_e2857728639_
                                                          (gx#syntax-e
                                                           _tl2857128632_)))
                                                     (let ((_tl2857528646_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2857728639_)))
                                                           (_hd2857628643_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2857728639_))))
                                                       (if (gx#stx-null?
                                                            _tl2857528646_)
                                                           (___kont4504345044_
                                                            _hd2857628643_)
                                                           (___kont4504545046_))))
                                                   (___kont4504545046_))
                                               (___kont4504545046_)))
                                         (___kont4504545046_))))
                                 (___kont4504545046_))))
                         (___kont4504545046_))
                     (___kont4504545046_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4504545046_)))))
                                       (___kont4504545046_))))))
                            (___kont4512145122_
                             (lambda (_L28419_ _L28421_)
                               (let* ((___stx4502045021_ _L28419_)
                                      (_g2843728449_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4502045021_))))
                                 (let ((___kont4502345024_
                                        (lambda (_L28477_ _L28479_)
                                          (let ((__tmp49636
                                                 (lambda (_g2849128493_)
                                                   (let ((__tmp49637
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L28421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L28477_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_loop27489_
                                                      __tmp49637
                                                      _g2849128493_
                                                      _K27779_)))))
                                            (declare (not safe))
                                            (_loop27489_
                                             _L28479_
                                             _vars27778_
                                             __tmp49636))))
                                       (___kont4502545026_
                                        (lambda () (_K27779_ _vars27778_))))
                                   (if (gx#stx-pair? ___stx4502045021_)
                                       (let ((_e2844328467_
                                              (gx#syntax-e ___stx4502045021_)))
                                         (let ((_tl2844128474_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2844328467_)))
                                               (_hd2844228471_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2844328467_))))
                                           (___kont4502345024_
                                            _tl2844128474_
                                            _hd2844228471_)))
                                       (___kont4502545026_))))))
                            (___kont4512345124_
                             (lambda (_L28388_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27489_ _L28388_ _vars27778_ _K27779_))))
                            (___kont4512545126_
                             (lambda (_L28334_ _L28336_)
                               (let ((__tmp49638
                                      (lambda (_g2835128353_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop27489_
                                           _L28334_
                                           _g2835128353_
                                           _K27779_)))))
                                 (declare (not safe))
                                 (_loop27489_
                                  _L28336_
                                  _vars27778_
                                  __tmp49638))))
                            (___kont4512745128_
                             (lambda (_L28270_ _L28272_)
                               (let ((__tmp49639
                                      (lambda (_g2828728289_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop27489_
                                           _L28270_
                                           _g2828728289_
                                           _K27779_)))))
                                 (declare (not safe))
                                 (_loop27489_
                                  _L28272_
                                  _vars27778_
                                  __tmp49639))))
                            (___kont4512945130_
                             (lambda (_L28215_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27489_ _L28215_ _vars27778_ _K27779_))))
                            (___kont4513145132_
                             (lambda (_L28165_ _L28167_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector27491_
                                  _L28165_
                                  _vars27778_
                                  _K27779_))))
                            (___kont4513345134_
                             (lambda (_L28122_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector27491_
                                  _L28122_
                                  _vars27778_
                                  _K27779_))))
                            (___kont4513545136_
                             (lambda (_L28065_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-class-list27493_
                                  _L28065_
                                  _vars27778_
                                  _K27779_))))
                            (___kont4513745138_
                             (lambda (_L28006_ _L28008_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27489_ _L28006_ _vars27778_ _K27779_))))
                            (___kont4513945140_
                             (lambda (_L27944_)
                               (if (let ((__tmp49640
                                          (lambda (_g2795927961_)
                                            (gx#bound-identifier=?
                                             _g2795927961_
                                             _L27944_))))
                                     (declare (not safe))
                                     (find __tmp49640 _vars27778_))
                                   (_K27779_ _vars27778_)
                                   (_K27779_
                                    (let ()
                                      (declare (not safe))
                                      (cons _L27944_ _vars27778_))))))
                            (___kont4514145142_
                             (lambda () (_K27779_ _vars27778_))))
                        (let* ((___match4527345274_
                                (lambda (_e2785128145_
                                         _hd2785028149_
                                         _tl2784928152_
                                         _e2785428155_
                                         _hd2785328159_
                                         _tl2785228162_)
                                  (let ((_L28165_ _hd2785328159_)
                                        (_L28167_ _hd2785028149_))
                                    (if (or (gx#stx-eq? 'values: _L28167_)
                                            (gx#stx-eq? 'vector: _L28167_))
                                        (___kont4513145132_ _L28165_ _L28167_)
                                        (if (gx#stx-datum? _hd2785028149_)
                                            (let ((_e2785928098_
                                                   (gx#stx-e _hd2785028149_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e2785928098_
                                                            'struct:))
                                                  (___kont4514145142_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e2785928098_
                                                                'class:))
                                                      (___kont4514145142_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e2785928098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'apply:))
                  (___kont4514145142_)
                  (if (let ()
                        (declare (not safe))
                        (equal? _e2785928098_ 'var:))
                      (___kont4513945140_ _hd2785328159_)
                      (___kont4514145142_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont4514145142_))))))
                               (___match4516745168_
                                (lambda (_e2780628409_
                                         _hd2780528413_
                                         _tl2780428416_)
                                  (let ((_L28419_ _tl2780428416_)
                                        (_L28421_ _hd2780528413_))
                                    (if (or (gx#stx-eq? 'and: _L28421_)
                                            (gx#stx-eq? 'or: _L28421_))
                                        (___kont4512145122_ _L28419_ _L28421_)
                                        (if (gx#stx-datum? _hd2780528413_)
                                            (let ((_e2781128374_
                                                   (gx#stx-e _hd2780528413_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e2781128374_
                                                            'not:))
                                                  (if (gx#stx-pair?
                                                       _tl2780428416_)
                                                      (let ((_e2781428378_
                                                             (gx#syntax-e
                                                              _tl2780428416_)))
                                                        (let ((_tl2781228385_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2781428378_)))
                      (_hd2781328382_
                       (let () (declare (not safe)) (##car _e2781428378_))))
                  (if (gx#stx-null? _tl2781228385_)
                      (___kont4512345124_ _hd2781328382_)
                      (___kont4514145142_))))
              (___kont4514145142_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e2781128374_
                                                                'cons:))
                                                      (if (gx#stx-pair?
                                                           _tl2780428416_)
                                                          (let ((_e2782328314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2780428416_)))
                    (let ((_tl2782128321_
                           (let () (declare (not safe)) (##cdr _e2782328314_)))
                          (_hd2782228318_
                           (let ()
                             (declare (not safe))
                             (##car _e2782328314_))))
                      (if (gx#stx-pair? _tl2782128321_)
                          (let ((_e2782628324_ (gx#syntax-e _tl2782128321_)))
                            (let ((_tl2782428331_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2782628324_)))
                                  (_hd2782528328_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2782628324_))))
                              (if (gx#stx-null? _tl2782428331_)
                                  (___kont4512545126_
                                   _hd2782528328_
                                   _hd2782228318_)
                                  (___kont4514145142_))))
                          (if (gx#stx-null? _tl2782128321_)
                              (___match4527345274_
                               _e2780628409_
                               _hd2780528413_
                               _tl2780428416_
                               _e2782328314_
                               _hd2782228318_
                               _tl2782128321_)
                              (___kont4514145142_)))))
                  (___kont4514145142_))
              (if (let () (declare (not safe)) (equal? _e2781128374_ 'splice:))
                  (if (gx#stx-pair? _tl2780428416_)
                      (let ((_e2783528250_ (gx#syntax-e _tl2780428416_)))
                        (let ((_tl2783328257_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2783528250_)))
                              (_hd2783428254_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2783528250_))))
                          (if (gx#stx-pair? _tl2783328257_)
                              (let ((_e2783828260_
                                     (gx#syntax-e _tl2783328257_)))
                                (let ((_tl2783628267_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2783828260_)))
                                      (_hd2783728264_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2783828260_))))
                                  (if (gx#stx-null? _tl2783628267_)
                                      (___kont4512745128_
                                       _hd2783728264_
                                       _hd2783428254_)
                                      (___kont4514145142_))))
                              (if (gx#stx-null? _tl2783328257_)
                                  (___match4527345274_
                                   _e2780628409_
                                   _hd2780528413_
                                   _tl2780428416_
                                   _e2783528250_
                                   _hd2783428254_
                                   _tl2783328257_)
                                  (___kont4514145142_)))))
                      (___kont4514145142_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e2781128374_ 'box:))
                      (if (gx#stx-pair? _tl2780428416_)
                          (let ((_e2784628205_ (gx#syntax-e _tl2780428416_)))
                            (let ((_tl2784428212_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2784628205_)))
                                  (_hd2784528209_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2784628205_))))
                              (if (gx#stx-null? _tl2784428212_)
                                  (___kont4512945130_ _hd2784528209_)
                                  (___kont4514145142_))))
                          (___kont4514145142_))
                      (if (gx#stx-pair? _tl2780428416_)
                          (let ((_e2785428155_ (gx#syntax-e _tl2780428416_)))
                            (let ((_tl2785228162_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2785428155_)))
                                  (_hd2785328159_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2785428155_))))
                              (if (gx#stx-null? _tl2785228162_)
                                  (___match4527345274_
                                   _e2780628409_
                                   _hd2780528413_
                                   _tl2780428416_
                                   _e2785428155_
                                   _hd2785328159_
                                   _tl2785228162_)
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e2781128374_ 'struct:))
                                      (if (gx#stx-pair? _tl2785228162_)
                                          (let ((_e2786528112_
                                                 (gx#syntax-e _tl2785228162_)))
                                            (let ((_tl2786328119_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2786528112_)))
                                                  (_hd2786428116_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2786528112_))))
                                              (if (gx#stx-null? _tl2786328119_)
                                                  (___kont4513345134_
                                                   _hd2786428116_)
                                                  (___kont4514145142_))))
                                          (___kont4514145142_))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2781128374_ 'class:))
                                          (if (gx#stx-pair? _tl2785228162_)
                                              (let ((_e2787628055_
                                                     (gx#syntax-e
                                                      _tl2785228162_)))
                                                (let ((_tl2787428062_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2787628055_)))
                                                      (_hd2787528059_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2787628055_))))
                                                  (if (gx#stx-null?
                                                       _tl2787428062_)
                                                      (___kont4513545136_
                                                       _hd2787528059_)
                                                      (___kont4514145142_))))
                                              (___kont4514145142_))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e2781128374_ 'apply:))
                                              (if (gx#stx-pair? _tl2785228162_)
                                                  (let ((_e2788827996_
                                                         (gx#syntax-e
                                                          _tl2785228162_)))
                                                    (let ((_tl2788628003_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2788827996_)))
                                                          (_hd2788728000_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2788827996_))))
                                                      (if (gx#stx-null?
                                                           _tl2788628003_)
                                                          (___kont4513745138_
                                                           _hd2788728000_
                                                           _hd2785328159_)
                                                          (___kont4514145142_))))
                                                  (___kont4514145142_))
                                              (___kont4514145142_)))))))
                          (___kont4514145142_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl2780428416_)
                                                (let ((_e2785428155_
                                                       (gx#syntax-e
                                                        _tl2780428416_)))
                                                  (let ((_tl2785228162_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2785428155_)))
                                                        (_hd2785328159_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2785428155_))))
                                                    (if (gx#stx-null?
                                                         _tl2785228162_)
                                                        (___match4527345274_
                                                         _e2780628409_
                                                         _hd2780528413_
                                                         _tl2780428416_
                                                         _e2785428155_
                                                         _hd2785328159_
                                                         _tl2785228162_)
                                                        (___kont4514145142_))))
                                                (___kont4514145142_))))))))
                          (if (gx#stx-pair? ___stx4511645117_)
                              (let ((_e2779728508_
                                     (gx#syntax-e ___stx4511645117_)))
                                (let ((_tl2779528515_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2779728508_)))
                                      (_hd2779628512_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2779728508_))))
                                  (if (gx#stx-datum? _hd2779628512_)
                                      (let ((_e2779828518_
                                             (gx#stx-e _hd2779628512_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e2779828518_ '?:))
                                            (if (gx#stx-pair? _tl2779528515_)
                                                (let ((_e2780128522_
                                                       (gx#syntax-e
                                                        _tl2779528515_)))
                                                  (let ((_tl2779928529_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2780128522_)))
                                                        (_hd2780028526_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2780128522_))))
                                                    (___kont4511945120_
                                                     _tl2779928529_)))
                                                (___match4516745168_
                                                 _e2779728508_
                                                 _hd2779628512_
                                                 _tl2779528515_))
                                            (___match4516745168_
                                             _e2779728508_
                                             _hd2779628512_
                                             _tl2779528515_)))
                                      (___match4516745168_
                                       _e2779728508_
                                       _hd2779628512_
                                       _tl2779528515_))))
                              (___kont4514145142_)))))))
                 (_loop-vector27491_
                  (lambda (_body27652_ _vars27654_ _K27655_)
                    (let* ((___stx4537445375_ _body27652_)
                           (_g2765827681_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4537445375_))))
                      (let ((___kont4537745378_
                             (lambda (_L27758_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-list27492_
                                  _L27758_
                                  _vars27654_
                                  _K27655_))))
                            (___kont4537945380_
                             (lambda (_L27712_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27489_
                                  _L27712_
                                  _vars27654_
                                  _K27655_)))))
                        (if (gx#stx-pair? ___stx4537445375_)
                            (let ((_e2766327734_
                                   (gx#syntax-e ___stx4537445375_)))
                              (let ((_tl2766127741_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2766327734_)))
                                    (_hd2766227738_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2766327734_))))
                                (if (gx#stx-datum? _hd2766227738_)
                                    (let ((_e2766427744_
                                           (gx#stx-e _hd2766227738_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2766427744_ 'simple:))
                                          (if (gx#stx-pair? _tl2766127741_)
                                              (let ((_e2766727748_
                                                     (gx#syntax-e
                                                      _tl2766127741_)))
                                                (let ((_tl2766527755_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2766727748_)))
                                                      (_hd2766627752_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2766727748_))))
                                                  (if (gx#stx-null?
                                                       _tl2766527755_)
                                                      (___kont4537745378_
                                                       _hd2766627752_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2765827681_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2765827681_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e2766427744_ 'list:))
                                              (if (gx#stx-pair? _tl2766127741_)
                                                  (let ((_e2767527702_
                                                         (gx#syntax-e
                                                          _tl2766127741_)))
                                                    (let ((_tl2767327709_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2767527702_)))
                                                          (_hd2767427706_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2767527702_))))
                                                      (if (gx#stx-null?
                                                           _tl2767327709_)
                                                          (___kont4537945380_
                                                           _hd2767427706_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g2765827681_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2765827681_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2765827681_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2765827681_)))))
                            (let () (declare (not safe)) (_g2765827681_)))))))
                 (_loop-list27492_
                  (lambda (_rest27582_ _vars27584_ _K27585_)
                    (let* ((___stx4542445425_ _rest27582_)
                           (_g2758827600_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4542445425_))))
                      (let ((___kont4542745428_
                             (lambda (_L27628_ _L27630_)
                               (let ((__tmp49641
                                      (lambda (_g2764227644_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-list27492_
                                           _L27628_
                                           _g2764227644_
                                           _K27585_)))))
                                 (declare (not safe))
                                 (_loop27489_
                                  _L27630_
                                  _vars27584_
                                  __tmp49641))))
                            (___kont4542945430_
                             (lambda () (_K27585_ _vars27584_))))
                        (if (gx#stx-pair? ___stx4542445425_)
                            (let ((_e2759427618_
                                   (gx#syntax-e ___stx4542445425_)))
                              (let ((_tl2759227625_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2759427618_)))
                                    (_hd2759327622_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2759427618_))))
                                (___kont4542745428_
                                 _tl2759227625_
                                 _hd2759327622_)))
                            (___kont4542945430_))))))
                 (_loop-class-list27493_
                  (lambda (_rest27495_ _vars27497_ _K27498_)
                    (let* ((___stx4544045441_ _rest27495_)
                           (_g2750127516_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4544045441_))))
                      (let ((___kont4544345444_
                             (lambda (_L27554_ _L27556_)
                               (let ((__tmp49642
                                      (lambda (_g2757227574_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-class-list27493_
                                           _L27554_
                                           _g2757227574_
                                           _K27498_)))))
                                 (declare (not safe))
                                 (_loop27489_
                                  _L27556_
                                  _vars27497_
                                  __tmp49642))))
                            (___kont4544545446_
                             (lambda () (_K27498_ _vars27497_))))
                        (if (gx#stx-pair? ___stx4544045441_)
                            (let ((_e2750727534_
                                   (gx#syntax-e ___stx4544045441_)))
                              (let ((_tl2750527541_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2750727534_)))
                                    (_hd2750627538_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2750727534_))))
                                (if (gx#stx-pair? _tl2750527541_)
                                    (let ((_e2751027544_
                                           (gx#syntax-e _tl2750527541_)))
                                      (let ((_tl2750827551_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2751027544_)))
                                            (_hd2750927548_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2751027544_))))
                                        (___kont4544345444_
                                         _tl2750827551_
                                         _hd2750927548_)))
                                    (___kont4544545446_))))
                            (___kont4544545446_)))))))
          (let ()
            (declare (not safe))
            (_loop27489_ _ptree27486_ '() values)))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx24447_ _tgt24449_ _ptree24450_ _K24451_ _E24452_)
        (letrec ((_generate124454_
                  (lambda (_tgt25699_ _ptree25701_ _K25702_ _E25703_)
                    (let* ((_g2570525713_
                            (lambda (_g2570625709_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2570625709_)))
                           (_g2570427482_
                            (lambda (_g2570625717_)
                              ((lambda (_L25720_)
                                 (let ()
                                   (let* ((___stx4567645677_ _ptree25701_)
                                          (_g2574725889_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx4567645677_))))
                                     (let ((___kont4567945680_
                                            (lambda (_L27197_ _L27199_)
                                              (let* ((___stx4559445595_
                                                      _L27197_)
                                                     (_g2721627251_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4559445595_))))
                                                (let ((___kont4559745598_
                                                       (lambda ()
                                                         (let ((__tmp49643
                                                                (let ((__tmp49646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49649 (gx#datum->syntax '#f '?))
                                     (__tmp49647
                                      (let ((__tmp49648
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25720_ '()))))
                                        (declare (not safe))
                                        (cons _L27199_ __tmp49648))))
                                 (declare (not safe))
                                 (cons __tmp49649 __tmp49647)))
                              (__tmp49644
                               (let ((__tmp49645
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25703_ '()))))
                                 (declare (not safe))
                                 (cons _K25702_ __tmp49645))))
                          (declare (not safe))
                          (cons __tmp49646 __tmp49644))))
                   (declare (not safe))
                   (cons 'if __tmp49643))))
              (___kont4559945600_
               (lambda (_L27452_)
                 (let ((__tmp49650
                        (let ((__tmp49654
                               (let ((__tmp49657 (gx#datum->syntax '#f '?))
                                     (__tmp49655
                                      (let ((__tmp49656
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25720_ '()))))
                                        (declare (not safe))
                                        (cons _L27199_ __tmp49656))))
                                 (declare (not safe))
                                 (cons __tmp49657 __tmp49655)))
                              (__tmp49651
                               (let ((__tmp49653
                                      (let ()
                                        (declare (not safe))
                                        (_generate124454_
                                         _tgt25699_
                                         _L27452_
                                         _K25702_
                                         _E25703_)))
                                     (__tmp49652
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25703_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49653 __tmp49652))))
                          (declare (not safe))
                          (cons __tmp49654 __tmp49651))))
                   (declare (not safe))
                   (cons 'if __tmp49650))))
              (___kont4560145602_
               (lambda (_L27390_)
                 (let* ((_g2740427412_
                         (lambda (_g2740527408_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2740527408_)))
                        (_g2740327431_
                         (lambda (_g2740527416_)
                           ((lambda (_L27419_)
                              (let ()
                                (let ((__tmp49658
                                       (let ((__tmp49665
                                              (let ((__tmp49666
                                                     (let ((__tmp49667
                                                            (let ((__tmp49668
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49669
                                  (let ()
                                    (declare (not safe))
                                    (cons _L25720_ '()))))
                             (declare (not safe))
                             (cons _L27199_ __tmp49669))))
                      (declare (not safe))
                      (cons __tmp49668 '()))))
               (declare (not safe))
               (cons _L27419_ __tmp49667))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49666 '())))
                                             (__tmp49659
                                              (let ((__tmp49660
                                                     (let ((__tmp49661
                                                            (let ((__tmp49662
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49664
                                  (let ()
                                    (declare (not safe))
                                    (_generate124454_
                                     _L27419_
                                     _L27390_
                                     _K25702_
                                     _E25703_)))
                                 (__tmp49663
                                  (let ()
                                    (declare (not safe))
                                    (cons _E25703_ '()))))
                             (declare (not safe))
                             (cons __tmp49664 __tmp49663))))
                      (declare (not safe))
                      (cons _L27419_ __tmp49662))))
               (declare (not safe))
               (cons 'if __tmp49661))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49660 '()))))
                                         (declare (not safe))
                                         (cons __tmp49665 __tmp49659))))
                                  (declare (not safe))
                                  (cons 'let __tmp49658))))
                            _g2740527416_)))
                        (__tmp49670 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2740327431_ __tmp49670))))
              (___kont4560345604_
               (lambda (_L27306_ _L27308_)
                 (let* ((_g2732827336_
                         (lambda (_g2732927332_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2732927332_)))
                        (_g2732727355_
                         (lambda (_g2732927340_)
                           ((lambda (_L27343_)
                              (let ()
                                (let ((__tmp49671
                                       (let ((__tmp49683
                                              (let ((__tmp49686
                                                     (gx#datum->syntax '#f '?))
                                                    (__tmp49684
                                                     (let ((__tmp49685
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L25720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L27199_ __tmp49685))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49686 __tmp49684)))
                                             (__tmp49672
                                              (let ((__tmp49674
                                                     (let ((__tmp49675
                                                            (let ((__tmp49678
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49679
                                  (let ((__tmp49680
                                         (let ((__tmp49681
                                                (let ((__tmp49682
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L25720_ '()))))
                                                  (declare (not safe))
                                                  (cons _L27308_ __tmp49682))))
                                           (declare (not safe))
                                           (cons __tmp49681 '()))))
                                    (declare (not safe))
                                    (cons _L27343_ __tmp49680))))
                             (declare (not safe))
                             (cons __tmp49679 '())))
                          (__tmp49676
                           (let ((__tmp49677
                                  (let ()
                                    (declare (not safe))
                                    (_generate124454_
                                     _L27343_
                                     _L27306_
                                     _K25702_
                                     _E25703_))))
                             (declare (not safe))
                             (cons __tmp49677 '()))))
                      (declare (not safe))
                      (cons __tmp49678 __tmp49676))))
               (declare (not safe))
               (cons 'let __tmp49675)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp49673
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25703_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49674 __tmp49673))))
                                         (declare (not safe))
                                         (cons __tmp49683 __tmp49672))))
                                  (declare (not safe))
                                  (cons 'if __tmp49671))))
                            _g2732927340_)))
                        (__tmp49687 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2732727355_ __tmp49687)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g2721327463_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                ___stx4559445595_)
                                                               (let ((_e2722127442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e ___stx4559445595_)))
                         (let ((_tl2721927449_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2722127442_)))
                               (_hd2722027446_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2722127442_))))
                           (if (gx#stx-null? _tl2721927449_)
                               (___kont4559945600_ _hd2722027446_)
                               (if (gx#stx-datum? _hd2722027446_)
                                   (let ((_e2722627376_
                                          (gx#stx-e _hd2722027446_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e2722627376_ '=>:))
                                         (if (gx#stx-pair? _tl2721927449_)
                                             (let ((_e2722927380_
                                                    (gx#syntax-e
                                                     _tl2721927449_)))
                                               (let ((_tl2722727387_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2722927380_)))
                                                     (_hd2722827384_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2722927380_))))
                                                 (if (gx#stx-null?
                                                      _tl2722727387_)
                                                     (___kont4560145602_
                                                      _hd2722827384_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2721627251_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2721627251_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (equal? _e2722627376_ '::))
                                             (if (gx#stx-pair? _tl2721927449_)
                                                 (let ((_e2723827272_
                                                        (gx#syntax-e
                                                         _tl2721927449_)))
                                                   (let ((_tl2723627279_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2723827272_)))
                                                         (_hd2723727276_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2723827272_))))
                                                     (if (gx#stx-pair?
                                                          _tl2723627279_)
                                                         (let ((_e2724127282_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2723627279_)))
                   (let ((_tl2723927289_
                          (let () (declare (not safe)) (##cdr _e2724127282_)))
                         (_hd2724027286_
                          (let () (declare (not safe)) (##car _e2724127282_))))
                     (if (gx#stx-datum? _hd2724027286_)
                         (let ((_e2724227292_ (gx#stx-e _hd2724027286_)))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e2724227292_ '=>:))
                               (if (gx#stx-pair? _tl2723927289_)
                                   (let ((_e2724527296_
                                          (gx#syntax-e _tl2723927289_)))
                                     (let ((_tl2724327303_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2724527296_)))
                                           (_hd2724427300_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2724527296_))))
                                       (if (gx#stx-null? _tl2724327303_)
                                           (___kont4560345604_
                                            _hd2724427300_
                                            _hd2723727276_)
                                           (let ()
                                             (declare (not safe))
                                             (_g2721627251_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2721627251_)))
                               (let () (declare (not safe)) (_g2721627251_))))
                         (let () (declare (not safe)) (_g2721627251_)))))
                 (let () (declare (not safe)) (_g2721627251_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2721627251_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g2721627251_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2721627251_))))))
                       (let () (declare (not safe)) (_g2721627251_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         ___stx4559445595_)
                                                        (___kont4559745598_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g2721327463_))))))))
                                           (___kont4568145682_
                                            (lambda (_L27094_)
                                              (let* ((___stx4557845579_
                                                      _L27094_)
                                                     (_g2710727119_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4557845579_))))
                                                (let ((___kont4558145582_
                                                       (lambda (_L27147_
                                                                _L27149_)
                                                         (let ((__tmp49688
                                                                (let ((__tmp49689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'and: _L27147_))))
                          (declare (not safe))
                          (_generate124454_
                           _tgt25699_
                           __tmp49689
                           _K25702_
                           _E25703_))))
                   (declare (not safe))
                   (_generate124454_
                    _tgt25699_
                    _L27149_
                    __tmp49688
                    _E25703_))))
              (___kont4558345584_ (lambda () _K25702_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4557845579_)
                                                      (let ((_e2711327137_
                                                             (gx#syntax-e
                                                              ___stx4557845579_)))
                                                        (let ((_tl2711127144_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2711327137_)))
                      (_hd2711227141_
                       (let () (declare (not safe)) (##car _e2711327137_))))
                  (___kont4558145582_ _tl2711127144_ _hd2711227141_)))
              (___kont4558345584_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4568345684_
                                            (lambda (_L27001_)
                                              (let* ((___stx4556245563_
                                                      _L27001_)
                                                     (_g2701427026_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4556245563_))))
                                                (let ((___kont4556545566_
                                                       (lambda (_L27054_
                                                                _L27056_)
                                                         (let ((__tmp49690
                                                                (let ((__tmp49691
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'or: _L27054_))))
                          (declare (not safe))
                          (_generate124454_
                           _tgt25699_
                           __tmp49691
                           _K25702_
                           _E25703_))))
                   (declare (not safe))
                   (_generate124454_
                    _tgt25699_
                    _L27056_
                    _K25702_
                    __tmp49690))))
              (___kont4556745568_ (lambda () _E25703_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4556245563_)
                                                      (let ((_e2702027044_
                                                             (gx#syntax-e
                                                              ___stx4556245563_)))
                                                        (let ((_tl2701827051_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2702027044_)))
                      (_hd2701927048_
                       (let () (declare (not safe)) (##car _e2702027044_))))
                  (___kont4556545566_ _tl2701827051_ _hd2701927048_)))
              (___kont4556745568_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4568545686_
                                            (lambda (_L26966_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate124454_
                                                 _tgt25699_
                                                 _L26966_
                                                 _E25703_
                                                 _K25702_))))
                                           (___kont4568745688_
                                            (lambda (_L26848_ _L26850_)
                                              (let* ((_g2686726882_
                                                      (lambda (_g2686826878_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2686826878_)))
                                                     (_g2686626931_
                                                      (lambda (_g2686826886_)
                                                        (if (gx#stx-pair?
                                                             _g2686826886_)
                                                            (let ((_e2687326889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2686826886_)))
                      (let ((_hd2687226893_
                             (let ()
                               (declare (not safe))
                               (##car _e2687326889_)))
                            (_tl2687126896_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2687326889_))))
                        (if (gx#stx-pair? _tl2687126896_)
                            (let ((_e2687626899_ (gx#syntax-e _tl2687126896_)))
                              (let ((_hd2687526903_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2687626899_)))
                                    (_tl2687426906_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2687626899_))))
                                (if (gx#stx-null? _tl2687426906_)
                                    ((lambda (_L26909_ _L26911_)
                                       (let ()
                                         (let ((__tmp49692
                                                (let ((__tmp49730
                                                       (let ((__tmp49732
                                                              (gx#datum->syntax
                                                               '#f
                                                               '##pair?))
                                                             (__tmp49731
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L25720_ '()))))
                 (declare (not safe))
                 (cons __tmp49732 __tmp49731)))
              (__tmp49693
               (let ((__tmp49695
                      (let ((_hd-pat26927_ (gx#stx-e _L26850_))
                            (_tl-pat26929_ (gx#stx-e _L26848_)))
                        (if (and (let ()
                                   (declare (not safe))
                                   (equal? _hd-pat26927_ '(any:)))
                                 (let ()
                                   (declare (not safe))
                                   (equal? _tl-pat26929_ '(any:))))
                            _K25702_
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _tl-pat26929_ '(any:)))
                                (let ((__tmp49721
                                       (let ((__tmp49724
                                              (let ((__tmp49725
                                                     (let ((__tmp49726
                                                            (let ((__tmp49727
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49729 (gx#datum->syntax '#f '##car))
                                 (__tmp49728
                                  (let ()
                                    (declare (not safe))
                                    (cons _L25720_ '()))))
                             (declare (not safe))
                             (cons __tmp49729 __tmp49728))))
                      (declare (not safe))
                      (cons __tmp49727 '()))))
               (declare (not safe))
               (cons _L26911_ __tmp49726))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49725 '())))
                                             (__tmp49722
                                              (let ((__tmp49723
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate124454_
                                                        _L26911_
                                                        _L26850_
                                                        _K25702_
                                                        _E25703_))))
                                                (declare (not safe))
                                                (cons __tmp49723 '()))))
                                         (declare (not safe))
                                         (cons __tmp49724 __tmp49722))))
                                  (declare (not safe))
                                  (cons 'let __tmp49721))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _hd-pat26927_ '(any:)))
                                    (let ((__tmp49712
                                           (let ((__tmp49715
                                                  (let ((__tmp49716
                                                         (let ((__tmp49717
                                                                (let ((__tmp49718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49720 (gx#datum->syntax '#f '##cdr))
                                     (__tmp49719
                                      (let ()
                                        (declare (not safe))
                                        (cons _L25720_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49720 __tmp49719))))
                          (declare (not safe))
                          (cons __tmp49718 '()))))
                   (declare (not safe))
                   (cons _L26909_ __tmp49717))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49716 '())))
                                                 (__tmp49713
                                                  (let ((__tmp49714
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate124454_
                                                            _L26909_
                                                            _L26848_
                                                            _K25702_
                                                            _E25703_))))
                                                    (declare (not safe))
                                                    (cons __tmp49714 '()))))
                                             (declare (not safe))
                                             (cons __tmp49715 __tmp49713))))
                                      (declare (not safe))
                                      (cons 'let __tmp49712))
                                    (let ((__tmp49696
                                           (let ((__tmp49700
                                                  (let ((__tmp49707
                                                         (let ((__tmp49708
                                                                (let ((__tmp49709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49711 (gx#datum->syntax '#f '##car))
                                     (__tmp49710
                                      (let ()
                                        (declare (not safe))
                                        (cons _L25720_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49711 __tmp49710))))
                          (declare (not safe))
                          (cons __tmp49709 '()))))
                   (declare (not safe))
                   (cons _L26911_ __tmp49708)))
                (__tmp49701
                 (let ((__tmp49702
                        (let ((__tmp49703
                               (let ((__tmp49704
                                      (let ((__tmp49706
                                             (gx#datum->syntax '#f '##cdr))
                                            (__tmp49705
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25720_ '()))))
                                        (declare (not safe))
                                        (cons __tmp49706 __tmp49705))))
                                 (declare (not safe))
                                 (cons __tmp49704 '()))))
                          (declare (not safe))
                          (cons _L26909_ __tmp49703))))
                   (declare (not safe))
                   (cons __tmp49702 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49707
                                                          __tmp49701)))
                                                 (__tmp49697
                                                  (let ((__tmp49698
                                                         (let ((__tmp49699
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_generate124454_
                           _L26909_
                           _L26848_
                           _K25702_
                           _E25703_))))
                   (declare (not safe))
                   (_generate124454_ _L26911_ _L26850_ __tmp49699 _E25703_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49698 '()))))
                                             (declare (not safe))
                                             (cons __tmp49700 __tmp49697))))
                                      (declare (not safe))
                                      (cons 'let __tmp49696)))))))
                     (__tmp49694
                      (let () (declare (not safe)) (cons _E25703_ '()))))
                 (declare (not safe))
                 (cons __tmp49695 __tmp49694))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49730
                                                        __tmp49693))))
                                           (declare (not safe))
                                           (cons 'if __tmp49692))))
                                     _hd2687526903_
                                     _hd2687226893_)
                                    (let ()
                                      (declare (not safe))
                                      (_g2686726882_ _g2686826886_)))))
                            (let ()
                              (declare (not safe))
                              (_g2686726882_ _g2686826886_)))))
                    (let ()
                      (declare (not safe))
                      (_g2686726882_ _g2686826886_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49733
                                                      (list (gx#genident 'hd)
                                                            (gx#genident
                                                             'tl))))
                                                (declare (not safe))
                                                (_g2686626931_ __tmp49733))))
                                           (___kont4568945690_
                                            (lambda ()
                                              (let ((__tmp49734
                                                     (let ((__tmp49737
                                                            (let ((__tmp49739
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##null?))
                          (__tmp49738
                           (let () (declare (not safe)) (cons _L25720_ '()))))
                      (declare (not safe))
                      (cons __tmp49739 __tmp49738)))
                   (__tmp49735
                    (let ((__tmp49736
                           (let () (declare (not safe)) (cons _E25703_ '()))))
                      (declare (not safe))
                      (cons _K25702_ __tmp49736))))
               (declare (not safe))
               (cons __tmp49737 __tmp49735))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'if __tmp49734))))
                                           (___kont4569145692_
                                            (lambda (_L26764_ _L26766_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate-splice24456_
                                                 _tgt25699_
                                                 _L26766_
                                                 _L26764_
                                                 _K25702_
                                                 _E25703_))))
                                           (___kont4569345694_
                                            (lambda (_L26678_)
                                              (let* ((_g2669226700_
                                                      (lambda (_g2669326696_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2669326696_)))
                                                     (_g2669126719_
                                                      (lambda (_g2669326704_)
                                                        ((lambda (_L26707_)
                                                           (let ()
                                                             (let ((__tmp49740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49753
                                   (let ((__tmp49755
                                          (gx#datum->syntax '#f '##box?))
                                         (__tmp49754
                                          (let ()
                                            (declare (not safe))
                                            (cons _L25720_ '()))))
                                     (declare (not safe))
                                     (cons __tmp49755 __tmp49754)))
                                  (__tmp49741
                                   (let ((__tmp49743
                                          (let ((__tmp49744
                                                 (let ((__tmp49747
                                                        (let ((__tmp49748
                                                               (let ((__tmp49749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp49750
                                     (let ((__tmp49752
                                            (gx#datum->syntax '#f '##unbox))
                                           (__tmp49751
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25720_ '()))))
                                       (declare (not safe))
                                       (cons __tmp49752 __tmp49751))))
                                (declare (not safe))
                                (cons __tmp49750 '()))))
                         (declare (not safe))
                         (cons _L26707_ __tmp49749))))
                  (declare (not safe))
                  (cons __tmp49748 '())))
               (__tmp49745
                (let ((__tmp49746
                       (let ()
                         (declare (not safe))
                         (_generate124454_
                          _L26707_
                          _L26678_
                          _K25702_
                          _E25703_))))
                  (declare (not safe))
                  (cons __tmp49746 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49747
                                                         __tmp49745))))
                                            (declare (not safe))
                                            (cons 'let __tmp49744)))
                                         (__tmp49742
                                          (let ()
                                            (declare (not safe))
                                            (cons _E25703_ '()))))
                                     (declare (not safe))
                                     (cons __tmp49743 __tmp49742))))
                              (declare (not safe))
                              (cons __tmp49753 __tmp49741))))
                       (declare (not safe))
                       (cons 'if __tmp49740))))
                 _g2669326704_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49756
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2669126719_ __tmp49756))))
                                           (___kont4569545696_
                                            (lambda (_L26483_)
                                              (let* ((___stx4551245513_
                                                      _L26483_)
                                                     (_g2649826521_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4551245513_))))
                                                (let ((___kont4551545516_
                                                       (lambda (_L26598_)
                                                         (let* ((_g2661226620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2661326616_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2661326616_)))
                        (_g2661126639_
                         (lambda (_g2661326624_)
                           ((lambda (_L26627_)
                              (let ()
                                (let ((__tmp49757
                                       (let ((__tmp49761
                                              (let ((__tmp49767
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##fx=))
                                                    (__tmp49762
                                                     (let ((__tmp49764
                                                            (let ((__tmp49766
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'values-count))
                          (__tmp49765
                           (let () (declare (not safe)) (cons _L25720_ '()))))
                      (declare (not safe))
                      (cons __tmp49766 __tmp49765)))
                   (__tmp49763
                    (let () (declare (not safe)) (cons _L26627_ '()))))
               (declare (not safe))
               (cons __tmp49764 __tmp49763))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49767 __tmp49762)))
                                             (__tmp49758
                                              (let ((__tmp49760
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-vector24457_
                                                        _tgt25699_
                                                        _L26598_
                                                        '0
                                                        _K25702_
                                                        _E25703_)))
                                                    (__tmp49759
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25703_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49760 __tmp49759))))
                                         (declare (not safe))
                                         (cons __tmp49761 __tmp49758))))
                                  (declare (not safe))
                                  (cons 'if __tmp49757))))
                            _g2661326624_)))
                        (__tmp49768 (gx#stx-length _L26598_)))
                   (declare (not safe))
                   (_g2661126639_ __tmp49768))))
              (___kont4551745518_
               (lambda (_L26552_)
                 (let ()
                   (declare (not safe))
                   (_generate-list-vector24458_
                    _tgt25699_
                    _L26552_
                    'values->list
                    _K25702_
                    _E25703_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4551245513_)
                                                      (let ((_e2650326574_
                                                             (gx#syntax-e
                                                              ___stx4551245513_)))
                                                        (let ((_tl2650126581_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2650326574_)))
                      (_hd2650226578_
                       (let () (declare (not safe)) (##car _e2650326574_))))
                  (if (gx#stx-datum? _hd2650226578_)
                      (let ((_e2650426584_ (gx#stx-e _hd2650226578_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e2650426584_ 'simple:))
                            (if (gx#stx-pair? _tl2650126581_)
                                (let ((_e2650726588_
                                       (gx#syntax-e _tl2650126581_)))
                                  (let ((_tl2650526595_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2650726588_)))
                                        (_hd2650626592_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2650726588_))))
                                    (if (gx#stx-null? _tl2650526595_)
                                        (___kont4551545516_ _hd2650626592_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2649826521_)))))
                                (let () (declare (not safe)) (_g2649826521_)))
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _e2650426584_ 'list:))
                                (if (gx#stx-pair? _tl2650126581_)
                                    (let ((_e2651526542_
                                           (gx#syntax-e _tl2650126581_)))
                                      (let ((_tl2651326549_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2651526542_)))
                                            (_hd2651426546_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2651526542_))))
                                        (if (gx#stx-null? _tl2651326549_)
                                            (___kont4551745518_ _hd2651426546_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2649826521_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2649826521_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2649826521_)))))
                      (let () (declare (not safe)) (_g2649826521_)))))
              (let () (declare (not safe)) (_g2649826521_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4569745698_
                                            (lambda (_L26288_)
                                              (let* ((___stx4546245463_
                                                      _L26288_)
                                                     (_g2630326326_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4546245463_))))
                                                (let ((___kont4546545466_
                                                       (lambda (_L26403_)
                                                         (let* ((_g2641726425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2641826421_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2641826421_)))
                        (_g2641626444_
                         (lambda (_g2641826429_)
                           ((lambda (_L26432_)
                              (let ()
                                (let ((__tmp49769
                                       (let ((__tmp49784
                                              (let ((__tmp49786
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##vector?))
                                                    (__tmp49785
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L25720_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49786 __tmp49785)))
                                             (__tmp49770
                                              (let ((__tmp49772
                                                     (let ((__tmp49773
                                                            (let ((__tmp49777
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49783 (gx#datum->syntax '#f '##fx=))
                                 (__tmp49778
                                  (let ((__tmp49780
                                         (let ((__tmp49782
                                                (gx#datum->syntax
                                                 '#f
                                                 '##vector-length))
                                               (__tmp49781
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L25720_ '()))))
                                           (declare (not safe))
                                           (cons __tmp49782 __tmp49781)))
                                        (__tmp49779
                                         (let ()
                                           (declare (not safe))
                                           (cons _L26432_ '()))))
                                    (declare (not safe))
                                    (cons __tmp49780 __tmp49779))))
                             (declare (not safe))
                             (cons __tmp49783 __tmp49778)))
                          (__tmp49774
                           (let ((__tmp49776
                                  (let ()
                                    (declare (not safe))
                                    (_generate-simple-vector24457_
                                     _tgt25699_
                                     _L26403_
                                     '0
                                     _K25702_
                                     _E25703_)))
                                 (__tmp49775
                                  (let ()
                                    (declare (not safe))
                                    (cons _E25703_ '()))))
                             (declare (not safe))
                             (cons __tmp49776 __tmp49775))))
                      (declare (not safe))
                      (cons __tmp49777 __tmp49774))))
               (declare (not safe))
               (cons 'if __tmp49773)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp49771
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25703_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49772 __tmp49771))))
                                         (declare (not safe))
                                         (cons __tmp49784 __tmp49770))))
                                  (declare (not safe))
                                  (cons 'if __tmp49769))))
                            _g2641826429_)))
                        (__tmp49787 (gx#stx-length _L26403_)))
                   (declare (not safe))
                   (_g2641626444_ __tmp49787))))
              (___kont4546745468_
               (lambda (_L26357_)
                 (let ((__tmp49788
                        (let ((__tmp49792
                               (let ((__tmp49794
                                      (gx#datum->syntax '#f '##vector?))
                                     (__tmp49793
                                      (let ()
                                        (declare (not safe))
                                        (cons _L25720_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49794 __tmp49793)))
                              (__tmp49789
                               (let ((__tmp49791
                                      (let ()
                                        (declare (not safe))
                                        (_generate-list-vector24458_
                                         _tgt25699_
                                         _L26357_
                                         'vector->list
                                         _K25702_
                                         _E25703_)))
                                     (__tmp49790
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25703_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49791 __tmp49790))))
                          (declare (not safe))
                          (cons __tmp49792 __tmp49789))))
                   (declare (not safe))
                   (cons 'if __tmp49788)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4546245463_)
                                                      (let ((_e2630826379_
                                                             (gx#syntax-e
                                                              ___stx4546245463_)))
                                                        (let ((_tl2630626386_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2630826379_)))
                      (_hd2630726383_
                       (let () (declare (not safe)) (##car _e2630826379_))))
                  (if (gx#stx-datum? _hd2630726383_)
                      (let ((_e2630926389_ (gx#stx-e _hd2630726383_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e2630926389_ 'simple:))
                            (if (gx#stx-pair? _tl2630626386_)
                                (let ((_e2631226393_
                                       (gx#syntax-e _tl2630626386_)))
                                  (let ((_tl2631026400_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2631226393_)))
                                        (_hd2631126397_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2631226393_))))
                                    (if (gx#stx-null? _tl2631026400_)
                                        (___kont4546545466_ _hd2631126397_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2630326326_)))))
                                (let () (declare (not safe)) (_g2630326326_)))
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _e2630926389_ 'list:))
                                (if (gx#stx-pair? _tl2630626386_)
                                    (let ((_e2632026347_
                                           (gx#syntax-e _tl2630626386_)))
                                      (let ((_tl2631826354_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2632026347_)))
                                            (_hd2631926351_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2632026347_))))
                                        (if (gx#stx-null? _tl2631826354_)
                                            (___kont4546745468_ _hd2631926351_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2630326326_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2630326326_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2630326326_)))))
                      (let () (declare (not safe)) (_g2630326326_)))))
              (let () (declare (not safe)) (_g2630326326_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4569945700_
                                            (lambda (_L26239_ _L26241_)
                                              (let ((__tmp49795
                                                     (gx#stx-e _L26241_)))
                                                (declare (not safe))
                                                (_generate-struct24459_
                                                 __tmp49795
                                                 _tgt25699_
                                                 _L26239_
                                                 _K25702_
                                                 _E25703_))))
                                           (___kont4570145702_
                                            (lambda (_L26180_ _L26182_)
                                              (let ((__tmp49796
                                                     (gx#stx-e _L26182_)))
                                                (declare (not safe))
                                                (_generate-class24462_
                                                 __tmp49796
                                                 _tgt25699_
                                                 _L26180_
                                                 _K25702_
                                                 _E25703_))))
                                           (___kont4570345704_
                                            (lambda (_L26083_)
                                              (let* ((_g2609726105_
                                                      (lambda (_g2609826101_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2609826101_)))
                                                     (_g2609626124_
                                                      (lambda (_g2609826109_)
                                                        ((lambda (_L26112_)
                                                           (let ()
                                                             (let ((__tmp49797
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49800
                                   (let ((__tmp49801
                                          (let ((__tmp49802
                                                 (let ((__tmp49803
                                                        (let ((__tmp49805
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp49804
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L26083_ '()))))
                  (declare (not safe))
                  (cons __tmp49805 __tmp49804))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49803 '()))))
                                            (declare (not safe))
                                            (cons _L25720_ __tmp49802))))
                                     (declare (not safe))
                                     (cons _L26112_ __tmp49801)))
                                  (__tmp49798
                                   (let ((__tmp49799
                                          (let ()
                                            (declare (not safe))
                                            (cons _E25703_ '()))))
                                     (declare (not safe))
                                     (cons _K25702_ __tmp49799))))
                              (declare (not safe))
                              (cons __tmp49800 __tmp49798))))
                       (declare (not safe))
                       (cons 'if __tmp49797))))
                 _g2609826109_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49806
                                                      (let ((_e26128_
                                                             (gx#stx-e
                                                              _L26083_)))
                                                        (if (or (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (symbol? _e26128_))
                        (keyword? _e26128_)
                        (let () (declare (not safe)) (immediate? _e26128_)))
                    '##eq?
                    (if (let () (declare (not safe)) (number? _e26128_))
                        'eqv?
                        'equal?)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g2609626124_ __tmp49806))))
                                           (___kont4570545706_
                                            (lambda (_L26003_ _L26005_)
                                              (let* ((_g2602126029_
                                                      (lambda (_g2602226025_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2602226025_)))
                                                     (_g2602026048_
                                                      (lambda (_g2602226033_)
                                                        ((lambda (_L26036_)
                                                           (let ()
                                                             (let ((__tmp49807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49810
                                   (let ((__tmp49811
                                          (let ((__tmp49812
                                                 (let ((__tmp49813
                                                        (let ((__tmp49814
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L25720_ '()))))
                  (declare (not safe))
                  (cons _L26005_ __tmp49814))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49813 '()))))
                                            (declare (not safe))
                                            (cons _L26036_ __tmp49812))))
                                     (declare (not safe))
                                     (cons __tmp49811 '())))
                                  (__tmp49808
                                   (let ((__tmp49809
                                          (let ()
                                            (declare (not safe))
                                            (_generate124454_
                                             _L26036_
                                             _L26003_
                                             _K25702_
                                             _E25703_))))
                                     (declare (not safe))
                                     (cons __tmp49809 '()))))
                              (declare (not safe))
                              (cons __tmp49810 __tmp49808))))
                       (declare (not safe))
                       (cons 'let __tmp49807))))
                 _g2602226033_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49815
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2602026048_ __tmp49815))))
                                           (___kont4570745708_
                                            (lambda (_L25945_)
                                              (let ((__tmp49816
                                                     (let ((__tmp49818
                                                            (let ((__tmp49819
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49820
                                  (let ()
                                    (declare (not safe))
                                    (cons _L25720_ '()))))
                             (declare (not safe))
                             (cons _L25945_ __tmp49820))))
                      (declare (not safe))
                      (cons __tmp49819 '())))
                   (__tmp49817
                    (let () (declare (not safe)) (cons _K25702_ '()))))
               (declare (not safe))
               (cons __tmp49818 __tmp49817))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp49816))))
                                           (___kont4570945710_
                                            (lambda () _K25702_)))
                                       (if (gx#stx-pair? ___stx4567645677_)
                                           (let ((_e2575327173_
                                                  (gx#syntax-e
                                                   ___stx4567645677_)))
                                             (let ((_tl2575127180_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2575327173_)))
                                                   (_hd2575227177_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2575327173_))))
                                               (if (gx#stx-datum?
                                                    _hd2575227177_)
                                                   (let ((_e2575427183_
                                                          (gx#stx-e
                                                           _hd2575227177_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e2575427183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '?:))
                 (if (gx#stx-pair? _tl2575127180_)
                     (let ((_e2575727187_ (gx#syntax-e _tl2575127180_)))
                       (let ((_tl2575527194_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2575727187_)))
                             (_hd2575627191_
                              (let ()
                                (declare (not safe))
                                (##car _e2575727187_))))
                         (___kont4567945680_ _tl2575527194_ _hd2575627191_)))
                     (let () (declare (not safe)) (_g2574725889_)))
                 (if (let () (declare (not safe)) (equal? _e2575427183_ 'and:))
                     (___kont4568145682_ _tl2575127180_)
                     (if (let ()
                           (declare (not safe))
                           (equal? _e2575427183_ 'or:))
                         (___kont4568345684_ _tl2575127180_)
                         (if (let ()
                               (declare (not safe))
                               (equal? _e2575427183_ 'not:))
                             (if (gx#stx-pair? _tl2575127180_)
                                 (let ((_e2577526956_
                                        (gx#syntax-e _tl2575127180_)))
                                   (let ((_tl2577326963_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2577526956_)))
                                         (_hd2577426960_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2577526956_))))
                                     (if (gx#stx-null? _tl2577326963_)
                                         (___kont4568545686_ _hd2577426960_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2574725889_)))))
                                 (let () (declare (not safe)) (_g2574725889_)))
                             (if (let ()
                                   (declare (not safe))
                                   (equal? _e2575427183_ 'cons:))
                                 (if (gx#stx-pair? _tl2575127180_)
                                     (let ((_e2578426828_
                                            (gx#syntax-e _tl2575127180_)))
                                       (let ((_tl2578226835_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2578426828_)))
                                             (_hd2578326832_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2578426828_))))
                                         (if (gx#stx-pair? _tl2578226835_)
                                             (let ((_e2578726838_
                                                    (gx#syntax-e
                                                     _tl2578226835_)))
                                               (let ((_tl2578526845_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2578726838_)))
                                                     (_hd2578626842_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2578726838_))))
                                                 (if (gx#stx-null?
                                                      _tl2578526845_)
                                                     (___kont4568745688_
                                                      _hd2578626842_
                                                      _hd2578326832_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2574725889_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2574725889_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g2574725889_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e2575427183_ 'null:))
                                     (if (gx#stx-null? _tl2575127180_)
                                         (___kont4568945690_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2574725889_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e2575427183_ 'splice:))
                                         (if (gx#stx-pair? _tl2575127180_)
                                             (let ((_e2580026744_
                                                    (gx#syntax-e
                                                     _tl2575127180_)))
                                               (let ((_tl2579826751_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2580026744_)))
                                                     (_hd2579926748_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2580026744_))))
                                                 (if (gx#stx-pair?
                                                      _tl2579826751_)
                                                     (let ((_e2580326754_
                                                            (gx#syntax-e
                                                             _tl2579826751_)))
                                                       (let ((_tl2580126761_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e2580326754_)))
                     (_hd2580226758_
                      (let () (declare (not safe)) (##car _e2580326754_))))
                 (if (gx#stx-null? _tl2580126761_)
                     (___kont4569145692_ _hd2580226758_ _hd2579926748_)
                     (let () (declare (not safe)) (_g2574725889_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2574725889_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2574725889_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (equal? _e2575427183_ 'box:))
                                             (if (gx#stx-pair? _tl2575127180_)
                                                 (let ((_e2581126668_
                                                        (gx#syntax-e
                                                         _tl2575127180_)))
                                                   (let ((_tl2580926675_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2581126668_)))
                                                         (_hd2581026672_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2581126668_))))
                                                     (if (gx#stx-null?
                                                          _tl2580926675_)
                                                         (___kont4569345694_
                                                          _hd2581026672_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g2574725889_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2574725889_)))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (equal? _e2575427183_
                                                           'values:))
                                                 (if (gx#stx-pair?
                                                      _tl2575127180_)
                                                     (let ((_e2581926473_
                                                            (gx#syntax-e
                                                             _tl2575127180_)))
                                                       (let ((_tl2581726480_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e2581926473_)))
                     (_hd2581826477_
                      (let () (declare (not safe)) (##car _e2581926473_))))
                 (if (gx#stx-null? _tl2581726480_)
                     (___kont4569545696_ _hd2581826477_)
                     (let () (declare (not safe)) (_g2574725889_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2574725889_)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (equal? _e2575427183_
                                                               'vector:))
                                                     (if (gx#stx-pair?
                                                          _tl2575127180_)
                                                         (let ((_e2582726278_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2575127180_)))
                   (let ((_tl2582526285_
                          (let () (declare (not safe)) (##cdr _e2582726278_)))
                         (_hd2582626282_
                          (let () (declare (not safe)) (##car _e2582726278_))))
                     (if (gx#stx-null? _tl2582526285_)
                         (___kont4569745698_ _hd2582626282_)
                         (let () (declare (not safe)) (_g2574725889_)))))
                 (let () (declare (not safe)) (_g2574725889_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e2575427183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'struct:))
                 (if (gx#stx-pair? _tl2575127180_)
                     (let ((_e2583626219_ (gx#syntax-e _tl2575127180_)))
                       (let ((_tl2583426226_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2583626219_)))
                             (_hd2583526223_
                              (let ()
                                (declare (not safe))
                                (##car _e2583626219_))))
                         (if (gx#stx-pair? _tl2583426226_)
                             (let ((_e2583926229_
                                    (gx#syntax-e _tl2583426226_)))
                               (let ((_tl2583726236_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2583926229_)))
                                     (_hd2583826233_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2583926229_))))
                                 (if (gx#stx-null? _tl2583726236_)
                                     (___kont4569945700_
                                      _hd2583826233_
                                      _hd2583526223_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2574725889_)))))
                             (let () (declare (not safe)) (_g2574725889_)))))
                     (let () (declare (not safe)) (_g2574725889_)))
                 (if (let ()
                       (declare (not safe))
                       (equal? _e2575427183_ 'class:))
                     (if (gx#stx-pair? _tl2575127180_)
                         (let ((_e2584826160_ (gx#syntax-e _tl2575127180_)))
                           (let ((_tl2584626167_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2584826160_)))
                                 (_hd2584726164_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2584826160_))))
                             (if (gx#stx-pair? _tl2584626167_)
                                 (let ((_e2585126170_
                                        (gx#syntax-e _tl2584626167_)))
                                   (let ((_tl2584926177_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2585126170_)))
                                         (_hd2585026174_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2585126170_))))
                                     (if (gx#stx-null? _tl2584926177_)
                                         (___kont4570145702_
                                          _hd2585026174_
                                          _hd2584726164_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2574725889_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g2574725889_)))))
                         (let () (declare (not safe)) (_g2574725889_)))
                     (if (let ()
                           (declare (not safe))
                           (equal? _e2575427183_ 'datum:))
                         (if (gx#stx-pair? _tl2575127180_)
                             (let ((_e2585926073_
                                    (gx#syntax-e _tl2575127180_)))
                               (let ((_tl2585726080_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2585926073_)))
                                     (_hd2585826077_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2585926073_))))
                                 (if (gx#stx-null? _tl2585726080_)
                                     (___kont4570345704_ _hd2585826077_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2574725889_)))))
                             (let () (declare (not safe)) (_g2574725889_)))
                         (if (let ()
                               (declare (not safe))
                               (equal? _e2575427183_ 'apply:))
                             (if (gx#stx-pair? _tl2575127180_)
                                 (let ((_e2586825983_
                                        (gx#syntax-e _tl2575127180_)))
                                   (let ((_tl2586625990_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2586825983_)))
                                         (_hd2586725987_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2586825983_))))
                                     (if (gx#stx-pair? _tl2586625990_)
                                         (let ((_e2587125993_
                                                (gx#syntax-e _tl2586625990_)))
                                           (let ((_tl2586926000_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e2587125993_)))
                                                 (_hd2587025997_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e2587125993_))))
                                             (if (gx#stx-null? _tl2586926000_)
                                                 (___kont4570545706_
                                                  _hd2587025997_
                                                  _hd2586725987_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2574725889_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_g2574725889_)))))
                                 (let () (declare (not safe)) (_g2574725889_)))
                             (if (let ()
                                   (declare (not safe))
                                   (equal? _e2575427183_ 'var:))
                                 (if (gx#stx-pair? _tl2575127180_)
                                     (let ((_e2587925935_
                                            (gx#syntax-e _tl2575127180_)))
                                       (let ((_tl2587725942_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2587925935_)))
                                             (_hd2587825939_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2587925935_))))
                                         (if (gx#stx-null? _tl2587725942_)
                                             (___kont4570745708_
                                              _hd2587825939_)
                                             (let ()
                                               (declare (not safe))
                                               (_g2574725889_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g2574725889_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e2575427183_ 'any:))
                                     (if (gx#stx-null? _tl2575127180_)
                                         (___kont4570945710_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2574725889_)))
                                     (let ()
                                       (declare (not safe))
                                       (_g2574725889_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g2574725889_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g2574725889_)))))))
                               _g2570625717_))))
                      (declare (not safe))
                      (_g2570427482_ _tgt25699_))))
                 (_generate-splice24456_
                  (lambda (_tgt25071_ _hd25073_ _rest25074_ _K25075_ _E25076_)
                    (let* ((_g2507825095_
                            (lambda (_g2507925091_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2507925091_)))
                           (_g2507725695_
                            (lambda (_g2507925099_)
                              (if (gx#stx-pair/null? _g2507925099_)
                                  (let ((_g49821_
                                         (gx#syntax-split-splice
                                          _g2507925099_
                                          '0)))
                                    (begin
                                      (let ((_g49822_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g49821_)
                                                   (##vector-length _g49821_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g49822_ 2)))
                                            (error "Context expects 2 values"
                                                   _g49822_)))
                                      (let ((_target2508125102_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g49821_ 0)))
                                            (_tl2508325105_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g49821_ 1))))
                                        (if (gx#stx-null? _tl2508325105_)
                                            (letrec ((_loop2508425108_
                                                      (lambda (_hd2508225112_
                                                               _var2508825115_)
                                                        (if (gx#stx-pair?
                                                             _hd2508225112_)
                                                            (let ((_e2508525118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2508225112_)))
                      (let ((_lp-hd2508625122_
                             (let ()
                               (declare (not safe))
                               (##car _e2508525118_)))
                            (_lp-tl2508725125_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2508525118_))))
                        (let ((__tmp49913
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd2508625122_ _var2508825115_))))
                          (declare (not safe))
                          (_loop2508425108_ _lp-tl2508725125_ __tmp49913))))
                    (let ((_var2508925128_ (reverse _var2508825115_)))
                      ((lambda (_L25132_)
                         (let ()
                           (let* ((_g2514825165_
                                   (lambda (_g2514925161_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2514925161_)))
                                  (_g2514725683_
                                   (lambda (_g2514925169_)
                                     (if (gx#stx-pair/null? _g2514925169_)
                                         (let ((_g49823_
                                                (gx#syntax-split-splice
                                                 _g2514925169_
                                                 '0)))
                                           (begin
                                             (let ((_g49824_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g49823_)
                                                          (##vector-length
                                                           _g49823_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g49824_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g49824_)))
                                             (let ((_target2515125172_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g49823_
                                                       0)))
                                                   (_tl2515325175_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g49823_
                                                       1))))
                                               (if (gx#stx-null?
                                                    _tl2515325175_)
                                                   (letrec ((_loop2515425178_
                                                             (lambda (_hd2515225182_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _var-r2515825185_)
                       (if (gx#stx-pair? _hd2515225182_)
                           (let ((_e2515525188_ (gx#syntax-e _hd2515225182_)))
                             (let ((_lp-hd2515625192_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e2515525188_)))
                                   (_lp-tl2515725195_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e2515525188_))))
                               (let ((__tmp49910
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd2515625192_
                                              _var-r2515825185_))))
                                 (declare (not safe))
                                 (_loop2515425178_
                                  _lp-tl2515725195_
                                  __tmp49910))))
                           (let ((_var-r2515925198_
                                  (reverse _var-r2515825185_)))
                             ((lambda (_L25202_)
                                (let ()
                                  (let* ((_g2521925236_
                                          (lambda (_g2522025232_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g2522025232_)))
                                         (_g2521825671_
                                          (lambda (_g2522025240_)
                                            (if (gx#stx-pair/null?
                                                 _g2522025240_)
                                                (let ((_g49825_
                                                       (gx#syntax-split-splice
                                                        _g2522025240_
                                                        '0)))
                                                  (begin
                                                    (let ((_g49826_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g49825_)
                         (##vector-length _g49825_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g49826_ 2)))
                  (error "Context expects 2 values" _g49826_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2522225243_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g49825_
                                                              0)))
                                                          (_tl2522425246_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g49825_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl2522425246_)
                                                          (letrec ((_loop2522525249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2522325253_ _init2522925256_)
                              (if (gx#stx-pair? _hd2522325253_)
                                  (let ((_e2522625259_
                                         (gx#syntax-e _hd2522325253_)))
                                    (let ((_lp-hd2522725263_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2522625259_)))
                                          (_lp-tl2522825266_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2522625259_))))
                                      (let ((__tmp49906
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2522725263_
                                                     _init2522925256_))))
                                        (declare (not safe))
                                        (_loop2522525249_
                                         _lp-tl2522825266_
                                         __tmp49906))))
                                  (let ((_init2523025269_
                                         (reverse _init2522925256_)))
                                    ((lambda (_L25273_)
                                       (let ()
                                         (let* ((_g2529025298_
                                                 (lambda (_g2529125294_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g2529125294_)))
                                                (_g2528925667_
                                                 (lambda (_g2529125302_)
                                                   ((lambda (_L25305_)
                                                      (let ()
                                                        (let* ((_g2531825326_
                                                                (lambda (_g2531925322_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g2531925322_)))
                       (_g2531725663_
                        (lambda (_g2531925330_)
                          ((lambda (_L25333_)
                             (let ()
                               (let* ((_g2534625354_
                                       (lambda (_g2534725350_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2534725350_)))
                                      (_g2534525659_
                                       (lambda (_g2534725358_)
                                         ((lambda (_L25361_)
                                            (let ()
                                              (let* ((_g2537425382_
                                                      (lambda (_g2537525378_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2537525378_)))
                                                     (_g2537325655_
                                                      (lambda (_g2537525386_)
                                                        ((lambda (_L25389_)
                                                           (let ()
                                                             (let* ((_g2540225410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g2540325406_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2540325406_)))
                            (_g2540125651_
                             (lambda (_g2540325414_)
                               ((lambda (_L25417_)
                                  (let ()
                                    (let* ((_g2543025438_
                                            (lambda (_g2543125434_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2543125434_)))
                                           (_g2542925647_
                                            (lambda (_g2543125442_)
                                              ((lambda (_L25445_)
                                                 (let ()
                                                   (let* ((_g2545825466_
                                                           (lambda (_g2545925462_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g2545925462_)))
                                                          (_g2545725643_
                                                           (lambda (_g2545925470_)
                                                             ((lambda (_L25473_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g2548625494_
                                  (lambda (_g2548725490_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g2548725490_)))
                                 (_g2548525628_
                                  (lambda (_g2548725498_)
                                    ((lambda (_L25501_)
                                       (let ()
                                         (let* ((_g2551425522_
                                                 (lambda (_g2551525518_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g2551525518_)))
                                                (_g2551325616_
                                                 (lambda (_g2551525526_)
                                                   ((lambda (_L25529_)
                                                      (let ()
                                                        (let* ((_g2554225550_
                                                                (lambda (_g2554325546_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g2554325546_)))
                       (_g2554125612_
                        (lambda (_g2554325554_)
                          ((lambda (_L25557_)
                             (let ()
                               (let ()
                                 (let ((__tmp49880
                                        (gx#datum->syntax '#f 'letrec))
                                       (__tmp49827
                                        (let ((__tmp49833
                                               (let ((__tmp49871
                                                      (let ((__tmp49872
                                                             (let ((__tmp49873
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49879 (gx#datum->syntax '#f 'lambda))
                                  (__tmp49874
                                   (let ((__tmp49876
                                          (let ((__tmp49877
                                                 (let ((__tmp49878
                                                        (lambda (_g2557925582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2558025585_)
                  (let ()
                    (declare (not safe))
                    (cons _g2557925582_ _g2558025585_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 __tmp49878
                                                           '()
                                                           _L25132_))))
                                            (declare (not safe))
                                            (cons _L25445_ __tmp49877)))
                                         (__tmp49875
                                          (let ()
                                            (declare (not safe))
                                            (cons _L25473_ '()))))
                                     (declare (not safe))
                                     (cons __tmp49876 __tmp49875))))
                              (declare (not safe))
                              (cons __tmp49879 __tmp49874))))
                       (declare (not safe))
                       (cons __tmp49873 '()))))
                (declare (not safe))
                (cons _L25333_ __tmp49872)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49834
                                                      (let ((__tmp49861
                                                             (let ((__tmp49862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49863
                                   (let ((__tmp49870
                                          (gx#datum->syntax '#f 'lambda))
                                         (__tmp49864
                                          (let ((__tmp49866
                                                 (let ((__tmp49867
                                                        (let ((__tmp49868
                                                               (let ((__tmp49869
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2557725588_ _g2557825591_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2557725588_ _g2557825591_)))))
                         (declare (not safe))
                         (foldr1 __tmp49869 '() _L25202_))))
                  (declare (not safe))
                  (cons _L25445_ __tmp49868))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L25417_ __tmp49867)))
                                                (__tmp49865
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L25557_ '()))))
                                            (declare (not safe))
                                            (cons __tmp49866 __tmp49865))))
                                     (declare (not safe))
                                     (cons __tmp49870 __tmp49864))))
                              (declare (not safe))
                              (cons __tmp49863 '()))))
                       (declare (not safe))
                       (cons _L25389_ __tmp49862)))
                    (__tmp49835
                     (let ((__tmp49836
                            (let ((__tmp49837
                                   (let ((__tmp49838
                                          (let ((__tmp49860
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp49839
                                                 (let ((__tmp49857
                                                        (let ((__tmp49858
                                                               (let ((__tmp49859
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2557525594_ _g2557625597_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2557525594_ _g2557625597_)))))
                         (declare (not safe))
                         (foldr1 __tmp49859 '() _L25202_))))
                  (declare (not safe))
                  (cons _L25445_ __tmp49858)))
               (__tmp49840
                (let ((__tmp49841
                       (let ((__tmp49856 (gx#datum->syntax '#f 'if))
                             (__tmp49842
                              (let ((__tmp49853
                                     (let ((__tmp49855
                                            (gx#datum->syntax '#f 'pair?))
                                           (__tmp49854
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25445_ '()))))
                                       (declare (not safe))
                                       (cons __tmp49855 __tmp49854)))
                                    (__tmp49843
                                     (let ((__tmp49845
                                            (let ((__tmp49846
                                                   (let ((__tmp49850
                                                          (let ((__tmp49852
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '##car))
                        (__tmp49851
                         (let () (declare (not safe)) (cons _L25445_ '()))))
                    (declare (not safe))
                    (cons __tmp49852 __tmp49851)))
                 (__tmp49847
                  (let ((__tmp49848
                         (let ((__tmp49849
                                (lambda (_g2557325600_ _g2557425603_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2557325600_ _g2557425603_)))))
                           (declare (not safe))
                           (foldr1 __tmp49849 '() _L25202_))))
                    (declare (not safe))
                    (cons _L25445_ __tmp49848))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49850
                                                           __tmp49847))))
                                              (declare (not safe))
                                              (cons _L25389_ __tmp49846)))
                                           (__tmp49844
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25529_ '()))))
                                       (declare (not safe))
                                       (cons __tmp49845 __tmp49844))))
                                (declare (not safe))
                                (cons __tmp49853 __tmp49843))))
                         (declare (not safe))
                         (cons __tmp49856 __tmp49842))))
                  (declare (not safe))
                  (cons __tmp49841 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49857
                                                         __tmp49840))))
                                            (declare (not safe))
                                            (cons __tmp49860 __tmp49839))))
                                     (declare (not safe))
                                     (cons __tmp49838 '()))))
                              (declare (not safe))
                              (cons _L25361_ __tmp49837))))
                       (declare (not safe))
                       (cons __tmp49836 '()))))
                (declare (not safe))
                (cons __tmp49861 __tmp49835))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49871 __tmp49834)))
                                              (__tmp49828
                                               (let ((__tmp49829
                                                      (let ((__tmp49830
                                                             (let ((__tmp49831
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49832
                                   (lambda (_g2557125606_ _g2557225609_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2557125606_ _g2557225609_)))))
                              (declare (not safe))
                              (foldr1 __tmp49832 '() _L25273_))))
                       (declare (not safe))
                       (cons _L25305_ __tmp49831))))
                (declare (not safe))
                (cons _L25361_ __tmp49830))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49829 '()))))
                                          (declare (not safe))
                                          (cons __tmp49833 __tmp49828))))
                                   (declare (not safe))
                                   (cons __tmp49880 __tmp49827)))))
                           _g2554325554_)))
                       (__tmp49881
                        (let ()
                          (declare (not safe))
                          (_generate124454_
                           _L25417_
                           _hd25073_
                           _L25501_
                           _L25529_))))
                  (declare (not safe))
                  (_g2554125612_ __tmp49881))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2551525526_)))
                                                (__tmp49882
                                                 (let ((__tmp49883
                                                        (let ((__tmp49884
                                                               (let ((__tmp49885
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2561925622_ _g2562025625_)
                                (let ((__tmp49886
                                       (let ((__tmp49888
                                              (gx#datum->syntax '#f 'reverse))
                                             (__tmp49887
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2561925622_ '()))))
                                         (declare (not safe))
                                         (cons __tmp49888 __tmp49887))))
                                  (declare (not safe))
                                  (cons __tmp49886 _g2562025625_)))))
                         (declare (not safe))
                         (foldr1 __tmp49885 '() _L25202_))))
                  (declare (not safe))
                  (cons _L25445_ __tmp49884))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L25333_
                                                         __tmp49883))))
                                           (declare (not safe))
                                           (_g2551325616_ __tmp49882))))
                                     _g2548725498_)))
                                 (__tmp49889
                                  (let ((__tmp49890
                                         (let ((__tmp49897
                                                (let ((__tmp49899
                                                       (gx#datum->syntax
                                                        '#f
                                                        '##cdr))
                                                      (__tmp49898
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L25445_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp49899
                                                        __tmp49898)))
                                               (__tmp49891
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _L25202_
                                                   _L25132_)
                                                  (let ((__tmp49892
                                                         (lambda (_g2563125635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2563225638_
                          _g2563325640_)
                   (let ((__tmp49893
                          (let ((__tmp49896 (gx#datum->syntax '#f 'cons))
                                (__tmp49894
                                 (let ((__tmp49895
                                        (let ()
                                          (declare (not safe))
                                          (cons _g2563125635_ '()))))
                                   (declare (not safe))
                                   (cons _g2563225638_ __tmp49895))))
                            (declare (not safe))
                            (cons __tmp49896 __tmp49894))))
                     (declare (not safe))
                     (cons __tmp49893 _g2563325640_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr2 __tmp49892
                                                            '()
                                                            _L25202_
                                                            _L25132_)))))
                                           (declare (not safe))
                                           (cons __tmp49897 __tmp49891))))
                                    (declare (not safe))
                                    (cons _L25361_ __tmp49890))))
                            (declare (not safe))
                            (_g2548525628_ __tmp49889))))
                      _g2545925470_)))
                  (__tmp49900
                   (let ()
                     (declare (not safe))
                     (_generate124454_
                      _L25445_
                      _rest25074_
                      _K25075_
                      _E25076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g2545725643_
                                                      __tmp49900))))
                                               _g2543125442_)))
                                           (__tmp49901 (gx#genident 'rest)))
                                      (declare (not safe))
                                      (_g2542925647_ __tmp49901))))
                                _g2540325414_)))
                            (__tmp49902 (gx#genident 'hd)))
                       (declare (not safe))
                       (_g2540125651_ __tmp49902))))
                 _g2537525386_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49903
                                                      (gx#genident
                                                       'splice-try)))
                                                (declare (not safe))
                                                (_g2537325655_ __tmp49903))))
                                          _g2534725358_)))
                                      (__tmp49904 (gx#genident 'splice-loop)))
                                 (declare (not safe))
                                 (_g2534525659_ __tmp49904))))
                           _g2531925330_)))
                       (__tmp49905 (gx#genident 'splice-rest)))
                  (declare (not safe))
                  (_g2531725663_ __tmp49905))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2529125302_))))
                                           (declare (not safe))
                                           (_g2528925667_ _tgt25071_))))
                                     _init2523025269_))))))
                    (let ()
                      (declare (not safe))
                      (_loop2522525249_ _target2522225243_ '())))
                  (let ()
                    (declare (not safe))
                    (_g2521925236_ _g2522025240_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2521925236_
                                                   _g2522025240_)))))
                                         (__tmp49907
                                          (make-list
                                           (gx#stx-length
                                            (let ((__tmp49908
                                                   (lambda (_g2567425677_
                                                            _g2567525680_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2567425677_
                                                             _g2567525680_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp49908
                                                      '()
                                                      _L25132_)))
                                           (let ((__tmp49909
                                                  (gx#datum->syntax
                                                   '#f
                                                   '@list)))
                                             (declare (not safe))
                                             (cons __tmp49909 '())))))
                                    (declare (not safe))
                                    (_g2521825671_ __tmp49907))))
                              _var-r2515925198_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_loop2515425178_
                                                        _target2515125172_
                                                        '())))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g2514825165_
                                                      _g2514925169_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g2514825165_ _g2514925169_)))))
                                  (__tmp49911
                                   (gx#gentemps
                                    (let ((__tmp49912
                                           (lambda (_g2568625689_
                                                    _g2568725692_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g2568625689_
                                                     _g2568725692_)))))
                                      (declare (not safe))
                                      (foldr1 __tmp49912 '() _L25132_)))))
                             (declare (not safe))
                             (_g2514725683_ __tmp49911))))
                       _var2508925128_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop2508425108_
                                                 _target2508125102_
                                                 '())))
                                            (let ()
                                              (declare (not safe))
                                              (_g2507825095_
                                               _g2507925099_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2507825095_ _g2507925099_)))))
                           (__tmp49914
                            (let ()
                              (declare (not safe))
                              (|gerbil/core$<match>[1]#match-pattern-vars|
                               _hd25073_))))
                      (declare (not safe))
                      (_g2507725695_ __tmp49914))))
                 (_generate-simple-vector24457_
                  (lambda (_tgt24913_
                           _body24915_
                           _start24916_
                           _K24917_
                           _E24918_)
                    (let _recur24920_ ((_rest24923_ _body24915_)
                                       (_off24925_ _start24916_))
                      (let* ((___stx4603446035_ _rest24923_)
                             (_g2492824940_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4603446035_))))
                        (let ((___kont4603746038_
                               (lambda (_L24968_ _L24970_)
                                 (let* ((_g2498525004_
                                         (lambda (_g2498625000_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g2498625000_)))
                                        (_g2498425063_
                                         (lambda (_g2498625008_)
                                           (if (gx#stx-pair? _g2498625008_)
                                               (let ((_e2499225011_
                                                      (gx#syntax-e
                                                       _g2498625008_)))
                                                 (let ((_hd2499125015_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2499225011_)))
                                                       (_tl2499025018_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2499225011_))))
                                                   (if (gx#stx-pair?
                                                        _tl2499025018_)
                                                       (let ((_e2499525021_
                                                              (gx#syntax-e
                                                               _tl2499025018_)))
                                                         (let ((_hd2499425025_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2499525021_)))
                       (_tl2499325028_
                        (let () (declare (not safe)) (##cdr _e2499525021_))))
                   (if (gx#stx-pair? _tl2499325028_)
                       (let ((_e2499825031_ (gx#syntax-e _tl2499325028_)))
                         (let ((_hd2499725035_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2499825031_)))
                               (_tl2499625038_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2499825031_))))
                           (if (gx#stx-null? _tl2499625038_)
                               ((lambda (_L25041_ _L25043_ _L25044_)
                                  (let ()
                                    (let ((__tmp49915
                                           (let ((__tmp49920
                                                  (let ((__tmp49921
                                                         (let ((__tmp49922
                                                                (let ((__tmp49923
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49926
                                      (gx#datum->syntax '#f '##vector-ref))
                                     (__tmp49924
                                      (let ((__tmp49925
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25041_ '()))))
                                        (declare (not safe))
                                        (cons _L25043_ __tmp49925))))
                                 (declare (not safe))
                                 (cons __tmp49926 __tmp49924))))
                          (declare (not safe))
                          (cons __tmp49923 '()))))
                   (declare (not safe))
                   (cons _L25044_ __tmp49922))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49921 '())))
                                                 (__tmp49916
                                                  (let ((__tmp49917
                                                         (let ((__tmp49918
                                                                (let ((__tmp49919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (fx+ _off24925_ '1))))
                          (declare (not safe))
                          (_recur24920_ _L24968_ __tmp49919))))
                   (declare (not safe))
                   (_generate124454_ _L25044_ _L24970_ __tmp49918 _E24918_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49917 '()))))
                                             (declare (not safe))
                                             (cons __tmp49920 __tmp49916))))
                                      (declare (not safe))
                                      (cons 'let __tmp49915))))
                                _hd2499725035_
                                _hd2499425025_
                                _hd2499125015_)
                               (let ()
                                 (declare (not safe))
                                 (_g2498525004_ _g2498625008_)))))
                       (let ()
                         (declare (not safe))
                         (_g2498525004_ _g2498625008_)))))
               (let () (declare (not safe)) (_g2498525004_ _g2498625008_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2498525004_
                                                  _g2498625008_)))))
                                        (__tmp49927
                                         (list (gx#genident 'e)
                                               _tgt24913_
                                               _off24925_)))
                                   (declare (not safe))
                                   (_g2498425063_ __tmp49927))))
                              (___kont4603946040_ (lambda () _K24917_)))
                          (if (gx#stx-pair? ___stx4603446035_)
                              (let ((_e2493424958_
                                     (gx#syntax-e ___stx4603446035_)))
                                (let ((_tl2493224965_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2493424958_)))
                                      (_hd2493324962_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2493424958_))))
                                  (___kont4603746038_
                                   _tl2493224965_
                                   _hd2493324962_)))
                              (___kont4603946040_)))))))
                 (_generate-list-vector24458_
                  (lambda (_tgt24805_
                           _body24807_
                           _->list24808_
                           _K24809_
                           _E24810_)
                    (let* ((_g2481224820_
                            (lambda (_g2481324816_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2481324816_)))
                           (_g2481124909_
                            (lambda (_g2481324824_)
                              ((lambda (_L24827_)
                                 (let ()
                                   (let* ((_g2483924847_
                                           (lambda (_g2484024843_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2484024843_)))
                                          (_g2483824905_
                                           (lambda (_g2484024851_)
                                             ((lambda (_L24854_)
                                                (let ()
                                                  (let* ((_g2486724875_
                                                          (lambda (_g2486824871_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g2486824871_)))
                                                         (_g2486624897_
                                                          (lambda (_g2486824879_)
                                                            ((lambda (_L24882_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp49928
                                  (let ((__tmp49931
                                         (let ((__tmp49932
                                                (let ((__tmp49933
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L24882_ '()))))
                                                  (declare (not safe))
                                                  (cons _L24827_ __tmp49933))))
                                           (declare (not safe))
                                           (cons __tmp49932 '())))
                                        (__tmp49929
                                         (let ((__tmp49930
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate124454_
                                                   _L24827_
                                                   _body24807_
                                                   _K24809_
                                                   _E24810_))))
                                           (declare (not safe))
                                           (cons __tmp49930 '()))))
                                    (declare (not safe))
                                    (cons __tmp49931 __tmp49929))))
                             (declare (not safe))
                             (cons 'let __tmp49928)))))
                     _g2486824879_)))
                 (__tmp49934
                  (let ((_$e24901_ _->list24808_))
                    (if (let ()
                          (declare (not safe))
                          (eq? 'values->list _$e24901_))
                        (let ((__tmp49943 (gx#datum->syntax '#f 'values->list))
                              (__tmp49942
                               (let ()
                                 (declare (not safe))
                                 (cons _L24854_ '()))))
                          (declare (not safe))
                          (cons __tmp49943 __tmp49942))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'vector->list _$e24901_))
                            (let ((__tmp49941
                                   (gx#datum->syntax '#f '##vector->list))
                                  (__tmp49940
                                   (let ()
                                     (declare (not safe))
                                     (cons _L24854_ '()))))
                              (declare (not safe))
                              (cons __tmp49941 __tmp49940))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'struct->list _$e24901_))
                                (let ((__tmp49939
                                       (gx#datum->syntax '#f '##cdr))
                                      (__tmp49935
                                       (let ((__tmp49936
                                              (let ((__tmp49938
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##structure->list))
                                                    (__tmp49937
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L24854_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49938 __tmp49937))))
                                         (declare (not safe))
                                         (cons __tmp49936 '()))))
                                  (declare (not safe))
                                  (cons __tmp49939 __tmp49935))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Unexpected list conversion"
                                 _stx24447_
                                 _->list24808_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_g2486624897_
                                                     __tmp49934))))
                                              _g2484024851_))))
                                     (declare (not safe))
                                     (_g2483824905_ _tgt24805_))))
                               _g2481324824_)))
                           (__tmp49944 (gx#genident 'e)))
                      (declare (not safe))
                      (_g2481124909_ __tmp49944))))
                 (_generate-struct24459_
                  (lambda (_info24676_
                           _tgt24678_
                           _body24679_
                           _K24680_
                           _E24681_)
                    (let* ((___stx4605046051_ _body24679_)
                           (_g2468424707_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4605046051_))))
                      (let ((___kont4605346054_
                             (lambda (_L24784_)
                               (let* ((_fields24798_
                                       (let ()
                                         (declare (not safe))
                                         (_struct-field-accessors24461_
                                          _info24676_)))
                                      (__tmp49945
                                       (let ((__tmp49949
                                              (let ((__tmp49951
                                                     (let ((__obj47253
                                                            _info24676_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj47253
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj47253
                                                              '10
                                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                            __obj47253
                                                            'predicate))))
                                                    (__tmp49950
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tgt24678_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49951 __tmp49950)))
                                             (__tmp49946
                                              (let ((__tmp49948
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-struct-body24460_
                                                        _info24676_
                                                        _tgt24678_
                                                        _L24784_
                                                        _K24680_
                                                        _E24681_)))
                                                    (__tmp49947
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E24681_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49948 __tmp49947))))
                                         (declare (not safe))
                                         (cons __tmp49949 __tmp49946))))
                                 (declare (not safe))
                                 (cons 'if __tmp49945))))
                            (___kont4605546056_
                             (lambda (_L24738_)
                               (let ((__tmp49952
                                      (let ((__tmp49956
                                             (let ((__tmp49958
                                                    (let ((__obj47254
                                                           _info24676_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj47254
                                                             'gerbil.core#class-type-info::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj47254
                                                             '10
                                                             gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                             '#f))
                                                          (class-slot-ref
                                                           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                           __obj47254
                                                           'predicate))))
                                                   (__tmp49957
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tgt24678_ '()))))
                                               (declare (not safe))
                                               (cons __tmp49958 __tmp49957)))
                                            (__tmp49953
                                             (let ((__tmp49955
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-list-vector24458_
                                                       _tgt24678_
                                                       _L24738_
                                                       'struct->list
                                                       _K24680_
                                                       _E24681_)))
                                                   (__tmp49954
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _E24681_ '()))))
                                               (declare (not safe))
                                               (cons __tmp49955 __tmp49954))))
                                        (declare (not safe))
                                        (cons __tmp49956 __tmp49953))))
                                 (declare (not safe))
                                 (cons 'if __tmp49952)))))
                        (if (gx#stx-pair? ___stx4605046051_)
                            (let ((_e2468924760_
                                   (gx#syntax-e ___stx4605046051_)))
                              (let ((_tl2468724767_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2468924760_)))
                                    (_hd2468824764_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2468924760_))))
                                (if (gx#stx-datum? _hd2468824764_)
                                    (let ((_e2469024770_
                                           (gx#stx-e _hd2468824764_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2469024770_ 'simple:))
                                          (if (gx#stx-pair? _tl2468724767_)
                                              (let ((_e2469324774_
                                                     (gx#syntax-e
                                                      _tl2468724767_)))
                                                (let ((_tl2469124781_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2469324774_)))
                                                      (_hd2469224778_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2469324774_))))
                                                  (if (gx#stx-null?
                                                       _tl2469124781_)
                                                      (___kont4605346054_
                                                       _hd2469224778_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2468424707_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2468424707_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e2469024770_ 'list:))
                                              (if (gx#stx-pair? _tl2468724767_)
                                                  (let ((_e2470124728_
                                                         (gx#syntax-e
                                                          _tl2468724767_)))
                                                    (let ((_tl2469924735_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2470124728_)))
                                                          (_hd2470024732_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2470124728_))))
                                                      (if (gx#stx-null?
                                                           _tl2469924735_)
                                                          (___kont4605546056_
                                                           _hd2470024732_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g2468424707_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2468424707_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2468424707_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2468424707_)))))
                            (let () (declare (not safe)) (_g2468424707_)))))))
                 (_generate-simple-struct-body24460_
                  (lambda (_info24596_
                           _tgt24598_
                           _body24599_
                           _K24600_
                           _E24601_)
                    (let _recur24603_ ((_rest24606_ _body24599_)
                                       (_fields24608_
                                        (let ()
                                          (declare (not safe))
                                          (_struct-field-accessors24461_
                                           _info24596_))))
                      (let* ((___stx4610046101_ _rest24606_)
                             (_g2461124623_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4610046101_))))
                        (let ((___kont4610346104_
                               (lambda (_L24651_ _L24653_)
                                 (if (let ()
                                       (declare (not safe))
                                       (null? _fields24608_))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _stx24447_
                                      _info24596_
                                      (let ((__obj47255 _info24596_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj47255
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj47255
                                               '2
                                               gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                             __obj47255
                                             'name))))
                                     (let ((_$tgt24668_ (gx#genident 'e))
                                           (_getf24670_ (car _fields24608_)))
                                       (let ((__tmp49959
                                              (let ((__tmp49964
                                                     (let ((__tmp49965
                                                            (let ((__tmp49966
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49967
                                  (let ((__tmp49968
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt24598_ '()))))
                                    (declare (not safe))
                                    (cons _getf24670_ __tmp49968))))
                             (declare (not safe))
                             (cons __tmp49967 '()))))
                      (declare (not safe))
                      (cons _$tgt24668_ __tmp49966))))
               (declare (not safe))
               (cons __tmp49965 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp49960
                                                     (let ((__tmp49961
                                                            (let ((__tmp49962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49963 (cdr _fields24608_)))
                             (declare (not safe))
                             (_recur24603_ _L24651_ __tmp49963))))
                      (declare (not safe))
                      (_generate124454_
                       _$tgt24668_
                       _L24653_
                       __tmp49962
                       _E24601_))))
               (declare (not safe))
               (cons __tmp49961 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49964 __tmp49960))))
                                         (declare (not safe))
                                         (cons 'let __tmp49959))))))
                              (___kont4610546106_ (lambda () _K24600_)))
                          (if (gx#stx-pair? ___stx4610046101_)
                              (let ((_e2461724641_
                                     (gx#syntax-e ___stx4610046101_)))
                                (let ((_tl2461524648_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2461724641_)))
                                      (_hd2461624645_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2461724641_))))
                                  (___kont4610346104_
                                   _tl2461524648_
                                   _hd2461624645_)))
                              (___kont4610546106_)))))))
                 (_struct-field-accessors24461_
                  (lambda (_info24577_)
                    (let _recur24580_ ((_next24583_
                                        (let ()
                                          (declare (not safe))
                                          (cons _info24577_ '()))))
                      (if (let () (declare (not safe)) (null? _next24583_))
                          '()
                          (let ((_ti24586_ (car _next24583_)))
                            (append (let ((__tmp49969
                                           (map gx#syntax-local-value
                                                (let ((__obj47256 _ti24586_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         __obj47256
                                                         'gerbil.core#class-type-info::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         __obj47256
                                                         '3
                                                         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                         '#f))
                                                      (class-slot-ref
                                                       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                       __obj47256
                                                       'super))))))
                                      (declare (not safe))
                                      (_recur24580_ __tmp49969))
                                    (map (lambda (_slot24589_)
                                           (let ((_$e24592_
                                                  (let ((__tmp49970
                                                         (let ((__obj47257
                                                                _ti24586_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj47257
                          'gerbil.core#class-type-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          __obj47257
                          '13
                          gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                          '#f))
                       (class-slot-ref
                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                        __obj47257
                        'unchecked-accessors)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (assgetq _slot24589_
                                                             __tmp49970))))
                                             (if _$e24592_
                                                 _$e24592_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"no accessor for struct slot"
                                                  _stx24447_
                                                  _info24577_
                                                  _slot24589_))))
                                         (let ((__obj47258 _ti24586_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj47258
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj47258
                                                  '4
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                __obj47258
                                                'slots))))))))))
                 (_generate-class24462_
                  (lambda (_info24570_
                           _tgt24572_
                           _body24573_
                           _K24574_
                           _E24575_)
                    (let ((__tmp49971
                           (let ((__tmp49975
                                  (let ((__tmp49977
                                         (let ((__obj47259 _info24570_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj47259
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj47259
                                                  '10
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                __obj47259
                                                'predicate))))
                                        (__tmp49976
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt24572_ '()))))
                                    (declare (not safe))
                                    (cons __tmp49977 __tmp49976)))
                                 (__tmp49972
                                  (let ((__tmp49974
                                         (let ()
                                           (declare (not safe))
                                           (_generate-class-body24463_
                                            _info24570_
                                            _tgt24572_
                                            _body24573_
                                            _K24574_
                                            _E24575_)))
                                        (__tmp49973
                                         (let ()
                                           (declare (not safe))
                                           (cons _E24575_ '()))))
                                    (declare (not safe))
                                    (cons __tmp49974 __tmp49973))))
                             (declare (not safe))
                             (cons __tmp49975 __tmp49972))))
                      (declare (not safe))
                      (cons 'if __tmp49971))))
                 (_generate-class-body24463_
                  (lambda (_info24465_
                           _tgt24467_
                           _body24468_
                           _K24469_
                           _E24470_)
                    (let _recur24472_ ((_rest24475_ _body24468_))
                      (let* ((___stx4611646117_ _rest24475_)
                             (_g2447924495_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4611646117_))))
                        (let ((___kont4611946120_
                               (lambda (_L24533_ _L24535_ _L24536_)
                                 (let ((_$e24556_
                                        (let ((__tmp49979
                                               (string->symbol
                                                (keyword->string
                                                 (gx#stx-e _L24536_))))
                                              (__tmp49978
                                               (let ((__obj47260 _info24465_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj47260
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj47260
                                                        '13
                                                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                      __obj47260
                                                      'unchecked-accessors)))))
                                          (declare (not safe))
                                          (assgetq __tmp49979 __tmp49978))))
                                   (if _$e24556_
                                       ((lambda (_getf24560_)
                                          (let* ((_$tgt24563_ (gx#genident 'e))
                                                 (__tmp49980
                                                  (let ((__tmp49984
                                                         (let ((__tmp49985
                                                                (let ((__tmp49986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49987
                                      (let ((__tmp49988
                                             (let ()
                                               (declare (not safe))
                                               (cons _tgt24467_ '()))))
                                        (declare (not safe))
                                        (cons _getf24560_ __tmp49988))))
                                 (declare (not safe))
                                 (cons __tmp49987 '()))))
                          (declare (not safe))
                          (cons _$tgt24563_ __tmp49986))))
                   (declare (not safe))
                   (cons __tmp49985 '())))
                (__tmp49981
                 (let ((__tmp49982
                        (let ((__tmp49983
                               (let ()
                                 (declare (not safe))
                                 (_recur24472_ _L24533_))))
                          (declare (not safe))
                          (_generate124454_
                           _$tgt24563_
                           _L24535_
                           __tmp49983
                           _E24470_))))
                   (declare (not safe))
                   (cons __tmp49982 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49984
                                                          __tmp49981))))
                                            (declare (not safe))
                                            (cons 'let __tmp49980)))
                                        _$e24556_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _stx24447_
                                        _info24465_
                                        _L24536_)))))
                              (___kont4612146122_ (lambda () _K24469_)))
                          (if (gx#stx-pair? ___stx4611646117_)
                              (let ((_e2448624513_
                                     (gx#syntax-e ___stx4611646117_)))
                                (let ((_tl2448424520_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2448624513_)))
                                      (_hd2448524517_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2448624513_))))
                                  (if (gx#stx-pair? _tl2448424520_)
                                      (let ((_e2448924523_
                                             (gx#syntax-e _tl2448424520_)))
                                        (let ((_tl2448724530_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2448924523_)))
                                              (_hd2448824527_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2448924523_))))
                                          (___kont4611946120_
                                           _tl2448724530_
                                           _hd2448824527_
                                           _hd2448524517_)))
                                      (___kont4612146122_))))
                              (___kont4612146122_))))))))
          (let ()
            (declare (not safe))
            (_generate124454_ _tgt24449_ _ptree24450_ _K24451_ _E24452_)))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx23343_ _tgt-lst23345_ _clauses23346_)
        (letrec ((_parse-body23348_
                  (lambda (_hd-len24269_)
                    (let _lp24272_ ((_rest24275_ _clauses23346_)
                                    (_r24277_ '()))
                      (let* ((___stx4616646167_ _rest24275_)
                             (_g2428024292_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4616646167_))))
                        (let ((___kont4616946170_
                               (lambda (_L24320_ _L24322_)
                                 (let* ((___stx4613846139_ _L24322_)
                                        (_g2433924355_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4613846139_))))
                                   (let ((___kont4614146142_
                                          (lambda (_L24424_)
                                            (if (gx#stx-null? _L24320_)
                                                (let ((__tmp49989
                                                       (let ((__tmp49994
                                                              (gx#genident
                                                               'else))
                                                             (__tmp49990
                                                              (let ((__tmp49991
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp49992
                                    (gx#stx-wrap-source
                                     (let ((__tmp49993
                                            (gx#datum->syntax '#f 'begin)))
                                       (declare (not safe))
                                       (cons __tmp49993 _L24424_))
                                     (let ((_$e24435_
                                            (gx#stx-source _L24322_)))
                                       (if _$e24435_
                                           _$e24435_
                                           (gx#stx-source _stx23343_))))))
                               (declare (not safe))
                               (cons __tmp49992 '()))))
                        (declare (not safe))
                        (cons '#f __tmp49991))))
                 (declare (not safe))
                 (cons __tmp49994 __tmp49990))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49989 _r24277_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _stx23343_
                                                 _L24322_))))
                                         (___kont4614346144_
                                          (lambda (_L24383_ _L24385_)
                                            (let ((__tmp49995
                                                   (let ((__tmp49996
                                                          (let ((__tmp50002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#genident 'try-match))
                        (__tmp49997
                         (let ((__tmp50001
                                (gx#stx-map
                                 (lambda (_g2439724399_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core$<match>[1]#parse-match-pattern__%|
                                      _g2439724399_
                                      _stx23343_)))
                                 _L24385_))
                               (__tmp49998
                                (let ((__tmp49999
                                       (gx#stx-wrap-source
                                        (let ((__tmp50000
                                               (gx#datum->syntax '#f 'begin)))
                                          (declare (not safe))
                                          (cons __tmp50000 _L24383_))
                                        (let ((_$e24403_
                                               (gx#stx-source _L24322_)))
                                          (if _$e24403_
                                              _$e24403_
                                              (gx#stx-source _stx23343_))))))
                                  (declare (not safe))
                                  (cons __tmp49999 '()))))
                           (declare (not safe))
                           (cons __tmp50001 __tmp49998))))
                    (declare (not safe))
                    (cons __tmp50002 __tmp49997))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49996
                                                           _r24277_))))
                                              (declare (not safe))
                                              (_lp24272_
                                               _L24320_
                                               __tmp49995))))
                                         (___kont4614546146_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _stx23343_
                                             _L24322_))))
                                     (let* ((___match4616346164_
                                             (lambda (_e2434924373_
                                                      _hd2434824377_
                                                      _tl2434724380_)
                                               (let ((_L24383_ _tl2434724380_)
                                                     (_L24385_ _hd2434824377_))
                                                 (if (and (gx#stx-list?
                                                           _L24385_)
                                                          (fx= (gx#stx-length
                                                                _L24385_)
                                                               _hd-len24269_)
                                                          (gx#stx-list?
                                                           _L24383_)
                                                          (let ((__tmp50003
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L24383_)))
                    (declare (not safe))
                    (not __tmp50003)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4614346144_
                                                      _L24383_
                                                      _L24385_)
                                                     (___kont4614546146_)))))
                                            (___match4615746158_
                                             (lambda (_e2434424414_
                                                      _hd2434324418_
                                                      _tl2434224421_)
                                               (let ((_L24424_ _tl2434224421_))
                                                 (if (and (gx#stx-list?
                                                           _L24424_)
                                                          (let ((__tmp50004
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L24424_)))
                    (declare (not safe))
                    (not __tmp50004)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4614146142_
                                                      _L24424_)
                                                     (___match4616346164_
                                                      _e2434424414_
                                                      _hd2434324418_
                                                      _tl2434224421_))))))
                                       (if (gx#stx-pair? ___stx4613846139_)
                                           (let ((_e2434424414_
                                                  (gx#syntax-e
                                                   ___stx4613846139_)))
                                             (let ((_tl2434224421_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2434424414_)))
                                                   (_hd2434324418_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2434424414_))))
                                               (if (gx#identifier?
                                                    _hd2434324418_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core$<match>[1]#_g50005_|
                                                        _hd2434324418_)
                                                       (___match4615746158_
                                                        _e2434424414_
                                                        _hd2434324418_
                                                        _tl2434224421_)
                                                       (___match4616346164_
                                                        _e2434424414_
                                                        _hd2434324418_
                                                        _tl2434224421_))
                                                   (___match4616346164_
                                                    _e2434424414_
                                                    _hd2434324418_
                                                    _tl2434224421_))))
                                           (___kont4614546146_)))))))
                              (___kont4617146172_ (lambda () _r24277_)))
                          (if (gx#stx-pair? ___stx4616646167_)
                              (let ((_e2428624310_
                                     (gx#syntax-e ___stx4616646167_)))
                                (let ((_tl2428424317_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2428624310_)))
                                      (_hd2428524314_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2428624310_))))
                                  (___kont4616946170_
                                   _tl2428424317_
                                   _hd2428524314_)))
                              (___kont4617146172_)))))))
                 (_generate-body23350_
                  (lambda (_body24054_)
                    (let* ((_g2405724065_
                            (lambda (_g2405824061_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2405824061_)))
                           (_g2405624265_
                            (lambda (_g2405824069_)
                              ((lambda (_L24072_)
                                 (let ()
                                   (let* ((_g2408424101_
                                           (lambda (_g2408524097_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2408524097_)))
                                          (_g2408324261_
                                           (lambda (_g2408524105_)
                                             (if (gx#stx-pair/null?
                                                  _g2408524105_)
                                                 (let ((_g50006_
                                                        (gx#syntax-split-splice
                                                         _g2408524105_
                                                         '0)))
                                                   (begin
                                                     (let ((_g50007_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g50006_)
                          (##vector-length _g50006_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g50007_ 2)))
                   (error "Context expects 2 values" _g50007_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2408724108_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g50006_
                                                               0)))
                                                           (_tl2408924111_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g50006_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl2408924111_)
                                                           (letrec ((_loop2409024114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2408824118_ _target2409424121_)
                               (if (gx#stx-pair? _hd2408824118_)
                                   (let ((_e2409124124_
                                          (gx#syntax-e _hd2408824118_)))
                                     (let ((_lp-hd2409224128_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2409124124_)))
                                           (_lp-tl2409324131_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2409124124_))))
                                       (let ((__tmp50030
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd2409224128_
                                                      _target2409424121_))))
                                         (declare (not safe))
                                         (_loop2409024114_
                                          _lp-tl2409324131_
                                          __tmp50030))))
                                   (let ((_target2409524134_
                                          (reverse _target2409424121_)))
                                     ((lambda (_L24138_)
                                        (let ()
                                          (let* ((_g2415524163_
                                                  (lambda (_g2415624159_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2415624159_)))
                                                 (_g2415424249_
                                                  (lambda (_g2415624167_)
                                                    ((lambda (_L24170_)
                                                       (let ()
                                                         (let* ((_g2418324191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2418424187_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2418424187_)))
                        (_g2418224245_
                         (lambda (_g2418424195_)
                           ((lambda (_L24198_)
                              (let ()
                                (let* ((_g2421124219_
                                        (lambda (_g2421224215_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2421224215_)))
                                       (_g2421024241_
                                        (lambda (_g2421224223_)
                                          ((lambda (_L24226_)
                                             (let ()
                                               (let ()
                                                 (let ((__tmp50011
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation))
                                                       (__tmp50008
                                                        (let ((__tmp50010
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@match))
                                                              (__tmp50009
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L24226_ '()))))
                  (declare (not safe))
                  (cons __tmp50010 __tmp50009))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50011
                                                         __tmp50008)))))
                                           _g2421224223_)))
                                       (__tmp50012
                                        (gx#stx-wrap-source
                                         (let ((__tmp50018
                                                (gx#datum->syntax '#f 'let))
                                               (__tmp50013
                                                (let ((__tmp50015
                                                       (let ((__tmp50016
                                                              (let ((__tmp50017
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L24170_ '()))))
                        (declare (not safe))
                        (cons _L24072_ __tmp50017))))
                 (declare (not safe))
                 (cons __tmp50016 '())))
              (__tmp50014 (let () (declare (not safe)) (cons _L24198_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp50015
                                                        __tmp50014))))
                                           (declare (not safe))
                                           (cons __tmp50018 __tmp50013))
                                         (gx#stx-source _stx23343_))))
                                  (declare (not safe))
                                  (_g2421024241_ __tmp50012))))
                            _g2418424195_)))
                        (__tmp50019
                         (let ((__tmp50020
                                (let ()
                                  (declare (not safe))
                                  (cons _L24072_ '()))))
                           (declare (not safe))
                           (_generate-clauses23351_ _body24054_ __tmp50020))))
                   (declare (not safe))
                   (_g2418224245_ __tmp50019))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2415624167_)))
                                                 (__tmp50021
                                                  (gx#stx-wrap-source
                                                   (let ((__tmp50029
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp50022
                                                          (let ((__tmp50023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp50024
                                (let ((__tmp50028
                                       (gx#datum->syntax '#f 'error))
                                      (__tmp50025
                                       (let ((__tmp50026
                                              (let ((__tmp50027
                                                     (lambda (_g2425224255_
                                                              _g2425324258_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g2425224255_
                                                               _g2425324258_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp50027
                                                        '()
                                                        _L24138_))))
                                         (declare (not safe))
                                         (cons '"No clause matching"
                                               __tmp50026))))
                                  (declare (not safe))
                                  (cons __tmp50028 __tmp50025))))
                           (declare (not safe))
                           (cons __tmp50024 '()))))
                    (declare (not safe))
                    (cons '() __tmp50023))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50029
                                                           __tmp50022))
                                                   (gx#stx-source
                                                    _stx23343_))))
                                            (declare (not safe))
                                            (_g2415424249_ __tmp50021))))
                                      _target2409524134_))))))
                     (let ()
                       (declare (not safe))
                       (_loop2409024114_ _target2408724108_ '())))
                   (let ()
                     (declare (not safe))
                     (_g2408424101_ _g2408524105_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2408424101_
                                                    _g2408524105_))))))
                                     (declare (not safe))
                                     (_g2408324261_ _tgt-lst23345_))))
                               _g2405824069_)))
                           (__tmp50031 (gx#genident 'E)))
                      (declare (not safe))
                      (_g2405624265_ __tmp50031))))
                 (_generate-clauses23351_
                  (lambda (_rest23706_ _E23708_)
                    (let* ((___stx4618246183_ _rest23706_)
                           (_g2371223728_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4618246183_))))
                      (let ((___kont4618546186_
                             (lambda (_L23962_)
                               (let* ((_g2397323991_
                                       (lambda (_g2397423987_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2397423987_)))
                                      (_g2397224046_
                                       (lambda (_g2397423995_)
                                         (if (gx#stx-pair? _g2397423995_)
                                             (let ((_e2397923998_
                                                    (gx#syntax-e
                                                     _g2397423995_)))
                                               (let ((_hd2397824002_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2397923998_)))
                                                     (_tl2397724005_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2397923998_))))
                                                 (if (gx#stx-pair?
                                                      _tl2397724005_)
                                                     (let ((_e2398224008_
                                                            (gx#syntax-e
                                                             _tl2397724005_)))
                                                       (let ((_hd2398124012_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2398224008_)))
                     (_tl2398024015_
                      (let () (declare (not safe)) (##cdr _e2398224008_))))
                 (if (gx#stx-pair? _tl2398024015_)
                     (let ((_e2398524018_ (gx#syntax-e _tl2398024015_)))
                       (let ((_hd2398424022_
                              (let ()
                                (declare (not safe))
                                (##car _e2398524018_)))
                             (_tl2398324025_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2398524018_))))
                         (if (gx#stx-null? _tl2398324025_)
                             ((lambda (_L24028_ _L24030_)
                                (let ((__tmp50032
                                       (let ((__tmp50033
                                              (let ((__tmp50034
                                                     (if (gx#stx-e _L24030_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate123352_
                                                            _L24030_
                                                            _L24028_
                                                            _E23708_))
                                                         _L24028_)))
                                                (declare (not safe))
                                                (cons __tmp50034 '()))))
                                         (declare (not safe))
                                         (cons '@match-body __tmp50033))))
                                  (declare (not safe))
                                  (cons 'begin-annotation __tmp50032)))
                              _hd2398424022_
                              _hd2398124012_)
                             (let ()
                               (declare (not safe))
                               (_g2397323991_ _g2397423995_)))))
                     (let ()
                       (declare (not safe))
                       (_g2397323991_ _g2397423995_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2397323991_
                                                        _g2397423995_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2397323991_
                                                _g2397423995_))))))
                                 (declare (not safe))
                                 (_g2397224046_ _L23962_))))
                            (___kont4618746188_
                             (lambda (_L23756_ _L23758_)
                               (let* ((_g2377123790_
                                       (lambda (_g2377223786_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2377223786_)))
                                      (_g2377023941_
                                       (lambda (_g2377223794_)
                                         (if (gx#stx-pair? _g2377223794_)
                                             (let ((_e2377823797_
                                                    (gx#syntax-e
                                                     _g2377223794_)))
                                               (let ((_hd2377723801_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2377823797_)))
                                                     (_tl2377623804_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2377823797_))))
                                                 (if (gx#stx-pair?
                                                      _tl2377623804_)
                                                     (let ((_e2378123807_
                                                            (gx#syntax-e
                                                             _tl2377623804_)))
                                                       (let ((_hd2378023811_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2378123807_)))
                     (_tl2377923814_
                      (let () (declare (not safe)) (##cdr _e2378123807_))))
                 (if (gx#stx-pair? _tl2377923814_)
                     (let ((_e2378423817_ (gx#syntax-e _tl2377923814_)))
                       (let ((_hd2378323821_
                              (let ()
                                (declare (not safe))
                                (##car _e2378423817_)))
                             (_tl2378223824_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2378423817_))))
                         (if (gx#stx-null? _tl2378223824_)
                             ((lambda (_L23827_ _L23829_ _L23830_)
                                (if (gx#stx-e _L23829_)
                                    (let* ((_g2384723862_
                                            (lambda (_g2384823858_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2384823858_)))
                                           (_g2384623907_
                                            (lambda (_g2384823866_)
                                              (if (gx#stx-pair? _g2384823866_)
                                                  (let ((_e2385323869_
                                                         (gx#syntax-e
                                                          _g2384823866_)))
                                                    (let ((_hd2385223873_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2385323869_)))
                                                          (_tl2385123876_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2385323869_))))
                                                      (if (gx#stx-pair?
                                                           _tl2385123876_)
                                                          (let ((_e2385623879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2385123876_)))
                    (let ((_hd2385523883_
                           (let () (declare (not safe)) (##car _e2385623879_)))
                          (_tl2385423886_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2385623879_))))
                      (if (gx#stx-null? _tl2385423886_)
                          ((lambda (_L23889_ _L23891_)
                             (let ()
                               (let ((__tmp50061 (gx#datum->syntax '#f 'let))
                                     (__tmp50052
                                      (let ((__tmp50054
                                             (let ((__tmp50055
                                                    (let ((__tmp50056
                                                           (let ((__tmp50057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp50060 (gx#datum->syntax '#f 'lambda))
                                (__tmp50058
                                 (let ((__tmp50059
                                        (let ()
                                          (declare (not safe))
                                          (cons _L23891_ '()))))
                                   (declare (not safe))
                                   (cons '() __tmp50059))))
                            (declare (not safe))
                            (cons __tmp50060 __tmp50058))))
                     (declare (not safe))
                     (cons __tmp50057 '()))))
              (declare (not safe))
              (cons _L23830_ __tmp50056))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50055 '())))
                                            (__tmp50053
                                             (let ()
                                               (declare (not safe))
                                               (cons _L23889_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50054 __tmp50053))))
                                 (declare (not safe))
                                 (cons __tmp50061 __tmp50052))))
                           _hd2385523883_
                           _hd2385223873_)
                          (let ()
                            (declare (not safe))
                            (_g2384723862_ _g2384823866_)))))
                  (let ()
                    (declare (not safe))
                    (_g2384723862_ _g2384823866_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2384723862_
                                                     _g2384823866_)))))
                                           (__tmp50062
                                            (list (let ()
                                                    (declare (not safe))
                                                    (_generate123352_
                                                     _L23829_
                                                     _L23827_
                                                     _E23708_))
                                                  (let ((__tmp50063
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L23830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-clauses23351_
                                                     _L23756_
                                                     __tmp50063)))))
                                      (declare (not safe))
                                      (_g2384623907_ __tmp50062))
                                    (let* ((_g2391123919_
                                            (lambda (_g2391223915_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2391223915_)))
                                           (_g2391023937_
                                            (lambda (_g2391223923_)
                                              ((lambda (_L23926_)
                                                 (let ()
                                                   (let ((__tmp50049
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp50035
                                                          (let ((__tmp50037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp50038
                                (let ((__tmp50039
                                       (let ((__tmp50040
                                              (let ((__tmp50048
                                                     (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation))
                                                    (__tmp50041
                                                     (let ((__tmp50047
                                                            (gx#datum->syntax
                                                             '#f
                                                             '@match-else))
                                                           (__tmp50042
                                                            (let ((__tmp50043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50046 (gx#datum->syntax '#f 'lambda))
                                 (__tmp50044
                                  (let ((__tmp50045
                                         (let ()
                                           (declare (not safe))
                                           (cons _L23827_ '()))))
                                    (declare (not safe))
                                    (cons '() __tmp50045))))
                             (declare (not safe))
                             (cons __tmp50046 __tmp50044))))
                      (declare (not safe))
                      (cons __tmp50043 '()))))
               (declare (not safe))
               (cons __tmp50047 __tmp50042))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50048 __tmp50041))))
                                         (declare (not safe))
                                         (cons __tmp50040 '()))))
                                  (declare (not safe))
                                  (cons _L23830_ __tmp50039))))
                           (declare (not safe))
                           (cons __tmp50038 '())))
                        (__tmp50036
                         (let () (declare (not safe)) (cons _L23926_ '()))))
                    (declare (not safe))
                    (cons __tmp50037 __tmp50036))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50049
                                                           __tmp50035))))
                                               _g2391223923_)))
                                           (__tmp50050
                                            (let ((__tmp50051
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L23830_ '()))))
                                              (declare (not safe))
                                              (_generate-clauses23351_
                                               _L23756_
                                               __tmp50051))))
                                      (declare (not safe))
                                      (_g2391023937_ __tmp50050))))
                              _hd2378323821_
                              _hd2378023811_
                              _hd2377723801_)
                             (let ()
                               (declare (not safe))
                               (_g2377123790_ _g2377223794_)))))
                     (let ()
                       (declare (not safe))
                       (_g2377123790_ _g2377223794_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2377123790_
                                                        _g2377223794_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2377123790_
                                                _g2377223794_))))))
                                 (declare (not safe))
                                 (_g2377023941_ _L23758_))))
                            (___kont4618946190_
                             (lambda ()
                               (let ((__tmp50064
                                      (let ((__tmp50065
                                             (let ()
                                               (declare (not safe))
                                               (cons _E23708_ '()))))
                                        (declare (not safe))
                                        (cons '@match-body __tmp50065))))
                                 (declare (not safe))
                                 (cons 'begin-annotation __tmp50064)))))
                        (if (gx#stx-pair? ___stx4618246183_)
                            (let ((_e2371723952_
                                   (gx#syntax-e ___stx4618246183_)))
                              (let ((_tl2371523959_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2371723952_)))
                                    (_hd2371623956_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2371723952_))))
                                (if (gx#stx-null? _tl2371523959_)
                                    (___kont4618546186_ _hd2371623956_)
                                    (___kont4618746188_
                                     _tl2371523959_
                                     _hd2371623956_))))
                            (___kont4618946190_))))))
                 (_generate123352_
                  (lambda (_clause23354_ _body23356_ _E23357_)
                    (let* ((_g2335923383_
                            (lambda (_g2336023379_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2336023379_)))
                           (_g2335823702_
                            (lambda (_g2336023387_)
                              (if (gx#stx-pair? _g2336023387_)
                                  (let ((_e2336523390_
                                         (gx#syntax-e _g2336023387_)))
                                    (let ((_hd2336423394_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2336523390_)))
                                          (_tl2336323397_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2336523390_))))
                                      (if (gx#stx-pair? _tl2336323397_)
                                          (let ((_e2336823400_
                                                 (gx#syntax-e _tl2336323397_)))
                                            (let ((_hd2336723404_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2336823400_)))
                                                  (_tl2336623407_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2336823400_))))
                                              (if (gx#stx-pair/null?
                                                   _hd2336723404_)
                                                  (let ((_g50066_
                                                         (gx#syntax-split-splice
                                                          _hd2336723404_
                                                          '0)))
                                                    (begin
                                                      (let ((_g50067_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g50066_)
                           (##vector-length _g50066_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g50067_ 2)))
                    (error "Context expects 2 values" _g50067_)))
              (let ((_target2336923410_
                     (let () (declare (not safe)) (##vector-ref _g50066_ 0)))
                    (_tl2337123413_
                     (let () (declare (not safe)) (##vector-ref _g50066_ 1))))
                (if (gx#stx-null? _tl2337123413_)
                    (letrec ((_loop2337223416_
                              (lambda (_hd2337023420_ _var2337623423_)
                                (if (gx#stx-pair? _hd2337023420_)
                                    (let ((_e2337323426_
                                           (gx#syntax-e _hd2337023420_)))
                                      (let ((_lp-hd2337423430_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2337323426_)))
                                            (_lp-tl2337523433_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2337323426_))))
                                        (let ((__tmp50084
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lp-hd2337423430_
                                                       _var2337623423_))))
                                          (declare (not safe))
                                          (_loop2337223416_
                                           _lp-tl2337523433_
                                           __tmp50084))))
                                    (let ((_var2337723436_
                                           (reverse _var2337623423_)))
                                      (if (gx#stx-null? _tl2336623407_)
                                          ((lambda (_L23440_ _L23442_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (let ((__tmp50068
                                                       (lambda (_g2346323466_
                                                                _g2346423469_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g2346323466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2346423469_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp50068
                                                          '()
                                                          _L23440_))
                                                _stx23343_)
                                               (let* ((_g2347223480_
                                                       (lambda (_g2347323476_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2347323476_)))
                                                      (_g2347123574_
                                                       (lambda (_g2347323484_)
                                                         ((lambda (_L23487_)
                                                            (let ()
                                                              (let* ((_g2350023508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2350123504_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2350123504_)))
                             (_g2349923570_
                              (lambda (_g2350123512_)
                                ((lambda (_L23515_)
                                   (let ()
                                     (let* ((_g2352823536_
                                             (lambda (_g2352923532_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2352923532_)))
                                            (_g2352723558_
                                             (lambda (_g2352923540_)
                                               ((lambda (_L23543_)
                                                  (let ()
                                                    (let ()
                                                      (gx#stx-wrap-source
                                                       (let ((__tmp50073
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp50069
                                                              (let ((__tmp50071
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp50072
                                    (let ()
                                      (declare (not safe))
                                      (cons _L23543_ '()))))
                               (declare (not safe))
                               (cons _L23442_ __tmp50072)))
                            (__tmp50070
                             (let ()
                               (declare (not safe))
                               (cons _L23487_ '()))))
                        (declare (not safe))
                        (cons __tmp50071 __tmp50070))))
                 (declare (not safe))
                 (cons __tmp50073 __tmp50069))
               (gx#stx-source _stx23343_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2352923540_)))
                                            (__tmp50074
                                             (gx#stx-wrap-source
                                              (let ((__tmp50079
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp50075
                                                     (let ((__tmp50077
                                                            (let ((__tmp50078
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2356123564_ _g2356223567_)
                             (let ()
                               (declare (not safe))
                               (cons _g2356123564_ _g2356223567_)))))
                      (declare (not safe))
                      (foldr1 __tmp50078 '() _L23440_)))
                   (__tmp50076
                    (let () (declare (not safe)) (cons _L23515_ '()))))
               (declare (not safe))
               (cons __tmp50077 __tmp50076))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50079 __tmp50075))
                                              (gx#stx-source _stx23343_))))
                                       (declare (not safe))
                                       (_g2352723558_ __tmp50074))))
                                 _g2350123512_))))
                        (declare (not safe))
                        (_g2349923570_ _body23356_))))
                  _g2347323484_)))
              (__tmp50080
               (let _recur23578_ ((_rest23581_ _clause23354_)
                                  (_rest-targets23583_ _tgt-lst23345_))
                 (let* ((___stx4620846209_ _rest23581_)
                        (_g2358623598_
                         (lambda ()
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            ___stx4620846209_))))
                   (let ((___kont4621146212_
                          (lambda (_L23634_ _L23636_)
                            (let* ((_g2365123663_
                                    (lambda (_g2365223659_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g2365223659_)))
                                   (_g2365023694_
                                    (lambda (_g2365223667_)
                                      (if (gx#stx-pair? _g2365223667_)
                                          (let ((_e2365723670_
                                                 (gx#syntax-e _g2365223667_)))
                                            (let ((_hd2365623674_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2365723670_)))
                                                  (_tl2365523677_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2365723670_))))
                                              ((lambda (_L23680_ _L23682_)
                                                 (let ((__tmp50081
                                                        (let ()
                                                          (declare (not safe))
                                                          (_recur23578_
                                                           _L23634_
                                                           _L23680_))))
                                                   (declare (not safe))
                                                   (|gerbil/core$<match>[1]#generate-match1|
                                                    _stx23343_
                                                    _L23682_
                                                    _L23636_
                                                    __tmp50081
                                                    _E23357_)))
                                               _tl2365523677_
                                               _hd2365623674_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g2365123663_ _g2365223667_))))))
                              (declare (not safe))
                              (_g2365023694_ _rest-targets23583_))))
                         (___kont4621346214_
                          (lambda ()
                            (let ((__tmp50082
                                   (let ((__tmp50083
                                          (lambda (_g2360823611_ _g2360923614_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g2360823611_
                                                    _g2360923614_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50083 '() _L23440_))))
                              (declare (not safe))
                              (cons _L23442_ __tmp50082)))))
                     (if (gx#stx-pair? ___stx4620846209_)
                         (let ((_e2359223624_ (gx#syntax-e ___stx4620846209_)))
                           (let ((_tl2359023631_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2359223624_)))
                                 (_hd2359123628_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2359223624_))))
                             (___kont4621146212_
                              _tl2359023631_
                              _hd2359123628_)))
                         (___kont4621346214_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2347123574_ __tmp50080))))
                                           _var2337723436_
                                           _hd2336423394_)
                                          (let ()
                                            (declare (not safe))
                                            (_g2335923383_
                                             _g2336023387_))))))))
                      (let ()
                        (declare (not safe))
                        (_loop2337223416_ _target2336923410_ '())))
                    (let ()
                      (declare (not safe))
                      (_g2335923383_ _g2336023387_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2335923383_
                                                     _g2336023387_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g2335923383_ _g2336023387_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2335923383_ _g2336023387_)))))
                           (__tmp50085
                            (list (gx#genident 'K)
                                  (apply append
                                         (map |gerbil/core$<match>[1]#match-pattern-vars|
                                              _clause23354_)))))
                      (declare (not safe))
                      (_g2335823702_ __tmp50085)))))
          (let ((__tmp50086
                 (let ((__tmp50087 (gx#stx-length _tgt-lst23345_)))
                   (declare (not safe))
                   (_parse-body23348_ __tmp50087))))
            (declare (not safe))
            (_generate-body23350_ __tmp50086)))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx23245_ _tgt23247_ _clauses23248_)
        (letrec ((_reclause23250_
                  (lambda (_clause23253_)
                    (let* ((___stx4622446225_ _clause23253_)
                           (_g2325823273_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4622446225_))))
                      (let ((___kont4622746228_ (lambda () _clause23253_))
                            (___kont4622946230_
                             (lambda (_L23301_ _L23303_)
                               (gx#stx-wrap-source
                                (let ((__tmp50088
                                       (let ()
                                         (declare (not safe))
                                         (cons _L23303_ '()))))
                                  (declare (not safe))
                                  (cons __tmp50088 _L23301_))
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (___kont4623146232_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _stx23245_
                                _clause23253_))))
                        (if (gx#stx-pair? ___stx4622446225_)
                            (let ((_e2326223325_
                                   (gx#syntax-e ___stx4622446225_)))
                              (let ((_tl2326023332_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2326223325_)))
                                    (_hd2326123329_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2326223325_))))
                                (if (gx#identifier? _hd2326123329_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g50089_|
                                         _hd2326123329_)
                                        (___kont4622746228_)
                                        (___kont4622946230_
                                         _tl2326023332_
                                         _hd2326123329_))
                                    (___kont4622946230_
                                     _tl2326023332_
                                     _hd2326123329_))))
                            (___kont4623146232_)))))))
          (let ((__tmp50091
                 (let () (declare (not safe)) (cons _tgt23247_ '())))
                (__tmp50090 (gx#stx-map _reclause23250_ _clauses23248_)))
            (declare (not safe))
            (|gerbil/core$<match>[1]#generate-match*|
             _stx23245_
             __tmp50091
             __tmp50090)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx30476_)
        (let* ((___stx4625246253_ _stx30476_)
               (_g3048130510_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4625246253_))))
          (let ((___kont4625546256_
                 (lambda (_L30750_)
                   (let* ((_g3076330771_
                           (lambda (_g3076430767_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3076430767_)))
                          (_g3076230824_
                           (lambda (_g3076430775_)
                             ((lambda (_L30778_)
                                (let ()
                                  (let* ((_g3079030798_
                                          (lambda (_g3079130794_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3079130794_)))
                                         (_g3078930820_
                                          (lambda (_g3079130802_)
                                            ((lambda (_L30805_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp50095
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp50092
                                                          (let ((__tmp50094
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L30778_ '())))
                        (__tmp50093
                         (let () (declare (not safe)) (cons _L30805_ '()))))
                    (declare (not safe))
                    (cons __tmp50094 __tmp50093))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50095
                                                           __tmp50092)))))
                                             _g3079130802_))))
                                    (_g3078930820_
                                     (gx#stx-wrap-source
                                      (let ((__tmp50097
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp50096
                                             (let ()
                                               (declare (not safe))
                                               (cons _L30778_ _L30750_))))
                                        (declare (not safe))
                                        (cons __tmp50097 __tmp50096))
                                      (gx#stx-source _stx30476_))))))
                              _g3076430775_))))
                     (_g3076230824_ (gx#genident 'e)))))
                (___kont4625746258_
                 (lambda (_L30645_)
                   (let* ((_g3065830666_
                           (lambda (_g3065930662_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3065930662_)))
                          (_g3065730719_
                           (lambda (_g3065930670_)
                             ((lambda (_L30673_)
                                (let ()
                                  (let* ((_g3068530693_
                                          (lambda (_g3068630689_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3068630689_)))
                                         (_g3068430715_
                                          (lambda (_g3068630697_)
                                            ((lambda (_L30700_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp50100
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp50098
                                                          (let ((__tmp50099
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L30700_ '()))))
                    (declare (not safe))
                    (cons _L30673_ __tmp50099))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50100
                                                           __tmp50098)))))
                                             _g3068630697_))))
                                    (_g3068430715_
                                     (gx#stx-wrap-source
                                      (let ((__tmp50102
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp50101
                                             (let ()
                                               (declare (not safe))
                                               (cons _L30673_ _L30645_))))
                                        (declare (not safe))
                                        (cons __tmp50102 __tmp50101))
                                      (gx#stx-source _stx30476_))))))
                              _g3065930670_))))
                     (_g3065730719_ (gx#genident 'args)))))
                (___kont4625946260_
                 (lambda (_L30537_ _L30539_)
                   (let* ((_g3055330561_
                           (lambda (_g3055430557_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3055430557_)))
                          (_g3055230614_
                           (lambda (_g3055430565_)
                             ((lambda (_L30568_)
                                (let ()
                                  (let* ((_g3058030588_
                                          (lambda (_g3058130584_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3058130584_)))
                                         (_g3057930610_
                                          (lambda (_g3058130592_)
                                            ((lambda (_L30595_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp50108
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp50103
                                                          (let ((__tmp50105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp50106
                                (let ((__tmp50107
                                       (let ()
                                         (declare (not safe))
                                         (cons _L30539_ '()))))
                                  (declare (not safe))
                                  (cons _L30568_ __tmp50107))))
                           (declare (not safe))
                           (cons __tmp50106 '())))
                        (__tmp50104
                         (let () (declare (not safe)) (cons _L30595_ '()))))
                    (declare (not safe))
                    (cons __tmp50105 __tmp50104))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50108
                                                           __tmp50103)))))
                                             _g3058130592_))))
                                    (_g3057930610_
                                     (let ()
                                       (declare (not safe))
                                       (|gerbil/core$<match>[1]#generate-match|
                                        _stx30476_
                                        _L30568_
                                        _L30537_))))))
                              _g3055430565_))))
                     (_g3055230614_ (gx#genident _L30539_))))))
            (let* ((___match4630546306_
                    (lambda (_e3050130517_
                             _hd3050030521_
                             _tl3049930524_
                             _e3050430527_
                             _hd3050330531_
                             _tl3050230534_)
                      (let ((_L30537_ _tl3050230534_)
                            (_L30539_ _hd3050330531_))
                        (if (gx#stx-list? _L30537_)
                            (___kont4625946260_ _L30537_ _L30539_)
                            (let () (declare (not safe)) (_g3048130510_))))))
                   (___match4629346294_
                    (lambda (_e3049330625_
                             _hd3049230629_
                             _tl3049130632_
                             _e3049630635_
                             _hd3049530639_
                             _tl3049430642_)
                      (let ((_L30645_ _tl3049430642_))
                        (if (gx#stx-list? _L30645_)
                            (___kont4625746258_ _L30645_)
                            (___match4630546306_
                             _e3049330625_
                             _hd3049230629_
                             _tl3049130632_
                             _e3049630635_
                             _hd3049530639_
                             _tl3049430642_)))))
                   (___match4627746278_
                    (lambda (_e3048630730_
                             _hd3048530734_
                             _tl3048430737_
                             _e3048930740_
                             _hd3048830744_
                             _tl3048730747_)
                      (let ((_L30750_ _tl3048730747_))
                        (if (gx#stx-list? _L30750_)
                            (___kont4625546256_ _L30750_)
                            (___match4630546306_
                             _e3048630730_
                             _hd3048530734_
                             _tl3048430737_
                             _e3048930740_
                             _hd3048830744_
                             _tl3048730747_))))))
              (if (gx#stx-pair? ___stx4625246253_)
                  (let ((_e3048630730_ (gx#syntax-e ___stx4625246253_)))
                    (let ((_tl3048430737_
                           (let () (declare (not safe)) (##cdr _e3048630730_)))
                          (_hd3048530734_
                           (let ()
                             (declare (not safe))
                             (##car _e3048630730_))))
                      (if (gx#stx-pair? _tl3048430737_)
                          (let ((_e3048930740_ (gx#syntax-e _tl3048430737_)))
                            (let ((_tl3048730747_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3048930740_)))
                                  (_hd3048830744_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3048930740_))))
                              (if (gx#identifier? _hd3048830744_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50110_|
                                       _hd3048830744_)
                                      (___match4627746278_
                                       _e3048630730_
                                       _hd3048530734_
                                       _tl3048430737_
                                       _e3048930740_
                                       _hd3048830744_
                                       _tl3048730747_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50109_|
                                           _hd3048830744_)
                                          (___match4629346294_
                                           _e3048630730_
                                           _hd3048530734_
                                           _tl3048430737_
                                           _e3048930740_
                                           _hd3048830744_
                                           _tl3048730747_)
                                          (___match4630546306_
                                           _e3048630730_
                                           _hd3048530734_
                                           _tl3048430737_
                                           _e3048930740_
                                           _hd3048830744_
                                           _tl3048730747_)))
                                  (___match4630546306_
                                   _e3048630730_
                                   _hd3048530734_
                                   _tl3048430737_
                                   _e3048930740_
                                   _hd3048830744_
                                   _tl3048730747_))))
                          (let () (declare (not safe)) (_g3048130510_)))))
                  (let () (declare (not safe)) (_g3048130510_))))))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx30832_)
        (let* ((_g3083530859_
                (lambda (_g3083630855_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g3083630855_)))
               (_g3083431071_
                (lambda (_g3083630863_)
                  (if (gx#stx-pair? _g3083630863_)
                      (let ((_e3084130866_ (gx#syntax-e _g3083630863_)))
                        (let ((_hd3084030870_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3084130866_)))
                              (_tl3083930873_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3084130866_))))
                          (if (gx#stx-pair? _tl3083930873_)
                              (let ((_e3084430876_
                                     (gx#syntax-e _tl3083930873_)))
                                (let ((_hd3084330880_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3084430876_)))
                                      (_tl3084230883_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3084430876_))))
                                  (if (gx#stx-pair/null? _hd3084330880_)
                                      (let ((_g50111_
                                             (gx#syntax-split-splice
                                              _hd3084330880_
                                              '0)))
                                        (begin
                                          (let ((_g50112_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g50111_)
                                                       (##vector-length
                                                        _g50111_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g50112_ 2)))
                                                (error "Context expects 2 values"
                                                       _g50112_)))
                                          (let ((_target3084530886_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g50111_ 0)))
                                                (_tl3084730889_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g50111_ 1))))
                                            (if (gx#stx-null? _tl3084730889_)
                                                (letrec ((_loop3084830892_
                                                          (lambda (_hd3084630896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e3085230899_)
                    (if (gx#stx-pair? _hd3084630896_)
                        (let ((_e3084930902_ (gx#syntax-e _hd3084630896_)))
                          (let ((_lp-hd3085030906_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3084930902_)))
                                (_lp-tl3085130909_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3084930902_))))
                            (_loop3084830892_
                             _lp-tl3085130909_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd3085030906_ _e3085230899_)))))
                        (let ((_e3085330912_ (reverse _e3085230899_)))
                          ((lambda (_L30916_ _L30918_)
                             (if (gx#stx-list? _L30916_)
                                 (let* ((_g3093630953_
                                         (lambda (_g3093730949_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g3093730949_)))
                                        (_g3093531059_
                                         (lambda (_g3093730957_)
                                           (if (gx#stx-pair/null?
                                                _g3093730957_)
                                               (let ((_g50113_
                                                      (gx#syntax-split-splice
                                                       _g3093730957_
                                                       '0)))
                                                 (begin
                                                   (let ((_g50114_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g50113_)
                        (##vector-length _g50113_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g50114_ 2)))
                 (error "Context expects 2 values" _g50114_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target3093930960_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g50113_
                                                             0)))
                                                         (_tl3094130963_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g50113_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl3094130963_)
                                                         (letrec ((_loop3094230966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd3094030970_ _$e3094630973_)
                             (if (gx#stx-pair? _hd3094030970_)
                                 (let ((_e3094330976_
                                        (gx#syntax-e _hd3094030970_)))
                                   (let ((_lp-hd3094430980_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3094330976_)))
                                         (_lp-tl3094530983_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3094330976_))))
                                     (_loop3094230966_
                                      _lp-tl3094530983_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd3094430980_
                                              _$e3094630973_)))))
                                 (let ((_$e3094730986_
                                        (reverse _$e3094630973_)))
                                   ((lambda (_L30990_)
                                      (let ()
                                        (let* ((_g3100631014_
                                                (lambda (_g3100731010_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g3100731010_)))
                                               (_g3100531047_
                                                (lambda (_g3100731018_)
                                                  ((lambda (_L31021_)
                                                     (let ()
                                                       (let ()
                                                         (let ((__tmp50121
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let))
                       (__tmp50115
                        (let ((__tmp50117
                               (begin
                                 (gx#syntax-check-splice-targets
                                  _L30918_
                                  _L30990_)
                                 (let ((__tmp50118
                                        (lambda (_g3103531039_
                                                 _g3103631042_
                                                 _g3103731044_)
                                          (let ((__tmp50119
                                                 (let ((__tmp50120
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3103531039_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3103631042_
                                                         __tmp50120))))
                                            (declare (not safe))
                                            (cons __tmp50119 _g3103731044_)))))
                                   (declare (not safe))
                                   (foldr2 __tmp50118 '() _L30918_ _L30990_))))
                              (__tmp50116
                               (let ()
                                 (declare (not safe))
                                 (cons _L31021_ '()))))
                          (declare (not safe))
                          (cons __tmp50117 __tmp50116))))
                   (declare (not safe))
                   (cons __tmp50121 __tmp50115)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g3100731018_))))
                                          (_g3100531047_
                                           (let ((__tmp50122
                                                  (let ((__tmp50123
                                                         (lambda (_g3105031053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3105131056_)
                   (let ()
                     (declare (not safe))
                     (cons _g3105031053_ _g3105131056_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp50123
                                                            '()
                                                            _L30990_))))
                                             (declare (not safe))
                                             (|gerbil/core$<match>[1]#generate-match*|
                                              _stx30832_
                                              __tmp50122
                                              _L30916_))))))
                                    _$e3094730986_))))))
                   (_loop3094230966_ _target3093930960_ '()))
                 (_g3093630953_ _g3093730957_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3093630953_
                                                _g3093730957_)))))
                                   (_g3093531059_
                                    (gx#gentemps
                                     (let ((__tmp50124
                                            (lambda (_g3106231065_
                                                     _g3106331068_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3106231065_
                                                      _g3106331068_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp50124 '() _L30918_)))))
                                 (_g3083530859_ _g3083630863_)))
                           _tl3084230883_
                           _e3085330912_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop3084830892_
                                                   _target3084530886_
                                                   '()))
                                                (_g3083530859_
                                                 _g3083630863_)))))
                                      (_g3083530859_ _g3083630863_))))
                              (_g3083530859_ _g3083630863_))))
                      (_g3083530859_ _g3083630863_)))))
          (_g3083431071_ _stx30832_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx31077_)
        (let* ((___stx4630846309_ _$stx31077_)
               (_g3108331166_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4630846309_))))
          (let ((___kont4631146312_
                 (lambda (_L31496_)
                   (let ((__tmp50128 (gx#datum->syntax '#f 'let))
                         (__tmp50125
                          (let ((__tmp50126
                                 (let ((__tmp50127
                                        (lambda (_g3151231515_ _g3151331518_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3151231515_
                                                  _g3151331518_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50127 '() _L31496_))))
                            (declare (not safe))
                            (cons '() __tmp50126))))
                     (declare (not safe))
                     (cons __tmp50128 __tmp50125))))
                (___kont4631546316_
                 (lambda (_L31404_ _L31406_ _L31407_ _L31408_)
                   (let ((__tmp50129
                          (let ((__tmp50132
                                 (let ((__tmp50133
                                        (let ((__tmp50134
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31406_ '()))))
                                          (declare (not safe))
                                          (cons _L31407_ __tmp50134))))
                                   (declare (not safe))
                                   (cons __tmp50133 '())))
                                (__tmp50130
                                 (let ((__tmp50131
                                        (lambda (_g3143031433_ _g3143131436_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3143031433_
                                                  _g3143131436_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50131 '() _L31404_))))
                            (declare (not safe))
                            (cons __tmp50132 __tmp50130))))
                     (declare (not safe))
                     (cons _L31408_ __tmp50129))))
                (___kont4631946320_
                 (lambda (_L31277_ _L31279_ _L31280_)
                   (let ((__tmp50144 (gx#datum->syntax '#f 'match*))
                         (__tmp50135
                          (let ((__tmp50142
                                 (let ((__tmp50143
                                        (lambda (_g3130631309_ _g3130731312_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3130631309_
                                                  _g3130731312_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50143 '() _L31279_)))
                                (__tmp50136
                                 (let ((__tmp50137
                                        (let ((__tmp50140
                                               (let ((__tmp50141
                                                      (lambda (_g3130431315_
                                                               _g3130531318_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3130431315_
                                                                _g3130531318_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp50141
                                                         '()
                                                         _L31280_)))
                                              (__tmp50138
                                               (let ((__tmp50139
                                                      (lambda (_g3130231321_
                                                               _g3130331324_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3130231321_
                                                                _g3130331324_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp50139
                                                         '()
                                                         _L31277_))))
                                          (declare (not safe))
                                          (cons __tmp50140 __tmp50138))))
                                   (declare (not safe))
                                   (cons __tmp50137 '()))))
                            (declare (not safe))
                            (cons __tmp50142 __tmp50136))))
                     (declare (not safe))
                     (cons __tmp50144 __tmp50135)))))
            (let* ((___match4640146402_
                    (lambda (_e3113131173_
                             _hd3113031177_
                             _tl3112931180_
                             _e3113431183_
                             _hd3113331187_
                             _tl3113231190_
                             ___splice4632146322_
                             _target3113531193_
                             _tl3113731196_)
                      (letrec ((_loop3113831199_
                                (lambda (_hd3113631203_
                                         _expr3114231206_
                                         _hd3114331208_)
                                  (if (gx#stx-pair? _hd3113631203_)
                                      (let ((_e3113931211_
                                             (gx#syntax-e _hd3113631203_)))
                                        (let ((_lp-tl3114131218_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3113931211_)))
                                              (_lp-hd3114031215_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3113931211_))))
                                          (if (gx#stx-pair? _lp-hd3114031215_)
                                              (let ((_e3114831221_
                                                     (gx#syntax-e
                                                      _lp-hd3114031215_)))
                                                (let ((_tl3114631228_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3114831221_)))
                                                      (_hd3114731225_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3114831221_))))
                                                  (if (gx#stx-pair?
                                                       _tl3114631228_)
                                                      (let ((_e3115131231_
                                                             (gx#syntax-e
                                                              _tl3114631228_)))
                                                        (let ((_tl3114931238_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3115131231_)))
                      (_hd3115031235_
                       (let () (declare (not safe)) (##car _e3115131231_))))
                  (if (gx#stx-null? _tl3114931238_)
                      (_loop3113831199_
                       _lp-tl3114131218_
                       (let ()
                         (declare (not safe))
                         (cons _hd3115031235_ _expr3114231206_))
                       (let ()
                         (declare (not safe))
                         (cons _hd3114731225_ _hd3114331208_)))
                      (let () (declare (not safe)) (_g3108331166_)))))
              (let () (declare (not safe)) (_g3108331166_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g3108331166_)))))
                                      (let ((_hd3114531244_
                                             (reverse _hd3114331208_))
                                            (_expr3114431241_
                                             (reverse _expr3114231206_)))
                                        (if (gx#stx-pair/null? _tl3113231190_)
                                            (let ((___splice4632346324_
                                                   (gx#syntax-split-splice
                                                    _tl3113231190_
                                                    '0)))
                                              (let ((_tl3115431250_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4632346324_
                                                        '1)))
                                                    (_target3115231247_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4632346324_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3115431250_)
                                                    (letrec ((_loop3115531253_
                                                              (lambda (_hd3115331257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body3115931260_)
                        (if (gx#stx-pair? _hd3115331257_)
                            (let ((_e3115631263_ (gx#syntax-e _hd3115331257_)))
                              (let ((_lp-tl3115831270_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3115631263_)))
                                    (_lp-hd3115731267_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3115631263_))))
                                (_loop3115531253_
                                 _lp-tl3115831270_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd3115731267_
                                         _body3115931260_)))))
                            (let ((_body3116031273_
                                   (reverse _body3115931260_)))
                              (___kont4631946320_
                               _body3116031273_
                               _expr3114431241_
                               _hd3114531244_))))))
              (_loop3115531253_ _target3115231247_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3108331166_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3108331166_))))))))
                        (_loop3113831199_ _target3113531193_ '() '()))))
                   (___match4639346394_
                    (lambda (_e3113131173_
                             _hd3113031177_
                             _tl3112931180_
                             _e3113431183_
                             _hd3113331187_
                             _tl3113231190_)
                      (if (gx#stx-pair/null? _hd3113331187_)
                          (let ((___splice4632146322_
                                 (gx#syntax-split-splice _hd3113331187_ '0)))
                            (let ((_tl3113731196_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4632146322_ '1)))
                                  (_target3113531193_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4632146322_ '0))))
                              (if (gx#stx-null? _tl3113731196_)
                                  (___match4640146402_
                                   _e3113131173_
                                   _hd3113031177_
                                   _tl3112931180_
                                   _e3113431183_
                                   _hd3113331187_
                                   _tl3113231190_
                                   ___splice4632146322_
                                   _target3113531193_
                                   _tl3113731196_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3108331166_)))))
                          (let () (declare (not safe)) (_g3108331166_)))))
                   (___match4638146382_
                    (lambda (_e3110731334_
                             _hd3110631338_
                             _tl3110531341_
                             _e3111031344_
                             _hd3110931348_
                             _tl3110831351_
                             _e3111331354_
                             _hd3111231358_
                             _tl3111131361_
                             _e3111631364_
                             _hd3111531368_
                             _tl3111431371_
                             ___splice4631746318_
                             _target3111731374_
                             _tl3111931377_)
                      (letrec ((_loop3112031380_
                                (lambda (_hd3111831384_ _body3112431387_)
                                  (if (gx#stx-pair? _hd3111831384_)
                                      (let ((_e3112131390_
                                             (gx#syntax-e _hd3111831384_)))
                                        (let ((_lp-tl3112331397_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3112131390_)))
                                              (_lp-hd3112231394_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3112131390_))))
                                          (_loop3112031380_
                                           _lp-tl3112331397_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3112231394_
                                                   _body3112431387_)))))
                                      (let ((_body3112531400_
                                             (reverse _body3112431387_)))
                                        (let ((_L31404_ _body3112531400_)
                                              (_L31406_ _hd3111531368_)
                                              (_L31407_ _hd3111231358_)
                                              (_L31408_ _hd3110631338_))
                                          (if (let ()
                                                (declare (not safe))
                                                (|gerbil/core$<match>[1]#match-pattern?|
                                                 _L31407_))
                                              (___kont4631546316_
                                               _L31404_
                                               _L31406_
                                               _L31407_
                                               _L31408_)
                                              (___match4639346394_
                                               _e3110731334_
                                               _hd3110631338_
                                               _tl3110531341_
                                               _e3111031344_
                                               _hd3110931348_
                                               _tl3110831351_))))))))
                        (_loop3112031380_ _target3111731374_ '()))))
                   (___match4634746348_
                    (lambda (_e3108831446_
                             _hd3108731450_
                             _tl3108631453_
                             _e3109131456_
                             _hd3109031460_
                             _tl3108931463_
                             ___splice4631346314_
                             _target3109231466_
                             _tl3109431469_)
                      (letrec ((_loop3109531472_
                                (lambda (_hd3109331476_ _body3109931479_)
                                  (if (gx#stx-pair? _hd3109331476_)
                                      (let ((_e3109631482_
                                             (gx#syntax-e _hd3109331476_)))
                                        (let ((_lp-tl3109831489_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3109631482_)))
                                              (_lp-hd3109731486_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3109631482_))))
                                          (_loop3109531472_
                                           _lp-tl3109831489_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3109731486_
                                                   _body3109931479_)))))
                                      (let ((_body3110031492_
                                             (reverse _body3109931479_)))
                                        (___kont4631146312_
                                         _body3110031492_))))))
                        (_loop3109531472_ _target3109231466_ '())))))
              (if (gx#stx-pair? ___stx4630846309_)
                  (let ((_e3108831446_ (gx#syntax-e ___stx4630846309_)))
                    (let ((_tl3108631453_
                           (let () (declare (not safe)) (##cdr _e3108831446_)))
                          (_hd3108731450_
                           (let ()
                             (declare (not safe))
                             (##car _e3108831446_))))
                      (if (gx#stx-pair? _tl3108631453_)
                          (let ((_e3109131456_ (gx#syntax-e _tl3108631453_)))
                            (let ((_tl3108931463_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3109131456_)))
                                  (_hd3109031460_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3109131456_))))
                              (if (gx#stx-null? _hd3109031460_)
                                  (if (gx#stx-pair/null? _tl3108931463_)
                                      (let ((___splice4631346314_
                                             (gx#syntax-split-splice
                                              _tl3108931463_
                                              '0)))
                                        (let ((_tl3109431469_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4631346314_
                                                  '1)))
                                              (_target3109231466_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4631346314_
                                                  '0))))
                                          (if (gx#stx-null? _tl3109431469_)
                                              (___match4634746348_
                                               _e3108831446_
                                               _hd3108731450_
                                               _tl3108631453_
                                               _e3109131456_
                                               _hd3109031460_
                                               _tl3108931463_
                                               ___splice4631346314_
                                               _target3109231466_
                                               _tl3109431469_)
                                              (if (gx#stx-pair/null?
                                                   _hd3109031460_)
                                                  (let ((___splice4632146322_
                                                         (gx#syntax-split-splice
                                                          _hd3109031460_
                                                          '0)))
                                                    (let ((_tl3113731196_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4632146322_
                                                              '1)))
                                                          (_target3113531193_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4632146322_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3113731196_)
                                                          (___match4640146402_
                                                           _e3108831446_
                                                           _hd3108731450_
                                                           _tl3108631453_
                                                           _e3109131456_
                                                           _hd3109031460_
                                                           _tl3108931463_
                                                           ___splice4632146322_
                                                           _target3113531193_
                                                           _tl3113731196_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3108331166_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3108331166_))))))
                                      (if (gx#stx-pair/null? _hd3109031460_)
                                          (let ((___splice4632146322_
                                                 (gx#syntax-split-splice
                                                  _hd3109031460_
                                                  '0)))
                                            (let ((_tl3113731196_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4632146322_
                                                      '1)))
                                                  (_target3113531193_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4632146322_
                                                      '0))))
                                              (if (gx#stx-null? _tl3113731196_)
                                                  (___match4640146402_
                                                   _e3108831446_
                                                   _hd3108731450_
                                                   _tl3108631453_
                                                   _e3109131456_
                                                   _hd3109031460_
                                                   _tl3108931463_
                                                   ___splice4632146322_
                                                   _target3113531193_
                                                   _tl3113731196_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3108331166_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3108331166_))))
                                  (if (gx#stx-pair? _hd3109031460_)
                                      (let ((_e3111331354_
                                             (gx#syntax-e _hd3109031460_)))
                                        (let ((_tl3111131361_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3111331354_)))
                                              (_hd3111231358_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3111331354_))))
                                          (if (gx#stx-pair? _tl3111131361_)
                                              (let ((_e3111631364_
                                                     (gx#syntax-e
                                                      _tl3111131361_)))
                                                (let ((_tl3111431371_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3111631364_)))
                                                      (_hd3111531368_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3111631364_))))
                                                  (if (gx#stx-null?
                                                       _tl3111431371_)
                                                      (if (gx#stx-pair/null?
                                                           _tl3108931463_)
                                                          (let ((___splice4631746318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl3108931463_ '0)))
                    (let ((_tl3111931377_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4631746318_ '1)))
                          (_target3111731374_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4631746318_ '0))))
                      (if (gx#stx-null? _tl3111931377_)
                          (___match4638146382_
                           _e3108831446_
                           _hd3108731450_
                           _tl3108631453_
                           _e3109131456_
                           _hd3109031460_
                           _tl3108931463_
                           _e3111331354_
                           _hd3111231358_
                           _tl3111131361_
                           _e3111631364_
                           _hd3111531368_
                           _tl3111431371_
                           ___splice4631746318_
                           _target3111731374_
                           _tl3111931377_)
                          (if (gx#stx-pair/null? _hd3109031460_)
                              (let ((___splice4632146322_
                                     (gx#syntax-split-splice
                                      _hd3109031460_
                                      '0)))
                                (let ((_tl3113731196_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4632146322_
                                          '1)))
                                      (_target3113531193_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4632146322_
                                          '0))))
                                  (if (gx#stx-null? _tl3113731196_)
                                      (___match4640146402_
                                       _e3108831446_
                                       _hd3108731450_
                                       _tl3108631453_
                                       _e3109131456_
                                       _hd3109031460_
                                       _tl3108931463_
                                       ___splice4632146322_
                                       _target3113531193_
                                       _tl3113731196_)
                                      (let ()
                                        (declare (not safe))
                                        (_g3108331166_)))))
                              (let () (declare (not safe)) (_g3108331166_))))))
                  (if (gx#stx-pair/null? _hd3109031460_)
                      (let ((___splice4632146322_
                             (gx#syntax-split-splice _hd3109031460_ '0)))
                        (let ((_tl3113731196_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4632146322_ '1)))
                              (_target3113531193_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4632146322_ '0))))
                          (if (gx#stx-null? _tl3113731196_)
                              (___match4640146402_
                               _e3108831446_
                               _hd3108731450_
                               _tl3108631453_
                               _e3109131456_
                               _hd3109031460_
                               _tl3108931463_
                               ___splice4632146322_
                               _target3113531193_
                               _tl3113731196_)
                              (let () (declare (not safe)) (_g3108331166_)))))
                      (let () (declare (not safe)) (_g3108331166_))))
              (if (gx#stx-pair/null? _hd3109031460_)
                  (let ((___splice4632146322_
                         (gx#syntax-split-splice _hd3109031460_ '0)))
                    (let ((_tl3113731196_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4632146322_ '1)))
                          (_target3113531193_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4632146322_ '0))))
                      (if (gx#stx-null? _tl3113731196_)
                          (___match4640146402_
                           _e3108831446_
                           _hd3108731450_
                           _tl3108631453_
                           _e3109131456_
                           _hd3109031460_
                           _tl3108931463_
                           ___splice4632146322_
                           _target3113531193_
                           _tl3113731196_)
                          (let () (declare (not safe)) (_g3108331166_)))))
                  (let () (declare (not safe)) (_g3108331166_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd3109031460_)
                                                  (let ((___splice4632146322_
                                                         (gx#syntax-split-splice
                                                          _hd3109031460_
                                                          '0)))
                                                    (let ((_tl3113731196_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4632146322_
                                                              '1)))
                                                          (_target3113531193_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4632146322_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3113731196_)
                                                          (___match4640146402_
                                                           _e3108831446_
                                                           _hd3108731450_
                                                           _tl3108631453_
                                                           _e3109131456_
                                                           _hd3109031460_
                                                           _tl3108931463_
                                                           ___splice4632146322_
                                                           _target3113531193_
                                                           _tl3113731196_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3108331166_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3108331166_))))))
                                      (if (gx#stx-pair/null? _hd3109031460_)
                                          (let ((___splice4632146322_
                                                 (gx#syntax-split-splice
                                                  _hd3109031460_
                                                  '0)))
                                            (let ((_tl3113731196_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4632146322_
                                                      '1)))
                                                  (_target3113531193_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4632146322_
                                                      '0))))
                                              (if (gx#stx-null? _tl3113731196_)
                                                  (___match4640146402_
                                                   _e3108831446_
                                                   _hd3108731450_
                                                   _tl3108631453_
                                                   _e3109131456_
                                                   _hd3109031460_
                                                   _tl3108931463_
                                                   ___splice4632146322_
                                                   _target3113531193_
                                                   _tl3113731196_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3108331166_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3108331166_)))))))
                          (let () (declare (not safe)) (_g3108331166_)))))
                  (let () (declare (not safe)) (_g3108331166_))))))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx31529_)
        (let* ((___stx4640446405_ _$stx31529_)
               (_g3153431586_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4640446405_))))
          (let ((___kont4640746408_
                 (lambda (_L31756_ _L31758_ _L31759_ _L31760_ _L31761_)
                   (let ((__tmp50154 (gx#datum->syntax '#f 'with))
                         (__tmp50145
                          (let ((__tmp50151
                                 (let ((__tmp50152
                                        (let ((__tmp50153
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31759_ '()))))
                                          (declare (not safe))
                                          (cons _L31760_ __tmp50153))))
                                   (declare (not safe))
                                   (cons __tmp50152 '())))
                                (__tmp50146
                                 (let ((__tmp50147
                                        (let ((__tmp50148
                                               (let ((__tmp50149
                                                      (let ((__tmp50150
                                                             (lambda (_g3178631789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3178731792_)
                       (let ()
                         (declare (not safe))
                         (cons _g3178631789_ _g3178731792_)))))
                (declare (not safe))
                (foldr1 __tmp50150 '() _L31756_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L31758_ __tmp50149))))
                                          (declare (not safe))
                                          (cons _L31761_ __tmp50148))))
                                   (declare (not safe))
                                   (cons __tmp50147 '()))))
                            (declare (not safe))
                            (cons __tmp50151 __tmp50146))))
                     (declare (not safe))
                     (cons __tmp50154 __tmp50145))))
                (___kont4641146412_
                 (lambda (_L31643_)
                   (let ((__tmp50158 (gx#datum->syntax '#f 'let))
                         (__tmp50155
                          (let ((__tmp50156
                                 (let ((__tmp50157
                                        (lambda (_g3166031663_ _g3166131666_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3166031663_
                                                  _g3166131666_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50157 '() _L31643_))))
                            (declare (not safe))
                            (cons '() __tmp50156))))
                     (declare (not safe))
                     (cons __tmp50158 __tmp50155)))))
            (let* ((___match4647746478_
                    (lambda (_e3156831593_
                             _hd3156731597_
                             _tl3156631600_
                             _e3157131603_
                             _hd3157031607_
                             _tl3156931610_
                             ___splice4641346414_
                             _target3157231613_
                             _tl3157431616_)
                      (letrec ((_loop3157531619_
                                (lambda (_hd3157331623_ _body3157931626_)
                                  (if (gx#stx-pair? _hd3157331623_)
                                      (let ((_e3157631629_
                                             (gx#syntax-e _hd3157331623_)))
                                        (let ((_lp-tl3157831636_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3157631629_)))
                                              (_lp-hd3157731633_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3157631629_))))
                                          (_loop3157531619_
                                           _lp-tl3157831636_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3157731633_
                                                   _body3157931626_)))))
                                      (let ((_body3158031639_
                                             (reverse _body3157931626_)))
                                        (___kont4641146412_
                                         _body3158031639_))))))
                        (_loop3157531619_ _target3157231613_ '()))))
                   (___match4645546456_
                    (lambda (_e3154331676_
                             _hd3154231680_
                             _tl3154131683_
                             _e3154631686_
                             _hd3154531690_
                             _tl3154431693_
                             _e3154931696_
                             _hd3154831700_
                             _tl3154731703_
                             _e3155231706_
                             _hd3155131710_
                             _tl3155031713_
                             _e3155531716_
                             _hd3155431720_
                             _tl3155331723_
                             ___splice4640946410_
                             _target3155631726_
                             _tl3155831729_)
                      (letrec ((_loop3155931732_
                                (lambda (_hd3155731736_ _body3156331739_)
                                  (if (gx#stx-pair? _hd3155731736_)
                                      (let ((_e3156031742_
                                             (gx#syntax-e _hd3155731736_)))
                                        (let ((_lp-tl3156231749_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3156031742_)))
                                              (_lp-hd3156131746_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3156031742_))))
                                          (_loop3155931732_
                                           _lp-tl3156231749_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3156131746_
                                                   _body3156331739_)))))
                                      (let ((_body3156431752_
                                             (reverse _body3156331739_)))
                                        (___kont4640746408_
                                         _body3156431752_
                                         _tl3154731703_
                                         _hd3155431720_
                                         _hd3155131710_
                                         _hd3154231680_))))))
                        (_loop3155931732_ _target3155631726_ '())))))
              (if (gx#stx-pair? ___stx4640446405_)
                  (let ((_e3154331676_ (gx#syntax-e ___stx4640446405_)))
                    (let ((_tl3154131683_
                           (let () (declare (not safe)) (##cdr _e3154331676_)))
                          (_hd3154231680_
                           (let ()
                             (declare (not safe))
                             (##car _e3154331676_))))
                      (if (gx#stx-pair? _tl3154131683_)
                          (let ((_e3154631686_ (gx#syntax-e _tl3154131683_)))
                            (let ((_tl3154431693_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3154631686_)))
                                  (_hd3154531690_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3154631686_))))
                              (if (gx#stx-pair? _hd3154531690_)
                                  (let ((_e3154931696_
                                         (gx#syntax-e _hd3154531690_)))
                                    (let ((_tl3154731703_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3154931696_)))
                                          (_hd3154831700_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3154931696_))))
                                      (if (gx#stx-pair? _hd3154831700_)
                                          (let ((_e3155231706_
                                                 (gx#syntax-e _hd3154831700_)))
                                            (let ((_tl3155031713_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3155231706_)))
                                                  (_hd3155131710_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3155231706_))))
                                              (if (gx#stx-pair? _tl3155031713_)
                                                  (let ((_e3155531716_
                                                         (gx#syntax-e
                                                          _tl3155031713_)))
                                                    (let ((_tl3155331723_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3155531716_)))
                                                          (_hd3155431720_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3155531716_))))
                                                      (if (gx#stx-null?
                                                           _tl3155331723_)
                                                          (if (gx#stx-pair/null?
                                                               _tl3154431693_)
                                                              (let ((___splice4640946410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl3154431693_ '0)))
                        (let ((_tl3155831729_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4640946410_ '1)))
                              (_target3155631726_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4640946410_ '0))))
                          (if (gx#stx-null? _tl3155831729_)
                              (___match4645546456_
                               _e3154331676_
                               _hd3154231680_
                               _tl3154131683_
                               _e3154631686_
                               _hd3154531690_
                               _tl3154431693_
                               _e3154931696_
                               _hd3154831700_
                               _tl3154731703_
                               _e3155231706_
                               _hd3155131710_
                               _tl3155031713_
                               _e3155531716_
                               _hd3155431720_
                               _tl3155331723_
                               ___splice4640946410_
                               _target3155631726_
                               _tl3155831729_)
                              (let () (declare (not safe)) (_g3153431586_)))))
                      (let () (declare (not safe)) (_g3153431586_)))
                  (let () (declare (not safe)) (_g3153431586_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3153431586_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3153431586_)))))
                                  (if (gx#stx-null? _hd3154531690_)
                                      (if (gx#stx-pair/null? _tl3154431693_)
                                          (let ((___splice4641346414_
                                                 (gx#syntax-split-splice
                                                  _tl3154431693_
                                                  '0)))
                                            (let ((_tl3157431616_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4641346414_
                                                      '1)))
                                                  (_target3157231613_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4641346414_
                                                      '0))))
                                              (if (gx#stx-null? _tl3157431616_)
                                                  (___match4647746478_
                                                   _e3154331676_
                                                   _hd3154231680_
                                                   _tl3154131683_
                                                   _e3154631686_
                                                   _hd3154531690_
                                                   _tl3154431693_
                                                   ___splice4641346414_
                                                   _target3157231613_
                                                   _tl3157431616_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3153431586_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3153431586_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3153431586_))))))
                          (let () (declare (not safe)) (_g3153431586_)))))
                  (let () (declare (not safe)) (_g3153431586_))))))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx31801_)
        (let* ((___stx4648046481_ _$stx31801_)
               (_g3181231958_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4648046481_))))
          (let ((___kont4648346484_
                 (lambda (_L32562_ _L32564_ _L32565_)
                   (let ((__tmp50164 (gx#datum->syntax '#f 'and))
                         (__tmp50159
                          (let ((__tmp50160
                                 (lambda (_g3258632589_ _g3258732592_)
                                   (let ((__tmp50161
                                          (let ((__tmp50162
                                                 (let ((__tmp50163
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32562_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3258632589_
                                                         __tmp50163))))
                                            (declare (not safe))
                                            (cons _L32565_ __tmp50162))))
                                     (declare (not safe))
                                     (cons __tmp50161 _g3258732592_)))))
                            (declare (not safe))
                            (foldr1 __tmp50160 '() _L32564_))))
                     (declare (not safe))
                     (cons __tmp50164 __tmp50159))))
                (___kont4648746488_
                 (lambda (_L32452_ _L32454_ _L32455_)
                   (let ((__tmp50170 (gx#datum->syntax '#f 'or))
                         (__tmp50165
                          (let ((__tmp50166
                                 (lambda (_g3247632479_ _g3247732482_)
                                   (let ((__tmp50167
                                          (let ((__tmp50168
                                                 (let ((__tmp50169
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32452_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3247632479_
                                                         __tmp50169))))
                                            (declare (not safe))
                                            (cons _L32455_ __tmp50168))))
                                     (declare (not safe))
                                     (cons __tmp50167 _g3247732482_)))))
                            (declare (not safe))
                            (foldr1 __tmp50166 '() _L32454_))))
                     (declare (not safe))
                     (cons __tmp50170 __tmp50165))))
                (___kont4649146492_
                 (lambda (_L32352_ _L32354_ _L32355_)
                   (let ((__tmp50175 (gx#datum->syntax '#f 'not))
                         (__tmp50171
                          (let ((__tmp50172
                                 (let ((__tmp50173
                                        (let ((__tmp50174
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L32352_ '()))))
                                          (declare (not safe))
                                          (cons _L32354_ __tmp50174))))
                                   (declare (not safe))
                                   (cons _L32355_ __tmp50173))))
                            (declare (not safe))
                            (cons __tmp50172 '()))))
                     (declare (not safe))
                     (cons __tmp50175 __tmp50171))))
                (___kont4649346494_
                 (lambda (_L32278_ _L32280_)
                   (let ((__tmp50176
                          (let () (declare (not safe)) (cons _L32278_ '()))))
                     (declare (not safe))
                     (cons _L32280_ __tmp50176))))
                (___kont4649546496_
                 (lambda (_L32226_ _L32228_)
                   (let ((__tmp50185 (gx#datum->syntax '#f 'lambda))
                         (__tmp50177
                          (let ((__tmp50183
                                 (let ((__tmp50184
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50184 '())))
                                (__tmp50178
                                 (let ((__tmp50179
                                        (let ((__tmp50180
                                               (let ((__tmp50181
                                                      (let ((__tmp50182
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$obj)))
                                                        (declare (not safe))
                                                        (cons __tmp50182
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L32226_ __tmp50181))))
                                          (declare (not safe))
                                          (cons _L32228_ __tmp50180))))
                                   (declare (not safe))
                                   (cons __tmp50179 '()))))
                            (declare (not safe))
                            (cons __tmp50183 __tmp50178))))
                     (declare (not safe))
                     (cons __tmp50185 __tmp50177))))
                (___kont4649746498_
                 (lambda (_L32178_ _L32180_ _L32181_)
                   (let ((__tmp50204 (gx#datum->syntax '#f 'lambda))
                         (__tmp50186
                          (let ((__tmp50202
                                 (let ((__tmp50203
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50203 '())))
                                (__tmp50187
                                 (let ((__tmp50188
                                        (let ((__tmp50201
                                               (gx#datum->syntax '#f 'alet))
                                              (__tmp50189
                                               (let ((__tmp50194
                                                      (let ((__tmp50200
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$val))
                                                            (__tmp50195
                                                             (let ((__tmp50196
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50197
                                   (let ((__tmp50198
                                          (let ((__tmp50199
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp50199 '()))))
                                     (declare (not safe))
                                     (cons _L32180_ __tmp50198))))
                              (declare (not safe))
                              (cons _L32181_ __tmp50197))))
                       (declare (not safe))
                       (cons __tmp50196 '()))))
                (declare (not safe))
                (cons __tmp50200 __tmp50195)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50190
                                                      (let ((__tmp50191
                                                             (let ((__tmp50192
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50193 (gx#datum->syntax '#f '$val)))
                              (declare (not safe))
                              (cons __tmp50193 '()))))
                       (declare (not safe))
                       (cons _L32178_ __tmp50192))))
                (declare (not safe))
                (cons __tmp50191 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50194
                                                       __tmp50190))))
                                          (declare (not safe))
                                          (cons __tmp50201 __tmp50189))))
                                   (declare (not safe))
                                   (cons __tmp50188 '()))))
                            (declare (not safe))
                            (cons __tmp50202 __tmp50187))))
                     (declare (not safe))
                     (cons __tmp50204 __tmp50186))))
                (___kont4649946500_
                 (lambda (_L32109_ _L32111_ _L32112_)
                   (let ((__tmp50220 (gx#datum->syntax '#f 'lambda))
                         (__tmp50205
                          (let ((__tmp50218
                                 (let ((__tmp50219
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50219 '())))
                                (__tmp50206
                                 (let ((__tmp50207
                                        (let ((__tmp50217
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp50208
                                               (let ((__tmp50213
                                                      (let ((__tmp50214
                                                             (let ((__tmp50215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50216 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50216 '()))))
                       (declare (not safe))
                       (cons _L32111_ __tmp50215))))
                (declare (not safe))
                (cons _L32112_ __tmp50214)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50209
                                                      (let ((__tmp50210
                                                             (let ((__tmp50211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50212 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50212 '()))))
                       (declare (not safe))
                       (cons _L32109_ __tmp50211))))
                (declare (not safe))
                (cons __tmp50210 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50213
                                                       __tmp50209))))
                                          (declare (not safe))
                                          (cons __tmp50217 __tmp50208))))
                                   (declare (not safe))
                                   (cons __tmp50207 '()))))
                            (declare (not safe))
                            (cons __tmp50218 __tmp50206))))
                     (declare (not safe))
                     (cons __tmp50220 __tmp50205))))
                (___kont4650146502_
                 (lambda (_L32029_ _L32031_ _L32032_ _L32033_)
                   (let ((__tmp50238 (gx#datum->syntax '#f 'lambda))
                         (__tmp50221
                          (let ((__tmp50236
                                 (let ((__tmp50237
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50237 '())))
                                (__tmp50222
                                 (let ((__tmp50223
                                        (let ((__tmp50235
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp50224
                                               (let ((__tmp50231
                                                      (let ((__tmp50232
                                                             (let ((__tmp50233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50234 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50234 '()))))
                       (declare (not safe))
                       (cons _L32032_ __tmp50233))))
                (declare (not safe))
                (cons _L32033_ __tmp50232)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50225
                                                      (let ((__tmp50226
                                                             (let ((__tmp50227
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50228
                                   (let ((__tmp50229
                                          (let ((__tmp50230
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp50230 '()))))
                                     (declare (not safe))
                                     (cons _L32031_ __tmp50229))))
                              (declare (not safe))
                              (cons __tmp50228 '()))))
                       (declare (not safe))
                       (cons _L32029_ __tmp50227))))
                (declare (not safe))
                (cons __tmp50226 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50231
                                                       __tmp50225))))
                                          (declare (not safe))
                                          (cons __tmp50235 __tmp50224))))
                                   (declare (not safe))
                                   (cons __tmp50223 '()))))
                            (declare (not safe))
                            (cons __tmp50236 __tmp50222))))
                     (declare (not safe))
                     (cons __tmp50238 __tmp50221)))))
            (let* ((___match4665346654_
                    (lambda (_e3190432138_
                             _hd3190332142_
                             _tl3190232145_
                             _e3190732148_
                             _hd3190632152_
                             _tl3190532155_
                             _e3191032158_
                             _hd3190932162_
                             _tl3190832165_)
                      (if (gx#identifier? _hd3190932162_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g50240_|
                               _hd3190932162_)
                              (if (gx#stx-pair? _tl3190832165_)
                                  (let ((_e3191332168_
                                         (gx#syntax-e _tl3190832165_)))
                                    (let ((_tl3191132175_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3191332168_)))
                                          (_hd3191232172_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3191332168_))))
                                      (if (gx#stx-null? _tl3191132175_)
                                          (___kont4649746498_
                                           _hd3191232172_
                                           _hd3190632152_
                                           _hd3190332142_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3181231958_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3181231958_)))
                              (let () (declare (not safe)) (_g3181231958_)))
                          (if (gx#stx-datum? _hd3190932162_)
                              (let ((_e3192632095_ (gx#stx-e _hd3190932162_)))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _e3192632095_ '::))
                                    (if (gx#stx-pair? _tl3190832165_)
                                        (let ((_e3192932099_
                                               (gx#syntax-e _tl3190832165_)))
                                          (let ((_tl3192732106_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3192932099_)))
                                                (_hd3192832103_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3192932099_))))
                                            (if (gx#stx-null? _tl3192732106_)
                                                (___kont4649946500_
                                                 _hd3192832103_
                                                 _hd3190632152_
                                                 _hd3190332142_)
                                                (if (gx#stx-pair?
                                                     _tl3192732106_)
                                                    (let ((_e3194932009_
                                                           (gx#syntax-e
                                                            _tl3192732106_)))
                                                      (let ((_tl3194732016_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3194932009_)))
                    (_hd3194832013_
                     (let () (declare (not safe)) (##car _e3194932009_))))
                (if (gx#identifier? _hd3194832013_)
                    (if (gx#free-identifier=?
                         |gerbil/core$<match>[1]#_g50239_|
                         _hd3194832013_)
                        (if (gx#stx-pair? _tl3194732016_)
                            (let ((_e3195232019_ (gx#syntax-e _tl3194732016_)))
                              (let ((_tl3195032026_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3195232019_)))
                                    (_hd3195132023_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3195232019_))))
                                (if (gx#stx-null? _tl3195032026_)
                                    (___kont4650146502_
                                     _hd3195132023_
                                     _hd3192832103_
                                     _hd3190632152_
                                     _hd3190332142_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3181231958_)))))
                            (let () (declare (not safe)) (_g3181231958_)))
                        (let () (declare (not safe)) (_g3181231958_)))
                    (let () (declare (not safe)) (_g3181231958_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3181231958_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3181231958_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3181231958_))))
                              (let () (declare (not safe)) (_g3181231958_))))))
                   (___match4663346634_
                    (lambda (_e3189532206_
                             _hd3189432210_
                             _tl3189332213_
                             _e3189832216_
                             _hd3189732220_
                             _tl3189632223_)
                      (if (gx#stx-null? _tl3189632223_)
                          (___kont4649546496_ _hd3189732220_ _hd3189432210_)
                          (if (gx#stx-pair? _tl3189632223_)
                              (let ((_e3191032158_
                                     (gx#syntax-e _tl3189632223_)))
                                (let ((_tl3190832165_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3191032158_)))
                                      (_hd3190932162_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3191032158_))))
                                  (if (gx#identifier? _hd3190932162_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50240_|
                                           _hd3190932162_)
                                          (if (gx#stx-pair? _tl3190832165_)
                                              (let ((_e3191332168_
                                                     (gx#syntax-e
                                                      _tl3190832165_)))
                                                (let ((_tl3191132175_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3191332168_)))
                                                      (_hd3191232172_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3191332168_))))
                                                  (if (gx#stx-null?
                                                       _tl3191132175_)
                                                      (___kont4649746498_
                                                       _hd3191232172_
                                                       _hd3189732220_
                                                       _hd3189432210_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3181231958_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3181231958_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3181231958_)))
                                      (if (gx#stx-datum? _hd3190932162_)
                                          (let ((_e3192632095_
                                                 (gx#stx-e _hd3190932162_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e3192632095_ '::))
                                                (if (gx#stx-pair?
                                                     _tl3190832165_)
                                                    (let ((_e3192932099_
                                                           (gx#syntax-e
                                                            _tl3190832165_)))
                                                      (let ((_tl3192732106_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3192932099_)))
                    (_hd3192832103_
                     (let () (declare (not safe)) (##car _e3192932099_))))
                (if (gx#stx-null? _tl3192732106_)
                    (___kont4649946500_
                     _hd3192832103_
                     _hd3189732220_
                     _hd3189432210_)
                    (if (gx#stx-pair? _tl3192732106_)
                        (let ((_e3194932009_ (gx#syntax-e _tl3192732106_)))
                          (let ((_tl3194732016_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3194932009_)))
                                (_hd3194832013_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3194932009_))))
                            (if (gx#identifier? _hd3194832013_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g50239_|
                                     _hd3194832013_)
                                    (if (gx#stx-pair? _tl3194732016_)
                                        (let ((_e3195232019_
                                               (gx#syntax-e _tl3194732016_)))
                                          (let ((_tl3195032026_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3195232019_)))
                                                (_hd3195132023_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3195232019_))))
                                            (if (gx#stx-null? _tl3195032026_)
                                                (___kont4650146502_
                                                 _hd3195132023_
                                                 _hd3192832103_
                                                 _hd3189732220_
                                                 _hd3189432210_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3181231958_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3181231958_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3181231958_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3181231958_)))))
                        (let () (declare (not safe)) (_g3181231958_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3181231958_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3181231958_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3181231958_))))))
                              (let () (declare (not safe)) (_g3181231958_))))))
                   (___match4656346564_
                    (lambda (_e3184332382_
                             _hd3184232386_
                             _tl3184132389_
                             _e3184632392_
                             _hd3184532396_
                             _tl3184432399_
                             _e3184932402_
                             _hd3184832406_
                             _tl3184732409_
                             ___splice4648946490_
                             _target3185032412_
                             _tl3185232415_)
                      (letrec ((_loop3185332418_
                                (lambda (_hd3185132422_ _pred3185732425_)
                                  (if (gx#stx-pair? _hd3185132422_)
                                      (let ((_e3185432428_
                                             (gx#syntax-e _hd3185132422_)))
                                        (let ((_lp-tl3185632435_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3185432428_)))
                                              (_lp-hd3185532432_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3185432428_))))
                                          (_loop3185332418_
                                           _lp-tl3185632435_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3185532432_
                                                   _pred3185732425_)))))
                                      (let ((_pred3185832438_
                                             (reverse _pred3185732425_)))
                                        (if (gx#stx-pair? _tl3184432399_)
                                            (let ((_e3186132442_
                                                   (gx#syntax-e
                                                    _tl3184432399_)))
                                              (let ((_tl3185932449_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3186132442_)))
                                                    (_hd3186032446_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3186132442_))))
                                                (if (gx#stx-null?
                                                     _tl3185932449_)
                                                    (___kont4648746488_
                                                     _hd3186032446_
                                                     _pred3185832438_
                                                     _hd3184232386_)
                                                    (___match4665346654_
                                                     _e3184332382_
                                                     _hd3184232386_
                                                     _tl3184132389_
                                                     _e3184632392_
                                                     _hd3184532396_
                                                     _tl3184432399_
                                                     _e3186132442_
                                                     _hd3186032446_
                                                     _tl3185932449_))))
                                            (___match4663346634_
                                             _e3184332382_
                                             _hd3184232386_
                                             _tl3184132389_
                                             _e3184632392_
                                             _hd3184532396_
                                             _tl3184432399_)))))))
                        (_loop3185332418_ _target3185032412_ '()))))
                   (___match4653346534_
                    (lambda (_e3181932492_
                             _hd3181832496_
                             _tl3181732499_
                             _e3182232502_
                             _hd3182132506_
                             _tl3182032509_
                             _e3182532512_
                             _hd3182432516_
                             _tl3182332519_
                             ___splice4648546486_
                             _target3182632522_
                             _tl3182832525_)
                      (letrec ((_loop3182932528_
                                (lambda (_hd3182732532_ _pred3183332535_)
                                  (if (gx#stx-pair? _hd3182732532_)
                                      (let ((_e3183032538_
                                             (gx#syntax-e _hd3182732532_)))
                                        (let ((_lp-tl3183232545_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3183032538_)))
                                              (_lp-hd3183132542_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3183032538_))))
                                          (_loop3182932528_
                                           _lp-tl3183232545_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3183132542_
                                                   _pred3183332535_)))))
                                      (let ((_pred3183432548_
                                             (reverse _pred3183332535_)))
                                        (if (gx#stx-pair? _tl3182032509_)
                                            (let ((_e3183732552_
                                                   (gx#syntax-e
                                                    _tl3182032509_)))
                                              (let ((_tl3183532559_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3183732552_)))
                                                    (_hd3183632556_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3183732552_))))
                                                (if (gx#stx-null?
                                                     _tl3183532559_)
                                                    (___kont4648346484_
                                                     _hd3183632556_
                                                     _pred3183432548_
                                                     _hd3181832496_)
                                                    (___match4665346654_
                                                     _e3181932492_
                                                     _hd3181832496_
                                                     _tl3181732499_
                                                     _e3182232502_
                                                     _hd3182132506_
                                                     _tl3182032509_
                                                     _e3183732552_
                                                     _hd3183632556_
                                                     _tl3183532559_))))
                                            (___match4663346634_
                                             _e3181932492_
                                             _hd3181832496_
                                             _tl3181732499_
                                             _e3182232502_
                                             _hd3182132506_
                                             _tl3182032509_)))))))
                        (_loop3182932528_ _target3182632522_ '())))))
              (if (gx#stx-pair? ___stx4648046481_)
                  (let ((_e3181932492_ (gx#syntax-e ___stx4648046481_)))
                    (let ((_tl3181732499_
                           (let () (declare (not safe)) (##cdr _e3181932492_)))
                          (_hd3181832496_
                           (let ()
                             (declare (not safe))
                             (##car _e3181932492_))))
                      (if (gx#stx-pair? _tl3181732499_)
                          (let ((_e3182232502_ (gx#syntax-e _tl3181732499_)))
                            (let ((_tl3182032509_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3182232502_)))
                                  (_hd3182132506_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3182232502_))))
                              (if (gx#stx-pair? _hd3182132506_)
                                  (let ((_e3182532512_
                                         (gx#syntax-e _hd3182132506_)))
                                    (let ((_tl3182332519_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3182532512_)))
                                          (_hd3182432516_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3182532512_))))
                                      (if (gx#identifier? _hd3182432516_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50243_|
                                               _hd3182432516_)
                                              (if (gx#stx-pair/null?
                                                   _tl3182332519_)
                                                  (let ((___splice4648546486_
                                                         (gx#syntax-split-splice
                                                          _tl3182332519_
                                                          '0)))
                                                    (let ((_tl3182832525_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4648546486_
                                                              '1)))
                                                          (_target3182632522_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4648546486_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3182832525_)
                                                          (___match4653346534_
                                                           _e3181932492_
                                                           _hd3181832496_
                                                           _tl3181732499_
                                                           _e3182232502_
                                                           _hd3182132506_
                                                           _tl3182032509_
                                                           _e3182532512_
                                                           _hd3182432516_
                                                           _tl3182332519_
                                                           ___splice4648546486_
                                                           _target3182632522_
                                                           _tl3182832525_)
                                                          (if (gx#stx-pair?
                                                               _tl3182032509_)
                                                              (let ((_e3189032268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl3182032509_)))
                        (let ((_tl3188832275_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3189032268_)))
                              (_hd3188932272_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3189032268_))))
                          (if (gx#stx-null? _tl3188832275_)
                              (___kont4649346494_
                               _hd3188932272_
                               _hd3182132506_)
                              (if (gx#identifier? _hd3188932272_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50240_|
                                       _hd3188932272_)
                                      (if (gx#stx-pair? _tl3188832275_)
                                          (let ((_e3191332168_
                                                 (gx#syntax-e _tl3188832275_)))
                                            (let ((_tl3191132175_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3191332168_)))
                                                  (_hd3191232172_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3191332168_))))
                                              (if (gx#stx-null? _tl3191132175_)
                                                  (___kont4649746498_
                                                   _hd3191232172_
                                                   _hd3182132506_
                                                   _hd3181832496_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3181231958_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3181231958_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3181231958_)))
                                  (if (gx#stx-datum? _hd3188932272_)
                                      (let ((_e3192632095_
                                             (gx#stx-e _hd3188932272_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e3192632095_ '::))
                                            (if (gx#stx-pair? _tl3188832275_)
                                                (let ((_e3192932099_
                                                       (gx#syntax-e
                                                        _tl3188832275_)))
                                                  (let ((_tl3192732106_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3192932099_)))
                                                        (_hd3192832103_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3192932099_))))
                                                    (if (gx#stx-null?
                                                         _tl3192732106_)
                                                        (___kont4649946500_
                                                         _hd3192832103_
                                                         _hd3182132506_
                                                         _hd3181832496_)
                                                        (if (gx#stx-pair?
                                                             _tl3192732106_)
                                                            (let ((_e3194932009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3192732106_)))
                      (let ((_tl3194732016_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3194932009_)))
                            (_hd3194832013_
                             (let ()
                               (declare (not safe))
                               (##car _e3194932009_))))
                        (if (gx#identifier? _hd3194832013_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g50239_|
                                 _hd3194832013_)
                                (if (gx#stx-pair? _tl3194732016_)
                                    (let ((_e3195232019_
                                           (gx#syntax-e _tl3194732016_)))
                                      (let ((_tl3195032026_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3195232019_)))
                                            (_hd3195132023_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3195232019_))))
                                        (if (gx#stx-null? _tl3195032026_)
                                            (___kont4650146502_
                                             _hd3195132023_
                                             _hd3192832103_
                                             _hd3182132506_
                                             _hd3181832496_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3181231958_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3181231958_)))
                                (let () (declare (not safe)) (_g3181231958_)))
                            (let () (declare (not safe)) (_g3181231958_)))))
                    (let () (declare (not safe)) (_g3181231958_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3181231958_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3181231958_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3181231958_)))))))
                      (if (gx#stx-null? _tl3182032509_)
                          (___kont4649546496_ _hd3182132506_ _hd3181832496_)
                          (let () (declare (not safe)) (_g3181231958_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl3182032509_)
                                                      (let ((_e3189032268_
                                                             (gx#syntax-e
                                                              _tl3182032509_)))
                                                        (let ((_tl3188832275_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3189032268_)))
                      (_hd3188932272_
                       (let () (declare (not safe)) (##car _e3189032268_))))
                  (if (gx#stx-null? _tl3188832275_)
                      (___kont4649346494_ _hd3188932272_ _hd3182132506_)
                      (if (gx#identifier? _hd3188932272_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g50240_|
                               _hd3188932272_)
                              (if (gx#stx-pair? _tl3188832275_)
                                  (let ((_e3191332168_
                                         (gx#syntax-e _tl3188832275_)))
                                    (let ((_tl3191132175_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3191332168_)))
                                          (_hd3191232172_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3191332168_))))
                                      (if (gx#stx-null? _tl3191132175_)
                                          (___kont4649746498_
                                           _hd3191232172_
                                           _hd3182132506_
                                           _hd3181832496_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3181231958_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3181231958_)))
                              (let () (declare (not safe)) (_g3181231958_)))
                          (if (gx#stx-datum? _hd3188932272_)
                              (let ((_e3192632095_ (gx#stx-e _hd3188932272_)))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _e3192632095_ '::))
                                    (if (gx#stx-pair? _tl3188832275_)
                                        (let ((_e3192932099_
                                               (gx#syntax-e _tl3188832275_)))
                                          (let ((_tl3192732106_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3192932099_)))
                                                (_hd3192832103_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3192932099_))))
                                            (if (gx#stx-null? _tl3192732106_)
                                                (___kont4649946500_
                                                 _hd3192832103_
                                                 _hd3182132506_
                                                 _hd3181832496_)
                                                (if (gx#stx-pair?
                                                     _tl3192732106_)
                                                    (let ((_e3194932009_
                                                           (gx#syntax-e
                                                            _tl3192732106_)))
                                                      (let ((_tl3194732016_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3194932009_)))
                    (_hd3194832013_
                     (let () (declare (not safe)) (##car _e3194932009_))))
                (if (gx#identifier? _hd3194832013_)
                    (if (gx#free-identifier=?
                         |gerbil/core$<match>[1]#_g50239_|
                         _hd3194832013_)
                        (if (gx#stx-pair? _tl3194732016_)
                            (let ((_e3195232019_ (gx#syntax-e _tl3194732016_)))
                              (let ((_tl3195032026_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3195232019_)))
                                    (_hd3195132023_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3195232019_))))
                                (if (gx#stx-null? _tl3195032026_)
                                    (___kont4650146502_
                                     _hd3195132023_
                                     _hd3192832103_
                                     _hd3182132506_
                                     _hd3181832496_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3181231958_)))))
                            (let () (declare (not safe)) (_g3181231958_)))
                        (let () (declare (not safe)) (_g3181231958_)))
                    (let () (declare (not safe)) (_g3181231958_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3181231958_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3181231958_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3181231958_))))
                              (let ()
                                (declare (not safe))
                                (_g3181231958_)))))))
              (if (gx#stx-null? _tl3182032509_)
                  (___kont4649546496_ _hd3182132506_ _hd3181832496_)
                  (let () (declare (not safe)) (_g3181231958_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g50242_|
                                                   _hd3182432516_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3182332519_)
                                                      (let ((___splice4648946490_
                                                             (gx#syntax-split-splice
                                                              _tl3182332519_
                                                              '0)))
                                                        (let ((_tl3185232415_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4648946490_ '1)))
                      (_target3185032412_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4648946490_ '0))))
                  (if (gx#stx-null? _tl3185232415_)
                      (___match4656346564_
                       _e3181932492_
                       _hd3181832496_
                       _tl3181732499_
                       _e3182232502_
                       _hd3182132506_
                       _tl3182032509_
                       _e3182532512_
                       _hd3182432516_
                       _tl3182332519_
                       ___splice4648946490_
                       _target3185032412_
                       _tl3185232415_)
                      (if (gx#stx-pair? _tl3182032509_)
                          (let ((_e3189032268_ (gx#syntax-e _tl3182032509_)))
                            (let ((_tl3188832275_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3189032268_)))
                                  (_hd3188932272_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3189032268_))))
                              (if (gx#stx-null? _tl3188832275_)
                                  (___kont4649346494_
                                   _hd3188932272_
                                   _hd3182132506_)
                                  (if (gx#identifier? _hd3188932272_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50240_|
                                           _hd3188932272_)
                                          (if (gx#stx-pair? _tl3188832275_)
                                              (let ((_e3191332168_
                                                     (gx#syntax-e
                                                      _tl3188832275_)))
                                                (let ((_tl3191132175_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3191332168_)))
                                                      (_hd3191232172_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3191332168_))))
                                                  (if (gx#stx-null?
                                                       _tl3191132175_)
                                                      (___kont4649746498_
                                                       _hd3191232172_
                                                       _hd3182132506_
                                                       _hd3181832496_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3181231958_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3181231958_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3181231958_)))
                                      (if (gx#stx-datum? _hd3188932272_)
                                          (let ((_e3192632095_
                                                 (gx#stx-e _hd3188932272_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e3192632095_ '::))
                                                (if (gx#stx-pair?
                                                     _tl3188832275_)
                                                    (let ((_e3192932099_
                                                           (gx#syntax-e
                                                            _tl3188832275_)))
                                                      (let ((_tl3192732106_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3192932099_)))
                    (_hd3192832103_
                     (let () (declare (not safe)) (##car _e3192932099_))))
                (if (gx#stx-null? _tl3192732106_)
                    (___kont4649946500_
                     _hd3192832103_
                     _hd3182132506_
                     _hd3181832496_)
                    (if (gx#stx-pair? _tl3192732106_)
                        (let ((_e3194932009_ (gx#syntax-e _tl3192732106_)))
                          (let ((_tl3194732016_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3194932009_)))
                                (_hd3194832013_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3194932009_))))
                            (if (gx#identifier? _hd3194832013_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g50239_|
                                     _hd3194832013_)
                                    (if (gx#stx-pair? _tl3194732016_)
                                        (let ((_e3195232019_
                                               (gx#syntax-e _tl3194732016_)))
                                          (let ((_tl3195032026_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3195232019_)))
                                                (_hd3195132023_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3195232019_))))
                                            (if (gx#stx-null? _tl3195032026_)
                                                (___kont4650146502_
                                                 _hd3195132023_
                                                 _hd3192832103_
                                                 _hd3182132506_
                                                 _hd3181832496_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3181231958_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3181231958_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3181231958_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3181231958_)))))
                        (let () (declare (not safe)) (_g3181231958_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3181231958_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3181231958_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3181231958_)))))))
                          (if (gx#stx-null? _tl3182032509_)
                              (___kont4649546496_
                               _hd3182132506_
                               _hd3181832496_)
                              (let ()
                                (declare (not safe))
                                (_g3181231958_)))))))
              (if (gx#stx-pair? _tl3182032509_)
                  (let ((_e3189032268_ (gx#syntax-e _tl3182032509_)))
                    (let ((_tl3188832275_
                           (let () (declare (not safe)) (##cdr _e3189032268_)))
                          (_hd3188932272_
                           (let ()
                             (declare (not safe))
                             (##car _e3189032268_))))
                      (if (gx#stx-null? _tl3188832275_)
                          (___kont4649346494_ _hd3188932272_ _hd3182132506_)
                          (if (gx#identifier? _hd3188932272_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g50240_|
                                   _hd3188932272_)
                                  (if (gx#stx-pair? _tl3188832275_)
                                      (let ((_e3191332168_
                                             (gx#syntax-e _tl3188832275_)))
                                        (let ((_tl3191132175_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3191332168_)))
                                              (_hd3191232172_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3191332168_))))
                                          (if (gx#stx-null? _tl3191132175_)
                                              (___kont4649746498_
                                               _hd3191232172_
                                               _hd3182132506_
                                               _hd3181832496_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3181231958_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3181231958_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g3181231958_)))
                              (if (gx#stx-datum? _hd3188932272_)
                                  (let ((_e3192632095_
                                         (gx#stx-e _hd3188932272_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e3192632095_ '::))
                                        (if (gx#stx-pair? _tl3188832275_)
                                            (let ((_e3192932099_
                                                   (gx#syntax-e
                                                    _tl3188832275_)))
                                              (let ((_tl3192732106_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3192932099_)))
                                                    (_hd3192832103_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3192932099_))))
                                                (if (gx#stx-null?
                                                     _tl3192732106_)
                                                    (___kont4649946500_
                                                     _hd3192832103_
                                                     _hd3182132506_
                                                     _hd3181832496_)
                                                    (if (gx#stx-pair?
                                                         _tl3192732106_)
                                                        (let ((_e3194932009_
                                                               (gx#syntax-e
                                                                _tl3192732106_)))
                                                          (let ((_tl3194732016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3194932009_)))
                        (_hd3194832013_
                         (let () (declare (not safe)) (##car _e3194932009_))))
                    (if (gx#identifier? _hd3194832013_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g50239_|
                             _hd3194832013_)
                            (if (gx#stx-pair? _tl3194732016_)
                                (let ((_e3195232019_
                                       (gx#syntax-e _tl3194732016_)))
                                  (let ((_tl3195032026_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3195232019_)))
                                        (_hd3195132023_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3195232019_))))
                                    (if (gx#stx-null? _tl3195032026_)
                                        (___kont4650146502_
                                         _hd3195132023_
                                         _hd3192832103_
                                         _hd3182132506_
                                         _hd3181832496_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3181231958_)))))
                                (let () (declare (not safe)) (_g3181231958_)))
                            (let () (declare (not safe)) (_g3181231958_)))
                        (let () (declare (not safe)) (_g3181231958_)))))
                (let () (declare (not safe)) (_g3181231958_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g3181231958_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3181231958_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3181231958_)))))))
                  (if (gx#stx-null? _tl3182032509_)
                      (___kont4649546496_ _hd3182132506_ _hd3181832496_)
                      (let () (declare (not safe)) (_g3181231958_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g50241_|
                                                       _hd3182432516_)
                                                      (if (gx#stx-pair?
                                                           _tl3182332519_)
                                                          (let ((_e3187632332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3182332519_)))
                    (let ((_tl3187432339_
                           (let () (declare (not safe)) (##cdr _e3187632332_)))
                          (_hd3187532336_
                           (let ()
                             (declare (not safe))
                             (##car _e3187632332_))))
                      (if (gx#stx-null? _tl3187432339_)
                          (if (gx#stx-pair? _tl3182032509_)
                              (let ((_e3187932342_
                                     (gx#syntax-e _tl3182032509_)))
                                (let ((_tl3187732349_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3187932342_)))
                                      (_hd3187832346_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3187932342_))))
                                  (if (gx#stx-null? _tl3187732349_)
                                      (___kont4649146492_
                                       _hd3187832346_
                                       _hd3187532336_
                                       _hd3181832496_)
                                      (if (gx#identifier? _hd3187832346_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50240_|
                                               _hd3187832346_)
                                              (if (gx#stx-pair? _tl3187732349_)
                                                  (let ((_e3191332168_
                                                         (gx#syntax-e
                                                          _tl3187732349_)))
                                                    (let ((_tl3191132175_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3191332168_)))
                                                          (_hd3191232172_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3191332168_))))
                                                      (if (gx#stx-null?
                                                           _tl3191132175_)
                                                          (___kont4649746498_
                                                           _hd3191232172_
                                                           _hd3182132506_
                                                           _hd3181832496_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3181231958_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3181231958_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3181231958_)))
                                          (if (gx#stx-datum? _hd3187832346_)
                                              (let ((_e3192632095_
                                                     (gx#stx-e
                                                      _hd3187832346_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (equal? _e3192632095_
                                                              '::))
                                                    (if (gx#stx-pair?
                                                         _tl3187732349_)
                                                        (let ((_e3192932099_
                                                               (gx#syntax-e
                                                                _tl3187732349_)))
                                                          (let ((_tl3192732106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3192932099_)))
                        (_hd3192832103_
                         (let () (declare (not safe)) (##car _e3192932099_))))
                    (if (gx#stx-null? _tl3192732106_)
                        (___kont4649946500_
                         _hd3192832103_
                         _hd3182132506_
                         _hd3181832496_)
                        (if (gx#stx-pair? _tl3192732106_)
                            (let ((_e3194932009_ (gx#syntax-e _tl3192732106_)))
                              (let ((_tl3194732016_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3194932009_)))
                                    (_hd3194832013_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3194932009_))))
                                (if (gx#identifier? _hd3194832013_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g50239_|
                                         _hd3194832013_)
                                        (if (gx#stx-pair? _tl3194732016_)
                                            (let ((_e3195232019_
                                                   (gx#syntax-e
                                                    _tl3194732016_)))
                                              (let ((_tl3195032026_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3195232019_)))
                                                    (_hd3195132023_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3195232019_))))
                                                (if (gx#stx-null?
                                                     _tl3195032026_)
                                                    (___kont4650146502_
                                                     _hd3195132023_
                                                     _hd3192832103_
                                                     _hd3182132506_
                                                     _hd3181832496_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3181231958_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3181231958_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3181231958_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3181231958_)))))
                            (let () (declare (not safe)) (_g3181231958_))))))
                (let () (declare (not safe)) (_g3181231958_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3181231958_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3181231958_)))))))
                              (if (gx#stx-null? _tl3182032509_)
                                  (___kont4649546496_
                                   _hd3182132506_
                                   _hd3181832496_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3181231958_))))
                          (if (gx#stx-pair? _tl3182032509_)
                              (let ((_e3189032268_
                                     (gx#syntax-e _tl3182032509_)))
                                (let ((_tl3188832275_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3189032268_)))
                                      (_hd3188932272_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3189032268_))))
                                  (if (gx#stx-null? _tl3188832275_)
                                      (___kont4649346494_
                                       _hd3188932272_
                                       _hd3182132506_)
                                      (if (gx#identifier? _hd3188932272_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50240_|
                                               _hd3188932272_)
                                              (if (gx#stx-pair? _tl3188832275_)
                                                  (let ((_e3191332168_
                                                         (gx#syntax-e
                                                          _tl3188832275_)))
                                                    (let ((_tl3191132175_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3191332168_)))
                                                          (_hd3191232172_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3191332168_))))
                                                      (if (gx#stx-null?
                                                           _tl3191132175_)
                                                          (___kont4649746498_
                                                           _hd3191232172_
                                                           _hd3182132506_
                                                           _hd3181832496_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3181231958_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3181231958_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3181231958_)))
                                          (if (gx#stx-datum? _hd3188932272_)
                                              (let ((_e3192632095_
                                                     (gx#stx-e
                                                      _hd3188932272_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (equal? _e3192632095_
                                                              '::))
                                                    (if (gx#stx-pair?
                                                         _tl3188832275_)
                                                        (let ((_e3192932099_
                                                               (gx#syntax-e
                                                                _tl3188832275_)))
                                                          (let ((_tl3192732106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3192932099_)))
                        (_hd3192832103_
                         (let () (declare (not safe)) (##car _e3192932099_))))
                    (if (gx#stx-null? _tl3192732106_)
                        (___kont4649946500_
                         _hd3192832103_
                         _hd3182132506_
                         _hd3181832496_)
                        (if (gx#stx-pair? _tl3192732106_)
                            (let ((_e3194932009_ (gx#syntax-e _tl3192732106_)))
                              (let ((_tl3194732016_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3194932009_)))
                                    (_hd3194832013_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3194932009_))))
                                (if (gx#identifier? _hd3194832013_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g50239_|
                                         _hd3194832013_)
                                        (if (gx#stx-pair? _tl3194732016_)
                                            (let ((_e3195232019_
                                                   (gx#syntax-e
                                                    _tl3194732016_)))
                                              (let ((_tl3195032026_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3195232019_)))
                                                    (_hd3195132023_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3195232019_))))
                                                (if (gx#stx-null?
                                                     _tl3195032026_)
                                                    (___kont4650146502_
                                                     _hd3195132023_
                                                     _hd3192832103_
                                                     _hd3182132506_
                                                     _hd3181832496_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3181231958_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3181231958_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3181231958_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3181231958_)))))
                            (let () (declare (not safe)) (_g3181231958_))))))
                (let () (declare (not safe)) (_g3181231958_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3181231958_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3181231958_)))))))
                              (if (gx#stx-null? _tl3182032509_)
                                  (___kont4649546496_
                                   _hd3182132506_
                                   _hd3181832496_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3181231958_)))))))
                  (if (gx#stx-pair? _tl3182032509_)
                      (let ((_e3189032268_ (gx#syntax-e _tl3182032509_)))
                        (let ((_tl3188832275_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3189032268_)))
                              (_hd3188932272_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3189032268_))))
                          (if (gx#stx-null? _tl3188832275_)
                              (___kont4649346494_
                               _hd3188932272_
                               _hd3182132506_)
                              (if (gx#identifier? _hd3188932272_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50240_|
                                       _hd3188932272_)
                                      (if (gx#stx-pair? _tl3188832275_)
                                          (let ((_e3191332168_
                                                 (gx#syntax-e _tl3188832275_)))
                                            (let ((_tl3191132175_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3191332168_)))
                                                  (_hd3191232172_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3191332168_))))
                                              (if (gx#stx-null? _tl3191132175_)
                                                  (___kont4649746498_
                                                   _hd3191232172_
                                                   _hd3182132506_
                                                   _hd3181832496_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3181231958_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3181231958_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3181231958_)))
                                  (if (gx#stx-datum? _hd3188932272_)
                                      (let ((_e3192632095_
                                             (gx#stx-e _hd3188932272_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e3192632095_ '::))
                                            (if (gx#stx-pair? _tl3188832275_)
                                                (let ((_e3192932099_
                                                       (gx#syntax-e
                                                        _tl3188832275_)))
                                                  (let ((_tl3192732106_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3192932099_)))
                                                        (_hd3192832103_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3192932099_))))
                                                    (if (gx#stx-null?
                                                         _tl3192732106_)
                                                        (___kont4649946500_
                                                         _hd3192832103_
                                                         _hd3182132506_
                                                         _hd3181832496_)
                                                        (if (gx#stx-pair?
                                                             _tl3192732106_)
                                                            (let ((_e3194932009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3192732106_)))
                      (let ((_tl3194732016_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3194932009_)))
                            (_hd3194832013_
                             (let ()
                               (declare (not safe))
                               (##car _e3194932009_))))
                        (if (gx#identifier? _hd3194832013_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g50239_|
                                 _hd3194832013_)
                                (if (gx#stx-pair? _tl3194732016_)
                                    (let ((_e3195232019_
                                           (gx#syntax-e _tl3194732016_)))
                                      (let ((_tl3195032026_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3195232019_)))
                                            (_hd3195132023_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3195232019_))))
                                        (if (gx#stx-null? _tl3195032026_)
                                            (___kont4650146502_
                                             _hd3195132023_
                                             _hd3192832103_
                                             _hd3182132506_
                                             _hd3181832496_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3181231958_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3181231958_)))
                                (let () (declare (not safe)) (_g3181231958_)))
                            (let () (declare (not safe)) (_g3181231958_)))))
                    (let () (declare (not safe)) (_g3181231958_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3181231958_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3181231958_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3181231958_)))))))
                      (if (gx#stx-null? _tl3182032509_)
                          (___kont4649546496_ _hd3182132506_ _hd3181832496_)
                          (let () (declare (not safe)) (_g3181231958_)))))
              (if (gx#stx-pair? _tl3182032509_)
                  (let ((_e3189032268_ (gx#syntax-e _tl3182032509_)))
                    (let ((_tl3188832275_
                           (let () (declare (not safe)) (##cdr _e3189032268_)))
                          (_hd3188932272_
                           (let ()
                             (declare (not safe))
                             (##car _e3189032268_))))
                      (if (gx#stx-null? _tl3188832275_)
                          (___kont4649346494_ _hd3188932272_ _hd3182132506_)
                          (if (gx#identifier? _hd3188932272_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g50240_|
                                   _hd3188932272_)
                                  (if (gx#stx-pair? _tl3188832275_)
                                      (let ((_e3191332168_
                                             (gx#syntax-e _tl3188832275_)))
                                        (let ((_tl3191132175_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3191332168_)))
                                              (_hd3191232172_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3191332168_))))
                                          (if (gx#stx-null? _tl3191132175_)
                                              (___kont4649746498_
                                               _hd3191232172_
                                               _hd3182132506_
                                               _hd3181832496_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3181231958_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3181231958_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g3181231958_)))
                              (if (gx#stx-datum? _hd3188932272_)
                                  (let ((_e3192632095_
                                         (gx#stx-e _hd3188932272_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e3192632095_ '::))
                                        (if (gx#stx-pair? _tl3188832275_)
                                            (let ((_e3192932099_
                                                   (gx#syntax-e
                                                    _tl3188832275_)))
                                              (let ((_tl3192732106_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3192932099_)))
                                                    (_hd3192832103_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3192932099_))))
                                                (if (gx#stx-null?
                                                     _tl3192732106_)
                                                    (___kont4649946500_
                                                     _hd3192832103_
                                                     _hd3182132506_
                                                     _hd3181832496_)
                                                    (if (gx#stx-pair?
                                                         _tl3192732106_)
                                                        (let ((_e3194932009_
                                                               (gx#syntax-e
                                                                _tl3192732106_)))
                                                          (let ((_tl3194732016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3194932009_)))
                        (_hd3194832013_
                         (let () (declare (not safe)) (##car _e3194932009_))))
                    (if (gx#identifier? _hd3194832013_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g50239_|
                             _hd3194832013_)
                            (if (gx#stx-pair? _tl3194732016_)
                                (let ((_e3195232019_
                                       (gx#syntax-e _tl3194732016_)))
                                  (let ((_tl3195032026_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3195232019_)))
                                        (_hd3195132023_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3195232019_))))
                                    (if (gx#stx-null? _tl3195032026_)
                                        (___kont4650146502_
                                         _hd3195132023_
                                         _hd3192832103_
                                         _hd3182132506_
                                         _hd3181832496_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3181231958_)))))
                                (let () (declare (not safe)) (_g3181231958_)))
                            (let () (declare (not safe)) (_g3181231958_)))
                        (let () (declare (not safe)) (_g3181231958_)))))
                (let () (declare (not safe)) (_g3181231958_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g3181231958_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3181231958_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3181231958_)))))))
                  (if (gx#stx-null? _tl3182032509_)
                      (___kont4649546496_ _hd3182132506_ _hd3181832496_)
                      (let () (declare (not safe)) (_g3181231958_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl3182032509_)
                                              (let ((_e3189032268_
                                                     (gx#syntax-e
                                                      _tl3182032509_)))
                                                (let ((_tl3188832275_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3189032268_)))
                                                      (_hd3188932272_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3189032268_))))
                                                  (if (gx#stx-null?
                                                       _tl3188832275_)
                                                      (___kont4649346494_
                                                       _hd3188932272_
                                                       _hd3182132506_)
                                                      (if (gx#identifier?
                                                           _hd3188932272_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core$<match>[1]#_g50240_|
                                                               _hd3188932272_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3188832275_)
                          (let ((_e3191332168_ (gx#syntax-e _tl3188832275_)))
                            (let ((_tl3191132175_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3191332168_)))
                                  (_hd3191232172_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3191332168_))))
                              (if (gx#stx-null? _tl3191132175_)
                                  (___kont4649746498_
                                   _hd3191232172_
                                   _hd3182132506_
                                   _hd3181832496_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3181231958_)))))
                          (let () (declare (not safe)) (_g3181231958_)))
                      (let () (declare (not safe)) (_g3181231958_)))
                  (if (gx#stx-datum? _hd3188932272_)
                      (let ((_e3192632095_ (gx#stx-e _hd3188932272_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e3192632095_ '::))
                            (if (gx#stx-pair? _tl3188832275_)
                                (let ((_e3192932099_
                                       (gx#syntax-e _tl3188832275_)))
                                  (let ((_tl3192732106_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3192932099_)))
                                        (_hd3192832103_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3192932099_))))
                                    (if (gx#stx-null? _tl3192732106_)
                                        (___kont4649946500_
                                         _hd3192832103_
                                         _hd3182132506_
                                         _hd3181832496_)
                                        (if (gx#stx-pair? _tl3192732106_)
                                            (let ((_e3194932009_
                                                   (gx#syntax-e
                                                    _tl3192732106_)))
                                              (let ((_tl3194732016_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3194932009_)))
                                                    (_hd3194832013_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3194932009_))))
                                                (if (gx#identifier?
                                                     _hd3194832013_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core$<match>[1]#_g50239_|
                                                         _hd3194832013_)
                                                        (if (gx#stx-pair?
                                                             _tl3194732016_)
                                                            (let ((_e3195232019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3194732016_)))
                      (let ((_tl3195032026_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3195232019_)))
                            (_hd3195132023_
                             (let ()
                               (declare (not safe))
                               (##car _e3195232019_))))
                        (if (gx#stx-null? _tl3195032026_)
                            (___kont4650146502_
                             _hd3195132023_
                             _hd3192832103_
                             _hd3182132506_
                             _hd3181832496_)
                            (let () (declare (not safe)) (_g3181231958_)))))
                    (let () (declare (not safe)) (_g3181231958_)))
                (let () (declare (not safe)) (_g3181231958_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3181231958_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3181231958_))))))
                                (let () (declare (not safe)) (_g3181231958_)))
                            (let () (declare (not safe)) (_g3181231958_))))
                      (let () (declare (not safe)) (_g3181231958_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl3182032509_)
                                                  (___kont4649546496_
                                                   _hd3182132506_
                                                   _hd3181832496_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3181231958_)))))))
                                  (if (gx#stx-pair? _tl3182032509_)
                                      (let ((_e3189032268_
                                             (gx#syntax-e _tl3182032509_)))
                                        (let ((_tl3188832275_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3189032268_)))
                                              (_hd3188932272_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3189032268_))))
                                          (if (gx#stx-null? _tl3188832275_)
                                              (___kont4649346494_
                                               _hd3188932272_
                                               _hd3182132506_)
                                              (if (gx#identifier?
                                                   _hd3188932272_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g50240_|
                                                       _hd3188932272_)
                                                      (if (gx#stx-pair?
                                                           _tl3188832275_)
                                                          (let ((_e3191332168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3188832275_)))
                    (let ((_tl3191132175_
                           (let () (declare (not safe)) (##cdr _e3191332168_)))
                          (_hd3191232172_
                           (let ()
                             (declare (not safe))
                             (##car _e3191332168_))))
                      (if (gx#stx-null? _tl3191132175_)
                          (___kont4649746498_
                           _hd3191232172_
                           _hd3182132506_
                           _hd3181832496_)
                          (let () (declare (not safe)) (_g3181231958_)))))
                  (let () (declare (not safe)) (_g3181231958_)))
              (let () (declare (not safe)) (_g3181231958_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _hd3188932272_)
                                                      (let ((_e3192632095_
                                                             (gx#stx-e
                                                              _hd3188932272_)))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (equal? _e3192632095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '::))
                    (if (gx#stx-pair? _tl3188832275_)
                        (let ((_e3192932099_ (gx#syntax-e _tl3188832275_)))
                          (let ((_tl3192732106_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3192932099_)))
                                (_hd3192832103_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3192932099_))))
                            (if (gx#stx-null? _tl3192732106_)
                                (___kont4649946500_
                                 _hd3192832103_
                                 _hd3182132506_
                                 _hd3181832496_)
                                (if (gx#stx-pair? _tl3192732106_)
                                    (let ((_e3194932009_
                                           (gx#syntax-e _tl3192732106_)))
                                      (let ((_tl3194732016_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3194932009_)))
                                            (_hd3194832013_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3194932009_))))
                                        (if (gx#identifier? _hd3194832013_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g50239_|
                                                 _hd3194832013_)
                                                (if (gx#stx-pair?
                                                     _tl3194732016_)
                                                    (let ((_e3195232019_
                                                           (gx#syntax-e
                                                            _tl3194732016_)))
                                                      (let ((_tl3195032026_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3195232019_)))
                    (_hd3195132023_
                     (let () (declare (not safe)) (##car _e3195232019_))))
                (if (gx#stx-null? _tl3195032026_)
                    (___kont4650146502_
                     _hd3195132023_
                     _hd3192832103_
                     _hd3182132506_
                     _hd3181832496_)
                    (let () (declare (not safe)) (_g3181231958_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3181231958_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3181231958_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3181231958_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3181231958_))))))
                        (let () (declare (not safe)) (_g3181231958_)))
                    (let () (declare (not safe)) (_g3181231958_))))
              (let () (declare (not safe)) (_g3181231958_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _tl3182032509_)
                                          (___kont4649546496_
                                           _hd3182132506_
                                           _hd3181832496_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3181231958_)))))))
                          (let () (declare (not safe)) (_g3181231958_)))))
                  (let () (declare (not safe)) (_g3181231958_))))))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx32601_)
        (let* ((___stx4674846749_ _$stx32601_)
               (_g3260632640_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4674846749_))))
          (let ((___kont4675146752_
                 (lambda (_L32744_ _L32746_ _L32747_)
                   (let ((__tmp50852 (gx#datum->syntax '#f 'defsyntax))
                         (__tmp50244
                          (let ((__tmp50245
                                 (let ((__tmp50246
                                        (let ((__tmp50851
                                               (gx#datum->syntax
                                                '#f
                                                'make-match-macro))
                                              (__tmp50247
                                               (let ((__tmp50248
                                                      (let ((__tmp50249
                                                             (let ((__tmp50850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let))
                           (__tmp50250
                            (let ((__tmp50842
                                   (let ((__tmp50847
                                          (let ((__tmp50849
                                                 (gx#datum->syntax
                                                  '#f
                                                  '$match-e))
                                                (__tmp50848
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L32746_ '()))))
                                            (declare (not safe))
                                            (cons __tmp50849 __tmp50848)))
                                         (__tmp50843
                                          (let ((__tmp50844
                                                 (let ((__tmp50846
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$macro-e))
                                                       (__tmp50845
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32744_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp50846
                                                         __tmp50845))))
                                            (declare (not safe))
                                            (cons __tmp50844 '()))))
                                     (declare (not safe))
                                     (cons __tmp50847 __tmp50843)))
                                  (__tmp50251
                                   (let ((__tmp50252
                                          (let ((__tmp50841
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp50253
                                                 (let ((__tmp50839
                                                        (let ((__tmp50840
                                                               (gx#datum->syntax
                                                                '#f
                                                                '$stx)))
                                                          (declare (not safe))
                                                          (cons __tmp50840
                                                                '())))
                                                       (__tmp50254
                                                        (let ((__tmp50255
                                                               (let ((__tmp50838
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'syntax-case))
                             (__tmp50256
                              (let ((__tmp50837 (gx#datum->syntax '#f '$stx))
                                    (__tmp50257
                                     (let ((__tmp50258
                                            (let ((__tmp50269
                                                   (let ((__tmp50835
                                                          (let ((__tmp50836
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'body)))
                    (declare (not safe))
                    (cons 'match: __tmp50836)))
                 (__tmp50270
                  (let ((__tmp50271
                         (let ((__tmp50834
                                (gx#datum->syntax '#f 'core-apply-expander))
                               (__tmp50272
                                (let ((__tmp50833
                                       (gx#datum->syntax '#f '$match-e))
                                      (__tmp50273
                                       (let ((__tmp50274
                                              (let ((__tmp50832
                                                     (gx#datum->syntax
                                                      '#f
                                                      'stx-wrap-source))
                                                    (__tmp50275
                                                     (let ((__tmp50828
                                                            (let ((__tmp50831
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'syntax))
                          (__tmp50829
                           (let ((__tmp50830 (gx#datum->syntax '#f 'body)))
                             (declare (not safe))
                             (cons __tmp50830 '()))))
                      (declare (not safe))
                      (cons __tmp50831 __tmp50829)))
                   (__tmp50276
                    (let ((__tmp50277
                           (let ((__tmp50280
                                  (gx#datum->syntax '#f 'stx-source))
                                 (__tmp50278
                                  (let ((__tmp50279
                                         (gx#datum->syntax '#f '$stx)))
                                    (declare (not safe))
                                    (cons __tmp50279 '()))))
                             (declare (not safe))
                             (cons __tmp50280 __tmp50278))))
                      (declare (not safe))
                      (cons __tmp50277 '()))))
               (declare (not safe))
               (cons __tmp50828 __tmp50276))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50832 __tmp50275))))
                                         (declare (not safe))
                                         (cons __tmp50274 '()))))
                                  (declare (not safe))
                                  (cons __tmp50833 __tmp50273))))
                           (declare (not safe))
                           (cons __tmp50834 __tmp50272))))
                    (declare (not safe))
                    (cons __tmp50271 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50835
                                                           __tmp50270)))
                                                  (__tmp50259
                                                   (let ((__tmp50260
                                                          (let ((__tmp50268
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '_))
                        (__tmp50261
                         (let ((__tmp50262
                                (let ((__tmp50267
                                       (gx#datum->syntax
                                        '#f
                                        'core-apply-expander))
                                      (__tmp50263
                                       (let ((__tmp50266
                                              (gx#datum->syntax '#f '$macro-e))
                                             (__tmp50264
                                              (let ((__tmp50265
                                                     (gx#datum->syntax
                                                      '#f
                                                      '$stx)))
                                                (declare (not safe))
                                                (cons __tmp50265 '()))))
                                         (declare (not safe))
                                         (cons __tmp50266 __tmp50264))))
                                  (declare (not safe))
                                  (cons __tmp50267 __tmp50263))))
                           (declare (not safe))
                           (cons __tmp50262 '()))))
                    (declare (not safe))
                    (cons __tmp50268 __tmp50261))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50260 '()))))
                                              (declare (not safe))
                                              (cons __tmp50269 __tmp50259))))
                                       (declare (not safe))
                                       (cons '() __tmp50258))))
                                (declare (not safe))
                                (cons __tmp50837 __tmp50257))))
                         (declare (not safe))
                         (cons __tmp50838 __tmp50256))))
                  (declare (not safe))
                  (cons __tmp50255 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50839
                                                         __tmp50254))))
                                            (declare (not safe))
                                            (cons __tmp50841 __tmp50253))))
                                     (declare (not safe))
                                     (cons __tmp50252 '()))))
                              (declare (not safe))
                              (cons __tmp50842 __tmp50251))))
                       (declare (not safe))
                       (cons __tmp50850 __tmp50250))))
                (declare (not safe))
                (cons __tmp50249 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'macro: __tmp50248))))
                                          (declare (not safe))
                                          (cons __tmp50851 __tmp50247))))
                                   (declare (not safe))
                                   (cons __tmp50246 '()))))
                            (declare (not safe))
                            (cons _L32747_ __tmp50245))))
                     (declare (not safe))
                     (cons __tmp50852 __tmp50244))))
                (___kont4675346754_
                 (lambda (_L32677_ _L32679_ _L32680_)
                   (let ((__tmp50853
                          (let ((__tmp50854
                                 (let ((__tmp50855
                                        (let ((__tmp50856
                                               (let ((__tmp50867
                                                      (gx#datum->syntax
                                                       '#f
                                                       'lambda))
                                                     (__tmp50857
                                                      (let ((__tmp50865
                                                             (let ((__tmp50866
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '$stx)))
                       (declare (not safe))
                       (cons __tmp50866 '())))
                    (__tmp50858
                     (let ((__tmp50859
                            (let ((__tmp50864
                                   (gx#datum->syntax '#f 'raise-syntax-error))
                                  (__tmp50860
                                   (let ((__tmp50861
                                          (let ((__tmp50862
                                                 (let ((__tmp50863
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$stx)))
                                                   (declare (not safe))
                                                   (cons __tmp50863 '()))))
                                            (declare (not safe))
                                            (cons '"bad syntax; no macro definition for defsyntax-for-match"
                                                  __tmp50862))))
                                     (declare (not safe))
                                     (cons '#f __tmp50861))))
                              (declare (not safe))
                              (cons __tmp50864 __tmp50860))))
                       (declare (not safe))
                       (cons __tmp50859 '()))))
                (declare (not safe))
                (cons __tmp50865 __tmp50858))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50867
                                                       __tmp50857))))
                                          (declare (not safe))
                                          (cons __tmp50856 '()))))
                                   (declare (not safe))
                                   (cons _L32677_ __tmp50855))))
                            (declare (not safe))
                            (cons _L32679_ __tmp50854))))
                     (declare (not safe))
                     (cons _L32680_ __tmp50853)))))
            (let ((___match4678146782_
                   (lambda (_e3261332704_
                            _hd3261232708_
                            _tl3261132711_
                            _e3261632714_
                            _hd3261532718_
                            _tl3261432721_
                            _e3261932724_
                            _hd3261832728_
                            _tl3261732731_
                            _e3262232734_
                            _hd3262132738_
                            _tl3262032741_)
                     (let ((_L32744_ _hd3262132738_)
                           (_L32746_ _hd3261832728_)
                           (_L32747_ _hd3261532718_))
                       (if (gx#identifier? _L32747_)
                           (___kont4675146752_ _L32744_ _L32746_ _L32747_)
                           (let () (declare (not safe)) (_g3260632640_)))))))
              (if (gx#stx-pair? ___stx4674846749_)
                  (let ((_e3261332704_ (gx#syntax-e ___stx4674846749_)))
                    (let ((_tl3261132711_
                           (let () (declare (not safe)) (##cdr _e3261332704_)))
                          (_hd3261232708_
                           (let ()
                             (declare (not safe))
                             (##car _e3261332704_))))
                      (if (gx#stx-pair? _tl3261132711_)
                          (let ((_e3261632714_ (gx#syntax-e _tl3261132711_)))
                            (let ((_tl3261432721_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3261632714_)))
                                  (_hd3261532718_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3261632714_))))
                              (if (gx#stx-pair? _tl3261432721_)
                                  (let ((_e3261932724_
                                         (gx#syntax-e _tl3261432721_)))
                                    (let ((_tl3261732731_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3261932724_)))
                                          (_hd3261832728_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3261932724_))))
                                      (if (gx#stx-pair? _tl3261732731_)
                                          (let ((_e3262232734_
                                                 (gx#syntax-e _tl3261732731_)))
                                            (let ((_tl3262032741_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3262232734_)))
                                                  (_hd3262132738_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3262232734_))))
                                              (if (gx#stx-null? _tl3262032741_)
                                                  (___match4678146782_
                                                   _e3261332704_
                                                   _hd3261232708_
                                                   _tl3261132711_
                                                   _e3261632714_
                                                   _hd3261532718_
                                                   _tl3261432721_
                                                   _e3261932724_
                                                   _hd3261832728_
                                                   _tl3261732731_
                                                   _e3262232734_
                                                   _hd3262132738_
                                                   _tl3262032741_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3260632640_)))))
                                          (if (gx#stx-null? _tl3261732731_)
                                              (___kont4675346754_
                                               _hd3261832728_
                                               _hd3261532718_
                                               _hd3261232708_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3260632640_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3260632640_)))))
                          (let () (declare (not safe)) (_g3260632640_)))))
                  (let () (declare (not safe)) (_g3260632640_))))))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx32769_)
        (let* ((_g3277332788_
                (lambda (_g3277432784_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g3277432784_)))
               (_g3277232831_
                (lambda (_g3277432792_)
                  (if (gx#stx-pair? _g3277432792_)
                      (let ((_e3277932795_ (gx#syntax-e _g3277432792_)))
                        (let ((_hd3277832799_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3277932795_)))
                              (_tl3277732802_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3277932795_))))
                          (if (gx#stx-pair? _tl3277732802_)
                              (let ((_e3278232805_
                                     (gx#syntax-e _tl3277732802_)))
                                (let ((_hd3278132809_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3278232805_)))
                                      (_tl3278032812_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3278232805_))))
                                  ((lambda (_L32815_ _L32817_)
                                     (let ((__tmp50872
                                            (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match))
                                           (__tmp50868
                                            (let ((__tmp50869
                                                   (let ((__tmp50870
                                                          (let ((__tmp50871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'syntax-rules)))
                    (declare (not safe))
                    (cons __tmp50871 _L32815_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50870 '()))))
                                              (declare (not safe))
                                              (cons _L32817_ __tmp50869))))
                                       (declare (not safe))
                                       (cons __tmp50872 __tmp50868)))
                                   _tl3278032812_
                                   _hd3278132809_)))
                              (_g3277332788_ _g3277432792_))))
                      (_g3277332788_ _g3277432792_)))))
          (_g3277232831_ _$stx32769_))))))
