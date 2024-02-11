(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[1]#_g49780_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49781_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49838_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49839_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49840_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49842_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49843_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49844_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49845_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49846_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49847_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g49848_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49849_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49850_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g49851_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50244_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50328_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50348_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g50349_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50478_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50479_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50480_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50481_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g50482_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<match>[1]#match-macro::t|
      (let ((__tmp49764 (list gerbil/core$<macro-object>#macro-object::t)))
        (declare (not safe))
        (make-class-type
         'gerbil.core#match-macro::t
         'match-macro
         __tmp49764
         '()
         '()
         '#f)))
    (define |gerbil/core$<match>[1]#match-macro?|
      (let ()
        (declare (not safe))
        (make-class-predicate |gerbil/core$<match>[1]#match-macro::t|)))
    (define |gerbil/core$<match>[1]#make-match-macro|
      (lambda _$args30460_
        (apply make-class-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args30460_)))
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
      (lambda (_stx30457_)
        (if (gx#identifier? _stx30457_)
            (let ((__tmp49765 (gx#syntax-local-value _stx30457_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core$<match>[1]#match-macro::t|
               __tmp49765))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern__%|
      (lambda (_stx28763_ _match-stx28765_)
        (letrec ((_parse128767_
                  (lambda (_hd29120_)
                    (let* ((___stx4459544596_ _hd29120_)
                           (_g2914629288_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4459544596_))))
                      (let ((___kont4459844599_
                             (lambda (_L30220_ _L30222_)
                               (let* ((___stx4451544516_ _L30220_)
                                      (_g3023930272_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4451544516_))))
                                 (let ((___kont4451844519_
                                        (lambda ()
                                          (let ((__tmp49766
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L30222_ '()))))
                                            (declare (not safe))
                                            (cons '?: __tmp49766))))
                                       (___kont4452044521_
                                        (lambda (_L30413_)
                                          (let ((__tmp49767
                                                 (let ((__tmp49768
                                                        (let ((__tmp49769
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (_parse128767_ _L30413_))))
                  (declare (not safe))
                  (cons __tmp49769 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30222_
                                                         __tmp49768))))
                                            (declare (not safe))
                                            (cons '?: __tmp49767))))
                                       (___kont4452244523_
                                        (lambda (_L30383_)
                                          (let ((__tmp49770
                                                 (let ((__tmp49771
                                                        (let ((__tmp49772
                                                               (let ((__tmp49773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_parse128767_ _L30383_))))
                         (declare (not safe))
                         (cons __tmp49773 '()))))
                  (declare (not safe))
                  (cons '=>: __tmp49772))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30222_
                                                         __tmp49771))))
                                            (declare (not safe))
                                            (cons '?: __tmp49770))))
                                       (___kont4452444525_
                                        (lambda (_L30334_ _L30336_)
                                          (let ((__tmp49774
                                                 (let ((__tmp49775
                                                        (let ((__tmp49776
                                                               (let ((__tmp49777
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp49778
                                     (let ((__tmp49779
                                            (let ()
                                              (declare (not safe))
                                              (_parse128767_ _L30334_))))
                                       (declare (not safe))
                                       (cons __tmp49779 '()))))
                                (declare (not safe))
                                (cons '=>: __tmp49778))))
                         (declare (not safe))
                         (cons _L30336_ __tmp49777))))
                  (declare (not safe))
                  (cons ':: __tmp49776))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L30222_
                                                         __tmp49775))))
                                            (declare (not safe))
                                            (cons '?: __tmp49774))))
                                       (___kont4452644527_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_parse-error28774_ _hd29120_)))))
                                   (let ((_g3023530424_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 ___stx4451544516_)
                                                (let ((_e3024430403_
                                                       (gx#syntax-e
                                                        ___stx4451544516_)))
                                                  (let ((_tl3024230410_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3024430403_)))
                                                        (_hd3024330407_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3024430403_))))
                                                    (if (gx#stx-null?
                                                         _tl3024230410_)
                                                        (___kont4452044521_
                                                         _hd3024330407_)
                                                        (if (gx#identifier?
                                                             _hd3024330407_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g49781_|
                         _hd3024330407_)
                        (if (gx#stx-pair? _tl3024230410_)
                            (let ((_e3025130373_ (gx#syntax-e _tl3024230410_)))
                              (let ((_tl3024930380_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3025130373_)))
                                    (_hd3025030377_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3025130373_))))
                                (if (gx#stx-null? _tl3024930380_)
                                    (___kont4452244523_ _hd3025030377_)
                                    (___kont4452644527_))))
                            (___kont4452644527_))
                        (___kont4452644527_))
                    (if (gx#stx-datum? _hd3024330407_)
                        (let ((_e3025730300_ (gx#stx-e _hd3024330407_)))
                          (if (let ()
                                (declare (not safe))
                                (equal? _e3025730300_ '::))
                              (if (gx#stx-pair? _tl3024230410_)
                                  (let ((_e3026030304_
                                         (gx#syntax-e _tl3024230410_)))
                                    (let ((_tl3025830311_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3026030304_)))
                                          (_hd3025930308_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3026030304_))))
                                      (if (gx#stx-pair? _tl3025830311_)
                                          (let ((_e3026330314_
                                                 (gx#syntax-e _tl3025830311_)))
                                            (let ((_tl3026130321_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3026330314_)))
                                                  (_hd3026230318_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3026330314_))))
                                              (if (gx#identifier?
                                                   _hd3026230318_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g49780_|
                                                       _hd3026230318_)
                                                      (if (gx#stx-pair?
                                                           _tl3026130321_)
                                                          (let ((_e3026630324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3026130321_)))
                    (let ((_tl3026430331_
                           (let () (declare (not safe)) (##cdr _e3026630324_)))
                          (_hd3026530328_
                           (let ()
                             (declare (not safe))
                             (##car _e3026630324_))))
                      (if (gx#stx-null? _tl3026430331_)
                          (___kont4452444525_ _hd3026530328_ _hd3025930308_)
                          (___kont4452644527_))))
                  (___kont4452644527_))
              (___kont4452644527_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4452644527_))))
                                          (___kont4452644527_))))
                                  (___kont4452644527_))
                              (___kont4452644527_)))
                        (___kont4452644527_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4452644527_)))))
                                     (if (gx#stx-null? ___stx4451544516_)
                                         (___kont4451844519_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3023530424_))))))))
                            (___kont4460044601_
                             (lambda (_L30125_)
                               (let* ((___stx4449744498_ _L30125_)
                                      (_g3013730148_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4449744498_))))
                                 (let ((___kont4450044501_
                                        (lambda (_L30176_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse128767_ _L30176_))))
                                       (___kont4450244503_
                                        (lambda ()
                                          (let ((__tmp49782
                                                 (gx#stx-map
                                                  _parse128767_
                                                  _L30125_)))
                                            (declare (not safe))
                                            (cons 'and: __tmp49782)))))
                                   (if (gx#stx-pair? ___stx4449744498_)
                                       (let ((_e3014230166_
                                              (gx#syntax-e ___stx4449744498_)))
                                         (let ((_tl3014030173_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3014230166_)))
                                               (_hd3014130170_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3014230166_))))
                                           (if (gx#stx-null? _tl3014030173_)
                                               (___kont4450044501_
                                                _hd3014130170_)
                                               (___kont4450244503_))))
                                       (___kont4450244503_))))))
                            (___kont4460244603_
                             (lambda (_L30040_)
                               (let* ((___stx4447944480_ _L30040_)
                                      (_g3005230063_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4447944480_))))
                                 (let ((___kont4448244483_
                                        (lambda (_L30091_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse128767_ _L30091_))))
                                       (___kont4448444485_
                                        (lambda ()
                                          (let ((__tmp49783
                                                 (gx#stx-map
                                                  _parse128767_
                                                  _L30040_)))
                                            (declare (not safe))
                                            (cons 'or: __tmp49783)))))
                                   (if (gx#stx-pair? ___stx4447944480_)
                                       (let ((_e3005730081_
                                              (gx#syntax-e ___stx4447944480_)))
                                         (let ((_tl3005530088_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3005730081_)))
                                               (_hd3005630085_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3005730081_))))
                                           (if (gx#stx-null? _tl3005530088_)
                                               (___kont4448244483_
                                                _hd3005630085_)
                                               (___kont4448444485_))))
                                       (___kont4448444485_))))))
                            (___kont4460444605_
                             (lambda (_L30010_)
                               (let ((__tmp49784
                                      (let ((__tmp49785
                                             (let ()
                                               (declare (not safe))
                                               (_parse128767_ _L30010_))))
                                        (declare (not safe))
                                        (cons __tmp49785 '()))))
                                 (declare (not safe))
                                 (cons 'not: __tmp49784))))
                            (___kont4460644607_
                             (lambda (_L29966_ _L29968_)
                               (let ((__tmp49786
                                      (let ((__tmp49789
                                             (let ()
                                               (declare (not safe))
                                               (_parse128767_ _L29968_)))
                                            (__tmp49787
                                             (let ((__tmp49788
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse128767_
                                                       _L29966_))))
                                               (declare (not safe))
                                               (cons __tmp49788 '()))))
                                        (declare (not safe))
                                        (cons __tmp49789 __tmp49787))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp49786))))
                            (___kont4460844609_
                             (lambda (_L29910_ _L29912_ _L29913_)
                               (if (gx#stx-null? _L29910_)
                                   (let ((__tmp49797
                                          (let ((__tmp49800
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse128767_ _L29913_)))
                                                (__tmp49798
                                                 (let ((__tmp49799
                                                        (let ()
                                                          (declare (not safe))
                                                          (_parse128767_
                                                           _L29912_))))
                                                   (declare (not safe))
                                                   (cons __tmp49799 '()))))
                                            (declare (not safe))
                                            (cons __tmp49800 __tmp49798))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp49797))
                                   (let ((__tmp49790
                                          (let ((__tmp49796
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse128767_ _L29913_)))
                                                (__tmp49791
                                                 (let ((__tmp49792
                                                        (let ((__tmp49793
                                                               (let ((__tmp49795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'cons*))
                             (__tmp49794
                              (let ()
                                (declare (not safe))
                                (cons _L29912_ _L29910_))))
                         (declare (not safe))
                         (cons __tmp49795 __tmp49794))))
                  (declare (not safe))
                  (_parse128767_ __tmp49793))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49792 '()))))
                                            (declare (not safe))
                                            (cons __tmp49796 __tmp49791))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp49790)))))
                            (___kont4461044611_
                             (lambda (_L29862_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-list28769_ _L29862_))))
                            (___kont4461244613_
                             (lambda (_L29832_)
                               (let ((__tmp49801
                                      (let ((__tmp49802
                                             (let ()
                                               (declare (not safe))
                                               (_parse128767_ _L29832_))))
                                        (declare (not safe))
                                        (cons __tmp49802 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp49801))))
                            (___kont4461444615_
                             (lambda (_L29795_)
                               (let ((__tmp49803
                                      (let ((__tmp49804
                                             (let ()
                                               (declare (not safe))
                                               (_parse128767_ _L29795_))))
                                        (declare (not safe))
                                        (cons __tmp49804 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp49803))))
                            (___kont4461644617_
                             (lambda (_L29771_)
                               (let ()
                                 (declare (not safe))
                                 (_parse128767_ _L29771_))))
                            (___kont4461844619_
                             (lambda (_L29733_)
                               (let ((__tmp49805
                                      (let ((__tmp49806
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector28770_
                                                _L29733_))))
                                        (declare (not safe))
                                        (cons __tmp49806 '()))))
                                 (declare (not safe))
                                 (cons 'values: __tmp49805))))
                            (___kont4462044621_
                             (lambda (_L29705_)
                               (let ((__tmp49807
                                      (let ((__tmp49808
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector28770_
                                                _L29705_))))
                                        (declare (not safe))
                                        (cons __tmp49808 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp49807))))
                            (___kont4462244623_
                             (lambda (_L29666_)
                               (let ((__tmp49809
                                      (let ((__tmp49810
                                             (let ((__tmp49811
                                                    (let ((__tmp49812
                                                           (lambda (_g2967929682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2968029685_)
                     (let ()
                       (declare (not safe))
                       (cons _g2967929682_ _g2968029685_)))))
              (declare (not safe))
              (foldr1 __tmp49812 '() _L29666_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_parse-vector28770_
                                                __tmp49811))))
                                        (declare (not safe))
                                        (cons __tmp49810 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp49809))))
                            (___kont4462644627_
                             (lambda (_L29612_ _L29614_)
                               (let ((__tmp49813
                                      (let ((__tmp49816
                                             (gx#syntax-local-value _L29614_))
                                            (__tmp49814
                                             (let ((__tmp49815
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-vector28770_
                                                       _L29612_))))
                                               (declare (not safe))
                                               (cons __tmp49815 '()))))
                                        (declare (not safe))
                                        (cons __tmp49816 __tmp49814))))
                                 (declare (not safe))
                                 (cons 'struct: __tmp49813))))
                            (___kont4462844629_
                             (lambda (_L29582_ _L29584_)
                               (let ((__tmp49817
                                      (let ((__tmp49820
                                             (gx#syntax-local-value _L29584_))
                                            (__tmp49818
                                             (let ((__tmp49819
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-class-body28772_
                                                       _L29582_))))
                                               (declare (not safe))
                                               (cons __tmp49819 '()))))
                                        (declare (not safe))
                                        (cons __tmp49820 __tmp49818))))
                                 (declare (not safe))
                                 (cons 'class: __tmp49817))))
                            (___kont4463044631_
                             (lambda (_L29542_ _L29544_)
                               (let ((__tmp49821
                                      (let ((__tmp49822
                                             (let ((__tmp49827
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cut))
                                                   (__tmp49823
                                                    (let ((__tmp49824
                                                           (let ((__tmp49826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '<>))
                         (__tmp49825
                          (let () (declare (not safe)) (cons _L29542_ '()))))
                     (declare (not safe))
                     (cons __tmp49826 __tmp49825))))
              (declare (not safe))
              (cons _L29544_ __tmp49824))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49827 __tmp49823))))
                                        (declare (not safe))
                                        (cons __tmp49822 '()))))
                                 (declare (not safe))
                                 (cons '?: __tmp49821))))
                            (___kont4463244633_
                             (lambda (_L29502_)
                               (let ((__tmp49828
                                      (let ((__tmp49829 (gx#stx-e _L29502_)))
                                        (declare (not safe))
                                        (cons __tmp49829 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp49828))))
                            (___kont4463444635_
                             (lambda (_L29462_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-qq28773_ _L29462_))))
                            (___kont4463644637_
                             (lambda (_L29418_ _L29420_)
                               (let ((__tmp49830
                                      (let ((__tmp49831
                                             (let ((__tmp49832
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse128767_
                                                       _L29418_))))
                                               (declare (not safe))
                                               (cons __tmp49832 '()))))
                                        (declare (not safe))
                                        (cons _L29420_ __tmp49831))))
                                 (declare (not safe))
                                 (cons 'apply: __tmp49830))))
                            (___kont4463844639_
                             (lambda (_L29366_)
                               (let ((__tmp49833
                                      (gx#core-apply-expander
                                       (gx#syntax-local-e _L29366_)
                                       (gx#stx-wrap-source
                                        (let ()
                                          (declare (not safe))
                                          (cons 'match: _hd29120_))
                                        (let ((_$e29377_
                                               (gx#stx-source _hd29120_)))
                                          (if _$e29377_
                                              _$e29377_
                                              (gx#stx-source _stx28763_)))))))
                                 (declare (not safe))
                                 (_parse128767_ __tmp49833))))
                            (___kont4464044641_
                             (lambda (_L29340_)
                               (let () (declare (not safe)) (cons 'any: '()))))
                            (___kont4464244643_
                             (lambda (_L29324_)
                               (let ((__tmp49834
                                      (let ()
                                        (declare (not safe))
                                        (cons _L29324_ '()))))
                                 (declare (not safe))
                                 (cons 'var: __tmp49834))))
                            (___kont4464444645_
                             (lambda (_L29306_)
                               (let ((__tmp49835
                                      (let ((__tmp49836 (gx#stx-e _L29306_)))
                                        (declare (not safe))
                                        (cons __tmp49836 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp49835))))
                            (___kont4464644647_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_parse-error28774_ _hd29120_)))))
                        (let* ((_g2914429317_
                                (lambda ()
                                  (let ((_L29306_ ___stx4459544596_))
                                    (if (gx#stx-datum? _L29306_)
                                        (___kont4464444645_ _L29306_)
                                        (___kont4464644647_)))))
                               (_g2914329333_
                                (lambda ()
                                  (let ((_L29324_ ___stx4459544596_))
                                    (if (and (gx#identifier? _L29324_)
                                             (let ((__tmp49837
                                                    (gx#ellipsis? _L29324_)))
                                               (declare (not safe))
                                               (not __tmp49837)))
                                        (___kont4464244643_ _L29324_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2914429317_))))))
                               (_g2914229349_
                                (lambda ()
                                  (let ((_L29340_ ___stx4459544596_))
                                    (if (gx#underscore? _L29340_)
                                        (___kont4464044641_ _L29340_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2914329333_))))))
                               (___match4492244923_
                                (lambda (_e2927929356_
                                         _hd2927829360_
                                         _tl2927729363_)
                                  (let ((_L29366_ _hd2927829360_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                           _L29366_))
                                        (___kont4463844639_ _L29366_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2914229349_))))))
                               (___match4485644857_
                                (lambda (_e2924729522_
                                         _hd2924629526_
                                         _tl2924529529_
                                         _e2925029532_
                                         _hd2924929536_
                                         _tl2924829539_)
                                  (let ((_L29542_ _hd2924929536_)
                                        (_L29544_ _hd2924629526_))
                                    (if (and (gx#identifier? _L29544_)
                                             (or (gx#free-identifier=?
                                                  _L29544_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _L29544_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _L29544_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (___kont4463044631_ _L29542_ _L29544_)
                                        (if (gx#identifier? _hd2924629526_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g49839_|
                                                 _hd2924629526_)
                                                (___kont4463244633_
                                                 _hd2924929536_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<match>[1]#_g49838_|
                                                     _hd2924629526_)
                                                    (___kont4463444635_
                                                     _hd2924929536_)
                                                    (___match4492244923_
                                                     _e2924729522_
                                                     _hd2924629526_
                                                     _tl2924529529_)))
                                            (___match4492244923_
                                             _e2924729522_
                                             _hd2924629526_
                                             _tl2924529529_))))))
                               (___match4484244843_
                                (lambda (_e2924229572_
                                         _hd2924129576_
                                         _tl2924029579_)
                                  (let ((_L29582_ _tl2924029579_)
                                        (_L29584_ _hd2924129576_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                                           _L29584_))
                                        (___kont4462844629_ _L29582_ _L29584_)
                                        (if (gx#stx-pair? _tl2924029579_)
                                            (let ((_e2925029532_
                                                   (gx#syntax-e
                                                    _tl2924029579_)))
                                              (let ((_tl2924829539_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2925029532_)))
                                                    (_hd2924929536_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2925029532_))))
                                                (if (gx#stx-null?
                                                     _tl2924829539_)
                                                    (___match4485644857_
                                                     _e2924229572_
                                                     _hd2924129576_
                                                     _tl2924029579_
                                                     _e2925029532_
                                                     _hd2924929536_
                                                     _tl2924829539_)
                                                    (if (gx#identifier?
                                                         _hd2924129576_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core$<match>[1]#_g49839_|
                                                             _hd2924129576_)
                                                            (___match4492244923_
                                                             _e2924229572_
                                                             _hd2924129576_
                                                             _tl2924029579_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g49838_|
                         _hd2924129576_)
                        (___match4492244923_
                         _e2924229572_
                         _hd2924129576_
                         _tl2924029579_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g49840_|
                             _hd2924129576_)
                            (if (gx#stx-pair? _tl2924829539_)
                                (let ((_e2927529408_
                                       (gx#syntax-e _tl2924829539_)))
                                  (let ((_tl2927329415_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2927529408_)))
                                        (_hd2927429412_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2927529408_))))
                                    (if (gx#stx-null? _tl2927329415_)
                                        (___kont4463644637_
                                         _hd2927429412_
                                         _hd2924929536_)
                                        (___match4492244923_
                                         _e2924229572_
                                         _hd2924129576_
                                         _tl2924029579_))))
                                (___match4492244923_
                                 _e2924229572_
                                 _hd2924129576_
                                 _tl2924029579_))
                            (___match4492244923_
                             _e2924229572_
                             _hd2924129576_
                             _tl2924029579_))))
                (___match4492244923_
                 _e2924229572_
                 _hd2924129576_
                 _tl2924029579_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___match4492244923_
                                             _e2924229572_
                                             _hd2924129576_
                                             _tl2924029579_))))))
                               (___match4483644837_
                                (lambda (_e2923729602_
                                         _hd2923629606_
                                         _tl2923529609_)
                                  (let ((_L29612_ _tl2923529609_)
                                        (_L29614_ _hd2923629606_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__%
                                           _L29614_
                                           gerbil/core$<MOP>$<MOP:2>#class-type-struct?))
                                        (___kont4462644627_ _L29612_ _L29614_)
                                        (___match4484244843_
                                         _e2923729602_
                                         _hd2923629606_
                                         _tl2923529609_)))))
                               (___match4483044831_
                                (lambda (_e2922329632_
                                         ___splice4462444625_
                                         _target2922429636_
                                         _tl2922629639_)
                                  (letrec ((_loop2922729642_
                                            (lambda (_hd2922529646_
                                                     _body2923129649_)
                                              (if (gx#stx-pair? _hd2922529646_)
                                                  (let ((_e2922829652_
                                                         (gx#syntax-e
                                                          _hd2922529646_)))
                                                    (let ((_lp-tl2923029659_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2922829652_)))
                                                          (_lp-hd2922929656_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2922829652_))))
                                                      (let ((__tmp49841
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd2922929656_ _body2923129649_))))
                (declare (not safe))
                (_loop2922729642_ _lp-tl2923029659_ __tmp49841))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_body2923229662_
                                                         (reverse _body2923129649_)))
                                                    (___kont4462244623_
                                                     _body2923229662_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop2922729642_
                                       _target2922429636_
                                       '())))))
                               (_g2913429688_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx4459544596_)
                                      (let ((_e2922329632_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx4459544596_))))
                                        (if (gx#stx-pair/null? _e2922329632_)
                                            (let ((___splice4462444625_
                                                   (gx#syntax-split-splice
                                                    _e2922329632_
                                                    '0)))
                                              (let ((_tl2922629639_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4462444625_
                                                        '1)))
                                                    (_target2922429636_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4462444625_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl2922629639_)
                                                    (___match4483044831_
                                                     _e2922329632_
                                                     ___splice4462444625_
                                                     _target2922429636_
                                                     _tl2922629639_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2914229349_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g2914229349_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2914229349_)))))
                               (_g2913029805_
                                (lambda ()
                                  (if (gx#stx-box? ___stx4459544596_)
                                      (let ((_e2920629791_
                                             (unbox (gx#syntax-e
                                                     ___stx4459544596_))))
                                        (___kont4461444615_ _e2920629791_))
                                      (let ()
                                        (declare (not safe))
                                        (_g2913429688_)))))
                               (___match4468444685_
                                (lambda (_e2916330030_
                                         _hd2916230034_
                                         _tl2916130037_)
                                  (let ((_L30040_ _tl2916130037_))
                                    (if (gx#stx-list? _L30040_)
                                        (___kont4460244603_ _L30040_)
                                        (___match4483644837_
                                         _e2916330030_
                                         _hd2916230034_
                                         _tl2916130037_)))))
                               (___match4467444675_
                                (lambda (_e2915930115_
                                         _hd2915830119_
                                         _tl2915730122_)
                                  (let ((_L30125_ _tl2915730122_))
                                    (if (gx#stx-list? _L30125_)
                                        (___kont4460044601_ _L30125_)
                                        (___match4483644837_
                                         _e2915930115_
                                         _hd2915830119_
                                         _tl2915730122_))))))
                          (if (gx#stx-pair? ___stx4459544596_)
                              (let ((_e2915230200_
                                     (gx#syntax-e ___stx4459544596_)))
                                (let ((_tl2915030207_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2915230200_)))
                                      (_hd2915130204_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2915230200_))))
                                  (if (gx#identifier? _hd2915130204_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g49851_|
                                           _hd2915130204_)
                                          (if (gx#stx-pair? _tl2915030207_)
                                              (let ((_e2915530210_
                                                     (gx#syntax-e
                                                      _tl2915030207_)))
                                                (let ((_tl2915330217_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2915530210_)))
                                                      (_hd2915430214_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2915530210_))))
                                                  (___kont4459844599_
                                                   _tl2915330217_
                                                   _hd2915430214_)))
                                              (___match4483644837_
                                               _e2915230200_
                                               _hd2915130204_
                                               _tl2915030207_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g49850_|
                                               _hd2915130204_)
                                              (___match4467444675_
                                               _e2915230200_
                                               _hd2915130204_
                                               _tl2915030207_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g49849_|
                                                   _hd2915130204_)
                                                  (___match4468444685_
                                                   _e2915230200_
                                                   _hd2915130204_
                                                   _tl2915030207_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g49848_|
                                                       _hd2915130204_)
                                                      (if (gx#stx-pair?
                                                           _tl2915030207_)
                                                          (let ((_e2917030000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2915030207_)))
                    (let ((_tl2916830007_
                           (let () (declare (not safe)) (##cdr _e2917030000_)))
                          (_hd2916930004_
                           (let ()
                             (declare (not safe))
                             (##car _e2917030000_))))
                      (if (gx#stx-null? _tl2916830007_)
                          (___kont4460444605_ _hd2916930004_)
                          (___match4483644837_
                           _e2915230200_
                           _hd2915130204_
                           _tl2915030207_))))
                  (___match4483644837_
                   _e2915230200_
                   _hd2915130204_
                   _tl2915030207_))
              (if (gx#free-identifier=?
                   |gerbil/core$<match>[1]#_g49847_|
                   _hd2915130204_)
                  (if (gx#stx-pair? _tl2915030207_)
                      (let ((_e2917829946_ (gx#syntax-e _tl2915030207_)))
                        (let ((_tl2917629953_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2917829946_)))
                              (_hd2917729950_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2917829946_))))
                          (if (gx#stx-pair? _tl2917629953_)
                              (let ((_e2918129956_
                                     (gx#syntax-e _tl2917629953_)))
                                (let ((_tl2917929963_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2918129956_)))
                                      (_hd2918029960_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2918129956_))))
                                  (if (gx#stx-null? _tl2917929963_)
                                      (___kont4460644607_
                                       _hd2918029960_
                                       _hd2917729950_)
                                      (___match4483644837_
                                       _e2915230200_
                                       _hd2915130204_
                                       _tl2915030207_))))
                              (___match4483644837_
                               _e2915230200_
                               _hd2915130204_
                               _tl2915030207_))))
                      (___match4483644837_
                       _e2915230200_
                       _hd2915130204_
                       _tl2915030207_))
                  (if (gx#free-identifier=?
                       |gerbil/core$<match>[1]#_g49846_|
                       _hd2915130204_)
                      (if (gx#stx-pair? _tl2915030207_)
                          (let ((_e2919029890_ (gx#syntax-e _tl2915030207_)))
                            (let ((_tl2918829897_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2919029890_)))
                                  (_hd2918929894_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2919029890_))))
                              (if (gx#stx-pair? _tl2918829897_)
                                  (let ((_e2919329900_
                                         (gx#syntax-e _tl2918829897_)))
                                    (let ((_tl2919129907_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2919329900_)))
                                          (_hd2919229904_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2919329900_))))
                                      (___kont4460844609_
                                       _tl2919129907_
                                       _hd2919229904_
                                       _hd2918929894_)))
                                  (___match4483644837_
                                   _e2915230200_
                                   _hd2915130204_
                                   _tl2915030207_))))
                          (___match4483644837_
                           _e2915230200_
                           _hd2915130204_
                           _tl2915030207_))
                      (if (gx#free-identifier=?
                           |gerbil/core$<match>[1]#_g49845_|
                           _hd2915130204_)
                          (___kont4461044611_ _tl2915030207_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g49844_|
                               _hd2915130204_)
                              (if (gx#stx-pair? _tl2915030207_)
                                  (let ((_e2920429822_
                                         (gx#syntax-e _tl2915030207_)))
                                    (let ((_tl2920229829_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2920429822_)))
                                          (_hd2920329826_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2920429822_))))
                                      (if (gx#stx-null? _tl2920229829_)
                                          (___kont4461244613_ _hd2920329826_)
                                          (___match4483644837_
                                           _e2915230200_
                                           _hd2915130204_
                                           _tl2915030207_))))
                                  (___match4483644837_
                                   _e2915230200_
                                   _hd2915130204_
                                   _tl2915030207_))
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g49843_|
                                   _hd2915130204_)
                                  (if (gx#stx-pair? _tl2915030207_)
                                      (let ((_e2921329761_
                                             (gx#syntax-e _tl2915030207_)))
                                        (let ((_tl2921129768_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2921329761_)))
                                              (_hd2921229765_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2921329761_))))
                                          (if (gx#stx-null? _tl2921129768_)
                                              (___kont4461644617_
                                               _hd2921229765_)
                                              (___kont4461844619_
                                               _tl2915030207_))))
                                      (___kont4461844619_ _tl2915030207_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g49842_|
                                       _hd2915130204_)
                                      (___kont4462044621_ _tl2915030207_)
                                      (___match4483644837_
                                       _e2915230200_
                                       _hd2915130204_
                                       _tl2915030207_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___match4483644837_
                                       _e2915230200_
                                       _hd2915130204_
                                       _tl2915030207_))))
                              (let ()
                                (declare (not safe))
                                (_g2913029805_))))))))
                 (_parse-list28769_
                  (lambda (_body28949_)
                    (let* ((___stx4492544926_ _body28949_)
                           (_g2895528984_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4492544926_))))
                      (let ((___kont4492844929_
                             (lambda (_L29102_)
                               (let ()
                                 (declare (not safe))
                                 (_parse128767_ _L29102_))))
                            (___kont4493044931_
                             (lambda (_L29054_ _L29056_ _L29057_)
                               (let ((__tmp49852
                                      (let ((__tmp49855
                                             (let ()
                                               (declare (not safe))
                                               (_parse128767_ _L29057_)))
                                            (__tmp49853
                                             (let ((__tmp49854
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list28769_
                                                       _L29054_))))
                                               (declare (not safe))
                                               (cons __tmp49854 '()))))
                                        (declare (not safe))
                                        (cons __tmp49855 __tmp49853))))
                                 (declare (not safe))
                                 (cons 'splice: __tmp49852))))
                            (___kont4493244933_
                             (lambda (_L29012_ _L29014_)
                               (let ((__tmp49856
                                      (let ((__tmp49859
                                             (let ()
                                               (declare (not safe))
                                               (_parse128767_ _L29014_)))
                                            (__tmp49857
                                             (let ((__tmp49858
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list28769_
                                                       _L29012_))))
                                               (declare (not safe))
                                               (cons __tmp49858 '()))))
                                        (declare (not safe))
                                        (cons __tmp49859 __tmp49857))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp49856))))
                            (___kont4493444935_
                             (lambda ()
                               (if (gx#stx-null? _body28949_)
                                   (let ()
                                     (declare (not safe))
                                     (cons 'null: '()))
                                   (if (let ((__tmp49860
                                              (gx#stx-pair? _body28949_)))
                                         (declare (not safe))
                                         (not __tmp49860))
                                       (let ()
                                         (declare (not safe))
                                         (_parse128767_ _body28949_))
                                       (let ()
                                         (declare (not safe))
                                         (_parse-error28774_ _body28949_)))))))
                        (let* ((___match4497444975_
                                (lambda (_e2897829002_
                                         _hd2897729006_
                                         _tl2897629009_)
                                  (let ((_L29012_ _tl2897629009_)
                                        (_L29014_ _hd2897729006_))
                                    (if (let ((__tmp49861
                                               (gx#ellipsis? _L29014_)))
                                          (declare (not safe))
                                          (not __tmp49861))
                                        (___kont4493244933_ _L29012_ _L29014_)
                                        (___kont4493444935_)))))
                               (___match4496844969_
                                (lambda (_e2897029034_
                                         _hd2896929038_
                                         _tl2896829041_
                                         _e2897329044_
                                         _hd2897229048_
                                         _tl2897129051_)
                                  (let ((_L29054_ _tl2897129051_)
                                        (_L29056_ _hd2897229048_)
                                        (_L29057_ _hd2896929038_))
                                    (if (gx#ellipsis? _L29056_)
                                        (___kont4493044931_
                                         _L29054_
                                         _L29056_
                                         _L29057_)
                                        (___match4497444975_
                                         _e2897029034_
                                         _hd2896929038_
                                         _tl2896829041_))))))
                          (if (gx#stx-pair? ___stx4492544926_)
                              (let ((_e2896029078_
                                     (gx#syntax-e ___stx4492544926_)))
                                (let ((_tl2895829085_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2896029078_)))
                                      (_hd2895929082_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2896029078_))))
                                  (if (gx#stx-datum? _hd2895929082_)
                                      (let ((_e2896129088_
                                             (gx#stx-e _hd2895929082_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e2896129088_ '::))
                                            (if (gx#stx-pair? _tl2895829085_)
                                                (let ((_e2896429092_
                                                       (gx#syntax-e
                                                        _tl2895829085_)))
                                                  (let ((_tl2896229099_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2896429092_)))
                                                        (_hd2896329096_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2896429092_))))
                                                    (if (gx#stx-null?
                                                         _tl2896229099_)
                                                        (___kont4492844929_
                                                         _hd2896329096_)
                                                        (___match4496844969_
                                                         _e2896029078_
                                                         _hd2895929082_
                                                         _tl2895829085_
                                                         _e2896429092_
                                                         _hd2896329096_
                                                         _tl2896229099_))))
                                                (___match4497444975_
                                                 _e2896029078_
                                                 _hd2895929082_
                                                 _tl2895829085_))
                                            (if (gx#stx-pair? _tl2895829085_)
                                                (let ((_e2897329044_
                                                       (gx#syntax-e
                                                        _tl2895829085_)))
                                                  (let ((_tl2897129051_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2897329044_)))
                                                        (_hd2897229048_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2897329044_))))
                                                    (___match4496844969_
                                                     _e2896029078_
                                                     _hd2895929082_
                                                     _tl2895829085_
                                                     _e2897329044_
                                                     _hd2897229048_
                                                     _tl2897129051_)))
                                                (___match4497444975_
                                                 _e2896029078_
                                                 _hd2895929082_
                                                 _tl2895829085_))))
                                      (if (gx#stx-pair? _tl2895829085_)
                                          (let ((_e2897329044_
                                                 (gx#syntax-e _tl2895829085_)))
                                            (let ((_tl2897129051_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2897329044_)))
                                                  (_hd2897229048_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2897329044_))))
                                              (___match4496844969_
                                               _e2896029078_
                                               _hd2895929082_
                                               _tl2895829085_
                                               _e2897329044_
                                               _hd2897229048_
                                               _tl2897129051_)))
                                          (___match4497444975_
                                           _e2896029078_
                                           _hd2895929082_
                                           _tl2895829085_)))))
                              (___kont4493444935_)))))))
                 (_parse-vector28770_
                  (lambda (_body28946_)
                    (if (let ()
                          (declare (not safe))
                          (_simple-vector?28771_ _body28946_))
                        (let ((__tmp49864
                               (let ((__tmp49865
                                      (gx#stx-map _parse128767_ _body28946_)))
                                 (declare (not safe))
                                 (cons __tmp49865 '()))))
                          (declare (not safe))
                          (cons 'simple: __tmp49864))
                        (let ((__tmp49862
                               (let ((__tmp49863
                                      (let ()
                                        (declare (not safe))
                                        (_parse-list28769_ _body28946_))))
                                 (declare (not safe))
                                 (cons __tmp49863 '()))))
                          (declare (not safe))
                          (cons 'list: __tmp49862)))))
                 (_simple-vector?28771_
                  (lambda (_body28883_)
                    (let* ((___stx4497744978_ _body28883_)
                           (_g2888728899_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4497744978_))))
                      (let ((___kont4498044981_
                             (lambda (_L28927_ _L28929_)
                               (if (let ((__tmp49866 (gx#ellipsis? _L28929_)))
                                     (declare (not safe))
                                     (not __tmp49866))
                                   (let ()
                                     (declare (not safe))
                                     (_simple-vector?28771_ _L28927_))
                                   '#f)))
                            (___kont4498244983_
                             (lambda () (gx#stx-null? _body28883_))))
                        (if (gx#stx-pair? ___stx4497744978_)
                            (let ((_e2889328917_
                                   (gx#syntax-e ___stx4497744978_)))
                              (let ((_tl2889128924_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2889328917_)))
                                    (_hd2889228921_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2889328917_))))
                                (___kont4498044981_
                                 _tl2889128924_
                                 _hd2889228921_)))
                            (___kont4498244983_))))))
                 (_parse-class-body28772_
                  (lambda (_body28792_)
                    (let _recur28795_ ((_rest28798_ _body28792_))
                      (let* ((___stx4499344994_ _rest28798_)
                             (_g2880228818_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4499344994_))))
                        (let ((___kont4499644997_
                               (lambda (_L28856_ _L28858_ _L28859_)
                                 (let ((__tmp49867
                                        (let ((__tmp49869
                                               (let ()
                                                 (declare (not safe))
                                                 (_parse128767_ _L28858_)))
                                              (__tmp49868
                                               (let ()
                                                 (declare (not safe))
                                                 (_recur28795_ _L28856_))))
                                          (declare (not safe))
                                          (cons __tmp49869 __tmp49868))))
                                   (declare (not safe))
                                   (cons _L28859_ __tmp49867))))
                              (___kont4499844999_
                               (lambda ()
                                 (if (gx#stx-null? _rest28798_)
                                     '()
                                     (let ()
                                       (declare (not safe))
                                       (_parse-error28774_ _rest28798_))))))
                          (let ((___match4501245013_
                                 (lambda (_e2880928836_
                                          _hd2880828840_
                                          _tl2880728843_
                                          _e2881228846_
                                          _hd2881128850_
                                          _tl2881028853_)
                                   (let ((_L28856_ _tl2881028853_)
                                         (_L28858_ _hd2881128850_)
                                         (_L28859_ _hd2880828840_))
                                     (if (gx#stx-keyword? _L28859_)
                                         (___kont4499644997_
                                          _L28856_
                                          _L28858_
                                          _L28859_)
                                         (___kont4499844999_))))))
                            (if (gx#stx-pair? ___stx4499344994_)
                                (let ((_e2880928836_
                                       (gx#syntax-e ___stx4499344994_)))
                                  (let ((_tl2880728843_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2880928836_)))
                                        (_hd2880828840_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2880928836_))))
                                    (if (gx#stx-pair? _tl2880728843_)
                                        (let ((_e2881228846_
                                               (gx#syntax-e _tl2880728843_)))
                                          (let ((_tl2881028853_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2881228846_)))
                                                (_hd2881128850_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2881228846_))))
                                            (___match4501245013_
                                             _e2880928836_
                                             _hd2880828840_
                                             _tl2880728843_
                                             _e2881228846_
                                             _hd2881128850_
                                             _tl2881028853_)))
                                        (___kont4499844999_))))
                                (___kont4499844999_))))))))
                 (_parse-qq28773_
                  (lambda (_hd28779_)
                    (let ((_g2878128788_
                           (lambda (_g2878228784_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g2878228784_))))
                      (declare (not safe))
                      (_g2878128788_ _hd28779_))))
                 (_parse-error28774_
                  (lambda (_hd28776_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _match-stx28765_
                               (let ((__tmp49871
                                      (let ((__tmp49872
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd28776_ '()))))
                                        (declare (not safe))
                                        (cons _stx28763_ __tmp49872))))
                                 (declare (not safe))
                                 (cons _match-stx28765_ __tmp49871))
                               (let ((__tmp49870
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd28776_ '()))))
                                 (declare (not safe))
                                 (cons _stx28763_ __tmp49870)))))))
          (let () (declare (not safe)) (_parse128767_ _stx28763_)))))
    (define |gerbil/core$<match>[1]#parse-match-pattern__0|
      (lambda (_stx30447_)
        (let ((_match-stx30450_ '#f))
          (declare (not safe))
          (|gerbil/core$<match>[1]#parse-match-pattern__%|
           _stx30447_
           _match-stx30450_))))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (lambda _g49874_
        (let ((_g49873_ (let () (declare (not safe)) (##length _g49874_))))
          (cond ((let () (declare (not safe)) (##fx= _g49873_ 1))
                 (apply (lambda (_stx30447_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__0|
                             _stx30447_)))
                        _g49874_))
                ((let () (declare (not safe)) (##fx= _g49873_ 2))
                 (apply (lambda (_stx30453_ _match-stx30455_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__%|
                             _stx30453_
                             _match-stx30455_)))
                        _g49874_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<match>[1]#parse-match-pattern|
                  _g49874_))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx28747_)
        (call-with-current-continuation
         (lambda (_E28751_)
           (with-exception-handler
            (let ((_E!28754_ (current-exception-handler)))
              (lambda (_e28757_)
                (if (syntax-error? _e28757_)
                    (_E28751_ '#f)
                    (_E!28754_ _e28757_))))
            (lambda ()
              (let ()
                (declare (not safe))
                (|gerbil/core$<match>[1]#parse-match-pattern__0| _stx28747_))
              '#t))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree27482_)
        (letrec ((_loop27485_
                  (lambda (_ptree27772_ _vars27774_ _K27775_)
                    (let* ((___stx4511145112_ _ptree27772_)
                           (_g2778827898_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4511145112_))))
                      (let ((___kont4511445115_
                             (lambda (_L28528_)
                               (let* ((___stx4503145032_ _L28528_)
                                      (_g2854528579_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4503145032_))))
                                 (let ((___kont4503445035_
                                        (lambda (_L28728_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27485_
                                             _L28728_
                                             _vars27774_
                                             _K27775_))))
                                       (___kont4503645037_
                                        (lambda (_L28697_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27485_
                                             _L28697_
                                             _vars27774_
                                             _K27775_))))
                                       (___kont4503845039_
                                        (lambda (_L28645_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27485_
                                             _L28645_
                                             _vars27774_
                                             _K27775_))))
                                       (___kont4504045041_
                                        (lambda () (_K27775_ _vars27774_))))
                                   (if (gx#stx-pair? ___stx4503145032_)
                                       (let ((_e2855028718_
                                              (gx#syntax-e ___stx4503145032_)))
                                         (let ((_tl2854828725_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2855028718_)))
                                               (_hd2854928722_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2855028718_))))
                                           (if (gx#stx-null? _tl2854828725_)
                                               (___kont4503445035_
                                                _hd2854928722_)
                                               (if (gx#stx-datum?
                                                    _hd2854928722_)
                                                   (let ((_e2855528683_
                                                          (gx#stx-e
                                                           _hd2854928722_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e2855528683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '=>:))
                 (if (gx#stx-pair? _tl2854828725_)
                     (let ((_e2855828687_ (gx#syntax-e _tl2854828725_)))
                       (let ((_tl2855628694_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2855828687_)))
                             (_hd2855728691_
                              (let ()
                                (declare (not safe))
                                (##car _e2855828687_))))
                         (if (gx#stx-null? _tl2855628694_)
                             (___kont4503645037_ _hd2855728691_)
                             (___kont4504045041_))))
                     (___kont4504045041_))
                 (if (let () (declare (not safe)) (equal? _e2855528683_ '::))
                     (if (gx#stx-pair? _tl2854828725_)
                         (let ((_e2856628611_ (gx#syntax-e _tl2854828725_)))
                           (let ((_tl2856428618_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2856628611_)))
                                 (_hd2856528615_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2856628611_))))
                             (if (gx#stx-pair? _tl2856428618_)
                                 (let ((_e2856928621_
                                        (gx#syntax-e _tl2856428618_)))
                                   (let ((_tl2856728628_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2856928621_)))
                                         (_hd2856828625_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2856928621_))))
                                     (if (gx#stx-datum? _hd2856828625_)
                                         (let ((_e2857028631_
                                                (gx#stx-e _hd2856828625_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (equal? _e2857028631_ '=>:))
                                               (if (gx#stx-pair?
                                                    _tl2856728628_)
                                                   (let ((_e2857328635_
                                                          (gx#syntax-e
                                                           _tl2856728628_)))
                                                     (let ((_tl2857128642_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2857328635_)))
                                                           (_hd2857228639_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2857328635_))))
                                                       (if (gx#stx-null?
                                                            _tl2857128642_)
                                                           (___kont4503845039_
                                                            _hd2857228639_)
                                                           (___kont4504045041_))))
                                                   (___kont4504045041_))
                                               (___kont4504045041_)))
                                         (___kont4504045041_))))
                                 (___kont4504045041_))))
                         (___kont4504045041_))
                     (___kont4504045041_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4504045041_)))))
                                       (___kont4504045041_))))))
                            (___kont4511645117_
                             (lambda (_L28415_ _L28417_)
                               (let* ((___stx4501545016_ _L28415_)
                                      (_g2843328445_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4501545016_))))
                                 (let ((___kont4501845019_
                                        (lambda (_L28473_ _L28475_)
                                          (let ((__tmp49875
                                                 (lambda (_g2848728489_)
                                                   (let ((__tmp49876
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L28417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L28473_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_loop27485_
                                                      __tmp49876
                                                      _g2848728489_
                                                      _K27775_)))))
                                            (declare (not safe))
                                            (_loop27485_
                                             _L28475_
                                             _vars27774_
                                             __tmp49875))))
                                       (___kont4502045021_
                                        (lambda () (_K27775_ _vars27774_))))
                                   (if (gx#stx-pair? ___stx4501545016_)
                                       (let ((_e2843928463_
                                              (gx#syntax-e ___stx4501545016_)))
                                         (let ((_tl2843728470_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2843928463_)))
                                               (_hd2843828467_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2843928463_))))
                                           (___kont4501845019_
                                            _tl2843728470_
                                            _hd2843828467_)))
                                       (___kont4502045021_))))))
                            (___kont4511845119_
                             (lambda (_L28384_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27485_ _L28384_ _vars27774_ _K27775_))))
                            (___kont4512045121_
                             (lambda (_L28330_ _L28332_)
                               (let ((__tmp49877
                                      (lambda (_g2834728349_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop27485_
                                           _L28330_
                                           _g2834728349_
                                           _K27775_)))))
                                 (declare (not safe))
                                 (_loop27485_
                                  _L28332_
                                  _vars27774_
                                  __tmp49877))))
                            (___kont4512245123_
                             (lambda (_L28266_ _L28268_)
                               (let ((__tmp49878
                                      (lambda (_g2828328285_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop27485_
                                           _L28266_
                                           _g2828328285_
                                           _K27775_)))))
                                 (declare (not safe))
                                 (_loop27485_
                                  _L28268_
                                  _vars27774_
                                  __tmp49878))))
                            (___kont4512445125_
                             (lambda (_L28211_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27485_ _L28211_ _vars27774_ _K27775_))))
                            (___kont4512645127_
                             (lambda (_L28161_ _L28163_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector27487_
                                  _L28161_
                                  _vars27774_
                                  _K27775_))))
                            (___kont4512845129_
                             (lambda (_L28118_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector27487_
                                  _L28118_
                                  _vars27774_
                                  _K27775_))))
                            (___kont4513045131_
                             (lambda (_L28061_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-class-list27489_
                                  _L28061_
                                  _vars27774_
                                  _K27775_))))
                            (___kont4513245133_
                             (lambda (_L28002_ _L28004_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27485_ _L28002_ _vars27774_ _K27775_))))
                            (___kont4513445135_
                             (lambda (_L27940_)
                               (if (let ((__tmp49879
                                          (lambda (_g2795527957_)
                                            (gx#bound-identifier=?
                                             _g2795527957_
                                             _L27940_))))
                                     (declare (not safe))
                                     (find __tmp49879 _vars27774_))
                                   (_K27775_ _vars27774_)
                                   (_K27775_
                                    (let ()
                                      (declare (not safe))
                                      (cons _L27940_ _vars27774_))))))
                            (___kont4513645137_
                             (lambda () (_K27775_ _vars27774_))))
                        (let* ((___match4526845269_
                                (lambda (_e2784728141_
                                         _hd2784628145_
                                         _tl2784528148_
                                         _e2785028151_
                                         _hd2784928155_
                                         _tl2784828158_)
                                  (let ((_L28161_ _hd2784928155_)
                                        (_L28163_ _hd2784628145_))
                                    (if (or (gx#stx-eq? 'values: _L28163_)
                                            (gx#stx-eq? 'vector: _L28163_))
                                        (___kont4512645127_ _L28161_ _L28163_)
                                        (if (gx#stx-datum? _hd2784628145_)
                                            (let ((_e2785528094_
                                                   (gx#stx-e _hd2784628145_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e2785528094_
                                                            'struct:))
                                                  (___kont4513645137_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e2785528094_
                                                                'class:))
                                                      (___kont4513645137_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e2785528094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'apply:))
                  (___kont4513645137_)
                  (if (let ()
                        (declare (not safe))
                        (equal? _e2785528094_ 'var:))
                      (___kont4513445135_ _hd2784928155_)
                      (___kont4513645137_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont4513645137_))))))
                               (___match4516245163_
                                (lambda (_e2780228405_
                                         _hd2780128409_
                                         _tl2780028412_)
                                  (let ((_L28415_ _tl2780028412_)
                                        (_L28417_ _hd2780128409_))
                                    (if (or (gx#stx-eq? 'and: _L28417_)
                                            (gx#stx-eq? 'or: _L28417_))
                                        (___kont4511645117_ _L28415_ _L28417_)
                                        (if (gx#stx-datum? _hd2780128409_)
                                            (let ((_e2780728370_
                                                   (gx#stx-e _hd2780128409_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e2780728370_
                                                            'not:))
                                                  (if (gx#stx-pair?
                                                       _tl2780028412_)
                                                      (let ((_e2781028374_
                                                             (gx#syntax-e
                                                              _tl2780028412_)))
                                                        (let ((_tl2780828381_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2781028374_)))
                      (_hd2780928378_
                       (let () (declare (not safe)) (##car _e2781028374_))))
                  (if (gx#stx-null? _tl2780828381_)
                      (___kont4511845119_ _hd2780928378_)
                      (___kont4513645137_))))
              (___kont4513645137_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e2780728370_
                                                                'cons:))
                                                      (if (gx#stx-pair?
                                                           _tl2780028412_)
                                                          (let ((_e2781928310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2780028412_)))
                    (let ((_tl2781728317_
                           (let () (declare (not safe)) (##cdr _e2781928310_)))
                          (_hd2781828314_
                           (let ()
                             (declare (not safe))
                             (##car _e2781928310_))))
                      (if (gx#stx-pair? _tl2781728317_)
                          (let ((_e2782228320_ (gx#syntax-e _tl2781728317_)))
                            (let ((_tl2782028327_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2782228320_)))
                                  (_hd2782128324_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2782228320_))))
                              (if (gx#stx-null? _tl2782028327_)
                                  (___kont4512045121_
                                   _hd2782128324_
                                   _hd2781828314_)
                                  (___kont4513645137_))))
                          (if (gx#stx-null? _tl2781728317_)
                              (___match4526845269_
                               _e2780228405_
                               _hd2780128409_
                               _tl2780028412_
                               _e2781928310_
                               _hd2781828314_
                               _tl2781728317_)
                              (___kont4513645137_)))))
                  (___kont4513645137_))
              (if (let () (declare (not safe)) (equal? _e2780728370_ 'splice:))
                  (if (gx#stx-pair? _tl2780028412_)
                      (let ((_e2783128246_ (gx#syntax-e _tl2780028412_)))
                        (let ((_tl2782928253_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2783128246_)))
                              (_hd2783028250_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2783128246_))))
                          (if (gx#stx-pair? _tl2782928253_)
                              (let ((_e2783428256_
                                     (gx#syntax-e _tl2782928253_)))
                                (let ((_tl2783228263_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2783428256_)))
                                      (_hd2783328260_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2783428256_))))
                                  (if (gx#stx-null? _tl2783228263_)
                                      (___kont4512245123_
                                       _hd2783328260_
                                       _hd2783028250_)
                                      (___kont4513645137_))))
                              (if (gx#stx-null? _tl2782928253_)
                                  (___match4526845269_
                                   _e2780228405_
                                   _hd2780128409_
                                   _tl2780028412_
                                   _e2783128246_
                                   _hd2783028250_
                                   _tl2782928253_)
                                  (___kont4513645137_)))))
                      (___kont4513645137_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e2780728370_ 'box:))
                      (if (gx#stx-pair? _tl2780028412_)
                          (let ((_e2784228201_ (gx#syntax-e _tl2780028412_)))
                            (let ((_tl2784028208_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2784228201_)))
                                  (_hd2784128205_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2784228201_))))
                              (if (gx#stx-null? _tl2784028208_)
                                  (___kont4512445125_ _hd2784128205_)
                                  (___kont4513645137_))))
                          (___kont4513645137_))
                      (if (gx#stx-pair? _tl2780028412_)
                          (let ((_e2785028151_ (gx#syntax-e _tl2780028412_)))
                            (let ((_tl2784828158_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2785028151_)))
                                  (_hd2784928155_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2785028151_))))
                              (if (gx#stx-null? _tl2784828158_)
                                  (___match4526845269_
                                   _e2780228405_
                                   _hd2780128409_
                                   _tl2780028412_
                                   _e2785028151_
                                   _hd2784928155_
                                   _tl2784828158_)
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e2780728370_ 'struct:))
                                      (if (gx#stx-pair? _tl2784828158_)
                                          (let ((_e2786128108_
                                                 (gx#syntax-e _tl2784828158_)))
                                            (let ((_tl2785928115_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2786128108_)))
                                                  (_hd2786028112_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2786128108_))))
                                              (if (gx#stx-null? _tl2785928115_)
                                                  (___kont4512845129_
                                                   _hd2786028112_)
                                                  (___kont4513645137_))))
                                          (___kont4513645137_))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2780728370_ 'class:))
                                          (if (gx#stx-pair? _tl2784828158_)
                                              (let ((_e2787228051_
                                                     (gx#syntax-e
                                                      _tl2784828158_)))
                                                (let ((_tl2787028058_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2787228051_)))
                                                      (_hd2787128055_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2787228051_))))
                                                  (if (gx#stx-null?
                                                       _tl2787028058_)
                                                      (___kont4513045131_
                                                       _hd2787128055_)
                                                      (___kont4513645137_))))
                                              (___kont4513645137_))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e2780728370_ 'apply:))
                                              (if (gx#stx-pair? _tl2784828158_)
                                                  (let ((_e2788427992_
                                                         (gx#syntax-e
                                                          _tl2784828158_)))
                                                    (let ((_tl2788227999_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2788427992_)))
                                                          (_hd2788327996_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2788427992_))))
                                                      (if (gx#stx-null?
                                                           _tl2788227999_)
                                                          (___kont4513245133_
                                                           _hd2788327996_
                                                           _hd2784928155_)
                                                          (___kont4513645137_))))
                                                  (___kont4513645137_))
                                              (___kont4513645137_)))))))
                          (___kont4513645137_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl2780028412_)
                                                (let ((_e2785028151_
                                                       (gx#syntax-e
                                                        _tl2780028412_)))
                                                  (let ((_tl2784828158_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2785028151_)))
                                                        (_hd2784928155_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2785028151_))))
                                                    (if (gx#stx-null?
                                                         _tl2784828158_)
                                                        (___match4526845269_
                                                         _e2780228405_
                                                         _hd2780128409_
                                                         _tl2780028412_
                                                         _e2785028151_
                                                         _hd2784928155_
                                                         _tl2784828158_)
                                                        (___kont4513645137_))))
                                                (___kont4513645137_))))))))
                          (if (gx#stx-pair? ___stx4511145112_)
                              (let ((_e2779328504_
                                     (gx#syntax-e ___stx4511145112_)))
                                (let ((_tl2779128511_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2779328504_)))
                                      (_hd2779228508_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2779328504_))))
                                  (if (gx#stx-datum? _hd2779228508_)
                                      (let ((_e2779428514_
                                             (gx#stx-e _hd2779228508_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e2779428514_ '?:))
                                            (if (gx#stx-pair? _tl2779128511_)
                                                (let ((_e2779728518_
                                                       (gx#syntax-e
                                                        _tl2779128511_)))
                                                  (let ((_tl2779528525_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2779728518_)))
                                                        (_hd2779628522_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2779728518_))))
                                                    (___kont4511445115_
                                                     _tl2779528525_)))
                                                (___match4516245163_
                                                 _e2779328504_
                                                 _hd2779228508_
                                                 _tl2779128511_))
                                            (___match4516245163_
                                             _e2779328504_
                                             _hd2779228508_
                                             _tl2779128511_)))
                                      (___match4516245163_
                                       _e2779328504_
                                       _hd2779228508_
                                       _tl2779128511_))))
                              (___kont4513645137_)))))))
                 (_loop-vector27487_
                  (lambda (_body27648_ _vars27650_ _K27651_)
                    (let* ((___stx4536945370_ _body27648_)
                           (_g2765427677_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4536945370_))))
                      (let ((___kont4537245373_
                             (lambda (_L27754_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-list27488_
                                  _L27754_
                                  _vars27650_
                                  _K27651_))))
                            (___kont4537445375_
                             (lambda (_L27708_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27485_
                                  _L27708_
                                  _vars27650_
                                  _K27651_)))))
                        (if (gx#stx-pair? ___stx4536945370_)
                            (let ((_e2765927730_
                                   (gx#syntax-e ___stx4536945370_)))
                              (let ((_tl2765727737_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2765927730_)))
                                    (_hd2765827734_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2765927730_))))
                                (if (gx#stx-datum? _hd2765827734_)
                                    (let ((_e2766027740_
                                           (gx#stx-e _hd2765827734_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2766027740_ 'simple:))
                                          (if (gx#stx-pair? _tl2765727737_)
                                              (let ((_e2766327744_
                                                     (gx#syntax-e
                                                      _tl2765727737_)))
                                                (let ((_tl2766127751_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2766327744_)))
                                                      (_hd2766227748_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2766327744_))))
                                                  (if (gx#stx-null?
                                                       _tl2766127751_)
                                                      (___kont4537245373_
                                                       _hd2766227748_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2765427677_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2765427677_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e2766027740_ 'list:))
                                              (if (gx#stx-pair? _tl2765727737_)
                                                  (let ((_e2767127698_
                                                         (gx#syntax-e
                                                          _tl2765727737_)))
                                                    (let ((_tl2766927705_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2767127698_)))
                                                          (_hd2767027702_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2767127698_))))
                                                      (if (gx#stx-null?
                                                           _tl2766927705_)
                                                          (___kont4537445375_
                                                           _hd2767027702_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g2765427677_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2765427677_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2765427677_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2765427677_)))))
                            (let () (declare (not safe)) (_g2765427677_)))))))
                 (_loop-list27488_
                  (lambda (_rest27578_ _vars27580_ _K27581_)
                    (let* ((___stx4541945420_ _rest27578_)
                           (_g2758427596_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4541945420_))))
                      (let ((___kont4542245423_
                             (lambda (_L27624_ _L27626_)
                               (let ((__tmp49880
                                      (lambda (_g2763827640_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-list27488_
                                           _L27624_
                                           _g2763827640_
                                           _K27581_)))))
                                 (declare (not safe))
                                 (_loop27485_
                                  _L27626_
                                  _vars27580_
                                  __tmp49880))))
                            (___kont4542445425_
                             (lambda () (_K27581_ _vars27580_))))
                        (if (gx#stx-pair? ___stx4541945420_)
                            (let ((_e2759027614_
                                   (gx#syntax-e ___stx4541945420_)))
                              (let ((_tl2758827621_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2759027614_)))
                                    (_hd2758927618_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2759027614_))))
                                (___kont4542245423_
                                 _tl2758827621_
                                 _hd2758927618_)))
                            (___kont4542445425_))))))
                 (_loop-class-list27489_
                  (lambda (_rest27491_ _vars27493_ _K27494_)
                    (let* ((___stx4543545436_ _rest27491_)
                           (_g2749727512_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4543545436_))))
                      (let ((___kont4543845439_
                             (lambda (_L27550_ _L27552_)
                               (let ((__tmp49881
                                      (lambda (_g2756827570_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-class-list27489_
                                           _L27550_
                                           _g2756827570_
                                           _K27494_)))))
                                 (declare (not safe))
                                 (_loop27485_
                                  _L27552_
                                  _vars27493_
                                  __tmp49881))))
                            (___kont4544045441_
                             (lambda () (_K27494_ _vars27493_))))
                        (if (gx#stx-pair? ___stx4543545436_)
                            (let ((_e2750327530_
                                   (gx#syntax-e ___stx4543545436_)))
                              (let ((_tl2750127537_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2750327530_)))
                                    (_hd2750227534_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2750327530_))))
                                (if (gx#stx-pair? _tl2750127537_)
                                    (let ((_e2750627540_
                                           (gx#syntax-e _tl2750127537_)))
                                      (let ((_tl2750427547_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2750627540_)))
                                            (_hd2750527544_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2750627540_))))
                                        (___kont4543845439_
                                         _tl2750427547_
                                         _hd2750527544_)))
                                    (___kont4544045441_))))
                            (___kont4544045441_)))))))
          (let ()
            (declare (not safe))
            (_loop27485_ _ptree27482_ '() values)))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx24443_ _tgt24445_ _ptree24446_ _K24447_ _E24448_)
        (letrec ((_generate124450_
                  (lambda (_tgt25695_ _ptree25697_ _K25698_ _E25699_)
                    (let* ((_g2570125709_
                            (lambda (_g2570225705_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2570225705_)))
                           (_g2570027478_
                            (lambda (_g2570225713_)
                              ((lambda (_L25716_)
                                 (let ()
                                   (let* ((___stx4567145672_ _ptree25697_)
                                          (_g2574325885_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx4567145672_))))
                                     (let ((___kont4567445675_
                                            (lambda (_L27193_ _L27195_)
                                              (let* ((___stx4558945590_
                                                      _L27193_)
                                                     (_g2721227247_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4558945590_))))
                                                (let ((___kont4559245593_
                                                       (lambda ()
                                                         (let ((__tmp49882
                                                                (let ((__tmp49885
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49888 (gx#datum->syntax '#f '?))
                                     (__tmp49886
                                      (let ((__tmp49887
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25716_ '()))))
                                        (declare (not safe))
                                        (cons _L27195_ __tmp49887))))
                                 (declare (not safe))
                                 (cons __tmp49888 __tmp49886)))
                              (__tmp49883
                               (let ((__tmp49884
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25699_ '()))))
                                 (declare (not safe))
                                 (cons _K25698_ __tmp49884))))
                          (declare (not safe))
                          (cons __tmp49885 __tmp49883))))
                   (declare (not safe))
                   (cons 'if __tmp49882))))
              (___kont4559445595_
               (lambda (_L27448_)
                 (let ((__tmp49889
                        (let ((__tmp49893
                               (let ((__tmp49896 (gx#datum->syntax '#f '?))
                                     (__tmp49894
                                      (let ((__tmp49895
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25716_ '()))))
                                        (declare (not safe))
                                        (cons _L27195_ __tmp49895))))
                                 (declare (not safe))
                                 (cons __tmp49896 __tmp49894)))
                              (__tmp49890
                               (let ((__tmp49892
                                      (let ()
                                        (declare (not safe))
                                        (_generate124450_
                                         _tgt25695_
                                         _L27448_
                                         _K25698_
                                         _E25699_)))
                                     (__tmp49891
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25699_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49892 __tmp49891))))
                          (declare (not safe))
                          (cons __tmp49893 __tmp49890))))
                   (declare (not safe))
                   (cons 'if __tmp49889))))
              (___kont4559645597_
               (lambda (_L27386_)
                 (let* ((_g2740027408_
                         (lambda (_g2740127404_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2740127404_)))
                        (_g2739927427_
                         (lambda (_g2740127412_)
                           ((lambda (_L27415_)
                              (let ()
                                (let ((__tmp49897
                                       (let ((__tmp49904
                                              (let ((__tmp49905
                                                     (let ((__tmp49906
                                                            (let ((__tmp49907
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49908
                                  (let ()
                                    (declare (not safe))
                                    (cons _L25716_ '()))))
                             (declare (not safe))
                             (cons _L27195_ __tmp49908))))
                      (declare (not safe))
                      (cons __tmp49907 '()))))
               (declare (not safe))
               (cons _L27415_ __tmp49906))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49905 '())))
                                             (__tmp49898
                                              (let ((__tmp49899
                                                     (let ((__tmp49900
                                                            (let ((__tmp49901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49903
                                  (let ()
                                    (declare (not safe))
                                    (_generate124450_
                                     _L27415_
                                     _L27386_
                                     _K25698_
                                     _E25699_)))
                                 (__tmp49902
                                  (let ()
                                    (declare (not safe))
                                    (cons _E25699_ '()))))
                             (declare (not safe))
                             (cons __tmp49903 __tmp49902))))
                      (declare (not safe))
                      (cons _L27415_ __tmp49901))))
               (declare (not safe))
               (cons 'if __tmp49900))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49899 '()))))
                                         (declare (not safe))
                                         (cons __tmp49904 __tmp49898))))
                                  (declare (not safe))
                                  (cons 'let __tmp49897))))
                            _g2740127412_)))
                        (__tmp49909 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2739927427_ __tmp49909))))
              (___kont4559845599_
               (lambda (_L27302_ _L27304_)
                 (let* ((_g2732427332_
                         (lambda (_g2732527328_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2732527328_)))
                        (_g2732327351_
                         (lambda (_g2732527336_)
                           ((lambda (_L27339_)
                              (let ()
                                (let ((__tmp49910
                                       (let ((__tmp49922
                                              (let ((__tmp49925
                                                     (gx#datum->syntax '#f '?))
                                                    (__tmp49923
                                                     (let ((__tmp49924
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L25716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L27195_ __tmp49924))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49925 __tmp49923)))
                                             (__tmp49911
                                              (let ((__tmp49913
                                                     (let ((__tmp49914
                                                            (let ((__tmp49917
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49918
                                  (let ((__tmp49919
                                         (let ((__tmp49920
                                                (let ((__tmp49921
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L25716_ '()))))
                                                  (declare (not safe))
                                                  (cons _L27304_ __tmp49921))))
                                           (declare (not safe))
                                           (cons __tmp49920 '()))))
                                    (declare (not safe))
                                    (cons _L27339_ __tmp49919))))
                             (declare (not safe))
                             (cons __tmp49918 '())))
                          (__tmp49915
                           (let ((__tmp49916
                                  (let ()
                                    (declare (not safe))
                                    (_generate124450_
                                     _L27339_
                                     _L27302_
                                     _K25698_
                                     _E25699_))))
                             (declare (not safe))
                             (cons __tmp49916 '()))))
                      (declare (not safe))
                      (cons __tmp49917 __tmp49915))))
               (declare (not safe))
               (cons 'let __tmp49914)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp49912
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25699_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49913 __tmp49912))))
                                         (declare (not safe))
                                         (cons __tmp49922 __tmp49911))))
                                  (declare (not safe))
                                  (cons 'if __tmp49910))))
                            _g2732527336_)))
                        (__tmp49926 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2732327351_ __tmp49926)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g2720927459_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                ___stx4558945590_)
                                                               (let ((_e2721727438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e ___stx4558945590_)))
                         (let ((_tl2721527445_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2721727438_)))
                               (_hd2721627442_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2721727438_))))
                           (if (gx#stx-null? _tl2721527445_)
                               (___kont4559445595_ _hd2721627442_)
                               (if (gx#stx-datum? _hd2721627442_)
                                   (let ((_e2722227372_
                                          (gx#stx-e _hd2721627442_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e2722227372_ '=>:))
                                         (if (gx#stx-pair? _tl2721527445_)
                                             (let ((_e2722527376_
                                                    (gx#syntax-e
                                                     _tl2721527445_)))
                                               (let ((_tl2722327383_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2722527376_)))
                                                     (_hd2722427380_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2722527376_))))
                                                 (if (gx#stx-null?
                                                      _tl2722327383_)
                                                     (___kont4559645597_
                                                      _hd2722427380_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2721227247_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2721227247_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (equal? _e2722227372_ '::))
                                             (if (gx#stx-pair? _tl2721527445_)
                                                 (let ((_e2723427268_
                                                        (gx#syntax-e
                                                         _tl2721527445_)))
                                                   (let ((_tl2723227275_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2723427268_)))
                                                         (_hd2723327272_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2723427268_))))
                                                     (if (gx#stx-pair?
                                                          _tl2723227275_)
                                                         (let ((_e2723727278_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2723227275_)))
                   (let ((_tl2723527285_
                          (let () (declare (not safe)) (##cdr _e2723727278_)))
                         (_hd2723627282_
                          (let () (declare (not safe)) (##car _e2723727278_))))
                     (if (gx#stx-datum? _hd2723627282_)
                         (let ((_e2723827288_ (gx#stx-e _hd2723627282_)))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e2723827288_ '=>:))
                               (if (gx#stx-pair? _tl2723527285_)
                                   (let ((_e2724127292_
                                          (gx#syntax-e _tl2723527285_)))
                                     (let ((_tl2723927299_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2724127292_)))
                                           (_hd2724027296_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2724127292_))))
                                       (if (gx#stx-null? _tl2723927299_)
                                           (___kont4559845599_
                                            _hd2724027296_
                                            _hd2723327272_)
                                           (let ()
                                             (declare (not safe))
                                             (_g2721227247_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2721227247_)))
                               (let () (declare (not safe)) (_g2721227247_))))
                         (let () (declare (not safe)) (_g2721227247_)))))
                 (let () (declare (not safe)) (_g2721227247_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2721227247_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g2721227247_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2721227247_))))))
                       (let () (declare (not safe)) (_g2721227247_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         ___stx4558945590_)
                                                        (___kont4559245593_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g2720927459_))))))))
                                           (___kont4567645677_
                                            (lambda (_L27090_)
                                              (let* ((___stx4557345574_
                                                      _L27090_)
                                                     (_g2710327115_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4557345574_))))
                                                (let ((___kont4557645577_
                                                       (lambda (_L27143_
                                                                _L27145_)
                                                         (let ((__tmp49927
                                                                (let ((__tmp49928
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'and: _L27143_))))
                          (declare (not safe))
                          (_generate124450_
                           _tgt25695_
                           __tmp49928
                           _K25698_
                           _E25699_))))
                   (declare (not safe))
                   (_generate124450_
                    _tgt25695_
                    _L27145_
                    __tmp49927
                    _E25699_))))
              (___kont4557845579_ (lambda () _K25698_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4557345574_)
                                                      (let ((_e2710927133_
                                                             (gx#syntax-e
                                                              ___stx4557345574_)))
                                                        (let ((_tl2710727140_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2710927133_)))
                      (_hd2710827137_
                       (let () (declare (not safe)) (##car _e2710927133_))))
                  (___kont4557645577_ _tl2710727140_ _hd2710827137_)))
              (___kont4557845579_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4567845679_
                                            (lambda (_L26997_)
                                              (let* ((___stx4555745558_
                                                      _L26997_)
                                                     (_g2701027022_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4555745558_))))
                                                (let ((___kont4556045561_
                                                       (lambda (_L27050_
                                                                _L27052_)
                                                         (let ((__tmp49929
                                                                (let ((__tmp49930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'or: _L27050_))))
                          (declare (not safe))
                          (_generate124450_
                           _tgt25695_
                           __tmp49930
                           _K25698_
                           _E25699_))))
                   (declare (not safe))
                   (_generate124450_
                    _tgt25695_
                    _L27052_
                    _K25698_
                    __tmp49929))))
              (___kont4556245563_ (lambda () _E25699_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4555745558_)
                                                      (let ((_e2701627040_
                                                             (gx#syntax-e
                                                              ___stx4555745558_)))
                                                        (let ((_tl2701427047_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2701627040_)))
                      (_hd2701527044_
                       (let () (declare (not safe)) (##car _e2701627040_))))
                  (___kont4556045561_ _tl2701427047_ _hd2701527044_)))
              (___kont4556245563_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4568045681_
                                            (lambda (_L26962_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate124450_
                                                 _tgt25695_
                                                 _L26962_
                                                 _E25699_
                                                 _K25698_))))
                                           (___kont4568245683_
                                            (lambda (_L26844_ _L26846_)
                                              (let* ((_g2686326878_
                                                      (lambda (_g2686426874_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2686426874_)))
                                                     (_g2686226927_
                                                      (lambda (_g2686426882_)
                                                        (if (gx#stx-pair?
                                                             _g2686426882_)
                                                            (let ((_e2686926885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2686426882_)))
                      (let ((_hd2686826889_
                             (let ()
                               (declare (not safe))
                               (##car _e2686926885_)))
                            (_tl2686726892_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2686926885_))))
                        (if (gx#stx-pair? _tl2686726892_)
                            (let ((_e2687226895_ (gx#syntax-e _tl2686726892_)))
                              (let ((_hd2687126899_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2687226895_)))
                                    (_tl2687026902_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2687226895_))))
                                (if (gx#stx-null? _tl2687026902_)
                                    ((lambda (_L26905_ _L26907_)
                                       (let ()
                                         (let ((__tmp49931
                                                (let ((__tmp49969
                                                       (let ((__tmp49971
                                                              (gx#datum->syntax
                                                               '#f
                                                               '##pair?))
                                                             (__tmp49970
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L25716_ '()))))
                 (declare (not safe))
                 (cons __tmp49971 __tmp49970)))
              (__tmp49932
               (let ((__tmp49934
                      (let ((_hd-pat26923_ (gx#stx-e _L26846_))
                            (_tl-pat26925_ (gx#stx-e _L26844_)))
                        (if (and (let ()
                                   (declare (not safe))
                                   (equal? _hd-pat26923_ '(any:)))
                                 (let ()
                                   (declare (not safe))
                                   (equal? _tl-pat26925_ '(any:))))
                            _K25698_
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _tl-pat26925_ '(any:)))
                                (let ((__tmp49960
                                       (let ((__tmp49963
                                              (let ((__tmp49964
                                                     (let ((__tmp49965
                                                            (let ((__tmp49966
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49968 (gx#datum->syntax '#f '##car))
                                 (__tmp49967
                                  (let ()
                                    (declare (not safe))
                                    (cons _L25716_ '()))))
                             (declare (not safe))
                             (cons __tmp49968 __tmp49967))))
                      (declare (not safe))
                      (cons __tmp49966 '()))))
               (declare (not safe))
               (cons _L26907_ __tmp49965))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49964 '())))
                                             (__tmp49961
                                              (let ((__tmp49962
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate124450_
                                                        _L26907_
                                                        _L26846_
                                                        _K25698_
                                                        _E25699_))))
                                                (declare (not safe))
                                                (cons __tmp49962 '()))))
                                         (declare (not safe))
                                         (cons __tmp49963 __tmp49961))))
                                  (declare (not safe))
                                  (cons 'let __tmp49960))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _hd-pat26923_ '(any:)))
                                    (let ((__tmp49951
                                           (let ((__tmp49954
                                                  (let ((__tmp49955
                                                         (let ((__tmp49956
                                                                (let ((__tmp49957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49959 (gx#datum->syntax '#f '##cdr))
                                     (__tmp49958
                                      (let ()
                                        (declare (not safe))
                                        (cons _L25716_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49959 __tmp49958))))
                          (declare (not safe))
                          (cons __tmp49957 '()))))
                   (declare (not safe))
                   (cons _L26905_ __tmp49956))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49955 '())))
                                                 (__tmp49952
                                                  (let ((__tmp49953
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate124450_
                                                            _L26905_
                                                            _L26844_
                                                            _K25698_
                                                            _E25699_))))
                                                    (declare (not safe))
                                                    (cons __tmp49953 '()))))
                                             (declare (not safe))
                                             (cons __tmp49954 __tmp49952))))
                                      (declare (not safe))
                                      (cons 'let __tmp49951))
                                    (let ((__tmp49935
                                           (let ((__tmp49939
                                                  (let ((__tmp49946
                                                         (let ((__tmp49947
                                                                (let ((__tmp49948
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49950 (gx#datum->syntax '#f '##car))
                                     (__tmp49949
                                      (let ()
                                        (declare (not safe))
                                        (cons _L25716_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49950 __tmp49949))))
                          (declare (not safe))
                          (cons __tmp49948 '()))))
                   (declare (not safe))
                   (cons _L26907_ __tmp49947)))
                (__tmp49940
                 (let ((__tmp49941
                        (let ((__tmp49942
                               (let ((__tmp49943
                                      (let ((__tmp49945
                                             (gx#datum->syntax '#f '##cdr))
                                            (__tmp49944
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25716_ '()))))
                                        (declare (not safe))
                                        (cons __tmp49945 __tmp49944))))
                                 (declare (not safe))
                                 (cons __tmp49943 '()))))
                          (declare (not safe))
                          (cons _L26905_ __tmp49942))))
                   (declare (not safe))
                   (cons __tmp49941 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49946
                                                          __tmp49940)))
                                                 (__tmp49936
                                                  (let ((__tmp49937
                                                         (let ((__tmp49938
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_generate124450_
                           _L26905_
                           _L26844_
                           _K25698_
                           _E25699_))))
                   (declare (not safe))
                   (_generate124450_ _L26907_ _L26846_ __tmp49938 _E25699_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49937 '()))))
                                             (declare (not safe))
                                             (cons __tmp49939 __tmp49936))))
                                      (declare (not safe))
                                      (cons 'let __tmp49935)))))))
                     (__tmp49933
                      (let () (declare (not safe)) (cons _E25699_ '()))))
                 (declare (not safe))
                 (cons __tmp49934 __tmp49933))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49969
                                                        __tmp49932))))
                                           (declare (not safe))
                                           (cons 'if __tmp49931))))
                                     _hd2687126899_
                                     _hd2686826889_)
                                    (let ()
                                      (declare (not safe))
                                      (_g2686326878_ _g2686426882_)))))
                            (let ()
                              (declare (not safe))
                              (_g2686326878_ _g2686426882_)))))
                    (let ()
                      (declare (not safe))
                      (_g2686326878_ _g2686426882_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49972
                                                      (list (gx#genident 'hd)
                                                            (gx#genident
                                                             'tl))))
                                                (declare (not safe))
                                                (_g2686226927_ __tmp49972))))
                                           (___kont4568445685_
                                            (lambda ()
                                              (let ((__tmp49973
                                                     (let ((__tmp49976
                                                            (let ((__tmp49978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##null?))
                          (__tmp49977
                           (let () (declare (not safe)) (cons _L25716_ '()))))
                      (declare (not safe))
                      (cons __tmp49978 __tmp49977)))
                   (__tmp49974
                    (let ((__tmp49975
                           (let () (declare (not safe)) (cons _E25699_ '()))))
                      (declare (not safe))
                      (cons _K25698_ __tmp49975))))
               (declare (not safe))
               (cons __tmp49976 __tmp49974))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'if __tmp49973))))
                                           (___kont4568645687_
                                            (lambda (_L26760_ _L26762_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate-splice24452_
                                                 _tgt25695_
                                                 _L26762_
                                                 _L26760_
                                                 _K25698_
                                                 _E25699_))))
                                           (___kont4568845689_
                                            (lambda (_L26674_)
                                              (let* ((_g2668826696_
                                                      (lambda (_g2668926692_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2668926692_)))
                                                     (_g2668726715_
                                                      (lambda (_g2668926700_)
                                                        ((lambda (_L26703_)
                                                           (let ()
                                                             (let ((__tmp49979
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49992
                                   (let ((__tmp49994
                                          (gx#datum->syntax '#f '##box?))
                                         (__tmp49993
                                          (let ()
                                            (declare (not safe))
                                            (cons _L25716_ '()))))
                                     (declare (not safe))
                                     (cons __tmp49994 __tmp49993)))
                                  (__tmp49980
                                   (let ((__tmp49982
                                          (let ((__tmp49983
                                                 (let ((__tmp49986
                                                        (let ((__tmp49987
                                                               (let ((__tmp49988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp49989
                                     (let ((__tmp49991
                                            (gx#datum->syntax '#f '##unbox))
                                           (__tmp49990
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25716_ '()))))
                                       (declare (not safe))
                                       (cons __tmp49991 __tmp49990))))
                                (declare (not safe))
                                (cons __tmp49989 '()))))
                         (declare (not safe))
                         (cons _L26703_ __tmp49988))))
                  (declare (not safe))
                  (cons __tmp49987 '())))
               (__tmp49984
                (let ((__tmp49985
                       (let ()
                         (declare (not safe))
                         (_generate124450_
                          _L26703_
                          _L26674_
                          _K25698_
                          _E25699_))))
                  (declare (not safe))
                  (cons __tmp49985 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49986
                                                         __tmp49984))))
                                            (declare (not safe))
                                            (cons 'let __tmp49983)))
                                         (__tmp49981
                                          (let ()
                                            (declare (not safe))
                                            (cons _E25699_ '()))))
                                     (declare (not safe))
                                     (cons __tmp49982 __tmp49981))))
                              (declare (not safe))
                              (cons __tmp49992 __tmp49980))))
                       (declare (not safe))
                       (cons 'if __tmp49979))))
                 _g2668926700_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49995
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2668726715_ __tmp49995))))
                                           (___kont4569045691_
                                            (lambda (_L26479_)
                                              (let* ((___stx4550745508_
                                                      _L26479_)
                                                     (_g2649426517_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4550745508_))))
                                                (let ((___kont4551045511_
                                                       (lambda (_L26594_)
                                                         (let* ((_g2660826616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2660926612_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2660926612_)))
                        (_g2660726635_
                         (lambda (_g2660926620_)
                           ((lambda (_L26623_)
                              (let ()
                                (let ((__tmp49996
                                       (let ((__tmp50000
                                              (let ((__tmp50006
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##fx=))
                                                    (__tmp50001
                                                     (let ((__tmp50003
                                                            (let ((__tmp50005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'values-count))
                          (__tmp50004
                           (let () (declare (not safe)) (cons _L25716_ '()))))
                      (declare (not safe))
                      (cons __tmp50005 __tmp50004)))
                   (__tmp50002
                    (let () (declare (not safe)) (cons _L26623_ '()))))
               (declare (not safe))
               (cons __tmp50003 __tmp50002))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50006 __tmp50001)))
                                             (__tmp49997
                                              (let ((__tmp49999
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-vector24453_
                                                        _tgt25695_
                                                        _L26594_
                                                        '0
                                                        _K25698_
                                                        _E25699_)))
                                                    (__tmp49998
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25699_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49999 __tmp49998))))
                                         (declare (not safe))
                                         (cons __tmp50000 __tmp49997))))
                                  (declare (not safe))
                                  (cons 'if __tmp49996))))
                            _g2660926620_)))
                        (__tmp50007 (gx#stx-length _L26594_)))
                   (declare (not safe))
                   (_g2660726635_ __tmp50007))))
              (___kont4551245513_
               (lambda (_L26548_)
                 (let ()
                   (declare (not safe))
                   (_generate-list-vector24454_
                    _tgt25695_
                    _L26548_
                    'values->list
                    _K25698_
                    _E25699_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4550745508_)
                                                      (let ((_e2649926570_
                                                             (gx#syntax-e
                                                              ___stx4550745508_)))
                                                        (let ((_tl2649726577_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2649926570_)))
                      (_hd2649826574_
                       (let () (declare (not safe)) (##car _e2649926570_))))
                  (if (gx#stx-datum? _hd2649826574_)
                      (let ((_e2650026580_ (gx#stx-e _hd2649826574_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e2650026580_ 'simple:))
                            (if (gx#stx-pair? _tl2649726577_)
                                (let ((_e2650326584_
                                       (gx#syntax-e _tl2649726577_)))
                                  (let ((_tl2650126591_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2650326584_)))
                                        (_hd2650226588_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2650326584_))))
                                    (if (gx#stx-null? _tl2650126591_)
                                        (___kont4551045511_ _hd2650226588_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2649426517_)))))
                                (let () (declare (not safe)) (_g2649426517_)))
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _e2650026580_ 'list:))
                                (if (gx#stx-pair? _tl2649726577_)
                                    (let ((_e2651126538_
                                           (gx#syntax-e _tl2649726577_)))
                                      (let ((_tl2650926545_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2651126538_)))
                                            (_hd2651026542_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2651126538_))))
                                        (if (gx#stx-null? _tl2650926545_)
                                            (___kont4551245513_ _hd2651026542_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2649426517_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2649426517_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2649426517_)))))
                      (let () (declare (not safe)) (_g2649426517_)))))
              (let () (declare (not safe)) (_g2649426517_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4569245693_
                                            (lambda (_L26284_)
                                              (let* ((___stx4545745458_
                                                      _L26284_)
                                                     (_g2629926322_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4545745458_))))
                                                (let ((___kont4546045461_
                                                       (lambda (_L26399_)
                                                         (let* ((_g2641326421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2641426417_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2641426417_)))
                        (_g2641226440_
                         (lambda (_g2641426425_)
                           ((lambda (_L26428_)
                              (let ()
                                (let ((__tmp50008
                                       (let ((__tmp50023
                                              (let ((__tmp50025
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##vector?))
                                                    (__tmp50024
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L25716_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50025 __tmp50024)))
                                             (__tmp50009
                                              (let ((__tmp50011
                                                     (let ((__tmp50012
                                                            (let ((__tmp50016
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50022 (gx#datum->syntax '#f '##fx=))
                                 (__tmp50017
                                  (let ((__tmp50019
                                         (let ((__tmp50021
                                                (gx#datum->syntax
                                                 '#f
                                                 '##vector-length))
                                               (__tmp50020
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L25716_ '()))))
                                           (declare (not safe))
                                           (cons __tmp50021 __tmp50020)))
                                        (__tmp50018
                                         (let ()
                                           (declare (not safe))
                                           (cons _L26428_ '()))))
                                    (declare (not safe))
                                    (cons __tmp50019 __tmp50018))))
                             (declare (not safe))
                             (cons __tmp50022 __tmp50017)))
                          (__tmp50013
                           (let ((__tmp50015
                                  (let ()
                                    (declare (not safe))
                                    (_generate-simple-vector24453_
                                     _tgt25695_
                                     _L26399_
                                     '0
                                     _K25698_
                                     _E25699_)))
                                 (__tmp50014
                                  (let ()
                                    (declare (not safe))
                                    (cons _E25699_ '()))))
                             (declare (not safe))
                             (cons __tmp50015 __tmp50014))))
                      (declare (not safe))
                      (cons __tmp50016 __tmp50013))))
               (declare (not safe))
               (cons 'if __tmp50012)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp50010
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E25699_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50011 __tmp50010))))
                                         (declare (not safe))
                                         (cons __tmp50023 __tmp50009))))
                                  (declare (not safe))
                                  (cons 'if __tmp50008))))
                            _g2641426425_)))
                        (__tmp50026 (gx#stx-length _L26399_)))
                   (declare (not safe))
                   (_g2641226440_ __tmp50026))))
              (___kont4546245463_
               (lambda (_L26353_)
                 (let ((__tmp50027
                        (let ((__tmp50031
                               (let ((__tmp50033
                                      (gx#datum->syntax '#f '##vector?))
                                     (__tmp50032
                                      (let ()
                                        (declare (not safe))
                                        (cons _L25716_ '()))))
                                 (declare (not safe))
                                 (cons __tmp50033 __tmp50032)))
                              (__tmp50028
                               (let ((__tmp50030
                                      (let ()
                                        (declare (not safe))
                                        (_generate-list-vector24454_
                                         _tgt25695_
                                         _L26353_
                                         'vector->list
                                         _K25698_
                                         _E25699_)))
                                     (__tmp50029
                                      (let ()
                                        (declare (not safe))
                                        (cons _E25699_ '()))))
                                 (declare (not safe))
                                 (cons __tmp50030 __tmp50029))))
                          (declare (not safe))
                          (cons __tmp50031 __tmp50028))))
                   (declare (not safe))
                   (cons 'if __tmp50027)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4545745458_)
                                                      (let ((_e2630426375_
                                                             (gx#syntax-e
                                                              ___stx4545745458_)))
                                                        (let ((_tl2630226382_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2630426375_)))
                      (_hd2630326379_
                       (let () (declare (not safe)) (##car _e2630426375_))))
                  (if (gx#stx-datum? _hd2630326379_)
                      (let ((_e2630526385_ (gx#stx-e _hd2630326379_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e2630526385_ 'simple:))
                            (if (gx#stx-pair? _tl2630226382_)
                                (let ((_e2630826389_
                                       (gx#syntax-e _tl2630226382_)))
                                  (let ((_tl2630626396_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2630826389_)))
                                        (_hd2630726393_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2630826389_))))
                                    (if (gx#stx-null? _tl2630626396_)
                                        (___kont4546045461_ _hd2630726393_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2629926322_)))))
                                (let () (declare (not safe)) (_g2629926322_)))
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _e2630526385_ 'list:))
                                (if (gx#stx-pair? _tl2630226382_)
                                    (let ((_e2631626343_
                                           (gx#syntax-e _tl2630226382_)))
                                      (let ((_tl2631426350_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2631626343_)))
                                            (_hd2631526347_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2631626343_))))
                                        (if (gx#stx-null? _tl2631426350_)
                                            (___kont4546245463_ _hd2631526347_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2629926322_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2629926322_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2629926322_)))))
                      (let () (declare (not safe)) (_g2629926322_)))))
              (let () (declare (not safe)) (_g2629926322_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4569445695_
                                            (lambda (_L26235_ _L26237_)
                                              (let ((__tmp50034
                                                     (gx#stx-e _L26237_)))
                                                (declare (not safe))
                                                (_generate-struct24455_
                                                 __tmp50034
                                                 _tgt25695_
                                                 _L26235_
                                                 _K25698_
                                                 _E25699_))))
                                           (___kont4569645697_
                                            (lambda (_L26176_ _L26178_)
                                              (let ((__tmp50035
                                                     (gx#stx-e _L26178_)))
                                                (declare (not safe))
                                                (_generate-class24458_
                                                 __tmp50035
                                                 _tgt25695_
                                                 _L26176_
                                                 _K25698_
                                                 _E25699_))))
                                           (___kont4569845699_
                                            (lambda (_L26079_)
                                              (let* ((_g2609326101_
                                                      (lambda (_g2609426097_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2609426097_)))
                                                     (_g2609226120_
                                                      (lambda (_g2609426105_)
                                                        ((lambda (_L26108_)
                                                           (let ()
                                                             (let ((__tmp50036
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50039
                                   (let ((__tmp50040
                                          (let ((__tmp50041
                                                 (let ((__tmp50042
                                                        (let ((__tmp50044
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp50043
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L26079_ '()))))
                  (declare (not safe))
                  (cons __tmp50044 __tmp50043))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50042 '()))))
                                            (declare (not safe))
                                            (cons _L25716_ __tmp50041))))
                                     (declare (not safe))
                                     (cons _L26108_ __tmp50040)))
                                  (__tmp50037
                                   (let ((__tmp50038
                                          (let ()
                                            (declare (not safe))
                                            (cons _E25699_ '()))))
                                     (declare (not safe))
                                     (cons _K25698_ __tmp50038))))
                              (declare (not safe))
                              (cons __tmp50039 __tmp50037))))
                       (declare (not safe))
                       (cons 'if __tmp50036))))
                 _g2609426105_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50045
                                                      (let ((_e26124_
                                                             (gx#stx-e
                                                              _L26079_)))
                                                        (if (or (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (symbol? _e26124_))
                        (keyword? _e26124_)
                        (let () (declare (not safe)) (immediate? _e26124_)))
                    '##eq?
                    (if (let () (declare (not safe)) (number? _e26124_))
                        'eqv?
                        'equal?)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g2609226120_ __tmp50045))))
                                           (___kont4570045701_
                                            (lambda (_L25999_ _L26001_)
                                              (let* ((_g2601726025_
                                                      (lambda (_g2601826021_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2601826021_)))
                                                     (_g2601626044_
                                                      (lambda (_g2601826029_)
                                                        ((lambda (_L26032_)
                                                           (let ()
                                                             (let ((__tmp50046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50049
                                   (let ((__tmp50050
                                          (let ((__tmp50051
                                                 (let ((__tmp50052
                                                        (let ((__tmp50053
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L25716_ '()))))
                  (declare (not safe))
                  (cons _L26001_ __tmp50053))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50052 '()))))
                                            (declare (not safe))
                                            (cons _L26032_ __tmp50051))))
                                     (declare (not safe))
                                     (cons __tmp50050 '())))
                                  (__tmp50047
                                   (let ((__tmp50048
                                          (let ()
                                            (declare (not safe))
                                            (_generate124450_
                                             _L26032_
                                             _L25999_
                                             _K25698_
                                             _E25699_))))
                                     (declare (not safe))
                                     (cons __tmp50048 '()))))
                              (declare (not safe))
                              (cons __tmp50049 __tmp50047))))
                       (declare (not safe))
                       (cons 'let __tmp50046))))
                 _g2601826029_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50054
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2601626044_ __tmp50054))))
                                           (___kont4570245703_
                                            (lambda (_L25941_)
                                              (let ((__tmp50055
                                                     (let ((__tmp50057
                                                            (let ((__tmp50058
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50059
                                  (let ()
                                    (declare (not safe))
                                    (cons _L25716_ '()))))
                             (declare (not safe))
                             (cons _L25941_ __tmp50059))))
                      (declare (not safe))
                      (cons __tmp50058 '())))
                   (__tmp50056
                    (let () (declare (not safe)) (cons _K25698_ '()))))
               (declare (not safe))
               (cons __tmp50057 __tmp50056))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp50055))))
                                           (___kont4570445705_
                                            (lambda () _K25698_)))
                                       (if (gx#stx-pair? ___stx4567145672_)
                                           (let ((_e2574927169_
                                                  (gx#syntax-e
                                                   ___stx4567145672_)))
                                             (let ((_tl2574727176_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2574927169_)))
                                                   (_hd2574827173_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2574927169_))))
                                               (if (gx#stx-datum?
                                                    _hd2574827173_)
                                                   (let ((_e2575027179_
                                                          (gx#stx-e
                                                           _hd2574827173_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e2575027179_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '?:))
                 (if (gx#stx-pair? _tl2574727176_)
                     (let ((_e2575327183_ (gx#syntax-e _tl2574727176_)))
                       (let ((_tl2575127190_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2575327183_)))
                             (_hd2575227187_
                              (let ()
                                (declare (not safe))
                                (##car _e2575327183_))))
                         (___kont4567445675_ _tl2575127190_ _hd2575227187_)))
                     (let () (declare (not safe)) (_g2574325885_)))
                 (if (let () (declare (not safe)) (equal? _e2575027179_ 'and:))
                     (___kont4567645677_ _tl2574727176_)
                     (if (let ()
                           (declare (not safe))
                           (equal? _e2575027179_ 'or:))
                         (___kont4567845679_ _tl2574727176_)
                         (if (let ()
                               (declare (not safe))
                               (equal? _e2575027179_ 'not:))
                             (if (gx#stx-pair? _tl2574727176_)
                                 (let ((_e2577126952_
                                        (gx#syntax-e _tl2574727176_)))
                                   (let ((_tl2576926959_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2577126952_)))
                                         (_hd2577026956_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2577126952_))))
                                     (if (gx#stx-null? _tl2576926959_)
                                         (___kont4568045681_ _hd2577026956_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2574325885_)))))
                                 (let () (declare (not safe)) (_g2574325885_)))
                             (if (let ()
                                   (declare (not safe))
                                   (equal? _e2575027179_ 'cons:))
                                 (if (gx#stx-pair? _tl2574727176_)
                                     (let ((_e2578026824_
                                            (gx#syntax-e _tl2574727176_)))
                                       (let ((_tl2577826831_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2578026824_)))
                                             (_hd2577926828_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2578026824_))))
                                         (if (gx#stx-pair? _tl2577826831_)
                                             (let ((_e2578326834_
                                                    (gx#syntax-e
                                                     _tl2577826831_)))
                                               (let ((_tl2578126841_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2578326834_)))
                                                     (_hd2578226838_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2578326834_))))
                                                 (if (gx#stx-null?
                                                      _tl2578126841_)
                                                     (___kont4568245683_
                                                      _hd2578226838_
                                                      _hd2577926828_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2574325885_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2574325885_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g2574325885_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e2575027179_ 'null:))
                                     (if (gx#stx-null? _tl2574727176_)
                                         (___kont4568445685_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2574325885_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e2575027179_ 'splice:))
                                         (if (gx#stx-pair? _tl2574727176_)
                                             (let ((_e2579626740_
                                                    (gx#syntax-e
                                                     _tl2574727176_)))
                                               (let ((_tl2579426747_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2579626740_)))
                                                     (_hd2579526744_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2579626740_))))
                                                 (if (gx#stx-pair?
                                                      _tl2579426747_)
                                                     (let ((_e2579926750_
                                                            (gx#syntax-e
                                                             _tl2579426747_)))
                                                       (let ((_tl2579726757_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e2579926750_)))
                     (_hd2579826754_
                      (let () (declare (not safe)) (##car _e2579926750_))))
                 (if (gx#stx-null? _tl2579726757_)
                     (___kont4568645687_ _hd2579826754_ _hd2579526744_)
                     (let () (declare (not safe)) (_g2574325885_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2574325885_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2574325885_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (equal? _e2575027179_ 'box:))
                                             (if (gx#stx-pair? _tl2574727176_)
                                                 (let ((_e2580726664_
                                                        (gx#syntax-e
                                                         _tl2574727176_)))
                                                   (let ((_tl2580526671_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2580726664_)))
                                                         (_hd2580626668_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2580726664_))))
                                                     (if (gx#stx-null?
                                                          _tl2580526671_)
                                                         (___kont4568845689_
                                                          _hd2580626668_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g2574325885_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2574325885_)))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (equal? _e2575027179_
                                                           'values:))
                                                 (if (gx#stx-pair?
                                                      _tl2574727176_)
                                                     (let ((_e2581526469_
                                                            (gx#syntax-e
                                                             _tl2574727176_)))
                                                       (let ((_tl2581326476_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e2581526469_)))
                     (_hd2581426473_
                      (let () (declare (not safe)) (##car _e2581526469_))))
                 (if (gx#stx-null? _tl2581326476_)
                     (___kont4569045691_ _hd2581426473_)
                     (let () (declare (not safe)) (_g2574325885_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2574325885_)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (equal? _e2575027179_
                                                               'vector:))
                                                     (if (gx#stx-pair?
                                                          _tl2574727176_)
                                                         (let ((_e2582326274_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2574727176_)))
                   (let ((_tl2582126281_
                          (let () (declare (not safe)) (##cdr _e2582326274_)))
                         (_hd2582226278_
                          (let () (declare (not safe)) (##car _e2582326274_))))
                     (if (gx#stx-null? _tl2582126281_)
                         (___kont4569245693_ _hd2582226278_)
                         (let () (declare (not safe)) (_g2574325885_)))))
                 (let () (declare (not safe)) (_g2574325885_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e2575027179_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'struct:))
                 (if (gx#stx-pair? _tl2574727176_)
                     (let ((_e2583226215_ (gx#syntax-e _tl2574727176_)))
                       (let ((_tl2583026222_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2583226215_)))
                             (_hd2583126219_
                              (let ()
                                (declare (not safe))
                                (##car _e2583226215_))))
                         (if (gx#stx-pair? _tl2583026222_)
                             (let ((_e2583526225_
                                    (gx#syntax-e _tl2583026222_)))
                               (let ((_tl2583326232_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2583526225_)))
                                     (_hd2583426229_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2583526225_))))
                                 (if (gx#stx-null? _tl2583326232_)
                                     (___kont4569445695_
                                      _hd2583426229_
                                      _hd2583126219_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2574325885_)))))
                             (let () (declare (not safe)) (_g2574325885_)))))
                     (let () (declare (not safe)) (_g2574325885_)))
                 (if (let ()
                       (declare (not safe))
                       (equal? _e2575027179_ 'class:))
                     (if (gx#stx-pair? _tl2574727176_)
                         (let ((_e2584426156_ (gx#syntax-e _tl2574727176_)))
                           (let ((_tl2584226163_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2584426156_)))
                                 (_hd2584326160_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2584426156_))))
                             (if (gx#stx-pair? _tl2584226163_)
                                 (let ((_e2584726166_
                                        (gx#syntax-e _tl2584226163_)))
                                   (let ((_tl2584526173_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2584726166_)))
                                         (_hd2584626170_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2584726166_))))
                                     (if (gx#stx-null? _tl2584526173_)
                                         (___kont4569645697_
                                          _hd2584626170_
                                          _hd2584326160_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2574325885_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g2574325885_)))))
                         (let () (declare (not safe)) (_g2574325885_)))
                     (if (let ()
                           (declare (not safe))
                           (equal? _e2575027179_ 'datum:))
                         (if (gx#stx-pair? _tl2574727176_)
                             (let ((_e2585526069_
                                    (gx#syntax-e _tl2574727176_)))
                               (let ((_tl2585326076_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2585526069_)))
                                     (_hd2585426073_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2585526069_))))
                                 (if (gx#stx-null? _tl2585326076_)
                                     (___kont4569845699_ _hd2585426073_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2574325885_)))))
                             (let () (declare (not safe)) (_g2574325885_)))
                         (if (let ()
                               (declare (not safe))
                               (equal? _e2575027179_ 'apply:))
                             (if (gx#stx-pair? _tl2574727176_)
                                 (let ((_e2586425979_
                                        (gx#syntax-e _tl2574727176_)))
                                   (let ((_tl2586225986_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2586425979_)))
                                         (_hd2586325983_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2586425979_))))
                                     (if (gx#stx-pair? _tl2586225986_)
                                         (let ((_e2586725989_
                                                (gx#syntax-e _tl2586225986_)))
                                           (let ((_tl2586525996_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e2586725989_)))
                                                 (_hd2586625993_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e2586725989_))))
                                             (if (gx#stx-null? _tl2586525996_)
                                                 (___kont4570045701_
                                                  _hd2586625993_
                                                  _hd2586325983_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2574325885_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_g2574325885_)))))
                                 (let () (declare (not safe)) (_g2574325885_)))
                             (if (let ()
                                   (declare (not safe))
                                   (equal? _e2575027179_ 'var:))
                                 (if (gx#stx-pair? _tl2574727176_)
                                     (let ((_e2587525931_
                                            (gx#syntax-e _tl2574727176_)))
                                       (let ((_tl2587325938_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2587525931_)))
                                             (_hd2587425935_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2587525931_))))
                                         (if (gx#stx-null? _tl2587325938_)
                                             (___kont4570245703_
                                              _hd2587425935_)
                                             (let ()
                                               (declare (not safe))
                                               (_g2574325885_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g2574325885_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e2575027179_ 'any:))
                                     (if (gx#stx-null? _tl2574727176_)
                                         (___kont4570445705_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2574325885_)))
                                     (let ()
                                       (declare (not safe))
                                       (_g2574325885_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g2574325885_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g2574325885_)))))))
                               _g2570225713_))))
                      (declare (not safe))
                      (_g2570027478_ _tgt25695_))))
                 (_generate-splice24452_
                  (lambda (_tgt25067_ _hd25069_ _rest25070_ _K25071_ _E25072_)
                    (let* ((_g2507425091_
                            (lambda (_g2507525087_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2507525087_)))
                           (_g2507325691_
                            (lambda (_g2507525095_)
                              (if (gx#stx-pair/null? _g2507525095_)
                                  (let ((_g50060_
                                         (gx#syntax-split-splice
                                          _g2507525095_
                                          '0)))
                                    (begin
                                      (let ((_g50061_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g50060_)
                                                   (##vector-length _g50060_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g50061_ 2)))
                                            (error "Context expects 2 values"
                                                   _g50061_)))
                                      (let ((_target2507725098_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g50060_ 0)))
                                            (_tl2507925101_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g50060_ 1))))
                                        (if (gx#stx-null? _tl2507925101_)
                                            (letrec ((_loop2508025104_
                                                      (lambda (_hd2507825108_
                                                               _var2508425111_)
                                                        (if (gx#stx-pair?
                                                             _hd2507825108_)
                                                            (let ((_e2508125114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2507825108_)))
                      (let ((_lp-hd2508225118_
                             (let ()
                               (declare (not safe))
                               (##car _e2508125114_)))
                            (_lp-tl2508325121_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2508125114_))))
                        (let ((__tmp50152
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd2508225118_ _var2508425111_))))
                          (declare (not safe))
                          (_loop2508025104_ _lp-tl2508325121_ __tmp50152))))
                    (let ((_var2508525124_ (reverse _var2508425111_)))
                      ((lambda (_L25128_)
                         (let ()
                           (let* ((_g2514425161_
                                   (lambda (_g2514525157_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2514525157_)))
                                  (_g2514325679_
                                   (lambda (_g2514525165_)
                                     (if (gx#stx-pair/null? _g2514525165_)
                                         (let ((_g50062_
                                                (gx#syntax-split-splice
                                                 _g2514525165_
                                                 '0)))
                                           (begin
                                             (let ((_g50063_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g50062_)
                                                          (##vector-length
                                                           _g50062_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g50063_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g50063_)))
                                             (let ((_target2514725168_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g50062_
                                                       0)))
                                                   (_tl2514925171_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g50062_
                                                       1))))
                                               (if (gx#stx-null?
                                                    _tl2514925171_)
                                                   (letrec ((_loop2515025174_
                                                             (lambda (_hd2514825178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _var-r2515425181_)
                       (if (gx#stx-pair? _hd2514825178_)
                           (let ((_e2515125184_ (gx#syntax-e _hd2514825178_)))
                             (let ((_lp-hd2515225188_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e2515125184_)))
                                   (_lp-tl2515325191_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e2515125184_))))
                               (let ((__tmp50149
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd2515225188_
                                              _var-r2515425181_))))
                                 (declare (not safe))
                                 (_loop2515025174_
                                  _lp-tl2515325191_
                                  __tmp50149))))
                           (let ((_var-r2515525194_
                                  (reverse _var-r2515425181_)))
                             ((lambda (_L25198_)
                                (let ()
                                  (let* ((_g2521525232_
                                          (lambda (_g2521625228_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g2521625228_)))
                                         (_g2521425667_
                                          (lambda (_g2521625236_)
                                            (if (gx#stx-pair/null?
                                                 _g2521625236_)
                                                (let ((_g50064_
                                                       (gx#syntax-split-splice
                                                        _g2521625236_
                                                        '0)))
                                                  (begin
                                                    (let ((_g50065_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g50064_)
                         (##vector-length _g50064_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g50065_ 2)))
                  (error "Context expects 2 values" _g50065_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2521825239_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g50064_
                                                              0)))
                                                          (_tl2522025242_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g50064_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl2522025242_)
                                                          (letrec ((_loop2522125245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2521925249_ _init2522525252_)
                              (if (gx#stx-pair? _hd2521925249_)
                                  (let ((_e2522225255_
                                         (gx#syntax-e _hd2521925249_)))
                                    (let ((_lp-hd2522325259_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2522225255_)))
                                          (_lp-tl2522425262_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2522225255_))))
                                      (let ((__tmp50145
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2522325259_
                                                     _init2522525252_))))
                                        (declare (not safe))
                                        (_loop2522125245_
                                         _lp-tl2522425262_
                                         __tmp50145))))
                                  (let ((_init2522625265_
                                         (reverse _init2522525252_)))
                                    ((lambda (_L25269_)
                                       (let ()
                                         (let* ((_g2528625294_
                                                 (lambda (_g2528725290_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g2528725290_)))
                                                (_g2528525663_
                                                 (lambda (_g2528725298_)
                                                   ((lambda (_L25301_)
                                                      (let ()
                                                        (let* ((_g2531425322_
                                                                (lambda (_g2531525318_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g2531525318_)))
                       (_g2531325659_
                        (lambda (_g2531525326_)
                          ((lambda (_L25329_)
                             (let ()
                               (let* ((_g2534225350_
                                       (lambda (_g2534325346_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2534325346_)))
                                      (_g2534125655_
                                       (lambda (_g2534325354_)
                                         ((lambda (_L25357_)
                                            (let ()
                                              (let* ((_g2537025378_
                                                      (lambda (_g2537125374_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2537125374_)))
                                                     (_g2536925651_
                                                      (lambda (_g2537125382_)
                                                        ((lambda (_L25385_)
                                                           (let ()
                                                             (let* ((_g2539825406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g2539925402_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2539925402_)))
                            (_g2539725647_
                             (lambda (_g2539925410_)
                               ((lambda (_L25413_)
                                  (let ()
                                    (let* ((_g2542625434_
                                            (lambda (_g2542725430_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2542725430_)))
                                           (_g2542525643_
                                            (lambda (_g2542725438_)
                                              ((lambda (_L25441_)
                                                 (let ()
                                                   (let* ((_g2545425462_
                                                           (lambda (_g2545525458_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g2545525458_)))
                                                          (_g2545325639_
                                                           (lambda (_g2545525466_)
                                                             ((lambda (_L25469_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g2548225490_
                                  (lambda (_g2548325486_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g2548325486_)))
                                 (_g2548125624_
                                  (lambda (_g2548325494_)
                                    ((lambda (_L25497_)
                                       (let ()
                                         (let* ((_g2551025518_
                                                 (lambda (_g2551125514_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g2551125514_)))
                                                (_g2550925612_
                                                 (lambda (_g2551125522_)
                                                   ((lambda (_L25525_)
                                                      (let ()
                                                        (let* ((_g2553825546_
                                                                (lambda (_g2553925542_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g2553925542_)))
                       (_g2553725608_
                        (lambda (_g2553925550_)
                          ((lambda (_L25553_)
                             (let ()
                               (let ()
                                 (let ((__tmp50119
                                        (gx#datum->syntax '#f 'letrec))
                                       (__tmp50066
                                        (let ((__tmp50072
                                               (let ((__tmp50110
                                                      (let ((__tmp50111
                                                             (let ((__tmp50112
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50118 (gx#datum->syntax '#f 'lambda))
                                  (__tmp50113
                                   (let ((__tmp50115
                                          (let ((__tmp50116
                                                 (let ((__tmp50117
                                                        (lambda (_g2557525578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2557625581_)
                  (let ()
                    (declare (not safe))
                    (cons _g2557525578_ _g2557625581_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 __tmp50117
                                                           '()
                                                           _L25128_))))
                                            (declare (not safe))
                                            (cons _L25441_ __tmp50116)))
                                         (__tmp50114
                                          (let ()
                                            (declare (not safe))
                                            (cons _L25469_ '()))))
                                     (declare (not safe))
                                     (cons __tmp50115 __tmp50114))))
                              (declare (not safe))
                              (cons __tmp50118 __tmp50113))))
                       (declare (not safe))
                       (cons __tmp50112 '()))))
                (declare (not safe))
                (cons _L25329_ __tmp50111)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50073
                                                      (let ((__tmp50100
                                                             (let ((__tmp50101
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50102
                                   (let ((__tmp50109
                                          (gx#datum->syntax '#f 'lambda))
                                         (__tmp50103
                                          (let ((__tmp50105
                                                 (let ((__tmp50106
                                                        (let ((__tmp50107
                                                               (let ((__tmp50108
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2557325584_ _g2557425587_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2557325584_ _g2557425587_)))))
                         (declare (not safe))
                         (foldr1 __tmp50108 '() _L25198_))))
                  (declare (not safe))
                  (cons _L25441_ __tmp50107))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L25413_ __tmp50106)))
                                                (__tmp50104
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L25553_ '()))))
                                            (declare (not safe))
                                            (cons __tmp50105 __tmp50104))))
                                     (declare (not safe))
                                     (cons __tmp50109 __tmp50103))))
                              (declare (not safe))
                              (cons __tmp50102 '()))))
                       (declare (not safe))
                       (cons _L25385_ __tmp50101)))
                    (__tmp50074
                     (let ((__tmp50075
                            (let ((__tmp50076
                                   (let ((__tmp50077
                                          (let ((__tmp50099
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp50078
                                                 (let ((__tmp50096
                                                        (let ((__tmp50097
                                                               (let ((__tmp50098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2557125590_ _g2557225593_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2557125590_ _g2557225593_)))))
                         (declare (not safe))
                         (foldr1 __tmp50098 '() _L25198_))))
                  (declare (not safe))
                  (cons _L25441_ __tmp50097)))
               (__tmp50079
                (let ((__tmp50080
                       (let ((__tmp50095 (gx#datum->syntax '#f 'if))
                             (__tmp50081
                              (let ((__tmp50092
                                     (let ((__tmp50094
                                            (gx#datum->syntax '#f 'pair?))
                                           (__tmp50093
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25441_ '()))))
                                       (declare (not safe))
                                       (cons __tmp50094 __tmp50093)))
                                    (__tmp50082
                                     (let ((__tmp50084
                                            (let ((__tmp50085
                                                   (let ((__tmp50089
                                                          (let ((__tmp50091
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '##car))
                        (__tmp50090
                         (let () (declare (not safe)) (cons _L25441_ '()))))
                    (declare (not safe))
                    (cons __tmp50091 __tmp50090)))
                 (__tmp50086
                  (let ((__tmp50087
                         (let ((__tmp50088
                                (lambda (_g2556925596_ _g2557025599_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2556925596_ _g2557025599_)))))
                           (declare (not safe))
                           (foldr1 __tmp50088 '() _L25198_))))
                    (declare (not safe))
                    (cons _L25441_ __tmp50087))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50089
                                                           __tmp50086))))
                                              (declare (not safe))
                                              (cons _L25385_ __tmp50085)))
                                           (__tmp50083
                                            (let ()
                                              (declare (not safe))
                                              (cons _L25525_ '()))))
                                       (declare (not safe))
                                       (cons __tmp50084 __tmp50083))))
                                (declare (not safe))
                                (cons __tmp50092 __tmp50082))))
                         (declare (not safe))
                         (cons __tmp50095 __tmp50081))))
                  (declare (not safe))
                  (cons __tmp50080 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50096
                                                         __tmp50079))))
                                            (declare (not safe))
                                            (cons __tmp50099 __tmp50078))))
                                     (declare (not safe))
                                     (cons __tmp50077 '()))))
                              (declare (not safe))
                              (cons _L25357_ __tmp50076))))
                       (declare (not safe))
                       (cons __tmp50075 '()))))
                (declare (not safe))
                (cons __tmp50100 __tmp50074))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50110 __tmp50073)))
                                              (__tmp50067
                                               (let ((__tmp50068
                                                      (let ((__tmp50069
                                                             (let ((__tmp50070
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50071
                                   (lambda (_g2556725602_ _g2556825605_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2556725602_ _g2556825605_)))))
                              (declare (not safe))
                              (foldr1 __tmp50071 '() _L25269_))))
                       (declare (not safe))
                       (cons _L25301_ __tmp50070))))
                (declare (not safe))
                (cons _L25357_ __tmp50069))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50068 '()))))
                                          (declare (not safe))
                                          (cons __tmp50072 __tmp50067))))
                                   (declare (not safe))
                                   (cons __tmp50119 __tmp50066)))))
                           _g2553925550_)))
                       (__tmp50120
                        (let ()
                          (declare (not safe))
                          (_generate124450_
                           _L25413_
                           _hd25069_
                           _L25497_
                           _L25525_))))
                  (declare (not safe))
                  (_g2553725608_ __tmp50120))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2551125522_)))
                                                (__tmp50121
                                                 (let ((__tmp50122
                                                        (let ((__tmp50123
                                                               (let ((__tmp50124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2561525618_ _g2561625621_)
                                (let ((__tmp50125
                                       (let ((__tmp50127
                                              (gx#datum->syntax '#f 'reverse))
                                             (__tmp50126
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2561525618_ '()))))
                                         (declare (not safe))
                                         (cons __tmp50127 __tmp50126))))
                                  (declare (not safe))
                                  (cons __tmp50125 _g2561625621_)))))
                         (declare (not safe))
                         (foldr1 __tmp50124 '() _L25198_))))
                  (declare (not safe))
                  (cons _L25441_ __tmp50123))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L25329_
                                                         __tmp50122))))
                                           (declare (not safe))
                                           (_g2550925612_ __tmp50121))))
                                     _g2548325494_)))
                                 (__tmp50128
                                  (let ((__tmp50129
                                         (let ((__tmp50136
                                                (let ((__tmp50138
                                                       (gx#datum->syntax
                                                        '#f
                                                        '##cdr))
                                                      (__tmp50137
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L25441_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp50138
                                                        __tmp50137)))
                                               (__tmp50130
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _L25198_
                                                   _L25128_)
                                                  (let ((__tmp50131
                                                         (lambda (_g2562725631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2562825634_
                          _g2562925636_)
                   (let ((__tmp50132
                          (let ((__tmp50135 (gx#datum->syntax '#f 'cons))
                                (__tmp50133
                                 (let ((__tmp50134
                                        (let ()
                                          (declare (not safe))
                                          (cons _g2562725631_ '()))))
                                   (declare (not safe))
                                   (cons _g2562825634_ __tmp50134))))
                            (declare (not safe))
                            (cons __tmp50135 __tmp50133))))
                     (declare (not safe))
                     (cons __tmp50132 _g2562925636_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr2 __tmp50131
                                                            '()
                                                            _L25198_
                                                            _L25128_)))))
                                           (declare (not safe))
                                           (cons __tmp50136 __tmp50130))))
                                    (declare (not safe))
                                    (cons _L25357_ __tmp50129))))
                            (declare (not safe))
                            (_g2548125624_ __tmp50128))))
                      _g2545525466_)))
                  (__tmp50139
                   (let ()
                     (declare (not safe))
                     (_generate124450_
                      _L25441_
                      _rest25070_
                      _K25071_
                      _E25072_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g2545325639_
                                                      __tmp50139))))
                                               _g2542725438_)))
                                           (__tmp50140 (gx#genident 'rest)))
                                      (declare (not safe))
                                      (_g2542525643_ __tmp50140))))
                                _g2539925410_)))
                            (__tmp50141 (gx#genident 'hd)))
                       (declare (not safe))
                       (_g2539725647_ __tmp50141))))
                 _g2537125382_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50142
                                                      (gx#genident
                                                       'splice-try)))
                                                (declare (not safe))
                                                (_g2536925651_ __tmp50142))))
                                          _g2534325354_)))
                                      (__tmp50143 (gx#genident 'splice-loop)))
                                 (declare (not safe))
                                 (_g2534125655_ __tmp50143))))
                           _g2531525326_)))
                       (__tmp50144 (gx#genident 'splice-rest)))
                  (declare (not safe))
                  (_g2531325659_ __tmp50144))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2528725298_))))
                                           (declare (not safe))
                                           (_g2528525663_ _tgt25067_))))
                                     _init2522625265_))))))
                    (let ()
                      (declare (not safe))
                      (_loop2522125245_ _target2521825239_ '())))
                  (let ()
                    (declare (not safe))
                    (_g2521525232_ _g2521625236_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2521525232_
                                                   _g2521625236_)))))
                                         (__tmp50146
                                          (make-list
                                           (gx#stx-length
                                            (let ((__tmp50147
                                                   (lambda (_g2567025673_
                                                            _g2567125676_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2567025673_
                                                             _g2567125676_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp50147
                                                      '()
                                                      _L25128_)))
                                           (let ((__tmp50148
                                                  (gx#datum->syntax
                                                   '#f
                                                   '@list)))
                                             (declare (not safe))
                                             (cons __tmp50148 '())))))
                                    (declare (not safe))
                                    (_g2521425667_ __tmp50146))))
                              _var-r2515525194_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_loop2515025174_
                                                        _target2514725168_
                                                        '())))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g2514425161_
                                                      _g2514525165_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g2514425161_ _g2514525165_)))))
                                  (__tmp50150
                                   (gx#gentemps
                                    (let ((__tmp50151
                                           (lambda (_g2568225685_
                                                    _g2568325688_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g2568225685_
                                                     _g2568325688_)))))
                                      (declare (not safe))
                                      (foldr1 __tmp50151 '() _L25128_)))))
                             (declare (not safe))
                             (_g2514325679_ __tmp50150))))
                       _var2508525124_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop2508025104_
                                                 _target2507725098_
                                                 '())))
                                            (let ()
                                              (declare (not safe))
                                              (_g2507425091_
                                               _g2507525095_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2507425091_ _g2507525095_)))))
                           (__tmp50153
                            (let ()
                              (declare (not safe))
                              (|gerbil/core$<match>[1]#match-pattern-vars|
                               _hd25069_))))
                      (declare (not safe))
                      (_g2507325691_ __tmp50153))))
                 (_generate-simple-vector24453_
                  (lambda (_tgt24909_
                           _body24911_
                           _start24912_
                           _K24913_
                           _E24914_)
                    (let _recur24916_ ((_rest24919_ _body24911_)
                                       (_off24921_ _start24912_))
                      (let* ((___stx4602946030_ _rest24919_)
                             (_g2492424936_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4602946030_))))
                        (let ((___kont4603246033_
                               (lambda (_L24964_ _L24966_)
                                 (let* ((_g2498125000_
                                         (lambda (_g2498224996_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g2498224996_)))
                                        (_g2498025059_
                                         (lambda (_g2498225004_)
                                           (if (gx#stx-pair? _g2498225004_)
                                               (let ((_e2498825007_
                                                      (gx#syntax-e
                                                       _g2498225004_)))
                                                 (let ((_hd2498725011_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2498825007_)))
                                                       (_tl2498625014_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2498825007_))))
                                                   (if (gx#stx-pair?
                                                        _tl2498625014_)
                                                       (let ((_e2499125017_
                                                              (gx#syntax-e
                                                               _tl2498625014_)))
                                                         (let ((_hd2499025021_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2499125017_)))
                       (_tl2498925024_
                        (let () (declare (not safe)) (##cdr _e2499125017_))))
                   (if (gx#stx-pair? _tl2498925024_)
                       (let ((_e2499425027_ (gx#syntax-e _tl2498925024_)))
                         (let ((_hd2499325031_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2499425027_)))
                               (_tl2499225034_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2499425027_))))
                           (if (gx#stx-null? _tl2499225034_)
                               ((lambda (_L25037_ _L25039_ _L25040_)
                                  (let ()
                                    (let ((__tmp50154
                                           (let ((__tmp50159
                                                  (let ((__tmp50160
                                                         (let ((__tmp50161
                                                                (let ((__tmp50162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp50165
                                      (gx#datum->syntax '#f '##vector-ref))
                                     (__tmp50163
                                      (let ((__tmp50164
                                             (let ()
                                               (declare (not safe))
                                               (cons _L25037_ '()))))
                                        (declare (not safe))
                                        (cons _L25039_ __tmp50164))))
                                 (declare (not safe))
                                 (cons __tmp50165 __tmp50163))))
                          (declare (not safe))
                          (cons __tmp50162 '()))))
                   (declare (not safe))
                   (cons _L25040_ __tmp50161))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp50160 '())))
                                                 (__tmp50155
                                                  (let ((__tmp50156
                                                         (let ((__tmp50157
                                                                (let ((__tmp50158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (fx+ _off24921_ '1))))
                          (declare (not safe))
                          (_recur24916_ _L24964_ __tmp50158))))
                   (declare (not safe))
                   (_generate124450_ _L25040_ _L24966_ __tmp50157 _E24914_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp50156 '()))))
                                             (declare (not safe))
                                             (cons __tmp50159 __tmp50155))))
                                      (declare (not safe))
                                      (cons 'let __tmp50154))))
                                _hd2499325031_
                                _hd2499025021_
                                _hd2498725011_)
                               (let ()
                                 (declare (not safe))
                                 (_g2498125000_ _g2498225004_)))))
                       (let ()
                         (declare (not safe))
                         (_g2498125000_ _g2498225004_)))))
               (let () (declare (not safe)) (_g2498125000_ _g2498225004_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2498125000_
                                                  _g2498225004_)))))
                                        (__tmp50166
                                         (list (gx#genident 'e)
                                               _tgt24909_
                                               _off24921_)))
                                   (declare (not safe))
                                   (_g2498025059_ __tmp50166))))
                              (___kont4603446035_ (lambda () _K24913_)))
                          (if (gx#stx-pair? ___stx4602946030_)
                              (let ((_e2493024954_
                                     (gx#syntax-e ___stx4602946030_)))
                                (let ((_tl2492824961_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2493024954_)))
                                      (_hd2492924958_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2493024954_))))
                                  (___kont4603246033_
                                   _tl2492824961_
                                   _hd2492924958_)))
                              (___kont4603446035_)))))))
                 (_generate-list-vector24454_
                  (lambda (_tgt24801_
                           _body24803_
                           _->list24804_
                           _K24805_
                           _E24806_)
                    (let* ((_g2480824816_
                            (lambda (_g2480924812_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2480924812_)))
                           (_g2480724905_
                            (lambda (_g2480924820_)
                              ((lambda (_L24823_)
                                 (let ()
                                   (let* ((_g2483524843_
                                           (lambda (_g2483624839_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2483624839_)))
                                          (_g2483424901_
                                           (lambda (_g2483624847_)
                                             ((lambda (_L24850_)
                                                (let ()
                                                  (let* ((_g2486324871_
                                                          (lambda (_g2486424867_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g2486424867_)))
                                                         (_g2486224893_
                                                          (lambda (_g2486424875_)
                                                            ((lambda (_L24878_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp50167
                                  (let ((__tmp50170
                                         (let ((__tmp50171
                                                (let ((__tmp50172
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L24878_ '()))))
                                                  (declare (not safe))
                                                  (cons _L24823_ __tmp50172))))
                                           (declare (not safe))
                                           (cons __tmp50171 '())))
                                        (__tmp50168
                                         (let ((__tmp50169
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate124450_
                                                   _L24823_
                                                   _body24803_
                                                   _K24805_
                                                   _E24806_))))
                                           (declare (not safe))
                                           (cons __tmp50169 '()))))
                                    (declare (not safe))
                                    (cons __tmp50170 __tmp50168))))
                             (declare (not safe))
                             (cons 'let __tmp50167)))))
                     _g2486424875_)))
                 (__tmp50173
                  (let ((_$e24897_ _->list24804_))
                    (if (let ()
                          (declare (not safe))
                          (eq? 'values->list _$e24897_))
                        (let ((__tmp50182 (gx#datum->syntax '#f 'values->list))
                              (__tmp50181
                               (let ()
                                 (declare (not safe))
                                 (cons _L24850_ '()))))
                          (declare (not safe))
                          (cons __tmp50182 __tmp50181))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'vector->list _$e24897_))
                            (let ((__tmp50180
                                   (gx#datum->syntax '#f '##vector->list))
                                  (__tmp50179
                                   (let ()
                                     (declare (not safe))
                                     (cons _L24850_ '()))))
                              (declare (not safe))
                              (cons __tmp50180 __tmp50179))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'struct->list _$e24897_))
                                (let ((__tmp50178
                                       (gx#datum->syntax '#f '##cdr))
                                      (__tmp50174
                                       (let ((__tmp50175
                                              (let ((__tmp50177
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##structure->list))
                                                    (__tmp50176
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L24850_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50177 __tmp50176))))
                                         (declare (not safe))
                                         (cons __tmp50175 '()))))
                                  (declare (not safe))
                                  (cons __tmp50178 __tmp50174))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Unexpected list conversion"
                                 _stx24443_
                                 _->list24804_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_g2486224893_
                                                     __tmp50173))))
                                              _g2483624847_))))
                                     (declare (not safe))
                                     (_g2483424901_ _tgt24801_))))
                               _g2480924820_)))
                           (__tmp50183 (gx#genident 'e)))
                      (declare (not safe))
                      (_g2480724905_ __tmp50183))))
                 (_generate-struct24455_
                  (lambda (_info24672_
                           _tgt24674_
                           _body24675_
                           _K24676_
                           _E24677_)
                    (let* ((___stx4604546046_ _body24675_)
                           (_g2468024703_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4604546046_))))
                      (let ((___kont4604846049_
                             (lambda (_L24780_)
                               (let* ((_fields24794_
                                       (let ()
                                         (declare (not safe))
                                         (_struct-field-accessors24457_
                                          _info24672_)))
                                      (__tmp50184
                                       (let ((__tmp50188
                                              (let ((__tmp50190
                                                     (let ((__obj47248
                                                            _info24672_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj47248
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj47248
                                                              '10
                                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                            __obj47248
                                                            'predicate))))
                                                    (__tmp50189
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tgt24674_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50190 __tmp50189)))
                                             (__tmp50185
                                              (let ((__tmp50187
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-struct-body24456_
                                                        _info24672_
                                                        _tgt24674_
                                                        _L24780_
                                                        _K24676_
                                                        _E24677_)))
                                                    (__tmp50186
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E24677_ '()))))
                                                (declare (not safe))
                                                (cons __tmp50187 __tmp50186))))
                                         (declare (not safe))
                                         (cons __tmp50188 __tmp50185))))
                                 (declare (not safe))
                                 (cons 'if __tmp50184))))
                            (___kont4605046051_
                             (lambda (_L24734_)
                               (let ((__tmp50191
                                      (let ((__tmp50195
                                             (let ((__tmp50197
                                                    (let ((__obj47249
                                                           _info24672_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj47249
                                                             'gerbil.core#class-type-info::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj47249
                                                             '10
                                                             gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                             '#f))
                                                          (class-slot-ref
                                                           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                           __obj47249
                                                           'predicate))))
                                                   (__tmp50196
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tgt24674_ '()))))
                                               (declare (not safe))
                                               (cons __tmp50197 __tmp50196)))
                                            (__tmp50192
                                             (let ((__tmp50194
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-list-vector24454_
                                                       _tgt24674_
                                                       _L24734_
                                                       'struct->list
                                                       _K24676_
                                                       _E24677_)))
                                                   (__tmp50193
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _E24677_ '()))))
                                               (declare (not safe))
                                               (cons __tmp50194 __tmp50193))))
                                        (declare (not safe))
                                        (cons __tmp50195 __tmp50192))))
                                 (declare (not safe))
                                 (cons 'if __tmp50191)))))
                        (if (gx#stx-pair? ___stx4604546046_)
                            (let ((_e2468524756_
                                   (gx#syntax-e ___stx4604546046_)))
                              (let ((_tl2468324763_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2468524756_)))
                                    (_hd2468424760_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2468524756_))))
                                (if (gx#stx-datum? _hd2468424760_)
                                    (let ((_e2468624766_
                                           (gx#stx-e _hd2468424760_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e2468624766_ 'simple:))
                                          (if (gx#stx-pair? _tl2468324763_)
                                              (let ((_e2468924770_
                                                     (gx#syntax-e
                                                      _tl2468324763_)))
                                                (let ((_tl2468724777_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2468924770_)))
                                                      (_hd2468824774_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2468924770_))))
                                                  (if (gx#stx-null?
                                                       _tl2468724777_)
                                                      (___kont4604846049_
                                                       _hd2468824774_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2468024703_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2468024703_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e2468624766_ 'list:))
                                              (if (gx#stx-pair? _tl2468324763_)
                                                  (let ((_e2469724724_
                                                         (gx#syntax-e
                                                          _tl2468324763_)))
                                                    (let ((_tl2469524731_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2469724724_)))
                                                          (_hd2469624728_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2469724724_))))
                                                      (if (gx#stx-null?
                                                           _tl2469524731_)
                                                          (___kont4605046051_
                                                           _hd2469624728_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g2468024703_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2468024703_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2468024703_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2468024703_)))))
                            (let () (declare (not safe)) (_g2468024703_)))))))
                 (_generate-simple-struct-body24456_
                  (lambda (_info24592_
                           _tgt24594_
                           _body24595_
                           _K24596_
                           _E24597_)
                    (let _recur24599_ ((_rest24602_ _body24595_)
                                       (_fields24604_
                                        (let ()
                                          (declare (not safe))
                                          (_struct-field-accessors24457_
                                           _info24592_))))
                      (let* ((___stx4609546096_ _rest24602_)
                             (_g2460724619_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4609546096_))))
                        (let ((___kont4609846099_
                               (lambda (_L24647_ _L24649_)
                                 (if (let ()
                                       (declare (not safe))
                                       (null? _fields24604_))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _stx24443_
                                      _info24592_
                                      (let ((__obj47250 _info24592_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj47250
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj47250
                                               '2
                                               gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                             __obj47250
                                             'name))))
                                     (let ((_$tgt24664_ (gx#genident 'e))
                                           (_getf24666_ (car _fields24604_)))
                                       (let ((__tmp50198
                                              (let ((__tmp50203
                                                     (let ((__tmp50204
                                                            (let ((__tmp50205
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50206
                                  (let ((__tmp50207
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt24594_ '()))))
                                    (declare (not safe))
                                    (cons _getf24666_ __tmp50207))))
                             (declare (not safe))
                             (cons __tmp50206 '()))))
                      (declare (not safe))
                      (cons _$tgt24664_ __tmp50205))))
               (declare (not safe))
               (cons __tmp50204 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp50199
                                                     (let ((__tmp50200
                                                            (let ((__tmp50201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50202 (cdr _fields24604_)))
                             (declare (not safe))
                             (_recur24599_ _L24647_ __tmp50202))))
                      (declare (not safe))
                      (_generate124450_
                       _$tgt24664_
                       _L24649_
                       __tmp50201
                       _E24597_))))
               (declare (not safe))
               (cons __tmp50200 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50203 __tmp50199))))
                                         (declare (not safe))
                                         (cons 'let __tmp50198))))))
                              (___kont4610046101_ (lambda () _K24596_)))
                          (if (gx#stx-pair? ___stx4609546096_)
                              (let ((_e2461324637_
                                     (gx#syntax-e ___stx4609546096_)))
                                (let ((_tl2461124644_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2461324637_)))
                                      (_hd2461224641_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2461324637_))))
                                  (___kont4609846099_
                                   _tl2461124644_
                                   _hd2461224641_)))
                              (___kont4610046101_)))))))
                 (_struct-field-accessors24457_
                  (lambda (_info24573_)
                    (let _recur24576_ ((_next24579_
                                        (let ()
                                          (declare (not safe))
                                          (cons _info24573_ '()))))
                      (if (let () (declare (not safe)) (null? _next24579_))
                          '()
                          (let ((_ti24582_ (car _next24579_)))
                            (append (let ((__tmp50208
                                           (map gx#syntax-local-value
                                                (let ((__obj47251 _ti24582_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         __obj47251
                                                         'gerbil.core#class-type-info::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         __obj47251
                                                         '3
                                                         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                         '#f))
                                                      (class-slot-ref
                                                       gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                       __obj47251
                                                       'super))))))
                                      (declare (not safe))
                                      (_recur24576_ __tmp50208))
                                    (map (lambda (_slot24585_)
                                           (let ((_$e24588_
                                                  (let ((__tmp50209
                                                         (let ((__obj47252
                                                                _ti24582_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj47252
                          'gerbil.core#class-type-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          __obj47252
                          '13
                          gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                          '#f))
                       (class-slot-ref
                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                        __obj47252
                        'unchecked-accessors)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (assgetq _slot24585_
                                                             __tmp50209))))
                                             (if _$e24588_
                                                 _$e24588_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"no accessor for struct slot"
                                                  _stx24443_
                                                  _info24573_
                                                  _slot24585_))))
                                         (let ((__obj47253 _ti24582_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj47253
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj47253
                                                  '4
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                __obj47253
                                                'slots))))))))))
                 (_generate-class24458_
                  (lambda (_info24566_
                           _tgt24568_
                           _body24569_
                           _K24570_
                           _E24571_)
                    (let ((__tmp50210
                           (let ((__tmp50214
                                  (let ((__tmp50216
                                         (let ((__obj47254 _info24566_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj47254
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj47254
                                                  '10
                                                  gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                __obj47254
                                                'predicate))))
                                        (__tmp50215
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt24568_ '()))))
                                    (declare (not safe))
                                    (cons __tmp50216 __tmp50215)))
                                 (__tmp50211
                                  (let ((__tmp50213
                                         (let ()
                                           (declare (not safe))
                                           (_generate-class-body24459_
                                            _info24566_
                                            _tgt24568_
                                            _body24569_
                                            _K24570_
                                            _E24571_)))
                                        (__tmp50212
                                         (let ()
                                           (declare (not safe))
                                           (cons _E24571_ '()))))
                                    (declare (not safe))
                                    (cons __tmp50213 __tmp50212))))
                             (declare (not safe))
                             (cons __tmp50214 __tmp50211))))
                      (declare (not safe))
                      (cons 'if __tmp50210))))
                 (_generate-class-body24459_
                  (lambda (_info24461_
                           _tgt24463_
                           _body24464_
                           _K24465_
                           _E24466_)
                    (let _recur24468_ ((_rest24471_ _body24464_))
                      (let* ((___stx4611146112_ _rest24471_)
                             (_g2447524491_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4611146112_))))
                        (let ((___kont4611446115_
                               (lambda (_L24529_ _L24531_ _L24532_)
                                 (let ((_$e24552_
                                        (let ((__tmp50218
                                               (string->symbol
                                                (keyword->string
                                                 (gx#stx-e _L24532_))))
                                              (__tmp50217
                                               (let ((__obj47255 _info24461_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj47255
                                                        'gerbil.core#class-type-info::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj47255
                                                        '13
                                                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                        '#f))
                                                     (class-slot-ref
                                                      gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                      __obj47255
                                                      'unchecked-accessors)))))
                                          (declare (not safe))
                                          (assgetq __tmp50218 __tmp50217))))
                                   (if _$e24552_
                                       ((lambda (_getf24556_)
                                          (let* ((_$tgt24559_ (gx#genident 'e))
                                                 (__tmp50219
                                                  (let ((__tmp50223
                                                         (let ((__tmp50224
                                                                (let ((__tmp50225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp50226
                                      (let ((__tmp50227
                                             (let ()
                                               (declare (not safe))
                                               (cons _tgt24463_ '()))))
                                        (declare (not safe))
                                        (cons _getf24556_ __tmp50227))))
                                 (declare (not safe))
                                 (cons __tmp50226 '()))))
                          (declare (not safe))
                          (cons _$tgt24559_ __tmp50225))))
                   (declare (not safe))
                   (cons __tmp50224 '())))
                (__tmp50220
                 (let ((__tmp50221
                        (let ((__tmp50222
                               (let ()
                                 (declare (not safe))
                                 (_recur24468_ _L24529_))))
                          (declare (not safe))
                          (_generate124450_
                           _$tgt24559_
                           _L24531_
                           __tmp50222
                           _E24466_))))
                   (declare (not safe))
                   (cons __tmp50221 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp50223
                                                          __tmp50220))))
                                            (declare (not safe))
                                            (cons 'let __tmp50219)))
                                        _$e24552_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _stx24443_
                                        _info24461_
                                        _L24532_)))))
                              (___kont4611646117_ (lambda () _K24465_)))
                          (if (gx#stx-pair? ___stx4611146112_)
                              (let ((_e2448224509_
                                     (gx#syntax-e ___stx4611146112_)))
                                (let ((_tl2448024516_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2448224509_)))
                                      (_hd2448124513_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2448224509_))))
                                  (if (gx#stx-pair? _tl2448024516_)
                                      (let ((_e2448524519_
                                             (gx#syntax-e _tl2448024516_)))
                                        (let ((_tl2448324526_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2448524519_)))
                                              (_hd2448424523_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2448524519_))))
                                          (___kont4611446115_
                                           _tl2448324526_
                                           _hd2448424523_
                                           _hd2448124513_)))
                                      (___kont4611646117_))))
                              (___kont4611646117_))))))))
          (let ()
            (declare (not safe))
            (_generate124450_ _tgt24445_ _ptree24446_ _K24447_ _E24448_)))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx23339_ _tgt-lst23341_ _clauses23342_)
        (letrec ((_parse-body23344_
                  (lambda (_hd-len24265_)
                    (let _lp24268_ ((_rest24271_ _clauses23342_)
                                    (_r24273_ '()))
                      (let* ((___stx4616146162_ _rest24271_)
                             (_g2427624288_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4616146162_))))
                        (let ((___kont4616446165_
                               (lambda (_L24316_ _L24318_)
                                 (let* ((___stx4613346134_ _L24318_)
                                        (_g2433524351_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4613346134_))))
                                   (let ((___kont4613646137_
                                          (lambda (_L24420_)
                                            (if (gx#stx-null? _L24316_)
                                                (let ((__tmp50228
                                                       (let ((__tmp50233
                                                              (gx#genident
                                                               'else))
                                                             (__tmp50229
                                                              (let ((__tmp50230
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp50231
                                    (gx#stx-wrap-source
                                     (let ((__tmp50232
                                            (gx#datum->syntax '#f 'begin)))
                                       (declare (not safe))
                                       (cons __tmp50232 _L24420_))
                                     (let ((_$e24431_
                                            (gx#stx-source _L24318_)))
                                       (if _$e24431_
                                           _$e24431_
                                           (gx#stx-source _stx23339_))))))
                               (declare (not safe))
                               (cons __tmp50231 '()))))
                        (declare (not safe))
                        (cons '#f __tmp50230))))
                 (declare (not safe))
                 (cons __tmp50233 __tmp50229))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp50228 _r24273_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _stx23339_
                                                 _L24318_))))
                                         (___kont4613846139_
                                          (lambda (_L24379_ _L24381_)
                                            (let ((__tmp50234
                                                   (let ((__tmp50235
                                                          (let ((__tmp50241
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#genident 'try-match))
                        (__tmp50236
                         (let ((__tmp50240
                                (gx#stx-map
                                 (lambda (_g2439324395_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core$<match>[1]#parse-match-pattern__%|
                                      _g2439324395_
                                      _stx23339_)))
                                 _L24381_))
                               (__tmp50237
                                (let ((__tmp50238
                                       (gx#stx-wrap-source
                                        (let ((__tmp50239
                                               (gx#datum->syntax '#f 'begin)))
                                          (declare (not safe))
                                          (cons __tmp50239 _L24379_))
                                        (let ((_$e24399_
                                               (gx#stx-source _L24318_)))
                                          (if _$e24399_
                                              _$e24399_
                                              (gx#stx-source _stx23339_))))))
                                  (declare (not safe))
                                  (cons __tmp50238 '()))))
                           (declare (not safe))
                           (cons __tmp50240 __tmp50237))))
                    (declare (not safe))
                    (cons __tmp50241 __tmp50236))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50235
                                                           _r24273_))))
                                              (declare (not safe))
                                              (_lp24268_
                                               _L24316_
                                               __tmp50234))))
                                         (___kont4614046141_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _stx23339_
                                             _L24318_))))
                                     (let* ((___match4615846159_
                                             (lambda (_e2434524369_
                                                      _hd2434424373_
                                                      _tl2434324376_)
                                               (let ((_L24379_ _tl2434324376_)
                                                     (_L24381_ _hd2434424373_))
                                                 (if (and (gx#stx-list?
                                                           _L24381_)
                                                          (fx= (gx#stx-length
                                                                _L24381_)
                                                               _hd-len24265_)
                                                          (gx#stx-list?
                                                           _L24379_)
                                                          (let ((__tmp50242
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L24379_)))
                    (declare (not safe))
                    (not __tmp50242)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4613846139_
                                                      _L24379_
                                                      _L24381_)
                                                     (___kont4614046141_)))))
                                            (___match4615246153_
                                             (lambda (_e2434024410_
                                                      _hd2433924414_
                                                      _tl2433824417_)
                                               (let ((_L24420_ _tl2433824417_))
                                                 (if (and (gx#stx-list?
                                                           _L24420_)
                                                          (let ((__tmp50243
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L24420_)))
                    (declare (not safe))
                    (not __tmp50243)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4613646137_
                                                      _L24420_)
                                                     (___match4615846159_
                                                      _e2434024410_
                                                      _hd2433924414_
                                                      _tl2433824417_))))))
                                       (if (gx#stx-pair? ___stx4613346134_)
                                           (let ((_e2434024410_
                                                  (gx#syntax-e
                                                   ___stx4613346134_)))
                                             (let ((_tl2433824417_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2434024410_)))
                                                   (_hd2433924414_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2434024410_))))
                                               (if (gx#identifier?
                                                    _hd2433924414_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core$<match>[1]#_g50244_|
                                                        _hd2433924414_)
                                                       (___match4615246153_
                                                        _e2434024410_
                                                        _hd2433924414_
                                                        _tl2433824417_)
                                                       (___match4615846159_
                                                        _e2434024410_
                                                        _hd2433924414_
                                                        _tl2433824417_))
                                                   (___match4615846159_
                                                    _e2434024410_
                                                    _hd2433924414_
                                                    _tl2433824417_))))
                                           (___kont4614046141_)))))))
                              (___kont4616646167_ (lambda () _r24273_)))
                          (if (gx#stx-pair? ___stx4616146162_)
                              (let ((_e2428224306_
                                     (gx#syntax-e ___stx4616146162_)))
                                (let ((_tl2428024313_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2428224306_)))
                                      (_hd2428124310_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2428224306_))))
                                  (___kont4616446165_
                                   _tl2428024313_
                                   _hd2428124310_)))
                              (___kont4616646167_)))))))
                 (_generate-body23346_
                  (lambda (_body24050_)
                    (let* ((_g2405324061_
                            (lambda (_g2405424057_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2405424057_)))
                           (_g2405224261_
                            (lambda (_g2405424065_)
                              ((lambda (_L24068_)
                                 (let ()
                                   (let* ((_g2408024097_
                                           (lambda (_g2408124093_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2408124093_)))
                                          (_g2407924257_
                                           (lambda (_g2408124101_)
                                             (if (gx#stx-pair/null?
                                                  _g2408124101_)
                                                 (let ((_g50245_
                                                        (gx#syntax-split-splice
                                                         _g2408124101_
                                                         '0)))
                                                   (begin
                                                     (let ((_g50246_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g50245_)
                          (##vector-length _g50245_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g50246_ 2)))
                   (error "Context expects 2 values" _g50246_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2408324104_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g50245_
                                                               0)))
                                                           (_tl2408524107_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g50245_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl2408524107_)
                                                           (letrec ((_loop2408624110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2408424114_ _target2409024117_)
                               (if (gx#stx-pair? _hd2408424114_)
                                   (let ((_e2408724120_
                                          (gx#syntax-e _hd2408424114_)))
                                     (let ((_lp-hd2408824124_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2408724120_)))
                                           (_lp-tl2408924127_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2408724120_))))
                                       (let ((__tmp50269
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd2408824124_
                                                      _target2409024117_))))
                                         (declare (not safe))
                                         (_loop2408624110_
                                          _lp-tl2408924127_
                                          __tmp50269))))
                                   (let ((_target2409124130_
                                          (reverse _target2409024117_)))
                                     ((lambda (_L24134_)
                                        (let ()
                                          (let* ((_g2415124159_
                                                  (lambda (_g2415224155_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2415224155_)))
                                                 (_g2415024245_
                                                  (lambda (_g2415224163_)
                                                    ((lambda (_L24166_)
                                                       (let ()
                                                         (let* ((_g2417924187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2418024183_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2418024183_)))
                        (_g2417824241_
                         (lambda (_g2418024191_)
                           ((lambda (_L24194_)
                              (let ()
                                (let* ((_g2420724215_
                                        (lambda (_g2420824211_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2420824211_)))
                                       (_g2420624237_
                                        (lambda (_g2420824219_)
                                          ((lambda (_L24222_)
                                             (let ()
                                               (let ()
                                                 (let ((__tmp50250
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation))
                                                       (__tmp50247
                                                        (let ((__tmp50249
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@match))
                                                              (__tmp50248
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L24222_ '()))))
                  (declare (not safe))
                  (cons __tmp50249 __tmp50248))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50250
                                                         __tmp50247)))))
                                           _g2420824219_)))
                                       (__tmp50251
                                        (gx#stx-wrap-source
                                         (let ((__tmp50257
                                                (gx#datum->syntax '#f 'let))
                                               (__tmp50252
                                                (let ((__tmp50254
                                                       (let ((__tmp50255
                                                              (let ((__tmp50256
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L24166_ '()))))
                        (declare (not safe))
                        (cons _L24068_ __tmp50256))))
                 (declare (not safe))
                 (cons __tmp50255 '())))
              (__tmp50253 (let () (declare (not safe)) (cons _L24194_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp50254
                                                        __tmp50253))))
                                           (declare (not safe))
                                           (cons __tmp50257 __tmp50252))
                                         (gx#stx-source _stx23339_))))
                                  (declare (not safe))
                                  (_g2420624237_ __tmp50251))))
                            _g2418024191_)))
                        (__tmp50258
                         (let ((__tmp50259
                                (let ()
                                  (declare (not safe))
                                  (cons _L24068_ '()))))
                           (declare (not safe))
                           (_generate-clauses23347_ _body24050_ __tmp50259))))
                   (declare (not safe))
                   (_g2417824241_ __tmp50258))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2415224163_)))
                                                 (__tmp50260
                                                  (gx#stx-wrap-source
                                                   (let ((__tmp50268
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp50261
                                                          (let ((__tmp50262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp50263
                                (let ((__tmp50267
                                       (gx#datum->syntax '#f 'error))
                                      (__tmp50264
                                       (let ((__tmp50265
                                              (let ((__tmp50266
                                                     (lambda (_g2424824251_
                                                              _g2424924254_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g2424824251_
                                                               _g2424924254_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp50266
                                                        '()
                                                        _L24134_))))
                                         (declare (not safe))
                                         (cons '"No clause matching"
                                               __tmp50265))))
                                  (declare (not safe))
                                  (cons __tmp50267 __tmp50264))))
                           (declare (not safe))
                           (cons __tmp50263 '()))))
                    (declare (not safe))
                    (cons '() __tmp50262))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50268
                                                           __tmp50261))
                                                   (gx#stx-source
                                                    _stx23339_))))
                                            (declare (not safe))
                                            (_g2415024245_ __tmp50260))))
                                      _target2409124130_))))))
                     (let ()
                       (declare (not safe))
                       (_loop2408624110_ _target2408324104_ '())))
                   (let ()
                     (declare (not safe))
                     (_g2408024097_ _g2408124101_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2408024097_
                                                    _g2408124101_))))))
                                     (declare (not safe))
                                     (_g2407924257_ _tgt-lst23341_))))
                               _g2405424065_)))
                           (__tmp50270 (gx#genident 'E)))
                      (declare (not safe))
                      (_g2405224261_ __tmp50270))))
                 (_generate-clauses23347_
                  (lambda (_rest23702_ _E23704_)
                    (let* ((___stx4617746178_ _rest23702_)
                           (_g2370823724_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4617746178_))))
                      (let ((___kont4618046181_
                             (lambda (_L23958_)
                               (let* ((_g2396923987_
                                       (lambda (_g2397023983_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2397023983_)))
                                      (_g2396824042_
                                       (lambda (_g2397023991_)
                                         (if (gx#stx-pair? _g2397023991_)
                                             (let ((_e2397523994_
                                                    (gx#syntax-e
                                                     _g2397023991_)))
                                               (let ((_hd2397423998_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2397523994_)))
                                                     (_tl2397324001_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2397523994_))))
                                                 (if (gx#stx-pair?
                                                      _tl2397324001_)
                                                     (let ((_e2397824004_
                                                            (gx#syntax-e
                                                             _tl2397324001_)))
                                                       (let ((_hd2397724008_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2397824004_)))
                     (_tl2397624011_
                      (let () (declare (not safe)) (##cdr _e2397824004_))))
                 (if (gx#stx-pair? _tl2397624011_)
                     (let ((_e2398124014_ (gx#syntax-e _tl2397624011_)))
                       (let ((_hd2398024018_
                              (let ()
                                (declare (not safe))
                                (##car _e2398124014_)))
                             (_tl2397924021_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2398124014_))))
                         (if (gx#stx-null? _tl2397924021_)
                             ((lambda (_L24024_ _L24026_)
                                (let ((__tmp50271
                                       (let ((__tmp50272
                                              (let ((__tmp50273
                                                     (if (gx#stx-e _L24026_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate123348_
                                                            _L24026_
                                                            _L24024_
                                                            _E23704_))
                                                         _L24024_)))
                                                (declare (not safe))
                                                (cons __tmp50273 '()))))
                                         (declare (not safe))
                                         (cons '@match-body __tmp50272))))
                                  (declare (not safe))
                                  (cons 'begin-annotation __tmp50271)))
                              _hd2398024018_
                              _hd2397724008_)
                             (let ()
                               (declare (not safe))
                               (_g2396923987_ _g2397023991_)))))
                     (let ()
                       (declare (not safe))
                       (_g2396923987_ _g2397023991_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2396923987_
                                                        _g2397023991_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2396923987_
                                                _g2397023991_))))))
                                 (declare (not safe))
                                 (_g2396824042_ _L23958_))))
                            (___kont4618246183_
                             (lambda (_L23752_ _L23754_)
                               (let* ((_g2376723786_
                                       (lambda (_g2376823782_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2376823782_)))
                                      (_g2376623937_
                                       (lambda (_g2376823790_)
                                         (if (gx#stx-pair? _g2376823790_)
                                             (let ((_e2377423793_
                                                    (gx#syntax-e
                                                     _g2376823790_)))
                                               (let ((_hd2377323797_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2377423793_)))
                                                     (_tl2377223800_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2377423793_))))
                                                 (if (gx#stx-pair?
                                                      _tl2377223800_)
                                                     (let ((_e2377723803_
                                                            (gx#syntax-e
                                                             _tl2377223800_)))
                                                       (let ((_hd2377623807_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2377723803_)))
                     (_tl2377523810_
                      (let () (declare (not safe)) (##cdr _e2377723803_))))
                 (if (gx#stx-pair? _tl2377523810_)
                     (let ((_e2378023813_ (gx#syntax-e _tl2377523810_)))
                       (let ((_hd2377923817_
                              (let ()
                                (declare (not safe))
                                (##car _e2378023813_)))
                             (_tl2377823820_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2378023813_))))
                         (if (gx#stx-null? _tl2377823820_)
                             ((lambda (_L23823_ _L23825_ _L23826_)
                                (if (gx#stx-e _L23825_)
                                    (let* ((_g2384323858_
                                            (lambda (_g2384423854_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2384423854_)))
                                           (_g2384223903_
                                            (lambda (_g2384423862_)
                                              (if (gx#stx-pair? _g2384423862_)
                                                  (let ((_e2384923865_
                                                         (gx#syntax-e
                                                          _g2384423862_)))
                                                    (let ((_hd2384823869_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2384923865_)))
                                                          (_tl2384723872_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2384923865_))))
                                                      (if (gx#stx-pair?
                                                           _tl2384723872_)
                                                          (let ((_e2385223875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2384723872_)))
                    (let ((_hd2385123879_
                           (let () (declare (not safe)) (##car _e2385223875_)))
                          (_tl2385023882_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2385223875_))))
                      (if (gx#stx-null? _tl2385023882_)
                          ((lambda (_L23885_ _L23887_)
                             (let ()
                               (let ((__tmp50300 (gx#datum->syntax '#f 'let))
                                     (__tmp50291
                                      (let ((__tmp50293
                                             (let ((__tmp50294
                                                    (let ((__tmp50295
                                                           (let ((__tmp50296
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp50299 (gx#datum->syntax '#f 'lambda))
                                (__tmp50297
                                 (let ((__tmp50298
                                        (let ()
                                          (declare (not safe))
                                          (cons _L23887_ '()))))
                                   (declare (not safe))
                                   (cons '() __tmp50298))))
                            (declare (not safe))
                            (cons __tmp50299 __tmp50297))))
                     (declare (not safe))
                     (cons __tmp50296 '()))))
              (declare (not safe))
              (cons _L23826_ __tmp50295))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp50294 '())))
                                            (__tmp50292
                                             (let ()
                                               (declare (not safe))
                                               (cons _L23885_ '()))))
                                        (declare (not safe))
                                        (cons __tmp50293 __tmp50292))))
                                 (declare (not safe))
                                 (cons __tmp50300 __tmp50291))))
                           _hd2385123879_
                           _hd2384823869_)
                          (let ()
                            (declare (not safe))
                            (_g2384323858_ _g2384423862_)))))
                  (let ()
                    (declare (not safe))
                    (_g2384323858_ _g2384423862_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2384323858_
                                                     _g2384423862_)))))
                                           (__tmp50301
                                            (list (let ()
                                                    (declare (not safe))
                                                    (_generate123348_
                                                     _L23825_
                                                     _L23823_
                                                     _E23704_))
                                                  (let ((__tmp50302
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L23826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-clauses23347_
                                                     _L23752_
                                                     __tmp50302)))))
                                      (declare (not safe))
                                      (_g2384223903_ __tmp50301))
                                    (let* ((_g2390723915_
                                            (lambda (_g2390823911_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2390823911_)))
                                           (_g2390623933_
                                            (lambda (_g2390823919_)
                                              ((lambda (_L23922_)
                                                 (let ()
                                                   (let ((__tmp50288
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp50274
                                                          (let ((__tmp50276
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp50277
                                (let ((__tmp50278
                                       (let ((__tmp50279
                                              (let ((__tmp50287
                                                     (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation))
                                                    (__tmp50280
                                                     (let ((__tmp50286
                                                            (gx#datum->syntax
                                                             '#f
                                                             '@match-else))
                                                           (__tmp50281
                                                            (let ((__tmp50282
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp50285 (gx#datum->syntax '#f 'lambda))
                                 (__tmp50283
                                  (let ((__tmp50284
                                         (let ()
                                           (declare (not safe))
                                           (cons _L23823_ '()))))
                                    (declare (not safe))
                                    (cons '() __tmp50284))))
                             (declare (not safe))
                             (cons __tmp50285 __tmp50283))))
                      (declare (not safe))
                      (cons __tmp50282 '()))))
               (declare (not safe))
               (cons __tmp50286 __tmp50281))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50287 __tmp50280))))
                                         (declare (not safe))
                                         (cons __tmp50279 '()))))
                                  (declare (not safe))
                                  (cons _L23826_ __tmp50278))))
                           (declare (not safe))
                           (cons __tmp50277 '())))
                        (__tmp50275
                         (let () (declare (not safe)) (cons _L23922_ '()))))
                    (declare (not safe))
                    (cons __tmp50276 __tmp50275))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50288
                                                           __tmp50274))))
                                               _g2390823919_)))
                                           (__tmp50289
                                            (let ((__tmp50290
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L23826_ '()))))
                                              (declare (not safe))
                                              (_generate-clauses23347_
                                               _L23752_
                                               __tmp50290))))
                                      (declare (not safe))
                                      (_g2390623933_ __tmp50289))))
                              _hd2377923817_
                              _hd2377623807_
                              _hd2377323797_)
                             (let ()
                               (declare (not safe))
                               (_g2376723786_ _g2376823790_)))))
                     (let ()
                       (declare (not safe))
                       (_g2376723786_ _g2376823790_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2376723786_
                                                        _g2376823790_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2376723786_
                                                _g2376823790_))))))
                                 (declare (not safe))
                                 (_g2376623937_ _L23754_))))
                            (___kont4618446185_
                             (lambda ()
                               (let ((__tmp50303
                                      (let ((__tmp50304
                                             (let ()
                                               (declare (not safe))
                                               (cons _E23704_ '()))))
                                        (declare (not safe))
                                        (cons '@match-body __tmp50304))))
                                 (declare (not safe))
                                 (cons 'begin-annotation __tmp50303)))))
                        (if (gx#stx-pair? ___stx4617746178_)
                            (let ((_e2371323948_
                                   (gx#syntax-e ___stx4617746178_)))
                              (let ((_tl2371123955_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2371323948_)))
                                    (_hd2371223952_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2371323948_))))
                                (if (gx#stx-null? _tl2371123955_)
                                    (___kont4618046181_ _hd2371223952_)
                                    (___kont4618246183_
                                     _tl2371123955_
                                     _hd2371223952_))))
                            (___kont4618446185_))))))
                 (_generate123348_
                  (lambda (_clause23350_ _body23352_ _E23353_)
                    (let* ((_g2335523379_
                            (lambda (_g2335623375_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2335623375_)))
                           (_g2335423698_
                            (lambda (_g2335623383_)
                              (if (gx#stx-pair? _g2335623383_)
                                  (let ((_e2336123386_
                                         (gx#syntax-e _g2335623383_)))
                                    (let ((_hd2336023390_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2336123386_)))
                                          (_tl2335923393_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2336123386_))))
                                      (if (gx#stx-pair? _tl2335923393_)
                                          (let ((_e2336423396_
                                                 (gx#syntax-e _tl2335923393_)))
                                            (let ((_hd2336323400_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2336423396_)))
                                                  (_tl2336223403_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2336423396_))))
                                              (if (gx#stx-pair/null?
                                                   _hd2336323400_)
                                                  (let ((_g50305_
                                                         (gx#syntax-split-splice
                                                          _hd2336323400_
                                                          '0)))
                                                    (begin
                                                      (let ((_g50306_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g50305_)
                           (##vector-length _g50305_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g50306_ 2)))
                    (error "Context expects 2 values" _g50306_)))
              (let ((_target2336523406_
                     (let () (declare (not safe)) (##vector-ref _g50305_ 0)))
                    (_tl2336723409_
                     (let () (declare (not safe)) (##vector-ref _g50305_ 1))))
                (if (gx#stx-null? _tl2336723409_)
                    (letrec ((_loop2336823412_
                              (lambda (_hd2336623416_ _var2337223419_)
                                (if (gx#stx-pair? _hd2336623416_)
                                    (let ((_e2336923422_
                                           (gx#syntax-e _hd2336623416_)))
                                      (let ((_lp-hd2337023426_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2336923422_)))
                                            (_lp-tl2337123429_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2336923422_))))
                                        (let ((__tmp50323
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lp-hd2337023426_
                                                       _var2337223419_))))
                                          (declare (not safe))
                                          (_loop2336823412_
                                           _lp-tl2337123429_
                                           __tmp50323))))
                                    (let ((_var2337323432_
                                           (reverse _var2337223419_)))
                                      (if (gx#stx-null? _tl2336223403_)
                                          ((lambda (_L23436_ _L23438_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (let ((__tmp50307
                                                       (lambda (_g2345923462_
                                                                _g2346023465_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g2345923462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2346023465_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp50307
                                                          '()
                                                          _L23436_))
                                                _stx23339_)
                                               (let* ((_g2346823476_
                                                       (lambda (_g2346923472_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2346923472_)))
                                                      (_g2346723570_
                                                       (lambda (_g2346923480_)
                                                         ((lambda (_L23483_)
                                                            (let ()
                                                              (let* ((_g2349623504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2349723500_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2349723500_)))
                             (_g2349523566_
                              (lambda (_g2349723508_)
                                ((lambda (_L23511_)
                                   (let ()
                                     (let* ((_g2352423532_
                                             (lambda (_g2352523528_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2352523528_)))
                                            (_g2352323554_
                                             (lambda (_g2352523536_)
                                               ((lambda (_L23539_)
                                                  (let ()
                                                    (let ()
                                                      (gx#stx-wrap-source
                                                       (let ((__tmp50312
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp50308
                                                              (let ((__tmp50310
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp50311
                                    (let ()
                                      (declare (not safe))
                                      (cons _L23539_ '()))))
                               (declare (not safe))
                               (cons _L23438_ __tmp50311)))
                            (__tmp50309
                             (let ()
                               (declare (not safe))
                               (cons _L23483_ '()))))
                        (declare (not safe))
                        (cons __tmp50310 __tmp50309))))
                 (declare (not safe))
                 (cons __tmp50312 __tmp50308))
               (gx#stx-source _stx23339_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2352523536_)))
                                            (__tmp50313
                                             (gx#stx-wrap-source
                                              (let ((__tmp50318
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp50314
                                                     (let ((__tmp50316
                                                            (let ((__tmp50317
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2355723560_ _g2355823563_)
                             (let ()
                               (declare (not safe))
                               (cons _g2355723560_ _g2355823563_)))))
                      (declare (not safe))
                      (foldr1 __tmp50317 '() _L23436_)))
                   (__tmp50315
                    (let () (declare (not safe)) (cons _L23511_ '()))))
               (declare (not safe))
               (cons __tmp50316 __tmp50315))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50318 __tmp50314))
                                              (gx#stx-source _stx23339_))))
                                       (declare (not safe))
                                       (_g2352323554_ __tmp50313))))
                                 _g2349723508_))))
                        (declare (not safe))
                        (_g2349523566_ _body23352_))))
                  _g2346923480_)))
              (__tmp50319
               (let _recur23574_ ((_rest23577_ _clause23350_)
                                  (_rest-targets23579_ _tgt-lst23341_))
                 (let* ((___stx4620346204_ _rest23577_)
                        (_g2358223594_
                         (lambda ()
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            ___stx4620346204_))))
                   (let ((___kont4620646207_
                          (lambda (_L23630_ _L23632_)
                            (let* ((_g2364723659_
                                    (lambda (_g2364823655_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g2364823655_)))
                                   (_g2364623690_
                                    (lambda (_g2364823663_)
                                      (if (gx#stx-pair? _g2364823663_)
                                          (let ((_e2365323666_
                                                 (gx#syntax-e _g2364823663_)))
                                            (let ((_hd2365223670_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2365323666_)))
                                                  (_tl2365123673_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2365323666_))))
                                              ((lambda (_L23676_ _L23678_)
                                                 (let ((__tmp50320
                                                        (let ()
                                                          (declare (not safe))
                                                          (_recur23574_
                                                           _L23630_
                                                           _L23676_))))
                                                   (declare (not safe))
                                                   (|gerbil/core$<match>[1]#generate-match1|
                                                    _stx23339_
                                                    _L23678_
                                                    _L23632_
                                                    __tmp50320
                                                    _E23353_)))
                                               _tl2365123673_
                                               _hd2365223670_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g2364723659_ _g2364823663_))))))
                              (declare (not safe))
                              (_g2364623690_ _rest-targets23579_))))
                         (___kont4620846209_
                          (lambda ()
                            (let ((__tmp50321
                                   (let ((__tmp50322
                                          (lambda (_g2360423607_ _g2360523610_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g2360423607_
                                                    _g2360523610_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp50322 '() _L23436_))))
                              (declare (not safe))
                              (cons _L23438_ __tmp50321)))))
                     (if (gx#stx-pair? ___stx4620346204_)
                         (let ((_e2358823620_ (gx#syntax-e ___stx4620346204_)))
                           (let ((_tl2358623627_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2358823620_)))
                                 (_hd2358723624_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2358823620_))))
                             (___kont4620646207_
                              _tl2358623627_
                              _hd2358723624_)))
                         (___kont4620846209_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2346723570_ __tmp50319))))
                                           _var2337323432_
                                           _hd2336023390_)
                                          (let ()
                                            (declare (not safe))
                                            (_g2335523379_
                                             _g2335623383_))))))))
                      (let ()
                        (declare (not safe))
                        (_loop2336823412_ _target2336523406_ '())))
                    (let ()
                      (declare (not safe))
                      (_g2335523379_ _g2335623383_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2335523379_
                                                     _g2335623383_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g2335523379_ _g2335623383_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2335523379_ _g2335623383_)))))
                           (__tmp50324
                            (list (gx#genident 'K)
                                  (apply append
                                         (map |gerbil/core$<match>[1]#match-pattern-vars|
                                              _clause23350_)))))
                      (declare (not safe))
                      (_g2335423698_ __tmp50324)))))
          (let ((__tmp50325
                 (let ((__tmp50326 (gx#stx-length _tgt-lst23341_)))
                   (declare (not safe))
                   (_parse-body23344_ __tmp50326))))
            (declare (not safe))
            (_generate-body23346_ __tmp50325)))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx23241_ _tgt23243_ _clauses23244_)
        (letrec ((_reclause23246_
                  (lambda (_clause23249_)
                    (let* ((___stx4621946220_ _clause23249_)
                           (_g2325423269_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4621946220_))))
                      (let ((___kont4622246223_ (lambda () _clause23249_))
                            (___kont4622446225_
                             (lambda (_L23297_ _L23299_)
                               (gx#stx-wrap-source
                                (let ((__tmp50327
                                       (let ()
                                         (declare (not safe))
                                         (cons _L23299_ '()))))
                                  (declare (not safe))
                                  (cons __tmp50327 _L23297_))
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (___kont4622646227_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _stx23241_
                                _clause23249_))))
                        (if (gx#stx-pair? ___stx4621946220_)
                            (let ((_e2325823321_
                                   (gx#syntax-e ___stx4621946220_)))
                              (let ((_tl2325623328_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2325823321_)))
                                    (_hd2325723325_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2325823321_))))
                                (if (gx#identifier? _hd2325723325_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g50328_|
                                         _hd2325723325_)
                                        (___kont4622246223_)
                                        (___kont4622446225_
                                         _tl2325623328_
                                         _hd2325723325_))
                                    (___kont4622446225_
                                     _tl2325623328_
                                     _hd2325723325_))))
                            (___kont4622646227_)))))))
          (let ((__tmp50330
                 (let () (declare (not safe)) (cons _tgt23243_ '())))
                (__tmp50329 (gx#stx-map _reclause23246_ _clauses23244_)))
            (declare (not safe))
            (|gerbil/core$<match>[1]#generate-match*|
             _stx23241_
             __tmp50330
             __tmp50329)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx30472_)
        (let* ((___stx4624746248_ _stx30472_)
               (_g3047730506_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4624746248_))))
          (let ((___kont4625046251_
                 (lambda (_L30746_)
                   (let* ((_g3075930767_
                           (lambda (_g3076030763_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3076030763_)))
                          (_g3075830820_
                           (lambda (_g3076030771_)
                             ((lambda (_L30774_)
                                (let ()
                                  (let* ((_g3078630794_
                                          (lambda (_g3078730790_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3078730790_)))
                                         (_g3078530816_
                                          (lambda (_g3078730798_)
                                            ((lambda (_L30801_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp50334
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp50331
                                                          (let ((__tmp50333
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L30774_ '())))
                        (__tmp50332
                         (let () (declare (not safe)) (cons _L30801_ '()))))
                    (declare (not safe))
                    (cons __tmp50333 __tmp50332))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50334
                                                           __tmp50331)))))
                                             _g3078730798_))))
                                    (_g3078530816_
                                     (gx#stx-wrap-source
                                      (let ((__tmp50336
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp50335
                                             (let ()
                                               (declare (not safe))
                                               (cons _L30774_ _L30746_))))
                                        (declare (not safe))
                                        (cons __tmp50336 __tmp50335))
                                      (gx#stx-source _stx30472_))))))
                              _g3076030771_))))
                     (_g3075830820_ (gx#genident 'e)))))
                (___kont4625246253_
                 (lambda (_L30641_)
                   (let* ((_g3065430662_
                           (lambda (_g3065530658_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3065530658_)))
                          (_g3065330715_
                           (lambda (_g3065530666_)
                             ((lambda (_L30669_)
                                (let ()
                                  (let* ((_g3068130689_
                                          (lambda (_g3068230685_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3068230685_)))
                                         (_g3068030711_
                                          (lambda (_g3068230693_)
                                            ((lambda (_L30696_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp50339
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp50337
                                                          (let ((__tmp50338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L30696_ '()))))
                    (declare (not safe))
                    (cons _L30669_ __tmp50338))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50339
                                                           __tmp50337)))))
                                             _g3068230693_))))
                                    (_g3068030711_
                                     (gx#stx-wrap-source
                                      (let ((__tmp50341
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp50340
                                             (let ()
                                               (declare (not safe))
                                               (cons _L30669_ _L30641_))))
                                        (declare (not safe))
                                        (cons __tmp50341 __tmp50340))
                                      (gx#stx-source _stx30472_))))))
                              _g3065530666_))))
                     (_g3065330715_ (gx#genident 'args)))))
                (___kont4625446255_
                 (lambda (_L30533_ _L30535_)
                   (let* ((_g3054930557_
                           (lambda (_g3055030553_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3055030553_)))
                          (_g3054830610_
                           (lambda (_g3055030561_)
                             ((lambda (_L30564_)
                                (let ()
                                  (let* ((_g3057630584_
                                          (lambda (_g3057730580_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3057730580_)))
                                         (_g3057530606_
                                          (lambda (_g3057730588_)
                                            ((lambda (_L30591_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp50347
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp50342
                                                          (let ((__tmp50344
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp50345
                                (let ((__tmp50346
                                       (let ()
                                         (declare (not safe))
                                         (cons _L30535_ '()))))
                                  (declare (not safe))
                                  (cons _L30564_ __tmp50346))))
                           (declare (not safe))
                           (cons __tmp50345 '())))
                        (__tmp50343
                         (let () (declare (not safe)) (cons _L30591_ '()))))
                    (declare (not safe))
                    (cons __tmp50344 __tmp50343))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50347
                                                           __tmp50342)))))
                                             _g3057730588_))))
                                    (_g3057530606_
                                     (let ()
                                       (declare (not safe))
                                       (|gerbil/core$<match>[1]#generate-match|
                                        _stx30472_
                                        _L30564_
                                        _L30533_))))))
                              _g3055030561_))))
                     (_g3054830610_ (gx#genident _L30535_))))))
            (let* ((___match4630046301_
                    (lambda (_e3049730513_
                             _hd3049630517_
                             _tl3049530520_
                             _e3050030523_
                             _hd3049930527_
                             _tl3049830530_)
                      (let ((_L30533_ _tl3049830530_)
                            (_L30535_ _hd3049930527_))
                        (if (gx#stx-list? _L30533_)
                            (___kont4625446255_ _L30533_ _L30535_)
                            (let () (declare (not safe)) (_g3047730506_))))))
                   (___match4628846289_
                    (lambda (_e3048930621_
                             _hd3048830625_
                             _tl3048730628_
                             _e3049230631_
                             _hd3049130635_
                             _tl3049030638_)
                      (let ((_L30641_ _tl3049030638_))
                        (if (gx#stx-list? _L30641_)
                            (___kont4625246253_ _L30641_)
                            (___match4630046301_
                             _e3048930621_
                             _hd3048830625_
                             _tl3048730628_
                             _e3049230631_
                             _hd3049130635_
                             _tl3049030638_)))))
                   (___match4627246273_
                    (lambda (_e3048230726_
                             _hd3048130730_
                             _tl3048030733_
                             _e3048530736_
                             _hd3048430740_
                             _tl3048330743_)
                      (let ((_L30746_ _tl3048330743_))
                        (if (gx#stx-list? _L30746_)
                            (___kont4625046251_ _L30746_)
                            (___match4630046301_
                             _e3048230726_
                             _hd3048130730_
                             _tl3048030733_
                             _e3048530736_
                             _hd3048430740_
                             _tl3048330743_))))))
              (if (gx#stx-pair? ___stx4624746248_)
                  (let ((_e3048230726_ (gx#syntax-e ___stx4624746248_)))
                    (let ((_tl3048030733_
                           (let () (declare (not safe)) (##cdr _e3048230726_)))
                          (_hd3048130730_
                           (let ()
                             (declare (not safe))
                             (##car _e3048230726_))))
                      (if (gx#stx-pair? _tl3048030733_)
                          (let ((_e3048530736_ (gx#syntax-e _tl3048030733_)))
                            (let ((_tl3048330743_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3048530736_)))
                                  (_hd3048430740_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3048530736_))))
                              (if (gx#identifier? _hd3048430740_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50349_|
                                       _hd3048430740_)
                                      (___match4627246273_
                                       _e3048230726_
                                       _hd3048130730_
                                       _tl3048030733_
                                       _e3048530736_
                                       _hd3048430740_
                                       _tl3048330743_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50348_|
                                           _hd3048430740_)
                                          (___match4628846289_
                                           _e3048230726_
                                           _hd3048130730_
                                           _tl3048030733_
                                           _e3048530736_
                                           _hd3048430740_
                                           _tl3048330743_)
                                          (___match4630046301_
                                           _e3048230726_
                                           _hd3048130730_
                                           _tl3048030733_
                                           _e3048530736_
                                           _hd3048430740_
                                           _tl3048330743_)))
                                  (___match4630046301_
                                   _e3048230726_
                                   _hd3048130730_
                                   _tl3048030733_
                                   _e3048530736_
                                   _hd3048430740_
                                   _tl3048330743_))))
                          (let () (declare (not safe)) (_g3047730506_)))))
                  (let () (declare (not safe)) (_g3047730506_))))))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx30828_)
        (let* ((_g3083130855_
                (lambda (_g3083230851_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g3083230851_)))
               (_g3083031067_
                (lambda (_g3083230859_)
                  (if (gx#stx-pair? _g3083230859_)
                      (let ((_e3083730862_ (gx#syntax-e _g3083230859_)))
                        (let ((_hd3083630866_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3083730862_)))
                              (_tl3083530869_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3083730862_))))
                          (if (gx#stx-pair? _tl3083530869_)
                              (let ((_e3084030872_
                                     (gx#syntax-e _tl3083530869_)))
                                (let ((_hd3083930876_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3084030872_)))
                                      (_tl3083830879_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3084030872_))))
                                  (if (gx#stx-pair/null? _hd3083930876_)
                                      (let ((_g50350_
                                             (gx#syntax-split-splice
                                              _hd3083930876_
                                              '0)))
                                        (begin
                                          (let ((_g50351_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g50350_)
                                                       (##vector-length
                                                        _g50350_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g50351_ 2)))
                                                (error "Context expects 2 values"
                                                       _g50351_)))
                                          (let ((_target3084130882_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g50350_ 0)))
                                                (_tl3084330885_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g50350_ 1))))
                                            (if (gx#stx-null? _tl3084330885_)
                                                (letrec ((_loop3084430888_
                                                          (lambda (_hd3084230892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e3084830895_)
                    (if (gx#stx-pair? _hd3084230892_)
                        (let ((_e3084530898_ (gx#syntax-e _hd3084230892_)))
                          (let ((_lp-hd3084630902_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3084530898_)))
                                (_lp-tl3084730905_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3084530898_))))
                            (_loop3084430888_
                             _lp-tl3084730905_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd3084630902_ _e3084830895_)))))
                        (let ((_e3084930908_ (reverse _e3084830895_)))
                          ((lambda (_L30912_ _L30914_)
                             (if (gx#stx-list? _L30912_)
                                 (let* ((_g3093230949_
                                         (lambda (_g3093330945_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g3093330945_)))
                                        (_g3093131055_
                                         (lambda (_g3093330953_)
                                           (if (gx#stx-pair/null?
                                                _g3093330953_)
                                               (let ((_g50352_
                                                      (gx#syntax-split-splice
                                                       _g3093330953_
                                                       '0)))
                                                 (begin
                                                   (let ((_g50353_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g50352_)
                        (##vector-length _g50352_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g50353_ 2)))
                 (error "Context expects 2 values" _g50353_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target3093530956_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g50352_
                                                             0)))
                                                         (_tl3093730959_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g50352_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl3093730959_)
                                                         (letrec ((_loop3093830962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd3093630966_ _$e3094230969_)
                             (if (gx#stx-pair? _hd3093630966_)
                                 (let ((_e3093930972_
                                        (gx#syntax-e _hd3093630966_)))
                                   (let ((_lp-hd3094030976_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3093930972_)))
                                         (_lp-tl3094130979_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3093930972_))))
                                     (_loop3093830962_
                                      _lp-tl3094130979_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd3094030976_
                                              _$e3094230969_)))))
                                 (let ((_$e3094330982_
                                        (reverse _$e3094230969_)))
                                   ((lambda (_L30986_)
                                      (let ()
                                        (let* ((_g3100231010_
                                                (lambda (_g3100331006_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g3100331006_)))
                                               (_g3100131043_
                                                (lambda (_g3100331014_)
                                                  ((lambda (_L31017_)
                                                     (let ()
                                                       (let ()
                                                         (let ((__tmp50360
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let))
                       (__tmp50354
                        (let ((__tmp50356
                               (begin
                                 (gx#syntax-check-splice-targets
                                  _L30914_
                                  _L30986_)
                                 (let ((__tmp50357
                                        (lambda (_g3103131035_
                                                 _g3103231038_
                                                 _g3103331040_)
                                          (let ((__tmp50358
                                                 (let ((__tmp50359
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3103131035_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3103231038_
                                                         __tmp50359))))
                                            (declare (not safe))
                                            (cons __tmp50358 _g3103331040_)))))
                                   (declare (not safe))
                                   (foldr2 __tmp50357 '() _L30914_ _L30986_))))
                              (__tmp50355
                               (let ()
                                 (declare (not safe))
                                 (cons _L31017_ '()))))
                          (declare (not safe))
                          (cons __tmp50356 __tmp50355))))
                   (declare (not safe))
                   (cons __tmp50360 __tmp50354)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g3100331014_))))
                                          (_g3100131043_
                                           (let ((__tmp50361
                                                  (let ((__tmp50362
                                                         (lambda (_g3104631049_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3104731052_)
                   (let ()
                     (declare (not safe))
                     (cons _g3104631049_ _g3104731052_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp50362
                                                            '()
                                                            _L30986_))))
                                             (declare (not safe))
                                             (|gerbil/core$<match>[1]#generate-match*|
                                              _stx30828_
                                              __tmp50361
                                              _L30912_))))))
                                    _$e3094330982_))))))
                   (_loop3093830962_ _target3093530956_ '()))
                 (_g3093230949_ _g3093330953_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3093230949_
                                                _g3093330953_)))))
                                   (_g3093131055_
                                    (gx#gentemps
                                     (let ((__tmp50363
                                            (lambda (_g3105831061_
                                                     _g3105931064_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3105831061_
                                                      _g3105931064_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp50363 '() _L30914_)))))
                                 (_g3083130855_ _g3083230859_)))
                           _tl3083830879_
                           _e3084930908_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop3084430888_
                                                   _target3084130882_
                                                   '()))
                                                (_g3083130855_
                                                 _g3083230859_)))))
                                      (_g3083130855_ _g3083230859_))))
                              (_g3083130855_ _g3083230859_))))
                      (_g3083130855_ _g3083230859_)))))
          (_g3083031067_ _stx30828_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx31073_)
        (let* ((___stx4630346304_ _$stx31073_)
               (_g3107931162_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4630346304_))))
          (let ((___kont4630646307_
                 (lambda (_L31492_)
                   (let ((__tmp50367 (gx#datum->syntax '#f 'let))
                         (__tmp50364
                          (let ((__tmp50365
                                 (let ((__tmp50366
                                        (lambda (_g3150831511_ _g3150931514_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3150831511_
                                                  _g3150931514_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50366 '() _L31492_))))
                            (declare (not safe))
                            (cons '() __tmp50365))))
                     (declare (not safe))
                     (cons __tmp50367 __tmp50364))))
                (___kont4631046311_
                 (lambda (_L31400_ _L31402_ _L31403_ _L31404_)
                   (let ((__tmp50368
                          (let ((__tmp50371
                                 (let ((__tmp50372
                                        (let ((__tmp50373
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31402_ '()))))
                                          (declare (not safe))
                                          (cons _L31403_ __tmp50373))))
                                   (declare (not safe))
                                   (cons __tmp50372 '())))
                                (__tmp50369
                                 (let ((__tmp50370
                                        (lambda (_g3142631429_ _g3142731432_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3142631429_
                                                  _g3142731432_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50370 '() _L31400_))))
                            (declare (not safe))
                            (cons __tmp50371 __tmp50369))))
                     (declare (not safe))
                     (cons _L31404_ __tmp50368))))
                (___kont4631446315_
                 (lambda (_L31273_ _L31275_ _L31276_)
                   (let ((__tmp50383 (gx#datum->syntax '#f 'match*))
                         (__tmp50374
                          (let ((__tmp50381
                                 (let ((__tmp50382
                                        (lambda (_g3130231305_ _g3130331308_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3130231305_
                                                  _g3130331308_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50382 '() _L31275_)))
                                (__tmp50375
                                 (let ((__tmp50376
                                        (let ((__tmp50379
                                               (let ((__tmp50380
                                                      (lambda (_g3130031311_
                                                               _g3130131314_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3130031311_
                                                                _g3130131314_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp50380
                                                         '()
                                                         _L31276_)))
                                              (__tmp50377
                                               (let ((__tmp50378
                                                      (lambda (_g3129831317_
                                                               _g3129931320_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g3129831317_
                                                                _g3129931320_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp50378
                                                         '()
                                                         _L31273_))))
                                          (declare (not safe))
                                          (cons __tmp50379 __tmp50377))))
                                   (declare (not safe))
                                   (cons __tmp50376 '()))))
                            (declare (not safe))
                            (cons __tmp50381 __tmp50375))))
                     (declare (not safe))
                     (cons __tmp50383 __tmp50374)))))
            (let* ((___match4639646397_
                    (lambda (_e3112731169_
                             _hd3112631173_
                             _tl3112531176_
                             _e3113031179_
                             _hd3112931183_
                             _tl3112831186_
                             ___splice4631646317_
                             _target3113131189_
                             _tl3113331192_)
                      (letrec ((_loop3113431195_
                                (lambda (_hd3113231199_
                                         _expr3113831202_
                                         _hd3113931204_)
                                  (if (gx#stx-pair? _hd3113231199_)
                                      (let ((_e3113531207_
                                             (gx#syntax-e _hd3113231199_)))
                                        (let ((_lp-tl3113731214_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3113531207_)))
                                              (_lp-hd3113631211_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3113531207_))))
                                          (if (gx#stx-pair? _lp-hd3113631211_)
                                              (let ((_e3114431217_
                                                     (gx#syntax-e
                                                      _lp-hd3113631211_)))
                                                (let ((_tl3114231224_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3114431217_)))
                                                      (_hd3114331221_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3114431217_))))
                                                  (if (gx#stx-pair?
                                                       _tl3114231224_)
                                                      (let ((_e3114731227_
                                                             (gx#syntax-e
                                                              _tl3114231224_)))
                                                        (let ((_tl3114531234_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3114731227_)))
                      (_hd3114631231_
                       (let () (declare (not safe)) (##car _e3114731227_))))
                  (if (gx#stx-null? _tl3114531234_)
                      (_loop3113431195_
                       _lp-tl3113731214_
                       (let ()
                         (declare (not safe))
                         (cons _hd3114631231_ _expr3113831202_))
                       (let ()
                         (declare (not safe))
                         (cons _hd3114331221_ _hd3113931204_)))
                      (let () (declare (not safe)) (_g3107931162_)))))
              (let () (declare (not safe)) (_g3107931162_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g3107931162_)))))
                                      (let ((_hd3114131240_
                                             (reverse _hd3113931204_))
                                            (_expr3114031237_
                                             (reverse _expr3113831202_)))
                                        (if (gx#stx-pair/null? _tl3112831186_)
                                            (let ((___splice4631846319_
                                                   (gx#syntax-split-splice
                                                    _tl3112831186_
                                                    '0)))
                                              (let ((_tl3115031246_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4631846319_
                                                        '1)))
                                                    (_target3114831243_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4631846319_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3115031246_)
                                                    (letrec ((_loop3115131249_
                                                              (lambda (_hd3114931253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body3115531256_)
                        (if (gx#stx-pair? _hd3114931253_)
                            (let ((_e3115231259_ (gx#syntax-e _hd3114931253_)))
                              (let ((_lp-tl3115431266_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3115231259_)))
                                    (_lp-hd3115331263_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3115231259_))))
                                (_loop3115131249_
                                 _lp-tl3115431266_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd3115331263_
                                         _body3115531256_)))))
                            (let ((_body3115631269_
                                   (reverse _body3115531256_)))
                              (___kont4631446315_
                               _body3115631269_
                               _expr3114031237_
                               _hd3114131240_))))))
              (_loop3115131249_ _target3114831243_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3107931162_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3107931162_))))))))
                        (_loop3113431195_ _target3113131189_ '() '()))))
                   (___match4638846389_
                    (lambda (_e3112731169_
                             _hd3112631173_
                             _tl3112531176_
                             _e3113031179_
                             _hd3112931183_
                             _tl3112831186_)
                      (if (gx#stx-pair/null? _hd3112931183_)
                          (let ((___splice4631646317_
                                 (gx#syntax-split-splice _hd3112931183_ '0)))
                            (let ((_tl3113331192_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4631646317_ '1)))
                                  (_target3113131189_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4631646317_ '0))))
                              (if (gx#stx-null? _tl3113331192_)
                                  (___match4639646397_
                                   _e3112731169_
                                   _hd3112631173_
                                   _tl3112531176_
                                   _e3113031179_
                                   _hd3112931183_
                                   _tl3112831186_
                                   ___splice4631646317_
                                   _target3113131189_
                                   _tl3113331192_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3107931162_)))))
                          (let () (declare (not safe)) (_g3107931162_)))))
                   (___match4637646377_
                    (lambda (_e3110331330_
                             _hd3110231334_
                             _tl3110131337_
                             _e3110631340_
                             _hd3110531344_
                             _tl3110431347_
                             _e3110931350_
                             _hd3110831354_
                             _tl3110731357_
                             _e3111231360_
                             _hd3111131364_
                             _tl3111031367_
                             ___splice4631246313_
                             _target3111331370_
                             _tl3111531373_)
                      (letrec ((_loop3111631376_
                                (lambda (_hd3111431380_ _body3112031383_)
                                  (if (gx#stx-pair? _hd3111431380_)
                                      (let ((_e3111731386_
                                             (gx#syntax-e _hd3111431380_)))
                                        (let ((_lp-tl3111931393_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3111731386_)))
                                              (_lp-hd3111831390_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3111731386_))))
                                          (_loop3111631376_
                                           _lp-tl3111931393_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3111831390_
                                                   _body3112031383_)))))
                                      (let ((_body3112131396_
                                             (reverse _body3112031383_)))
                                        (let ((_L31400_ _body3112131396_)
                                              (_L31402_ _hd3111131364_)
                                              (_L31403_ _hd3110831354_)
                                              (_L31404_ _hd3110231334_))
                                          (if (let ()
                                                (declare (not safe))
                                                (|gerbil/core$<match>[1]#match-pattern?|
                                                 _L31403_))
                                              (___kont4631046311_
                                               _L31400_
                                               _L31402_
                                               _L31403_
                                               _L31404_)
                                              (___match4638846389_
                                               _e3110331330_
                                               _hd3110231334_
                                               _tl3110131337_
                                               _e3110631340_
                                               _hd3110531344_
                                               _tl3110431347_))))))))
                        (_loop3111631376_ _target3111331370_ '()))))
                   (___match4634246343_
                    (lambda (_e3108431442_
                             _hd3108331446_
                             _tl3108231449_
                             _e3108731452_
                             _hd3108631456_
                             _tl3108531459_
                             ___splice4630846309_
                             _target3108831462_
                             _tl3109031465_)
                      (letrec ((_loop3109131468_
                                (lambda (_hd3108931472_ _body3109531475_)
                                  (if (gx#stx-pair? _hd3108931472_)
                                      (let ((_e3109231478_
                                             (gx#syntax-e _hd3108931472_)))
                                        (let ((_lp-tl3109431485_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3109231478_)))
                                              (_lp-hd3109331482_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3109231478_))))
                                          (_loop3109131468_
                                           _lp-tl3109431485_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3109331482_
                                                   _body3109531475_)))))
                                      (let ((_body3109631488_
                                             (reverse _body3109531475_)))
                                        (___kont4630646307_
                                         _body3109631488_))))))
                        (_loop3109131468_ _target3108831462_ '())))))
              (if (gx#stx-pair? ___stx4630346304_)
                  (let ((_e3108431442_ (gx#syntax-e ___stx4630346304_)))
                    (let ((_tl3108231449_
                           (let () (declare (not safe)) (##cdr _e3108431442_)))
                          (_hd3108331446_
                           (let ()
                             (declare (not safe))
                             (##car _e3108431442_))))
                      (if (gx#stx-pair? _tl3108231449_)
                          (let ((_e3108731452_ (gx#syntax-e _tl3108231449_)))
                            (let ((_tl3108531459_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3108731452_)))
                                  (_hd3108631456_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3108731452_))))
                              (if (gx#stx-null? _hd3108631456_)
                                  (if (gx#stx-pair/null? _tl3108531459_)
                                      (let ((___splice4630846309_
                                             (gx#syntax-split-splice
                                              _tl3108531459_
                                              '0)))
                                        (let ((_tl3109031465_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4630846309_
                                                  '1)))
                                              (_target3108831462_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4630846309_
                                                  '0))))
                                          (if (gx#stx-null? _tl3109031465_)
                                              (___match4634246343_
                                               _e3108431442_
                                               _hd3108331446_
                                               _tl3108231449_
                                               _e3108731452_
                                               _hd3108631456_
                                               _tl3108531459_
                                               ___splice4630846309_
                                               _target3108831462_
                                               _tl3109031465_)
                                              (if (gx#stx-pair/null?
                                                   _hd3108631456_)
                                                  (let ((___splice4631646317_
                                                         (gx#syntax-split-splice
                                                          _hd3108631456_
                                                          '0)))
                                                    (let ((_tl3113331192_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4631646317_
                                                              '1)))
                                                          (_target3113131189_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4631646317_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3113331192_)
                                                          (___match4639646397_
                                                           _e3108431442_
                                                           _hd3108331446_
                                                           _tl3108231449_
                                                           _e3108731452_
                                                           _hd3108631456_
                                                           _tl3108531459_
                                                           ___splice4631646317_
                                                           _target3113131189_
                                                           _tl3113331192_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3107931162_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3107931162_))))))
                                      (if (gx#stx-pair/null? _hd3108631456_)
                                          (let ((___splice4631646317_
                                                 (gx#syntax-split-splice
                                                  _hd3108631456_
                                                  '0)))
                                            (let ((_tl3113331192_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4631646317_
                                                      '1)))
                                                  (_target3113131189_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4631646317_
                                                      '0))))
                                              (if (gx#stx-null? _tl3113331192_)
                                                  (___match4639646397_
                                                   _e3108431442_
                                                   _hd3108331446_
                                                   _tl3108231449_
                                                   _e3108731452_
                                                   _hd3108631456_
                                                   _tl3108531459_
                                                   ___splice4631646317_
                                                   _target3113131189_
                                                   _tl3113331192_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3107931162_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3107931162_))))
                                  (if (gx#stx-pair? _hd3108631456_)
                                      (let ((_e3110931350_
                                             (gx#syntax-e _hd3108631456_)))
                                        (let ((_tl3110731357_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3110931350_)))
                                              (_hd3110831354_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3110931350_))))
                                          (if (gx#stx-pair? _tl3110731357_)
                                              (let ((_e3111231360_
                                                     (gx#syntax-e
                                                      _tl3110731357_)))
                                                (let ((_tl3111031367_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3111231360_)))
                                                      (_hd3111131364_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3111231360_))))
                                                  (if (gx#stx-null?
                                                       _tl3111031367_)
                                                      (if (gx#stx-pair/null?
                                                           _tl3108531459_)
                                                          (let ((___splice4631246313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl3108531459_ '0)))
                    (let ((_tl3111531373_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4631246313_ '1)))
                          (_target3111331370_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4631246313_ '0))))
                      (if (gx#stx-null? _tl3111531373_)
                          (___match4637646377_
                           _e3108431442_
                           _hd3108331446_
                           _tl3108231449_
                           _e3108731452_
                           _hd3108631456_
                           _tl3108531459_
                           _e3110931350_
                           _hd3110831354_
                           _tl3110731357_
                           _e3111231360_
                           _hd3111131364_
                           _tl3111031367_
                           ___splice4631246313_
                           _target3111331370_
                           _tl3111531373_)
                          (if (gx#stx-pair/null? _hd3108631456_)
                              (let ((___splice4631646317_
                                     (gx#syntax-split-splice
                                      _hd3108631456_
                                      '0)))
                                (let ((_tl3113331192_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4631646317_
                                          '1)))
                                      (_target3113131189_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4631646317_
                                          '0))))
                                  (if (gx#stx-null? _tl3113331192_)
                                      (___match4639646397_
                                       _e3108431442_
                                       _hd3108331446_
                                       _tl3108231449_
                                       _e3108731452_
                                       _hd3108631456_
                                       _tl3108531459_
                                       ___splice4631646317_
                                       _target3113131189_
                                       _tl3113331192_)
                                      (let ()
                                        (declare (not safe))
                                        (_g3107931162_)))))
                              (let () (declare (not safe)) (_g3107931162_))))))
                  (if (gx#stx-pair/null? _hd3108631456_)
                      (let ((___splice4631646317_
                             (gx#syntax-split-splice _hd3108631456_ '0)))
                        (let ((_tl3113331192_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4631646317_ '1)))
                              (_target3113131189_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4631646317_ '0))))
                          (if (gx#stx-null? _tl3113331192_)
                              (___match4639646397_
                               _e3108431442_
                               _hd3108331446_
                               _tl3108231449_
                               _e3108731452_
                               _hd3108631456_
                               _tl3108531459_
                               ___splice4631646317_
                               _target3113131189_
                               _tl3113331192_)
                              (let () (declare (not safe)) (_g3107931162_)))))
                      (let () (declare (not safe)) (_g3107931162_))))
              (if (gx#stx-pair/null? _hd3108631456_)
                  (let ((___splice4631646317_
                         (gx#syntax-split-splice _hd3108631456_ '0)))
                    (let ((_tl3113331192_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4631646317_ '1)))
                          (_target3113131189_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4631646317_ '0))))
                      (if (gx#stx-null? _tl3113331192_)
                          (___match4639646397_
                           _e3108431442_
                           _hd3108331446_
                           _tl3108231449_
                           _e3108731452_
                           _hd3108631456_
                           _tl3108531459_
                           ___splice4631646317_
                           _target3113131189_
                           _tl3113331192_)
                          (let () (declare (not safe)) (_g3107931162_)))))
                  (let () (declare (not safe)) (_g3107931162_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd3108631456_)
                                                  (let ((___splice4631646317_
                                                         (gx#syntax-split-splice
                                                          _hd3108631456_
                                                          '0)))
                                                    (let ((_tl3113331192_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4631646317_
                                                              '1)))
                                                          (_target3113131189_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4631646317_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3113331192_)
                                                          (___match4639646397_
                                                           _e3108431442_
                                                           _hd3108331446_
                                                           _tl3108231449_
                                                           _e3108731452_
                                                           _hd3108631456_
                                                           _tl3108531459_
                                                           ___splice4631646317_
                                                           _target3113131189_
                                                           _tl3113331192_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3107931162_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3107931162_))))))
                                      (if (gx#stx-pair/null? _hd3108631456_)
                                          (let ((___splice4631646317_
                                                 (gx#syntax-split-splice
                                                  _hd3108631456_
                                                  '0)))
                                            (let ((_tl3113331192_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4631646317_
                                                      '1)))
                                                  (_target3113131189_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4631646317_
                                                      '0))))
                                              (if (gx#stx-null? _tl3113331192_)
                                                  (___match4639646397_
                                                   _e3108431442_
                                                   _hd3108331446_
                                                   _tl3108231449_
                                                   _e3108731452_
                                                   _hd3108631456_
                                                   _tl3108531459_
                                                   ___splice4631646317_
                                                   _target3113131189_
                                                   _tl3113331192_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3107931162_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3107931162_)))))))
                          (let () (declare (not safe)) (_g3107931162_)))))
                  (let () (declare (not safe)) (_g3107931162_))))))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx31525_)
        (let* ((___stx4639946400_ _$stx31525_)
               (_g3153031582_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4639946400_))))
          (let ((___kont4640246403_
                 (lambda (_L31752_ _L31754_ _L31755_ _L31756_ _L31757_)
                   (let ((__tmp50393 (gx#datum->syntax '#f 'with))
                         (__tmp50384
                          (let ((__tmp50390
                                 (let ((__tmp50391
                                        (let ((__tmp50392
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L31755_ '()))))
                                          (declare (not safe))
                                          (cons _L31756_ __tmp50392))))
                                   (declare (not safe))
                                   (cons __tmp50391 '())))
                                (__tmp50385
                                 (let ((__tmp50386
                                        (let ((__tmp50387
                                               (let ((__tmp50388
                                                      (let ((__tmp50389
                                                             (lambda (_g3178231785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g3178331788_)
                       (let ()
                         (declare (not safe))
                         (cons _g3178231785_ _g3178331788_)))))
                (declare (not safe))
                (foldr1 __tmp50389 '() _L31752_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L31754_ __tmp50388))))
                                          (declare (not safe))
                                          (cons _L31757_ __tmp50387))))
                                   (declare (not safe))
                                   (cons __tmp50386 '()))))
                            (declare (not safe))
                            (cons __tmp50390 __tmp50385))))
                     (declare (not safe))
                     (cons __tmp50393 __tmp50384))))
                (___kont4640646407_
                 (lambda (_L31639_)
                   (let ((__tmp50397 (gx#datum->syntax '#f 'let))
                         (__tmp50394
                          (let ((__tmp50395
                                 (let ((__tmp50396
                                        (lambda (_g3165631659_ _g3165731662_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3165631659_
                                                  _g3165731662_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp50396 '() _L31639_))))
                            (declare (not safe))
                            (cons '() __tmp50395))))
                     (declare (not safe))
                     (cons __tmp50397 __tmp50394)))))
            (let* ((___match4647246473_
                    (lambda (_e3156431589_
                             _hd3156331593_
                             _tl3156231596_
                             _e3156731599_
                             _hd3156631603_
                             _tl3156531606_
                             ___splice4640846409_
                             _target3156831609_
                             _tl3157031612_)
                      (letrec ((_loop3157131615_
                                (lambda (_hd3156931619_ _body3157531622_)
                                  (if (gx#stx-pair? _hd3156931619_)
                                      (let ((_e3157231625_
                                             (gx#syntax-e _hd3156931619_)))
                                        (let ((_lp-tl3157431632_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3157231625_)))
                                              (_lp-hd3157331629_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3157231625_))))
                                          (_loop3157131615_
                                           _lp-tl3157431632_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3157331629_
                                                   _body3157531622_)))))
                                      (let ((_body3157631635_
                                             (reverse _body3157531622_)))
                                        (___kont4640646407_
                                         _body3157631635_))))))
                        (_loop3157131615_ _target3156831609_ '()))))
                   (___match4645046451_
                    (lambda (_e3153931672_
                             _hd3153831676_
                             _tl3153731679_
                             _e3154231682_
                             _hd3154131686_
                             _tl3154031689_
                             _e3154531692_
                             _hd3154431696_
                             _tl3154331699_
                             _e3154831702_
                             _hd3154731706_
                             _tl3154631709_
                             _e3155131712_
                             _hd3155031716_
                             _tl3154931719_
                             ___splice4640446405_
                             _target3155231722_
                             _tl3155431725_)
                      (letrec ((_loop3155531728_
                                (lambda (_hd3155331732_ _body3155931735_)
                                  (if (gx#stx-pair? _hd3155331732_)
                                      (let ((_e3155631738_
                                             (gx#syntax-e _hd3155331732_)))
                                        (let ((_lp-tl3155831745_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3155631738_)))
                                              (_lp-hd3155731742_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3155631738_))))
                                          (_loop3155531728_
                                           _lp-tl3155831745_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3155731742_
                                                   _body3155931735_)))))
                                      (let ((_body3156031748_
                                             (reverse _body3155931735_)))
                                        (___kont4640246403_
                                         _body3156031748_
                                         _tl3154331699_
                                         _hd3155031716_
                                         _hd3154731706_
                                         _hd3153831676_))))))
                        (_loop3155531728_ _target3155231722_ '())))))
              (if (gx#stx-pair? ___stx4639946400_)
                  (let ((_e3153931672_ (gx#syntax-e ___stx4639946400_)))
                    (let ((_tl3153731679_
                           (let () (declare (not safe)) (##cdr _e3153931672_)))
                          (_hd3153831676_
                           (let ()
                             (declare (not safe))
                             (##car _e3153931672_))))
                      (if (gx#stx-pair? _tl3153731679_)
                          (let ((_e3154231682_ (gx#syntax-e _tl3153731679_)))
                            (let ((_tl3154031689_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3154231682_)))
                                  (_hd3154131686_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3154231682_))))
                              (if (gx#stx-pair? _hd3154131686_)
                                  (let ((_e3154531692_
                                         (gx#syntax-e _hd3154131686_)))
                                    (let ((_tl3154331699_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3154531692_)))
                                          (_hd3154431696_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3154531692_))))
                                      (if (gx#stx-pair? _hd3154431696_)
                                          (let ((_e3154831702_
                                                 (gx#syntax-e _hd3154431696_)))
                                            (let ((_tl3154631709_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3154831702_)))
                                                  (_hd3154731706_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3154831702_))))
                                              (if (gx#stx-pair? _tl3154631709_)
                                                  (let ((_e3155131712_
                                                         (gx#syntax-e
                                                          _tl3154631709_)))
                                                    (let ((_tl3154931719_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3155131712_)))
                                                          (_hd3155031716_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3155131712_))))
                                                      (if (gx#stx-null?
                                                           _tl3154931719_)
                                                          (if (gx#stx-pair/null?
                                                               _tl3154031689_)
                                                              (let ((___splice4640446405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl3154031689_ '0)))
                        (let ((_tl3155431725_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4640446405_ '1)))
                              (_target3155231722_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4640446405_ '0))))
                          (if (gx#stx-null? _tl3155431725_)
                              (___match4645046451_
                               _e3153931672_
                               _hd3153831676_
                               _tl3153731679_
                               _e3154231682_
                               _hd3154131686_
                               _tl3154031689_
                               _e3154531692_
                               _hd3154431696_
                               _tl3154331699_
                               _e3154831702_
                               _hd3154731706_
                               _tl3154631709_
                               _e3155131712_
                               _hd3155031716_
                               _tl3154931719_
                               ___splice4640446405_
                               _target3155231722_
                               _tl3155431725_)
                              (let () (declare (not safe)) (_g3153031582_)))))
                      (let () (declare (not safe)) (_g3153031582_)))
                  (let () (declare (not safe)) (_g3153031582_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3153031582_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3153031582_)))))
                                  (if (gx#stx-null? _hd3154131686_)
                                      (if (gx#stx-pair/null? _tl3154031689_)
                                          (let ((___splice4640846409_
                                                 (gx#syntax-split-splice
                                                  _tl3154031689_
                                                  '0)))
                                            (let ((_tl3157031612_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4640846409_
                                                      '1)))
                                                  (_target3156831609_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4640846409_
                                                      '0))))
                                              (if (gx#stx-null? _tl3157031612_)
                                                  (___match4647246473_
                                                   _e3153931672_
                                                   _hd3153831676_
                                                   _tl3153731679_
                                                   _e3154231682_
                                                   _hd3154131686_
                                                   _tl3154031689_
                                                   ___splice4640846409_
                                                   _target3156831609_
                                                   _tl3157031612_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3153031582_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3153031582_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3153031582_))))))
                          (let () (declare (not safe)) (_g3153031582_)))))
                  (let () (declare (not safe)) (_g3153031582_))))))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx31797_)
        (let* ((___stx4647546476_ _$stx31797_)
               (_g3180831954_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4647546476_))))
          (let ((___kont4647846479_
                 (lambda (_L32558_ _L32560_ _L32561_)
                   (let ((__tmp50403 (gx#datum->syntax '#f 'and))
                         (__tmp50398
                          (let ((__tmp50399
                                 (lambda (_g3258232585_ _g3258332588_)
                                   (let ((__tmp50400
                                          (let ((__tmp50401
                                                 (let ((__tmp50402
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32558_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3258232585_
                                                         __tmp50402))))
                                            (declare (not safe))
                                            (cons _L32561_ __tmp50401))))
                                     (declare (not safe))
                                     (cons __tmp50400 _g3258332588_)))))
                            (declare (not safe))
                            (foldr1 __tmp50399 '() _L32560_))))
                     (declare (not safe))
                     (cons __tmp50403 __tmp50398))))
                (___kont4648246483_
                 (lambda (_L32448_ _L32450_ _L32451_)
                   (let ((__tmp50409 (gx#datum->syntax '#f 'or))
                         (__tmp50404
                          (let ((__tmp50405
                                 (lambda (_g3247232475_ _g3247332478_)
                                   (let ((__tmp50406
                                          (let ((__tmp50407
                                                 (let ((__tmp50408
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32448_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g3247232475_
                                                         __tmp50408))))
                                            (declare (not safe))
                                            (cons _L32451_ __tmp50407))))
                                     (declare (not safe))
                                     (cons __tmp50406 _g3247332478_)))))
                            (declare (not safe))
                            (foldr1 __tmp50405 '() _L32450_))))
                     (declare (not safe))
                     (cons __tmp50409 __tmp50404))))
                (___kont4648646487_
                 (lambda (_L32348_ _L32350_ _L32351_)
                   (let ((__tmp50414 (gx#datum->syntax '#f 'not))
                         (__tmp50410
                          (let ((__tmp50411
                                 (let ((__tmp50412
                                        (let ((__tmp50413
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L32348_ '()))))
                                          (declare (not safe))
                                          (cons _L32350_ __tmp50413))))
                                   (declare (not safe))
                                   (cons _L32351_ __tmp50412))))
                            (declare (not safe))
                            (cons __tmp50411 '()))))
                     (declare (not safe))
                     (cons __tmp50414 __tmp50410))))
                (___kont4648846489_
                 (lambda (_L32274_ _L32276_)
                   (let ((__tmp50415
                          (let () (declare (not safe)) (cons _L32274_ '()))))
                     (declare (not safe))
                     (cons _L32276_ __tmp50415))))
                (___kont4649046491_
                 (lambda (_L32222_ _L32224_)
                   (let ((__tmp50424 (gx#datum->syntax '#f 'lambda))
                         (__tmp50416
                          (let ((__tmp50422
                                 (let ((__tmp50423
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50423 '())))
                                (__tmp50417
                                 (let ((__tmp50418
                                        (let ((__tmp50419
                                               (let ((__tmp50420
                                                      (let ((__tmp50421
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$obj)))
                                                        (declare (not safe))
                                                        (cons __tmp50421
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L32222_ __tmp50420))))
                                          (declare (not safe))
                                          (cons _L32224_ __tmp50419))))
                                   (declare (not safe))
                                   (cons __tmp50418 '()))))
                            (declare (not safe))
                            (cons __tmp50422 __tmp50417))))
                     (declare (not safe))
                     (cons __tmp50424 __tmp50416))))
                (___kont4649246493_
                 (lambda (_L32174_ _L32176_ _L32177_)
                   (let ((__tmp50443 (gx#datum->syntax '#f 'lambda))
                         (__tmp50425
                          (let ((__tmp50441
                                 (let ((__tmp50442
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50442 '())))
                                (__tmp50426
                                 (let ((__tmp50427
                                        (let ((__tmp50440
                                               (gx#datum->syntax '#f 'alet))
                                              (__tmp50428
                                               (let ((__tmp50433
                                                      (let ((__tmp50439
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$val))
                                                            (__tmp50434
                                                             (let ((__tmp50435
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50436
                                   (let ((__tmp50437
                                          (let ((__tmp50438
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp50438 '()))))
                                     (declare (not safe))
                                     (cons _L32176_ __tmp50437))))
                              (declare (not safe))
                              (cons _L32177_ __tmp50436))))
                       (declare (not safe))
                       (cons __tmp50435 '()))))
                (declare (not safe))
                (cons __tmp50439 __tmp50434)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50429
                                                      (let ((__tmp50430
                                                             (let ((__tmp50431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50432 (gx#datum->syntax '#f '$val)))
                              (declare (not safe))
                              (cons __tmp50432 '()))))
                       (declare (not safe))
                       (cons _L32174_ __tmp50431))))
                (declare (not safe))
                (cons __tmp50430 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50433
                                                       __tmp50429))))
                                          (declare (not safe))
                                          (cons __tmp50440 __tmp50428))))
                                   (declare (not safe))
                                   (cons __tmp50427 '()))))
                            (declare (not safe))
                            (cons __tmp50441 __tmp50426))))
                     (declare (not safe))
                     (cons __tmp50443 __tmp50425))))
                (___kont4649446495_
                 (lambda (_L32105_ _L32107_ _L32108_)
                   (let ((__tmp50459 (gx#datum->syntax '#f 'lambda))
                         (__tmp50444
                          (let ((__tmp50457
                                 (let ((__tmp50458
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50458 '())))
                                (__tmp50445
                                 (let ((__tmp50446
                                        (let ((__tmp50456
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp50447
                                               (let ((__tmp50452
                                                      (let ((__tmp50453
                                                             (let ((__tmp50454
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50455 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50455 '()))))
                       (declare (not safe))
                       (cons _L32107_ __tmp50454))))
                (declare (not safe))
                (cons _L32108_ __tmp50453)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50448
                                                      (let ((__tmp50449
                                                             (let ((__tmp50450
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50451 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50451 '()))))
                       (declare (not safe))
                       (cons _L32105_ __tmp50450))))
                (declare (not safe))
                (cons __tmp50449 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50452
                                                       __tmp50448))))
                                          (declare (not safe))
                                          (cons __tmp50456 __tmp50447))))
                                   (declare (not safe))
                                   (cons __tmp50446 '()))))
                            (declare (not safe))
                            (cons __tmp50457 __tmp50445))))
                     (declare (not safe))
                     (cons __tmp50459 __tmp50444))))
                (___kont4649646497_
                 (lambda (_L32025_ _L32027_ _L32028_ _L32029_)
                   (let ((__tmp50477 (gx#datum->syntax '#f 'lambda))
                         (__tmp50460
                          (let ((__tmp50475
                                 (let ((__tmp50476
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp50476 '())))
                                (__tmp50461
                                 (let ((__tmp50462
                                        (let ((__tmp50474
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp50463
                                               (let ((__tmp50470
                                                      (let ((__tmp50471
                                                             (let ((__tmp50472
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50473 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp50473 '()))))
                       (declare (not safe))
                       (cons _L32028_ __tmp50472))))
                (declare (not safe))
                (cons _L32029_ __tmp50471)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp50464
                                                      (let ((__tmp50465
                                                             (let ((__tmp50466
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp50467
                                   (let ((__tmp50468
                                          (let ((__tmp50469
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp50469 '()))))
                                     (declare (not safe))
                                     (cons _L32027_ __tmp50468))))
                              (declare (not safe))
                              (cons __tmp50467 '()))))
                       (declare (not safe))
                       (cons _L32025_ __tmp50466))))
                (declare (not safe))
                (cons __tmp50465 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50470
                                                       __tmp50464))))
                                          (declare (not safe))
                                          (cons __tmp50474 __tmp50463))))
                                   (declare (not safe))
                                   (cons __tmp50462 '()))))
                            (declare (not safe))
                            (cons __tmp50475 __tmp50461))))
                     (declare (not safe))
                     (cons __tmp50477 __tmp50460)))))
            (let* ((___match4664846649_
                    (lambda (_e3190032134_
                             _hd3189932138_
                             _tl3189832141_
                             _e3190332144_
                             _hd3190232148_
                             _tl3190132151_
                             _e3190632154_
                             _hd3190532158_
                             _tl3190432161_)
                      (if (gx#identifier? _hd3190532158_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g50479_|
                               _hd3190532158_)
                              (if (gx#stx-pair? _tl3190432161_)
                                  (let ((_e3190932164_
                                         (gx#syntax-e _tl3190432161_)))
                                    (let ((_tl3190732171_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3190932164_)))
                                          (_hd3190832168_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3190932164_))))
                                      (if (gx#stx-null? _tl3190732171_)
                                          (___kont4649246493_
                                           _hd3190832168_
                                           _hd3190232148_
                                           _hd3189932138_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3180831954_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3180831954_)))
                              (let () (declare (not safe)) (_g3180831954_)))
                          (if (gx#stx-datum? _hd3190532158_)
                              (let ((_e3192232091_ (gx#stx-e _hd3190532158_)))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _e3192232091_ '::))
                                    (if (gx#stx-pair? _tl3190432161_)
                                        (let ((_e3192532095_
                                               (gx#syntax-e _tl3190432161_)))
                                          (let ((_tl3192332102_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3192532095_)))
                                                (_hd3192432099_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3192532095_))))
                                            (if (gx#stx-null? _tl3192332102_)
                                                (___kont4649446495_
                                                 _hd3192432099_
                                                 _hd3190232148_
                                                 _hd3189932138_)
                                                (if (gx#stx-pair?
                                                     _tl3192332102_)
                                                    (let ((_e3194532005_
                                                           (gx#syntax-e
                                                            _tl3192332102_)))
                                                      (let ((_tl3194332012_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3194532005_)))
                    (_hd3194432009_
                     (let () (declare (not safe)) (##car _e3194532005_))))
                (if (gx#identifier? _hd3194432009_)
                    (if (gx#free-identifier=?
                         |gerbil/core$<match>[1]#_g50478_|
                         _hd3194432009_)
                        (if (gx#stx-pair? _tl3194332012_)
                            (let ((_e3194832015_ (gx#syntax-e _tl3194332012_)))
                              (let ((_tl3194632022_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3194832015_)))
                                    (_hd3194732019_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3194832015_))))
                                (if (gx#stx-null? _tl3194632022_)
                                    (___kont4649646497_
                                     _hd3194732019_
                                     _hd3192432099_
                                     _hd3190232148_
                                     _hd3189932138_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3180831954_)))))
                            (let () (declare (not safe)) (_g3180831954_)))
                        (let () (declare (not safe)) (_g3180831954_)))
                    (let () (declare (not safe)) (_g3180831954_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3180831954_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3180831954_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3180831954_))))
                              (let () (declare (not safe)) (_g3180831954_))))))
                   (___match4662846629_
                    (lambda (_e3189132202_
                             _hd3189032206_
                             _tl3188932209_
                             _e3189432212_
                             _hd3189332216_
                             _tl3189232219_)
                      (if (gx#stx-null? _tl3189232219_)
                          (___kont4649046491_ _hd3189332216_ _hd3189032206_)
                          (if (gx#stx-pair? _tl3189232219_)
                              (let ((_e3190632154_
                                     (gx#syntax-e _tl3189232219_)))
                                (let ((_tl3190432161_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3190632154_)))
                                      (_hd3190532158_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3190632154_))))
                                  (if (gx#identifier? _hd3190532158_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50479_|
                                           _hd3190532158_)
                                          (if (gx#stx-pair? _tl3190432161_)
                                              (let ((_e3190932164_
                                                     (gx#syntax-e
                                                      _tl3190432161_)))
                                                (let ((_tl3190732171_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3190932164_)))
                                                      (_hd3190832168_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3190932164_))))
                                                  (if (gx#stx-null?
                                                       _tl3190732171_)
                                                      (___kont4649246493_
                                                       _hd3190832168_
                                                       _hd3189332216_
                                                       _hd3189032206_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3180831954_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3180831954_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3180831954_)))
                                      (if (gx#stx-datum? _hd3190532158_)
                                          (let ((_e3192232091_
                                                 (gx#stx-e _hd3190532158_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e3192232091_ '::))
                                                (if (gx#stx-pair?
                                                     _tl3190432161_)
                                                    (let ((_e3192532095_
                                                           (gx#syntax-e
                                                            _tl3190432161_)))
                                                      (let ((_tl3192332102_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3192532095_)))
                    (_hd3192432099_
                     (let () (declare (not safe)) (##car _e3192532095_))))
                (if (gx#stx-null? _tl3192332102_)
                    (___kont4649446495_
                     _hd3192432099_
                     _hd3189332216_
                     _hd3189032206_)
                    (if (gx#stx-pair? _tl3192332102_)
                        (let ((_e3194532005_ (gx#syntax-e _tl3192332102_)))
                          (let ((_tl3194332012_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3194532005_)))
                                (_hd3194432009_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3194532005_))))
                            (if (gx#identifier? _hd3194432009_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g50478_|
                                     _hd3194432009_)
                                    (if (gx#stx-pair? _tl3194332012_)
                                        (let ((_e3194832015_
                                               (gx#syntax-e _tl3194332012_)))
                                          (let ((_tl3194632022_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3194832015_)))
                                                (_hd3194732019_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3194832015_))))
                                            (if (gx#stx-null? _tl3194632022_)
                                                (___kont4649646497_
                                                 _hd3194732019_
                                                 _hd3192432099_
                                                 _hd3189332216_
                                                 _hd3189032206_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3180831954_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3180831954_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3180831954_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3180831954_)))))
                        (let () (declare (not safe)) (_g3180831954_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3180831954_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3180831954_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3180831954_))))))
                              (let () (declare (not safe)) (_g3180831954_))))))
                   (___match4655846559_
                    (lambda (_e3183932378_
                             _hd3183832382_
                             _tl3183732385_
                             _e3184232388_
                             _hd3184132392_
                             _tl3184032395_
                             _e3184532398_
                             _hd3184432402_
                             _tl3184332405_
                             ___splice4648446485_
                             _target3184632408_
                             _tl3184832411_)
                      (letrec ((_loop3184932414_
                                (lambda (_hd3184732418_ _pred3185332421_)
                                  (if (gx#stx-pair? _hd3184732418_)
                                      (let ((_e3185032424_
                                             (gx#syntax-e _hd3184732418_)))
                                        (let ((_lp-tl3185232431_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3185032424_)))
                                              (_lp-hd3185132428_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3185032424_))))
                                          (_loop3184932414_
                                           _lp-tl3185232431_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3185132428_
                                                   _pred3185332421_)))))
                                      (let ((_pred3185432434_
                                             (reverse _pred3185332421_)))
                                        (if (gx#stx-pair? _tl3184032395_)
                                            (let ((_e3185732438_
                                                   (gx#syntax-e
                                                    _tl3184032395_)))
                                              (let ((_tl3185532445_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3185732438_)))
                                                    (_hd3185632442_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3185732438_))))
                                                (if (gx#stx-null?
                                                     _tl3185532445_)
                                                    (___kont4648246483_
                                                     _hd3185632442_
                                                     _pred3185432434_
                                                     _hd3183832382_)
                                                    (___match4664846649_
                                                     _e3183932378_
                                                     _hd3183832382_
                                                     _tl3183732385_
                                                     _e3184232388_
                                                     _hd3184132392_
                                                     _tl3184032395_
                                                     _e3185732438_
                                                     _hd3185632442_
                                                     _tl3185532445_))))
                                            (___match4662846629_
                                             _e3183932378_
                                             _hd3183832382_
                                             _tl3183732385_
                                             _e3184232388_
                                             _hd3184132392_
                                             _tl3184032395_)))))))
                        (_loop3184932414_ _target3184632408_ '()))))
                   (___match4652846529_
                    (lambda (_e3181532488_
                             _hd3181432492_
                             _tl3181332495_
                             _e3181832498_
                             _hd3181732502_
                             _tl3181632505_
                             _e3182132508_
                             _hd3182032512_
                             _tl3181932515_
                             ___splice4648046481_
                             _target3182232518_
                             _tl3182432521_)
                      (letrec ((_loop3182532524_
                                (lambda (_hd3182332528_ _pred3182932531_)
                                  (if (gx#stx-pair? _hd3182332528_)
                                      (let ((_e3182632534_
                                             (gx#syntax-e _hd3182332528_)))
                                        (let ((_lp-tl3182832541_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3182632534_)))
                                              (_lp-hd3182732538_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3182632534_))))
                                          (_loop3182532524_
                                           _lp-tl3182832541_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd3182732538_
                                                   _pred3182932531_)))))
                                      (let ((_pred3183032544_
                                             (reverse _pred3182932531_)))
                                        (if (gx#stx-pair? _tl3181632505_)
                                            (let ((_e3183332548_
                                                   (gx#syntax-e
                                                    _tl3181632505_)))
                                              (let ((_tl3183132555_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3183332548_)))
                                                    (_hd3183232552_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3183332548_))))
                                                (if (gx#stx-null?
                                                     _tl3183132555_)
                                                    (___kont4647846479_
                                                     _hd3183232552_
                                                     _pred3183032544_
                                                     _hd3181432492_)
                                                    (___match4664846649_
                                                     _e3181532488_
                                                     _hd3181432492_
                                                     _tl3181332495_
                                                     _e3181832498_
                                                     _hd3181732502_
                                                     _tl3181632505_
                                                     _e3183332548_
                                                     _hd3183232552_
                                                     _tl3183132555_))))
                                            (___match4662846629_
                                             _e3181532488_
                                             _hd3181432492_
                                             _tl3181332495_
                                             _e3181832498_
                                             _hd3181732502_
                                             _tl3181632505_)))))))
                        (_loop3182532524_ _target3182232518_ '())))))
              (if (gx#stx-pair? ___stx4647546476_)
                  (let ((_e3181532488_ (gx#syntax-e ___stx4647546476_)))
                    (let ((_tl3181332495_
                           (let () (declare (not safe)) (##cdr _e3181532488_)))
                          (_hd3181432492_
                           (let ()
                             (declare (not safe))
                             (##car _e3181532488_))))
                      (if (gx#stx-pair? _tl3181332495_)
                          (let ((_e3181832498_ (gx#syntax-e _tl3181332495_)))
                            (let ((_tl3181632505_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3181832498_)))
                                  (_hd3181732502_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3181832498_))))
                              (if (gx#stx-pair? _hd3181732502_)
                                  (let ((_e3182132508_
                                         (gx#syntax-e _hd3181732502_)))
                                    (let ((_tl3181932515_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3182132508_)))
                                          (_hd3182032512_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3182132508_))))
                                      (if (gx#identifier? _hd3182032512_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50482_|
                                               _hd3182032512_)
                                              (if (gx#stx-pair/null?
                                                   _tl3181932515_)
                                                  (let ((___splice4648046481_
                                                         (gx#syntax-split-splice
                                                          _tl3181932515_
                                                          '0)))
                                                    (let ((_tl3182432521_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4648046481_
                                                              '1)))
                                                          (_target3182232518_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4648046481_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3182432521_)
                                                          (___match4652846529_
                                                           _e3181532488_
                                                           _hd3181432492_
                                                           _tl3181332495_
                                                           _e3181832498_
                                                           _hd3181732502_
                                                           _tl3181632505_
                                                           _e3182132508_
                                                           _hd3182032512_
                                                           _tl3181932515_
                                                           ___splice4648046481_
                                                           _target3182232518_
                                                           _tl3182432521_)
                                                          (if (gx#stx-pair?
                                                               _tl3181632505_)
                                                              (let ((_e3188632264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl3181632505_)))
                        (let ((_tl3188432271_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3188632264_)))
                              (_hd3188532268_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3188632264_))))
                          (if (gx#stx-null? _tl3188432271_)
                              (___kont4648846489_
                               _hd3188532268_
                               _hd3181732502_)
                              (if (gx#identifier? _hd3188532268_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50479_|
                                       _hd3188532268_)
                                      (if (gx#stx-pair? _tl3188432271_)
                                          (let ((_e3190932164_
                                                 (gx#syntax-e _tl3188432271_)))
                                            (let ((_tl3190732171_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3190932164_)))
                                                  (_hd3190832168_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3190932164_))))
                                              (if (gx#stx-null? _tl3190732171_)
                                                  (___kont4649246493_
                                                   _hd3190832168_
                                                   _hd3181732502_
                                                   _hd3181432492_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3180831954_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3180831954_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3180831954_)))
                                  (if (gx#stx-datum? _hd3188532268_)
                                      (let ((_e3192232091_
                                             (gx#stx-e _hd3188532268_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e3192232091_ '::))
                                            (if (gx#stx-pair? _tl3188432271_)
                                                (let ((_e3192532095_
                                                       (gx#syntax-e
                                                        _tl3188432271_)))
                                                  (let ((_tl3192332102_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3192532095_)))
                                                        (_hd3192432099_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3192532095_))))
                                                    (if (gx#stx-null?
                                                         _tl3192332102_)
                                                        (___kont4649446495_
                                                         _hd3192432099_
                                                         _hd3181732502_
                                                         _hd3181432492_)
                                                        (if (gx#stx-pair?
                                                             _tl3192332102_)
                                                            (let ((_e3194532005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3192332102_)))
                      (let ((_tl3194332012_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3194532005_)))
                            (_hd3194432009_
                             (let ()
                               (declare (not safe))
                               (##car _e3194532005_))))
                        (if (gx#identifier? _hd3194432009_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g50478_|
                                 _hd3194432009_)
                                (if (gx#stx-pair? _tl3194332012_)
                                    (let ((_e3194832015_
                                           (gx#syntax-e _tl3194332012_)))
                                      (let ((_tl3194632022_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3194832015_)))
                                            (_hd3194732019_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3194832015_))))
                                        (if (gx#stx-null? _tl3194632022_)
                                            (___kont4649646497_
                                             _hd3194732019_
                                             _hd3192432099_
                                             _hd3181732502_
                                             _hd3181432492_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3180831954_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3180831954_)))
                                (let () (declare (not safe)) (_g3180831954_)))
                            (let () (declare (not safe)) (_g3180831954_)))))
                    (let () (declare (not safe)) (_g3180831954_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3180831954_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3180831954_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3180831954_)))))))
                      (if (gx#stx-null? _tl3181632505_)
                          (___kont4649046491_ _hd3181732502_ _hd3181432492_)
                          (let () (declare (not safe)) (_g3180831954_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl3181632505_)
                                                      (let ((_e3188632264_
                                                             (gx#syntax-e
                                                              _tl3181632505_)))
                                                        (let ((_tl3188432271_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3188632264_)))
                      (_hd3188532268_
                       (let () (declare (not safe)) (##car _e3188632264_))))
                  (if (gx#stx-null? _tl3188432271_)
                      (___kont4648846489_ _hd3188532268_ _hd3181732502_)
                      (if (gx#identifier? _hd3188532268_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g50479_|
                               _hd3188532268_)
                              (if (gx#stx-pair? _tl3188432271_)
                                  (let ((_e3190932164_
                                         (gx#syntax-e _tl3188432271_)))
                                    (let ((_tl3190732171_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3190932164_)))
                                          (_hd3190832168_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3190932164_))))
                                      (if (gx#stx-null? _tl3190732171_)
                                          (___kont4649246493_
                                           _hd3190832168_
                                           _hd3181732502_
                                           _hd3181432492_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3180831954_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3180831954_)))
                              (let () (declare (not safe)) (_g3180831954_)))
                          (if (gx#stx-datum? _hd3188532268_)
                              (let ((_e3192232091_ (gx#stx-e _hd3188532268_)))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _e3192232091_ '::))
                                    (if (gx#stx-pair? _tl3188432271_)
                                        (let ((_e3192532095_
                                               (gx#syntax-e _tl3188432271_)))
                                          (let ((_tl3192332102_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3192532095_)))
                                                (_hd3192432099_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3192532095_))))
                                            (if (gx#stx-null? _tl3192332102_)
                                                (___kont4649446495_
                                                 _hd3192432099_
                                                 _hd3181732502_
                                                 _hd3181432492_)
                                                (if (gx#stx-pair?
                                                     _tl3192332102_)
                                                    (let ((_e3194532005_
                                                           (gx#syntax-e
                                                            _tl3192332102_)))
                                                      (let ((_tl3194332012_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3194532005_)))
                    (_hd3194432009_
                     (let () (declare (not safe)) (##car _e3194532005_))))
                (if (gx#identifier? _hd3194432009_)
                    (if (gx#free-identifier=?
                         |gerbil/core$<match>[1]#_g50478_|
                         _hd3194432009_)
                        (if (gx#stx-pair? _tl3194332012_)
                            (let ((_e3194832015_ (gx#syntax-e _tl3194332012_)))
                              (let ((_tl3194632022_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3194832015_)))
                                    (_hd3194732019_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3194832015_))))
                                (if (gx#stx-null? _tl3194632022_)
                                    (___kont4649646497_
                                     _hd3194732019_
                                     _hd3192432099_
                                     _hd3181732502_
                                     _hd3181432492_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3180831954_)))))
                            (let () (declare (not safe)) (_g3180831954_)))
                        (let () (declare (not safe)) (_g3180831954_)))
                    (let () (declare (not safe)) (_g3180831954_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3180831954_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3180831954_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3180831954_))))
                              (let ()
                                (declare (not safe))
                                (_g3180831954_)))))))
              (if (gx#stx-null? _tl3181632505_)
                  (___kont4649046491_ _hd3181732502_ _hd3181432492_)
                  (let () (declare (not safe)) (_g3180831954_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g50481_|
                                                   _hd3182032512_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3181932515_)
                                                      (let ((___splice4648446485_
                                                             (gx#syntax-split-splice
                                                              _tl3181932515_
                                                              '0)))
                                                        (let ((_tl3184832411_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4648446485_ '1)))
                      (_target3184632408_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4648446485_ '0))))
                  (if (gx#stx-null? _tl3184832411_)
                      (___match4655846559_
                       _e3181532488_
                       _hd3181432492_
                       _tl3181332495_
                       _e3181832498_
                       _hd3181732502_
                       _tl3181632505_
                       _e3182132508_
                       _hd3182032512_
                       _tl3181932515_
                       ___splice4648446485_
                       _target3184632408_
                       _tl3184832411_)
                      (if (gx#stx-pair? _tl3181632505_)
                          (let ((_e3188632264_ (gx#syntax-e _tl3181632505_)))
                            (let ((_tl3188432271_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3188632264_)))
                                  (_hd3188532268_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3188632264_))))
                              (if (gx#stx-null? _tl3188432271_)
                                  (___kont4648846489_
                                   _hd3188532268_
                                   _hd3181732502_)
                                  (if (gx#identifier? _hd3188532268_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g50479_|
                                           _hd3188532268_)
                                          (if (gx#stx-pair? _tl3188432271_)
                                              (let ((_e3190932164_
                                                     (gx#syntax-e
                                                      _tl3188432271_)))
                                                (let ((_tl3190732171_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3190932164_)))
                                                      (_hd3190832168_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3190932164_))))
                                                  (if (gx#stx-null?
                                                       _tl3190732171_)
                                                      (___kont4649246493_
                                                       _hd3190832168_
                                                       _hd3181732502_
                                                       _hd3181432492_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3180831954_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3180831954_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3180831954_)))
                                      (if (gx#stx-datum? _hd3188532268_)
                                          (let ((_e3192232091_
                                                 (gx#stx-e _hd3188532268_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e3192232091_ '::))
                                                (if (gx#stx-pair?
                                                     _tl3188432271_)
                                                    (let ((_e3192532095_
                                                           (gx#syntax-e
                                                            _tl3188432271_)))
                                                      (let ((_tl3192332102_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3192532095_)))
                    (_hd3192432099_
                     (let () (declare (not safe)) (##car _e3192532095_))))
                (if (gx#stx-null? _tl3192332102_)
                    (___kont4649446495_
                     _hd3192432099_
                     _hd3181732502_
                     _hd3181432492_)
                    (if (gx#stx-pair? _tl3192332102_)
                        (let ((_e3194532005_ (gx#syntax-e _tl3192332102_)))
                          (let ((_tl3194332012_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3194532005_)))
                                (_hd3194432009_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3194532005_))))
                            (if (gx#identifier? _hd3194432009_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g50478_|
                                     _hd3194432009_)
                                    (if (gx#stx-pair? _tl3194332012_)
                                        (let ((_e3194832015_
                                               (gx#syntax-e _tl3194332012_)))
                                          (let ((_tl3194632022_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3194832015_)))
                                                (_hd3194732019_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3194832015_))))
                                            (if (gx#stx-null? _tl3194632022_)
                                                (___kont4649646497_
                                                 _hd3194732019_
                                                 _hd3192432099_
                                                 _hd3181732502_
                                                 _hd3181432492_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3180831954_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3180831954_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3180831954_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3180831954_)))))
                        (let () (declare (not safe)) (_g3180831954_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3180831954_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3180831954_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3180831954_)))))))
                          (if (gx#stx-null? _tl3181632505_)
                              (___kont4649046491_
                               _hd3181732502_
                               _hd3181432492_)
                              (let ()
                                (declare (not safe))
                                (_g3180831954_)))))))
              (if (gx#stx-pair? _tl3181632505_)
                  (let ((_e3188632264_ (gx#syntax-e _tl3181632505_)))
                    (let ((_tl3188432271_
                           (let () (declare (not safe)) (##cdr _e3188632264_)))
                          (_hd3188532268_
                           (let ()
                             (declare (not safe))
                             (##car _e3188632264_))))
                      (if (gx#stx-null? _tl3188432271_)
                          (___kont4648846489_ _hd3188532268_ _hd3181732502_)
                          (if (gx#identifier? _hd3188532268_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g50479_|
                                   _hd3188532268_)
                                  (if (gx#stx-pair? _tl3188432271_)
                                      (let ((_e3190932164_
                                             (gx#syntax-e _tl3188432271_)))
                                        (let ((_tl3190732171_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3190932164_)))
                                              (_hd3190832168_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3190932164_))))
                                          (if (gx#stx-null? _tl3190732171_)
                                              (___kont4649246493_
                                               _hd3190832168_
                                               _hd3181732502_
                                               _hd3181432492_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3180831954_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3180831954_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g3180831954_)))
                              (if (gx#stx-datum? _hd3188532268_)
                                  (let ((_e3192232091_
                                         (gx#stx-e _hd3188532268_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e3192232091_ '::))
                                        (if (gx#stx-pair? _tl3188432271_)
                                            (let ((_e3192532095_
                                                   (gx#syntax-e
                                                    _tl3188432271_)))
                                              (let ((_tl3192332102_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3192532095_)))
                                                    (_hd3192432099_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3192532095_))))
                                                (if (gx#stx-null?
                                                     _tl3192332102_)
                                                    (___kont4649446495_
                                                     _hd3192432099_
                                                     _hd3181732502_
                                                     _hd3181432492_)
                                                    (if (gx#stx-pair?
                                                         _tl3192332102_)
                                                        (let ((_e3194532005_
                                                               (gx#syntax-e
                                                                _tl3192332102_)))
                                                          (let ((_tl3194332012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3194532005_)))
                        (_hd3194432009_
                         (let () (declare (not safe)) (##car _e3194532005_))))
                    (if (gx#identifier? _hd3194432009_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g50478_|
                             _hd3194432009_)
                            (if (gx#stx-pair? _tl3194332012_)
                                (let ((_e3194832015_
                                       (gx#syntax-e _tl3194332012_)))
                                  (let ((_tl3194632022_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3194832015_)))
                                        (_hd3194732019_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3194832015_))))
                                    (if (gx#stx-null? _tl3194632022_)
                                        (___kont4649646497_
                                         _hd3194732019_
                                         _hd3192432099_
                                         _hd3181732502_
                                         _hd3181432492_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3180831954_)))))
                                (let () (declare (not safe)) (_g3180831954_)))
                            (let () (declare (not safe)) (_g3180831954_)))
                        (let () (declare (not safe)) (_g3180831954_)))))
                (let () (declare (not safe)) (_g3180831954_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g3180831954_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3180831954_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3180831954_)))))))
                  (if (gx#stx-null? _tl3181632505_)
                      (___kont4649046491_ _hd3181732502_ _hd3181432492_)
                      (let () (declare (not safe)) (_g3180831954_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g50480_|
                                                       _hd3182032512_)
                                                      (if (gx#stx-pair?
                                                           _tl3181932515_)
                                                          (let ((_e3187232328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3181932515_)))
                    (let ((_tl3187032335_
                           (let () (declare (not safe)) (##cdr _e3187232328_)))
                          (_hd3187132332_
                           (let ()
                             (declare (not safe))
                             (##car _e3187232328_))))
                      (if (gx#stx-null? _tl3187032335_)
                          (if (gx#stx-pair? _tl3181632505_)
                              (let ((_e3187532338_
                                     (gx#syntax-e _tl3181632505_)))
                                (let ((_tl3187332345_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3187532338_)))
                                      (_hd3187432342_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3187532338_))))
                                  (if (gx#stx-null? _tl3187332345_)
                                      (___kont4648646487_
                                       _hd3187432342_
                                       _hd3187132332_
                                       _hd3181432492_)
                                      (if (gx#identifier? _hd3187432342_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50479_|
                                               _hd3187432342_)
                                              (if (gx#stx-pair? _tl3187332345_)
                                                  (let ((_e3190932164_
                                                         (gx#syntax-e
                                                          _tl3187332345_)))
                                                    (let ((_tl3190732171_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3190932164_)))
                                                          (_hd3190832168_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3190932164_))))
                                                      (if (gx#stx-null?
                                                           _tl3190732171_)
                                                          (___kont4649246493_
                                                           _hd3190832168_
                                                           _hd3181732502_
                                                           _hd3181432492_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3180831954_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3180831954_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3180831954_)))
                                          (if (gx#stx-datum? _hd3187432342_)
                                              (let ((_e3192232091_
                                                     (gx#stx-e
                                                      _hd3187432342_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (equal? _e3192232091_
                                                              '::))
                                                    (if (gx#stx-pair?
                                                         _tl3187332345_)
                                                        (let ((_e3192532095_
                                                               (gx#syntax-e
                                                                _tl3187332345_)))
                                                          (let ((_tl3192332102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3192532095_)))
                        (_hd3192432099_
                         (let () (declare (not safe)) (##car _e3192532095_))))
                    (if (gx#stx-null? _tl3192332102_)
                        (___kont4649446495_
                         _hd3192432099_
                         _hd3181732502_
                         _hd3181432492_)
                        (if (gx#stx-pair? _tl3192332102_)
                            (let ((_e3194532005_ (gx#syntax-e _tl3192332102_)))
                              (let ((_tl3194332012_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3194532005_)))
                                    (_hd3194432009_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3194532005_))))
                                (if (gx#identifier? _hd3194432009_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g50478_|
                                         _hd3194432009_)
                                        (if (gx#stx-pair? _tl3194332012_)
                                            (let ((_e3194832015_
                                                   (gx#syntax-e
                                                    _tl3194332012_)))
                                              (let ((_tl3194632022_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3194832015_)))
                                                    (_hd3194732019_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3194832015_))))
                                                (if (gx#stx-null?
                                                     _tl3194632022_)
                                                    (___kont4649646497_
                                                     _hd3194732019_
                                                     _hd3192432099_
                                                     _hd3181732502_
                                                     _hd3181432492_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3180831954_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3180831954_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3180831954_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3180831954_)))))
                            (let () (declare (not safe)) (_g3180831954_))))))
                (let () (declare (not safe)) (_g3180831954_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3180831954_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3180831954_)))))))
                              (if (gx#stx-null? _tl3181632505_)
                                  (___kont4649046491_
                                   _hd3181732502_
                                   _hd3181432492_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3180831954_))))
                          (if (gx#stx-pair? _tl3181632505_)
                              (let ((_e3188632264_
                                     (gx#syntax-e _tl3181632505_)))
                                (let ((_tl3188432271_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3188632264_)))
                                      (_hd3188532268_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3188632264_))))
                                  (if (gx#stx-null? _tl3188432271_)
                                      (___kont4648846489_
                                       _hd3188532268_
                                       _hd3181732502_)
                                      (if (gx#identifier? _hd3188532268_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g50479_|
                                               _hd3188532268_)
                                              (if (gx#stx-pair? _tl3188432271_)
                                                  (let ((_e3190932164_
                                                         (gx#syntax-e
                                                          _tl3188432271_)))
                                                    (let ((_tl3190732171_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3190932164_)))
                                                          (_hd3190832168_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3190932164_))))
                                                      (if (gx#stx-null?
                                                           _tl3190732171_)
                                                          (___kont4649246493_
                                                           _hd3190832168_
                                                           _hd3181732502_
                                                           _hd3181432492_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3180831954_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3180831954_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3180831954_)))
                                          (if (gx#stx-datum? _hd3188532268_)
                                              (let ((_e3192232091_
                                                     (gx#stx-e
                                                      _hd3188532268_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (equal? _e3192232091_
                                                              '::))
                                                    (if (gx#stx-pair?
                                                         _tl3188432271_)
                                                        (let ((_e3192532095_
                                                               (gx#syntax-e
                                                                _tl3188432271_)))
                                                          (let ((_tl3192332102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3192532095_)))
                        (_hd3192432099_
                         (let () (declare (not safe)) (##car _e3192532095_))))
                    (if (gx#stx-null? _tl3192332102_)
                        (___kont4649446495_
                         _hd3192432099_
                         _hd3181732502_
                         _hd3181432492_)
                        (if (gx#stx-pair? _tl3192332102_)
                            (let ((_e3194532005_ (gx#syntax-e _tl3192332102_)))
                              (let ((_tl3194332012_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3194532005_)))
                                    (_hd3194432009_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3194532005_))))
                                (if (gx#identifier? _hd3194432009_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g50478_|
                                         _hd3194432009_)
                                        (if (gx#stx-pair? _tl3194332012_)
                                            (let ((_e3194832015_
                                                   (gx#syntax-e
                                                    _tl3194332012_)))
                                              (let ((_tl3194632022_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3194832015_)))
                                                    (_hd3194732019_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3194832015_))))
                                                (if (gx#stx-null?
                                                     _tl3194632022_)
                                                    (___kont4649646497_
                                                     _hd3194732019_
                                                     _hd3192432099_
                                                     _hd3181732502_
                                                     _hd3181432492_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3180831954_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3180831954_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3180831954_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3180831954_)))))
                            (let () (declare (not safe)) (_g3180831954_))))))
                (let () (declare (not safe)) (_g3180831954_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3180831954_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3180831954_)))))))
                              (if (gx#stx-null? _tl3181632505_)
                                  (___kont4649046491_
                                   _hd3181732502_
                                   _hd3181432492_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3180831954_)))))))
                  (if (gx#stx-pair? _tl3181632505_)
                      (let ((_e3188632264_ (gx#syntax-e _tl3181632505_)))
                        (let ((_tl3188432271_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3188632264_)))
                              (_hd3188532268_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3188632264_))))
                          (if (gx#stx-null? _tl3188432271_)
                              (___kont4648846489_
                               _hd3188532268_
                               _hd3181732502_)
                              (if (gx#identifier? _hd3188532268_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g50479_|
                                       _hd3188532268_)
                                      (if (gx#stx-pair? _tl3188432271_)
                                          (let ((_e3190932164_
                                                 (gx#syntax-e _tl3188432271_)))
                                            (let ((_tl3190732171_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3190932164_)))
                                                  (_hd3190832168_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3190932164_))))
                                              (if (gx#stx-null? _tl3190732171_)
                                                  (___kont4649246493_
                                                   _hd3190832168_
                                                   _hd3181732502_
                                                   _hd3181432492_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3180831954_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3180831954_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3180831954_)))
                                  (if (gx#stx-datum? _hd3188532268_)
                                      (let ((_e3192232091_
                                             (gx#stx-e _hd3188532268_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e3192232091_ '::))
                                            (if (gx#stx-pair? _tl3188432271_)
                                                (let ((_e3192532095_
                                                       (gx#syntax-e
                                                        _tl3188432271_)))
                                                  (let ((_tl3192332102_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3192532095_)))
                                                        (_hd3192432099_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3192532095_))))
                                                    (if (gx#stx-null?
                                                         _tl3192332102_)
                                                        (___kont4649446495_
                                                         _hd3192432099_
                                                         _hd3181732502_
                                                         _hd3181432492_)
                                                        (if (gx#stx-pair?
                                                             _tl3192332102_)
                                                            (let ((_e3194532005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3192332102_)))
                      (let ((_tl3194332012_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3194532005_)))
                            (_hd3194432009_
                             (let ()
                               (declare (not safe))
                               (##car _e3194532005_))))
                        (if (gx#identifier? _hd3194432009_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g50478_|
                                 _hd3194432009_)
                                (if (gx#stx-pair? _tl3194332012_)
                                    (let ((_e3194832015_
                                           (gx#syntax-e _tl3194332012_)))
                                      (let ((_tl3194632022_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3194832015_)))
                                            (_hd3194732019_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3194832015_))))
                                        (if (gx#stx-null? _tl3194632022_)
                                            (___kont4649646497_
                                             _hd3194732019_
                                             _hd3192432099_
                                             _hd3181732502_
                                             _hd3181432492_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3180831954_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3180831954_)))
                                (let () (declare (not safe)) (_g3180831954_)))
                            (let () (declare (not safe)) (_g3180831954_)))))
                    (let () (declare (not safe)) (_g3180831954_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3180831954_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3180831954_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3180831954_)))))))
                      (if (gx#stx-null? _tl3181632505_)
                          (___kont4649046491_ _hd3181732502_ _hd3181432492_)
                          (let () (declare (not safe)) (_g3180831954_)))))
              (if (gx#stx-pair? _tl3181632505_)
                  (let ((_e3188632264_ (gx#syntax-e _tl3181632505_)))
                    (let ((_tl3188432271_
                           (let () (declare (not safe)) (##cdr _e3188632264_)))
                          (_hd3188532268_
                           (let ()
                             (declare (not safe))
                             (##car _e3188632264_))))
                      (if (gx#stx-null? _tl3188432271_)
                          (___kont4648846489_ _hd3188532268_ _hd3181732502_)
                          (if (gx#identifier? _hd3188532268_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g50479_|
                                   _hd3188532268_)
                                  (if (gx#stx-pair? _tl3188432271_)
                                      (let ((_e3190932164_
                                             (gx#syntax-e _tl3188432271_)))
                                        (let ((_tl3190732171_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3190932164_)))
                                              (_hd3190832168_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3190932164_))))
                                          (if (gx#stx-null? _tl3190732171_)
                                              (___kont4649246493_
                                               _hd3190832168_
                                               _hd3181732502_
                                               _hd3181432492_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3180831954_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3180831954_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g3180831954_)))
                              (if (gx#stx-datum? _hd3188532268_)
                                  (let ((_e3192232091_
                                         (gx#stx-e _hd3188532268_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e3192232091_ '::))
                                        (if (gx#stx-pair? _tl3188432271_)
                                            (let ((_e3192532095_
                                                   (gx#syntax-e
                                                    _tl3188432271_)))
                                              (let ((_tl3192332102_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3192532095_)))
                                                    (_hd3192432099_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3192532095_))))
                                                (if (gx#stx-null?
                                                     _tl3192332102_)
                                                    (___kont4649446495_
                                                     _hd3192432099_
                                                     _hd3181732502_
                                                     _hd3181432492_)
                                                    (if (gx#stx-pair?
                                                         _tl3192332102_)
                                                        (let ((_e3194532005_
                                                               (gx#syntax-e
                                                                _tl3192332102_)))
                                                          (let ((_tl3194332012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3194532005_)))
                        (_hd3194432009_
                         (let () (declare (not safe)) (##car _e3194532005_))))
                    (if (gx#identifier? _hd3194432009_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g50478_|
                             _hd3194432009_)
                            (if (gx#stx-pair? _tl3194332012_)
                                (let ((_e3194832015_
                                       (gx#syntax-e _tl3194332012_)))
                                  (let ((_tl3194632022_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3194832015_)))
                                        (_hd3194732019_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3194832015_))))
                                    (if (gx#stx-null? _tl3194632022_)
                                        (___kont4649646497_
                                         _hd3194732019_
                                         _hd3192432099_
                                         _hd3181732502_
                                         _hd3181432492_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3180831954_)))))
                                (let () (declare (not safe)) (_g3180831954_)))
                            (let () (declare (not safe)) (_g3180831954_)))
                        (let () (declare (not safe)) (_g3180831954_)))))
                (let () (declare (not safe)) (_g3180831954_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g3180831954_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3180831954_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3180831954_)))))))
                  (if (gx#stx-null? _tl3181632505_)
                      (___kont4649046491_ _hd3181732502_ _hd3181432492_)
                      (let () (declare (not safe)) (_g3180831954_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl3181632505_)
                                              (let ((_e3188632264_
                                                     (gx#syntax-e
                                                      _tl3181632505_)))
                                                (let ((_tl3188432271_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3188632264_)))
                                                      (_hd3188532268_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3188632264_))))
                                                  (if (gx#stx-null?
                                                       _tl3188432271_)
                                                      (___kont4648846489_
                                                       _hd3188532268_
                                                       _hd3181732502_)
                                                      (if (gx#identifier?
                                                           _hd3188532268_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core$<match>[1]#_g50479_|
                                                               _hd3188532268_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3188432271_)
                          (let ((_e3190932164_ (gx#syntax-e _tl3188432271_)))
                            (let ((_tl3190732171_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3190932164_)))
                                  (_hd3190832168_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3190932164_))))
                              (if (gx#stx-null? _tl3190732171_)
                                  (___kont4649246493_
                                   _hd3190832168_
                                   _hd3181732502_
                                   _hd3181432492_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3180831954_)))))
                          (let () (declare (not safe)) (_g3180831954_)))
                      (let () (declare (not safe)) (_g3180831954_)))
                  (if (gx#stx-datum? _hd3188532268_)
                      (let ((_e3192232091_ (gx#stx-e _hd3188532268_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e3192232091_ '::))
                            (if (gx#stx-pair? _tl3188432271_)
                                (let ((_e3192532095_
                                       (gx#syntax-e _tl3188432271_)))
                                  (let ((_tl3192332102_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3192532095_)))
                                        (_hd3192432099_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3192532095_))))
                                    (if (gx#stx-null? _tl3192332102_)
                                        (___kont4649446495_
                                         _hd3192432099_
                                         _hd3181732502_
                                         _hd3181432492_)
                                        (if (gx#stx-pair? _tl3192332102_)
                                            (let ((_e3194532005_
                                                   (gx#syntax-e
                                                    _tl3192332102_)))
                                              (let ((_tl3194332012_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3194532005_)))
                                                    (_hd3194432009_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3194532005_))))
                                                (if (gx#identifier?
                                                     _hd3194432009_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core$<match>[1]#_g50478_|
                                                         _hd3194432009_)
                                                        (if (gx#stx-pair?
                                                             _tl3194332012_)
                                                            (let ((_e3194832015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3194332012_)))
                      (let ((_tl3194632022_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3194832015_)))
                            (_hd3194732019_
                             (let ()
                               (declare (not safe))
                               (##car _e3194832015_))))
                        (if (gx#stx-null? _tl3194632022_)
                            (___kont4649646497_
                             _hd3194732019_
                             _hd3192432099_
                             _hd3181732502_
                             _hd3181432492_)
                            (let () (declare (not safe)) (_g3180831954_)))))
                    (let () (declare (not safe)) (_g3180831954_)))
                (let () (declare (not safe)) (_g3180831954_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3180831954_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3180831954_))))))
                                (let () (declare (not safe)) (_g3180831954_)))
                            (let () (declare (not safe)) (_g3180831954_))))
                      (let () (declare (not safe)) (_g3180831954_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl3181632505_)
                                                  (___kont4649046491_
                                                   _hd3181732502_
                                                   _hd3181432492_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3180831954_)))))))
                                  (if (gx#stx-pair? _tl3181632505_)
                                      (let ((_e3188632264_
                                             (gx#syntax-e _tl3181632505_)))
                                        (let ((_tl3188432271_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3188632264_)))
                                              (_hd3188532268_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3188632264_))))
                                          (if (gx#stx-null? _tl3188432271_)
                                              (___kont4648846489_
                                               _hd3188532268_
                                               _hd3181732502_)
                                              (if (gx#identifier?
                                                   _hd3188532268_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g50479_|
                                                       _hd3188532268_)
                                                      (if (gx#stx-pair?
                                                           _tl3188432271_)
                                                          (let ((_e3190932164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3188432271_)))
                    (let ((_tl3190732171_
                           (let () (declare (not safe)) (##cdr _e3190932164_)))
                          (_hd3190832168_
                           (let ()
                             (declare (not safe))
                             (##car _e3190932164_))))
                      (if (gx#stx-null? _tl3190732171_)
                          (___kont4649246493_
                           _hd3190832168_
                           _hd3181732502_
                           _hd3181432492_)
                          (let () (declare (not safe)) (_g3180831954_)))))
                  (let () (declare (not safe)) (_g3180831954_)))
              (let () (declare (not safe)) (_g3180831954_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _hd3188532268_)
                                                      (let ((_e3192232091_
                                                             (gx#stx-e
                                                              _hd3188532268_)))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (equal? _e3192232091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '::))
                    (if (gx#stx-pair? _tl3188432271_)
                        (let ((_e3192532095_ (gx#syntax-e _tl3188432271_)))
                          (let ((_tl3192332102_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3192532095_)))
                                (_hd3192432099_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3192532095_))))
                            (if (gx#stx-null? _tl3192332102_)
                                (___kont4649446495_
                                 _hd3192432099_
                                 _hd3181732502_
                                 _hd3181432492_)
                                (if (gx#stx-pair? _tl3192332102_)
                                    (let ((_e3194532005_
                                           (gx#syntax-e _tl3192332102_)))
                                      (let ((_tl3194332012_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3194532005_)))
                                            (_hd3194432009_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3194532005_))))
                                        (if (gx#identifier? _hd3194432009_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g50478_|
                                                 _hd3194432009_)
                                                (if (gx#stx-pair?
                                                     _tl3194332012_)
                                                    (let ((_e3194832015_
                                                           (gx#syntax-e
                                                            _tl3194332012_)))
                                                      (let ((_tl3194632022_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3194832015_)))
                    (_hd3194732019_
                     (let () (declare (not safe)) (##car _e3194832015_))))
                (if (gx#stx-null? _tl3194632022_)
                    (___kont4649646497_
                     _hd3194732019_
                     _hd3192432099_
                     _hd3181732502_
                     _hd3181432492_)
                    (let () (declare (not safe)) (_g3180831954_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3180831954_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3180831954_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3180831954_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3180831954_))))))
                        (let () (declare (not safe)) (_g3180831954_)))
                    (let () (declare (not safe)) (_g3180831954_))))
              (let () (declare (not safe)) (_g3180831954_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _tl3181632505_)
                                          (___kont4649046491_
                                           _hd3181732502_
                                           _hd3181432492_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3180831954_)))))))
                          (let () (declare (not safe)) (_g3180831954_)))))
                  (let () (declare (not safe)) (_g3180831954_))))))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx32597_)
        (let* ((___stx4674346744_ _$stx32597_)
               (_g3260232636_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4674346744_))))
          (let ((___kont4674646747_
                 (lambda (_L32740_ _L32742_ _L32743_)
                   (let ((__tmp50544 (gx#datum->syntax '#f 'defsyntax))
                         (__tmp50483
                          (let ((__tmp50484
                                 (let ((__tmp50485
                                        (let ((__tmp50543
                                               (gx#datum->syntax
                                                '#f
                                                'make-match-macro))
                                              (__tmp50486
                                               (let ((__tmp50487
                                                      (let ((__tmp50488
                                                             (let ((__tmp50542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let))
                           (__tmp50489
                            (let ((__tmp50534
                                   (let ((__tmp50539
                                          (let ((__tmp50541
                                                 (gx#datum->syntax
                                                  '#f
                                                  '$match-e))
                                                (__tmp50540
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L32742_ '()))))
                                            (declare (not safe))
                                            (cons __tmp50541 __tmp50540)))
                                         (__tmp50535
                                          (let ((__tmp50536
                                                 (let ((__tmp50538
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$macro-e))
                                                       (__tmp50537
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L32740_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp50538
                                                         __tmp50537))))
                                            (declare (not safe))
                                            (cons __tmp50536 '()))))
                                     (declare (not safe))
                                     (cons __tmp50539 __tmp50535)))
                                  (__tmp50490
                                   (let ((__tmp50491
                                          (let ((__tmp50533
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp50492
                                                 (let ((__tmp50531
                                                        (let ((__tmp50532
                                                               (gx#datum->syntax
                                                                '#f
                                                                '$stx)))
                                                          (declare (not safe))
                                                          (cons __tmp50532
                                                                '())))
                                                       (__tmp50493
                                                        (let ((__tmp50494
                                                               (let ((__tmp50530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'syntax-case))
                             (__tmp50495
                              (let ((__tmp50529 (gx#datum->syntax '#f '$stx))
                                    (__tmp50496
                                     (let ((__tmp50497
                                            (let ((__tmp50508
                                                   (let ((__tmp50527
                                                          (let ((__tmp50528
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'body)))
                    (declare (not safe))
                    (cons 'match: __tmp50528)))
                 (__tmp50509
                  (let ((__tmp50510
                         (let ((__tmp50526
                                (gx#datum->syntax '#f 'core-apply-expander))
                               (__tmp50511
                                (let ((__tmp50525
                                       (gx#datum->syntax '#f '$match-e))
                                      (__tmp50512
                                       (let ((__tmp50513
                                              (let ((__tmp50524
                                                     (gx#datum->syntax
                                                      '#f
                                                      'stx-wrap-source))
                                                    (__tmp50514
                                                     (let ((__tmp50520
                                                            (let ((__tmp50523
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'syntax))
                          (__tmp50521
                           (let ((__tmp50522 (gx#datum->syntax '#f 'body)))
                             (declare (not safe))
                             (cons __tmp50522 '()))))
                      (declare (not safe))
                      (cons __tmp50523 __tmp50521)))
                   (__tmp50515
                    (let ((__tmp50516
                           (let ((__tmp50519
                                  (gx#datum->syntax '#f 'stx-source))
                                 (__tmp50517
                                  (let ((__tmp50518
                                         (gx#datum->syntax '#f '$stx)))
                                    (declare (not safe))
                                    (cons __tmp50518 '()))))
                             (declare (not safe))
                             (cons __tmp50519 __tmp50517))))
                      (declare (not safe))
                      (cons __tmp50516 '()))))
               (declare (not safe))
               (cons __tmp50520 __tmp50515))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp50524 __tmp50514))))
                                         (declare (not safe))
                                         (cons __tmp50513 '()))))
                                  (declare (not safe))
                                  (cons __tmp50525 __tmp50512))))
                           (declare (not safe))
                           (cons __tmp50526 __tmp50511))))
                    (declare (not safe))
                    (cons __tmp50510 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50527
                                                           __tmp50509)))
                                                  (__tmp50498
                                                   (let ((__tmp50499
                                                          (let ((__tmp50507
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '_))
                        (__tmp50500
                         (let ((__tmp50501
                                (let ((__tmp50506
                                       (gx#datum->syntax
                                        '#f
                                        'core-apply-expander))
                                      (__tmp50502
                                       (let ((__tmp50505
                                              (gx#datum->syntax '#f '$macro-e))
                                             (__tmp50503
                                              (let ((__tmp50504
                                                     (gx#datum->syntax
                                                      '#f
                                                      '$stx)))
                                                (declare (not safe))
                                                (cons __tmp50504 '()))))
                                         (declare (not safe))
                                         (cons __tmp50505 __tmp50503))))
                                  (declare (not safe))
                                  (cons __tmp50506 __tmp50502))))
                           (declare (not safe))
                           (cons __tmp50501 '()))))
                    (declare (not safe))
                    (cons __tmp50507 __tmp50500))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50499 '()))))
                                              (declare (not safe))
                                              (cons __tmp50508 __tmp50498))))
                                       (declare (not safe))
                                       (cons '() __tmp50497))))
                                (declare (not safe))
                                (cons __tmp50529 __tmp50496))))
                         (declare (not safe))
                         (cons __tmp50530 __tmp50495))))
                  (declare (not safe))
                  (cons __tmp50494 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50531
                                                         __tmp50493))))
                                            (declare (not safe))
                                            (cons __tmp50533 __tmp50492))))
                                     (declare (not safe))
                                     (cons __tmp50491 '()))))
                              (declare (not safe))
                              (cons __tmp50534 __tmp50490))))
                       (declare (not safe))
                       (cons __tmp50542 __tmp50489))))
                (declare (not safe))
                (cons __tmp50488 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'macro: __tmp50487))))
                                          (declare (not safe))
                                          (cons __tmp50543 __tmp50486))))
                                   (declare (not safe))
                                   (cons __tmp50485 '()))))
                            (declare (not safe))
                            (cons _L32743_ __tmp50484))))
                     (declare (not safe))
                     (cons __tmp50544 __tmp50483))))
                (___kont4674846749_
                 (lambda (_L32673_ _L32675_ _L32676_)
                   (let ((__tmp50545
                          (let ((__tmp50546
                                 (let ((__tmp50547
                                        (let ((__tmp50548
                                               (let ((__tmp50559
                                                      (gx#datum->syntax
                                                       '#f
                                                       'lambda))
                                                     (__tmp50549
                                                      (let ((__tmp50557
                                                             (let ((__tmp50558
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '$stx)))
                       (declare (not safe))
                       (cons __tmp50558 '())))
                    (__tmp50550
                     (let ((__tmp50551
                            (let ((__tmp50556
                                   (gx#datum->syntax '#f 'raise-syntax-error))
                                  (__tmp50552
                                   (let ((__tmp50553
                                          (let ((__tmp50554
                                                 (let ((__tmp50555
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$stx)))
                                                   (declare (not safe))
                                                   (cons __tmp50555 '()))))
                                            (declare (not safe))
                                            (cons '"bad syntax; no macro definition for defsyntax-for-match"
                                                  __tmp50554))))
                                     (declare (not safe))
                                     (cons '#f __tmp50553))))
                              (declare (not safe))
                              (cons __tmp50556 __tmp50552))))
                       (declare (not safe))
                       (cons __tmp50551 '()))))
                (declare (not safe))
                (cons __tmp50557 __tmp50550))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp50559
                                                       __tmp50549))))
                                          (declare (not safe))
                                          (cons __tmp50548 '()))))
                                   (declare (not safe))
                                   (cons _L32673_ __tmp50547))))
                            (declare (not safe))
                            (cons _L32675_ __tmp50546))))
                     (declare (not safe))
                     (cons _L32676_ __tmp50545)))))
            (let ((___match4677646777_
                   (lambda (_e3260932700_
                            _hd3260832704_
                            _tl3260732707_
                            _e3261232710_
                            _hd3261132714_
                            _tl3261032717_
                            _e3261532720_
                            _hd3261432724_
                            _tl3261332727_
                            _e3261832730_
                            _hd3261732734_
                            _tl3261632737_)
                     (let ((_L32740_ _hd3261732734_)
                           (_L32742_ _hd3261432724_)
                           (_L32743_ _hd3261132714_))
                       (if (gx#identifier? _L32743_)
                           (___kont4674646747_ _L32740_ _L32742_ _L32743_)
                           (let () (declare (not safe)) (_g3260232636_)))))))
              (if (gx#stx-pair? ___stx4674346744_)
                  (let ((_e3260932700_ (gx#syntax-e ___stx4674346744_)))
                    (let ((_tl3260732707_
                           (let () (declare (not safe)) (##cdr _e3260932700_)))
                          (_hd3260832704_
                           (let ()
                             (declare (not safe))
                             (##car _e3260932700_))))
                      (if (gx#stx-pair? _tl3260732707_)
                          (let ((_e3261232710_ (gx#syntax-e _tl3260732707_)))
                            (let ((_tl3261032717_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3261232710_)))
                                  (_hd3261132714_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3261232710_))))
                              (if (gx#stx-pair? _tl3261032717_)
                                  (let ((_e3261532720_
                                         (gx#syntax-e _tl3261032717_)))
                                    (let ((_tl3261332727_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3261532720_)))
                                          (_hd3261432724_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3261532720_))))
                                      (if (gx#stx-pair? _tl3261332727_)
                                          (let ((_e3261832730_
                                                 (gx#syntax-e _tl3261332727_)))
                                            (let ((_tl3261632737_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3261832730_)))
                                                  (_hd3261732734_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3261832730_))))
                                              (if (gx#stx-null? _tl3261632737_)
                                                  (___match4677646777_
                                                   _e3260932700_
                                                   _hd3260832704_
                                                   _tl3260732707_
                                                   _e3261232710_
                                                   _hd3261132714_
                                                   _tl3261032717_
                                                   _e3261532720_
                                                   _hd3261432724_
                                                   _tl3261332727_
                                                   _e3261832730_
                                                   _hd3261732734_
                                                   _tl3261632737_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3260232636_)))))
                                          (if (gx#stx-null? _tl3261332727_)
                                              (___kont4674846749_
                                               _hd3261432724_
                                               _hd3261132714_
                                               _hd3260832704_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3260232636_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3260232636_)))))
                          (let () (declare (not safe)) (_g3260232636_)))))
                  (let () (declare (not safe)) (_g3260232636_))))))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx32765_)
        (let* ((_g3276932784_
                (lambda (_g3277032780_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g3277032780_)))
               (_g3276832827_
                (lambda (_g3277032788_)
                  (if (gx#stx-pair? _g3277032788_)
                      (let ((_e3277532791_ (gx#syntax-e _g3277032788_)))
                        (let ((_hd3277432795_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3277532791_)))
                              (_tl3277332798_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3277532791_))))
                          (if (gx#stx-pair? _tl3277332798_)
                              (let ((_e3277832801_
                                     (gx#syntax-e _tl3277332798_)))
                                (let ((_hd3277732805_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3277832801_)))
                                      (_tl3277632808_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3277832801_))))
                                  ((lambda (_L32811_ _L32813_)
                                     (let ((__tmp50564
                                            (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match))
                                           (__tmp50560
                                            (let ((__tmp50561
                                                   (let ((__tmp50562
                                                          (let ((__tmp50563
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'syntax-rules)))
                    (declare (not safe))
                    (cons __tmp50563 _L32811_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50562 '()))))
                                              (declare (not safe))
                                              (cons _L32813_ __tmp50561))))
                                       (declare (not safe))
                                       (cons __tmp50564 __tmp50560)))
                                   _tl3277632808_
                                   _hd3277732805_)))
                              (_g3276932784_ _g3277032788_))))
                      (_g3276932784_ _g3277032788_)))))
          (_g3276832827_ _$stx32765_))))))
