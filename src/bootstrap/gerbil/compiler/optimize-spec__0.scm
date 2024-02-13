(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1707841982)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl250937_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp256633 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl250937_ __tmp256633))
           (let ()
             (declare (not safe))
             (table-set! _tbl250937_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl250937_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl250937_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250937_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl250937_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx250920_ . _args250922_)
        (let ((__tmp256635
               (lambda ()
                 (declare (not safe))
                 (if (null? _args250922_)
                     (gxc#compile-e__0 _stx250920_)
                     (let ((_arg1250927_ (car _args250922_))
                           (_rest250929_ (cdr _args250922_)))
                       (if (null? _rest250929_)
                           (gxc#compile-e__1 _stx250920_ _arg1250927_)
                           (let ((_arg2250932_ (car _rest250929_))
                                 (_rest250934_ (cdr _rest250929_)))
                             (if (null? _rest250934_)
                                 (gxc#compile-e__2
                                  _stx250920_
                                  _arg1250927_
                                  _arg2250932_)
                                 (apply gxc#compile-e
                                        _stx250920_
                                        _arg1250927_
                                        _arg2250932_
                                        _rest250934_))))))))
              (__tmp256634 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp256635
           gxc#current-compile-methods
           __tmp256634))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl250917_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp256636 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl250917_ __tmp256636))
           (let ()
             (declare (not safe))
             (table-set! _tbl250917_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250917_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl250917_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250917_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250917_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250917_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250917_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl250917_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl250917_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl250917_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl250917_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl250917_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250917_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250917_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250917_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250917_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl250917_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx250900_ . _args250902_)
        (let ((__tmp256638
               (lambda ()
                 (declare (not safe))
                 (if (null? _args250902_)
                     (gxc#compile-e__0 _stx250900_)
                     (let ((_arg1250907_ (car _args250902_))
                           (_rest250909_ (cdr _args250902_)))
                       (if (null? _rest250909_)
                           (gxc#compile-e__1 _stx250900_ _arg1250907_)
                           (let ((_arg2250912_ (car _rest250909_))
                                 (_rest250914_ (cdr _rest250909_)))
                             (if (null? _rest250914_)
                                 (gxc#compile-e__2
                                  _stx250900_
                                  _arg1250907_
                                  _arg2250912_)
                                 (apply gxc#compile-e
                                        _stx250900_
                                        _arg1250907_
                                        _arg2250912_
                                        _rest250914_))))))))
              (__tmp256637 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp256638
           gxc#current-compile-methods
           __tmp256637))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl250897_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp256639 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl250897_ __tmp256639))
           (let ()
             (declare (not safe))
             (table-set! _tbl250897_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl250897_ '%#call gxc#subst-object-refs-call%))
           _tbl250897_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx250880_ . _args250882_)
        (let ((__tmp256641
               (lambda ()
                 (declare (not safe))
                 (if (null? _args250882_)
                     (gxc#compile-e__0 _stx250880_)
                     (let ((_arg1250887_ (car _args250882_))
                           (_rest250889_ (cdr _args250882_)))
                       (if (null? _rest250889_)
                           (gxc#compile-e__1 _stx250880_ _arg1250887_)
                           (let ((_arg2250892_ (car _rest250889_))
                                 (_rest250894_ (cdr _rest250889_)))
                             (if (null? _rest250894_)
                                 (gxc#compile-e__2
                                  _stx250880_
                                  _arg1250887_
                                  _arg2250892_)
                                 (apply gxc#compile-e
                                        _stx250880_
                                        _arg1250887_
                                        _arg2250892_
                                        _rest250894_))))))))
              (__tmp256640 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp256641
           gxc#current-compile-methods
           __tmp256640))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx247550_)
        (letrec ((_generate-method-bind247552_
                  (lambda (_$t250874_ _id250875_ _$id250876_)
                    (let ((_$tmp250878_
                           (let ((__tmp256642 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp256642))))
                      (let ((__tmp256690
                             (let ()
                               (declare (not safe))
                               (cons _$id250876_ '())))
                            (__tmp256643
                             (let ((__tmp256644
                                    (let ((__tmp256645
                                           (let ((__tmp256688
                                                  (let ((__tmp256689
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp256689)))
                                                 (__tmp256646
                                                  (let ((__tmp256647
                                                         (let ((__tmp256648
                                                                (let ((__tmp256649
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp256650
                                      (let ((__tmp256651
                                             (let ((__tmp256671
                                                    (let ((__tmp256672
                                                           (let ((__tmp256687
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp250878_ '())))
                         (__tmp256673
                          (let ((__tmp256674
                                 (let ((__tmp256675
                                        (let ((__tmp256685
                                               (let ((__tmp256686
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp256686)))
                                              (__tmp256676
                                               (let ((__tmp256683
                                                      (let ((__tmp256684
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t250874_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp256684)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp256677
                                                      (let ((__tmp256681
                                                             (let ((__tmp256682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp256682)))
                    (__tmp256678
                     (let ((__tmp256679
                            (let ((__tmp256680
                                   (let ()
                                     (declare (not safe))
                                     (cons _id250875_ '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp256680))))
                       (declare (not safe))
                       (cons __tmp256679 '()))))
                (declare (not safe))
                (cons __tmp256681 __tmp256678))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp256683
                                                       __tmp256677))))
                                          (declare (not safe))
                                          (cons __tmp256685 __tmp256676))))
                                   (declare (not safe))
                                   (cons '%#call __tmp256675))))
                            (declare (not safe))
                            (cons __tmp256674 '()))))
                     (declare (not safe))
                     (cons __tmp256687 __tmp256673))))
              (declare (not safe))
              (cons __tmp256672 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp256652
                                                    (let ((__tmp256653
                                                           (let ((__tmp256654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp256669
                                 (let ((__tmp256670
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp250878_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp256670)))
                                (__tmp256655
                                 (let ((__tmp256667
                                        (let ((__tmp256668
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp250878_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp256668)))
                                       (__tmp256656
                                        (let ((__tmp256657
                                               (let ((__tmp256658
                                                      (let ((__tmp256665
                                                             (let ((__tmp256666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp256666)))
                    (__tmp256659
                     (let ((__tmp256663
                            (let ((__tmp256664
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp256664)))
                           (__tmp256660
                            (let ((__tmp256661
                                   (let ((__tmp256662
                                          (let ()
                                            (declare (not safe))
                                            (cons _id250875_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp256662))))
                              (declare (not safe))
                              (cons __tmp256661 '()))))
                       (declare (not safe))
                       (cons __tmp256663 __tmp256660))))
                (declare (not safe))
                (cons __tmp256665 __tmp256659))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp256658))))
                                          (declare (not safe))
                                          (cons __tmp256657 '()))))
                                   (declare (not safe))
                                   (cons __tmp256667 __tmp256656))))
                            (declare (not safe))
                            (cons __tmp256669 __tmp256655))))
                     (declare (not safe))
                     (cons '%#if __tmp256654))))
              (declare (not safe))
              (cons __tmp256653 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp256671
                                                     __tmp256652))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp256651))))
                                 (declare (not safe))
                                 (cons __tmp256650 '()))))
                          (declare (not safe))
                          (cons '() __tmp256649))))
                   (declare (not safe))
                   (cons '%#lambda __tmp256648))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp256647 '()))))
                                             (declare (not safe))
                                             (cons __tmp256688 __tmp256646))))
                                      (declare (not safe))
                                      (cons '%#call __tmp256645))))
                               (declare (not safe))
                               (cons __tmp256644 '()))))
                        (declare (not safe))
                        (cons __tmp256690 __tmp256643)))))
                 (_generate-slot-bind247553_
                  (lambda (_$t250868_ _id250869_ _$id250870_)
                    (let ((_$tmp250872_
                           (let ((__tmp256691 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp256691))))
                      (let ((__tmp256728
                             (let ()
                               (declare (not safe))
                               (cons _$id250870_ '())))
                            (__tmp256692
                             (let ((__tmp256693
                                    (let ((__tmp256694
                                           (let ((__tmp256714
                                                  (let ((__tmp256715
                                                         (let ((__tmp256727
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp250872_ '())))
                       (__tmp256716
                        (let ((__tmp256717
                               (let ((__tmp256718
                                      (let ((__tmp256725
                                             (let ((__tmp256726
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp256726)))
                                            (__tmp256719
                                             (let ((__tmp256723
                                                    (let ((__tmp256724
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t250868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp256724)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp256720
                                                    (let ((__tmp256721
                                                           (let ((__tmp256722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id250869_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp256722))))
              (declare (not safe))
              (cons __tmp256721 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp256723
                                                     __tmp256720))))
                                        (declare (not safe))
                                        (cons __tmp256725 __tmp256719))))
                                 (declare (not safe))
                                 (cons '%#call __tmp256718))))
                          (declare (not safe))
                          (cons __tmp256717 '()))))
                   (declare (not safe))
                   (cons __tmp256727 __tmp256716))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp256715 '())))
                                                 (__tmp256695
                                                  (let ((__tmp256696
                                                         (let ((__tmp256697
                                                                (let ((__tmp256712
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp256713
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp250872_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp256713)))
                              (__tmp256698
                               (let ((__tmp256710
                                      (let ((__tmp256711
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp250872_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp256711)))
                                     (__tmp256699
                                      (let ((__tmp256700
                                             (let ((__tmp256701
                                                    (let ((__tmp256708
                                                           (let ((__tmp256709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp256709)))
                  (__tmp256702
                   (let ((__tmp256706
                          (let ((__tmp256707
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp256707)))
                         (__tmp256703
                          (let ((__tmp256704
                                 (let ((__tmp256705
                                        (let ()
                                          (declare (not safe))
                                          (cons _id250869_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp256705))))
                            (declare (not safe))
                            (cons __tmp256704 '()))))
                     (declare (not safe))
                     (cons __tmp256706 __tmp256703))))
              (declare (not safe))
              (cons __tmp256708 __tmp256702))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp256701))))
                                        (declare (not safe))
                                        (cons __tmp256700 '()))))
                                 (declare (not safe))
                                 (cons __tmp256710 __tmp256699))))
                          (declare (not safe))
                          (cons __tmp256712 __tmp256698))))
                   (declare (not safe))
                   (cons '%#if __tmp256697))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp256696 '()))))
                                             (declare (not safe))
                                             (cons __tmp256714 __tmp256695))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp256694))))
                               (declare (not safe))
                               (cons __tmp256693 '()))))
                        (declare (not safe))
                        (cons __tmp256728 __tmp256692)))))
                 (_generate-class-check-bind247554_
                  (lambda (_$t250864_ _class-type250865_ _$class-type250866_)
                    (let ((__tmp256740
                           (let ()
                             (declare (not safe))
                             (cons _$class-type250866_ '())))
                          (__tmp256729
                           (let ((__tmp256730
                                  (let ((__tmp256731
                                         (let ((__tmp256738
                                                (let ((__tmp256739
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp256739)))
                                               (__tmp256732
                                                (let ((__tmp256736
                                                       (let ((__tmp256737
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t250864_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp256737)))
              (__tmp256733
               (let ((__tmp256734
                      (let ((__tmp256735
                             (let ()
                               (declare (not safe))
                               (cons _class-type250865_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp256735))))
                 (declare (not safe))
                 (cons __tmp256734 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256736
                                                        __tmp256733))))
                                           (declare (not safe))
                                           (cons __tmp256738 __tmp256732))))
                                    (declare (not safe))
                                    (cons '%#call __tmp256731))))
                             (declare (not safe))
                             (cons __tmp256730 '()))))
                      (declare (not safe))
                      (cons __tmp256740 __tmp256729))))
                 (_generate-struct-check-bind247555_
                  (lambda (_$t250860_ _class-type250861_ _$class-type250862_)
                    (let ((__tmp256752
                           (let ()
                             (declare (not safe))
                             (cons _$class-type250862_ '())))
                          (__tmp256741
                           (let ((__tmp256742
                                  (let ((__tmp256743
                                         (let ((__tmp256750
                                                (let ((__tmp256751
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp256751)))
                                               (__tmp256744
                                                (let ((__tmp256748
                                                       (let ((__tmp256749
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t250860_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp256749)))
              (__tmp256745
               (let ((__tmp256746
                      (let ((__tmp256747
                             (let ()
                               (declare (not safe))
                               (cons _class-type250861_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp256747))))
                 (declare (not safe))
                 (cons __tmp256746 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256748
                                                        __tmp256745))))
                                           (declare (not safe))
                                           (cons __tmp256750 __tmp256744))))
                                    (declare (not safe))
                                    (cons '%#call __tmp256743))))
                             (declare (not safe))
                             (cons __tmp256742 '()))))
                      (declare (not safe))
                      (cons __tmp256752 __tmp256741))))
                 (_generate-specializer-impl247556_
                  (lambda (_$t250809_
                           _methods-bind250810_
                           _slots-bind250811_
                           _class-check-bind250812_
                           _struct-check-bind250813_
                           _specializer-impl250814_
                           _lifted-specializer-id250815_
                           _unchecked-specializer-impl250816_)
                    (let ((__tmp256753
                           (let ((__tmp256754
                                  (let ((__tmp256780
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t250809_ '())))
                                        (__tmp256755
                                         (let ((__tmp256756
                                                (let ((__tmp256757
                                                       (let ((__tmp256777
                                                              (let ((__tmp256778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp256779
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind250813_
                                              _class-check-bind250812_))))
                               (declare (not safe))
                               (foldr1 cons __tmp256779 _slots-bind250811_))))
                        (declare (not safe))
                        (foldr1 cons __tmp256778 _methods-bind250810_)))
                     (__tmp256758
                      (let ((__tmp256759
                             (if (or _lifted-specializer-id250815_
                                     _unchecked-specializer-impl250816_)
                                 (let* ((_$specializer250821_
                                         (let ((__tmp256760
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp256760)))
                                        (__tmp256761
                                         (let ((__tmp256773
                                                (let ((__tmp256774
                                                       (let ((__tmp256776
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer250821_ '())))
                     (__tmp256775
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl250814_ '()))))
                 (declare (not safe))
                 (cons __tmp256776 __tmp256775))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256774 '())))
                                               (__tmp256762
                                                (let ((__tmp256763
                                                       (let _recur250823_ ((_rest250825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind250813_)))
                 (let* ((_rest250826250834_ _rest250825_)
                        (_else250828250842_
                         (lambda ()
                           (if _lifted-specializer-id250815_
                               (let ((__tmp256764
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id250815_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp256764))
                               _unchecked-specializer-impl250816_)))
                        (_K250830250848_
                         (lambda (_rest250845_ _checkq250846_)
                           (let ((__tmp256765
                                  (let ((__tmp256771
                                         (let ((__tmp256772
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq250846_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp256772)))
                                        (__tmp256766
                                         (let ((__tmp256770
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur250823_
                                                   _rest250845_)))
                                               (__tmp256767
                                                (let ((__tmp256768
                                                       (let ((__tmp256769
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer250821_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp256769))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256768 '()))))
                                           (declare (not safe))
                                           (cons __tmp256770 __tmp256767))))
                                    (declare (not safe))
                                    (cons __tmp256771 __tmp256766))))
                             (declare (not safe))
                             (cons '%#if __tmp256765)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest250826250834_))
                       (let ((_hd250831250851_
                              (let ()
                                (declare (not safe))
                                (##car _rest250826250834_)))
                             (_tl250832250853_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest250826250834_))))
                         (let* ((_checkq250856_ _hd250831250851_)
                                (_rest250858_ _tl250832250853_))
                           (declare (not safe))
                           (_K250830250848_ _rest250858_ _checkq250856_)))
                       (let () (declare (not safe)) (_else250828250842_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256763 '()))))
                                           (declare (not safe))
                                           (cons __tmp256773 __tmp256762))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp256761))
                                 _specializer-impl250814_)))
                        (declare (not safe))
                        (cons __tmp256759 '()))))
                 (declare (not safe))
                 (cons __tmp256777 __tmp256758))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp256757))))
                                           (declare (not safe))
                                           (cons __tmp256756 '()))))
                                    (declare (not safe))
                                    (cons __tmp256780 __tmp256755))))
                             (declare (not safe))
                             (cons '%#lambda __tmp256754))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp256753 _stx247550_))))
                 (_generate-specializer-def247557_
                  (lambda (_id250803_
                           _specializer-id250804_
                           _specializer-impl250805_
                           _lifted-specializer-id250806_
                           _unchecked-specializer-impl250807_)
                    (let ((__tmp256781
                           (let ((__tmp256782
                                  (let ((__tmp256783
                                         (let ((__tmp256803
                                                (let ((__tmp256804
                                                       (let ((__tmp256805
                                                              (let ((__tmp256807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id250804_ '())))
                            (__tmp256806
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl250805_ '()))))
                        (declare (not safe))
                        (cons __tmp256807 __tmp256806))))
                 (declare (not safe))
                 (cons '%#define-values __tmp256805))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp256804
                                                   _stx247550_)))
                                               (__tmp256784
                                                (let ((__tmp256791
                                                       (let ((__tmp256792
                                                              (let ((__tmp256793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp256794
                                    (let ((__tmp256801
                                           (let ((__tmp256802
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp256802)))
                                          (__tmp256795
                                           (let ((__tmp256799
                                                  (let ((__tmp256800
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id250803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp256800)))
                                                 (__tmp256796
                                                  (let ((__tmp256797
                                                         (let ((__tmp256798
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id250804_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp256798))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp256797 '()))))
                                             (declare (not safe))
                                             (cons __tmp256799 __tmp256796))))
                                      (declare (not safe))
                                      (cons __tmp256801 __tmp256795))))
                               (declare (not safe))
                               (cons '%#call __tmp256794))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp256793 _stx247550_))))
                 (declare (not safe))
                 (cons __tmp256792 '())))
              (__tmp256785
               (if _lifted-specializer-id250806_
                   (let ((__tmp256786
                          (let ((__tmp256787
                                 (let ((__tmp256788
                                        (let ((__tmp256790
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id250806_
                                                       '())))
                                              (__tmp256789
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl250807_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp256790 __tmp256789))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp256788))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp256787 _stx247550_))))
                     (declare (not safe))
                     (cons __tmp256786 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp256791
                                                          __tmp256785))))
                                           (declare (not safe))
                                           (cons __tmp256803 __tmp256784))))
                                    (declare (not safe))
                                    (cons _stx247550_ __tmp256783))))
                             (declare (not safe))
                             (cons '%#begin __tmp256782))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp256781 _stx247550_)))))
          (let* ((___stx255594255595_ _stx247550_)
                 (_g247560247580_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx255594255595_)))))
            (let ((___kont255596255597_
                   (lambda (_L247624_ _L247625_)
                     (let ((_method-calls247644_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_slot-refs247645_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_class-type-check247646_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-check247647_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-assert247648_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_empty247649_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?))))
                       (letrec ((_no-specializer?247651_
                                 (lambda ()
                                   (if (let ((__tmp256812
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls247644_))))
                                         (declare (not safe))
                                         (fxzero? __tmp256812))
                                       (if (let ((__tmp256811
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs247645_))))
                                             (declare (not safe))
                                             (fxzero? __tmp256811))
                                           (if (let ((__tmp256810
                                                      (let ()
                                                        (declare (not safe))
                                                        (table-length
                                                         _class-type-check247646_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp256810))
                                               (if (let ((__tmp256809
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-check247647_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp256809))
                                                   (let ((__tmp256808
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-assert247648_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp256808))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?247652_
                                 (lambda ()
                                   (let ((_$e250796_
                                          (let ((__tmp256813
                                                 (let ((__tmp256814
                                                        (let ()
                                                          (declare (not safe))
                                                          (table-length
                                                           _struct-type-check247647_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp256814))))
                                            (declare (not safe))
                                            (not __tmp256813))))
                                     (if _$e250796_
                                         _$e250796_
                                         (let ((__tmp256815
                                                (let ((__tmp256816
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-length
                                                          _struct-type-assert247648_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp256816))))
                                           (declare (not safe))
                                           (not __tmp256815))))))
                                (_lift-unchecked-specializer?247653_
                                 (lambda ()
                                   (if (let ((__tmp256819
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls247644_))))
                                         (declare (not safe))
                                         (fxzero? __tmp256819))
                                       (if (let ((__tmp256818
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs247645_))))
                                             (declare (not safe))
                                             (fxzero? __tmp256818))
                                           (let ((__tmp256817
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _class-type-check247646_))))
                                             (declare (not safe))
                                             (fxzero? __tmp256817))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L247624_))
                             (let* ((___stx255508255509_ _L247624_)
                                    (_g248166248184_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx255508255509_)))))
                               (let ((___kont255510255511_
                                      (lambda (_L248220_ _L248221_ _L248222_)
                                        (for-each
                                         (lambda (_g248237248239_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g248237248239_
                                              _L248222_
                                              _method-calls247644_
                                              _slot-refs247645_
                                              _class-type-check247646_
                                              _struct-type-check247647_
                                              _struct-type-assert247648_)))
                                         _L248220_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?247651_))
                                            _stx247550_
                                            (let* ((_specializer-id248248_
                                                    (let* ((_id248242_
                                                            (let ((__tmp256969
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L247625_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp256969 '"::specialize")))
                   (_specializer-id248245_
                    (let ((__tmp256970
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx247550_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id248242_ __tmp256970))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id248245_))
              _specializer-id248245_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id248255_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?247653_))
                                                        (let* ((_id248250_
                                                                (let ((__tmp256971
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L247625_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp256971
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id248252_
                        (let ((__tmp256972
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx247550_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id248250_ __tmp256972))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id248252_))
                  _lifted-specializer-id248252_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t248257_
                                                    (let ((__tmp256973
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp256973)))
                                                   (_methods248259_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls247644_)))
                                                   (_$methods248263_
                                                    (map (lambda (_id248261_)
                                                           (let ((__tmp256974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id248261_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp256974)))
                 _methods248259_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g256975_
                                                    (for-each
                                                     (lambda (_g248264248267_
                                                              _g248265248269_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls247644_
                                                          _g248264248267_
                                                          _g248265248269_)))
                                                     _methods248259_
                                                     _$methods248263_))
                                                   (_methods-bind248280_
                                                    (map (lambda (_g248272248275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g248273248277_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind247552_
                      _$t248257_
                      _g248272248275_
                      _g248273248277_)))
                 _methods248259_
                 _$methods248263_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots248282_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs247645_)))
                                                   (_$slots248286_
                                                    (map (lambda (_id248284_)
                                                           (let ((__tmp256976
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id248284_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp256976)))
                 _slots248282_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g256977_
                                                    (for-each
                                                     (lambda (_g248287248290_
                                                              _g248288248292_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs247645_
                                                          _g248287248290_
                                                          _g248288248292_)))
                                                     _slots248282_
                                                     _$slots248286_))
                                                   (_slots-bind248303_
                                                    (map (lambda (_g248295248298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g248296248300_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind247553_
                      _$t248257_
                      _g248295248298_
                      _g248296248300_)))
                 _slots248282_
                 _$slots248286_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check248305_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check247646_)))
                                                   (_$class-check248308_
                                                    (map (lambda (_g256978_)
                                                           (let ((__tmp256979
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp256979)))
                 _class-check248305_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g256980_
                                                    (for-each
                                                     (lambda (_g248309248312_
                                                              _g248310248314_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check247646_
                                                          _g248309248312_
                                                          _g248310248314_)))
                                                     _class-check248305_
                                                     _$class-check248308_))
                                                   (_class-check-bind248325_
                                                    (map (lambda (_g248317248320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g248318248322_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind247554_
                      _$t248257_
                      _g248317248320_
                      _g248318248322_)))
                 _class-check248305_
                 _$class-check248308_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all248327_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check247647_
                                                       _struct-type-assert247648_)))
                                                   (_struct-check248329_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all248327_)))
                                                   (_$struct-check248332_
                                                    (map (lambda (_g256981_)
                                                           (let ((__tmp256982
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp256982)))
                 _struct-check248329_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g256983_
                                                    (for-each
                                                     (lambda (_g248333248336_
                                                              _g248334248338_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all248327_
                                                          _g248333248336_
                                                          _g248334248338_)))
                                                     _struct-check248329_
                                                     _$struct-check248332_))
                                                   (_struct-check-bind248349_
                                                    (map (lambda (_g248341248344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g248342248346_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind247555_
                      _$t248257_
                      _g248341248344_
                      _g248342248346_)))
                 _struct-check248329_
                 _$struct-check248332_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl248360_
                                                    (lambda (_struct-type-check1248351_
                                                             _struct-type-check2248352_)
                                                      (let* ((_specializer-body248358_
                                                              (map (lambda (_g248353248355_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g248353248355_
                                _L248222_
                                _$t248257_
                                _method-calls247644_
                                _slot-refs247645_
                                _class-type-check247646_
                                _struct-type-check1248351_
                                _struct-type-check2248352_)))
                           _L248220_))
                     (__tmp256984
                      (let ((__tmp256985
                             (let ((__tmp256986
                                    (let ()
                                      (declare (not safe))
                                      (cons _L248222_ _L248221_))))
                               (declare (not safe))
                               (cons __tmp256986 _specializer-body248358_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp256985))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp256984 _stx247550_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl248362_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl248360_
                                                       _struct-check-all248327_
                                                       _empty247649_)))
                                                   (_unchecked-specializer-impl248364_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?247652_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl248360_
                                                           _empty247649_
                                                           _struct-check-all248327_))
                                                        '#f))
                                                   (_specializer-impl248366_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl247556_
                                                       _$t248257_
                                                       _methods-bind248280_
                                                       _slots-bind248303_
                                                       _class-check-bind248325_
                                                       _struct-check-bind248349_
                                                       _specializer-impl248362_
                                                       _lifted-specializer-id248255_
                                                       _unchecked-specializer-impl248364_))))
                                              (let ((__tmp256988
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L247625_)))
                                                    (__tmp256987
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id248248_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp256988
                                                 '" => "
                                                 __tmp256987))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def247557_
                                                 _L247625_
                                                 _specializer-id248248_
                                                 _specializer-impl248366_
                                                 _lifted-specializer-id248255_
                                                 _unchecked-specializer-impl248364_))))))
                                     (___kont255512255513_
                                      (lambda () _stx247550_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx255508255509_))
                                     (let ((_e248173248196_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx255508255509_))))
                                       (let ((_tl248171248201_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e248173248196_)))
                                             (_hd248172248199_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e248173248196_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl248171248201_))
                                             (let ((_e248176248204_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl248171248201_))))
                                               (let ((_tl248174248209_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e248176248204_)))
                                                     (_hd248175248207_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e248176248204_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd248175248207_))
                                                     (let ((_e248179248212_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd248175248207_))))
                                                       (let ((_tl248177248217_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e248179248212_)))
                     (_hd248178248215_
                      (let () (declare (not safe)) (##car _e248179248212_))))
                 (___kont255510255511_
                  _tl248174248209_
                  _tl248177248217_
                  _hd248178248215_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont255512255513_))))
                                             (___kont255512255513_))))
                                     (___kont255512255513_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L247624_))
                                 (let* ((_g248372248391_
                                         (lambda (_g248373248388_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g248373248388_))))
                                        (_g248371248742_
                                         (lambda (_g248373248394_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g248373248394_))
                                               (let ((_e248377248396_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g248373248394_))))
                                                 (let ((_hd248376248399_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e248377248396_)))
                                                       (_tl248375248401_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e248377248396_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl248375248401_))
                                                       (let ((_g256945_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl248375248401_ '0))))
                 (begin
                   (let ((_g256946_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g256945_)
                                (##vector-length _g256945_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g256946_ 2)))
                         (error "Context expects 2 values" _g256946_)))
                   (let ((_target248378248404_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g256945_ 0)))
                         (_tl248380248406_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g256945_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl248380248406_))
                         (letrec ((_loop248381248409_
                                   (lambda (_hd248379248412_
                                            _clause248385248414_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd248379248412_))
                                         (let ((_e248382248417_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd248379248412_))))
                                           (let ((_lp-hd248383248420_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e248382248417_)))
                                                 (_lp-tl248384248422_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e248382248417_))))
                                             (let ((__tmp256968
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd248383248420_
                                                            _clause248385248414_))))
                                               (declare (not safe))
                                               (_loop248381248409_
                                                _lp-tl248384248422_
                                                __tmp256968))))
                                         (let ((_clause248386248425_
                                                (reverse _clause248385248414_)))
                                           ((lambda (_L248428_)
                                              (for-each
                                               (lambda (_clause248441_)
                                                 (let* ((___stx255534255535_
                                                         _clause248441_)
                                                        (_g248444248459_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx255534255535_)))))
                                                   (let ((___kont255536255537_
                                                          (lambda (_L248487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L248488_
                           _L248489_)
                    (for-each
                     (lambda (_g248504248506_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g248504248506_
                          _L248489_
                          _method-calls247644_
                          _slot-refs247645_
                          _class-type-check247646_
                          _struct-type-check247647_
                          _struct-type-assert247648_)))
                     _L248487_)))
                 (___kont255538255539_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx255534255535_))
                                                         (let ((_e248451248471_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx255534255535_))))
                   (let ((_tl248449248476_
                          (let ()
                            (declare (not safe))
                            (##cdr _e248451248471_)))
                         (_hd248450248474_
                          (let ()
                            (declare (not safe))
                            (##car _e248451248471_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd248450248474_))
                         (let ((_e248454248479_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd248450248474_))))
                           (let ((_tl248452248484_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e248454248479_)))
                                 (_hd248453248482_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e248454248479_))))
                             (___kont255536255537_
                              _tl248449248476_
                              _tl248452248484_
                              _hd248453248482_)))
                         (___kont255538255539_))))
                 (___kont255538255539_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp256947
                                                      (lambda (_g248511248514_
                                                               _g248512248516_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g248511248514_
                                                                _g248512248516_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp256947
                                                         '()
                                                         _L248428_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?247651_))
                                                  _stx247550_
                                                  (let* ((_specializer-id248525_
                                                          (let* ((_id248519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp256948
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L247625_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp256948 '"::specialize")))
                         (_specializer-id248522_
                          (let ((__tmp256949
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx247550_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id248519_ __tmp256949))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id248522_))
                    _specializer-id248522_))
                 (_lifted-specializer-id248532_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?247653_))
                      (let* ((_id248527_
                              (let ((__tmp256950
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L247625_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp256950
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id248529_
                              (let ((__tmp256951
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx247550_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id248527_
                                 __tmp256951))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id248529_))
                        _lifted-specializer-id248529_)
                      '#f))
                 (_$t248534_
                  (let ((__tmp256952 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp256952)))
                 (_methods248536_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls247644_)))
                 (_$methods248540_
                  (map (lambda (_id248538_)
                         (let ((__tmp256953 (gensym _id248538_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp256953)))
                       _methods248536_))
                 (_g256954_
                  (for-each
                   (lambda (_g248541248544_ _g248542248546_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls247644_
                        _g248541248544_
                        _g248542248546_)))
                   _methods248536_
                   _$methods248540_))
                 (_methods-bind248557_
                  (map (lambda (_g248549248552_ _g248550248554_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind247552_
                            _$t248534_
                            _g248549248552_
                            _g248550248554_)))
                       _methods248536_
                       _$methods248540_))
                 (_slots248559_
                  (let () (declare (not safe)) (hash-keys _slot-refs247645_)))
                 (_$slots248563_
                  (map (lambda (_id248561_)
                         (let ((__tmp256955 (gensym _id248561_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp256955)))
                       _slots248559_))
                 (_g256956_
                  (for-each
                   (lambda (_g248564248567_ _g248565248569_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs247645_
                        _g248564248567_
                        _g248565248569_)))
                   _slots248559_
                   _$slots248563_))
                 (_slots-bind248580_
                  (map (lambda (_g248572248575_ _g248573248577_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind247553_
                            _$t248534_
                            _g248572248575_
                            _g248573248577_)))
                       _slots248559_
                       _$slots248563_))
                 (_class-check248582_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check247646_)))
                 (_$class-check248585_
                  (map (lambda (_g256957_)
                         (let ((__tmp256958 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp256958)))
                       _class-check248582_))
                 (_g256959_
                  (for-each
                   (lambda (_g248586248589_ _g248587248591_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check247646_
                        _g248586248589_
                        _g248587248591_)))
                   _class-check248582_
                   _$class-check248585_))
                 (_class-check-bind248602_
                  (map (lambda (_g248594248597_ _g248595248599_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind247554_
                            _$t248534_
                            _g248594248597_
                            _g248595248599_)))
                       _class-check248582_
                       _$class-check248585_))
                 (_struct-check-all248604_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check247647_
                     _struct-type-assert247648_)))
                 (_struct-check248606_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all248604_)))
                 (_$struct-check248609_
                  (map (lambda (_g256960_)
                         (let ((__tmp256961 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp256961)))
                       _struct-check248606_))
                 (_g256962_
                  (for-each
                   (lambda (_g248610248613_ _g248611248615_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all248604_
                        _g248610248613_
                        _g248611248615_)))
                   _struct-check248606_
                   _$struct-check248609_))
                 (_struct-check-bind248626_
                  (map (lambda (_g248618248621_ _g248619248623_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind247555_
                            _$t248534_
                            _g248618248621_
                            _g248619248623_)))
                       _struct-check248606_
                       _$struct-check248609_))
                 (_make-specializer-impl248733_
                  (lambda (_struct-type-check1248628_
                           _struct-type-check2248629_)
                    (let* ((_specializer-clauses248731_
                            (map (lambda (_clause248631_)
                                   (let* ((___stx255554255555_ _clause248631_)
                                          (_g248634248649_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx255554255555_)))))
                                     (let ((___kont255556255557_
                                            (lambda (_L248677_
                                                     _L248678_
                                                     _L248679_)
                                              (let* ((_body248719_
                                                      (map (lambda (_g248714248716_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g248714248716_
                        _L248679_
                        _$t248534_
                        _method-calls247644_
                        _slot-refs247645_
                        _class-type-check247646_
                        _struct-type-check1248628_
                        _struct-type-check2248629_)))
                   _L248677_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp256963
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L248679_
                                                              _L248678_))))
                                                (declare (not safe))
                                                (cons __tmp256963
                                                      _body248719_))))
                                           (___kont255558255559_
                                            (lambda () _clause248631_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx255554255555_))
                                           (let ((_e248641248661_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx255554255555_))))
                                             (let ((_tl248639248666_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e248641248661_)))
                                                   (_hd248640248664_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e248641248661_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd248640248664_))
                                                   (let ((_e248644248669_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd248640248664_))))
                                                     (let ((_tl248642248674_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e248644248669_)))
                                                           (_hd248643248672_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e248644248669_))))
                                                       (___kont255556255557_
                                                        _tl248639248666_
                                                        _tl248642248674_
                                                        _hd248643248672_)))
                                                   (___kont255558255559_))))
                                           (___kont255558255559_)))))
                                 (let ((__tmp256964
                                        (lambda (_g248723248726_
                                                 _g248724248728_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g248723248726_
                                                  _g248724248728_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp256964 '() _L248428_))))
                           (__tmp256965
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses248731_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp256965 _stx247550_))))
                 (_specializer-impl248735_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl248733_
                     _struct-check-all248604_
                     _empty247649_)))
                 (_unchecked-specializer-impl248737_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?247652_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl248733_
                         _empty247649_
                         _struct-check-all248604_))
                      '#f))
                 (_specializer-impl248739_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl247556_
                     _$t248534_
                     _methods-bind248557_
                     _slots-bind248580_
                     _class-check-bind248602_
                     _struct-check-bind248626_
                     _specializer-impl248735_
                     _lifted-specializer-id248532_
                     _unchecked-specializer-impl248737_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp256967
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L247625_)))
                                                          (__tmp256966
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id248525_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp256967
                                                       '" => "
                                                       __tmp256966))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def247557_
                                                       _L247625_
                                                       _specializer-id248525_
                                                       _specializer-impl248739_
                                                       _lifted-specializer-id248532_
                                                       _unchecked-specializer-impl248737_)))))
                                            _clause248386248425_))))))
                           (let ()
                             (declare (not safe))
                             (_loop248381248409_ _target248378248404_ '())))
                         (let ()
                           (declare (not safe))
                           (_g248372248391_ _g248373248394_))))))
               (let ()
                 (declare (not safe))
                 (_g248372248391_ _g248373248394_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g248372248391_
                                                  _g248373248394_))))))
                                   (declare (not safe))
                                   (_g248371248742_ _L247624_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L247624_))
                                     (let* ((_g248745248775_
                                             (lambda (_g248746248772_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g248746248772_))))
                                            (_g248744249463_
                                             (lambda (_g248746248778_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g248746248778_))
                                                   (let ((_e248752248780_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g248746248778_))))
                                                     (let ((_hd248751248783_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e248752248780_)))
                                                           (_tl248750248785_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e248752248780_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl248750248785_))
                                                           (let ((_e248755248788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl248750248785_))))
                     (let ((_hd248754248791_
                            (let ()
                              (declare (not safe))
                              (##car _e248755248788_)))
                           (_tl248753248793_
                            (let ()
                              (declare (not safe))
                              (##cdr _e248755248788_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd248754248791_))
                           (let ((_e248758248796_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd248754248791_))))
                             (let ((_hd248757248799_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e248758248796_)))
                                   (_tl248756248801_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e248758248796_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd248757248799_))
                                   (let ((_e248761248804_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd248757248799_))))
                                     (let ((_hd248760248807_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e248761248804_)))
                                           (_tl248759248809_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e248761248804_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd248760248807_))
                                           (let ((_e248764248812_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd248760248807_))))
                                             (let ((_hd248763248815_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e248764248812_)))
                                                   (_tl248762248817_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e248764248812_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl248762248817_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl248759248809_))
                                                       (let ((_e248767248820_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl248759248809_))))
                 (let ((_hd248766248823_
                        (let () (declare (not safe)) (##car _e248767248820_)))
                       (_tl248765248825_
                        (let () (declare (not safe)) (##cdr _e248767248820_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl248765248825_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl248756248801_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl248753248793_))
                               (let ((_e248770248828_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl248753248793_))))
                                 (let ((_hd248769248831_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e248770248828_)))
                                       (_tl248768248833_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e248770248828_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl248768248833_))
                                       ((lambda (_L248836_ _L248837_ _L248838_)
                                          (let* ((_g248861248879_
                                                  (lambda (_g248862248876_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g248862248876_))))
                                                 (_g248860248930_
                                                  (lambda (_g248862248882_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g248862248882_))
                                                        (let ((_e248868248884_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g248862248882_))))
                  (let ((_hd248867248887_
                         (let () (declare (not safe)) (##car _e248868248884_)))
                        (_tl248866248889_
                         (let ()
                           (declare (not safe))
                           (##cdr _e248868248884_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl248866248889_))
                        (let ((_e248871248892_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl248866248889_))))
                          (let ((_hd248870248895_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e248871248892_)))
                                (_tl248869248897_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e248871248892_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd248870248895_))
                                (let ((_e248874248900_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd248870248895_))))
                                  (let ((_hd248873248903_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e248874248900_)))
                                        (_tl248872248905_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e248874248900_))))
                                    ((lambda (_L248908_ _L248909_ _L248910_)
                                       (for-each
                                        (lambda (_g248925248927_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g248925248927_
                                             _L248910_
                                             _method-calls247644_
                                             _slot-refs247645_
                                             _class-type-check247646_
                                             _struct-type-check247647_
                                             _struct-type-assert247648_)))
                                        _L248908_))
                                     _tl248869248897_
                                     _tl248872248905_
                                     _hd248873248903_)))
                                (let ()
                                  (declare (not safe))
                                  (_g248861248879_ _g248862248882_)))))
                        (let ()
                          (declare (not safe))
                          (_g248861248879_ _g248862248882_)))))
                (let ()
                  (declare (not safe))
                  (_g248861248879_ _g248862248882_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g248860248930_ _L248837_))
                                          (let* ((_g248933248952_
                                                  (lambda (_g248934248949_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g248934248949_))))
                                                 (_g248932249071_
                                                  (lambda (_g248934248955_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g248934248955_))
                                                        (let ((_e248938248957_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g248934248955_))))
                  (let ((_hd248937248960_
                         (let () (declare (not safe)) (##car _e248938248957_)))
                        (_tl248936248962_
                         (let ()
                           (declare (not safe))
                           (##cdr _e248938248957_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl248936248962_))
                        (let ((_g256908_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl248936248962_
                                  '0))))
                          (begin
                            (let ((_g256909_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g256908_)
                                         (##vector-length _g256908_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g256909_ 2)))
                                  (error "Context expects 2 values"
                                         _g256909_)))
                            (let ((_target248939248965_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g256908_ 0)))
                                  (_tl248941248967_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g256908_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl248941248967_))
                                  (letrec ((_loop248942248970_
                                            (lambda (_hd248940248973_
                                                     _clause248946248975_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd248940248973_))
                                                  (let ((_e248943248978_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd248940248973_))))
                                                    (let ((_lp-hd248944248981_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e248943248978_)))
                                                          (_lp-tl248945248983_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e248943248978_))))
                                                      (let ((__tmp256911
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd248944248981_ _clause248946248975_))))
                (declare (not safe))
                (_loop248942248970_ _lp-tl248945248983_ __tmp256911))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause248947248986_
                                                         (reverse _clause248946248975_)))
                                                    ((lambda (_L248989_)
                                                       (for-each
                                                        (lambda (_clause249002_)
                                                          (let* ((_g249004249019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g249005249016_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g249005249016_))))
                         (_g249003249061_
                          (lambda (_g249005249022_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g249005249022_))
                                (let ((_e249011249024_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g249005249022_))))
                                  (let ((_hd249010249027_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e249011249024_)))
                                        (_tl249009249029_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e249011249024_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd249010249027_))
                                        (let ((_e249014249032_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd249010249027_))))
                                          (let ((_hd249013249035_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e249014249032_)))
                                                (_tl249012249037_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e249014249032_))))
                                            ((lambda (_L249040_
                                                      _L249041_
                                                      _L249042_)
                                               (for-each
                                                (lambda (_g249056249058_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g249056249058_
                                                     _L249042_
                                                     _method-calls247644_
                                                     _slot-refs247645_
                                                     _class-type-check247646_
                                                     _struct-type-check247647_
                                                     _struct-type-assert247648_)))
                                                _L249040_))
                                             _tl249009249029_
                                             _tl249012249037_
                                             _hd249013249035_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g249004249019_ _g249005249022_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g249004249019_ _g249005249022_))))))
                    (declare (not safe))
                    (_g249003249061_ _clause249002_)))
                (let ((__tmp256910
                       (lambda (_g249063249066_ _g249064249068_)
                         (let ()
                           (declare (not safe))
                           (cons _g249063249066_ _g249064249068_)))))
                  (declare (not safe))
                  (foldr1 __tmp256910 '() _L248989_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause248947248986_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop248942248970_
                                       _target248939248965_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g248933248952_ _g248934248955_))))))
                        (let ()
                          (declare (not safe))
                          (_g248933248952_ _g248934248955_)))))
                (let ()
                  (declare (not safe))
                  (_g248933248952_ _g248934248955_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g248932249071_ _L248836_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?247651_))
                                              _stx247550_
                                              (let* ((_specializer-id249080_
                                                      (let* ((_id249074_
                                                              (let ((__tmp256912
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L247625_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp256912 '"::specialize")))
                     (_specializer-id249077_
                      (let ((__tmp256913
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx247550_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id249074_ __tmp256913))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id249077_))
                _specializer-id249077_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id249087_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?247653_))
                                                          (let* ((_id249082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp256914
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L247625_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp256914
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id249084_
                          (let ((__tmp256915
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx247550_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id249082_ __tmp256915))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id249084_))
                    _lifted-specializer-id249084_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t249089_
                                                      (let ((__tmp256916
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp256916)))
                                                     (_methods249091_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls247644_)))
                                                     (_$methods249095_
                                                      (map (lambda (_id249093_)
                                                             (let ((__tmp256917
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id249093_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp256917)))
                   _methods249091_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g256918_
                                                      (for-each
                                                       (lambda (_g249096249099_
                                                                _g249097249101_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls247644_
                                                            _g249096249099_
                                                            _g249097249101_)))
                                                       _methods249091_
                                                       _$methods249095_))
                                                     (_methods-bind249112_
                                                      (map (lambda (_g249104249107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g249105249109_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind247552_
                        _$t249089_
                        _g249104249107_
                        _g249105249109_)))
                   _methods249091_
                   _$methods249095_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots249114_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs247645_)))
                                                     (_$slots249118_
                                                      (map (lambda (_id249116_)
                                                             (let ((__tmp256919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id249116_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp256919)))
                   _slots249114_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g256920_
                                                      (for-each
                                                       (lambda (_g249119249122_
                                                                _g249120249124_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs247645_
                                                            _g249119249122_
                                                            _g249120249124_)))
                                                       _slots249114_
                                                       _$slots249118_))
                                                     (_slots-bind249135_
                                                      (map (lambda (_g249127249130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g249128249132_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind247553_
                        _$t249089_
                        _g249127249130_
                        _g249128249132_)))
                   _slots249114_
                   _$slots249118_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check249137_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check247646_)))
                                                     (_$class-check249140_
                                                      (map (lambda (_g256921_)
                                                             (let ((__tmp256922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp256922)))
                   _class-check249137_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g256923_
                                                      (for-each
                                                       (lambda (_g249141249144_
                                                                _g249142249146_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check247646_
                                                            _g249141249144_
                                                            _g249142249146_)))
                                                       _class-check249137_
                                                       _$class-check249140_))
                                                     (_class-check-bind249157_
                                                      (map (lambda (_g249149249152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g249150249154_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind247554_
                        _$t249089_
                        _g249149249152_
                        _g249150249154_)))
                   _class-check249137_
                   _$class-check249140_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all249159_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check247647_
                                                         _struct-type-assert247648_)))
                                                     (_struct-check249161_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all249159_)))
                                                     (_$struct-check249164_
                                                      (map (lambda (_g256924_)
                                                             (let ((__tmp256925
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp256925)))
                   _struct-check249161_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g256926_
                                                      (for-each
                                                       (lambda (_g249165249168_
                                                                _g249166249170_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all249159_
                                                            _g249165249168_
                                                            _g249166249170_)))
                                                       _struct-check249161_
                                                       _$struct-check249164_))
                                                     (_struct-check-bind249181_
                                                      (map (lambda (_g249173249176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g249174249178_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind247555_
                        _$t249089_
                        _g249173249176_
                        _g249174249178_)))
                   _struct-check249161_
                   _$struct-check249164_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr249280_
                                                      (lambda (_struct-type-check1249183_
                                                               _struct-type-check2249184_)
                                                        (let* ((_g249186249204_
                                                                (lambda (_g249187249201_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g249187249201_))))
                       (_g249185249277_
                        (lambda (_g249187249207_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g249187249207_))
                              (let ((_e249193249209_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g249187249207_))))
                                (let ((_hd249192249212_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e249193249209_)))
                                      (_tl249191249214_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e249193249209_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl249191249214_))
                                      (let ((_e249196249217_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl249191249214_))))
                                        (let ((_hd249195249220_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e249196249217_)))
                                              (_tl249194249222_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e249196249217_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd249195249220_))
                                              (let ((_e249199249225_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd249195249220_))))
                                                (let ((_hd249198249228_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e249199249225_)))
                                                      (_tl249197249230_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e249199249225_))))
                                                  ((lambda (_L249233_
                                                            _L249234_
                                                            _L249235_)
                                                     (let* ((_body249275_
                                                             (map (lambda (_g249270249272_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g249270249272_
                               _L249235_
                               _$t249089_
                               _method-calls247644_
                               _slot-refs247645_
                               _class-type-check247646_
                               _struct-type-check1249183_
                               _struct-type-check2249184_)))
                          _L249233_))
                    (__tmp256927
                     (let ((__tmp256928
                            (let ((__tmp256929
                                   (let ()
                                     (declare (not safe))
                                     (cons _L249235_ _L249234_))))
                              (declare (not safe))
                              (cons __tmp256929 _body249275_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp256928))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp256927 _L248837_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl249194249222_
                                                   _tl249197249230_
                                                   _hd249198249228_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g249186249204_
                                                 _g249187249207_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g249186249204_ _g249187249207_)))))
                              (let ()
                                (declare (not safe))
                                (_g249186249204_ _g249187249207_))))))
                  (declare (not safe))
                  (_g249185249277_ _L248837_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr249441_
                                                      (lambda (_struct-type-check1249282_
                                                               _struct-type-check2249283_)
                                                        (let* ((_g249285249304_
                                                                (lambda (_g249286249301_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g249286249301_))))
                       (_g249284249438_
                        (lambda (_g249286249307_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g249286249307_))
                              (let ((_e249290249309_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g249286249307_))))
                                (let ((_hd249289249312_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e249290249309_)))
                                      (_tl249288249314_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e249290249309_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl249288249314_))
                                      (let ((_g256930_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl249288249314_
                                                '0))))
                                        (begin
                                          (let ((_g256931_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g256930_)
                                                       (##vector-length
                                                        _g256930_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g256931_ 2)))
                                                (error "Context expects 2 values"
                                                       _g256931_)))
                                          (let ((_target249291249317_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g256930_ 0)))
                                                (_tl249293249319_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g256930_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl249293249319_))
                                                (letrec ((_loop249294249322_
                                                          (lambda (_hd249292249325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause249298249327_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd249292249325_))
                        (let ((_e249295249330_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd249292249325_))))
                          (let ((_lp-hd249296249333_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e249295249330_)))
                                (_lp-tl249297249335_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e249295249330_))))
                            (let ((__tmp256935
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd249296249333_
                                           _clause249298249327_))))
                              (declare (not safe))
                              (_loop249294249322_
                               _lp-tl249297249335_
                               __tmp256935))))
                        (let ((_clause249299249338_
                               (reverse _clause249298249327_)))
                          ((lambda (_L249341_)
                             (let* ((_clauses249436_
                                     (map (lambda (_clause249356_)
                                            (let* ((___stx255574255575_
                                                    _clause249356_)
                                                   (_g249359249374_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx255574255575_)))))
                                              (let ((___kont255576255577_
                                                     (lambda (_L249402_
                                                              _L249403_
                                                              _L249404_)
                                                       (let* ((_body249424_
                                                               (map (lambda (_g249419249421_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g249419249421_
                                 _L249404_
                                 _$t249089_
                                 _method-calls247644_
                                 _slot-refs247645_
                                 _class-type-check247646_
                                 _struct-type-check1249282_
                                 _struct-type-check2249283_)))
                            _L249402_))
                      (__tmp256932
                       (let ()
                         (declare (not safe))
                         (cons _L249404_ _L249403_))))
                 (declare (not safe))
                 (cons __tmp256932 _body249424_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont255578255579_
                                                     (lambda ()
                                                       _clause249356_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx255574255575_))
                                                    (let ((_e249366249386_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx255574255575_))))
                                                      (let ((_tl249364249391_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e249366249386_)))
                    (_hd249365249389_
                     (let () (declare (not safe)) (##car _e249366249386_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd249365249389_))
                    (let ((_e249369249394_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd249365249389_))))
                      (let ((_tl249367249399_
                             (let ()
                               (declare (not safe))
                               (##cdr _e249369249394_)))
                            (_hd249368249397_
                             (let ()
                               (declare (not safe))
                               (##car _e249369249394_))))
                        (___kont255576255577_
                         _tl249364249391_
                         _tl249367249399_
                         _hd249368249397_)))
                    (___kont255578255579_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont255578255579_)))))
                                          (let ((__tmp256933
                                                 (lambda (_g249428249431_
                                                          _g249429249433_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g249428249431_
                                                           _g249429249433_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp256933
                                                    '()
                                                    _L249341_))))
                                    (__tmp256934
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses249436_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp256934 _L248836_)))
                           _clause249299249338_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop249294249322_
                                                     _target249291249317_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g249285249304_
                                                   _g249286249307_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g249285249304_ _g249286249307_)))))
                              (let ()
                                (declare (not safe))
                                (_g249285249304_ _g249286249307_))))))
                  (declare (not safe))
                  (_g249284249438_ _L248836_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl249446_
                                                      (lambda (_specializer-lambda-expr249443_
                                                               _specializer-case-lambda-expr249444_)
                                                        (let ((__tmp256936
                                                               (let ((__tmp256937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp256939
                                     (let ((__tmp256940
                                            (let ((__tmp256942
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L248838_ '())))
                                                  (__tmp256941
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr249443_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp256942 __tmp256941))))
                                       (declare (not safe))
                                       (cons __tmp256940 '())))
                                    (__tmp256938
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr249444_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp256939 __tmp256938))))
                         (declare (not safe))
                         (cons '%#let-values __tmp256937))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp256936 _stx247550_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr249448_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr249280_
                                                         _struct-check-all249159_
                                                         _empty247649_)))
                                                     (_specializer-case-lambda-expr249450_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr249441_
                                                         _struct-check-all249159_
                                                         _empty247649_)))
                                                     (_specializer-impl249452_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl249446_
                                                         _specializer-lambda-expr249448_
                                                         _specializer-case-lambda-expr249450_)))
                                                     (_unchecked-specializer-lambda-expr249454_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?247652_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr249280_
                                                             _empty247649_
                                                             _struct-check-all249159_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr249456_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?247652_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr249441_
                                                             _empty247649_
                                                             _struct-check-all249159_))
                                                          '#f))
                                                     (_unchecked-specializer-impl249458_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?247652_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl249446_
                                                             _unchecked-specializer-lambda-expr249454_
                                                             _unchecked-specializer-case-lambda-expr249456_))
                                                          '#f))
                                                     (_specializer-impl249460_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl247556_
                                                         _$t249089_
                                                         _methods-bind249112_
                                                         _slots-bind249135_
                                                         _class-check-bind249157_
                                                         _struct-check-bind249181_
                                                         _specializer-impl249452_
                                                         _lifted-specializer-id249087_
                                                         _unchecked-specializer-impl249458_))))
                                                (let ((__tmp256944
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L247625_)))
                                                      (__tmp256943
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id249080_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp256944
                                                   '" => "
                                                   __tmp256943))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def247557_
                                                   _L247625_
                                                   _specializer-id249080_
                                                   _specializer-impl249460_
                                                   _lifted-specializer-id249087_
                                                   _unchecked-specializer-impl249458_)))))
                                        _hd248769248831_
                                        _hd248766248823_
                                        _hd248763248815_)
                                       (let ()
                                         (declare (not safe))
                                         (_g248745248775_ _g248746248778_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g248745248775_ _g248746248778_)))
                           (let ()
                             (declare (not safe))
                             (_g248745248775_ _g248746248778_)))
                       (let ()
                         (declare (not safe))
                         (_g248745248775_ _g248746248778_)))))
               (let () (declare (not safe)) (_g248745248775_ _g248746248778_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g248745248775_
                                                      _g248746248778_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g248745248775_
                                              _g248746248778_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g248745248775_ _g248746248778_)))))
                           (let ()
                             (declare (not safe))
                             (_g248745248775_ _g248746248778_)))))
                   (let ()
                     (declare (not safe))
                     (_g248745248775_ _g248746248778_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g248745248775_
                                                      _g248746248778_))))))
                                       (declare (not safe))
                                       (_g248744249463_ _L247624_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L247624_))
                                         (let* ((_g249466249519_
                                                 (lambda (_g249467249516_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g249467249516_))))
                                                (_g249465250791_
                                                 (lambda (_g249467249522_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g249467249522_))
                                                       (let ((_e249475249524_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g249467249522_))))
                 (let ((_hd249474249527_
                        (let () (declare (not safe)) (##car _e249475249524_)))
                       (_tl249473249529_
                        (let () (declare (not safe)) (##cdr _e249475249524_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd249474249527_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd249474249527_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl249473249529_))
                               (let ((_e249478249532_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl249473249529_))))
                                 (let ((_hd249477249535_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e249478249532_)))
                                       (_tl249476249537_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e249478249532_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd249477249535_))
                                       (let ((_e249481249540_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd249477249535_))))
                                         (let ((_hd249480249543_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e249481249540_)))
                                               (_tl249479249545_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e249481249540_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd249480249543_))
                                               (let ((_e249484249548_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd249480249543_))))
                                                 (let ((_hd249483249551_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e249484249548_)))
                                                       (_tl249482249553_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e249484249548_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd249483249551_))
                                                       (let ((_e249487249556_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd249483249551_))))
                 (let ((_hd249486249559_
                        (let () (declare (not safe)) (##car _e249487249556_)))
                       (_tl249485249561_
                        (let () (declare (not safe)) (##cdr _e249487249556_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl249485249561_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl249482249553_))
                           (let ((_e249490249564_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl249482249553_))))
                             (let ((_hd249489249567_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e249490249564_)))
                                   (_tl249488249569_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e249490249564_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd249489249567_))
                                   (let ((_e249493249572_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd249489249567_))))
                                     (let ((_hd249492249575_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e249493249572_)))
                                           (_tl249491249577_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e249493249572_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd249492249575_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd249492249575_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl249491249577_))
                                                   (let ((_e249496249580_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl249491249577_))))
                                                     (let ((_hd249495249583_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e249496249580_)))
                                                           (_tl249494249585_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e249496249580_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd249495249583_))
                                                           (let ((_e249499249588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd249495249583_))))
                     (let ((_hd249498249591_
                            (let ()
                              (declare (not safe))
                              (##car _e249499249588_)))
                           (_tl249497249593_
                            (let ()
                              (declare (not safe))
                              (##cdr _e249499249588_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd249498249591_))
                           (let ((_e249502249596_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd249498249591_))))
                             (let ((_hd249501249599_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e249502249596_)))
                                   (_tl249500249601_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e249502249596_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd249501249599_))
                                   (let ((_e249505249604_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd249501249599_))))
                                     (let ((_hd249504249607_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e249505249604_)))
                                           (_tl249503249609_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e249505249604_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl249503249609_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl249500249601_))
                                               (let ((_e249508249612_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl249500249601_))))
                                                 (let ((_hd249507249615_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e249508249612_)))
                                                       (_tl249506249617_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e249508249612_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl249506249617_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl249497249593_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl249494249585_))
                       (let ((_e249511249620_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl249494249585_))))
                         (let ((_hd249510249623_
                                (let ()
                                  (declare (not safe))
                                  (##car _e249511249620_)))
                               (_tl249509249625_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e249511249620_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl249509249625_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl249488249569_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl249479249545_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl249476249537_))
                                           (let ((_e249514249628_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl249476249537_))))
                                             (let ((_hd249513249631_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e249514249628_)))
                                                   (_tl249512249633_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e249514249628_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl249512249633_))
                                                   ((lambda (_L249636_
                                                             _L249637_
                                                             _L249638_
                                                             _L249639_
                                                             _L249640_)
                                                      (let* ((_g249679249741_
                                                              (lambda (_g249680249738_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g249680249738_))))
                     (_g249678250788_
                      (lambda (_g249680249744_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g249680249744_))
                            (let ((_e249688249746_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g249680249744_))))
                              (let ((_hd249687249749_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e249688249746_)))
                                    (_tl249686249751_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e249688249746_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd249687249749_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd249687249749_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl249686249751_))
                                            (let ((_e249691249754_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl249686249751_))))
                                              (let ((_hd249690249757_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e249691249754_)))
                                                    (_tl249689249759_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e249691249754_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl249689249759_))
                                                    (let ((_e249694249762_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl249689249759_))))
                                                      (let ((_hd249693249765_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e249694249762_)))
                    (_tl249692249767_
                     (let () (declare (not safe)) (##cdr _e249694249762_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd249693249765_))
                    (let ((_e249697249770_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd249693249765_))))
                      (let ((_hd249696249773_
                             (let ()
                               (declare (not safe))
                               (##car _e249697249770_)))
                            (_tl249695249775_
                             (let ()
                               (declare (not safe))
                               (##cdr _e249697249770_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd249696249773_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd249696249773_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl249695249775_))
                                    (let ((_e249700249778_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl249695249775_))))
                                      (let ((_hd249699249781_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e249700249778_)))
                                            (_tl249698249783_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e249700249778_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd249699249781_))
                                            (let ((_e249703249786_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd249699249781_))))
                                              (let ((_hd249702249789_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e249703249786_)))
                                                    (_tl249701249791_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e249703249786_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd249702249789_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd249702249789_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl249701249791_))
                                                            (let ((_e249706249794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl249701249791_))))
                      (let ((_hd249705249797_
                             (let ()
                               (declare (not safe))
                               (##car _e249706249794_)))
                            (_tl249704249799_
                             (let ()
                               (declare (not safe))
                               (##cdr _e249706249794_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl249704249799_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl249698249783_))
                                (let ((_e249709249802_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl249698249783_))))
                                  (let ((_hd249708249805_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e249709249802_)))
                                        (_tl249707249807_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e249709249802_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd249708249805_))
                                        (let ((_e249712249810_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd249708249805_))))
                                          (let ((_hd249711249813_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e249712249810_)))
                                                (_tl249710249815_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e249712249810_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd249711249813_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd249711249813_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl249710249815_))
                                                        (let ((_e249715249818_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl249710249815_))))
                  (let ((_hd249714249821_
                         (let () (declare (not safe)) (##car _e249715249818_)))
                        (_tl249713249823_
                         (let ()
                           (declare (not safe))
                           (##cdr _e249715249818_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl249713249823_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl249707249807_))
                            (let ((_e249718249826_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl249707249807_))))
                              (let ((_hd249717249829_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e249718249826_)))
                                    (_tl249716249831_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e249718249826_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd249717249829_))
                                    (let ((_e249721249834_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd249717249829_))))
                                      (let ((_hd249720249837_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e249721249834_)))
                                            (_tl249719249839_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e249721249834_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd249720249837_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd249720249837_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl249719249839_))
                                                    (let ((_e249724249842_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl249719249839_))))
                                                      (let ((_hd249723249845_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e249724249842_)))
                    (_tl249722249847_
                     (let () (declare (not safe)) (##cdr _e249724249842_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl249722249847_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl249716249831_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl249716249831_))
                                  '1)
                            (let ((_g256820_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl249716249831_
                                      '1))))
                              (begin
                                (let ((_g256821_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g256820_)
                                             (##vector-length _g256820_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g256821_ 2)))
                                      (error "Context expects 2 values"
                                             _g256821_)))
                                (let ((_target249725249850_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g256820_ 0)))
                                      (_tl249727249852_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g256820_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl249727249852_))
                                      (let ((_e249736249855_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl249727249852_))))
                                        (let ((_hd249735249858_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e249736249855_)))
                                              (_tl249734249860_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e249736249855_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl249734249860_))
                                              (letrec ((_loop249728249863_
                                                        (lambda (_hd249726249866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref249732249868_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd249726249866_))
                      (let ((_e249729249871_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd249726249866_))))
                        (let ((_lp-hd249730249874_
                               (let ()
                                 (declare (not safe))
                                 (##car _e249729249871_)))
                              (_lp-tl249731249876_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e249729249871_))))
                          (let ((__tmp256907
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd249730249874_
                                         _kw-ref249732249868_))))
                            (declare (not safe))
                            (_loop249728249863_
                             _lp-tl249731249876_
                             __tmp256907))))
                      (let ((_kw-ref249733249879_
                             (reverse _kw-ref249732249868_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl249692249767_))
                            ((lambda (_L249882_
                                      _L249883_
                                      _L249884_
                                      _L249885_
                                      _L249886_)
                               (let* ((_kw-count249937_
                                       (length (let ((__tmp256822
                                                      (lambda (_g249929249932_
                                                               _g249930249934_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g249929249932_
                                                                _g249930249934_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp256822
                                                         '()
                                                         _L249883_))))
                                      (_self-index249939_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count249937_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L249638_))
                                     (let* ((_g249942249956_
                                             (lambda (_g249943249953_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g249943249953_))))
                                            (_g249941250127_
                                             (lambda (_g249943249959_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g249943249959_))
                                                   (let ((_e249948249961_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g249943249959_))))
                                                     (let ((_hd249947249964_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e249948249961_)))
                                                           (_tl249946249966_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e249948249961_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl249946249966_))
                                                           (let ((_e249951249969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl249946249966_))))
                     (let ((_hd249950249972_
                            (let ()
                              (declare (not safe))
                              (##car _e249951249969_)))
                           (_tl249949249974_
                            (let ()
                              (declare (not safe))
                              (##cdr _e249951249969_))))
                       ((lambda (_L249977_ _L249978_)
                          (let ((_self249994_
                                 (list-ref _L249978_ _self-index249939_)))
                            (for-each
                             (lambda (_g249995249997_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g249995249997_
                                  _self249994_
                                  _method-calls247644_
                                  _slot-refs247645_
                                  _class-type-check247646_
                                  _struct-type-check247647_
                                  _struct-type-assert247648_)))
                             _L249977_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?247651_))
                                _stx247550_
                                (let* ((_specializer-id250006_
                                        (let* ((_id250000_
                                                (let ((__tmp256873
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L247625_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp256873
                                                   '"::specialize")))
                                               (_specializer-id250003_
                                                (let ((__tmp256874
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx247550_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id250000_
                                                   __tmp256874))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id250003_))
                                          _specializer-id250003_))
                                       (_lifted-specializer-id250013_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?247653_))
                                            (let* ((_id250008_
                                                    (let ((__tmp256875
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L247625_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp256875
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id250010_
                                                    (let ((__tmp256876
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx247550_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id250008_
                                                       __tmp256876))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id250010_))
                                              _lifted-specializer-id250010_)
                                            '#f))
                                       (_$t250015_
                                        (let ((__tmp256877 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp256877)))
                                       (_methods250017_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls247644_)))
                                       (_$methods250021_
                                        (map (lambda (_id250019_)
                                               (let ((__tmp256878
                                                      (gensym _id250019_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp256878)))
                                             _methods250017_))
                                       (_g256879_
                                        (for-each
                                         (lambda (_g250022250025_
                                                  _g250023250027_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls247644_
                                              _g250022250025_
                                              _g250023250027_)))
                                         _methods250017_
                                         _$methods250021_))
                                       (_methods-bind250038_
                                        (map (lambda (_g250030250033_
                                                      _g250031250035_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind247552_
                                                  _$t250015_
                                                  _g250030250033_
                                                  _g250031250035_)))
                                             _methods250017_
                                             _$methods250021_))
                                       (_slots250040_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs247645_)))
                                       (_$slots250044_
                                        (map (lambda (_id250042_)
                                               (let ((__tmp256880
                                                      (gensym _id250042_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp256880)))
                                             _slots250040_))
                                       (_g256881_
                                        (for-each
                                         (lambda (_g250045250048_
                                                  _g250046250050_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs247645_
                                              _g250045250048_
                                              _g250046250050_)))
                                         _slots250040_
                                         _$slots250044_))
                                       (_slots-bind250061_
                                        (map (lambda (_g250053250056_
                                                      _g250054250058_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind247553_
                                                  _$t250015_
                                                  _g250053250056_
                                                  _g250054250058_)))
                                             _slots250040_
                                             _$slots250044_))
                                       (_class-check250063_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check247646_)))
                                       (_$class-check250066_
                                        (map (lambda (_g256882_)
                                               (let ((__tmp256883
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp256883)))
                                             _class-check250063_))
                                       (_g256884_
                                        (for-each
                                         (lambda (_g250067250070_
                                                  _g250068250072_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check247646_
                                              _g250067250070_
                                              _g250068250072_)))
                                         _class-check250063_
                                         _$class-check250066_))
                                       (_class-check-bind250083_
                                        (map (lambda (_g250075250078_
                                                      _g250076250080_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind247554_
                                                  _$t250015_
                                                  _g250075250078_
                                                  _g250076250080_)))
                                             _class-check250063_
                                             _$class-check250066_))
                                       (_struct-check-all250085_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check247647_
                                           _struct-type-assert247648_)))
                                       (_struct-check250087_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all250085_)))
                                       (_$struct-check250090_
                                        (map (lambda (_g256885_)
                                               (let ((__tmp256886
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp256886)))
                                             _struct-check250087_))
                                       (_g256887_
                                        (for-each
                                         (lambda (_g250091250094_
                                                  _g250092250096_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all250085_
                                              _g250091250094_
                                              _g250092250096_)))
                                         _struct-check250087_
                                         _$struct-check250090_))
                                       (_struct-check-bind250107_
                                        (map (lambda (_g250099250102_
                                                      _g250100250104_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind247555_
                                                  _$t250015_
                                                  _g250099250102_
                                                  _g250100250104_)))
                                             _struct-check250087_
                                             _$struct-check250090_))
                                       (_make-specializer-impl250118_
                                        (lambda (_struct-type-check1250109_
                                                 _struct-type-check2250110_)
                                          (let* ((_specializer-body250116_
                                                  (map (lambda (_g250111250113_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g250111250113_
                                                            _self249994_
                                                            _$t250015_
                                                            _method-calls247644_
                                                            _slot-refs247645_
                                                            _class-type-check247646_
                                                            _struct-type-check1250109_
                                                            _struct-type-check2250110_)))
                                                       _L249977_))
                                                 (__tmp256888
                                                  (let ((__tmp256889
                                                         (let ((__tmp256891
                                                                (let ((__tmp256892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp256904
                                      (let ()
                                        (declare (not safe))
                                        (cons _L249640_ '())))
                                     (__tmp256893
                                      (let ((__tmp256894
                                             (let ((__tmp256895
                                                    (let ((__tmp256897
                                                           (let ((__tmp256898
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp256903
                                 (let ()
                                   (declare (not safe))
                                   (cons _L249639_ '())))
                                (__tmp256899
                                 (let ((__tmp256900
                                        (let ((__tmp256901
                                               (let ((__tmp256902
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L249978_
                                                              _specializer-body250116_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp256902))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp256901
                                           _L249638_))))
                                   (declare (not safe))
                                   (cons __tmp256900 '()))))
                            (declare (not safe))
                            (cons __tmp256903 __tmp256899))))
                     (declare (not safe))
                     (cons __tmp256898 '())))
                  (__tmp256896
                   (let () (declare (not safe)) (cons _L249637_ '()))))
              (declare (not safe))
              (cons __tmp256897 __tmp256896))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp256895))))
                                        (declare (not safe))
                                        (cons __tmp256894 '()))))
                                 (declare (not safe))
                                 (cons __tmp256904 __tmp256893))))
                          (declare (not safe))
                          (cons __tmp256892 '())))
                       (__tmp256890
                        (let () (declare (not safe)) (cons _L249636_ '()))))
                   (declare (not safe))
                   (cons __tmp256891 __tmp256890))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp256889))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp256888
                                             _stx247550_))))
                                       (_specializer-impl250120_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl250118_
                                           _struct-check-all250085_
                                           _empty247649_)))
                                       (_unchecked-specializer-impl250122_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?247652_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl250118_
                                               _empty247649_
                                               _struct-check-all250085_))
                                            '#f))
                                       (_specializer-impl250124_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl247556_
                                           _$t250015_
                                           _methods-bind250038_
                                           _slots-bind250061_
                                           _class-check-bind250083_
                                           _struct-check-bind250107_
                                           _specializer-impl250120_
                                           _lifted-specializer-id250013_
                                           _unchecked-specializer-impl250122_))))
                                  (let ((__tmp256906
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L247625_)))
                                        (__tmp256905
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id250006_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp256906
                                     '" => "
                                     __tmp256905))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def247557_
                                     _L247625_
                                     _specializer-id250006_
                                     _specializer-impl250124_
                                     _lifted-specializer-id250013_
                                     _unchecked-specializer-impl250122_))))))
                        _tl249949249974_
                        _hd249950249972_)))
                   (let ()
                     (declare (not safe))
                     (_g249942249956_ _g249943249959_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g249942249956_
                                                      _g249943249959_))))))
                                       (declare (not safe))
                                       (_g249941250127_ _L249638_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L249638_))
                                         (let* ((_g250130250160_
                                                 (lambda (_g250131250157_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g250131250157_))))
                                                (_g250129250785_
                                                 (lambda (_g250131250163_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g250131250163_))
                                                       (let ((_e250137250165_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g250131250163_))))
                 (let ((_hd250136250168_
                        (let () (declare (not safe)) (##car _e250137250165_)))
                       (_tl250135250170_
                        (let () (declare (not safe)) (##cdr _e250137250165_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl250135250170_))
                       (let ((_e250140250173_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl250135250170_))))
                         (let ((_hd250139250176_
                                (let ()
                                  (declare (not safe))
                                  (##car _e250140250173_)))
                               (_tl250138250178_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e250140250173_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd250139250176_))
                               (let ((_e250143250181_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd250139250176_))))
                                 (let ((_hd250142250184_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e250143250181_)))
                                       (_tl250141250186_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e250143250181_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd250142250184_))
                                       (let ((_e250146250189_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd250142250184_))))
                                         (let ((_hd250145250192_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e250146250189_)))
                                               (_tl250144250194_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e250146250189_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd250145250192_))
                                               (let ((_e250149250197_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd250145250192_))))
                                                 (let ((_hd250148250200_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e250149250197_)))
                                                       (_tl250147250202_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e250149250197_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl250147250202_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl250144250194_))
                                                           (let ((_e250152250205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl250144250194_))))
                     (let ((_hd250151250208_
                            (let ()
                              (declare (not safe))
                              (##car _e250152250205_)))
                           (_tl250150250210_
                            (let ()
                              (declare (not safe))
                              (##cdr _e250152250205_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl250150250210_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl250141250186_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl250138250178_))
                                   (let ((_e250155250213_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl250138250178_))))
                                     (let ((_hd250154250216_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e250155250213_)))
                                           (_tl250153250218_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e250155250213_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl250153250218_))
                                           ((lambda (_L250221_
                                                     _L250222_
                                                     _L250223_)
                                              (let* ((_g250246250260_
                                                      (lambda (_g250247250257_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g250247250257_))))
                                                     (_g250245250301_
                                                      (lambda (_g250247250263_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g250247250263_))
                                                            (let ((_e250252250265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g250247250263_))))
                      (let ((_hd250251250268_
                             (let ()
                               (declare (not safe))
                               (##car _e250252250265_)))
                            (_tl250250250270_
                             (let ()
                               (declare (not safe))
                               (##cdr _e250252250265_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl250250250270_))
                            (let ((_e250255250273_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl250250250270_))))
                              (let ((_hd250254250276_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e250255250273_)))
                                    (_tl250253250278_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e250255250273_))))
                                ((lambda (_L250281_ _L250282_)
                                   (let ((_self250295_
                                          (list-ref
                                           _L250282_
                                           _self-index249939_)))
                                     (for-each
                                      (lambda (_g250296250298_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g250296250298_
                                           _self250295_
                                           _method-calls247644_
                                           _slot-refs247645_
                                           _class-type-check247646_
                                           _struct-type-check247647_
                                           _struct-type-assert247648_)))
                                      _L250281_)))
                                 _tl250253250278_
                                 _hd250254250276_)))
                            (let ()
                              (declare (not safe))
                              (_g250246250260_ _g250247250263_)))))
                    (let ()
                      (declare (not safe))
                      (_g250246250260_ _g250247250263_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g250245250301_ _L250222_))
                                              (let* ((_g250304250323_
                                                      (lambda (_g250305250320_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g250305250320_))))
                                                     (_g250303250428_
                                                      (lambda (_g250305250326_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g250305250326_))
                                                            (let ((_e250309250328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g250305250326_))))
                      (let ((_hd250308250331_
                             (let ()
                               (declare (not safe))
                               (##car _e250309250328_)))
                            (_tl250307250333_
                             (let ()
                               (declare (not safe))
                               (##cdr _e250309250328_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl250307250333_))
                            (let ((_g256823_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl250307250333_
                                      '0))))
                              (begin
                                (let ((_g256824_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g256823_)
                                             (##vector-length _g256823_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g256824_ 2)))
                                      (error "Context expects 2 values"
                                             _g256824_)))
                                (let ((_target250310250336_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g256823_ 0)))
                                      (_tl250312250338_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g256823_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl250312250338_))
                                      (letrec ((_loop250313250341_
                                                (lambda (_hd250311250344_
                                                         _clause250317250346_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd250311250344_))
                                                      (let ((_e250314250349_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd250311250344_))))
                (let ((_lp-hd250315250352_
                       (let () (declare (not safe)) (##car _e250314250349_)))
                      (_lp-tl250316250354_
                       (let () (declare (not safe)) (##cdr _e250314250349_))))
                  (let ((__tmp256826
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd250315250352_ _clause250317250346_))))
                    (declare (not safe))
                    (_loop250313250341_ _lp-tl250316250354_ __tmp256826))))
              (let ((_clause250318250357_ (reverse _clause250317250346_)))
                ((lambda (_L250360_)
                   (for-each
                    (lambda (_clause250373_)
                      (let* ((_g250375250386_
                              (lambda (_g250376250383_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g250376250383_))))
                             (_g250374250418_
                              (lambda (_g250376250389_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g250376250389_))
                                    (let ((_e250381250391_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g250376250389_))))
                                      (let ((_hd250380250394_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e250381250391_)))
                                            (_tl250379250396_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e250381250391_))))
                                        ((lambda (_L250399_ _L250400_)
                                           (let ((_self250412_
                                                  (list-ref
                                                   _L250400_
                                                   _self-index249939_)))
                                             (for-each
                                              (lambda (_g250413250415_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g250413250415_
                                                   _self250412_
                                                   _method-calls247644_
                                                   _slot-refs247645_
                                                   _class-type-check247646_
                                                   _struct-type-check247647_
                                                   _struct-type-assert247648_)))
                                              _L250399_)))
                                         _tl250379250396_
                                         _hd250380250394_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g250375250386_ _g250376250389_))))))
                        (declare (not safe))
                        (_g250374250418_ _clause250373_)))
                    (let ((__tmp256825
                           (lambda (_g250420250423_ _g250421250425_)
                             (let ()
                               (declare (not safe))
                               (cons _g250420250423_ _g250421250425_)))))
                      (declare (not safe))
                      (foldr1 __tmp256825 '() _L250360_))))
                 _clause250318250357_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop250313250341_
                                           _target250310250336_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g250304250323_ _g250305250326_))))))
                            (let ()
                              (declare (not safe))
                              (_g250304250323_ _g250305250326_)))))
                    (let ()
                      (declare (not safe))
                      (_g250304250323_ _g250305250326_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g250303250428_ _L250221_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?247651_))
                                                  _stx247550_
                                                  (let* ((_specializer-id250437_
                                                          (let* ((_id250431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp256827
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L247625_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp256827 '"::specialize")))
                         (_specializer-id250434_
                          (let ((__tmp256828
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx247550_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id250431_ __tmp256828))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id250434_))
                    _specializer-id250434_))
                 (_lifted-specializer-id250444_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?247653_))
                      (let* ((_id250439_
                              (let ((__tmp256829
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L247625_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp256829
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id250441_
                              (let ((__tmp256830
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx247550_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id250439_
                                 __tmp256830))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id250441_))
                        _lifted-specializer-id250441_)
                      '#f))
                 (_$t250446_
                  (let ((__tmp256831 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp256831)))
                 (_methods250448_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls247644_)))
                 (_$methods250452_
                  (map (lambda (_id250450_)
                         (let ((__tmp256832 (gensym _id250450_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp256832)))
                       _methods250448_))
                 (_g256833_
                  (for-each
                   (lambda (_g250453250456_ _g250454250458_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls247644_
                        _g250453250456_
                        _g250454250458_)))
                   _methods250448_
                   _$methods250452_))
                 (_methods-bind250469_
                  (map (lambda (_g250461250464_ _g250462250466_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind247552_
                            _$t250446_
                            _g250461250464_
                            _g250462250466_)))
                       _methods250448_
                       _$methods250452_))
                 (_slots250471_
                  (let () (declare (not safe)) (hash-keys _slot-refs247645_)))
                 (_$slots250475_
                  (map (lambda (_id250473_)
                         (let ((__tmp256834 (gensym _id250473_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp256834)))
                       _slots250471_))
                 (_g256835_
                  (for-each
                   (lambda (_g250476250479_ _g250477250481_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs247645_
                        _g250476250479_
                        _g250477250481_)))
                   _slots250471_
                   _$slots250475_))
                 (_slots-bind250492_
                  (map (lambda (_g250484250487_ _g250485250489_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind247553_
                            _$t250446_
                            _g250484250487_
                            _g250485250489_)))
                       _slots250471_
                       _$slots250475_))
                 (_class-check250494_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check247646_)))
                 (_$class-check250497_
                  (map (lambda (_g256836_)
                         (let ((__tmp256837 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp256837)))
                       _class-check250494_))
                 (_g256838_
                  (for-each
                   (lambda (_g250498250501_ _g250499250503_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check247646_
                        _g250498250501_
                        _g250499250503_)))
                   _class-check250494_
                   _$class-check250497_))
                 (_class-check-bind250514_
                  (map (lambda (_g250506250509_ _g250507250511_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind247554_
                            _$t250446_
                            _g250506250509_
                            _g250507250511_)))
                       _class-check250494_
                       _$class-check250497_))
                 (_struct-check-all250516_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check247647_
                     _struct-type-assert247648_)))
                 (_struct-check250518_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all250516_)))
                 (_$struct-check250521_
                  (map (lambda (_g256839_)
                         (let ((__tmp256840 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp256840)))
                       _struct-check250518_))
                 (_g256841_
                  (for-each
                   (lambda (_g250522250525_ _g250523250527_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all250516_
                        _g250522250525_
                        _g250523250527_)))
                   _struct-check250518_
                   _$struct-check250521_))
                 (_struct-check-bind250538_
                  (map (lambda (_g250530250533_ _g250531250535_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind247555_
                            _$t250446_
                            _g250530250533_
                            _g250531250535_)))
                       _struct-check250518_
                       _$struct-check250521_))
                 (_make-specializer-lambda-expr250624_
                  (lambda (_struct-type-check1250540_
                           _struct-type-check2250541_)
                    (let* ((_g250543250557_
                            (lambda (_g250544250554_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g250544250554_))))
                           (_g250542250621_
                            (lambda (_g250544250560_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g250544250560_))
                                  (let ((_e250549250562_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g250544250560_))))
                                    (let ((_hd250548250565_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e250549250562_)))
                                          (_tl250547250567_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e250549250562_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl250547250567_))
                                          (let ((_e250552250570_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl250547250567_))))
                                            (let ((_hd250551250573_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e250552250570_)))
                                                  (_tl250550250575_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e250552250570_))))
                                              ((lambda (_L250578_ _L250579_)
                                                 (let* ((_self250612_
                                                         (list-ref
                                                          _L250579_
                                                          _self-index249939_))
                                                        (_body250618_
                                                         (map (lambda (_g250613250615_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g250613250615_
                           _self250612_
                           _$t250446_
                           _method-calls247644_
                           _slot-refs247645_
                           _class-type-check247646_
                           _struct-type-check1250540_
                           _struct-type-check2250541_)))
                      _L250578_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp256842
                                                          (let ((__tmp256843
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L250579_ _body250618_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp256843))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp256842
                                                      _L250222_))))
                                               _tl250550250575_
                                               _hd250551250573_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g250543250557_
                                             _g250544250560_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g250543250557_ _g250544250560_))))))
                      (declare (not safe))
                      (_g250542250621_ _L250222_))))
                 (_make-specializer-case-lambda-expr250763_
                  (lambda (_struct-type-check1250626_
                           _struct-type-check2250627_)
                    (let* ((_g250629250648_
                            (lambda (_g250630250645_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g250630250645_))))
                           (_g250628250760_
                            (lambda (_g250630250651_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g250630250651_))
                                  (let ((_e250634250653_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g250630250651_))))
                                    (let ((_hd250633250656_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e250634250653_)))
                                          (_tl250632250658_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e250634250653_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl250632250658_))
                                          (let ((_g256844_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl250632250658_
                                                    '0))))
                                            (begin
                                              (let ((_g256845_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g256844_)
                                                           (##vector-length
                                                            _g256844_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g256845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g256845_)))
                                              (let ((_target250635250661_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g256844_
                                                        0)))
                                                    (_tl250637250663_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g256844_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl250637250663_))
                                                    (letrec ((_loop250638250666_
                                                              (lambda (_hd250636250669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause250642250671_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd250636250669_))
                            (let ((_e250639250674_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd250636250669_))))
                              (let ((_lp-hd250640250677_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e250639250674_)))
                                    (_lp-tl250641250679_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e250639250674_))))
                                (let ((__tmp256848
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd250640250677_
                                               _clause250642250671_))))
                                  (declare (not safe))
                                  (_loop250638250666_
                                   _lp-tl250641250679_
                                   __tmp256848))))
                            (let ((_clause250643250682_
                                   (reverse _clause250642250671_)))
                              ((lambda (_L250685_)
                                 (let* ((_clauses250758_
                                         (map (lambda (_clause250700_)
                                                (let* ((_g250702250713_
                                                        (lambda (_g250703250710_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g250703250710_))))
                                                       (_g250701250748_
                                                        (lambda (_g250703250716_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g250703250716_))
                      (let ((_e250708250718_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g250703250716_))))
                        (let ((_hd250707250721_
                               (let ()
                                 (declare (not safe))
                                 (##car _e250708250718_)))
                              (_tl250706250723_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e250708250718_))))
                          ((lambda (_L250726_ _L250727_)
                             (let* ((_self250739_
                                     (list-ref _L250727_ _self-index249939_))
                                    (_body250745_
                                     (map (lambda (_g250740250742_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g250740250742_
                                               _self250739_
                                               _$t250446_
                                               _method-calls247644_
                                               _slot-refs247645_
                                               _class-type-check247646_
                                               _struct-type-check1250626_
                                               _struct-type-check2250627_)))
                                          _L250726_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L250727_ _body250745_))))
                           _tl250706250723_
                           _hd250707250721_)))
                      (let ()
                        (declare (not safe))
                        (_g250702250713_ _g250703250716_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g250701250748_
                                                   _clause250700_)))
                                              (let ((__tmp256846
                                                     (lambda (_g250750250753_
                                                              _g250751250755_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g250750250753_
                                                               _g250751250755_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp256846
                                                        '()
                                                        _L250685_))))
                                        (__tmp256847
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses250758_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp256847
                                    _L250221_)))
                               _clause250643250682_))))))
              (let ()
                (declare (not safe))
                (_loop250638250666_ _target250635250661_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g250629250648_
                                                       _g250630250651_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g250629250648_
                                             _g250630250651_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g250629250648_ _g250630250651_))))))
                      (declare (not safe))
                      (_g250628250760_ _L250221_))))
                 (_make-specializer-impl250768_
                  (lambda (_specializer-lambda-expr250765_
                           _specializer-case-lambda-expr250766_)
                    (let ((__tmp256849
                           (let ((__tmp256850
                                  (let ((__tmp256852
                                         (let ((__tmp256853
                                                (let ((__tmp256870
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L249640_ '())))
                                                      (__tmp256854
                                                       (let ((__tmp256855
                                                              (let ((__tmp256856
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp256858
                                    (let ((__tmp256859
                                           (let ((__tmp256869
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L249639_ '())))
                                                 (__tmp256860
                                                  (let ((__tmp256861
                                                         (let ((__tmp256862
                                                                (let ((__tmp256863
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp256865
                                      (let ((__tmp256866
                                             (let ((__tmp256868
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L250223_ '())))
                                                   (__tmp256867
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr250765_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp256868
                                                     __tmp256867))))
                                        (declare (not safe))
                                        (cons __tmp256866 '())))
                                     (__tmp256864
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr250766_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp256865 __tmp256864))))
                          (declare (not safe))
                          (cons '%#let-values __tmp256863))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp256862 _stx247550_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp256861 '()))))
                                             (declare (not safe))
                                             (cons __tmp256869 __tmp256860))))
                                      (declare (not safe))
                                      (cons __tmp256859 '())))
                                   (__tmp256857
                                    (let ()
                                      (declare (not safe))
                                      (cons _L249637_ '()))))
                               (declare (not safe))
                               (cons __tmp256858 __tmp256857))))
                        (declare (not safe))
                        (cons '%#let-values __tmp256856))))
                 (declare (not safe))
                 (cons __tmp256855 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256870
                                                        __tmp256854))))
                                           (declare (not safe))
                                           (cons __tmp256853 '())))
                                        (__tmp256851
                                         (let ()
                                           (declare (not safe))
                                           (cons _L249636_ '()))))
                                    (declare (not safe))
                                    (cons __tmp256852 __tmp256851))))
                             (declare (not safe))
                             (cons '%#let-values __tmp256850))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp256849 _stx247550_))))
                 (_specializer-lambda-expr250770_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr250624_
                     _struct-check-all250516_
                     _empty247649_)))
                 (_specializer-case-lambda-expr250772_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr250763_
                     _struct-check-all250516_
                     _empty247649_)))
                 (_specializer-impl250774_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl250768_
                     _specializer-lambda-expr250770_
                     _specializer-case-lambda-expr250772_)))
                 (_unchecked-specializer-lambda-expr250776_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?247652_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr250624_
                         _empty247649_
                         _struct-check-all250516_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr250778_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?247652_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr250763_
                         _empty247649_
                         _struct-check-all250516_))
                      '#f))
                 (_unchecked-specializer-impl250780_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?247652_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl250768_
                         _unchecked-specializer-lambda-expr250776_
                         _unchecked-specializer-case-lambda-expr250778_))
                      '#f))
                 (_specializer-impl250782_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl247556_
                     _$t250446_
                     _methods-bind250469_
                     _slots-bind250492_
                     _class-check-bind250514_
                     _struct-check-bind250538_
                     _specializer-impl250774_
                     _lifted-specializer-id250444_
                     _unchecked-specializer-impl250780_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp256872
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L247625_)))
                                                          (__tmp256871
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id250437_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp256872
                                                       '" => "
                                                       __tmp256871))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def247557_
                                                       _L247625_
                                                       _specializer-id250437_
                                                       _specializer-impl250782_
                                                       _lifted-specializer-id250444_
                                                       _unchecked-specializer-impl250780_)))))
                                            _hd250154250216_
                                            _hd250151250208_
                                            _hd250148250200_)
                                           (let ()
                                             (declare (not safe))
                                             (_g250130250160_
                                              _g250131250163_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g250130250160_ _g250131250163_)))
                               (let ()
                                 (declare (not safe))
                                 (_g250130250160_ _g250131250163_)))
                           (let ()
                             (declare (not safe))
                             (_g250130250160_ _g250131250163_)))))
                   (let ()
                     (declare (not safe))
                     (_g250130250160_ _g250131250163_)))
               (let ()
                 (declare (not safe))
                 (_g250130250160_ _g250131250163_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g250130250160_
                                                  _g250131250163_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g250130250160_ _g250131250163_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g250130250160_ _g250131250163_)))))
                       (let ()
                         (declare (not safe))
                         (_g250130250160_ _g250131250163_)))))
               (let ()
                 (declare (not safe))
                 (_g250130250160_ _g250131250163_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g250129250785_ _L249638_))
                                         _stx247550_))))
                             _hd249735249858_
                             _kw-ref249733249879_
                             _hd249723249845_
                             _hd249714249821_
                             _hd249705249797_)
                            (let ()
                              (declare (not safe))
                              (_g249679249741_ _g249680249744_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop249728249863_
                                                   _target249725249850_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g249679249741_
                                                 _g249680249744_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g249679249741_ _g249680249744_))))))
                            (let ()
                              (declare (not safe))
                              (_g249679249741_ _g249680249744_)))
                        (let ()
                          (declare (not safe))
                          (_g249679249741_ _g249680249744_)))
                    (let ()
                      (declare (not safe))
                      (_g249679249741_ _g249680249744_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g249679249741_
                                                       _g249680249744_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g249679249741_
                                                   _g249680249744_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g249679249741_
                                               _g249680249744_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g249679249741_ _g249680249744_)))))
                            (let ()
                              (declare (not safe))
                              (_g249679249741_ _g249680249744_)))
                        (let ()
                          (declare (not safe))
                          (_g249679249741_ _g249680249744_)))))
                (let ()
                  (declare (not safe))
                  (_g249679249741_ _g249680249744_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g249679249741_
                                                       _g249680249744_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g249679249741_
                                                   _g249680249744_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g249679249741_ _g249680249744_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g249679249741_ _g249680249744_)))
                            (let ()
                              (declare (not safe))
                              (_g249679249741_ _g249680249744_)))))
                    (let ()
                      (declare (not safe))
                      (_g249679249741_ _g249680249744_)))
                (let ()
                  (declare (not safe))
                  (_g249679249741_ _g249680249744_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g249679249741_
                                                       _g249680249744_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g249679249741_
                                               _g249680249744_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g249679249741_ _g249680249744_)))
                                (let ()
                                  (declare (not safe))
                                  (_g249679249741_ _g249680249744_)))
                            (let ()
                              (declare (not safe))
                              (_g249679249741_ _g249680249744_)))))
                    (let ()
                      (declare (not safe))
                      (_g249679249741_ _g249680249744_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g249679249741_
                                                       _g249680249744_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g249679249741_
                                               _g249680249744_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g249679249741_ _g249680249744_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g249679249741_ _g249680249744_)))))
                            (let ()
                              (declare (not safe))
                              (_g249679249741_ _g249680249744_))))))
                (declare (not safe))
                (_g249678250788_ _L249637_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd249513249631_
                                                    _hd249510249623_
                                                    _hd249507249615_
                                                    _hd249504249607_
                                                    _hd249486249559_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g249466249519_
                                                      _g249467249522_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g249466249519_
                                              _g249467249522_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g249466249519_ _g249467249522_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g249466249519_ _g249467249522_)))
                               (let ()
                                 (declare (not safe))
                                 (_g249466249519_ _g249467249522_)))))
                       (let ()
                         (declare (not safe))
                         (_g249466249519_ _g249467249522_)))
                   (let ()
                     (declare (not safe))
                     (_g249466249519_ _g249467249522_)))
               (let ()
                 (declare (not safe))
                 (_g249466249519_ _g249467249522_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g249466249519_
                                                  _g249467249522_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g249466249519_
                                              _g249467249522_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g249466249519_ _g249467249522_)))))
                           (let ()
                             (declare (not safe))
                             (_g249466249519_ _g249467249522_)))))
                   (let ()
                     (declare (not safe))
                     (_g249466249519_ _g249467249522_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g249466249519_
                                                      _g249467249522_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g249466249519_
                                                  _g249467249522_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g249466249519_
                                              _g249467249522_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g249466249519_ _g249467249522_)))))
                           (let ()
                             (declare (not safe))
                             (_g249466249519_ _g249467249522_)))
                       (let ()
                         (declare (not safe))
                         (_g249466249519_ _g249467249522_)))))
               (let ()
                 (declare (not safe))
                 (_g249466249519_ _g249467249522_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g249466249519_
                                                  _g249467249522_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g249466249519_ _g249467249522_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g249466249519_ _g249467249522_)))
                           (let ()
                             (declare (not safe))
                             (_g249466249519_ _g249467249522_)))
                       (let ()
                         (declare (not safe))
                         (_g249466249519_ _g249467249522_)))))
               (let ()
                 (declare (not safe))
                 (_g249466249519_ _g249467249522_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g249465250791_ _L247624_))
                                         _stx247550_))))))))
                  (___kont255598255599_ (lambda () _stx247550_)))
              (let ((___match255627255628_
                     (lambda (_e247566247592_
                              _hd247565247595_
                              _tl247564247597_
                              _e247569247600_
                              _hd247568247603_
                              _tl247567247605_
                              _e247572247608_
                              _hd247571247611_
                              _tl247570247613_
                              _e247575247616_
                              _hd247574247619_
                              _tl247573247621_)
                       (let ((_L247624_ _hd247574247619_)
                             (_L247625_ _hd247571247611_))
                         (if (let ((__tmp256989
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L247625_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp256989))
                             (___kont255596255597_ _L247624_ _L247625_)
                             (___kont255598255599_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx255594255595_))
                    (let ((_e247566247592_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx255594255595_))))
                      (let ((_tl247564247597_
                             (let ()
                               (declare (not safe))
                               (##cdr _e247566247592_)))
                            (_hd247565247595_
                             (let ()
                               (declare (not safe))
                               (##car _e247566247592_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl247564247597_))
                            (let ((_e247569247600_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl247564247597_))))
                              (let ((_tl247567247605_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e247569247600_)))
                                    (_hd247568247603_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e247569247600_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd247568247603_))
                                    (let ((_e247572247608_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd247568247603_))))
                                      (let ((_tl247570247613_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e247572247608_)))
                                            (_hd247571247611_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e247572247608_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl247570247613_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl247567247605_))
                                                (let ((_e247575247616_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl247567247605_))))
                                                  (let ((_tl247573247621_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e247575247616_)))
                                                        (_hd247574247619_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e247575247616_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl247573247621_))
                                                        (___match255627255628_
                                                         _e247566247592_
                                                         _hd247565247595_
                                                         _tl247564247597_
                                                         _e247569247600_
                                                         _hd247568247603_
                                                         _tl247567247605_
                                                         _e247572247608_
                                                         _hd247571247611_
                                                         _tl247570247613_
                                                         _e247575247616_
                                                         _hd247574247619_
                                                         _tl247573247621_)
                                                        (___kont255598255599_))))
                                                (___kont255598255599_))
                                            (___kont255598255599_))))
                                    (___kont255598255599_))))
                            (___kont255598255599_))))
                    (___kont255598255599_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx246526_
               _self246527_
               _methods246528_
               _slots246529_
               _class-check246530_
               _struct-check246531_
               _struct-assert246532_)
        (let* ((___stx255630255631_ _stx246526_)
               (_g246540246762_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx255630255631_)))))
          (let ((___kont255632255633_
                 (lambda (_L247499_ _L247500_ _L247501_ _L247502_)
                   (let ((__tmp256990
                          (let () (declare (not safe)) (gx#stx-e _L247500_))))
                     (declare (not safe))
                     (table-set! _methods246528_ __tmp256990 '#t))
                   (for-each
                    (lambda (_g247535247537_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g247535247537_
                         _self246527_
                         _methods246528_
                         _slots246529_
                         _class-check246530_
                         _struct-check246531_
                         _struct-assert246532_)))
                    (let ((__tmp256991
                           (lambda (_g247539247542_ _g247540247544_)
                             (let ()
                               (declare (not safe))
                               (cons _g247539247542_ _g247540247544_)))))
                      (declare (not safe))
                      (foldr1 __tmp256991 '() _L247499_)))))
                (___kont255636255637_
                 (lambda (_L247334_ _L247335_ _L247336_ _L247337_ _L247338_)
                   (let ((__tmp256992
                          (let () (declare (not safe)) (gx#stx-e _L247335_))))
                     (declare (not safe))
                     (table-set! _methods246528_ __tmp256992 '#t))
                   (for-each
                    (lambda (_g247378247380_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g247378247380_
                         _self246527_
                         _methods246528_
                         _slots246529_
                         _class-check246530_
                         _struct-check246531_
                         _struct-assert246532_)))
                    (let ((__tmp256993
                           (lambda (_g247382247385_ _g247383247387_)
                             (let ()
                               (declare (not safe))
                               (cons _g247382247385_ _g247383247387_)))))
                      (declare (not safe))
                      (foldr1 __tmp256993 '() _L247334_)))))
                (___kont255640255641_
                 (lambda (_L247167_ _L247168_ _L247169_)
                   (let ((__tmp256994
                          (let () (declare (not safe)) (gx#stx-e _L247167_))))
                     (declare (not safe))
                     (table-set! _slots246529_ __tmp256994 '#t))))
                (___kont255642255643_
                 (lambda (_L247044_ _L247045_ _L247046_ _L247047_)
                   (let ((__tmp256995
                          (let () (declare (not safe)) (gx#stx-e _L247045_))))
                     (declare (not safe))
                     (table-set! _slots246529_ __tmp256995 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L247044_
                      _self246527_
                      _methods246528_
                      _slots246529_
                      _class-check246530_
                      _struct-check246531_
                      _struct-assert246532_))))
                (___kont255644255645_
                 (lambda (_L246928_ _L246929_)
                   (let ((__tmp256996
                          (##structure-ref
                           (let ((__tmp256997
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L246929_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp256997))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots246529_ __tmp256996 '#t))))
                (___kont255646255647_
                 (lambda (_L246838_ _L246839_ _L246840_)
                   (let ((__tmp256998
                          (##structure-ref
                           (let ((__tmp256999
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L246840_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp256999))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots246529_ __tmp256998 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L246838_
                      _self246527_
                      _methods246528_
                      _slots246529_
                      _class-check246530_
                      _struct-check246531_
                      _struct-assert246532_))))
                (___kont255648255649_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx246526_
                      _self246527_
                      _methods246528_
                      _slots246529_
                      _class-check246530_
                      _struct-check246531_
                      _struct-assert246532_)))))
            (let* ((___match256129256130_
                    (lambda (_e246736246774_
                             _hd246735246777_
                             _tl246734246779_
                             _e246739246782_
                             _hd246738246785_
                             _tl246737246787_
                             _e246742246790_
                             _hd246741246793_
                             _tl246740246795_
                             _e246745246798_
                             _hd246744246801_
                             _tl246743246803_
                             _e246748246806_
                             _hd246747246809_
                             _tl246746246811_
                             _e246751246814_
                             _hd246750246817_
                             _tl246749246819_
                             _e246754246822_
                             _hd246753246825_
                             _tl246752246827_
                             _e246757246830_
                             _hd246756246833_
                             _tl246755246835_)
                      (let ((_L246838_ _hd246756246833_)
                            (_L246839_ _hd246753246825_)
                            (_L246840_ _hd246744246801_))
                        (if (and (let ((__tmp257000
                                        (let ((__tmp257001
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L246840_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp257001))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp257000
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L246839_
                                    _self246527_)))
                            (___kont255646255647_
                             _L246838_
                             _L246839_
                             _L246840_)
                            (___kont255648255649_)))))
                   (___match256127256128_
                    (lambda (_e246736246774_
                             _hd246735246777_
                             _tl246734246779_
                             _e246739246782_
                             _hd246738246785_
                             _tl246737246787_
                             _e246742246790_
                             _hd246741246793_
                             _tl246740246795_
                             _e246745246798_
                             _hd246744246801_
                             _tl246743246803_
                             _e246748246806_
                             _hd246747246809_
                             _tl246746246811_
                             _e246751246814_
                             _hd246750246817_
                             _tl246749246819_
                             _e246754246822_
                             _hd246753246825_
                             _tl246752246827_
                             _e246757246830_
                             _hd246756246833_
                             _tl246755246835_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl246755246835_))
                          (___match256129256130_
                           _e246736246774_
                           _hd246735246777_
                           _tl246734246779_
                           _e246739246782_
                           _hd246738246785_
                           _tl246737246787_
                           _e246742246790_
                           _hd246741246793_
                           _tl246740246795_
                           _e246745246798_
                           _hd246744246801_
                           _tl246743246803_
                           _e246748246806_
                           _hd246747246809_
                           _tl246746246811_
                           _e246751246814_
                           _hd246750246817_
                           _tl246749246819_
                           _e246754246822_
                           _hd246753246825_
                           _tl246752246827_
                           _e246757246830_
                           _hd246756246833_
                           _tl246755246835_)
                          (___kont255648255649_))))
                   (___match256121256122_
                    (lambda (_e246736246774_
                             _hd246735246777_
                             _tl246734246779_
                             _e246739246782_
                             _hd246738246785_
                             _tl246737246787_
                             _e246742246790_
                             _hd246741246793_
                             _tl246740246795_
                             _e246745246798_
                             _hd246744246801_
                             _tl246743246803_
                             _e246748246806_
                             _hd246747246809_
                             _tl246746246811_
                             _e246751246814_
                             _hd246750246817_
                             _tl246749246819_
                             _e246754246822_
                             _hd246753246825_
                             _tl246752246827_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl246746246811_))
                          (let ((_e246757246830_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl246746246811_))))
                            (let ((_tl246755246835_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e246757246830_)))
                                  (_hd246756246833_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e246757246830_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl246755246835_))
                                  (___match256129256130_
                                   _e246736246774_
                                   _hd246735246777_
                                   _tl246734246779_
                                   _e246739246782_
                                   _hd246738246785_
                                   _tl246737246787_
                                   _e246742246790_
                                   _hd246741246793_
                                   _tl246740246795_
                                   _e246745246798_
                                   _hd246744246801_
                                   _tl246743246803_
                                   _e246748246806_
                                   _hd246747246809_
                                   _tl246746246811_
                                   _e246751246814_
                                   _hd246750246817_
                                   _tl246749246819_
                                   _e246754246822_
                                   _hd246753246825_
                                   _tl246752246827_
                                   _e246757246830_
                                   _hd246756246833_
                                   _tl246755246835_)
                                  (___kont255648255649_))))
                          (___kont255648255649_))))
                   (___match256067256068_
                    (lambda (_e246712246872_
                             _hd246711246875_
                             _tl246710246877_
                             _e246715246880_
                             _hd246714246883_
                             _tl246713246885_
                             _e246718246888_
                             _hd246717246891_
                             _tl246716246893_
                             _e246721246896_
                             _hd246720246899_
                             _tl246719246901_
                             _e246724246904_
                             _hd246723246907_
                             _tl246722246909_
                             _e246727246912_
                             _hd246726246915_
                             _tl246725246917_
                             _e246730246920_
                             _hd246729246923_
                             _tl246728246925_)
                      (let ((_L246928_ _hd246729246923_)
                            (_L246929_ _hd246720246899_))
                        (if (and (let ((__tmp257002
                                        (let ((__tmp257003
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L246929_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp257003))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp257002
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L246928_
                                    _self246527_)))
                            (___kont255644255645_ _L246928_ _L246929_)
                            (___kont255648255649_)))))
                   (___match256065256066_
                    (lambda (_e246712246872_
                             _hd246711246875_
                             _tl246710246877_
                             _e246715246880_
                             _hd246714246883_
                             _tl246713246885_
                             _e246718246888_
                             _hd246717246891_
                             _tl246716246893_
                             _e246721246896_
                             _hd246720246899_
                             _tl246719246901_
                             _e246724246904_
                             _hd246723246907_
                             _tl246722246909_
                             _e246727246912_
                             _hd246726246915_
                             _tl246725246917_
                             _e246730246920_
                             _hd246729246923_
                             _tl246728246925_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl246722246909_))
                          (___match256067256068_
                           _e246712246872_
                           _hd246711246875_
                           _tl246710246877_
                           _e246715246880_
                           _hd246714246883_
                           _tl246713246885_
                           _e246718246888_
                           _hd246717246891_
                           _tl246716246893_
                           _e246721246896_
                           _hd246720246899_
                           _tl246719246901_
                           _e246724246904_
                           _hd246723246907_
                           _tl246722246909_
                           _e246727246912_
                           _hd246726246915_
                           _tl246725246917_
                           _e246730246920_
                           _hd246729246923_
                           _tl246728246925_)
                          (___match256121256122_
                           _e246712246872_
                           _hd246711246875_
                           _tl246710246877_
                           _e246715246880_
                           _hd246714246883_
                           _tl246713246885_
                           _e246718246888_
                           _hd246717246891_
                           _tl246716246893_
                           _e246721246896_
                           _hd246720246899_
                           _tl246719246901_
                           _e246724246904_
                           _hd246723246907_
                           _tl246722246909_
                           _e246727246912_
                           _hd246726246915_
                           _tl246725246917_
                           _e246730246920_
                           _hd246729246923_
                           _tl246728246925_))))
                   (___match256011256012_
                    (lambda (_e246677246956_
                             _hd246676246959_
                             _tl246675246961_
                             _e246680246964_
                             _hd246679246967_
                             _tl246678246969_
                             _e246683246972_
                             _hd246682246975_
                             _tl246681246977_
                             _e246686246980_
                             _hd246685246983_
                             _tl246684246985_
                             _e246689246988_
                             _hd246688246991_
                             _tl246687246993_
                             _e246692246996_
                             _hd246691246999_
                             _tl246690247001_
                             _e246695247004_
                             _hd246694247007_
                             _tl246693247009_
                             _e246698247012_
                             _hd246697247015_
                             _tl246696247017_
                             _e246701247020_
                             _hd246700247023_
                             _tl246699247025_
                             _e246704247028_
                             _hd246703247031_
                             _tl246702247033_
                             _e246707247036_
                             _hd246706247039_
                             _tl246705247041_)
                      (let ((_L247044_ _hd246706247039_)
                            (_L247045_ _hd246703247031_)
                            (_L247046_ _hd246694247007_)
                            (_L247047_ _hd246685246983_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L247047_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L247047_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L247046_
                                    _self246527_)))
                            (___kont255642255643_
                             _L247044_
                             _L247045_
                             _L247046_
                             _L247047_)
                            (___kont255648255649_)))))
                   (___match256003256004_
                    (lambda (_e246677246956_
                             _hd246676246959_
                             _tl246675246961_
                             _e246680246964_
                             _hd246679246967_
                             _tl246678246969_
                             _e246683246972_
                             _hd246682246975_
                             _tl246681246977_
                             _e246686246980_
                             _hd246685246983_
                             _tl246684246985_
                             _e246689246988_
                             _hd246688246991_
                             _tl246687246993_
                             _e246692246996_
                             _hd246691246999_
                             _tl246690247001_
                             _e246695247004_
                             _hd246694247007_
                             _tl246693247009_
                             _e246698247012_
                             _hd246697247015_
                             _tl246696247017_
                             _e246701247020_
                             _hd246700247023_
                             _tl246699247025_
                             _e246704247028_
                             _hd246703247031_
                             _tl246702247033_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl246696247017_))
                          (let ((_e246707247036_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl246696247017_))))
                            (let ((_tl246705247041_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e246707247036_)))
                                  (_hd246706247039_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e246707247036_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl246705247041_))
                                  (___match256011256012_
                                   _e246677246956_
                                   _hd246676246959_
                                   _tl246675246961_
                                   _e246680246964_
                                   _hd246679246967_
                                   _tl246678246969_
                                   _e246683246972_
                                   _hd246682246975_
                                   _tl246681246977_
                                   _e246686246980_
                                   _hd246685246983_
                                   _tl246684246985_
                                   _e246689246988_
                                   _hd246688246991_
                                   _tl246687246993_
                                   _e246692246996_
                                   _hd246691246999_
                                   _tl246690247001_
                                   _e246695247004_
                                   _hd246694247007_
                                   _tl246693247009_
                                   _e246698247012_
                                   _hd246697247015_
                                   _tl246696247017_
                                   _e246701247020_
                                   _hd246700247023_
                                   _tl246699247025_
                                   _e246704247028_
                                   _hd246703247031_
                                   _tl246702247033_
                                   _e246707247036_
                                   _hd246706247039_
                                   _tl246705247041_)
                                  (___kont255648255649_))))
                          (___match256127256128_
                           _e246677246956_
                           _hd246676246959_
                           _tl246675246961_
                           _e246680246964_
                           _hd246679246967_
                           _tl246678246969_
                           _e246683246972_
                           _hd246682246975_
                           _tl246681246977_
                           _e246686246980_
                           _hd246685246983_
                           _tl246684246985_
                           _e246689246988_
                           _hd246688246991_
                           _tl246687246993_
                           _e246692246996_
                           _hd246691246999_
                           _tl246690247001_
                           _e246695247004_
                           _hd246694247007_
                           _tl246693247009_
                           _e246698247012_
                           _hd246697247015_
                           _tl246696247017_))))
                   (___match255925255926_
                    (lambda (_e246643247087_
                             _hd246642247090_
                             _tl246641247092_
                             _e246646247095_
                             _hd246645247098_
                             _tl246644247100_
                             _e246649247103_
                             _hd246648247106_
                             _tl246647247108_
                             _e246652247111_
                             _hd246651247114_
                             _tl246650247116_
                             _e246655247119_
                             _hd246654247122_
                             _tl246653247124_
                             _e246658247127_
                             _hd246657247130_
                             _tl246656247132_
                             _e246661247135_
                             _hd246660247138_
                             _tl246659247140_
                             _e246664247143_
                             _hd246663247146_
                             _tl246662247148_
                             _e246667247151_
                             _hd246666247154_
                             _tl246665247156_
                             _e246670247159_
                             _hd246669247162_
                             _tl246668247164_)
                      (let ((_L247167_ _hd246669247162_)
                            (_L247168_ _hd246660247138_)
                            (_L247169_ _hd246651247114_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L247169_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L247169_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L247168_
                                    _self246527_)))
                            (___kont255640255641_
                             _L247167_
                             _L247168_
                             _L247169_)
                            (___match256129256130_
                             _e246643247087_
                             _hd246642247090_
                             _tl246641247092_
                             _e246646247095_
                             _hd246645247098_
                             _tl246644247100_
                             _e246649247103_
                             _hd246648247106_
                             _tl246647247108_
                             _e246652247111_
                             _hd246651247114_
                             _tl246650247116_
                             _e246655247119_
                             _hd246654247122_
                             _tl246653247124_
                             _e246658247127_
                             _hd246657247130_
                             _tl246656247132_
                             _e246661247135_
                             _hd246660247138_
                             _tl246659247140_
                             _e246664247143_
                             _hd246663247146_
                             _tl246662247148_)))))
                   (___match255923255924_
                    (lambda (_e246643247087_
                             _hd246642247090_
                             _tl246641247092_
                             _e246646247095_
                             _hd246645247098_
                             _tl246644247100_
                             _e246649247103_
                             _hd246648247106_
                             _tl246647247108_
                             _e246652247111_
                             _hd246651247114_
                             _tl246650247116_
                             _e246655247119_
                             _hd246654247122_
                             _tl246653247124_
                             _e246658247127_
                             _hd246657247130_
                             _tl246656247132_
                             _e246661247135_
                             _hd246660247138_
                             _tl246659247140_
                             _e246664247143_
                             _hd246663247146_
                             _tl246662247148_
                             _e246667247151_
                             _hd246666247154_
                             _tl246665247156_
                             _e246670247159_
                             _hd246669247162_
                             _tl246668247164_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl246662247148_))
                          (___match255925255926_
                           _e246643247087_
                           _hd246642247090_
                           _tl246641247092_
                           _e246646247095_
                           _hd246645247098_
                           _tl246644247100_
                           _e246649247103_
                           _hd246648247106_
                           _tl246647247108_
                           _e246652247111_
                           _hd246651247114_
                           _tl246650247116_
                           _e246655247119_
                           _hd246654247122_
                           _tl246653247124_
                           _e246658247127_
                           _hd246657247130_
                           _tl246656247132_
                           _e246661247135_
                           _hd246660247138_
                           _tl246659247140_
                           _e246664247143_
                           _hd246663247146_
                           _tl246662247148_
                           _e246667247151_
                           _hd246666247154_
                           _tl246665247156_
                           _e246670247159_
                           _hd246669247162_
                           _tl246668247164_)
                          (___match256003256004_
                           _e246643247087_
                           _hd246642247090_
                           _tl246641247092_
                           _e246646247095_
                           _hd246645247098_
                           _tl246644247100_
                           _e246649247103_
                           _hd246648247106_
                           _tl246647247108_
                           _e246652247111_
                           _hd246651247114_
                           _tl246650247116_
                           _e246655247119_
                           _hd246654247122_
                           _tl246653247124_
                           _e246658247127_
                           _hd246657247130_
                           _tl246656247132_
                           _e246661247135_
                           _hd246660247138_
                           _tl246659247140_
                           _e246664247143_
                           _hd246663247146_
                           _tl246662247148_
                           _e246667247151_
                           _hd246666247154_
                           _tl246665247156_
                           _e246670247159_
                           _hd246669247162_
                           _tl246668247164_))))
                   (___match255913255914_
                    (lambda (_e246643247087_
                             _hd246642247090_
                             _tl246641247092_
                             _e246646247095_
                             _hd246645247098_
                             _tl246644247100_
                             _e246649247103_
                             _hd246648247106_
                             _tl246647247108_
                             _e246652247111_
                             _hd246651247114_
                             _tl246650247116_
                             _e246655247119_
                             _hd246654247122_
                             _tl246653247124_
                             _e246658247127_
                             _hd246657247130_
                             _tl246656247132_
                             _e246661247135_
                             _hd246660247138_
                             _tl246659247140_
                             _e246664247143_
                             _hd246663247146_
                             _tl246662247148_
                             _e246667247151_
                             _hd246666247154_
                             _tl246665247156_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd246666247154_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl246665247156_))
                              (let ((_e246670247159_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl246665247156_))))
                                (let ((_tl246668247164_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e246670247159_)))
                                      (_hd246669247162_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e246670247159_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl246668247164_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl246662247148_))
                                          (___match255925255926_
                                           _e246643247087_
                                           _hd246642247090_
                                           _tl246641247092_
                                           _e246646247095_
                                           _hd246645247098_
                                           _tl246644247100_
                                           _e246649247103_
                                           _hd246648247106_
                                           _tl246647247108_
                                           _e246652247111_
                                           _hd246651247114_
                                           _tl246650247116_
                                           _e246655247119_
                                           _hd246654247122_
                                           _tl246653247124_
                                           _e246658247127_
                                           _hd246657247130_
                                           _tl246656247132_
                                           _e246661247135_
                                           _hd246660247138_
                                           _tl246659247140_
                                           _e246664247143_
                                           _hd246663247146_
                                           _tl246662247148_
                                           _e246667247151_
                                           _hd246666247154_
                                           _tl246665247156_
                                           _e246670247159_
                                           _hd246669247162_
                                           _tl246668247164_)
                                          (___match256003256004_
                                           _e246643247087_
                                           _hd246642247090_
                                           _tl246641247092_
                                           _e246646247095_
                                           _hd246645247098_
                                           _tl246644247100_
                                           _e246649247103_
                                           _hd246648247106_
                                           _tl246647247108_
                                           _e246652247111_
                                           _hd246651247114_
                                           _tl246650247116_
                                           _e246655247119_
                                           _hd246654247122_
                                           _tl246653247124_
                                           _e246658247127_
                                           _hd246657247130_
                                           _tl246656247132_
                                           _e246661247135_
                                           _hd246660247138_
                                           _tl246659247140_
                                           _e246664247143_
                                           _hd246663247146_
                                           _tl246662247148_
                                           _e246667247151_
                                           _hd246666247154_
                                           _tl246665247156_
                                           _e246670247159_
                                           _hd246669247162_
                                           _tl246668247164_))
                                      (___match256127256128_
                                       _e246643247087_
                                       _hd246642247090_
                                       _tl246641247092_
                                       _e246646247095_
                                       _hd246645247098_
                                       _tl246644247100_
                                       _e246649247103_
                                       _hd246648247106_
                                       _tl246647247108_
                                       _e246652247111_
                                       _hd246651247114_
                                       _tl246650247116_
                                       _e246655247119_
                                       _hd246654247122_
                                       _tl246653247124_
                                       _e246658247127_
                                       _hd246657247130_
                                       _tl246656247132_
                                       _e246661247135_
                                       _hd246660247138_
                                       _tl246659247140_
                                       _e246664247143_
                                       _hd246663247146_
                                       _tl246662247148_))))
                              (___match256127256128_
                               _e246643247087_
                               _hd246642247090_
                               _tl246641247092_
                               _e246646247095_
                               _hd246645247098_
                               _tl246644247100_
                               _e246649247103_
                               _hd246648247106_
                               _tl246647247108_
                               _e246652247111_
                               _hd246651247114_
                               _tl246650247116_
                               _e246655247119_
                               _hd246654247122_
                               _tl246653247124_
                               _e246658247127_
                               _hd246657247130_
                               _tl246656247132_
                               _e246661247135_
                               _hd246660247138_
                               _tl246659247140_
                               _e246664247143_
                               _hd246663247146_
                               _tl246662247148_))
                          (___match256127256128_
                           _e246643247087_
                           _hd246642247090_
                           _tl246641247092_
                           _e246646247095_
                           _hd246645247098_
                           _tl246644247100_
                           _e246649247103_
                           _hd246648247106_
                           _tl246647247108_
                           _e246652247111_
                           _hd246651247114_
                           _tl246650247116_
                           _e246655247119_
                           _hd246654247122_
                           _tl246653247124_
                           _e246658247127_
                           _hd246657247130_
                           _tl246656247132_
                           _e246661247135_
                           _hd246660247138_
                           _tl246659247140_
                           _e246664247143_
                           _hd246663247146_
                           _tl246662247148_))))
                   (___match255845255846_
                    (lambda (_e246592247206_
                             _hd246591247209_
                             _tl246590247211_
                             _e246595247214_
                             _hd246594247217_
                             _tl246593247219_
                             _e246598247222_
                             _hd246597247225_
                             _tl246596247227_
                             _e246601247230_
                             _hd246600247233_
                             _tl246599247235_
                             _e246604247238_
                             _hd246603247241_
                             _tl246602247243_
                             _e246607247246_
                             _hd246606247249_
                             _tl246605247251_
                             _e246610247254_
                             _hd246609247257_
                             _tl246608247259_
                             _e246613247262_
                             _hd246612247265_
                             _tl246611247267_
                             _e246616247270_
                             _hd246615247273_
                             _tl246614247275_
                             _e246619247278_
                             _hd246618247281_
                             _tl246617247283_
                             _e246622247286_
                             _hd246621247289_
                             _tl246620247291_
                             _e246625247294_
                             _hd246624247297_
                             _tl246623247299_
                             _e246628247302_
                             _hd246627247305_
                             _tl246626247307_
                             ___splice255638255639_
                             _target246629247310_
                             _tl246631247312_)
                      (letrec ((_loop246632247315_
                                (lambda (_hd246630247318_ _args246636247320_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd246630247318_))
                                      (let ((_e246633247323_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd246630247318_))))
                                        (let ((_lp-tl246635247328_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e246633247323_)))
                                              (_lp-hd246634247326_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e246633247323_))))
                                          (let ((__tmp257004
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd246634247326_
                                                         _args246636247320_))))
                                            (declare (not safe))
                                            (_loop246632247315_
                                             _lp-tl246635247328_
                                             __tmp257004))))
                                      (let ((_args246637247331_
                                             (reverse _args246636247320_)))
                                        (let ((_L247334_ _args246637247331_)
                                              (_L247335_ _hd246627247305_)
                                              (_L247336_ _hd246618247281_)
                                              (_L247337_ _hd246609247257_)
                                              (_L247338_ _hd246600247233_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L247338_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L247337_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L247336_
                                                      _self246527_)))
                                              (___kont255636255637_
                                               _L247334_
                                               _L247335_
                                               _L247336_
                                               _L247337_
                                               _L247338_)
                                              (___kont255648255649_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop246632247315_ _target246629247310_ '())))))
                   (___match255803255804_
                    (lambda (_e246592247206_
                             _hd246591247209_
                             _tl246590247211_
                             _e246595247214_
                             _hd246594247217_
                             _tl246593247219_
                             _e246598247222_
                             _hd246597247225_
                             _tl246596247227_
                             _e246601247230_
                             _hd246600247233_
                             _tl246599247235_
                             _e246604247238_
                             _hd246603247241_
                             _tl246602247243_
                             _e246607247246_
                             _hd246606247249_
                             _tl246605247251_
                             _e246610247254_
                             _hd246609247257_
                             _tl246608247259_
                             _e246613247262_
                             _hd246612247265_
                             _tl246611247267_
                             _e246616247270_
                             _hd246615247273_
                             _tl246614247275_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd246615247273_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl246614247275_))
                              (let ((_e246619247278_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl246614247275_))))
                                (let ((_tl246617247283_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e246619247278_)))
                                      (_hd246618247281_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e246619247278_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl246617247283_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl246611247267_))
                                          (let ((_e246622247286_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl246611247267_))))
                                            (let ((_tl246620247291_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e246622247286_)))
                                                  (_hd246621247289_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e246622247286_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd246621247289_))
                                                  (let ((_e246625247294_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd246621247289_))))
                                                    (let ((_tl246623247299_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e246625247294_)))
                                                          (_hd246624247297_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e246625247294_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd246624247297_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd246624247297_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl246623247299_))
                          (let ((_e246628247302_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl246623247299_))))
                            (let ((_tl246626247307_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e246628247302_)))
                                  (_hd246627247305_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e246628247302_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl246626247307_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl246620247291_))
                                      (let ((___splice255638255639_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl246620247291_
                                                '0))))
                                        (let ((_tl246631247312_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice255638255639_
                                                  '1)))
                                              (_target246629247310_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice255638255639_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl246631247312_))
                                              (___match255845255846_
                                               _e246592247206_
                                               _hd246591247209_
                                               _tl246590247211_
                                               _e246595247214_
                                               _hd246594247217_
                                               _tl246593247219_
                                               _e246598247222_
                                               _hd246597247225_
                                               _tl246596247227_
                                               _e246601247230_
                                               _hd246600247233_
                                               _tl246599247235_
                                               _e246604247238_
                                               _hd246603247241_
                                               _tl246602247243_
                                               _e246607247246_
                                               _hd246606247249_
                                               _tl246605247251_
                                               _e246610247254_
                                               _hd246609247257_
                                               _tl246608247259_
                                               _e246613247262_
                                               _hd246612247265_
                                               _tl246611247267_
                                               _e246616247270_
                                               _hd246615247273_
                                               _tl246614247275_
                                               _e246619247278_
                                               _hd246618247281_
                                               _tl246617247283_
                                               _e246622247286_
                                               _hd246621247289_
                                               _tl246620247291_
                                               _e246625247294_
                                               _hd246624247297_
                                               _tl246623247299_
                                               _e246628247302_
                                               _hd246627247305_
                                               _tl246626247307_
                                               ___splice255638255639_
                                               _target246629247310_
                                               _tl246631247312_)
                                              (___kont255648255649_))))
                                      (___kont255648255649_))
                                  (___kont255648255649_))))
                          (___kont255648255649_))
                      (___kont255648255649_))
                  (___kont255648255649_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont255648255649_))))
                                          (___match256127256128_
                                           _e246592247206_
                                           _hd246591247209_
                                           _tl246590247211_
                                           _e246595247214_
                                           _hd246594247217_
                                           _tl246593247219_
                                           _e246598247222_
                                           _hd246597247225_
                                           _tl246596247227_
                                           _e246601247230_
                                           _hd246600247233_
                                           _tl246599247235_
                                           _e246604247238_
                                           _hd246603247241_
                                           _tl246602247243_
                                           _e246607247246_
                                           _hd246606247249_
                                           _tl246605247251_
                                           _e246610247254_
                                           _hd246609247257_
                                           _tl246608247259_
                                           _e246613247262_
                                           _hd246612247265_
                                           _tl246611247267_))
                                      (___match256127256128_
                                       _e246592247206_
                                       _hd246591247209_
                                       _tl246590247211_
                                       _e246595247214_
                                       _hd246594247217_
                                       _tl246593247219_
                                       _e246598247222_
                                       _hd246597247225_
                                       _tl246596247227_
                                       _e246601247230_
                                       _hd246600247233_
                                       _tl246599247235_
                                       _e246604247238_
                                       _hd246603247241_
                                       _tl246602247243_
                                       _e246607247246_
                                       _hd246606247249_
                                       _tl246605247251_
                                       _e246610247254_
                                       _hd246609247257_
                                       _tl246608247259_
                                       _e246613247262_
                                       _hd246612247265_
                                       _tl246611247267_))))
                              (___match256127256128_
                               _e246592247206_
                               _hd246591247209_
                               _tl246590247211_
                               _e246595247214_
                               _hd246594247217_
                               _tl246593247219_
                               _e246598247222_
                               _hd246597247225_
                               _tl246596247227_
                               _e246601247230_
                               _hd246600247233_
                               _tl246599247235_
                               _e246604247238_
                               _hd246603247241_
                               _tl246602247243_
                               _e246607247246_
                               _hd246606247249_
                               _tl246605247251_
                               _e246610247254_
                               _hd246609247257_
                               _tl246608247259_
                               _e246613247262_
                               _hd246612247265_
                               _tl246611247267_))
                          (___match255913255914_
                           _e246592247206_
                           _hd246591247209_
                           _tl246590247211_
                           _e246595247214_
                           _hd246594247217_
                           _tl246593247219_
                           _e246598247222_
                           _hd246597247225_
                           _tl246596247227_
                           _e246601247230_
                           _hd246600247233_
                           _tl246599247235_
                           _e246604247238_
                           _hd246603247241_
                           _tl246602247243_
                           _e246607247246_
                           _hd246606247249_
                           _tl246605247251_
                           _e246610247254_
                           _hd246609247257_
                           _tl246608247259_
                           _e246613247262_
                           _hd246612247265_
                           _tl246611247267_
                           _e246616247270_
                           _hd246615247273_
                           _tl246614247275_))))
                   (___match255735255736_
                    (lambda (_e246548247395_
                             _hd246547247398_
                             _tl246546247400_
                             _e246551247403_
                             _hd246550247406_
                             _tl246549247408_
                             _e246554247411_
                             _hd246553247414_
                             _tl246552247416_
                             _e246557247419_
                             _hd246556247422_
                             _tl246555247424_
                             _e246560247427_
                             _hd246559247430_
                             _tl246558247432_
                             _e246563247435_
                             _hd246562247438_
                             _tl246561247440_
                             _e246566247443_
                             _hd246565247446_
                             _tl246564247448_
                             _e246569247451_
                             _hd246568247454_
                             _tl246567247456_
                             _e246572247459_
                             _hd246571247462_
                             _tl246570247464_
                             _e246575247467_
                             _hd246574247470_
                             _tl246573247472_
                             ___splice255634255635_
                             _target246576247475_
                             _tl246578247477_)
                      (letrec ((_loop246579247480_
                                (lambda (_hd246577247483_ _args246583247485_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd246577247483_))
                                      (let ((_e246580247488_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd246577247483_))))
                                        (let ((_lp-tl246582247493_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e246580247488_)))
                                              (_lp-hd246581247491_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e246580247488_))))
                                          (let ((__tmp257005
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd246581247491_
                                                         _args246583247485_))))
                                            (declare (not safe))
                                            (_loop246579247480_
                                             _lp-tl246582247493_
                                             __tmp257005))))
                                      (let ((_args246584247496_
                                             (reverse _args246583247485_)))
                                        (let ((_L247499_ _args246584247496_)
                                              (_L247500_ _hd246574247470_)
                                              (_L247501_ _hd246565247446_)
                                              (_L247502_ _hd246556247422_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L247502_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L247501_
                                                      _self246527_)))
                                              (___kont255632255633_
                                               _L247499_
                                               _L247500_
                                               _L247501_
                                               _L247502_)
                                              (___match255923255924_
                                               _e246548247395_
                                               _hd246547247398_
                                               _tl246546247400_
                                               _e246551247403_
                                               _hd246550247406_
                                               _tl246549247408_
                                               _e246554247411_
                                               _hd246553247414_
                                               _tl246552247416_
                                               _e246557247419_
                                               _hd246556247422_
                                               _tl246555247424_
                                               _e246560247427_
                                               _hd246559247430_
                                               _tl246558247432_
                                               _e246563247435_
                                               _hd246562247438_
                                               _tl246561247440_
                                               _e246566247443_
                                               _hd246565247446_
                                               _tl246564247448_
                                               _e246569247451_
                                               _hd246568247454_
                                               _tl246567247456_
                                               _e246572247459_
                                               _hd246571247462_
                                               _tl246570247464_
                                               _e246575247467_
                                               _hd246574247470_
                                               _tl246573247472_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop246579247480_ _target246576247475_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx255630255631_))
                  (let ((_e246548247395_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx255630255631_))))
                    (let ((_tl246546247400_
                           (let ()
                             (declare (not safe))
                             (##cdr _e246548247395_)))
                          (_hd246547247398_
                           (let ()
                             (declare (not safe))
                             (##car _e246548247395_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl246546247400_))
                          (let ((_e246551247403_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl246546247400_))))
                            (let ((_tl246549247408_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e246551247403_)))
                                  (_hd246550247406_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e246551247403_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd246550247406_))
                                  (let ((_e246554247411_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd246550247406_))))
                                    (let ((_tl246552247416_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e246554247411_)))
                                          (_hd246553247414_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e246554247411_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd246553247414_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd246553247414_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl246552247416_))
                                                  (let ((_e246557247419_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl246552247416_))))
                                                    (let ((_tl246555247424_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e246557247419_)))
                                                          (_hd246556247422_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e246557247419_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl246555247424_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl246549247408_))
                      (let ((_e246560247427_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl246549247408_))))
                        (let ((_tl246558247432_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e246560247427_)))
                              (_hd246559247430_
                               (let ()
                                 (declare (not safe))
                                 (##car _e246560247427_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd246559247430_))
                              (let ((_e246563247435_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd246559247430_))))
                                (let ((_tl246561247440_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e246563247435_)))
                                      (_hd246562247438_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e246563247435_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd246562247438_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd246562247438_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl246561247440_))
                                              (let ((_e246566247443_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl246561247440_))))
                                                (let ((_tl246564247448_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e246566247443_)))
                                                      (_hd246565247446_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e246566247443_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl246564247448_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl246558247432_))
                                                          (let ((_e246569247451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl246558247432_))))
                    (let ((_tl246567247456_
                           (let ()
                             (declare (not safe))
                             (##cdr _e246569247451_)))
                          (_hd246568247454_
                           (let ()
                             (declare (not safe))
                             (##car _e246569247451_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd246568247454_))
                          (let ((_e246572247459_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd246568247454_))))
                            (let ((_tl246570247464_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e246572247459_)))
                                  (_hd246571247462_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e246572247459_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd246571247462_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd246571247462_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl246570247464_))
                                          (let ((_e246575247467_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl246570247464_))))
                                            (let ((_tl246573247472_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e246575247467_)))
                                                  (_hd246574247470_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e246575247467_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl246573247472_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl246567247456_))
                                                      (let ((___splice255634255635_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl246567247456_ '0))))
                (let ((_tl246578247477_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice255634255635_ '1)))
                      (_target246576247475_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice255634255635_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl246578247477_))
                      (___match255735255736_
                       _e246548247395_
                       _hd246547247398_
                       _tl246546247400_
                       _e246551247403_
                       _hd246550247406_
                       _tl246549247408_
                       _e246554247411_
                       _hd246553247414_
                       _tl246552247416_
                       _e246557247419_
                       _hd246556247422_
                       _tl246555247424_
                       _e246560247427_
                       _hd246559247430_
                       _tl246558247432_
                       _e246563247435_
                       _hd246562247438_
                       _tl246561247440_
                       _e246566247443_
                       _hd246565247446_
                       _tl246564247448_
                       _e246569247451_
                       _hd246568247454_
                       _tl246567247456_
                       _e246572247459_
                       _hd246571247462_
                       _tl246570247464_
                       _e246575247467_
                       _hd246574247470_
                       _tl246573247472_
                       ___splice255634255635_
                       _target246576247475_
                       _tl246578247477_)
                      (___match255923255924_
                       _e246548247395_
                       _hd246547247398_
                       _tl246546247400_
                       _e246551247403_
                       _hd246550247406_
                       _tl246549247408_
                       _e246554247411_
                       _hd246553247414_
                       _tl246552247416_
                       _e246557247419_
                       _hd246556247422_
                       _tl246555247424_
                       _e246560247427_
                       _hd246559247430_
                       _tl246558247432_
                       _e246563247435_
                       _hd246562247438_
                       _tl246561247440_
                       _e246566247443_
                       _hd246565247446_
                       _tl246564247448_
                       _e246569247451_
                       _hd246568247454_
                       _tl246567247456_
                       _e246572247459_
                       _hd246571247462_
                       _tl246570247464_
                       _e246575247467_
                       _hd246574247470_
                       _tl246573247472_))))
              (___match255923255924_
               _e246548247395_
               _hd246547247398_
               _tl246546247400_
               _e246551247403_
               _hd246550247406_
               _tl246549247408_
               _e246554247411_
               _hd246553247414_
               _tl246552247416_
               _e246557247419_
               _hd246556247422_
               _tl246555247424_
               _e246560247427_
               _hd246559247430_
               _tl246558247432_
               _e246563247435_
               _hd246562247438_
               _tl246561247440_
               _e246566247443_
               _hd246565247446_
               _tl246564247448_
               _e246569247451_
               _hd246568247454_
               _tl246567247456_
               _e246572247459_
               _hd246571247462_
               _tl246570247464_
               _e246575247467_
               _hd246574247470_
               _tl246573247472_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match256127256128_
                                                   _e246548247395_
                                                   _hd246547247398_
                                                   _tl246546247400_
                                                   _e246551247403_
                                                   _hd246550247406_
                                                   _tl246549247408_
                                                   _e246554247411_
                                                   _hd246553247414_
                                                   _tl246552247416_
                                                   _e246557247419_
                                                   _hd246556247422_
                                                   _tl246555247424_
                                                   _e246560247427_
                                                   _hd246559247430_
                                                   _tl246558247432_
                                                   _e246563247435_
                                                   _hd246562247438_
                                                   _tl246561247440_
                                                   _e246566247443_
                                                   _hd246565247446_
                                                   _tl246564247448_
                                                   _e246569247451_
                                                   _hd246568247454_
                                                   _tl246567247456_))))
                                          (___match256127256128_
                                           _e246548247395_
                                           _hd246547247398_
                                           _tl246546247400_
                                           _e246551247403_
                                           _hd246550247406_
                                           _tl246549247408_
                                           _e246554247411_
                                           _hd246553247414_
                                           _tl246552247416_
                                           _e246557247419_
                                           _hd246556247422_
                                           _tl246555247424_
                                           _e246560247427_
                                           _hd246559247430_
                                           _tl246558247432_
                                           _e246563247435_
                                           _hd246562247438_
                                           _tl246561247440_
                                           _e246566247443_
                                           _hd246565247446_
                                           _tl246564247448_
                                           _e246569247451_
                                           _hd246568247454_
                                           _tl246567247456_))
                                      (___match255803255804_
                                       _e246548247395_
                                       _hd246547247398_
                                       _tl246546247400_
                                       _e246551247403_
                                       _hd246550247406_
                                       _tl246549247408_
                                       _e246554247411_
                                       _hd246553247414_
                                       _tl246552247416_
                                       _e246557247419_
                                       _hd246556247422_
                                       _tl246555247424_
                                       _e246560247427_
                                       _hd246559247430_
                                       _tl246558247432_
                                       _e246563247435_
                                       _hd246562247438_
                                       _tl246561247440_
                                       _e246566247443_
                                       _hd246565247446_
                                       _tl246564247448_
                                       _e246569247451_
                                       _hd246568247454_
                                       _tl246567247456_
                                       _e246572247459_
                                       _hd246571247462_
                                       _tl246570247464_))
                                  (___match256127256128_
                                   _e246548247395_
                                   _hd246547247398_
                                   _tl246546247400_
                                   _e246551247403_
                                   _hd246550247406_
                                   _tl246549247408_
                                   _e246554247411_
                                   _hd246553247414_
                                   _tl246552247416_
                                   _e246557247419_
                                   _hd246556247422_
                                   _tl246555247424_
                                   _e246560247427_
                                   _hd246559247430_
                                   _tl246558247432_
                                   _e246563247435_
                                   _hd246562247438_
                                   _tl246561247440_
                                   _e246566247443_
                                   _hd246565247446_
                                   _tl246564247448_
                                   _e246569247451_
                                   _hd246568247454_
                                   _tl246567247456_))))
                          (___match256127256128_
                           _e246548247395_
                           _hd246547247398_
                           _tl246546247400_
                           _e246551247403_
                           _hd246550247406_
                           _tl246549247408_
                           _e246554247411_
                           _hd246553247414_
                           _tl246552247416_
                           _e246557247419_
                           _hd246556247422_
                           _tl246555247424_
                           _e246560247427_
                           _hd246559247430_
                           _tl246558247432_
                           _e246563247435_
                           _hd246562247438_
                           _tl246561247440_
                           _e246566247443_
                           _hd246565247446_
                           _tl246564247448_
                           _e246569247451_
                           _hd246568247454_
                           _tl246567247456_))))
                  (___match256065256066_
                   _e246548247395_
                   _hd246547247398_
                   _tl246546247400_
                   _e246551247403_
                   _hd246550247406_
                   _tl246549247408_
                   _e246554247411_
                   _hd246553247414_
                   _tl246552247416_
                   _e246557247419_
                   _hd246556247422_
                   _tl246555247424_
                   _e246560247427_
                   _hd246559247430_
                   _tl246558247432_
                   _e246563247435_
                   _hd246562247438_
                   _tl246561247440_
                   _e246566247443_
                   _hd246565247446_
                   _tl246564247448_))
              (___kont255648255649_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont255648255649_))
                                          (___kont255648255649_))
                                      (___kont255648255649_))))
                              (___kont255648255649_))))
                      (___kont255648255649_))
                  (___kont255648255649_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont255648255649_))
                                              (___kont255648255649_))
                                          (___kont255648255649_))))
                                  (___kont255648255649_))))
                          (___kont255648255649_))))
                  (___kont255648255649_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx245472_
               _self245473_
               _$t245474_
               _methods245475_
               _slots245476_
               _class-check245477_
               _struct-check245478_
               _struct-assert245479_)
        (letrec ((_force-e245481_
                  (lambda (_what246524_)
                    (let ((__tmp257006
                           (let ((__tmp257010
                                  (let ((__tmp257011
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp257011)))
                                 (__tmp257007
                                  (let ((__tmp257008
                                         (let ((__tmp257009
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what246524_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp257009))))
                                    (declare (not safe))
                                    (cons __tmp257008 '()))))
                             (declare (not safe))
                             (cons __tmp257010 __tmp257007))))
                      (declare (not safe))
                      (cons '%#call __tmp257006)))))
          (let* ((___stx256132256133_ _stx245472_)
                 (_g245489245711_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx256132256133_)))))
            (let ((___kont256134256135_
                   (lambda (_L246470_ _L246471_ _L246472_ _L246473_)
                     (let ((_$method246518_
                            (let ((__tmp257012
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L246471_))))
                              (declare (not safe))
                              (table-ref _methods245475_ __tmp257012)))
                           (_args246519_
                            (map (lambda (_g246506246508_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g246506246508_
                                      _self245473_
                                      _$t245474_
                                      _methods245475_
                                      _slots245476_
                                      _class-check245477_
                                      _struct-check245478_
                                      _struct-assert245479_)))
                                 (let ((__tmp257013
                                        (lambda (_g246510246513_
                                                 _g246511246515_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g246510246513_
                                                  _g246511246515_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp257013 '() _L246470_)))))
                       (let ((__tmp257014
                              (let ((__tmp257015
                                     (let ((__tmp257019
                                            (let ()
                                              (declare (not safe))
                                              (_force-e245481_
                                               _$method246518_)))
                                           (__tmp257016
                                            (let ((__tmp257017
                                                   (let ((__tmp257018
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self245473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp257018))))
                                              (declare (not safe))
                                              (cons __tmp257017
                                                    _args246519_))))
                                       (declare (not safe))
                                       (cons __tmp257019 __tmp257016))))
                                (declare (not safe))
                                (cons '%#call __tmp257015))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp257014 _stx245472_)))))
                  (___kont256138256139_
                   (lambda (_L246302_ _L246303_ _L246304_ _L246305_ _L246306_)
                     (let ((_$method246358_
                            (let ((__tmp257020
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L246303_))))
                              (declare (not safe))
                              (table-ref _methods245475_ __tmp257020)))
                           (_args246359_
                            (map (lambda (_g246346246348_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g246346246348_
                                      _self245473_
                                      _$t245474_
                                      _methods245475_
                                      _slots245476_
                                      _class-check245477_
                                      _struct-check245478_
                                      _struct-assert245479_)))
                                 (let ((__tmp257021
                                        (lambda (_g246350246353_
                                                 _g246351246355_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g246350246353_
                                                  _g246351246355_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp257021 '() _L246302_)))))
                       (let ((__tmp257022
                              (let ((__tmp257023
                                     (let ((__tmp257029
                                            (let ((__tmp257030
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp257030)))
                                           (__tmp257024
                                            (let ((__tmp257028
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e245481_
                                                      _$method246358_)))
                                                  (__tmp257025
                                                   (let ((__tmp257026
                                                          (let ((__tmp257027
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self245473_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp257027))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp257026
                                                           _args246359_))))
                                              (declare (not safe))
                                              (cons __tmp257028 __tmp257025))))
                                       (declare (not safe))
                                       (cons __tmp257029 __tmp257024))))
                                (declare (not safe))
                                (cons '%#call __tmp257023))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp257022 _stx245472_)))))
                  (___kont256142256143_
                   (lambda (_L246133_ _L246134_ _L246135_)
                     (let* ((_$field246167_
                             (let ((__tmp257031
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L246133_))))
                               (declare (not safe))
                               (table-ref _slots245476_ __tmp257031)))
                            (__tmp257032
                             (let ((__tmp257033
                                    (let ((__tmp257040
                                           (let ((__tmp257041
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t245474_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp257041)))
                                          (__tmp257034
                                           (let ((__tmp257038
                                                  (let ((__tmp257039
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field246167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp257039)))
                                                 (__tmp257035
                                                  (let ((__tmp257036
                                                         (let ((__tmp257037
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self245473_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp257037))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp257036 '()))))
                                             (declare (not safe))
                                             (cons __tmp257038 __tmp257035))))
                                      (declare (not safe))
                                      (cons __tmp257040 __tmp257034))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp257033))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp257032 _stx245472_))))
                  (___kont256144256145_
                   (lambda (_L246007_ _L246008_ _L246009_ _L246010_)
                     (let ((_$field246045_
                            (let ((__tmp257042
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L246008_))))
                              (declare (not safe))
                              (table-ref _slots245476_ __tmp257042)))
                           (_expr246046_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L246007_
                               _self245473_
                               _$t245474_
                               _methods245475_
                               _slots245476_
                               _class-check245477_
                               _struct-check245478_
                               _struct-assert245479_))))
                       (let ((__tmp257043
                              (let ((__tmp257044
                                     (let ((__tmp257052
                                            (let ((__tmp257053
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t245474_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp257053)))
                                           (__tmp257045
                                            (let ((__tmp257050
                                                   (let ((__tmp257051
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field246045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp257051)))
                                                  (__tmp257046
                                                   (let ((__tmp257048
                                                          (let ((__tmp257049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self245473_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp257049)))
                 (__tmp257047
                  (let () (declare (not safe)) (cons _expr246046_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp257048
                                                           __tmp257047))))
                                              (declare (not safe))
                                              (cons __tmp257050 __tmp257046))))
                                       (declare (not safe))
                                       (cons __tmp257052 __tmp257045))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp257044))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp257043 _stx245472_)))))
                  (___kont256146256147_
                   (lambda (_L245886_ _L245887_)
                     (let* ((_slot245909_
                             (##structure-ref
                              (let ((__tmp257054
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L245887_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp257054))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field245911_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots245476_ _slot245909_))))
                       (let ((__tmp257055
                              (let ((__tmp257056
                                     (let ((__tmp257063
                                            (let ((__tmp257064
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t245474_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp257064)))
                                           (__tmp257057
                                            (let ((__tmp257061
                                                   (let ((__tmp257062
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field245911_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp257062)))
                                                  (__tmp257058
                                                   (let ((__tmp257059
                                                          (let ((__tmp257060
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self245473_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp257060))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp257059 '()))))
                                              (declare (not safe))
                                              (cons __tmp257061 __tmp257058))))
                                       (declare (not safe))
                                       (cons __tmp257063 __tmp257057))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp257056))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp257055 _stx245472_)))))
                  (___kont256148256149_
                   (lambda (_L245787_ _L245788_ _L245789_)
                     (let* ((_slot245818_
                             (##structure-ref
                              (let ((__tmp257065
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L245789_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp257065))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field245820_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots245476_ _slot245818_)))
                            (_expr245822_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L245787_
                                _self245473_
                                _$t245474_
                                _methods245475_
                                _slots245476_
                                _class-check245477_
                                _struct-check245478_
                                _struct-assert245479_))))
                       (let ((__tmp257066
                              (let ((__tmp257067
                                     (let ((__tmp257075
                                            (let ((__tmp257076
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t245474_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp257076)))
                                           (__tmp257068
                                            (let ((__tmp257073
                                                   (let ((__tmp257074
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field245820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp257074)))
                                                  (__tmp257069
                                                   (let ((__tmp257071
                                                          (let ((__tmp257072
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self245473_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp257072)))
                 (__tmp257070
                  (let () (declare (not safe)) (cons _expr245822_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp257071
                                                           __tmp257070))))
                                              (declare (not safe))
                                              (cons __tmp257073 __tmp257069))))
                                       (declare (not safe))
                                       (cons __tmp257075 __tmp257068))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp257067))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp257066 _stx245472_)))))
                  (___kont256150256151_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx245472_
                        _self245473_
                        _$t245474_
                        _methods245475_
                        _slots245476_
                        _class-check245477_
                        _struct-check245478_
                        _struct-assert245479_)))))
              (let* ((___match256631256632_
                      (lambda (_e245685245723_
                               _hd245684245726_
                               _tl245683245728_
                               _e245688245731_
                               _hd245687245734_
                               _tl245686245736_
                               _e245691245739_
                               _hd245690245742_
                               _tl245689245744_
                               _e245694245747_
                               _hd245693245750_
                               _tl245692245752_
                               _e245697245755_
                               _hd245696245758_
                               _tl245695245760_
                               _e245700245763_
                               _hd245699245766_
                               _tl245698245768_
                               _e245703245771_
                               _hd245702245774_
                               _tl245701245776_
                               _e245706245779_
                               _hd245705245782_
                               _tl245704245784_)
                        (let ((_L245787_ _hd245705245782_)
                              (_L245788_ _hd245702245774_)
                              (_L245789_ _hd245693245750_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L245788_
                                      _self245473_))
                                   (let ((__tmp257077
                                          (let ((__tmp257078
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L245789_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp257078))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp257077
                                      'gxc#!mutator::t)))
                              (___kont256148256149_
                               _L245787_
                               _L245788_
                               _L245789_)
                              (___kont256150256151_)))))
                     (___match256629256630_
                      (lambda (_e245685245723_
                               _hd245684245726_
                               _tl245683245728_
                               _e245688245731_
                               _hd245687245734_
                               _tl245686245736_
                               _e245691245739_
                               _hd245690245742_
                               _tl245689245744_
                               _e245694245747_
                               _hd245693245750_
                               _tl245692245752_
                               _e245697245755_
                               _hd245696245758_
                               _tl245695245760_
                               _e245700245763_
                               _hd245699245766_
                               _tl245698245768_
                               _e245703245771_
                               _hd245702245774_
                               _tl245701245776_
                               _e245706245779_
                               _hd245705245782_
                               _tl245704245784_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl245704245784_))
                            (___match256631256632_
                             _e245685245723_
                             _hd245684245726_
                             _tl245683245728_
                             _e245688245731_
                             _hd245687245734_
                             _tl245686245736_
                             _e245691245739_
                             _hd245690245742_
                             _tl245689245744_
                             _e245694245747_
                             _hd245693245750_
                             _tl245692245752_
                             _e245697245755_
                             _hd245696245758_
                             _tl245695245760_
                             _e245700245763_
                             _hd245699245766_
                             _tl245698245768_
                             _e245703245771_
                             _hd245702245774_
                             _tl245701245776_
                             _e245706245779_
                             _hd245705245782_
                             _tl245704245784_)
                            (___kont256150256151_))))
                     (___match256623256624_
                      (lambda (_e245685245723_
                               _hd245684245726_
                               _tl245683245728_
                               _e245688245731_
                               _hd245687245734_
                               _tl245686245736_
                               _e245691245739_
                               _hd245690245742_
                               _tl245689245744_
                               _e245694245747_
                               _hd245693245750_
                               _tl245692245752_
                               _e245697245755_
                               _hd245696245758_
                               _tl245695245760_
                               _e245700245763_
                               _hd245699245766_
                               _tl245698245768_
                               _e245703245771_
                               _hd245702245774_
                               _tl245701245776_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl245695245760_))
                            (let ((_e245706245779_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl245695245760_))))
                              (let ((_tl245704245784_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245706245779_)))
                                    (_hd245705245782_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245706245779_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl245704245784_))
                                    (___match256631256632_
                                     _e245685245723_
                                     _hd245684245726_
                                     _tl245683245728_
                                     _e245688245731_
                                     _hd245687245734_
                                     _tl245686245736_
                                     _e245691245739_
                                     _hd245690245742_
                                     _tl245689245744_
                                     _e245694245747_
                                     _hd245693245750_
                                     _tl245692245752_
                                     _e245697245755_
                                     _hd245696245758_
                                     _tl245695245760_
                                     _e245700245763_
                                     _hd245699245766_
                                     _tl245698245768_
                                     _e245703245771_
                                     _hd245702245774_
                                     _tl245701245776_
                                     _e245706245779_
                                     _hd245705245782_
                                     _tl245704245784_)
                                    (___kont256150256151_))))
                            (___kont256150256151_))))
                     (___match256569256570_
                      (lambda (_e245661245830_
                               _hd245660245833_
                               _tl245659245835_
                               _e245664245838_
                               _hd245663245841_
                               _tl245662245843_
                               _e245667245846_
                               _hd245666245849_
                               _tl245665245851_
                               _e245670245854_
                               _hd245669245857_
                               _tl245668245859_
                               _e245673245862_
                               _hd245672245865_
                               _tl245671245867_
                               _e245676245870_
                               _hd245675245873_
                               _tl245674245875_
                               _e245679245878_
                               _hd245678245881_
                               _tl245677245883_)
                        (let ((_L245886_ _hd245678245881_)
                              (_L245887_ _hd245669245857_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L245886_
                                      _self245473_))
                                   (let ((__tmp257079
                                          (let ((__tmp257080
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L245887_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp257080))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp257079
                                      'gxc#!accessor::t)))
                              (___kont256146256147_ _L245886_ _L245887_)
                              (___kont256150256151_)))))
                     (___match256567256568_
                      (lambda (_e245661245830_
                               _hd245660245833_
                               _tl245659245835_
                               _e245664245838_
                               _hd245663245841_
                               _tl245662245843_
                               _e245667245846_
                               _hd245666245849_
                               _tl245665245851_
                               _e245670245854_
                               _hd245669245857_
                               _tl245668245859_
                               _e245673245862_
                               _hd245672245865_
                               _tl245671245867_
                               _e245676245870_
                               _hd245675245873_
                               _tl245674245875_
                               _e245679245878_
                               _hd245678245881_
                               _tl245677245883_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl245671245867_))
                            (___match256569256570_
                             _e245661245830_
                             _hd245660245833_
                             _tl245659245835_
                             _e245664245838_
                             _hd245663245841_
                             _tl245662245843_
                             _e245667245846_
                             _hd245666245849_
                             _tl245665245851_
                             _e245670245854_
                             _hd245669245857_
                             _tl245668245859_
                             _e245673245862_
                             _hd245672245865_
                             _tl245671245867_
                             _e245676245870_
                             _hd245675245873_
                             _tl245674245875_
                             _e245679245878_
                             _hd245678245881_
                             _tl245677245883_)
                            (___match256623256624_
                             _e245661245830_
                             _hd245660245833_
                             _tl245659245835_
                             _e245664245838_
                             _hd245663245841_
                             _tl245662245843_
                             _e245667245846_
                             _hd245666245849_
                             _tl245665245851_
                             _e245670245854_
                             _hd245669245857_
                             _tl245668245859_
                             _e245673245862_
                             _hd245672245865_
                             _tl245671245867_
                             _e245676245870_
                             _hd245675245873_
                             _tl245674245875_
                             _e245679245878_
                             _hd245678245881_
                             _tl245677245883_))))
                     (___match256513256514_
                      (lambda (_e245626245919_
                               _hd245625245922_
                               _tl245624245924_
                               _e245629245927_
                               _hd245628245930_
                               _tl245627245932_
                               _e245632245935_
                               _hd245631245938_
                               _tl245630245940_
                               _e245635245943_
                               _hd245634245946_
                               _tl245633245948_
                               _e245638245951_
                               _hd245637245954_
                               _tl245636245956_
                               _e245641245959_
                               _hd245640245962_
                               _tl245639245964_
                               _e245644245967_
                               _hd245643245970_
                               _tl245642245972_
                               _e245647245975_
                               _hd245646245978_
                               _tl245645245980_
                               _e245650245983_
                               _hd245649245986_
                               _tl245648245988_
                               _e245653245991_
                               _hd245652245994_
                               _tl245651245996_
                               _e245656245999_
                               _hd245655246002_
                               _tl245654246004_)
                        (let ((_L246007_ _hd245655246002_)
                              (_L246008_ _hd245652245994_)
                              (_L246009_ _hd245643245970_)
                              (_L246010_ _hd245634245946_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L246010_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L246010_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L246009_
                                      _self245473_)))
                              (___kont256144256145_
                               _L246007_
                               _L246008_
                               _L246009_
                               _L246010_)
                              (___kont256150256151_)))))
                     (___match256505256506_
                      (lambda (_e245626245919_
                               _hd245625245922_
                               _tl245624245924_
                               _e245629245927_
                               _hd245628245930_
                               _tl245627245932_
                               _e245632245935_
                               _hd245631245938_
                               _tl245630245940_
                               _e245635245943_
                               _hd245634245946_
                               _tl245633245948_
                               _e245638245951_
                               _hd245637245954_
                               _tl245636245956_
                               _e245641245959_
                               _hd245640245962_
                               _tl245639245964_
                               _e245644245967_
                               _hd245643245970_
                               _tl245642245972_
                               _e245647245975_
                               _hd245646245978_
                               _tl245645245980_
                               _e245650245983_
                               _hd245649245986_
                               _tl245648245988_
                               _e245653245991_
                               _hd245652245994_
                               _tl245651245996_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl245645245980_))
                            (let ((_e245656245999_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl245645245980_))))
                              (let ((_tl245654246004_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245656245999_)))
                                    (_hd245655246002_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245656245999_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl245654246004_))
                                    (___match256513256514_
                                     _e245626245919_
                                     _hd245625245922_
                                     _tl245624245924_
                                     _e245629245927_
                                     _hd245628245930_
                                     _tl245627245932_
                                     _e245632245935_
                                     _hd245631245938_
                                     _tl245630245940_
                                     _e245635245943_
                                     _hd245634245946_
                                     _tl245633245948_
                                     _e245638245951_
                                     _hd245637245954_
                                     _tl245636245956_
                                     _e245641245959_
                                     _hd245640245962_
                                     _tl245639245964_
                                     _e245644245967_
                                     _hd245643245970_
                                     _tl245642245972_
                                     _e245647245975_
                                     _hd245646245978_
                                     _tl245645245980_
                                     _e245650245983_
                                     _hd245649245986_
                                     _tl245648245988_
                                     _e245653245991_
                                     _hd245652245994_
                                     _tl245651245996_
                                     _e245656245999_
                                     _hd245655246002_
                                     _tl245654246004_)
                                    (___kont256150256151_))))
                            (___match256629256630_
                             _e245626245919_
                             _hd245625245922_
                             _tl245624245924_
                             _e245629245927_
                             _hd245628245930_
                             _tl245627245932_
                             _e245632245935_
                             _hd245631245938_
                             _tl245630245940_
                             _e245635245943_
                             _hd245634245946_
                             _tl245633245948_
                             _e245638245951_
                             _hd245637245954_
                             _tl245636245956_
                             _e245641245959_
                             _hd245640245962_
                             _tl245639245964_
                             _e245644245967_
                             _hd245643245970_
                             _tl245642245972_
                             _e245647245975_
                             _hd245646245978_
                             _tl245645245980_))))
                     (___match256427256428_
                      (lambda (_e245592246053_
                               _hd245591246056_
                               _tl245590246058_
                               _e245595246061_
                               _hd245594246064_
                               _tl245593246066_
                               _e245598246069_
                               _hd245597246072_
                               _tl245596246074_
                               _e245601246077_
                               _hd245600246080_
                               _tl245599246082_
                               _e245604246085_
                               _hd245603246088_
                               _tl245602246090_
                               _e245607246093_
                               _hd245606246096_
                               _tl245605246098_
                               _e245610246101_
                               _hd245609246104_
                               _tl245608246106_
                               _e245613246109_
                               _hd245612246112_
                               _tl245611246114_
                               _e245616246117_
                               _hd245615246120_
                               _tl245614246122_
                               _e245619246125_
                               _hd245618246128_
                               _tl245617246130_)
                        (let ((_L246133_ _hd245618246128_)
                              (_L246134_ _hd245609246104_)
                              (_L246135_ _hd245600246080_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L246135_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L246135_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L246134_
                                      _self245473_)))
                              (___kont256142256143_
                               _L246133_
                               _L246134_
                               _L246135_)
                              (___match256631256632_
                               _e245592246053_
                               _hd245591246056_
                               _tl245590246058_
                               _e245595246061_
                               _hd245594246064_
                               _tl245593246066_
                               _e245598246069_
                               _hd245597246072_
                               _tl245596246074_
                               _e245601246077_
                               _hd245600246080_
                               _tl245599246082_
                               _e245604246085_
                               _hd245603246088_
                               _tl245602246090_
                               _e245607246093_
                               _hd245606246096_
                               _tl245605246098_
                               _e245610246101_
                               _hd245609246104_
                               _tl245608246106_
                               _e245613246109_
                               _hd245612246112_
                               _tl245611246114_)))))
                     (___match256425256426_
                      (lambda (_e245592246053_
                               _hd245591246056_
                               _tl245590246058_
                               _e245595246061_
                               _hd245594246064_
                               _tl245593246066_
                               _e245598246069_
                               _hd245597246072_
                               _tl245596246074_
                               _e245601246077_
                               _hd245600246080_
                               _tl245599246082_
                               _e245604246085_
                               _hd245603246088_
                               _tl245602246090_
                               _e245607246093_
                               _hd245606246096_
                               _tl245605246098_
                               _e245610246101_
                               _hd245609246104_
                               _tl245608246106_
                               _e245613246109_
                               _hd245612246112_
                               _tl245611246114_
                               _e245616246117_
                               _hd245615246120_
                               _tl245614246122_
                               _e245619246125_
                               _hd245618246128_
                               _tl245617246130_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl245611246114_))
                            (___match256427256428_
                             _e245592246053_
                             _hd245591246056_
                             _tl245590246058_
                             _e245595246061_
                             _hd245594246064_
                             _tl245593246066_
                             _e245598246069_
                             _hd245597246072_
                             _tl245596246074_
                             _e245601246077_
                             _hd245600246080_
                             _tl245599246082_
                             _e245604246085_
                             _hd245603246088_
                             _tl245602246090_
                             _e245607246093_
                             _hd245606246096_
                             _tl245605246098_
                             _e245610246101_
                             _hd245609246104_
                             _tl245608246106_
                             _e245613246109_
                             _hd245612246112_
                             _tl245611246114_
                             _e245616246117_
                             _hd245615246120_
                             _tl245614246122_
                             _e245619246125_
                             _hd245618246128_
                             _tl245617246130_)
                            (___match256505256506_
                             _e245592246053_
                             _hd245591246056_
                             _tl245590246058_
                             _e245595246061_
                             _hd245594246064_
                             _tl245593246066_
                             _e245598246069_
                             _hd245597246072_
                             _tl245596246074_
                             _e245601246077_
                             _hd245600246080_
                             _tl245599246082_
                             _e245604246085_
                             _hd245603246088_
                             _tl245602246090_
                             _e245607246093_
                             _hd245606246096_
                             _tl245605246098_
                             _e245610246101_
                             _hd245609246104_
                             _tl245608246106_
                             _e245613246109_
                             _hd245612246112_
                             _tl245611246114_
                             _e245616246117_
                             _hd245615246120_
                             _tl245614246122_
                             _e245619246125_
                             _hd245618246128_
                             _tl245617246130_))))
                     (___match256415256416_
                      (lambda (_e245592246053_
                               _hd245591246056_
                               _tl245590246058_
                               _e245595246061_
                               _hd245594246064_
                               _tl245593246066_
                               _e245598246069_
                               _hd245597246072_
                               _tl245596246074_
                               _e245601246077_
                               _hd245600246080_
                               _tl245599246082_
                               _e245604246085_
                               _hd245603246088_
                               _tl245602246090_
                               _e245607246093_
                               _hd245606246096_
                               _tl245605246098_
                               _e245610246101_
                               _hd245609246104_
                               _tl245608246106_
                               _e245613246109_
                               _hd245612246112_
                               _tl245611246114_
                               _e245616246117_
                               _hd245615246120_
                               _tl245614246122_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd245615246120_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl245614246122_))
                                (let ((_e245619246125_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl245614246122_))))
                                  (let ((_tl245617246130_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e245619246125_)))
                                        (_hd245618246128_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e245619246125_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl245617246130_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl245611246114_))
                                            (___match256427256428_
                                             _e245592246053_
                                             _hd245591246056_
                                             _tl245590246058_
                                             _e245595246061_
                                             _hd245594246064_
                                             _tl245593246066_
                                             _e245598246069_
                                             _hd245597246072_
                                             _tl245596246074_
                                             _e245601246077_
                                             _hd245600246080_
                                             _tl245599246082_
                                             _e245604246085_
                                             _hd245603246088_
                                             _tl245602246090_
                                             _e245607246093_
                                             _hd245606246096_
                                             _tl245605246098_
                                             _e245610246101_
                                             _hd245609246104_
                                             _tl245608246106_
                                             _e245613246109_
                                             _hd245612246112_
                                             _tl245611246114_
                                             _e245616246117_
                                             _hd245615246120_
                                             _tl245614246122_
                                             _e245619246125_
                                             _hd245618246128_
                                             _tl245617246130_)
                                            (___match256505256506_
                                             _e245592246053_
                                             _hd245591246056_
                                             _tl245590246058_
                                             _e245595246061_
                                             _hd245594246064_
                                             _tl245593246066_
                                             _e245598246069_
                                             _hd245597246072_
                                             _tl245596246074_
                                             _e245601246077_
                                             _hd245600246080_
                                             _tl245599246082_
                                             _e245604246085_
                                             _hd245603246088_
                                             _tl245602246090_
                                             _e245607246093_
                                             _hd245606246096_
                                             _tl245605246098_
                                             _e245610246101_
                                             _hd245609246104_
                                             _tl245608246106_
                                             _e245613246109_
                                             _hd245612246112_
                                             _tl245611246114_
                                             _e245616246117_
                                             _hd245615246120_
                                             _tl245614246122_
                                             _e245619246125_
                                             _hd245618246128_
                                             _tl245617246130_))
                                        (___match256629256630_
                                         _e245592246053_
                                         _hd245591246056_
                                         _tl245590246058_
                                         _e245595246061_
                                         _hd245594246064_
                                         _tl245593246066_
                                         _e245598246069_
                                         _hd245597246072_
                                         _tl245596246074_
                                         _e245601246077_
                                         _hd245600246080_
                                         _tl245599246082_
                                         _e245604246085_
                                         _hd245603246088_
                                         _tl245602246090_
                                         _e245607246093_
                                         _hd245606246096_
                                         _tl245605246098_
                                         _e245610246101_
                                         _hd245609246104_
                                         _tl245608246106_
                                         _e245613246109_
                                         _hd245612246112_
                                         _tl245611246114_))))
                                (___match256629256630_
                                 _e245592246053_
                                 _hd245591246056_
                                 _tl245590246058_
                                 _e245595246061_
                                 _hd245594246064_
                                 _tl245593246066_
                                 _e245598246069_
                                 _hd245597246072_
                                 _tl245596246074_
                                 _e245601246077_
                                 _hd245600246080_
                                 _tl245599246082_
                                 _e245604246085_
                                 _hd245603246088_
                                 _tl245602246090_
                                 _e245607246093_
                                 _hd245606246096_
                                 _tl245605246098_
                                 _e245610246101_
                                 _hd245609246104_
                                 _tl245608246106_
                                 _e245613246109_
                                 _hd245612246112_
                                 _tl245611246114_))
                            (___match256629256630_
                             _e245592246053_
                             _hd245591246056_
                             _tl245590246058_
                             _e245595246061_
                             _hd245594246064_
                             _tl245593246066_
                             _e245598246069_
                             _hd245597246072_
                             _tl245596246074_
                             _e245601246077_
                             _hd245600246080_
                             _tl245599246082_
                             _e245604246085_
                             _hd245603246088_
                             _tl245602246090_
                             _e245607246093_
                             _hd245606246096_
                             _tl245605246098_
                             _e245610246101_
                             _hd245609246104_
                             _tl245608246106_
                             _e245613246109_
                             _hd245612246112_
                             _tl245611246114_))))
                     (___match256347256348_
                      (lambda (_e245541246174_
                               _hd245540246177_
                               _tl245539246179_
                               _e245544246182_
                               _hd245543246185_
                               _tl245542246187_
                               _e245547246190_
                               _hd245546246193_
                               _tl245545246195_
                               _e245550246198_
                               _hd245549246201_
                               _tl245548246203_
                               _e245553246206_
                               _hd245552246209_
                               _tl245551246211_
                               _e245556246214_
                               _hd245555246217_
                               _tl245554246219_
                               _e245559246222_
                               _hd245558246225_
                               _tl245557246227_
                               _e245562246230_
                               _hd245561246233_
                               _tl245560246235_
                               _e245565246238_
                               _hd245564246241_
                               _tl245563246243_
                               _e245568246246_
                               _hd245567246249_
                               _tl245566246251_
                               _e245571246254_
                               _hd245570246257_
                               _tl245569246259_
                               _e245574246262_
                               _hd245573246265_
                               _tl245572246267_
                               _e245577246270_
                               _hd245576246273_
                               _tl245575246275_
                               ___splice256140256141_
                               _target245578246278_
                               _tl245580246280_)
                        (letrec ((_loop245581246283_
                                  (lambda (_hd245579246286_ _args245585246288_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd245579246286_))
                                        (let ((_e245582246291_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd245579246286_))))
                                          (let ((_lp-tl245584246296_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e245582246291_)))
                                                (_lp-hd245583246294_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e245582246291_))))
                                            (let ((__tmp257081
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd245583246294_
                                                           _args245585246288_))))
                                              (declare (not safe))
                                              (_loop245581246283_
                                               _lp-tl245584246296_
                                               __tmp257081))))
                                        (let ((_args245586246299_
                                               (reverse _args245585246288_)))
                                          (let ((_L246302_ _args245586246299_)
                                                (_L246303_ _hd245576246273_)
                                                (_L246304_ _hd245567246249_)
                                                (_L246305_ _hd245558246225_)
                                                (_L246306_ _hd245549246201_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L246306_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L246305_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L246304_
                                                        _self245473_)))
                                                (___kont256138256139_
                                                 _L246302_
                                                 _L246303_
                                                 _L246304_
                                                 _L246305_
                                                 _L246306_)
                                                (___kont256150256151_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop245581246283_ _target245578246278_ '())))))
                     (___match256305256306_
                      (lambda (_e245541246174_
                               _hd245540246177_
                               _tl245539246179_
                               _e245544246182_
                               _hd245543246185_
                               _tl245542246187_
                               _e245547246190_
                               _hd245546246193_
                               _tl245545246195_
                               _e245550246198_
                               _hd245549246201_
                               _tl245548246203_
                               _e245553246206_
                               _hd245552246209_
                               _tl245551246211_
                               _e245556246214_
                               _hd245555246217_
                               _tl245554246219_
                               _e245559246222_
                               _hd245558246225_
                               _tl245557246227_
                               _e245562246230_
                               _hd245561246233_
                               _tl245560246235_
                               _e245565246238_
                               _hd245564246241_
                               _tl245563246243_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd245564246241_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl245563246243_))
                                (let ((_e245568246246_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl245563246243_))))
                                  (let ((_tl245566246251_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e245568246246_)))
                                        (_hd245567246249_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e245568246246_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl245566246251_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl245560246235_))
                                            (let ((_e245571246254_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl245560246235_))))
                                              (let ((_tl245569246259_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e245571246254_)))
                                                    (_hd245570246257_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e245571246254_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd245570246257_))
                                                    (let ((_e245574246262_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd245570246257_))))
                                                      (let ((_tl245572246267_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e245574246262_)))
                    (_hd245573246265_
                     (let () (declare (not safe)) (##car _e245574246262_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd245573246265_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd245573246265_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl245572246267_))
                            (let ((_e245577246270_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl245572246267_))))
                              (let ((_tl245575246275_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245577246270_)))
                                    (_hd245576246273_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245577246270_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl245575246275_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl245569246259_))
                                        (let ((___splice256140256141_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl245569246259_
                                                  '0))))
                                          (let ((_tl245580246280_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice256140256141_
                                                    '1)))
                                                (_target245578246278_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice256140256141_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl245580246280_))
                                                (___match256347256348_
                                                 _e245541246174_
                                                 _hd245540246177_
                                                 _tl245539246179_
                                                 _e245544246182_
                                                 _hd245543246185_
                                                 _tl245542246187_
                                                 _e245547246190_
                                                 _hd245546246193_
                                                 _tl245545246195_
                                                 _e245550246198_
                                                 _hd245549246201_
                                                 _tl245548246203_
                                                 _e245553246206_
                                                 _hd245552246209_
                                                 _tl245551246211_
                                                 _e245556246214_
                                                 _hd245555246217_
                                                 _tl245554246219_
                                                 _e245559246222_
                                                 _hd245558246225_
                                                 _tl245557246227_
                                                 _e245562246230_
                                                 _hd245561246233_
                                                 _tl245560246235_
                                                 _e245565246238_
                                                 _hd245564246241_
                                                 _tl245563246243_
                                                 _e245568246246_
                                                 _hd245567246249_
                                                 _tl245566246251_
                                                 _e245571246254_
                                                 _hd245570246257_
                                                 _tl245569246259_
                                                 _e245574246262_
                                                 _hd245573246265_
                                                 _tl245572246267_
                                                 _e245577246270_
                                                 _hd245576246273_
                                                 _tl245575246275_
                                                 ___splice256140256141_
                                                 _target245578246278_
                                                 _tl245580246280_)
                                                (___kont256150256151_))))
                                        (___kont256150256151_))
                                    (___kont256150256151_))))
                            (___kont256150256151_))
                        (___kont256150256151_))
                    (___kont256150256151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont256150256151_))))
                                            (___match256629256630_
                                             _e245541246174_
                                             _hd245540246177_
                                             _tl245539246179_
                                             _e245544246182_
                                             _hd245543246185_
                                             _tl245542246187_
                                             _e245547246190_
                                             _hd245546246193_
                                             _tl245545246195_
                                             _e245550246198_
                                             _hd245549246201_
                                             _tl245548246203_
                                             _e245553246206_
                                             _hd245552246209_
                                             _tl245551246211_
                                             _e245556246214_
                                             _hd245555246217_
                                             _tl245554246219_
                                             _e245559246222_
                                             _hd245558246225_
                                             _tl245557246227_
                                             _e245562246230_
                                             _hd245561246233_
                                             _tl245560246235_))
                                        (___match256629256630_
                                         _e245541246174_
                                         _hd245540246177_
                                         _tl245539246179_
                                         _e245544246182_
                                         _hd245543246185_
                                         _tl245542246187_
                                         _e245547246190_
                                         _hd245546246193_
                                         _tl245545246195_
                                         _e245550246198_
                                         _hd245549246201_
                                         _tl245548246203_
                                         _e245553246206_
                                         _hd245552246209_
                                         _tl245551246211_
                                         _e245556246214_
                                         _hd245555246217_
                                         _tl245554246219_
                                         _e245559246222_
                                         _hd245558246225_
                                         _tl245557246227_
                                         _e245562246230_
                                         _hd245561246233_
                                         _tl245560246235_))))
                                (___match256629256630_
                                 _e245541246174_
                                 _hd245540246177_
                                 _tl245539246179_
                                 _e245544246182_
                                 _hd245543246185_
                                 _tl245542246187_
                                 _e245547246190_
                                 _hd245546246193_
                                 _tl245545246195_
                                 _e245550246198_
                                 _hd245549246201_
                                 _tl245548246203_
                                 _e245553246206_
                                 _hd245552246209_
                                 _tl245551246211_
                                 _e245556246214_
                                 _hd245555246217_
                                 _tl245554246219_
                                 _e245559246222_
                                 _hd245558246225_
                                 _tl245557246227_
                                 _e245562246230_
                                 _hd245561246233_
                                 _tl245560246235_))
                            (___match256415256416_
                             _e245541246174_
                             _hd245540246177_
                             _tl245539246179_
                             _e245544246182_
                             _hd245543246185_
                             _tl245542246187_
                             _e245547246190_
                             _hd245546246193_
                             _tl245545246195_
                             _e245550246198_
                             _hd245549246201_
                             _tl245548246203_
                             _e245553246206_
                             _hd245552246209_
                             _tl245551246211_
                             _e245556246214_
                             _hd245555246217_
                             _tl245554246219_
                             _e245559246222_
                             _hd245558246225_
                             _tl245557246227_
                             _e245562246230_
                             _hd245561246233_
                             _tl245560246235_
                             _e245565246238_
                             _hd245564246241_
                             _tl245563246243_))))
                     (___match256237256238_
                      (lambda (_e245497246366_
                               _hd245496246369_
                               _tl245495246371_
                               _e245500246374_
                               _hd245499246377_
                               _tl245498246379_
                               _e245503246382_
                               _hd245502246385_
                               _tl245501246387_
                               _e245506246390_
                               _hd245505246393_
                               _tl245504246395_
                               _e245509246398_
                               _hd245508246401_
                               _tl245507246403_
                               _e245512246406_
                               _hd245511246409_
                               _tl245510246411_
                               _e245515246414_
                               _hd245514246417_
                               _tl245513246419_
                               _e245518246422_
                               _hd245517246425_
                               _tl245516246427_
                               _e245521246430_
                               _hd245520246433_
                               _tl245519246435_
                               _e245524246438_
                               _hd245523246441_
                               _tl245522246443_
                               ___splice256136256137_
                               _target245525246446_
                               _tl245527246448_)
                        (letrec ((_loop245528246451_
                                  (lambda (_hd245526246454_ _args245532246456_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd245526246454_))
                                        (let ((_e245529246459_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd245526246454_))))
                                          (let ((_lp-tl245531246464_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e245529246459_)))
                                                (_lp-hd245530246462_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e245529246459_))))
                                            (let ((__tmp257082
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd245530246462_
                                                           _args245532246456_))))
                                              (declare (not safe))
                                              (_loop245528246451_
                                               _lp-tl245531246464_
                                               __tmp257082))))
                                        (let ((_args245533246467_
                                               (reverse _args245532246456_)))
                                          (let ((_L246470_ _args245533246467_)
                                                (_L246471_ _hd245523246441_)
                                                (_L246472_ _hd245514246417_)
                                                (_L246473_ _hd245505246393_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L246473_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L246472_
                                                        _self245473_)))
                                                (___kont256134256135_
                                                 _L246470_
                                                 _L246471_
                                                 _L246472_
                                                 _L246473_)
                                                (___match256425256426_
                                                 _e245497246366_
                                                 _hd245496246369_
                                                 _tl245495246371_
                                                 _e245500246374_
                                                 _hd245499246377_
                                                 _tl245498246379_
                                                 _e245503246382_
                                                 _hd245502246385_
                                                 _tl245501246387_
                                                 _e245506246390_
                                                 _hd245505246393_
                                                 _tl245504246395_
                                                 _e245509246398_
                                                 _hd245508246401_
                                                 _tl245507246403_
                                                 _e245512246406_
                                                 _hd245511246409_
                                                 _tl245510246411_
                                                 _e245515246414_
                                                 _hd245514246417_
                                                 _tl245513246419_
                                                 _e245518246422_
                                                 _hd245517246425_
                                                 _tl245516246427_
                                                 _e245521246430_
                                                 _hd245520246433_
                                                 _tl245519246435_
                                                 _e245524246438_
                                                 _hd245523246441_
                                                 _tl245522246443_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop245528246451_ _target245525246446_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx256132256133_))
                    (let ((_e245497246366_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx256132256133_))))
                      (let ((_tl245495246371_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245497246366_)))
                            (_hd245496246369_
                             (let ()
                               (declare (not safe))
                               (##car _e245497246366_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl245495246371_))
                            (let ((_e245500246374_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl245495246371_))))
                              (let ((_tl245498246379_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245500246374_)))
                                    (_hd245499246377_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245500246374_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd245499246377_))
                                    (let ((_e245503246382_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd245499246377_))))
                                      (let ((_tl245501246387_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e245503246382_)))
                                            (_hd245502246385_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e245503246382_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd245502246385_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd245502246385_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl245501246387_))
                                                    (let ((_e245506246390_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl245501246387_))))
                                                      (let ((_tl245504246395_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e245506246390_)))
                    (_hd245505246393_
                     (let () (declare (not safe)) (##car _e245506246390_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl245504246395_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl245498246379_))
                        (let ((_e245509246398_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl245498246379_))))
                          (let ((_tl245507246403_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e245509246398_)))
                                (_hd245508246401_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e245509246398_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd245508246401_))
                                (let ((_e245512246406_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd245508246401_))))
                                  (let ((_tl245510246411_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e245512246406_)))
                                        (_hd245511246409_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e245512246406_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd245511246409_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd245511246409_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl245510246411_))
                                                (let ((_e245515246414_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl245510246411_))))
                                                  (let ((_tl245513246419_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e245515246414_)))
                                                        (_hd245514246417_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e245515246414_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl245513246419_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl245507246403_))
                                                            (let ((_e245518246422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl245507246403_))))
                      (let ((_tl245516246427_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245518246422_)))
                            (_hd245517246425_
                             (let ()
                               (declare (not safe))
                               (##car _e245518246422_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd245517246425_))
                            (let ((_e245521246430_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd245517246425_))))
                              (let ((_tl245519246435_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245521246430_)))
                                    (_hd245520246433_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245521246430_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd245520246433_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd245520246433_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl245519246435_))
                                            (let ((_e245524246438_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl245519246435_))))
                                              (let ((_tl245522246443_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e245524246438_)))
                                                    (_hd245523246441_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e245524246438_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl245522246443_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl245516246427_))
                                                        (let ((___splice256136256137_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl245516246427_ '0))))
                  (let ((_tl245527246448_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice256136256137_ '1)))
                        (_target245525246446_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice256136256137_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl245527246448_))
                        (___match256237256238_
                         _e245497246366_
                         _hd245496246369_
                         _tl245495246371_
                         _e245500246374_
                         _hd245499246377_
                         _tl245498246379_
                         _e245503246382_
                         _hd245502246385_
                         _tl245501246387_
                         _e245506246390_
                         _hd245505246393_
                         _tl245504246395_
                         _e245509246398_
                         _hd245508246401_
                         _tl245507246403_
                         _e245512246406_
                         _hd245511246409_
                         _tl245510246411_
                         _e245515246414_
                         _hd245514246417_
                         _tl245513246419_
                         _e245518246422_
                         _hd245517246425_
                         _tl245516246427_
                         _e245521246430_
                         _hd245520246433_
                         _tl245519246435_
                         _e245524246438_
                         _hd245523246441_
                         _tl245522246443_
                         ___splice256136256137_
                         _target245525246446_
                         _tl245527246448_)
                        (___match256425256426_
                         _e245497246366_
                         _hd245496246369_
                         _tl245495246371_
                         _e245500246374_
                         _hd245499246377_
                         _tl245498246379_
                         _e245503246382_
                         _hd245502246385_
                         _tl245501246387_
                         _e245506246390_
                         _hd245505246393_
                         _tl245504246395_
                         _e245509246398_
                         _hd245508246401_
                         _tl245507246403_
                         _e245512246406_
                         _hd245511246409_
                         _tl245510246411_
                         _e245515246414_
                         _hd245514246417_
                         _tl245513246419_
                         _e245518246422_
                         _hd245517246425_
                         _tl245516246427_
                         _e245521246430_
                         _hd245520246433_
                         _tl245519246435_
                         _e245524246438_
                         _hd245523246441_
                         _tl245522246443_))))
                (___match256425256426_
                 _e245497246366_
                 _hd245496246369_
                 _tl245495246371_
                 _e245500246374_
                 _hd245499246377_
                 _tl245498246379_
                 _e245503246382_
                 _hd245502246385_
                 _tl245501246387_
                 _e245506246390_
                 _hd245505246393_
                 _tl245504246395_
                 _e245509246398_
                 _hd245508246401_
                 _tl245507246403_
                 _e245512246406_
                 _hd245511246409_
                 _tl245510246411_
                 _e245515246414_
                 _hd245514246417_
                 _tl245513246419_
                 _e245518246422_
                 _hd245517246425_
                 _tl245516246427_
                 _e245521246430_
                 _hd245520246433_
                 _tl245519246435_
                 _e245524246438_
                 _hd245523246441_
                 _tl245522246443_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match256629256630_
                                                     _e245497246366_
                                                     _hd245496246369_
                                                     _tl245495246371_
                                                     _e245500246374_
                                                     _hd245499246377_
                                                     _tl245498246379_
                                                     _e245503246382_
                                                     _hd245502246385_
                                                     _tl245501246387_
                                                     _e245506246390_
                                                     _hd245505246393_
                                                     _tl245504246395_
                                                     _e245509246398_
                                                     _hd245508246401_
                                                     _tl245507246403_
                                                     _e245512246406_
                                                     _hd245511246409_
                                                     _tl245510246411_
                                                     _e245515246414_
                                                     _hd245514246417_
                                                     _tl245513246419_
                                                     _e245518246422_
                                                     _hd245517246425_
                                                     _tl245516246427_))))
                                            (___match256629256630_
                                             _e245497246366_
                                             _hd245496246369_
                                             _tl245495246371_
                                             _e245500246374_
                                             _hd245499246377_
                                             _tl245498246379_
                                             _e245503246382_
                                             _hd245502246385_
                                             _tl245501246387_
                                             _e245506246390_
                                             _hd245505246393_
                                             _tl245504246395_
                                             _e245509246398_
                                             _hd245508246401_
                                             _tl245507246403_
                                             _e245512246406_
                                             _hd245511246409_
                                             _tl245510246411_
                                             _e245515246414_
                                             _hd245514246417_
                                             _tl245513246419_
                                             _e245518246422_
                                             _hd245517246425_
                                             _tl245516246427_))
                                        (___match256305256306_
                                         _e245497246366_
                                         _hd245496246369_
                                         _tl245495246371_
                                         _e245500246374_
                                         _hd245499246377_
                                         _tl245498246379_
                                         _e245503246382_
                                         _hd245502246385_
                                         _tl245501246387_
                                         _e245506246390_
                                         _hd245505246393_
                                         _tl245504246395_
                                         _e245509246398_
                                         _hd245508246401_
                                         _tl245507246403_
                                         _e245512246406_
                                         _hd245511246409_
                                         _tl245510246411_
                                         _e245515246414_
                                         _hd245514246417_
                                         _tl245513246419_
                                         _e245518246422_
                                         _hd245517246425_
                                         _tl245516246427_
                                         _e245521246430_
                                         _hd245520246433_
                                         _tl245519246435_))
                                    (___match256629256630_
                                     _e245497246366_
                                     _hd245496246369_
                                     _tl245495246371_
                                     _e245500246374_
                                     _hd245499246377_
                                     _tl245498246379_
                                     _e245503246382_
                                     _hd245502246385_
                                     _tl245501246387_
                                     _e245506246390_
                                     _hd245505246393_
                                     _tl245504246395_
                                     _e245509246398_
                                     _hd245508246401_
                                     _tl245507246403_
                                     _e245512246406_
                                     _hd245511246409_
                                     _tl245510246411_
                                     _e245515246414_
                                     _hd245514246417_
                                     _tl245513246419_
                                     _e245518246422_
                                     _hd245517246425_
                                     _tl245516246427_))))
                            (___match256629256630_
                             _e245497246366_
                             _hd245496246369_
                             _tl245495246371_
                             _e245500246374_
                             _hd245499246377_
                             _tl245498246379_
                             _e245503246382_
                             _hd245502246385_
                             _tl245501246387_
                             _e245506246390_
                             _hd245505246393_
                             _tl245504246395_
                             _e245509246398_
                             _hd245508246401_
                             _tl245507246403_
                             _e245512246406_
                             _hd245511246409_
                             _tl245510246411_
                             _e245515246414_
                             _hd245514246417_
                             _tl245513246419_
                             _e245518246422_
                             _hd245517246425_
                             _tl245516246427_))))
                    (___match256567256568_
                     _e245497246366_
                     _hd245496246369_
                     _tl245495246371_
                     _e245500246374_
                     _hd245499246377_
                     _tl245498246379_
                     _e245503246382_
                     _hd245502246385_
                     _tl245501246387_
                     _e245506246390_
                     _hd245505246393_
                     _tl245504246395_
                     _e245509246398_
                     _hd245508246401_
                     _tl245507246403_
                     _e245512246406_
                     _hd245511246409_
                     _tl245510246411_
                     _e245515246414_
                     _hd245514246417_
                     _tl245513246419_))
                (___kont256150256151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont256150256151_))
                                            (___kont256150256151_))
                                        (___kont256150256151_))))
                                (___kont256150256151_))))
                        (___kont256150256151_))
                    (___kont256150256151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont256150256151_))
                                                (___kont256150256151_))
                                            (___kont256150256151_))))
                                    (___kont256150256151_))))
                            (___kont256150256151_))))
                    (___kont256150256151_))))))))))
