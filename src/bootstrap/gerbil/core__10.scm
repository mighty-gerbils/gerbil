(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[1]#_g49616_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49617_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49674_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49675_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49676_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49678_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49679_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49680_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49681_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49682_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49683_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49684_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49685_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49686_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49687_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50080_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50164_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50184_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50185_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50314_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50315_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50316_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50317_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50318_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<match>[1]#match-macro::t|
      (let ((__tmp49600 (list gerbil/core$<macro-object>#macro-object::t)))
        (declare (not safe))
        (make-class-type
         'gerbil.core#match-macro::t
         'match-macro
         __tmp49600
         '()
         '()
         '#f)))
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
            (let ((__tmp49601 (gx#syntax-local-value _stx30461_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core$<match>[1]#match-macro::t|
               __tmp49601))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern__%|
      (lambda (_stx28767_ _match-stx28769_)
        (letrec ((_parse128771_
                  (lambda (_hd29124_)
                    (let* ((___stx4470044701_ _hd29124_)
                           (_g2915029292_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4470044701_))))
                      (let ((___kont4470344704_
                             (lambda (_L30224_ _L30226_)
                               (let* ((___stx4462044621_ _L30224_)
                                      (_g3024330276_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4462044621_))))
                                 (let ((___kont4462344624_
                                        (lambda ()
                                          (let ((__tmp49602
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L30226_ '()))))
                                            (declare (not safe))
                                            (cons '?: __tmp49602))))
                                       (___kont4462544626_
                                        (lambda (_L30417_)
                                          (let ((__tmp49603
                                                 (let ((__tmp49604
                                                        (let ((__tmp49605
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (_parse128771_ _L30417_))))
                  (declare (not safe))
                  (cons __tmp49605 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30226_
                                                         __tmp49604))))
                                            (declare (not safe))
                                            (cons '?: __tmp49603))))
                                       (___kont4462744628_
                                        (lambda (_L30387_)
                                          (let ((__tmp49606
                                                 (let ((__tmp49607
                                                        (let ((__tmp49608
                                                               (let ((__tmp49609
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_parse128771_ _L30387_))))
                         (declare (not safe))
                         (cons __tmp49609 '()))))
                  (declare (not safe))
                  (cons '=>: __tmp49608))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30226_
                                                         __tmp49607))))
                                            (declare (not safe))
                                            (cons '?: __tmp49606))))
                                       (___kont4462944630_
                                        (lambda (_L30338_ _L30340_)
                                          (let ((__tmp49610
                                                 (let ((__tmp49611
                                                        (let ((__tmp49612
                                                               (let ((__tmp49613
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp49614
                                     (let ((__tmp49615
                                            (let ()
                                              (declare (not safe))
                                              (_parse128771_ _L30338_))))
                                       (declare (not safe))
                                       (cons __tmp49615 '()))))
                                (declare (not safe))
                                (cons '=>: __tmp49614))))
                         (declare (not safe))
                         (cons _L30340_ __tmp49613))))
                  (declare (not safe))
                  (cons ':: __tmp49612))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30226_
                                                         __tmp49611))))
                                            (declare (not safe))
                                            (cons '?: __tmp49610))))
                                       (___kont4463144632_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_parse-error28778_ _hd29124_)))))
                                   (let ((_g3023930428_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 ___stx4462044621_)
                                                (let ((_e3024830407_
                                                       (gx#syntax-e
                                                        ___stx4462044621_)))
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
                                                        (___kont4462544626_
                                                         _hd3024730411_)
                                                        (if (gx#identifier?
                                                             _hd3024730411_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g49617_|
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
                                    (___kont4462744628_ _hd3025430381_)
                                    (___kont4463144632_))))
                            (___kont4463144632_))
                        (___kont4463144632_))
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
                                                       |gerbil/core$<match>[1]#_g49616_|
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
                          (___kont4462944630_ _hd3026930332_ _hd3026330312_)
                          (___kont4463144632_))))
                  (___kont4463144632_))
              (___kont4463144632_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4463144632_))))
                                          (___kont4463144632_))))
                                  (___kont4463144632_))
                              (___kont4463144632_)))
                        (___kont4463144632_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4463144632_)))))
                                     (if (gx#stx-null? ___stx4462044621_)
                                         (___kont4462344624_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3023930428_))))))))
                            (___kont4470544706_
                             (lambda (_L30129_)
                               (let* ((___stx4460244603_ _L30129_)
                                      (_g3014130152_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4460244603_))))
                                 (let ((___kont4460544606_
                                        (lambda (_L30180_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse128771_ _L30180_))))
                                       (___kont4460744608_
                                        (lambda ()
                                          (let ((__tmp49618
                                                 (gx#stx-map
                                                  _parse128771_
                                                  _L30129_)))
                                            (declare (not safe))
                                            (cons 'and: __tmp49618)))))
                                   (if (gx#stx-pair? ___stx4460244603_)
                                       (let ((_e3014630170_
                                              (gx#syntax-e ___stx4460244603_)))
                                         (let ((_tl3014430177_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3014630170_)))
                                               (_hd3014530174_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3014630170_))))
                                           (if (gx#stx-null? _tl3014430177_)
                                               (___kont4460544606_
                                                _hd3014530174_)
                                               (___kont4460744608_))))
                                       (___kont4460744608_))))))
                            (___kont4470744708_
                             (lambda (_L30044_)
                               (let* ((___stx4458444585_ _L30044_)
                                      (_g3005630067_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4458444585_))))
                                 (let ((___kont4458744588_
                                        (lambda (_L30095_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse128771_ _L30095_))))
                                       (___kont4458944590_
                                        (lambda ()
                                          (let ((__tmp49619
                                                 (gx#stx-map
                                                  _parse128771_
                                                  _L30044_)))
                                            (declare (not safe))
                                            (cons 'or: __tmp49619)))))
                                   (if (gx#stx-pair? ___stx4458444585_)
                                       (let ((_e3006130085_
                                              (gx#syntax-e ___stx4458444585_)))
                                         (let ((_tl3005930092_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3006130085_)))
                                               (_hd3006030089_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3006130085_))))
                                           (if (gx#stx-null? _tl3005930092_)
                                               (___kont4458744588_
                                                _hd3006030089_)
                                               (___kont4458944590_))))
                                       (___kont4458944590_))))))
                            (___kont4470944710_
                             (lambda (_L30014_)
                               (let ((__tmp49620
                                      (let ((__tmp49621
                                             (let ()
                                               (declare (not safe))
                                               (_parse128771_ _L30014_))))
                                        (declare (not safe))
                                        (cons __tmp49621 '()))))
                                 (declare (not safe))
                                 (cons 'not: __tmp49620))))
                            (___kont4471144712_
                             (lambda (_L29970_ _L29972_)
                               (let ((__tmp49622
                                      (let ((__tmp49625
                                             (let ()
                                               (declare (not safe))
                                               (_parse128771_ _L29972_)))
                                            (__tmp49623
                                             (let ((__tmp49624
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse128771_
                                                       _L29970_))))
                                               (declare (not safe))
                                               (cons __tmp49624 '()))))
                                        (declare (not safe))
                                        (cons __tmp49625 __tmp49623))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp49622))))
                            (___kont4471344714_
                             (lambda (_L29914_ _L29916_ _L29917_)
                               (if (gx#stx-null? _L29914_)
                                   (let ((__tmp49633
                                          (let ((__tmp49636
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse128771_ _L29917_)))
                                                (__tmp49634
                                                 (let ((__tmp49635
                                                        (let ()
                                                          (declare (not safe))
                                                          (_parse128771_
                                                           _L29916_))))
                                                   (declare (not safe))
                                                   (cons __tmp49635 '()))))
                                            (declare (not safe))
                                            (cons __tmp49636 __tmp49634))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp49633))
                                   (let ((__tmp49626
                                          (let ((__tmp49632
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse128771_ _L29917_)))
                                                (__tmp49627
                                                 (let ((__tmp49628
                                                        (let ((__tmp49629
                                                               (let ((__tmp49631
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'cons*))
                             (__tmp49630
                              (let ()
                                (declare (not safe))
                                (cons _L29916_ _L29914_))))
                         (declare (not safe))
                         (cons __tmp49631 __tmp49630))))
                  (declare (not safe))
                  (_parse128771_ __tmp49629))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49628 '()))))
                                            (declare (not safe))
                                            (cons __tmp49632 __tmp49627))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp49626)))))
                            (___kont4471544716_
                             (lambda (_L29866_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-list28773_ _L29866_))))
                            (___kont4471744718_
                             (lambda (_L29836_)
                               (let ((__tmp49637
                                      (let ((__tmp49638
                                             (let ()
                                               (declare (not safe))
                                               (_parse128771_ _L29836_))))
                                        (declare (not safe))
                                        (cons __tmp49638 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp49637))))
                            (___kont4471944720_
                             (lambda (_L29799_)
                               (let ((__tmp49639
                                      (let ((__tmp49640
                                             (let ()
                                               (declare (not safe))
                                               (_parse128771_ _L29799_))))
                                        (declare (not safe))
                                        (cons __tmp49640 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp49639))))
                            (___kont4472144722_
                             (lambda (_L29775_)
                               (let ()
                                 (declare (not safe))
                                 (_parse128771_ _L29775_))))
                            (___kont4472344724_
                             (lambda (_L29737_)
                               (let ((__tmp49641
                                      (let ((__tmp49642
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector28774_
                                                _L29737_))))
                                        (declare (not safe))
                                        (cons __tmp49642 '()))))
                                 (declare (not safe))
                                 (cons 'values: __tmp49641))))
                            (___kont4472544726_
                             (lambda (_L29709_)
                               (let ((__tmp49643
                                      (let ((__tmp49644
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector28774_
                                                _L29709_))))
                                        (declare (not safe))
                                        (cons __tmp49644 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp49643))))
                            (___kont4472744728_
                             (lambda (_L29670_)
                               (let ((__tmp49645
                                      (let ((__tmp49646
                                             (let ((__tmp49647
                                                    (let ((__tmp49648
                                                           (lambda (_g2968329686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2968429689_)
                     (let ()
                       (declare (not safe))
                       (cons _g2968329686_ _g2968429689_)))))
              (declare (not safe))
              (foldr1 __tmp49648 '() _L29670_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_parse-vector28774_
                                                __tmp49647))))
                                        (declare (not safe))
                                        (cons __tmp49646 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp49645))))
                            (___kont4473144732_
                             (lambda (_L29616_ _L29618_)
                               (let ((__tmp49649
                                      (let ((__tmp49652
                                             (gx#syntax-local-value _L29618_))
                                            (__tmp49650
                                             (let ((__tmp49651
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-vector28774_
                                                       _L29616_))))
                                               (declare (not safe))
                                               (cons __tmp49651 '()))))
                                        (declare (not safe))
                                        (cons __tmp49652 __tmp49650))))
                                 (declare (not safe))
                                 (cons 'struct: __tmp49649))))
                            (___kont4473344734_
                             (lambda (_L29586_ _L29588_)
                               (let ((__tmp49653
                                      (let ((__tmp49656
                                             (gx#syntax-local-value _L29588_))
                                            (__tmp49654
                                             (let ((__tmp49655
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-class-body28776_
                                                       _L29586_))))
                                               (declare (not safe))
                                               (cons __tmp49655 '()))))
                                        (declare (not safe))
                                        (cons __tmp49656 __tmp49654))))
                                 (declare (not safe))
                                 (cons 'class: __tmp49653))))
                            (___kont4473544736_
                             (lambda (_L29546_ _L29548_)
                               (let ((__tmp49657
                                      (let ((__tmp49658
                                             (let ((__tmp49663
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cut))
                                                   (__tmp49659
                                                    (let ((__tmp49660
                                                           (let ((__tmp49662
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '<>))
                         (__tmp49661
                          (let () (declare (not safe)) (cons _L29546_ '()))))
                     (declare (not safe))
                     (cons __tmp49662 __tmp49661))))
              (declare (not safe))
              (cons _L29548_ __tmp49660))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49663 __tmp49659))))
                                        (declare (not safe))
                                        (cons __tmp49658 '()))))
                                 (declare (not safe))
                                 (cons '?: __tmp49657))))
                            (___kont4473744738_
                             (lambda (_L29506_)
                               (let ((__tmp49664
                                      (let ((__tmp49665 (gx#stx-e _L29506_)))
                                        (declare (not safe))
                                        (cons __tmp49665 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp49664))))
                            (___kont4473944740_
                             (lambda (_L29466_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-qq28777_ _L29466_))))
                            (___kont4474144742_
                             (lambda (_L29422_ _L29424_)
                               (let ((__tmp49666
                                      (let ((__tmp49667
                                             (let ((__tmp49668
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse128771_
                                                       _L29422_))))
                                               (declare (not safe))
                                               (cons __tmp49668 '()))))
                                        (declare (not safe))
                                        (cons _L29424_ __tmp49667))))
                                 (declare (not safe))
                                 (cons 'apply: __tmp49666))))
                            (___kont4474344744_
                             (lambda (_L29370_)
                               (let ((__tmp49669
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
                                 (_parse128771_ __tmp49669))))
                            (___kont4474544746_
                             (lambda (_L29344_)
                               (let () (declare (not safe)) (cons 'any: '()))))
                            (___kont4474744748_
                             (lambda (_L29328_)
                               (let ((__tmp49670
                                      (let ()
                                        (declare (not safe))
                                        (cons _L29328_ '()))))
                                 (declare (not safe))
                                 (cons 'var: __tmp49670))))
                            (___kont4474944750_
                             (lambda (_L29310_)
                               (let ((__tmp49671
                                      (let ((__tmp49672 (gx#stx-e _L29310_)))
                                        (declare (not safe))
                                        (cons __tmp49672 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp49671))))
                            (___kont4475144752_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_parse-error28778_ _hd29124_)))))
                        (let* ((_g2914829321_
                                (lambda ()
                                  (let ((_L29310_ ___stx4470044701_))
                                    (if (gx#stx-datum? _L29310_)
                                        (___kont4474944750_ _L29310_)
                                        (___kont4475144752_)))))
                               (_g2914729337_
                                (lambda ()
                                  (let ((_L29328_ ___stx4470044701_))
                                    (if (and (gx#identifier? _L29328_)
                                             (let ((__tmp49673
                                                    (gx#ellipsis? _L29328_)))
                                               (declare (not safe))
                                               (not __tmp49673)))
                                        (___kont4474744748_ _L29328_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2914829321_))))))
                               (_g2914629353_
                                (lambda ()
                                  (let ((_L29344_ ___stx4470044701_))
                                    (if (gx#underscore? _L29344_)
                                        (___kont4474544746_ _L29344_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2914729337_))))))
                               (___match4502745028_
                                (lambda (_e2928329360_
                                         _hd2928229364_
                                         _tl2928129367_)
                                  (let ((_L29370_ _hd2928229364_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                           _L29370_))
                                        (___kont4474344744_ _L29370_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2914629353_))))))
                               (___match4496144962_
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
                                        (___kont4473544736_ _L29546_ _L29548_)
                                        (if (gx#identifier? _hd2925029530_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g49675_|
                                                 _hd2925029530_)
                                                (___kont4473744738_
                                                 _hd2925329540_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<match>[1]#_g49674_|
                                                     _hd2925029530_)
                                                    (___kont4473944740_
                                                     _hd2925329540_)
                                                    (___match4502745028_
                                                     _e2925129526_
                                                     _hd2925029530_
                                                     _tl2924929533_)))
                                            (___match4502745028_
                                             _e2925129526_
                                             _hd2925029530_
                                             _tl2924929533_))))))
                               (___match4494744948_
                                (lambda (_e2924629576_
                                         _hd2924529580_
                                         _tl2924429583_)
                                  (let ((_L29586_ _tl2924429583_)
                                        (_L29588_ _hd2924529580_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                                           _L29588_))
                                        (___kont4473344734_ _L29586_ _L29588_)
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
                                                    (___match4496144962_
                                                     _e2924629576_
                                                     _hd2924529580_
                                                     _tl2924429583_
                                                     _e2925429536_
                                                     _hd2925329540_
                                                     _tl2925229543_)
                                                    (if (gx#identifier?
                                                         _hd2924529580_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core$<match>[1]#_g49675_|
                                                             _hd2924529580_)
                                                            (___match4502745028_
                                                             _e2924629576_
                                                             _hd2924529580_
                                                             _tl2924429583_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g49674_|
                         _hd2924529580_)
                        (___match4502745028_
                         _e2924629576_
                         _hd2924529580_
                         _tl2924429583_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g49676_|
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
                                        (___kont4474144742_
                                         _hd2927829416_
                                         _hd2925329540_)
                                        (___match4502745028_
                                         _e2924629576_
                                         _hd2924529580_
                                         _tl2924429583_))))
                                (___match4502745028_
                                 _e2924629576_
                                 _hd2924529580_
                                 _tl2924429583_))
                            (___match4502745028_
                             _e2924629576_
                             _hd2924529580_
                             _tl2924429583_))))
                (___match4502745028_
                 _e2924629576_
                 _hd2924529580_
                 _tl2924429583_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___match4502745028_
                                             _e2924629576_
                                             _hd2924529580_
                                             _tl2924429583_))))))
                               (___match4494144942_
                                (lambda (_e2924129606_
                                         _hd2924029610_
                                         _tl2923929613_)
                                  (let ((_L29616_ _tl2923929613_)
                                        (_L29618_ _hd2924029610_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__%
                                           _L29618_
                                           gerbil/core$<MOP>$<MOP:2>#!class-type-struct?))
                                        (___kont4473144732_ _L29616_ _L29618_)
                                        (___match4494744948_
                                         _e2924129606_
                                         _hd2924029610_
                                         _tl2923929613_)))))
                               (___match4493544936_
                                (lambda (_e2922729636_
                                         ___splice4472944730_
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
                                                      (let ((__tmp49677
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd2923329660_ _body2923529653_))))
                (declare (not safe))
                (_loop2923129646_ _lp-tl2923429663_ __tmp49677))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_body2923629666_
                                                         (reverse _body2923529653_)))
                                                    (___kont4472744728_
                                                     _body2923629666_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop2923129646_
                                       _target2922829640_
                                       '())))))
                               (_g2913829692_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx4470044701_)
                                      (let ((_e2922729636_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx4470044701_))))
                                        (if (gx#stx-pair/null? _e2922729636_)
                                            (let ((___splice4472944730_
                                                   (gx#syntax-split-splice
                                                    _e2922729636_
                                                    '0)))
                                              (let ((_tl2923029643_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4472944730_
                                                        '1)))
                                                    (_target2922829640_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4472944730_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl2923029643_)
                                                    (___match4493544936_
                                                     _e2922729636_
                                                     ___splice4472944730_
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
                                  (if (gx#stx-box? ___stx4470044701_)
                                      (let ((_e2921029795_
                                             (unbox (gx#syntax-e
                                                     ___stx4470044701_))))
                                        (___kont4471944720_ _e2921029795_))
                                      (let ()
                                        (declare (not safe))
                                        (_g2913829692_)))))
                               (___match4478944790_
                                (lambda (_e2916730034_
                                         _hd2916630038_
                                         _tl2916530041_)
                                  (let ((_L30044_ _tl2916530041_))
                                    (if (gx#stx-list? _L30044_)
                                        (___kont4470744708_ _L30044_)
                                        (___match4494144942_
                                         _e2916730034_
                                         _hd2916630038_
                                         _tl2916530041_)))))
                               (___match4477944780_
                                (lambda (_e2916330119_
                                         _hd2916230123_
                                         _tl2916130126_)
                                  (let ((_L30129_ _tl2916130126_))
                                    (if (gx#stx-list? _L30129_)
                                        (___kont4470544706_ _L30129_)
                                        (___match4494144942_
                                         _e2916330119_
                                         _hd2916230123_
                                         _tl2916130126_))))))
                          (if (gx#stx-pair? ___stx4470044701_)
                              (let ((_e2915630204_
                                     (gx#syntax-e ___stx4470044701_)))
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
                                           |gerbil/core$<match>[1]#_g49687_|
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
                                                  (___kont4470344704_
                                                   _tl2915730221_
                                                   _hd2915830218_)))
                                              (___match4494144942_
                                               _e2915630204_
                                               _hd2915530208_
                                               _tl2915430211_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g49686_|
                                               _hd2915530208_)
                                              (___match4477944780_
                                               _e2915630204_
                                               _hd2915530208_
                                               _tl2915430211_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g49685_|
                                                   _hd2915530208_)
                                                  (___match4478944790_
                                                   _e2915630204_
                                                   _hd2915530208_
                                                   _tl2915430211_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g49684_|
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
                          (___kont4470944710_ _hd2917330008_)
                          (___match4494144942_
                           _e2915630204_
                           _hd2915530208_
                           _tl2915430211_))))
                  (___match4494144942_
                   _e2915630204_
                   _hd2915530208_
                   _tl2915430211_))
              (if (gx#free-identifier=?
                   |gerbil/core$<match>[1]#_g49683_|
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
                                      (___kont4471144712_
                                       _hd2918429964_
                                       _hd2918129954_)
                                      (___match4494144942_
                                       _e2915630204_
                                       _hd2915530208_
                                       _tl2915430211_))))
                              (___match4494144942_
                               _e2915630204_
                               _hd2915530208_
                               _tl2915430211_))))
                      (___match4494144942_
                       _e2915630204_
                       _hd2915530208_
                       _tl2915430211_))
                  (if (gx#free-identifier=?
                       |gerbil/core$<match>[1]#_g49682_|
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
                                      (___kont4471344714_
                                       _tl2919529911_
                                       _hd2919629908_
                                       _hd2919329898_)))
                                  (___match4494144942_
                                   _e2915630204_
                                   _hd2915530208_
                                   _tl2915430211_))))
                          (___match4494144942_
                           _e2915630204_
                           _hd2915530208_
                           _tl2915430211_))
                      (if (gx#free-identifier=?
                           |gerbil/core$<match>[1]#_g49681_|
                           _hd2915530208_)
                          (___kont4471544716_ _tl2915430211_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g49680_|
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
                                          (___kont4471744718_ _hd2920729830_)
                                          (___match4494144942_
                                           _e2915630204_
                                           _hd2915530208_
                                           _tl2915430211_))))
                                  (___match4494144942_
                                   _e2915630204_
                                   _hd2915530208_
                                   _tl2915430211_))
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g49679_|
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
                                              (___kont4472144722_
                                               _hd2921629769_)
                                              (___kont4472344724_
                                               _tl2915430211_))))
                                      (___kont4472344724_ _tl2915430211_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g49678_|
                                       _hd2915530208_)
                                      (___kont4472544726_ _tl2915430211_)
                                      (___match4494144942_
                                       _e2915630204_
                                       _hd2915530208_
                                       _tl2915430211_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___match4494144942_
                                       _e2915630204_
                                       _hd2915530208_
                                       _tl2915430211_))))
                              (let ()
                                (declare (not safe))
                                (_g2913429809_))))))))
                 (_parse-list28773_
                  (lambda (_body28953_)
                    (let* ((___stx4503045031_ _body28953_)
                           (_g2895928988_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4503045031_))))
                      (let ((___kont4503345034_
                             (lambda (_L29106_)
                               (let ()
                                 (declare (not safe))
                                 (_parse128771_ _L29106_))))
                            (___kont4503545036_
                             (lambda (_L29058_ _L29060_ _L29061_)
                               (let ((__tmp49688
                                      (let ((__tmp49691
                                             (let ()
                                               (declare (not safe))
                                               (_parse128771_ _L29061_)))
                                            (__tmp49689
                                             (let ((__tmp49690
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list28773_
                                                       _L29058_))))
                                               (declare (not safe))
                                               (cons __tmp49690 '()))))
                                        (declare (not safe))
                                        (cons __tmp49691 __tmp49689))))
                                 (declare (not safe))
                                 (cons 'splice: __tmp49688))))
                            (___kont4503745038_
                             (lambda (_L29016_ _L29018_)
                               (let ((__tmp49692
                                      (let ((__tmp49695
                                             (let ()
                                               (declare (not safe))
                                               (_parse128771_ _L29018_)))
                                            (__tmp49693
                                             (let ((__tmp49694
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list28773_
                                                       _L29016_))))
                                               (declare (not safe))
                                               (cons __tmp49694 '()))))
                                        (declare (not safe))
                                        (cons __tmp49695 __tmp49693))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp49692))))
                            (___kont4503945040_
                             (lambda ()
                               (if (gx#stx-null? _body28953_)
                                   (let ()
                                     (declare (not safe))
                                     (cons 'null: '()))
                                   (if (let ((__tmp49696
                                              (gx#stx-pair? _body28953_)))
                                         (declare (not safe))
                                         (not __tmp49696))
                                       (let ()
                                         (declare (not safe))
                                         (_parse128771_ _body28953_))
                                       (let ()
                                         (declare (not safe))
                                         (_parse-error28778_ _body28953_)))))))
                        (let* ((___match4507945080_
                                (lambda (_e2898229006_
                                         _hd2898129010_
                                         _tl2898029013_)
                                  (let ((_L29016_ _tl2898029013_)
                                        (_L29018_ _hd2898129010_))
                                    (if (let ((__tmp49697
                                               (gx#ellipsis? _L29018_)))
                                          (declare (not safe))
                                          (not __tmp49697))
                                        (___kont4503745038_ _L29016_ _L29018_)
                                        (___kont4503945040_)))))
                               (___match4507345074_
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
                                        (___kont4503545036_
                                         _L29058_
                                         _L29060_
                                         _L29061_)
                                        (___match4507945080_
                                         _e2897429038_
                                         _hd2897329042_
                                         _tl2897229045_))))))
                          (if (gx#stx-pair? ___stx4503045031_)
                              (let ((_e2896429082_
                                     (gx#syntax-e ___stx4503045031_)))
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
                                                        (___kont4503345034_
                                                         _hd2896729100_)
                                                        (___match4507345074_
                                                         _e2896429082_
                                                         _hd2896329086_
                                                         _tl2896229089_
                                                         _e2896829096_
                                                         _hd2896729100_
                                                         _tl2896629103_))))
                                                (___match4507945080_
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
                                                    (___match4507345074_
                                                     _e2896429082_
                                                     _hd2896329086_
                                                     _tl2896229089_
                                                     _e2897729048_
                                                     _hd2897629052_
                                                     _tl2897529055_)))
                                                (___match4507945080_
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
                                              (___match4507345074_
                                               _e2896429082_
                                               _hd2896329086_
                                               _tl2896229089_
                                               _e2897729048_
                                               _hd2897629052_
                                               _tl2897529055_)))
                                          (___match4507945080_
                                           _e2896429082_
                                           _hd2896329086_
                                           _tl2896229089_)))))
                              (___kont4503945040_)))))))
                 (_parse-vector28774_
                  (lambda (_body28950_)
                    (if (let ()
                          (declare (not safe))
                          (_simple-vector?28775_ _body28950_))
                        (let ((__tmp49700
                               (let ((__tmp49701
                                      (gx#stx-map _parse128771_ _body28950_)))
                                 (declare (not safe))
                                 (cons __tmp49701 '()))))
                          (declare (not safe))
                          (cons 'simple: __tmp49700))
                        (let ((__tmp49698
                               (let ((__tmp49699
                                      (let ()
                                        (declare (not safe))
                                        (_parse-list28773_ _body28950_))))
                                 (declare (not safe))
                                 (cons __tmp49699 '()))))
                          (declare (not safe))
                          (cons 'list: __tmp49698)))))
                 (_simple-vector?28775_
                  (lambda (_body28887_)
                    (let* ((___stx4508245083_ _body28887_)
                           (_g2889128903_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4508245083_))))
                      (let ((___kont4508545086_
                             (lambda (_L28931_ _L28933_)
                               (if (let ((__tmp49702 (gx#ellipsis? _L28933_)))
                                     (declare (not safe))
                                     (not __tmp49702))
                                   (let ()
                                     (declare (not safe))
                                     (_simple-vector?28775_ _L28931_))
                                   '#f)))
                            (___kont4508745088_
                             (lambda () (gx#stx-null? _body28887_))))
                        (if (gx#stx-pair? ___stx4508245083_)
                            (let ((_e2889728921_
                                   (gx#syntax-e ___stx4508245083_)))
                              (let ((_tl2889528928_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2889728921_)))
                                    (_hd2889628925_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2889728921_))))
                                (___kont4508545086_
                                 _tl2889528928_
                                 _hd2889628925_)))
                            (___kont4508745088_))))))
                 (_parse-class-body28776_
                  (lambda (_body28796_)
                    (let _recur28799_ ((_rest28802_ _body28796_))
                      (let* ((___stx4509845099_ _rest28802_)
                             (_g2880628822_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4509845099_))))
                        (let ((___kont4510145102_
                               (lambda (_L28860_ _L28862_ _L28863_)
                                 (let ((__tmp49703
                                        (let ((__tmp49705
                                               (let ()
                                                 (declare (not safe))
                                                 (_parse128771_ _L28862_)))
                                              (__tmp49704
                                               (let ()
                                                 (declare (not safe))
                                                 (_recur28799_ _L28860_))))
                                          (declare (not safe))
                                          (cons __tmp49705 __tmp49704))))
                                   (declare (not safe))
                                   (cons _L28863_ __tmp49703))))
                              (___kont4510345104_
                               (lambda ()
                                 (if (gx#stx-null? _rest28802_)
                                     '()
                                     (let ()
                                       (declare (not safe))
                                       (_parse-error28778_ _rest28802_))))))
                          (let ((___match4511745118_
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
                                         (___kont4510145102_
                                          _L28860_
                                          _L28862_
                                          _L28863_)
                                         (___kont4510345104_))))))
                            (if (gx#stx-pair? ___stx4509845099_)
                                (let ((_e2881328840_
                                       (gx#syntax-e ___stx4509845099_)))
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
                                            (___match4511745118_
                                             _e2881328840_
                                             _hd2881228844_
                                             _tl2881128847_
                                             _e2881628850_
                                             _hd2881528854_
                                             _tl2881428857_)))
                                        (___kont4510345104_))))
                                (___kont4510345104_))))))))
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
                               (let ((__tmp49707
                                      (let ((__tmp49708
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd28780_ '()))))
                                        (declare (not safe))
                                        (cons _stx28767_ __tmp49708))))
                                 (declare (not safe))
                                 (cons _match-stx28769_ __tmp49707))
                               (let ((__tmp49706
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd28780_ '()))))
                                 (declare (not safe))
                                 (cons _stx28767_ __tmp49706)))))))
          (let () (declare (not safe)) (_parse128771_ _stx28767_)))))
    (define |gerbil/core$<match>[1]#parse-match-pattern__0|
      (lambda (_stx30451_)
        (let ((_match-stx30454_ '#f))
          (declare (not safe))
          (|gerbil/core$<match>[1]#parse-match-pattern__%|
           _stx30451_
           _match-stx30454_))))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (lambda _g49710_
        (let ((_g49709_ (let () (declare (not safe)) (##length _g49710_))))
          (cond ((let () (declare (not safe)) (##fx= _g49709_ 1))
                 (apply (lambda (_stx30451_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__0|
                             _stx30451_)))
                        _g49710_))
                ((let () (declare (not safe)) (##fx= _g49709_ 2))
                 (apply (lambda (_stx30457_ _match-stx30459_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__%|
                             _stx30457_
                             _match-stx30459_)))
                        _g49710_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<match>[1]#parse-match-pattern|
                  _g49710_))))))
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
                    (let* ((___stx4521645217_ _ptree27776_)
                           (_g2779227902_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4521645217_))))
                      (let ((___kont4521945220_
                             (lambda (_L28532_)
                               (let* ((___stx4513645137_ _L28532_)
                                      (_g2854928583_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4513645137_))))
                                 (let ((___kont4513945140_
                                        (lambda (_L28732_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27489_
                                             _L28732_
                                             _vars27778_
                                             _K27779_))))
                                       (___kont4514145142_
                                        (lambda (_L28701_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27489_
                                             _L28701_
                                             _vars27778_
                                             _K27779_))))
                                       (___kont4514345144_
                                        (lambda (_L28649_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27489_
                                             _L28649_
                                             _vars27778_
                                             _K27779_))))
                                       (___kont4514545146_
                                        (lambda () (_K27779_ _vars27778_))))
                                   (if (gx#stx-pair? ___stx4513645137_)
                                       (let ((_e2855428722_
                                              (gx#syntax-e ___stx4513645137_)))
                                         (let ((_tl2855228729_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2855428722_)))
                                               (_hd2855328726_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2855428722_))))
                                           (if (gx#stx-null? _tl2855228729_)
                                               (___kont4513945140_
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
                             (___kont4514145142_ _hd2856128695_)
                             (___kont4514545146_))))
                     (___kont4514545146_))
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
                                                           (___kont4514345144_
                                                            _hd2857628643_)
                                                           (___kont4514545146_))))
                                                   (___kont4514545146_))
                                               (___kont4514545146_)))
                                         (___kont4514545146_))))
                                 (___kont4514545146_))))
                         (___kont4514545146_))
                     (___kont4514545146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4514545146_)))))
                                       (___kont4514545146_))))))
                            (___kont4522145222_
                             (lambda (_L28419_ _L28421_)
                               (let* ((___stx4512045121_ _L28419_)
                                      (_g2843728449_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4512045121_))))
                                 (let ((___kont4512345124_
                                        (lambda (_L28477_ _L28479_)
                                          (let ((__tmp49711
                                                 (lambda (_g2849128493_)
                                                   (let ((__tmp49712
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L28421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L28477_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_loop27489_
                                                      __tmp49712
                                                      _g2849128493_
                                                      _K27779_)))))
                                            (declare (not safe))
                                            (_loop27489_
                                             _L28479_
                                             _vars27778_
                                             __tmp49711))))
                                       (___kont4512545126_
                                        (lambda () (_K27779_ _vars27778_))))
                                   (if (gx#stx-pair? ___stx4512045121_)
                                       (let ((_e2844328467_
                                              (gx#syntax-e ___stx4512045121_)))
                                         (let ((_tl2844128474_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2844328467_)))
                                               (_hd2844228471_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2844328467_))))
                                           (___kont4512345124_
                                            _tl2844128474_
                                            _hd2844228471_)))
                                       (___kont4512545126_))))))
                            (___kont4522345224_
                             (lambda (_L28388_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27489_ _L28388_ _vars27778_ _K27779_))))
                            (___kont4522545226_
                             (lambda (_L28334_ _L28336_)
                               (let ((__tmp49713
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
                                  __tmp49713))))
                            (___kont4522745228_
                             (lambda (_L28270_ _L28272_)
                               (let ((__tmp49714
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
                                  __tmp49714))))
                            (___kont4522945230_
                             (lambda (_L28215_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27489_ _L28215_ _vars27778_ _K27779_))))
                            (___kont4523145232_
                             (lambda (_L28165_ _L28167_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector27491_
                                  _L28165_
                                  _vars27778_
                                  _K27779_))))
                            (___kont4523345234_
                             (lambda (_L28122_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector27491_
                                  _L28122_
                                  _vars27778_
                                  _K27779_))))
                            (___kont4523545236_
                             (lambda (_L28065_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-class-list27493_
                                  _L28065_
                                  _vars27778_
                                  _K27779_))))
                            (___kont4523745238_
                             (lambda (_L28006_ _L28008_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27489_ _L28006_ _vars27778_ _K27779_))))
                            (___kont4523945240_
                             (lambda (_L27944_)
                               (if (let ((__tmp49715
                                          (lambda (_g2795927961_)
                                            (gx#bound-identifier=?
                                             _g2795927961_
                                             _L27944_))))
                                     (declare (not safe))
                                     (find __tmp49715 _vars27778_))
                                   (_K27779_ _vars27778_)
                                   (_K27779_
                                    (let ()
                                      (declare (not safe))
                                      (cons _L27944_ _vars27778_))))))
                            (___kont4524145242_
                             (lambda () (_K27779_ _vars27778_))))
                        (let* ((___match4537345374_
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
                                        (___kont4523145232_ _L28165_ _L28167_)
                                        (if (gx#stx-datum? _hd2785028149_)
                                            (let ((_e2785928098_
                                                   (gx#stx-e _hd2785028149_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e2785928098_
                                                            'struct:))
                                                  (___kont4524145242_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e2785928098_
                                                                'class:))
                                                      (___kont4524145242_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e2785928098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'apply:))
                  (___kont4524145242_)
                  (if (let ()
                        (declare (not safe))
                        (equal? _e2785928098_ 'var:))
                      (___kont4523945240_ _hd2785328159_)
                      (___kont4524145242_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont4524145242_))))))
                               (___match4526745268_
                                (lambda (_e2780628409_
                                         _hd2780528413_
                                         _tl2780428416_)
                                  (let ((_L28419_ _tl2780428416_)
                                        (_L28421_ _hd2780528413_))
                                    (if (or (gx#stx-eq? 'and: _L28421_)
                                            (gx#stx-eq? 'or: _L28421_))
                                        (___kont4522145222_ _L28419_ _L28421_)
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
                      (___kont4522345224_ _hd2781328382_)
                      (___kont4524145242_))))
              (___kont4524145242_))
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
                                  (___kont4522545226_
                                   _hd2782528328_
                                   _hd2782228318_)
                                  (___kont4524145242_))))
                          (if (gx#stx-null? _tl2782128321_)
                              (___match4537345374_
                               _e2780628409_
                               _hd2780528413_
                               _tl2780428416_
                               _e2782328314_
                               _hd2782228318_
                               _tl2782128321_)
                              (___kont4524145242_)))))
                  (___kont4524145242_))
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
                                      (___kont4522745228_
                                       _hd2783728264_
                                       _hd2783428254_)
                                      (___kont4524145242_))))
                              (if (gx#stx-null? _tl2783328257_)
                                  (___match4537345374_
                                   _e2780628409_
                                   _hd2780528413_
                                   _tl2780428416_
                                   _e2783528250_
                                   _hd2783428254_
                                   _tl2783328257_)
                                  (___kont4524145242_)))))
                      (___kont4524145242_))
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
                                  (___kont4522945230_ _hd2784528209_)
                                  (___kont4524145242_))))
                          (___kont4524145242_))
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
                                  (___match4537345374_
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
                                                  (___kont4523345234_
                                                   _hd2786428116_)
                                                  (___kont4524145242_))))
                                          (___kont4524145242_))
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
                                                      (___kont4523545236_
                                                       _hd2787528059_)
                                                      (___kont4524145242_))))
                                              (___kont4524145242_))
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
                                                          (___kont4523745238_
                                                           _hd2788728000_
                                                           _hd2785328159_)
                                                          (___kont4524145242_))))
                                                  (___kont4524145242_))
                                              (___kont4524145242_)))))))
                          (___kont4524145242_)))))))
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
                                                        (___match4537345374_
                                                         _e2780628409_
                                                         _hd2780528413_
                                                         _tl2780428416_
                                                         _e2785428155_
                                                         _hd2785328159_
                                                         _tl2785228162_)
                                                        (___kont4524145242_))))
                                                (___kont4524145242_))))))))
                          (if (gx#stx-pair? ___stx4521645217_)
                              (let ((_e2779728508_
                                     (gx#syntax-e ___stx4521645217_)))
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
                                                    (___kont4521945220_
                                                     _tl2779928529_)))
                                                (___match4526745268_
                                                 _e2779728508_
                                                 _hd2779628512_
                                                 _tl2779528515_))
                                            (___match4526745268_
                                             _e2779728508_
                                             _hd2779628512_
                                             _tl2779528515_)))
                                      (___match4526745268_
                                       _e2779728508_
                                       _hd2779628512_
                                       _tl2779528515_))))
                              (___kont4524145242_)))))))
                 (_loop-vector27491_
                  (lambda (_body27652_ _vars27654_ _K27655_)
                    (let* ((___stx4547445475_ _body27652_)
                           (_g2765827681_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4547445475_))))
                      (let ((___kont4547745478_
                             (lambda (_L27758_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-list27492_
                                  _L27758_
                                  _vars27654_
                                  _K27655_))))
                            (___kont4547945480_
                             (lambda (_L27712_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27489_
                                  _L27712_
                                  _vars27654_
                                  _K27655_)))))
                        (if (gx#stx-pair? ___stx4547445475_)
                            (let ((_e2766327734_
                                   (gx#syntax-e ___stx4547445475_)))
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
                                                      (___kont4547745478_
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
                                                          (___kont4547945480_
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
                    (let* ((___stx4552445525_ _rest27582_)
                           (_g2758827600_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4552445525_))))
                      (let ((___kont4552745528_
                             (lambda (_L27628_ _L27630_)
                               (let ((__tmp49716
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
                                  __tmp49716))))
                            (___kont4552945530_
                             (lambda () (_K27585_ _vars27584_))))
                        (if (gx#stx-pair? ___stx4552445525_)
                            (let ((_e2759427618_
                                   (gx#syntax-e ___stx4552445525_)))
                              (let ((_tl2759227625_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2759427618_)))
                                    (_hd2759327622_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2759427618_))))
                                (___kont4552745528_
                                 _tl2759227625_
                                 _hd2759327622_)))
                            (___kont4552945530_))))))
                 (_loop-class-list27493_
                  (lambda (_rest27495_ _vars27497_ _K27498_)
                    (let* ((___stx4554045541_ _rest27495_)
                           (_g2750127516_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4554045541_))))
                      (let ((___kont4554345544_
                             (lambda (_L27554_ _L27556_)
                               (let ((__tmp49717
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
                                  __tmp49717))))
                            (___kont4554545546_
                             (lambda () (_K27498_ _vars27497_))))
                        (if (gx#stx-pair? ___stx4554045541_)
                            (let ((_e2750727534_
                                   (gx#syntax-e ___stx4554045541_)))
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
                                        (___kont4554345544_
                                         _tl2750827551_
                                         _hd2750927548_)))
                                    (___kont4554545546_))))
                            (___kont4554545546_)))))))
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
                                   (let* ((___stx4577645777_ _ptree25701_)
                                          (_g2574725889_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx4577645777_))))
                                     (let ((___kont4577945780_
                                            (lambda (_L27197_ _L27199_)
                                              (let* ((___stx4569445695_
                                                      _L27197_)
                                                     (_g2721627251_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4569445695_))))
                                                (let ((___kont4569745698_
                                                       (lambda ()
                                                         (let ((__tmp49718
                                                                (let ((__tmp49721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49724 (gx#datum->syntax '#f '?))
                                     (__tmp49722
                                      (let ((__tmp49723
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25720_ '()))))
                                        (declare (not safe))
                                        (cons _L27199_ __tmp49723))))
                                 (declare (not safe))
                                 (cons __tmp49724 __tmp49722)))
                              (__tmp49719
                               (let ((__tmp49720
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25703_ '()))))
                                 (declare (not safe))
                                 (cons _K25702_ __tmp49720))))
                          (declare (not safe))
                          (cons __tmp49721 __tmp49719))))
                   (declare (not safe))
                   (cons 'if __tmp49718))))
              (___kont4569945700_
               (lambda (_L27452_)
                 (let ((__tmp49725
                        (let ((__tmp49729
                               (let ((__tmp49732 (gx#datum->syntax '#f '?))
                                     (__tmp49730
                                      (let ((__tmp49731
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25720_ '()))))
                                        (declare (not safe))
                                        (cons _L27199_ __tmp49731))))
                                 (declare (not safe))
                                 (cons __tmp49732 __tmp49730)))
                              (__tmp49726
                               (let ((__tmp49728
                                      (let ()
                                        (declare (not safe))
                                        (_generate124454_
                                         _tgt25699_
                                         _L27452_
                                         _K25702_
                                         _E25703_)))
                                     (__tmp49727
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25703_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49728 __tmp49727))))
                          (declare (not safe))
                          (cons __tmp49729 __tmp49726))))
                   (declare (not safe))
                   (cons 'if __tmp49725))))
              (___kont4570145702_
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
                                (let ((__tmp49733
                                       (let ((__tmp49740
                                              (let ((__tmp49741
                                                     (let ((__tmp49742
                                                            (let ((__tmp49743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49744
                                  (let ()
                                    (declare (not safe))
                                    (cons _L25720_ '()))))
                             (declare (not safe))
                             (cons _L27199_ __tmp49744))))
                      (declare (not safe))
                      (cons __tmp49743 '()))))
               (declare (not safe))
               (cons _L27419_ __tmp49742))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49741 '())))
                                             (__tmp49734
                                              (let ((__tmp49735
                                                     (let ((__tmp49736
                                                            (let ((__tmp49737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49739
                                  (let ()
                                    (declare (not safe))
                                    (_generate124454_
                                     _L27419_
                                     _L27390_
                                     _K25702_
                                     _E25703_)))
                                 (__tmp49738
                                  (let ()
                                    (declare (not safe))
                                    (cons _E25703_ '()))))
                             (declare (not safe))
                             (cons __tmp49739 __tmp49738))))
                      (declare (not safe))
                      (cons _L27419_ __tmp49737))))
               (declare (not safe))
               (cons 'if __tmp49736))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49735 '()))))
                                         (declare (not safe))
                                         (cons __tmp49740 __tmp49734))))
                                  (declare (not safe))
                                  (cons 'let __tmp49733))))
                            _g2740527416_)))
                        (__tmp49745 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2740327431_ __tmp49745))))
              (___kont4570345704_
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
                                (let ((__tmp49746
                                       (let ((__tmp49758
                                              (let ((__tmp49761
                                                     (gx#datum->syntax '#f '?))
                                                    (__tmp49759
                                                     (let ((__tmp49760
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L25720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L27199_ __tmp49760))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49761 __tmp49759)))
                                             (__tmp49747
                                              (let ((__tmp49749
                                                     (let ((__tmp49750
                                                            (let ((__tmp49753
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49754
                                  (let ((__tmp49755
                                         (let ((__tmp49756
                                                (let ((__tmp49757
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L25720_ '()))))
                                                  (declare (not safe))
                                                  (cons _L27308_ __tmp49757))))
                                           (declare (not safe))
                                           (cons __tmp49756 '()))))
                                    (declare (not safe))
                                    (cons _L27343_ __tmp49755))))
                             (declare (not safe))
                             (cons __tmp49754 '())))
                          (__tmp49751
                           (let ((__tmp49752
                                  (let ()
                                    (declare (not safe))
                                    (_generate124454_
                                     _L27343_
                                     _L27306_
                                     _K25702_
                                     _E25703_))))
                             (declare (not safe))
                             (cons __tmp49752 '()))))
                      (declare (not safe))
                      (cons __tmp49753 __tmp49751))))
               (declare (not safe))
               (cons 'let __tmp49750)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp49748
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25703_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49749 __tmp49748))))
                                         (declare (not safe))
                                         (cons __tmp49758 __tmp49747))))
                                  (declare (not safe))
                                  (cons 'if __tmp49746))))
                            _g2732927340_)))
                        (__tmp49762 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2732727355_ __tmp49762)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g2721327463_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                ___stx4569445695_)
                                                               (let ((_e2722127442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e ___stx4569445695_)))
                         (let ((_tl2721927449_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2722127442_)))
                               (_hd2722027446_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2722127442_))))
                           (if (gx#stx-null? _tl2721927449_)
                               (___kont4569945700_ _hd2722027446_)
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
                                                     (___kont4570145702_
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
                                           (___kont4570345704_
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
                                                         ___stx4569445695_)
                                                        (___kont4569745698_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g2721327463_))))))))
                                           (___kont4578145782_
                                            (lambda (_L27094_)
                                              (let* ((___stx4567845679_
                                                      _L27094_)
                                                     (_g2710727119_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4567845679_))))
                                                (let ((___kont4568145682_
                                                       (lambda (_L27147_
                                                                _L27149_)
                                                         (let ((__tmp49763
                                                                (let ((__tmp49764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'and: _L27147_))))
                          (declare (not safe))
                          (_generate124454_
                           _tgt25699_
                           __tmp49764
                           _K25702_
                           _E25703_))))
                   (declare (not safe))
                   (_generate124454_
                    _tgt25699_
                    _L27149_
                    __tmp49763
                    _E25703_))))
              (___kont4568345684_ (lambda () _K25702_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4567845679_)
                                                      (let ((_e2711327137_
                                                             (gx#syntax-e
                                                              ___stx4567845679_)))
                                                        (let ((_tl2711127144_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2711327137_)))
                      (_hd2711227141_
                       (let () (declare (not safe)) (##car _e2711327137_))))
                  (___kont4568145682_ _tl2711127144_ _hd2711227141_)))
              (___kont4568345684_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4578345784_
                                            (lambda (_L27001_)
                                              (let* ((___stx4566245663_
                                                      _L27001_)
                                                     (_g2701427026_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4566245663_))))
                                                (let ((___kont4566545666_
                                                       (lambda (_L27054_
                                                                _L27056_)
                                                         (let ((__tmp49765
                                                                (let ((__tmp49766
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'or: _L27054_))))
                          (declare (not safe))
                          (_generate124454_
                           _tgt25699_
                           __tmp49766
                           _K25702_
                           _E25703_))))
                   (declare (not safe))
                   (_generate124454_
                    _tgt25699_
                    _L27056_
                    _K25702_
                    __tmp49765))))
              (___kont4566745668_ (lambda () _E25703_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4566245663_)
                                                      (let ((_e2702027044_
                                                             (gx#syntax-e
                                                              ___stx4566245663_)))
                                                        (let ((_tl2701827051_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2702027044_)))
                      (_hd2701927048_
                       (let () (declare (not safe)) (##car _e2702027044_))))
                  (___kont4566545666_ _tl2701827051_ _hd2701927048_)))
              (___kont4566745668_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4578545786_
                                            (lambda (_L26966_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate124454_
                                                 _tgt25699_
                                                 _L26966_
                                                 _E25703_
                                                 _K25702_))))
                                           (___kont4578745788_
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
                                         (let ((__tmp49767
                                                (let ((__tmp49805
                                                       (let ((__tmp49807
                                                              (gx#datum->syntax
                                                               '#f
                                                               '##pair?))
                                                             (__tmp49806
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L25720_ '()))))
                 (declare (not safe))
                 (cons __tmp49807 __tmp49806)))
              (__tmp49768
               (let ((__tmp49770
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
                                (let ((__tmp49796
                                       (let ((__tmp49799
                                              (let ((__tmp49800
                                                     (let ((__tmp49801
                                                            (let ((__tmp49802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49804 (gx#datum->syntax '#f '##car))
                                 (__tmp49803
                                  (let ()
                                    (declare (not safe))
                                    (cons _L25720_ '()))))
                             (declare (not safe))
                             (cons __tmp49804 __tmp49803))))
                      (declare (not safe))
                      (cons __tmp49802 '()))))
               (declare (not safe))
               (cons _L26911_ __tmp49801))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49800 '())))
                                             (__tmp49797
                                              (let ((__tmp49798
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate124454_
                                                        _L26911_
                                                        _L26850_
                                                        _K25702_
                                                        _E25703_))))
                                                (declare (not safe))
                                                (cons __tmp49798 '()))))
                                         (declare (not safe))
                                         (cons __tmp49799 __tmp49797))))
                                  (declare (not safe))
                                  (cons 'let __tmp49796))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _hd-pat26927_ '(any:)))
                                    (let ((__tmp49787
                                           (let ((__tmp49790
                                                  (let ((__tmp49791
                                                         (let ((__tmp49792
                                                                (let ((__tmp49793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49795 (gx#datum->syntax '#f '##cdr))
                                     (__tmp49794
                                      (let ()
                                        (declare (not safe))
                                        (cons _L25720_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49795 __tmp49794))))
                          (declare (not safe))
                          (cons __tmp49793 '()))))
                   (declare (not safe))
                   (cons _L26909_ __tmp49792))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49791 '())))
                                                 (__tmp49788
                                                  (let ((__tmp49789
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate124454_
                                                            _L26909_
                                                            _L26848_
                                                            _K25702_
                                                            _E25703_))))
                                                    (declare (not safe))
                                                    (cons __tmp49789 '()))))
                                             (declare (not safe))
                                             (cons __tmp49790 __tmp49788))))
                                      (declare (not safe))
                                      (cons 'let __tmp49787))
                                    (let ((__tmp49771
                                           (let ((__tmp49775
                                                  (let ((__tmp49782
                                                         (let ((__tmp49783
                                                                (let ((__tmp49784
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49786 (gx#datum->syntax '#f '##car))
                                     (__tmp49785
                                      (let ()
                                        (declare (not safe))
                                        (cons _L25720_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49786 __tmp49785))))
                          (declare (not safe))
                          (cons __tmp49784 '()))))
                   (declare (not safe))
                   (cons _L26911_ __tmp49783)))
                (__tmp49776
                 (let ((__tmp49777
                        (let ((__tmp49778
                               (let ((__tmp49779
                                      (let ((__tmp49781
                                             (gx#datum->syntax '#f '##cdr))
                                            (__tmp49780
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25720_ '()))))
                                        (declare (not safe))
                                        (cons __tmp49781 __tmp49780))))
                                 (declare (not safe))
                                 (cons __tmp49779 '()))))
                          (declare (not safe))
                          (cons _L26909_ __tmp49778))))
                   (declare (not safe))
                   (cons __tmp49777 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49782
                                                          __tmp49776)))
                                                 (__tmp49772
                                                  (let ((__tmp49773
                                                         (let ((__tmp49774
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_generate124454_
                           _L26909_
                           _L26848_
                           _K25702_
                           _E25703_))))
                   (declare (not safe))
                   (_generate124454_ _L26911_ _L26850_ __tmp49774 _E25703_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49773 '()))))
                                             (declare (not safe))
                                             (cons __tmp49775 __tmp49772))))
                                      (declare (not safe))
                                      (cons 'let __tmp49771)))))))
                     (__tmp49769
                      (let () (declare (not safe)) (cons _E25703_ '()))))
                 (declare (not safe))
                 (cons __tmp49770 __tmp49769))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49805
                                                        __tmp49768))))
                                           (declare (not safe))
                                           (cons 'if __tmp49767))))
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
                                                     (__tmp49808
                                                      (list (gx#genident 'hd)
                                                            (gx#genident
                                                             'tl))))
                                                (declare (not safe))
                                                (_g2686626931_ __tmp49808))))
                                           (___kont4578945790_
                                            (lambda ()
                                              (let ((__tmp49809
                                                     (let ((__tmp49812
                                                            (let ((__tmp49814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##null?))
                          (__tmp49813
                           (let () (declare (not safe)) (cons _L25720_ '()))))
                      (declare (not safe))
                      (cons __tmp49814 __tmp49813)))
                   (__tmp49810
                    (let ((__tmp49811
                           (let () (declare (not safe)) (cons _E25703_ '()))))
                      (declare (not safe))
                      (cons _K25702_ __tmp49811))))
               (declare (not safe))
               (cons __tmp49812 __tmp49810))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'if __tmp49809))))
                                           (___kont4579145792_
                                            (lambda (_L26764_ _L26766_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate-splice24456_
                                                 _tgt25699_
                                                 _L26766_
                                                 _L26764_
                                                 _K25702_
                                                 _E25703_))))
                                           (___kont4579345794_
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
                                                             (let ((__tmp49815
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49828
                                   (let ((__tmp49830
                                          (gx#datum->syntax '#f '##box?))
                                         (__tmp49829
                                          (let ()
                                            (declare (not safe))
                                            (cons _L25720_ '()))))
                                     (declare (not safe))
                                     (cons __tmp49830 __tmp49829)))
                                  (__tmp49816
                                   (let ((__tmp49818
                                          (let ((__tmp49819
                                                 (let ((__tmp49822
                                                        (let ((__tmp49823
                                                               (let ((__tmp49824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp49825
                                     (let ((__tmp49827
                                            (gx#datum->syntax '#f '##unbox))
                                           (__tmp49826
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25720_ '()))))
                                       (declare (not safe))
                                       (cons __tmp49827 __tmp49826))))
                                (declare (not safe))
                                (cons __tmp49825 '()))))
                         (declare (not safe))
                         (cons _L26707_ __tmp49824))))
                  (declare (not safe))
                  (cons __tmp49823 '())))
               (__tmp49820
                (let ((__tmp49821
                       (let ()
                         (declare (not safe))
                         (_generate124454_
                          _L26707_
                          _L26678_
                          _K25702_
                          _E25703_))))
                  (declare (not safe))
                  (cons __tmp49821 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49822
                                                         __tmp49820))))
                                            (declare (not safe))
                                            (cons 'let __tmp49819)))
                                         (__tmp49817
                                          (let ()
                                            (declare (not safe))
                                            (cons _E25703_ '()))))
                                     (declare (not safe))
                                     (cons __tmp49818 __tmp49817))))
                              (declare (not safe))
                              (cons __tmp49828 __tmp49816))))
                       (declare (not safe))
                       (cons 'if __tmp49815))))
                 _g2669326704_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49831
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2669126719_ __tmp49831))))
                                           (___kont4579545796_
                                            (lambda (_L26483_)
                                              (let* ((___stx4561245613_
                                                      _L26483_)
                                                     (_g2649826521_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4561245613_))))
                                                (let ((___kont4561545616_
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
                                (let ((__tmp49832
                                       (let ((__tmp49836
                                              (let ((__tmp49842
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##fx=))
                                                    (__tmp49837
                                                     (let ((__tmp49839
                                                            (let ((__tmp49841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'values-count))
                          (__tmp49840
                           (let () (declare (not safe)) (cons _L25720_ '()))))
                      (declare (not safe))
                      (cons __tmp49841 __tmp49840)))
                   (__tmp49838
                    (let () (declare (not safe)) (cons _L26627_ '()))))
               (declare (not safe))
               (cons __tmp49839 __tmp49838))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49842 __tmp49837)))
                                             (__tmp49833
                                              (let ((__tmp49835
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-vector24457_
                                                        _tgt25699_
                                                        _L26598_
                                                        '0
                                                        _K25702_
                                                        _E25703_)))
                                                    (__tmp49834
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25703_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49835 __tmp49834))))
                                         (declare (not safe))
                                         (cons __tmp49836 __tmp49833))))
                                  (declare (not safe))
                                  (cons 'if __tmp49832))))
                            _g2661326624_)))
                        (__tmp49843 (gx#stx-length _L26598_)))
                   (declare (not safe))
                   (_g2661126639_ __tmp49843))))
              (___kont4561745618_
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
                                                       ___stx4561245613_)
                                                      (let ((_e2650326574_
                                                             (gx#syntax-e
                                                              ___stx4561245613_)))
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
                                        (___kont4561545616_ _hd2650626592_)
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
                                            (___kont4561745618_ _hd2651426546_)
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
                                           (___kont4579745798_
                                            (lambda (_L26288_)
                                              (let* ((___stx4556245563_
                                                      _L26288_)
                                                     (_g2630326326_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4556245563_))))
                                                (let ((___kont4556545566_
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
                                (let ((__tmp49844
                                       (let ((__tmp49859
                                              (let ((__tmp49861
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##vector?))
                                                    (__tmp49860
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L25720_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49861 __tmp49860)))
                                             (__tmp49845
                                              (let ((__tmp49847
                                                     (let ((__tmp49848
                                                            (let ((__tmp49852
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49858 (gx#datum->syntax '#f '##fx=))
                                 (__tmp49853
                                  (let ((__tmp49855
                                         (let ((__tmp49857
                                                (gx#datum->syntax
                                                 '#f
                                                 '##vector-length))
                                               (__tmp49856
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L25720_ '()))))
                                           (declare (not safe))
                                           (cons __tmp49857 __tmp49856)))
                                        (__tmp49854
                                         (let ()
                                           (declare (not safe))
                                           (cons _L26432_ '()))))
                                    (declare (not safe))
                                    (cons __tmp49855 __tmp49854))))
                             (declare (not safe))
                             (cons __tmp49858 __tmp49853)))
                          (__tmp49849
                           (let ((__tmp49851
                                  (let ()
                                    (declare (not safe))
                                    (_generate-simple-vector24457_
                                     _tgt25699_
                                     _L26403_
                                     '0
                                     _K25702_
                                     _E25703_)))
                                 (__tmp49850
                                  (let ()
                                    (declare (not safe))
                                    (cons _E25703_ '()))))
                             (declare (not safe))
                             (cons __tmp49851 __tmp49850))))
                      (declare (not safe))
                      (cons __tmp49852 __tmp49849))))
               (declare (not safe))
               (cons 'if __tmp49848)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp49846
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25703_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49847 __tmp49846))))
                                         (declare (not safe))
                                         (cons __tmp49859 __tmp49845))))
                                  (declare (not safe))
                                  (cons 'if __tmp49844))))
                            _g2641826429_)))
                        (__tmp49862 (gx#stx-length _L26403_)))
                   (declare (not safe))
                   (_g2641626444_ __tmp49862))))
              (___kont4556745568_
               (lambda (_L26357_)
                 (let ((__tmp49863
                        (let ((__tmp49867
                               (let ((__tmp49869
                                      (gx#datum->syntax '#f '##vector?))
                                     (__tmp49868
                                      (let ()
                                        (declare (not safe))
                                        (cons _L25720_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49869 __tmp49868)))
                              (__tmp49864
                               (let ((__tmp49866
                                      (let ()
                                        (declare (not safe))
                                        (_generate-list-vector24458_
                                         _tgt25699_
                                         _L26357_
                                         'vector->list
                                         _K25702_
                                         _E25703_)))
                                     (__tmp49865
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25703_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49866 __tmp49865))))
                          (declare (not safe))
                          (cons __tmp49867 __tmp49864))))
                   (declare (not safe))
                   (cons 'if __tmp49863)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4556245563_)
                                                      (let ((_e2630826379_
                                                             (gx#syntax-e
                                                              ___stx4556245563_)))
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
                                        (___kont4556545566_ _hd2631126397_)
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
                                            (___kont4556745568_ _hd2631926351_)
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
                                           (___kont4579945800_
                                            (lambda (_L26239_ _L26241_)
                                              (let ((__tmp49870
                                                     (gx#stx-e _L26241_)))
                                                (declare (not safe))
                                                (_generate-struct24459_
                                                 __tmp49870
                                                 _tgt25699_
                                                 _L26239_
                                                 _K25702_
                                                 _E25703_))))
                                           (___kont4580145802_
                                            (lambda (_L26180_ _L26182_)
                                              (let ((__tmp49871
                                                     (gx#stx-e _L26182_)))
                                                (declare (not safe))
                                                (_generate-class24462_
                                                 __tmp49871
                                                 _tgt25699_
                                                 _L26180_
                                                 _K25702_
                                                 _E25703_))))
                                           (___kont4580345804_
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
                                                             (let ((__tmp49872
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49875
                                   (let ((__tmp49876
                                          (let ((__tmp49877
                                                 (let ((__tmp49878
                                                        (let ((__tmp49880
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp49879
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L26083_ '()))))
                  (declare (not safe))
                  (cons __tmp49880 __tmp49879))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49878 '()))))
                                            (declare (not safe))
                                            (cons _L25720_ __tmp49877))))
                                     (declare (not safe))
                                     (cons _L26112_ __tmp49876)))
                                  (__tmp49873
                                   (let ((__tmp49874
                                          (let ()
                                            (declare (not safe))
                                            (cons _E25703_ '()))))
                                     (declare (not safe))
                                     (cons _K25702_ __tmp49874))))
                              (declare (not safe))
                              (cons __tmp49875 __tmp49873))))
                       (declare (not safe))
                       (cons 'if __tmp49872))))
                 _g2609826109_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49881
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
                                                (_g2609626124_ __tmp49881))))
                                           (___kont4580545806_
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
                                                             (let ((__tmp49882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49885
                                   (let ((__tmp49886
                                          (let ((__tmp49887
                                                 (let ((__tmp49888
                                                        (let ((__tmp49889
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L25720_ '()))))
                  (declare (not safe))
                  (cons _L26005_ __tmp49889))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49888 '()))))
                                            (declare (not safe))
                                            (cons _L26036_ __tmp49887))))
                                     (declare (not safe))
                                     (cons __tmp49886 '())))
                                  (__tmp49883
                                   (let ((__tmp49884
                                          (let ()
                                            (declare (not safe))
                                            (_generate124454_
                                             _L26036_
                                             _L26003_
                                             _K25702_
                                             _E25703_))))
                                     (declare (not safe))
                                     (cons __tmp49884 '()))))
                              (declare (not safe))
                              (cons __tmp49885 __tmp49883))))
                       (declare (not safe))
                       (cons 'let __tmp49882))))
                 _g2602226033_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49890
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2602026048_ __tmp49890))))
                                           (___kont4580745808_
                                            (lambda (_L25945_)
                                              (let ((__tmp49891
                                                     (let ((__tmp49893
                                                            (let ((__tmp49894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49895
                                  (let ()
                                    (declare (not safe))
                                    (cons _L25720_ '()))))
                             (declare (not safe))
                             (cons _L25945_ __tmp49895))))
                      (declare (not safe))
                      (cons __tmp49894 '())))
                   (__tmp49892
                    (let () (declare (not safe)) (cons _K25702_ '()))))
               (declare (not safe))
               (cons __tmp49893 __tmp49892))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp49891))))
                                           (___kont4580945810_
                                            (lambda () _K25702_)))
                                       (if (gx#stx-pair? ___stx4577645777_)
                                           (let ((_e2575327173_
                                                  (gx#syntax-e
                                                   ___stx4577645777_)))
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
                         (___kont4577945780_ _tl2575527194_ _hd2575627191_)))
                     (let () (declare (not safe)) (_g2574725889_)))
                 (if (let () (declare (not safe)) (equal? _e2575427183_ 'and:))
                     (___kont4578145782_ _tl2575127180_)
                     (if (let ()
                           (declare (not safe))
                           (equal? _e2575427183_ 'or:))
                         (___kont4578345784_ _tl2575127180_)
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
                                         (___kont4578545786_ _hd2577426960_)
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
                                                     (___kont4578745788_
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
                                         (___kont4578945790_)
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
                     (___kont4579145792_ _hd2580226758_ _hd2579926748_)
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
                                                         (___kont4579345794_
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
                     (___kont4579545796_ _hd2581826477_)
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
                         (___kont4579745798_ _hd2582626282_)
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
                                     (___kont4579945800_
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
                                         (___kont4580145802_
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
                                     (___kont4580345804_ _hd2585826077_)
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
                                                 (___kont4580545806_
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
                                             (___kont4580745808_
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
                                         (___kont4580945810_)
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
                                  (let ((_g49896_
                                         (gx#syntax-split-splice
                                          _g2507925099_
                                          '0)))
                                    (begin
                                      (let ((_g49897_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g49896_)
                                                   (##vector-length _g49896_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g49897_ 2)))
                                            (error "Context expects 2 values"
                                                   _g49897_)))
                                      (let ((_target2508125102_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g49896_ 0)))
                                            (_tl2508325105_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g49896_ 1))))
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
                        (let ((__tmp49988
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd2508625122_ _var2508825115_))))
                          (declare (not safe))
                          (_loop2508425108_ _lp-tl2508725125_ __tmp49988))))
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
                                         (let ((_g49898_
                                                (gx#syntax-split-splice
                                                 _g2514925169_
                                                 '0)))
                                           (begin
                                             (let ((_g49899_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g49898_)
                                                          (##vector-length
                                                           _g49898_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g49899_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g49899_)))
                                             (let ((_target2515125172_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g49898_
                                                       0)))
                                                   (_tl2515325175_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g49898_
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
                               (let ((__tmp49985
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd2515625192_
                                              _var-r2515825185_))))
                                 (declare (not safe))
                                 (_loop2515425178_
                                  _lp-tl2515725195_
                                  __tmp49985))))
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
                                                (let ((_g49900_
                                                       (gx#syntax-split-splice
                                                        _g2522025240_
                                                        '0)))
                                                  (begin
                                                    (let ((_g49901_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g49900_)
                         (##vector-length _g49900_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g49901_ 2)))
                  (error "Context expects 2 values" _g49901_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2522225243_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g49900_
                                                              0)))
                                                          (_tl2522425246_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g49900_
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
                                      (let ((__tmp49981
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2522725263_
                                                     _init2522925256_))))
                                        (declare (not safe))
                                        (_loop2522525249_
                                         _lp-tl2522825266_
                                         __tmp49981))))
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
                                 (let ((__tmp49955
                                        (gx#datum->syntax '#f 'letrec))
                                       (__tmp49902
                                        (let ((__tmp49908
                                               (let ((__tmp49946
                                                      (let ((__tmp49947
                                                             (let ((__tmp49948
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49954 (gx#datum->syntax '#f 'lambda))
                                  (__tmp49949
                                   (let ((__tmp49951
                                          (let ((__tmp49952
                                                 (let ((__tmp49953
                                                        (lambda (_g2557925582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2558025585_)
                  (let ()
                    (declare (not safe))
                    (cons _g2557925582_ _g2558025585_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 __tmp49953
                                                           '()
                                                           _L25132_))))
                                            (declare (not safe))
                                            (cons _L25445_ __tmp49952)))
                                         (__tmp49950
                                          (let ()
                                            (declare (not safe))
                                            (cons _L25473_ '()))))
                                     (declare (not safe))
                                     (cons __tmp49951 __tmp49950))))
                              (declare (not safe))
                              (cons __tmp49954 __tmp49949))))
                       (declare (not safe))
                       (cons __tmp49948 '()))))
                (declare (not safe))
                (cons _L25333_ __tmp49947)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49909
                                                      (let ((__tmp49936
                                                             (let ((__tmp49937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49938
                                   (let ((__tmp49945
                                          (gx#datum->syntax '#f 'lambda))
                                         (__tmp49939
                                          (let ((__tmp49941
                                                 (let ((__tmp49942
                                                        (let ((__tmp49943
                                                               (let ((__tmp49944
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2557725588_ _g2557825591_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2557725588_ _g2557825591_)))))
                         (declare (not safe))
                         (foldr1 __tmp49944 '() _L25202_))))
                  (declare (not safe))
                  (cons _L25445_ __tmp49943))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L25417_ __tmp49942)))
                                                (__tmp49940
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L25557_ '()))))
                                            (declare (not safe))
                                            (cons __tmp49941 __tmp49940))))
                                     (declare (not safe))
                                     (cons __tmp49945 __tmp49939))))
                              (declare (not safe))
                              (cons __tmp49938 '()))))
                       (declare (not safe))
                       (cons _L25389_ __tmp49937)))
                    (__tmp49910
                     (let ((__tmp49911
                            (let ((__tmp49912
                                   (let ((__tmp49913
                                          (let ((__tmp49935
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp49914
                                                 (let ((__tmp49932
                                                        (let ((__tmp49933
                                                               (let ((__tmp49934
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2557525594_ _g2557625597_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2557525594_ _g2557625597_)))))
                         (declare (not safe))
                         (foldr1 __tmp49934 '() _L25202_))))
                  (declare (not safe))
                  (cons _L25445_ __tmp49933)))
               (__tmp49915
                (let ((__tmp49916
                       (let ((__tmp49931 (gx#datum->syntax '#f 'if))
                             (__tmp49917
                              (let ((__tmp49928
                                     (let ((__tmp49930
                                            (gx#datum->syntax '#f 'pair?))
                                           (__tmp49929
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25445_ '()))))
                                       (declare (not safe))
                                       (cons __tmp49930 __tmp49929)))
                                    (__tmp49918
                                     (let ((__tmp49920
                                            (let ((__tmp49921
                                                   (let ((__tmp49925
                                                          (let ((__tmp49927
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '##car))
                        (__tmp49926
                         (let () (declare (not safe)) (cons _L25445_ '()))))
                    (declare (not safe))
                    (cons __tmp49927 __tmp49926)))
                 (__tmp49922
                  (let ((__tmp49923
                         (let ((__tmp49924
                                (lambda (_g2557325600_ _g2557425603_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2557325600_ _g2557425603_)))))
                           (declare (not safe))
                           (foldr1 __tmp49924 '() _L25202_))))
                    (declare (not safe))
                    (cons _L25445_ __tmp49923))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49925
                                                           __tmp49922))))
                                              (declare (not safe))
                                              (cons _L25389_ __tmp49921)))
                                           (__tmp49919
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25529_ '()))))
                                       (declare (not safe))
                                       (cons __tmp49920 __tmp49919))))
                                (declare (not safe))
                                (cons __tmp49928 __tmp49918))))
                         (declare (not safe))
                         (cons __tmp49931 __tmp49917))))
                  (declare (not safe))
                  (cons __tmp49916 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49932
                                                         __tmp49915))))
                                            (declare (not safe))
                                            (cons __tmp49935 __tmp49914))))
                                     (declare (not safe))
                                     (cons __tmp49913 '()))))
                              (declare (not safe))
                              (cons _L25361_ __tmp49912))))
                       (declare (not safe))
                       (cons __tmp49911 '()))))
                (declare (not safe))
                (cons __tmp49936 __tmp49910))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49946 __tmp49909)))
                                              (__tmp49903
                                               (let ((__tmp49904
                                                      (let ((__tmp49905
                                                             (let ((__tmp49906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49907
                                   (lambda (_g2557125606_ _g2557225609_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2557125606_ _g2557225609_)))))
                              (declare (not safe))
                              (foldr1 __tmp49907 '() _L25273_))))
                       (declare (not safe))
                       (cons _L25305_ __tmp49906))))
                (declare (not safe))
                (cons _L25361_ __tmp49905))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49904 '()))))
                                          (declare (not safe))
                                          (cons __tmp49908 __tmp49903))))
                                   (declare (not safe))
                                   (cons __tmp49955 __tmp49902)))))
                           _g2554325554_)))
                       (__tmp49956
                        (let ()
                          (declare (not safe))
                          (_generate124454_
                           _L25417_
                           _hd25073_
                           _L25501_
                           _L25529_))))
                  (declare (not safe))
                  (_g2554125612_ __tmp49956))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2551525526_)))
                                                (__tmp49957
                                                 (let ((__tmp49958
                                                        (let ((__tmp49959
                                                               (let ((__tmp49960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2561925622_ _g2562025625_)
                                (let ((__tmp49961
                                       (let ((__tmp49963
                                              (gx#datum->syntax '#f 'reverse))
                                             (__tmp49962
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2561925622_ '()))))
                                         (declare (not safe))
                                         (cons __tmp49963 __tmp49962))))
                                  (declare (not safe))
                                  (cons __tmp49961 _g2562025625_)))))
                         (declare (not safe))
                         (foldr1 __tmp49960 '() _L25202_))))
                  (declare (not safe))
                  (cons _L25445_ __tmp49959))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L25333_
                                                         __tmp49958))))
                                           (declare (not safe))
                                           (_g2551325616_ __tmp49957))))
                                     _g2548725498_)))
                                 (__tmp49964
                                  (let ((__tmp49965
                                         (let ((__tmp49972
                                                (let ((__tmp49974
                                                       (gx#datum->syntax
                                                        '#f
                                                        '##cdr))
                                                      (__tmp49973
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L25445_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp49974
                                                        __tmp49973)))
                                               (__tmp49966
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _L25202_
                                                   _L25132_)
                                                  (let ((__tmp49967
                                                         (lambda (_g2563125635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2563225638_
                          _g2563325640_)
                   (let ((__tmp49968
                          (let ((__tmp49971 (gx#datum->syntax '#f 'cons))
                                (__tmp49969
                                 (let ((__tmp49970
                                        (let ()
                                          (declare (not safe))
                                          (cons _g2563125635_ '()))))
                                   (declare (not safe))
                                   (cons _g2563225638_ __tmp49970))))
                            (declare (not safe))
                            (cons __tmp49971 __tmp49969))))
                     (declare (not safe))
                     (cons __tmp49968 _g2563325640_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr2 __tmp49967
                                                            '()
                                                            _L25202_
                                                            _L25132_)))))
                                           (declare (not safe))
                                           (cons __tmp49972 __tmp49966))))
                                    (declare (not safe))
                                    (cons _L25361_ __tmp49965))))
                            (declare (not safe))
                            (_g2548525628_ __tmp49964))))
                      _g2545925470_)))
                  (__tmp49975
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
                                                      __tmp49975))))
                                               _g2543125442_)))
                                           (__tmp49976 (gx#genident 'rest)))
                                      (declare (not safe))
                                      (_g2542925647_ __tmp49976))))
                                _g2540325414_)))
                            (__tmp49977 (gx#genident 'hd)))
                       (declare (not safe))
                       (_g2540125651_ __tmp49977))))
                 _g2537525386_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49978
                                                      (gx#genident
                                                       'splice-try)))
                                                (declare (not safe))
                                                (_g2537325655_ __tmp49978))))
                                          _g2534725358_)))
                                      (__tmp49979 (gx#genident 'splice-loop)))
                                 (declare (not safe))
                                 (_g2534525659_ __tmp49979))))
                           _g2531925330_)))
                       (__tmp49980 (gx#genident 'splice-rest)))
                  (declare (not safe))
                  (_g2531725663_ __tmp49980))))
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
                                         (__tmp49982
                                          (make-list
                                           (gx#stx-length
                                            (let ((__tmp49983
                                                   (lambda (_g2567425677_
                                                            _g2567525680_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2567425677_
                                                             _g2567525680_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp49983
                                                      '()
                                                      _L25132_)))
                                           (let ((__tmp49984
                                                  (gx#datum->syntax
                                                   '#f
                                                   '@list)))
                                             (declare (not safe))
                                             (cons __tmp49984 '())))))
                                    (declare (not safe))
                                    (_g2521825671_ __tmp49982))))
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
                                  (__tmp49986
                                   (gx#gentemps
                                    (let ((__tmp49987
                                           (lambda (_g2568625689_
                                                    _g2568725692_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g2568625689_
                                                     _g2568725692_)))))
                                      (declare (not safe))
                                      (foldr1 __tmp49987 '() _L25132_)))))
                             (declare (not safe))
                             (_g2514725683_ __tmp49986))))
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
                           (__tmp49989
                            (let ()
                              (declare (not safe))
                              (|gerbil/core$<match>[1]#match-pattern-vars|
                               _hd25073_))))
                      (declare (not safe))
                      (_g2507725695_ __tmp49989))))
                 (_generate-simple-vector24457_
                  (lambda (_tgt24913_
                           _body24915_
                           _start24916_
                           _K24917_
                           _E24918_)
                    (let _recur24920_ ((_rest24923_ _body24915_)
                                       (_off24925_ _start24916_))
                      (let* ((___stx4613446135_ _rest24923_)
                             (_g2492824940_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4613446135_))))
                        (let ((___kont4613746138_
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
                                    (let ((__tmp49990
                                           (let ((__tmp49995
                                                  (let ((__tmp49996
                                                         (let ((__tmp49997
                                                                (let ((__tmp49998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp50001
                                      (gx#datum->syntax '#f '##vector-ref))
                                     (__tmp49999
                                      (let ((__tmp50000
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25041_ '()))))
                                        (declare (not safe))
                                        (cons _L25043_ __tmp50000))))
                                 (declare (not safe))
                                 (cons __tmp50001 __tmp49999))))
                          (declare (not safe))
                          (cons __tmp49998 '()))))
                   (declare (not safe))
                   (cons _L25044_ __tmp49997))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49996 '())))
                                                 (__tmp49991
                                                  (let ((__tmp49992
                                                         (let ((__tmp49993
                                                                (let ((__tmp49994
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (fx+ _off24925_ '1))))
                          (declare (not safe))
                          (_recur24920_ _L24968_ __tmp49994))))
                   (declare (not safe))
                   (_generate124454_ _L25044_ _L24970_ __tmp49993 _E24918_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49992 '()))))
                                             (declare (not safe))
                                             (cons __tmp49995 __tmp49991))))
                                      (declare (not safe))
                                      (cons 'let __tmp49990))))
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
                                        (__tmp50002
                                         (list (gx#genident 'e)
                                               _tgt24913_
                                               _off24925_)))
                                   (declare (not safe))
                                   (_g2498425063_ __tmp50002))))
                              (___kont4613946140_ (lambda () _K24917_)))
                          (if (gx#stx-pair? ___stx4613446135_)
                              (let ((_e2493424958_
                                     (gx#syntax-e ___stx4613446135_)))
                                (let ((_tl2493224965_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2493424958_)))
                                      (_hd2493324962_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2493424958_))))
                                  (___kont4613746138_
                                   _tl2493224965_
                                   _hd2493324962_)))
                              (___kont4613946140_)))))))
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
                           (let ((__tmp50003
                                  (let ((__tmp50006
                                         (let ((__tmp50007
                                                (let ((__tmp50008
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L24882_ '()))))
                                                  (declare (not safe))
                                                  (cons _L24827_ __tmp50008))))
                                           (declare (not safe))
                                           (cons __tmp50007 '())))
                                        (__tmp50004
                                         (let ((__tmp50005
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate124454_
                                                   _L24827_
                                                   _body24807_
                                                   _K24809_
                                                   _E24810_))))
                                           (declare (not safe))
                                           (cons __tmp50005 '()))))
                                    (declare (not safe))
                                    (cons __tmp50006 __tmp50004))))
                             (declare (not safe))
                             (cons 'let __tmp50003)))))
                     _g2486824879_)))
                 (__tmp50009
                  (let ((_$e24901_ _->list24808_))
                    (if (let ()
                          (declare (not safe))
                          (eq? 'values->list _$e24901_))
                        (let ((__tmp50018 (gx#datum->syntax '#f 'values->list))
                              (__tmp50017
                               (let ()
                                 (declare (not safe))
                                 (cons _L24854_ '()))))
                          (declare (not safe))
                          (cons __tmp50018 __tmp50017))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'vector->list _$e24901_))
                            (let ((__tmp50016
                                   (gx#datum->syntax '#f '##vector->list))
                                  (__tmp50015
                                   (let ()
                                     (declare (not safe))
                                     (cons _L24854_ '()))))
                              (declare (not safe))
                              (cons __tmp50016 __tmp50015))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'struct->list _$e24901_))
                                (let ((__tmp50014
                                       (gx#datum->syntax '#f '##cdr))
                                      (__tmp50010
                                       (let ((__tmp50011
                                              (let ((__tmp50013
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##structure->list))
                                                    (__tmp50012
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L24854_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50013 __tmp50012))))
                                         (declare (not safe))
                                         (cons __tmp50011 '()))))
                                  (declare (not safe))
                                  (cons __tmp50014 __tmp50010))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Unexpected list conversion"
                                 _stx24447_
                                 _->list24808_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_g2486624897_
                                                     __tmp50009))))
                                              _g2484024851_))))
                                     (declare (not safe))
                                     (_g2483824905_ _tgt24805_))))
                               _g2481324824_)))
                           (__tmp50019 (gx#genident 'e)))
                      (declare (not safe))
                      (_g2481124909_ __tmp50019))))
                 (_generate-struct24459_
                  (lambda (_info24676_
                           _tgt24678_
                           _body24679_
                           _K24680_
                           _E24681_)
                    (let* ((___stx4615046151_ _body24679_)
                           (_g2468424707_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4615046151_))))
                      (let ((___kont4615346154_
                             (lambda (_L24784_)
                               (let* ((_fields24798_
                                       (let ()
                                         (declare (not safe))
                                         (_struct-field-accessors24461_
                                          _info24676_)))
                                      (__tmp50020
                                       (let ((__tmp50024
                                              (let ((__tmp50026
                                                     (let ((__obj47353
                                                            _info24676_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj47353
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj47353
                                                              '10
                                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                            __obj47353
                                                            'predicate))))
                                                    (__tmp50025
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tgt24678_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50026 __tmp50025)))
                                             (__tmp50021
                                              (let ((__tmp50023
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-struct-body24460_
                                                        _info24676_
                                                        _tgt24678_
                                                        _L24784_
                                                        _K24680_
                                                        _E24681_)))
                                                    (__tmp50022
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E24681_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50023 __tmp50022))))
                                         (declare (not safe))
                                         (cons __tmp50024 __tmp50021))))
                                 (declare (not safe))
                                 (cons 'if __tmp50020))))
                            (___kont4615546156_
                             (lambda (_L24738_)
                               (let ((__tmp50027
                                      (let ((__tmp50031
                                             (let ((__tmp50033
                                                    (let ((__obj47354
                                                           _info24676_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj47354
                                                             'gerbil.core#class-type-info::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj47354
                                                             '10
                                                             gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                             '#f))
                                                          (class-slot-ref
                                                           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                           __obj47354
                                                           'predicate))))
                                                   (__tmp50032
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tgt24678_ '()))))
                                               (declare (not safe))
                                               (cons __tmp50033 __tmp50032)))
                                            (__tmp50028
                                             (let ((__tmp50030
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-list-vector24458_
                                                       _tgt24678_
                                                       _L24738_
                                                       'struct->list
                                                       _K24680_
                                                       _E24681_)))
                                                   (__tmp50029
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _E24681_ '()))))
                                               (declare (not safe))
                                               (cons __tmp50030 __tmp50029))))
                                        (declare (not safe))
                                        (cons __tmp50031 __tmp50028))))
                                 (declare (not safe))
                                 (cons 'if __tmp50027)))))
                        (if (gx#stx-pair? ___stx4615046151_)
                            (let ((_e2468924760_
                                   (gx#syntax-e ___stx4615046151_)))
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
                                                      (___kont4615346154_
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
                                                          (___kont4615546156_
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
                      (let* ((___stx4620046201_ _rest24606_)
                             (_g2461124623_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4620046201_))))
                        (let ((___kont4620346204_
                               (lambda (_L24651_ _L24653_)
                                 (if (let ()
                                       (declare (not safe))
                                       (null? _fields24608_))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _stx24447_
                                      _info24596_
                                      (let ((__obj47355 _info24596_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj47355
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj47355
                                               '2
                                               gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                             __obj47355
                                             'name))))
                                     (let ((_$tgt24668_ (gx#genident 'e))
                                           (_getf24670_ (car _fields24608_)))
                                       (let ((__tmp50034
                                              (let ((__tmp50039
                                                     (let ((__tmp50040
                                                            (let ((__tmp50041
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50042
                                  (let ((__tmp50043
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt24598_ '()))))
                                    (declare (not safe))
                                    (cons _getf24670_ __tmp50043))))
                             (declare (not safe))
                             (cons __tmp50042 '()))))
                      (declare (not safe))
                      (cons _$tgt24668_ __tmp50041))))
               (declare (not safe))
               (cons __tmp50040 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp50035
                                                     (let ((__tmp50036
                                                            (let ((__tmp50037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50038 (cdr _fields24608_)))
                             (declare (not safe))
                             (_recur24603_ _L24651_ __tmp50038))))
                      (declare (not safe))
                      (_generate124454_
                       _$tgt24668_
                       _L24653_
                       __tmp50037
                       _E24601_))))
               (declare (not safe))
               (cons __tmp50036 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50039 __tmp50035))))
                                         (declare (not safe))
                                         (cons 'let __tmp50034))))))
                              (___kont4620546206_ (lambda () _K24600_)))
                          (if (gx#stx-pair? ___stx4620046201_)
                              (let ((_e2461724641_
                                     (gx#syntax-e ___stx4620046201_)))
                                (let ((_tl2461524648_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2461724641_)))
                                      (_hd2461624645_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2461724641_))))
                                  (___kont4620346204_
                                   _tl2461524648_
                                   _hd2461624645_)))
                              (___kont4620546206_)))))))
                 (_struct-field-accessors24461_
                  (lambda (_info24577_)
                    (let _recur24580_ ((_next24583_
                                        (let ()
                                          (declare (not safe))
                                          (cons _info24577_ '()))))
                      (if (let () (declare (not safe)) (null? _next24583_))
                          '()
                          (let ((_ti24586_ (car _next24583_)))
                            (append (let ((__tmp50044
                                           (map gx#syntax-local-value
                                                (let ((__obj47356 _ti24586_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         __obj47356
                                                         'gerbil.core#class-type-info::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         __obj47356
                                                         '3
                                                         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                         '#f))
                                                      (class-slot-ref
                                                       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                       __obj47356
                                                       'super))))))
                                      (declare (not safe))
                                      (_recur24580_ __tmp50044))
                                    (map (lambda (_slot24589_)
                                           (let ((_$e24592_
                                                  (let ((__tmp50045
                                                         (let ((__obj47357
                                                                _ti24586_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj47357
                          'gerbil.core#class-type-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          __obj47357
                          '13
                          gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                          '#f))
                       (class-slot-ref
                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                        __obj47357
                        'unchecked-accessors)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (assgetq _slot24589_
                                                             __tmp50045))))
                                             (if _$e24592_
                                                 _$e24592_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"no accessor for struct slot"
                                                  _stx24447_
                                                  _info24577_
                                                  _slot24589_))))
                                         (let ((__obj47358 _ti24586_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj47358
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj47358
                                                  '4
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                __obj47358
                                                'slots))))))))))
                 (_generate-class24462_
                  (lambda (_info24570_
                           _tgt24572_
                           _body24573_
                           _K24574_
                           _E24575_)
                    (let ((__tmp50046
                           (let ((__tmp50050
                                  (let ((__tmp50052
                                         (let ((__obj47359 _info24570_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj47359
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj47359
                                                  '10
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                __obj47359
                                                'predicate))))
                                        (__tmp50051
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt24572_ '()))))
                                    (declare (not safe))
                                    (cons __tmp50052 __tmp50051)))
                                 (__tmp50047
                                  (let ((__tmp50049
                                         (let ()
                                           (declare (not safe))
                                           (_generate-class-body24463_
                                            _info24570_
                                            _tgt24572_
                                            _body24573_
                                            _K24574_
                                            _E24575_)))
                                        (__tmp50048
                                         (let ()
                                           (declare (not safe))
                                           (cons _E24575_ '()))))
                                    (declare (not safe))
                                    (cons __tmp50049 __tmp50048))))
                             (declare (not safe))
                             (cons __tmp50050 __tmp50047))))
                      (declare (not safe))
                      (cons 'if __tmp50046))))
                 (_generate-class-body24463_
                  (lambda (_info24465_
                           _tgt24467_
                           _body24468_
                           _K24469_
                           _E24470_)
                    (let _recur24472_ ((_rest24475_ _body24468_))
                      (let* ((___stx4621646217_ _rest24475_)
                             (_g2447924495_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4621646217_))))
                        (let ((___kont4621946220_
                               (lambda (_L24533_ _L24535_ _L24536_)
                                 (let ((_$e24556_
                                        (let ((__tmp50054
                                               (string->symbol
                                                (keyword->string
                                                 (gx#stx-e _L24536_))))
                                              (__tmp50053
                                               (let ((__obj47360 _info24465_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj47360
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj47360
                                                        '13
                                                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                      __obj47360
                                                      'unchecked-accessors)))))
                                          (declare (not safe))
                                          (assgetq __tmp50054 __tmp50053))))
                                   (if _$e24556_
                                       ((lambda (_getf24560_)
                                          (let* ((_$tgt24563_ (gx#genident 'e))
                                                 (__tmp50055
                                                  (let ((__tmp50059
                                                         (let ((__tmp50060
                                                                (let ((__tmp50061
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp50062
                                      (let ((__tmp50063
                                             (let ()
                                               (declare (not safe))
                                               (cons _tgt24467_ '()))))
                                        (declare (not safe))
                                        (cons _getf24560_ __tmp50063))))
                                 (declare (not safe))
                                 (cons __tmp50062 '()))))
                          (declare (not safe))
                          (cons _$tgt24563_ __tmp50061))))
                   (declare (not safe))
                   (cons __tmp50060 '())))
                (__tmp50056
                 (let ((__tmp50057
                        (let ((__tmp50058
                               (let ()
                                 (declare (not safe))
                                 (_recur24472_ _L24533_))))
                          (declare (not safe))
                          (_generate124454_
                           _$tgt24563_
                           _L24535_
                           __tmp50058
                           _E24470_))))
                   (declare (not safe))
                   (cons __tmp50057 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp50059
                                                          __tmp50056))))
                                            (declare (not safe))
                                            (cons 'let __tmp50055)))
                                        _$e24556_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _stx24447_
                                        _info24465_
                                        _L24536_)))))
                              (___kont4622146222_ (lambda () _K24469_)))
                          (if (gx#stx-pair? ___stx4621646217_)
                              (let ((_e2448624513_
                                     (gx#syntax-e ___stx4621646217_)))
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
                                          (___kont4621946220_
                                           _tl2448724530_
                                           _hd2448824527_
                                           _hd2448524517_)))
                                      (___kont4622146222_))))
                              (___kont4622146222_))))))))
          (let ()
            (declare (not safe))
            (_generate124454_ _tgt24449_ _ptree24450_ _K24451_ _E24452_)))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx23343_ _tgt-lst23345_ _clauses23346_)
        (letrec ((_parse-body23348_
                  (lambda (_hd-len24269_)
                    (let _lp24272_ ((_rest24275_ _clauses23346_)
                                    (_r24277_ '()))
                      (let* ((___stx4626646267_ _rest24275_)
                             (_g2428024292_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4626646267_))))
                        (let ((___kont4626946270_
                               (lambda (_L24320_ _L24322_)
                                 (let* ((___stx4623846239_ _L24322_)
                                        (_g2433924355_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4623846239_))))
                                   (let ((___kont4624146242_
                                          (lambda (_L24424_)
                                            (if (gx#stx-null? _L24320_)
                                                (let ((__tmp50064
                                                       (let ((__tmp50069
                                                              (gx#genident
                                                               'else))
                                                             (__tmp50065
                                                              (let ((__tmp50066
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp50067
                                    (gx#stx-wrap-source
                                     (let ((__tmp50068
                                            (gx#datum->syntax '#f 'begin)))
                                       (declare (not safe))
                                       (cons __tmp50068 _L24424_))
                                     (let ((_$e24435_
                                            (gx#stx-source _L24322_)))
                                       (if _$e24435_
                                           _$e24435_
                                           (gx#stx-source _stx23343_))))))
                               (declare (not safe))
                               (cons __tmp50067 '()))))
                        (declare (not safe))
                        (cons '#f __tmp50066))))
                 (declare (not safe))
                 (cons __tmp50069 __tmp50065))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp50064 _r24277_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _stx23343_
                                                 _L24322_))))
                                         (___kont4624346244_
                                          (lambda (_L24383_ _L24385_)
                                            (let ((__tmp50070
                                                   (let ((__tmp50071
                                                          (let ((__tmp50077
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#genident 'try-match))
                        (__tmp50072
                         (let ((__tmp50076
                                (gx#stx-map
                                 (lambda (_g2439724399_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core$<match>[1]#parse-match-pattern__%|
                                      _g2439724399_
                                      _stx23343_)))
                                 _L24385_))
                               (__tmp50073
                                (let ((__tmp50074
                                       (gx#stx-wrap-source
                                        (let ((__tmp50075
                                               (gx#datum->syntax '#f 'begin)))
                                          (declare (not safe))
                                          (cons __tmp50075 _L24383_))
                                        (let ((_$e24403_
                                               (gx#stx-source _L24322_)))
                                          (if _$e24403_
                                              _$e24403_
                                              (gx#stx-source _stx23343_))))))
                                  (declare (not safe))
                                  (cons __tmp50074 '()))))
                           (declare (not safe))
                           (cons __tmp50076 __tmp50073))))
                    (declare (not safe))
                    (cons __tmp50077 __tmp50072))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50071
                                                           _r24277_))))
                                              (declare (not safe))
                                              (_lp24272_
                                               _L24320_
                                               __tmp50070))))
                                         (___kont4624546246_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _stx23343_
                                             _L24322_))))
                                     (let* ((___match4626346264_
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
                                                          (let ((__tmp50078
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L24383_)))
                    (declare (not safe))
                    (not __tmp50078)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4624346244_
                                                      _L24383_
                                                      _L24385_)
                                                     (___kont4624546246_)))))
                                            (___match4625746258_
                                             (lambda (_e2434424414_
                                                      _hd2434324418_
                                                      _tl2434224421_)
                                               (let ((_L24424_ _tl2434224421_))
                                                 (if (and (gx#stx-list?
                                                           _L24424_)
                                                          (let ((__tmp50079
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L24424_)))
                    (declare (not safe))
                    (not __tmp50079)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4624146242_
                                                      _L24424_)
                                                     (___match4626346264_
                                                      _e2434424414_
                                                      _hd2434324418_
                                                      _tl2434224421_))))))
                                       (if (gx#stx-pair? ___stx4623846239_)
                                           (let ((_e2434424414_
                                                  (gx#syntax-e
                                                   ___stx4623846239_)))
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
                                                        |gerbil/core$<match>[1]#_g50080_|
                                                        _hd2434324418_)
                                                       (___match4625746258_
                                                        _e2434424414_
                                                        _hd2434324418_
                                                        _tl2434224421_)
                                                       (___match4626346264_
                                                        _e2434424414_
                                                        _hd2434324418_
                                                        _tl2434224421_))
                                                   (___match4626346264_
                                                    _e2434424414_
                                                    _hd2434324418_
                                                    _tl2434224421_))))
                                           (___kont4624546246_)))))))
                              (___kont4627146272_ (lambda () _r24277_)))
                          (if (gx#stx-pair? ___stx4626646267_)
                              (let ((_e2428624310_
                                     (gx#syntax-e ___stx4626646267_)))
                                (let ((_tl2428424317_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2428624310_)))
                                      (_hd2428524314_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2428624310_))))
                                  (___kont4626946270_
                                   _tl2428424317_
                                   _hd2428524314_)))
                              (___kont4627146272_)))))))
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
                                                 (let ((_g50081_
                                                        (gx#syntax-split-splice
                                                         _g2408524105_
                                                         '0)))
                                                   (begin
                                                     (let ((_g50082_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g50081_)
                          (##vector-length _g50081_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g50082_ 2)))
                   (error "Context expects 2 values" _g50082_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2408724108_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g50081_
                                                               0)))
                                                           (_tl2408924111_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g50081_
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
                                       (let ((__tmp50105
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd2409224128_
                                                      _target2409424121_))))
                                         (declare (not safe))
                                         (_loop2409024114_
                                          _lp-tl2409324131_
                                          __tmp50105))))
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
                                                 (let ((__tmp50086
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation))
                                                       (__tmp50083
                                                        (let ((__tmp50085
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@match))
                                                              (__tmp50084
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L24226_ '()))))
                  (declare (not safe))
                  (cons __tmp50085 __tmp50084))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50086
                                                         __tmp50083)))))
                                           _g2421224223_)))
                                       (__tmp50087
                                        (gx#stx-wrap-source
                                         (let ((__tmp50093
                                                (gx#datum->syntax '#f 'let))
                                               (__tmp50088
                                                (let ((__tmp50090
                                                       (let ((__tmp50091
                                                              (let ((__tmp50092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L24170_ '()))))
                        (declare (not safe))
                        (cons _L24072_ __tmp50092))))
                 (declare (not safe))
                 (cons __tmp50091 '())))
              (__tmp50089 (let () (declare (not safe)) (cons _L24198_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp50090
                                                        __tmp50089))))
                                           (declare (not safe))
                                           (cons __tmp50093 __tmp50088))
                                         (gx#stx-source _stx23343_))))
                                  (declare (not safe))
                                  (_g2421024241_ __tmp50087))))
                            _g2418424195_)))
                        (__tmp50094
                         (let ((__tmp50095
                                (let ()
                                  (declare (not safe))
                                  (cons _L24072_ '()))))
                           (declare (not safe))
                           (_generate-clauses23351_ _body24054_ __tmp50095))))
                   (declare (not safe))
                   (_g2418224245_ __tmp50094))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2415624167_)))
                                                 (__tmp50096
                                                  (gx#stx-wrap-source
                                                   (let ((__tmp50104
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp50097
                                                          (let ((__tmp50098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp50099
                                (let ((__tmp50103
                                       (gx#datum->syntax '#f 'error))
                                      (__tmp50100
                                       (let ((__tmp50101
                                              (let ((__tmp50102
                                                     (lambda (_g2425224255_
                                                              _g2425324258_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g2425224255_
                                                               _g2425324258_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp50102
                                                        '()
                                                        _L24138_))))
                                         (declare (not safe))
                                         (cons '"No clause matching"
                                               __tmp50101))))
                                  (declare (not safe))
                                  (cons __tmp50103 __tmp50100))))
                           (declare (not safe))
                           (cons __tmp50099 '()))))
                    (declare (not safe))
                    (cons '() __tmp50098))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50104
                                                           __tmp50097))
                                                   (gx#stx-source
                                                    _stx23343_))))
                                            (declare (not safe))
                                            (_g2415424249_ __tmp50096))))
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
                           (__tmp50106 (gx#genident 'E)))
                      (declare (not safe))
                      (_g2405624265_ __tmp50106))))
                 (_generate-clauses23351_
                  (lambda (_rest23706_ _E23708_)
                    (let* ((___stx4628246283_ _rest23706_)
                           (_g2371223728_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4628246283_))))
                      (let ((___kont4628546286_
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
                                (let ((__tmp50107
                                       (let ((__tmp50108
                                              (let ((__tmp50109
                                                     (if (gx#stx-e _L24030_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate123352_
                                                            _L24030_
                                                            _L24028_
                                                            _E23708_))
                                                         _L24028_)))
                                                (declare (not safe))
                                                (cons __tmp50109 '()))))
                                         (declare (not safe))
                                         (cons '@match-body __tmp50108))))
                                  (declare (not safe))
                                  (cons 'begin-annotation __tmp50107)))
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
                            (___kont4628746288_
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
                               (let ((__tmp50136 (gx#datum->syntax '#f 'let))
                                     (__tmp50127
                                      (let ((__tmp50129
                                             (let ((__tmp50130
                                                    (let ((__tmp50131
                                                           (let ((__tmp50132
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp50135 (gx#datum->syntax '#f 'lambda))
                                (__tmp50133
                                 (let ((__tmp50134
                                        (let ()
                                          (declare (not safe))
                                          (cons _L23891_ '()))))
                                   (declare (not safe))
                                   (cons '() __tmp50134))))
                            (declare (not safe))
                            (cons __tmp50135 __tmp50133))))
                     (declare (not safe))
                     (cons __tmp50132 '()))))
              (declare (not safe))
              (cons _L23830_ __tmp50131))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50130 '())))
                                            (__tmp50128
                                             (let ()
                                               (declare (not safe))
                                               (cons _L23889_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50129 __tmp50128))))
                                 (declare (not safe))
                                 (cons __tmp50136 __tmp50127))))
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
                                           (__tmp50137
                                            (list (let ()
                                                    (declare (not safe))
                                                    (_generate123352_
                                                     _L23829_
                                                     _L23827_
                                                     _E23708_))
                                                  (let ((__tmp50138
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L23830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-clauses23351_
                                                     _L23756_
                                                     __tmp50138)))))
                                      (declare (not safe))
                                      (_g2384623907_ __tmp50137))
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
                                                   (let ((__tmp50124
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp50110
                                                          (let ((__tmp50112
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp50113
                                (let ((__tmp50114
                                       (let ((__tmp50115
                                              (let ((__tmp50123
                                                     (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation))
                                                    (__tmp50116
                                                     (let ((__tmp50122
                                                            (gx#datum->syntax
                                                             '#f
                                                             '@match-else))
                                                           (__tmp50117
                                                            (let ((__tmp50118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50121 (gx#datum->syntax '#f 'lambda))
                                 (__tmp50119
                                  (let ((__tmp50120
                                         (let ()
                                           (declare (not safe))
                                           (cons _L23827_ '()))))
                                    (declare (not safe))
                                    (cons '() __tmp50120))))
                             (declare (not safe))
                             (cons __tmp50121 __tmp50119))))
                      (declare (not safe))
                      (cons __tmp50118 '()))))
               (declare (not safe))
               (cons __tmp50122 __tmp50117))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50123 __tmp50116))))
                                         (declare (not safe))
                                         (cons __tmp50115 '()))))
                                  (declare (not safe))
                                  (cons _L23830_ __tmp50114))))
                           (declare (not safe))
                           (cons __tmp50113 '())))
                        (__tmp50111
                         (let () (declare (not safe)) (cons _L23926_ '()))))
                    (declare (not safe))
                    (cons __tmp50112 __tmp50111))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50124
                                                           __tmp50110))))
                                               _g2391223923_)))
                                           (__tmp50125
                                            (let ((__tmp50126
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L23830_ '()))))
                                              (declare (not safe))
                                              (_generate-clauses23351_
                                               _L23756_
                                               __tmp50126))))
                                      (declare (not safe))
                                      (_g2391023937_ __tmp50125))))
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
                            (___kont4628946290_
                             (lambda ()
                               (let ((__tmp50139
                                      (let ((__tmp50140
                                             (let ()
                                               (declare (not safe))
                                               (cons _E23708_ '()))))
                                        (declare (not safe))
                                        (cons '@match-body __tmp50140))))
                                 (declare (not safe))
                                 (cons 'begin-annotation __tmp50139)))))
                        (if (gx#stx-pair? ___stx4628246283_)
                            (let ((_e2371723952_
                                   (gx#syntax-e ___stx4628246283_)))
                              (let ((_tl2371523959_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2371723952_)))
                                    (_hd2371623956_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2371723952_))))
                                (if (gx#stx-null? _tl2371523959_)
                                    (___kont4628546286_ _hd2371623956_)
                                    (___kont4628746288_
                                     _tl2371523959_
                                     _hd2371623956_))))
                            (___kont4628946290_))))))
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
                                                  (let ((_g50141_
                                                         (gx#syntax-split-splice
                                                          _hd2336723404_
                                                          '0)))
                                                    (begin
                                                      (let ((_g50142_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g50141_)
                           (##vector-length _g50141_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g50142_ 2)))
                    (error "Context expects 2 values" _g50142_)))
              (let ((_target2336923410_
                     (let () (declare (not safe)) (##vector-ref _g50141_ 0)))
                    (_tl2337123413_
                     (let () (declare (not safe)) (##vector-ref _g50141_ 1))))
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
                                        (let ((__tmp50159
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lp-hd2337423430_
                                                       _var2337623423_))))
                                          (declare (not safe))
                                          (_loop2337223416_
                                           _lp-tl2337523433_
                                           __tmp50159))))
                                    (let ((_var2337723436_
                                           (reverse _var2337623423_)))
                                      (if (gx#stx-null? _tl2336623407_)
                                          ((lambda (_L23440_ _L23442_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (let ((__tmp50143
                                                       (lambda (_g2346323466_
                                                                _g2346423469_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g2346323466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2346423469_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp50143
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
                                                       (let ((__tmp50148
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp50144
                                                              (let ((__tmp50146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp50147
                                    (let ()
                                      (declare (not safe))
                                      (cons _L23543_ '()))))
                               (declare (not safe))
                               (cons _L23442_ __tmp50147)))
                            (__tmp50145
                             (let ()
                               (declare (not safe))
                               (cons _L23487_ '()))))
                        (declare (not safe))
                        (cons __tmp50146 __tmp50145))))
                 (declare (not safe))
                 (cons __tmp50148 __tmp50144))
               (gx#stx-source _stx23343_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2352923540_)))
                                            (__tmp50149
                                             (gx#stx-wrap-source
                                              (let ((__tmp50154
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp50150
                                                     (let ((__tmp50152
                                                            (let ((__tmp50153
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2356123564_ _g2356223567_)
                             (let ()
                               (declare (not safe))
                               (cons _g2356123564_ _g2356223567_)))))
                      (declare (not safe))
                      (foldr1 __tmp50153 '() _L23440_)))
                   (__tmp50151
                    (let () (declare (not safe)) (cons _L23515_ '()))))
               (declare (not safe))
               (cons __tmp50152 __tmp50151))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50154 __tmp50150))
                                              (gx#stx-source _stx23343_))))
                                       (declare (not safe))
                                       (_g2352723558_ __tmp50149))))
                                 _g2350123512_))))
                        (declare (not safe))
                        (_g2349923570_ _body23356_))))
                  _g2347323484_)))
              (__tmp50155
               (let _recur23578_ ((_rest23581_ _clause23354_)
                                  (_rest-targets23583_ _tgt-lst23345_))
                 (let* ((___stx4630846309_ _rest23581_)
                        (_g2358623598_
                         (lambda ()
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            ___stx4630846309_))))
                   (let ((___kont4631146312_
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
                                                 (let ((__tmp50156
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
                                                    __tmp50156
                                                    _E23357_)))
                                               _tl2365523677_
                                               _hd2365623674_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g2365123663_ _g2365223667_))))))
                              (declare (not safe))
                              (_g2365023694_ _rest-targets23583_))))
                         (___kont4631346314_
                          (lambda ()
                            (let ((__tmp50157
                                   (let ((__tmp50158
                                          (lambda (_g2360823611_ _g2360923614_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g2360823611_
                                                    _g2360923614_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50158 '() _L23440_))))
                              (declare (not safe))
                              (cons _L23442_ __tmp50157)))))
                     (if (gx#stx-pair? ___stx4630846309_)
                         (let ((_e2359223624_ (gx#syntax-e ___stx4630846309_)))
                           (let ((_tl2359023631_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2359223624_)))
                                 (_hd2359123628_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2359223624_))))
                             (___kont4631146312_
                              _tl2359023631_
                              _hd2359123628_)))
                         (___kont4631346314_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2347123574_ __tmp50155))))
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
                           (__tmp50160
                            (list (gx#genident 'K)
                                  (apply append
                                         (map |gerbil/core$<match>[1]#match-pattern-vars|
                                              _clause23354_)))))
                      (declare (not safe))
                      (_g2335823702_ __tmp50160)))))
          (let ((__tmp50161
                 (let ((__tmp50162 (gx#stx-length _tgt-lst23345_)))
                   (declare (not safe))
                   (_parse-body23348_ __tmp50162))))
            (declare (not safe))
            (_generate-body23350_ __tmp50161)))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx23245_ _tgt23247_ _clauses23248_)
        (letrec ((_reclause23250_
                  (lambda (_clause23253_)
                    (let* ((___stx4632446325_ _clause23253_)
                           (_g2325823273_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4632446325_))))
                      (let ((___kont4632746328_ (lambda () _clause23253_))
                            (___kont4632946330_
                             (lambda (_L23301_ _L23303_)
                               (gx#stx-wrap-source
                                (let ((__tmp50163
                                       (let ()
                                         (declare (not safe))
                                         (cons _L23303_ '()))))
                                  (declare (not safe))
                                  (cons __tmp50163 _L23301_))
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (___kont4633146332_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _stx23245_
                                _clause23253_))))
                        (if (gx#stx-pair? ___stx4632446325_)
                            (let ((_e2326223325_
                                   (gx#syntax-e ___stx4632446325_)))
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
                                         |gerbil/core$<match>[1]#_g50164_|
                                         _hd2326123329_)
                                        (___kont4632746328_)
                                        (___kont4632946330_
                                         _tl2326023332_
                                         _hd2326123329_))
                                    (___kont4632946330_
                                     _tl2326023332_
                                     _hd2326123329_))))
                            (___kont4633146332_)))))))
          (let ((__tmp50166
                 (let () (declare (not safe)) (cons _tgt23247_ '())))
                (__tmp50165 (gx#stx-map _reclause23250_ _clauses23248_)))
            (declare (not safe))
            (|gerbil/core$<match>[1]#generate-match*|
             _stx23245_
             __tmp50166
             __tmp50165)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx30476_)
        (let* ((___stx4635246353_ _stx30476_)
               (_g3048130510_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4635246353_))))
          (let ((___kont4635546356_
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
                                                   (let ((__tmp50170
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp50167
                                                          (let ((__tmp50169
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L30778_ '())))
                        (__tmp50168
                         (let () (declare (not safe)) (cons _L30805_ '()))))
                    (declare (not safe))
                    (cons __tmp50169 __tmp50168))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50170
                                                           __tmp50167)))))
                                             _g3079130802_))))
                                    (_g3078930820_
                                     (gx#stx-wrap-source
                                      (let ((__tmp50172
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp50171
                                             (let ()
                                               (declare (not safe))
                                               (cons _L30778_ _L30750_))))
                                        (declare (not safe))
                                        (cons __tmp50172 __tmp50171))
                                      (gx#stx-source _stx30476_))))))
                              _g3076430775_))))
                     (_g3076230824_ (gx#genident 'e)))))
                (___kont4635746358_
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
                                                   (let ((__tmp50175
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp50173
                                                          (let ((__tmp50174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L30700_ '()))))
                    (declare (not safe))
                    (cons _L30673_ __tmp50174))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50175
                                                           __tmp50173)))))
                                             _g3068630697_))))
                                    (_g3068430715_
                                     (gx#stx-wrap-source
                                      (let ((__tmp50177
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp50176
                                             (let ()
                                               (declare (not safe))
                                               (cons _L30673_ _L30645_))))
                                        (declare (not safe))
                                        (cons __tmp50177 __tmp50176))
                                      (gx#stx-source _stx30476_))))))
                              _g3065930670_))))
                     (_g3065730719_ (gx#genident 'args)))))
                (___kont4635946360_
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
                                                   (let ((__tmp50183
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp50178
                                                          (let ((__tmp50180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp50181
                                (let ((__tmp50182
                                       (let ()
                                         (declare (not safe))
                                         (cons _L30539_ '()))))
                                  (declare (not safe))
                                  (cons _L30568_ __tmp50182))))
                           (declare (not safe))
                           (cons __tmp50181 '())))
                        (__tmp50179
                         (let () (declare (not safe)) (cons _L30595_ '()))))
                    (declare (not safe))
                    (cons __tmp50180 __tmp50179))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50183
                                                           __tmp50178)))))
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
            (let* ((___match4640546406_
                    (lambda (_e3050130517_
                             _hd3050030521_
                             _tl3049930524_
                             _e3050430527_
                             _hd3050330531_
                             _tl3050230534_)
                      (let ((_L30537_ _tl3050230534_)
                            (_L30539_ _hd3050330531_))
                        (if (gx#stx-list? _L30537_)
                            (___kont4635946360_ _L30537_ _L30539_)
                            (let () (declare (not safe)) (_g3048130510_))))))
                   (___match4639346394_
                    (lambda (_e3049330625_
                             _hd3049230629_
                             _tl3049130632_
                             _e3049630635_
                             _hd3049530639_
                             _tl3049430642_)
                      (let ((_L30645_ _tl3049430642_))
                        (if (gx#stx-list? _L30645_)
                            (___kont4635746358_ _L30645_)
                            (___match4640546406_
                             _e3049330625_
                             _hd3049230629_
                             _tl3049130632_
                             _e3049630635_
                             _hd3049530639_
                             _tl3049430642_)))))
                   (___match4637746378_
                    (lambda (_e3048630730_
                             _hd3048530734_
                             _tl3048430737_
                             _e3048930740_
                             _hd3048830744_
                             _tl3048730747_)
                      (let ((_L30750_ _tl3048730747_))
                        (if (gx#stx-list? _L30750_)
                            (___kont4635546356_ _L30750_)
                            (___match4640546406_
                             _e3048630730_
                             _hd3048530734_
                             _tl3048430737_
                             _e3048930740_
                             _hd3048830744_
                             _tl3048730747_))))))
              (if (gx#stx-pair? ___stx4635246353_)
                  (let ((_e3048630730_ (gx#syntax-e ___stx4635246353_)))
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
                                       |gerbil/core$<match>[1]#_g50185_|
                                       _hd3048830744_)
                                      (___match4637746378_
                                       _e3048630730_
                                       _hd3048530734_
                                       _tl3048430737_
                                       _e3048930740_
                                       _hd3048830744_
                                       _tl3048730747_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50184_|
                                           _hd3048830744_)
                                          (___match4639346394_
                                           _e3048630730_
                                           _hd3048530734_
                                           _tl3048430737_
                                           _e3048930740_
                                           _hd3048830744_
                                           _tl3048730747_)
                                          (___match4640546406_
                                           _e3048630730_
                                           _hd3048530734_
                                           _tl3048430737_
                                           _e3048930740_
                                           _hd3048830744_
                                           _tl3048730747_)))
                                  (___match4640546406_
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
                                      (let ((_g50186_
                                             (gx#syntax-split-splice
                                              _hd3084330880_
                                              '0)))
                                        (begin
                                          (let ((_g50187_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g50186_)
                                                       (##vector-length
                                                        _g50186_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g50187_ 2)))
                                                (error "Context expects 2 values"
                                                       _g50187_)))
                                          (let ((_target3084530886_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g50186_ 0)))
                                                (_tl3084730889_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g50186_ 1))))
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
                                               (let ((_g50188_
                                                      (gx#syntax-split-splice
                                                       _g3093730957_
                                                       '0)))
                                                 (begin
                                                   (let ((_g50189_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g50188_)
                        (##vector-length _g50188_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g50189_ 2)))
                 (error "Context expects 2 values" _g50189_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target3093930960_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g50188_
                                                             0)))
                                                         (_tl3094130963_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g50188_
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
                                                         (let ((__tmp50196
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let))
                       (__tmp50190
                        (let ((__tmp50192
                               (begin
                                 (gx#syntax-check-splice-targets
                                  _L30918_
                                  _L30990_)
                                 (let ((__tmp50193
                                        (lambda (_g3103531039_
                                                 _g3103631042_
                                                 _g3103731044_)
                                          (let ((__tmp50194
                                                 (let ((__tmp50195
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3103531039_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3103631042_
                                                         __tmp50195))))
                                            (declare (not safe))
                                            (cons __tmp50194 _g3103731044_)))))
                                   (declare (not safe))
                                   (foldr2 __tmp50193 '() _L30918_ _L30990_))))
                              (__tmp50191
                               (let ()
                                 (declare (not safe))
                                 (cons _L31021_ '()))))
                          (declare (not safe))
                          (cons __tmp50192 __tmp50191))))
                   (declare (not safe))
                   (cons __tmp50196 __tmp50190)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g3100731018_))))
                                          (_g3100531047_
                                           (let ((__tmp50197
                                                  (let ((__tmp50198
                                                         (lambda (_g3105031053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3105131056_)
                   (let ()
                     (declare (not safe))
                     (cons _g3105031053_ _g3105131056_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp50198
                                                            '()
                                                            _L30990_))))
                                             (declare (not safe))
                                             (|gerbil/core$<match>[1]#generate-match*|
                                              _stx30832_
                                              __tmp50197
                                              _L30916_))))))
                                    _$e3094730986_))))))
                   (_loop3094230966_ _target3093930960_ '()))
                 (_g3093630953_ _g3093730957_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3093630953_
                                                _g3093730957_)))))
                                   (_g3093531059_
                                    (gx#gentemps
                                     (let ((__tmp50199
                                            (lambda (_g3106231065_
                                                     _g3106331068_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3106231065_
                                                      _g3106331068_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp50199 '() _L30918_)))))
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
        (let* ((___stx4640846409_ _$stx31077_)
               (_g3108331166_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4640846409_))))
          (let ((___kont4641146412_
                 (lambda (_L31496_)
                   (let ((__tmp50203 (gx#datum->syntax '#f 'let))
                         (__tmp50200
                          (let ((__tmp50201
                                 (let ((__tmp50202
                                        (lambda (_g3151231515_ _g3151331518_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3151231515_
                                                  _g3151331518_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50202 '() _L31496_))))
                            (declare (not safe))
                            (cons '() __tmp50201))))
                     (declare (not safe))
                     (cons __tmp50203 __tmp50200))))
                (___kont4641546416_
                 (lambda (_L31404_ _L31406_ _L31407_ _L31408_)
                   (let ((__tmp50204
                          (let ((__tmp50207
                                 (let ((__tmp50208
                                        (let ((__tmp50209
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31406_ '()))))
                                          (declare (not safe))
                                          (cons _L31407_ __tmp50209))))
                                   (declare (not safe))
                                   (cons __tmp50208 '())))
                                (__tmp50205
                                 (let ((__tmp50206
                                        (lambda (_g3143031433_ _g3143131436_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3143031433_
                                                  _g3143131436_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50206 '() _L31404_))))
                            (declare (not safe))
                            (cons __tmp50207 __tmp50205))))
                     (declare (not safe))
                     (cons _L31408_ __tmp50204))))
                (___kont4641946420_
                 (lambda (_L31277_ _L31279_ _L31280_)
                   (let ((__tmp50219 (gx#datum->syntax '#f 'match*))
                         (__tmp50210
                          (let ((__tmp50217
                                 (let ((__tmp50218
                                        (lambda (_g3130631309_ _g3130731312_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3130631309_
                                                  _g3130731312_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50218 '() _L31279_)))
                                (__tmp50211
                                 (let ((__tmp50212
                                        (let ((__tmp50215
                                               (let ((__tmp50216
                                                      (lambda (_g3130431315_
                                                               _g3130531318_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3130431315_
                                                                _g3130531318_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp50216
                                                         '()
                                                         _L31280_)))
                                              (__tmp50213
                                               (let ((__tmp50214
                                                      (lambda (_g3130231321_
                                                               _g3130331324_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3130231321_
                                                                _g3130331324_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp50214
                                                         '()
                                                         _L31277_))))
                                          (declare (not safe))
                                          (cons __tmp50215 __tmp50213))))
                                   (declare (not safe))
                                   (cons __tmp50212 '()))))
                            (declare (not safe))
                            (cons __tmp50217 __tmp50211))))
                     (declare (not safe))
                     (cons __tmp50219 __tmp50210)))))
            (let* ((___match4650146502_
                    (lambda (_e3113131173_
                             _hd3113031177_
                             _tl3112931180_
                             _e3113431183_
                             _hd3113331187_
                             _tl3113231190_
                             ___splice4642146422_
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
                                            (let ((___splice4642346424_
                                                   (gx#syntax-split-splice
                                                    _tl3113231190_
                                                    '0)))
                                              (let ((_tl3115431250_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4642346424_
                                                        '1)))
                                                    (_target3115231247_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4642346424_
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
                              (___kont4641946420_
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
                   (___match4649346494_
                    (lambda (_e3113131173_
                             _hd3113031177_
                             _tl3112931180_
                             _e3113431183_
                             _hd3113331187_
                             _tl3113231190_)
                      (if (gx#stx-pair/null? _hd3113331187_)
                          (let ((___splice4642146422_
                                 (gx#syntax-split-splice _hd3113331187_ '0)))
                            (let ((_tl3113731196_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4642146422_ '1)))
                                  (_target3113531193_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4642146422_ '0))))
                              (if (gx#stx-null? _tl3113731196_)
                                  (___match4650146502_
                                   _e3113131173_
                                   _hd3113031177_
                                   _tl3112931180_
                                   _e3113431183_
                                   _hd3113331187_
                                   _tl3113231190_
                                   ___splice4642146422_
                                   _target3113531193_
                                   _tl3113731196_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3108331166_)))))
                          (let () (declare (not safe)) (_g3108331166_)))))
                   (___match4648146482_
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
                             ___splice4641746418_
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
                                              (___kont4641546416_
                                               _L31404_
                                               _L31406_
                                               _L31407_
                                               _L31408_)
                                              (___match4649346494_
                                               _e3110731334_
                                               _hd3110631338_
                                               _tl3110531341_
                                               _e3111031344_
                                               _hd3110931348_
                                               _tl3110831351_))))))))
                        (_loop3112031380_ _target3111731374_ '()))))
                   (___match4644746448_
                    (lambda (_e3108831446_
                             _hd3108731450_
                             _tl3108631453_
                             _e3109131456_
                             _hd3109031460_
                             _tl3108931463_
                             ___splice4641346414_
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
                                        (___kont4641146412_
                                         _body3110031492_))))))
                        (_loop3109531472_ _target3109231466_ '())))))
              (if (gx#stx-pair? ___stx4640846409_)
                  (let ((_e3108831446_ (gx#syntax-e ___stx4640846409_)))
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
                                      (let ((___splice4641346414_
                                             (gx#syntax-split-splice
                                              _tl3108931463_
                                              '0)))
                                        (let ((_tl3109431469_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4641346414_
                                                  '1)))
                                              (_target3109231466_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4641346414_
                                                  '0))))
                                          (if (gx#stx-null? _tl3109431469_)
                                              (___match4644746448_
                                               _e3108831446_
                                               _hd3108731450_
                                               _tl3108631453_
                                               _e3109131456_
                                               _hd3109031460_
                                               _tl3108931463_
                                               ___splice4641346414_
                                               _target3109231466_
                                               _tl3109431469_)
                                              (if (gx#stx-pair/null?
                                                   _hd3109031460_)
                                                  (let ((___splice4642146422_
                                                         (gx#syntax-split-splice
                                                          _hd3109031460_
                                                          '0)))
                                                    (let ((_tl3113731196_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4642146422_
                                                              '1)))
                                                          (_target3113531193_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4642146422_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3113731196_)
                                                          (___match4650146502_
                                                           _e3108831446_
                                                           _hd3108731450_
                                                           _tl3108631453_
                                                           _e3109131456_
                                                           _hd3109031460_
                                                           _tl3108931463_
                                                           ___splice4642146422_
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
                                          (let ((___splice4642146422_
                                                 (gx#syntax-split-splice
                                                  _hd3109031460_
                                                  '0)))
                                            (let ((_tl3113731196_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4642146422_
                                                      '1)))
                                                  (_target3113531193_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4642146422_
                                                      '0))))
                                              (if (gx#stx-null? _tl3113731196_)
                                                  (___match4650146502_
                                                   _e3108831446_
                                                   _hd3108731450_
                                                   _tl3108631453_
                                                   _e3109131456_
                                                   _hd3109031460_
                                                   _tl3108931463_
                                                   ___splice4642146422_
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
                                                          (let ((___splice4641746418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl3108931463_ '0)))
                    (let ((_tl3111931377_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4641746418_ '1)))
                          (_target3111731374_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4641746418_ '0))))
                      (if (gx#stx-null? _tl3111931377_)
                          (___match4648146482_
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
                           ___splice4641746418_
                           _target3111731374_
                           _tl3111931377_)
                          (if (gx#stx-pair/null? _hd3109031460_)
                              (let ((___splice4642146422_
                                     (gx#syntax-split-splice
                                      _hd3109031460_
                                      '0)))
                                (let ((_tl3113731196_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4642146422_
                                          '1)))
                                      (_target3113531193_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4642146422_
                                          '0))))
                                  (if (gx#stx-null? _tl3113731196_)
                                      (___match4650146502_
                                       _e3108831446_
                                       _hd3108731450_
                                       _tl3108631453_
                                       _e3109131456_
                                       _hd3109031460_
                                       _tl3108931463_
                                       ___splice4642146422_
                                       _target3113531193_
                                       _tl3113731196_)
                                      (let ()
                                        (declare (not safe))
                                        (_g3108331166_)))))
                              (let () (declare (not safe)) (_g3108331166_))))))
                  (if (gx#stx-pair/null? _hd3109031460_)
                      (let ((___splice4642146422_
                             (gx#syntax-split-splice _hd3109031460_ '0)))
                        (let ((_tl3113731196_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4642146422_ '1)))
                              (_target3113531193_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4642146422_ '0))))
                          (if (gx#stx-null? _tl3113731196_)
                              (___match4650146502_
                               _e3108831446_
                               _hd3108731450_
                               _tl3108631453_
                               _e3109131456_
                               _hd3109031460_
                               _tl3108931463_
                               ___splice4642146422_
                               _target3113531193_
                               _tl3113731196_)
                              (let () (declare (not safe)) (_g3108331166_)))))
                      (let () (declare (not safe)) (_g3108331166_))))
              (if (gx#stx-pair/null? _hd3109031460_)
                  (let ((___splice4642146422_
                         (gx#syntax-split-splice _hd3109031460_ '0)))
                    (let ((_tl3113731196_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4642146422_ '1)))
                          (_target3113531193_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4642146422_ '0))))
                      (if (gx#stx-null? _tl3113731196_)
                          (___match4650146502_
                           _e3108831446_
                           _hd3108731450_
                           _tl3108631453_
                           _e3109131456_
                           _hd3109031460_
                           _tl3108931463_
                           ___splice4642146422_
                           _target3113531193_
                           _tl3113731196_)
                          (let () (declare (not safe)) (_g3108331166_)))))
                  (let () (declare (not safe)) (_g3108331166_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd3109031460_)
                                                  (let ((___splice4642146422_
                                                         (gx#syntax-split-splice
                                                          _hd3109031460_
                                                          '0)))
                                                    (let ((_tl3113731196_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4642146422_
                                                              '1)))
                                                          (_target3113531193_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4642146422_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3113731196_)
                                                          (___match4650146502_
                                                           _e3108831446_
                                                           _hd3108731450_
                                                           _tl3108631453_
                                                           _e3109131456_
                                                           _hd3109031460_
                                                           _tl3108931463_
                                                           ___splice4642146422_
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
                                          (let ((___splice4642146422_
                                                 (gx#syntax-split-splice
                                                  _hd3109031460_
                                                  '0)))
                                            (let ((_tl3113731196_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4642146422_
                                                      '1)))
                                                  (_target3113531193_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4642146422_
                                                      '0))))
                                              (if (gx#stx-null? _tl3113731196_)
                                                  (___match4650146502_
                                                   _e3108831446_
                                                   _hd3108731450_
                                                   _tl3108631453_
                                                   _e3109131456_
                                                   _hd3109031460_
                                                   _tl3108931463_
                                                   ___splice4642146422_
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
        (let* ((___stx4650446505_ _$stx31529_)
               (_g3153431586_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4650446505_))))
          (let ((___kont4650746508_
                 (lambda (_L31756_ _L31758_ _L31759_ _L31760_ _L31761_)
                   (let ((__tmp50229 (gx#datum->syntax '#f 'with))
                         (__tmp50220
                          (let ((__tmp50226
                                 (let ((__tmp50227
                                        (let ((__tmp50228
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31759_ '()))))
                                          (declare (not safe))
                                          (cons _L31760_ __tmp50228))))
                                   (declare (not safe))
                                   (cons __tmp50227 '())))
                                (__tmp50221
                                 (let ((__tmp50222
                                        (let ((__tmp50223
                                               (let ((__tmp50224
                                                      (let ((__tmp50225
                                                             (lambda (_g3178631789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3178731792_)
                       (let ()
                         (declare (not safe))
                         (cons _g3178631789_ _g3178731792_)))))
                (declare (not safe))
                (foldr1 __tmp50225 '() _L31756_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L31758_ __tmp50224))))
                                          (declare (not safe))
                                          (cons _L31761_ __tmp50223))))
                                   (declare (not safe))
                                   (cons __tmp50222 '()))))
                            (declare (not safe))
                            (cons __tmp50226 __tmp50221))))
                     (declare (not safe))
                     (cons __tmp50229 __tmp50220))))
                (___kont4651146512_
                 (lambda (_L31643_)
                   (let ((__tmp50233 (gx#datum->syntax '#f 'let))
                         (__tmp50230
                          (let ((__tmp50231
                                 (let ((__tmp50232
                                        (lambda (_g3166031663_ _g3166131666_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3166031663_
                                                  _g3166131666_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50232 '() _L31643_))))
                            (declare (not safe))
                            (cons '() __tmp50231))))
                     (declare (not safe))
                     (cons __tmp50233 __tmp50230)))))
            (let* ((___match4657746578_
                    (lambda (_e3156831593_
                             _hd3156731597_
                             _tl3156631600_
                             _e3157131603_
                             _hd3157031607_
                             _tl3156931610_
                             ___splice4651346514_
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
                                        (___kont4651146512_
                                         _body3158031639_))))))
                        (_loop3157531619_ _target3157231613_ '()))))
                   (___match4655546556_
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
                             ___splice4650946510_
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
                                        (___kont4650746508_
                                         _body3156431752_
                                         _tl3154731703_
                                         _hd3155431720_
                                         _hd3155131710_
                                         _hd3154231680_))))))
                        (_loop3155931732_ _target3155631726_ '())))))
              (if (gx#stx-pair? ___stx4650446505_)
                  (let ((_e3154331676_ (gx#syntax-e ___stx4650446505_)))
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
                                                              (let ((___splice4650946510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl3154431693_ '0)))
                        (let ((_tl3155831729_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4650946510_ '1)))
                              (_target3155631726_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4650946510_ '0))))
                          (if (gx#stx-null? _tl3155831729_)
                              (___match4655546556_
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
                               ___splice4650946510_
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
                                          (let ((___splice4651346514_
                                                 (gx#syntax-split-splice
                                                  _tl3154431693_
                                                  '0)))
                                            (let ((_tl3157431616_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4651346514_
                                                      '1)))
                                                  (_target3157231613_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4651346514_
                                                      '0))))
                                              (if (gx#stx-null? _tl3157431616_)
                                                  (___match4657746578_
                                                   _e3154331676_
                                                   _hd3154231680_
                                                   _tl3154131683_
                                                   _e3154631686_
                                                   _hd3154531690_
                                                   _tl3154431693_
                                                   ___splice4651346514_
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
        (let* ((___stx4658046581_ _$stx31801_)
               (_g3181231958_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4658046581_))))
          (let ((___kont4658346584_
                 (lambda (_L32562_ _L32564_ _L32565_)
                   (let ((__tmp50239 (gx#datum->syntax '#f 'and))
                         (__tmp50234
                          (let ((__tmp50235
                                 (lambda (_g3258632589_ _g3258732592_)
                                   (let ((__tmp50236
                                          (let ((__tmp50237
                                                 (let ((__tmp50238
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32562_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3258632589_
                                                         __tmp50238))))
                                            (declare (not safe))
                                            (cons _L32565_ __tmp50237))))
                                     (declare (not safe))
                                     (cons __tmp50236 _g3258732592_)))))
                            (declare (not safe))
                            (foldr1 __tmp50235 '() _L32564_))))
                     (declare (not safe))
                     (cons __tmp50239 __tmp50234))))
                (___kont4658746588_
                 (lambda (_L32452_ _L32454_ _L32455_)
                   (let ((__tmp50245 (gx#datum->syntax '#f 'or))
                         (__tmp50240
                          (let ((__tmp50241
                                 (lambda (_g3247632479_ _g3247732482_)
                                   (let ((__tmp50242
                                          (let ((__tmp50243
                                                 (let ((__tmp50244
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32452_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3247632479_
                                                         __tmp50244))))
                                            (declare (not safe))
                                            (cons _L32455_ __tmp50243))))
                                     (declare (not safe))
                                     (cons __tmp50242 _g3247732482_)))))
                            (declare (not safe))
                            (foldr1 __tmp50241 '() _L32454_))))
                     (declare (not safe))
                     (cons __tmp50245 __tmp50240))))
                (___kont4659146592_
                 (lambda (_L32352_ _L32354_ _L32355_)
                   (let ((__tmp50250 (gx#datum->syntax '#f 'not))
                         (__tmp50246
                          (let ((__tmp50247
                                 (let ((__tmp50248
                                        (let ((__tmp50249
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L32352_ '()))))
                                          (declare (not safe))
                                          (cons _L32354_ __tmp50249))))
                                   (declare (not safe))
                                   (cons _L32355_ __tmp50248))))
                            (declare (not safe))
                            (cons __tmp50247 '()))))
                     (declare (not safe))
                     (cons __tmp50250 __tmp50246))))
                (___kont4659346594_
                 (lambda (_L32278_ _L32280_)
                   (let ((__tmp50251
                          (let () (declare (not safe)) (cons _L32278_ '()))))
                     (declare (not safe))
                     (cons _L32280_ __tmp50251))))
                (___kont4659546596_
                 (lambda (_L32226_ _L32228_)
                   (let ((__tmp50260 (gx#datum->syntax '#f 'lambda))
                         (__tmp50252
                          (let ((__tmp50258
                                 (let ((__tmp50259
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50259 '())))
                                (__tmp50253
                                 (let ((__tmp50254
                                        (let ((__tmp50255
                                               (let ((__tmp50256
                                                      (let ((__tmp50257
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$obj)))
                                                        (declare (not safe))
                                                        (cons __tmp50257
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L32226_ __tmp50256))))
                                          (declare (not safe))
                                          (cons _L32228_ __tmp50255))))
                                   (declare (not safe))
                                   (cons __tmp50254 '()))))
                            (declare (not safe))
                            (cons __tmp50258 __tmp50253))))
                     (declare (not safe))
                     (cons __tmp50260 __tmp50252))))
                (___kont4659746598_
                 (lambda (_L32178_ _L32180_ _L32181_)
                   (let ((__tmp50279 (gx#datum->syntax '#f 'lambda))
                         (__tmp50261
                          (let ((__tmp50277
                                 (let ((__tmp50278
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50278 '())))
                                (__tmp50262
                                 (let ((__tmp50263
                                        (let ((__tmp50276
                                               (gx#datum->syntax '#f 'alet))
                                              (__tmp50264
                                               (let ((__tmp50269
                                                      (let ((__tmp50275
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$val))
                                                            (__tmp50270
                                                             (let ((__tmp50271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50272
                                   (let ((__tmp50273
                                          (let ((__tmp50274
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp50274 '()))))
                                     (declare (not safe))
                                     (cons _L32180_ __tmp50273))))
                              (declare (not safe))
                              (cons _L32181_ __tmp50272))))
                       (declare (not safe))
                       (cons __tmp50271 '()))))
                (declare (not safe))
                (cons __tmp50275 __tmp50270)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50265
                                                      (let ((__tmp50266
                                                             (let ((__tmp50267
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50268 (gx#datum->syntax '#f '$val)))
                              (declare (not safe))
                              (cons __tmp50268 '()))))
                       (declare (not safe))
                       (cons _L32178_ __tmp50267))))
                (declare (not safe))
                (cons __tmp50266 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50269
                                                       __tmp50265))))
                                          (declare (not safe))
                                          (cons __tmp50276 __tmp50264))))
                                   (declare (not safe))
                                   (cons __tmp50263 '()))))
                            (declare (not safe))
                            (cons __tmp50277 __tmp50262))))
                     (declare (not safe))
                     (cons __tmp50279 __tmp50261))))
                (___kont4659946600_
                 (lambda (_L32109_ _L32111_ _L32112_)
                   (let ((__tmp50295 (gx#datum->syntax '#f 'lambda))
                         (__tmp50280
                          (let ((__tmp50293
                                 (let ((__tmp50294
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50294 '())))
                                (__tmp50281
                                 (let ((__tmp50282
                                        (let ((__tmp50292
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp50283
                                               (let ((__tmp50288
                                                      (let ((__tmp50289
                                                             (let ((__tmp50290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50291 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50291 '()))))
                       (declare (not safe))
                       (cons _L32111_ __tmp50290))))
                (declare (not safe))
                (cons _L32112_ __tmp50289)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50284
                                                      (let ((__tmp50285
                                                             (let ((__tmp50286
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50287 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50287 '()))))
                       (declare (not safe))
                       (cons _L32109_ __tmp50286))))
                (declare (not safe))
                (cons __tmp50285 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50288
                                                       __tmp50284))))
                                          (declare (not safe))
                                          (cons __tmp50292 __tmp50283))))
                                   (declare (not safe))
                                   (cons __tmp50282 '()))))
                            (declare (not safe))
                            (cons __tmp50293 __tmp50281))))
                     (declare (not safe))
                     (cons __tmp50295 __tmp50280))))
                (___kont4660146602_
                 (lambda (_L32029_ _L32031_ _L32032_ _L32033_)
                   (let ((__tmp50313 (gx#datum->syntax '#f 'lambda))
                         (__tmp50296
                          (let ((__tmp50311
                                 (let ((__tmp50312
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50312 '())))
                                (__tmp50297
                                 (let ((__tmp50298
                                        (let ((__tmp50310
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp50299
                                               (let ((__tmp50306
                                                      (let ((__tmp50307
                                                             (let ((__tmp50308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50309 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50309 '()))))
                       (declare (not safe))
                       (cons _L32032_ __tmp50308))))
                (declare (not safe))
                (cons _L32033_ __tmp50307)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50300
                                                      (let ((__tmp50301
                                                             (let ((__tmp50302
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50303
                                   (let ((__tmp50304
                                          (let ((__tmp50305
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp50305 '()))))
                                     (declare (not safe))
                                     (cons _L32031_ __tmp50304))))
                              (declare (not safe))
                              (cons __tmp50303 '()))))
                       (declare (not safe))
                       (cons _L32029_ __tmp50302))))
                (declare (not safe))
                (cons __tmp50301 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50306
                                                       __tmp50300))))
                                          (declare (not safe))
                                          (cons __tmp50310 __tmp50299))))
                                   (declare (not safe))
                                   (cons __tmp50298 '()))))
                            (declare (not safe))
                            (cons __tmp50311 __tmp50297))))
                     (declare (not safe))
                     (cons __tmp50313 __tmp50296)))))
            (let* ((___match4675346754_
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
                               |gerbil/core$<match>[1]#_g50315_|
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
                                          (___kont4659746598_
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
                                                (___kont4659946600_
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
                         |gerbil/core$<match>[1]#_g50314_|
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
                                    (___kont4660146602_
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
                   (___match4673346734_
                    (lambda (_e3189532206_
                             _hd3189432210_
                             _tl3189332213_
                             _e3189832216_
                             _hd3189732220_
                             _tl3189632223_)
                      (if (gx#stx-null? _tl3189632223_)
                          (___kont4659546596_ _hd3189732220_ _hd3189432210_)
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
                                           |gerbil/core$<match>[1]#_g50315_|
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
                                                      (___kont4659746598_
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
                    (___kont4659946600_
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
                                     |gerbil/core$<match>[1]#_g50314_|
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
                                                (___kont4660146602_
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
                   (___match4666346664_
                    (lambda (_e3184332382_
                             _hd3184232386_
                             _tl3184132389_
                             _e3184632392_
                             _hd3184532396_
                             _tl3184432399_
                             _e3184932402_
                             _hd3184832406_
                             _tl3184732409_
                             ___splice4658946590_
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
                                                    (___kont4658746588_
                                                     _hd3186032446_
                                                     _pred3185832438_
                                                     _hd3184232386_)
                                                    (___match4675346754_
                                                     _e3184332382_
                                                     _hd3184232386_
                                                     _tl3184132389_
                                                     _e3184632392_
                                                     _hd3184532396_
                                                     _tl3184432399_
                                                     _e3186132442_
                                                     _hd3186032446_
                                                     _tl3185932449_))))
                                            (___match4673346734_
                                             _e3184332382_
                                             _hd3184232386_
                                             _tl3184132389_
                                             _e3184632392_
                                             _hd3184532396_
                                             _tl3184432399_)))))))
                        (_loop3185332418_ _target3185032412_ '()))))
                   (___match4663346634_
                    (lambda (_e3181932492_
                             _hd3181832496_
                             _tl3181732499_
                             _e3182232502_
                             _hd3182132506_
                             _tl3182032509_
                             _e3182532512_
                             _hd3182432516_
                             _tl3182332519_
                             ___splice4658546586_
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
                                                    (___kont4658346584_
                                                     _hd3183632556_
                                                     _pred3183432548_
                                                     _hd3181832496_)
                                                    (___match4675346754_
                                                     _e3181932492_
                                                     _hd3181832496_
                                                     _tl3181732499_
                                                     _e3182232502_
                                                     _hd3182132506_
                                                     _tl3182032509_
                                                     _e3183732552_
                                                     _hd3183632556_
                                                     _tl3183532559_))))
                                            (___match4673346734_
                                             _e3181932492_
                                             _hd3181832496_
                                             _tl3181732499_
                                             _e3182232502_
                                             _hd3182132506_
                                             _tl3182032509_)))))))
                        (_loop3182932528_ _target3182632522_ '())))))
              (if (gx#stx-pair? ___stx4658046581_)
                  (let ((_e3181932492_ (gx#syntax-e ___stx4658046581_)))
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
                                               |gerbil/core$<match>[1]#_g50318_|
                                               _hd3182432516_)
                                              (if (gx#stx-pair/null?
                                                   _tl3182332519_)
                                                  (let ((___splice4658546586_
                                                         (gx#syntax-split-splice
                                                          _tl3182332519_
                                                          '0)))
                                                    (let ((_tl3182832525_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4658546586_
                                                              '1)))
                                                          (_target3182632522_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4658546586_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3182832525_)
                                                          (___match4663346634_
                                                           _e3181932492_
                                                           _hd3181832496_
                                                           _tl3181732499_
                                                           _e3182232502_
                                                           _hd3182132506_
                                                           _tl3182032509_
                                                           _e3182532512_
                                                           _hd3182432516_
                                                           _tl3182332519_
                                                           ___splice4658546586_
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
                              (___kont4659346594_
                               _hd3188932272_
                               _hd3182132506_)
                              (if (gx#identifier? _hd3188932272_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50315_|
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
                                                  (___kont4659746598_
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
                                                        (___kont4659946600_
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
                                 |gerbil/core$<match>[1]#_g50314_|
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
                                            (___kont4660146602_
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
                          (___kont4659546596_ _hd3182132506_ _hd3181832496_)
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
                      (___kont4659346594_ _hd3188932272_ _hd3182132506_)
                      (if (gx#identifier? _hd3188932272_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g50315_|
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
                                          (___kont4659746598_
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
                                                (___kont4659946600_
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
                         |gerbil/core$<match>[1]#_g50314_|
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
                                    (___kont4660146602_
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
                  (___kont4659546596_ _hd3182132506_ _hd3181832496_)
                  (let () (declare (not safe)) (_g3181231958_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g50317_|
                                                   _hd3182432516_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3182332519_)
                                                      (let ((___splice4658946590_
                                                             (gx#syntax-split-splice
                                                              _tl3182332519_
                                                              '0)))
                                                        (let ((_tl3185232415_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4658946590_ '1)))
                      (_target3185032412_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4658946590_ '0))))
                  (if (gx#stx-null? _tl3185232415_)
                      (___match4666346664_
                       _e3181932492_
                       _hd3181832496_
                       _tl3181732499_
                       _e3182232502_
                       _hd3182132506_
                       _tl3182032509_
                       _e3182532512_
                       _hd3182432516_
                       _tl3182332519_
                       ___splice4658946590_
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
                                  (___kont4659346594_
                                   _hd3188932272_
                                   _hd3182132506_)
                                  (if (gx#identifier? _hd3188932272_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50315_|
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
                                                      (___kont4659746598_
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
                    (___kont4659946600_
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
                                     |gerbil/core$<match>[1]#_g50314_|
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
                                                (___kont4660146602_
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
                              (___kont4659546596_
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
                          (___kont4659346594_ _hd3188932272_ _hd3182132506_)
                          (if (gx#identifier? _hd3188932272_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g50315_|
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
                                              (___kont4659746598_
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
                                                    (___kont4659946600_
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
                             |gerbil/core$<match>[1]#_g50314_|
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
                                        (___kont4660146602_
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
                      (___kont4659546596_ _hd3182132506_ _hd3181832496_)
                      (let () (declare (not safe)) (_g3181231958_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g50316_|
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
                                      (___kont4659146592_
                                       _hd3187832346_
                                       _hd3187532336_
                                       _hd3181832496_)
                                      (if (gx#identifier? _hd3187832346_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50315_|
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
                                                          (___kont4659746598_
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
                        (___kont4659946600_
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
                                         |gerbil/core$<match>[1]#_g50314_|
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
                                                    (___kont4660146602_
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
                                  (___kont4659546596_
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
                                      (___kont4659346594_
                                       _hd3188932272_
                                       _hd3182132506_)
                                      (if (gx#identifier? _hd3188932272_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50315_|
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
                                                          (___kont4659746598_
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
                        (___kont4659946600_
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
                                         |gerbil/core$<match>[1]#_g50314_|
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
                                                    (___kont4660146602_
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
                                  (___kont4659546596_
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
                              (___kont4659346594_
                               _hd3188932272_
                               _hd3182132506_)
                              (if (gx#identifier? _hd3188932272_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50315_|
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
                                                  (___kont4659746598_
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
                                                        (___kont4659946600_
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
                                 |gerbil/core$<match>[1]#_g50314_|
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
                                            (___kont4660146602_
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
                          (___kont4659546596_ _hd3182132506_ _hd3181832496_)
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
                          (___kont4659346594_ _hd3188932272_ _hd3182132506_)
                          (if (gx#identifier? _hd3188932272_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g50315_|
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
                                              (___kont4659746598_
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
                                                    (___kont4659946600_
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
                             |gerbil/core$<match>[1]#_g50314_|
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
                                        (___kont4660146602_
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
                      (___kont4659546596_ _hd3182132506_ _hd3181832496_)
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
                                                      (___kont4659346594_
                                                       _hd3188932272_
                                                       _hd3182132506_)
                                                      (if (gx#identifier?
                                                           _hd3188932272_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core$<match>[1]#_g50315_|
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
                                  (___kont4659746598_
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
                                        (___kont4659946600_
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
                                                         |gerbil/core$<match>[1]#_g50314_|
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
                            (___kont4660146602_
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
                                                  (___kont4659546596_
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
                                              (___kont4659346594_
                                               _hd3188932272_
                                               _hd3182132506_)
                                              (if (gx#identifier?
                                                   _hd3188932272_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g50315_|
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
                          (___kont4659746598_
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
                                (___kont4659946600_
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
                                                 |gerbil/core$<match>[1]#_g50314_|
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
                    (___kont4660146602_
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
                                          (___kont4659546596_
                                           _hd3182132506_
                                           _hd3181832496_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3181231958_)))))))
                          (let () (declare (not safe)) (_g3181231958_)))))
                  (let () (declare (not safe)) (_g3181231958_))))))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx32601_)
        (let* ((___stx4684846849_ _$stx32601_)
               (_g3260632640_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4684846849_))))
          (let ((___kont4685146852_
                 (lambda (_L32744_ _L32746_ _L32747_)
                   (let ((__tmp50380 (gx#datum->syntax '#f 'defsyntax))
                         (__tmp50319
                          (let ((__tmp50320
                                 (let ((__tmp50321
                                        (let ((__tmp50379
                                               (gx#datum->syntax
                                                '#f
                                                'make-match-macro))
                                              (__tmp50322
                                               (let ((__tmp50323
                                                      (let ((__tmp50324
                                                             (let ((__tmp50378
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let))
                           (__tmp50325
                            (let ((__tmp50370
                                   (let ((__tmp50375
                                          (let ((__tmp50377
                                                 (gx#datum->syntax
                                                  '#f
                                                  '$match-e))
                                                (__tmp50376
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L32746_ '()))))
                                            (declare (not safe))
                                            (cons __tmp50377 __tmp50376)))
                                         (__tmp50371
                                          (let ((__tmp50372
                                                 (let ((__tmp50374
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$macro-e))
                                                       (__tmp50373
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32744_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp50374
                                                         __tmp50373))))
                                            (declare (not safe))
                                            (cons __tmp50372 '()))))
                                     (declare (not safe))
                                     (cons __tmp50375 __tmp50371)))
                                  (__tmp50326
                                   (let ((__tmp50327
                                          (let ((__tmp50369
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp50328
                                                 (let ((__tmp50367
                                                        (let ((__tmp50368
                                                               (gx#datum->syntax
                                                                '#f
                                                                '$stx)))
                                                          (declare (not safe))
                                                          (cons __tmp50368
                                                                '())))
                                                       (__tmp50329
                                                        (let ((__tmp50330
                                                               (let ((__tmp50366
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'syntax-case))
                             (__tmp50331
                              (let ((__tmp50365 (gx#datum->syntax '#f '$stx))
                                    (__tmp50332
                                     (let ((__tmp50333
                                            (let ((__tmp50344
                                                   (let ((__tmp50363
                                                          (let ((__tmp50364
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'body)))
                    (declare (not safe))
                    (cons 'match: __tmp50364)))
                 (__tmp50345
                  (let ((__tmp50346
                         (let ((__tmp50362
                                (gx#datum->syntax '#f 'core-apply-expander))
                               (__tmp50347
                                (let ((__tmp50361
                                       (gx#datum->syntax '#f '$match-e))
                                      (__tmp50348
                                       (let ((__tmp50349
                                              (let ((__tmp50360
                                                     (gx#datum->syntax
                                                      '#f
                                                      'stx-wrap-source))
                                                    (__tmp50350
                                                     (let ((__tmp50356
                                                            (let ((__tmp50359
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'syntax))
                          (__tmp50357
                           (let ((__tmp50358 (gx#datum->syntax '#f 'body)))
                             (declare (not safe))
                             (cons __tmp50358 '()))))
                      (declare (not safe))
                      (cons __tmp50359 __tmp50357)))
                   (__tmp50351
                    (let ((__tmp50352
                           (let ((__tmp50355
                                  (gx#datum->syntax '#f 'stx-source))
                                 (__tmp50353
                                  (let ((__tmp50354
                                         (gx#datum->syntax '#f '$stx)))
                                    (declare (not safe))
                                    (cons __tmp50354 '()))))
                             (declare (not safe))
                             (cons __tmp50355 __tmp50353))))
                      (declare (not safe))
                      (cons __tmp50352 '()))))
               (declare (not safe))
               (cons __tmp50356 __tmp50351))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50360 __tmp50350))))
                                         (declare (not safe))
                                         (cons __tmp50349 '()))))
                                  (declare (not safe))
                                  (cons __tmp50361 __tmp50348))))
                           (declare (not safe))
                           (cons __tmp50362 __tmp50347))))
                    (declare (not safe))
                    (cons __tmp50346 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50363
                                                           __tmp50345)))
                                                  (__tmp50334
                                                   (let ((__tmp50335
                                                          (let ((__tmp50343
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '_))
                        (__tmp50336
                         (let ((__tmp50337
                                (let ((__tmp50342
                                       (gx#datum->syntax
                                        '#f
                                        'core-apply-expander))
                                      (__tmp50338
                                       (let ((__tmp50341
                                              (gx#datum->syntax '#f '$macro-e))
                                             (__tmp50339
                                              (let ((__tmp50340
                                                     (gx#datum->syntax
                                                      '#f
                                                      '$stx)))
                                                (declare (not safe))
                                                (cons __tmp50340 '()))))
                                         (declare (not safe))
                                         (cons __tmp50341 __tmp50339))))
                                  (declare (not safe))
                                  (cons __tmp50342 __tmp50338))))
                           (declare (not safe))
                           (cons __tmp50337 '()))))
                    (declare (not safe))
                    (cons __tmp50343 __tmp50336))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50335 '()))))
                                              (declare (not safe))
                                              (cons __tmp50344 __tmp50334))))
                                       (declare (not safe))
                                       (cons '() __tmp50333))))
                                (declare (not safe))
                                (cons __tmp50365 __tmp50332))))
                         (declare (not safe))
                         (cons __tmp50366 __tmp50331))))
                  (declare (not safe))
                  (cons __tmp50330 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50367
                                                         __tmp50329))))
                                            (declare (not safe))
                                            (cons __tmp50369 __tmp50328))))
                                     (declare (not safe))
                                     (cons __tmp50327 '()))))
                              (declare (not safe))
                              (cons __tmp50370 __tmp50326))))
                       (declare (not safe))
                       (cons __tmp50378 __tmp50325))))
                (declare (not safe))
                (cons __tmp50324 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'macro: __tmp50323))))
                                          (declare (not safe))
                                          (cons __tmp50379 __tmp50322))))
                                   (declare (not safe))
                                   (cons __tmp50321 '()))))
                            (declare (not safe))
                            (cons _L32747_ __tmp50320))))
                     (declare (not safe))
                     (cons __tmp50380 __tmp50319))))
                (___kont4685346854_
                 (lambda (_L32677_ _L32679_ _L32680_)
                   (let ((__tmp50381
                          (let ((__tmp50382
                                 (let ((__tmp50383
                                        (let ((__tmp50384
                                               (let ((__tmp50395
                                                      (gx#datum->syntax
                                                       '#f
                                                       'lambda))
                                                     (__tmp50385
                                                      (let ((__tmp50393
                                                             (let ((__tmp50394
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '$stx)))
                       (declare (not safe))
                       (cons __tmp50394 '())))
                    (__tmp50386
                     (let ((__tmp50387
                            (let ((__tmp50392
                                   (gx#datum->syntax '#f 'raise-syntax-error))
                                  (__tmp50388
                                   (let ((__tmp50389
                                          (let ((__tmp50390
                                                 (let ((__tmp50391
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$stx)))
                                                   (declare (not safe))
                                                   (cons __tmp50391 '()))))
                                            (declare (not safe))
                                            (cons '"bad syntax; no macro definition for defsyntax-for-match"
                                                  __tmp50390))))
                                     (declare (not safe))
                                     (cons '#f __tmp50389))))
                              (declare (not safe))
                              (cons __tmp50392 __tmp50388))))
                       (declare (not safe))
                       (cons __tmp50387 '()))))
                (declare (not safe))
                (cons __tmp50393 __tmp50386))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50395
                                                       __tmp50385))))
                                          (declare (not safe))
                                          (cons __tmp50384 '()))))
                                   (declare (not safe))
                                   (cons _L32677_ __tmp50383))))
                            (declare (not safe))
                            (cons _L32679_ __tmp50382))))
                     (declare (not safe))
                     (cons _L32680_ __tmp50381)))))
            (let ((___match4688146882_
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
                           (___kont4685146852_ _L32744_ _L32746_ _L32747_)
                           (let () (declare (not safe)) (_g3260632640_)))))))
              (if (gx#stx-pair? ___stx4684846849_)
                  (let ((_e3261332704_ (gx#syntax-e ___stx4684846849_)))
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
                                                  (___match4688146882_
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
                                              (___kont4685346854_
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
                                     (let ((__tmp50400
                                            (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match))
                                           (__tmp50396
                                            (let ((__tmp50397
                                                   (let ((__tmp50398
                                                          (let ((__tmp50399
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'syntax-rules)))
                    (declare (not safe))
                    (cons __tmp50399 _L32815_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50398 '()))))
                                              (declare (not safe))
                                              (cons _L32817_ __tmp50397))))
                                       (declare (not safe))
                                       (cons __tmp50400 __tmp50396)))
                                   _tl3278032812_
                                   _hd3278132809_)))
                              (_g3277332788_ _g3277432792_))))
                      (_g3277332788_ _g3277432792_)))))
          (_g3277232831_ _$stx32769_))))))
