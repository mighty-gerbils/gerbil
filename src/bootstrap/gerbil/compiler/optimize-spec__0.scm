(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1707847731)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl250942_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp256638 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl250942_ __tmp256638))
           (let ()
             (declare (not safe))
             (table-set! _tbl250942_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl250942_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl250942_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250942_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl250942_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx250925_ . _args250927_)
        (let ((__tmp256640
               (lambda ()
                 (declare (not safe))
                 (if (null? _args250927_)
                     (gxc#compile-e__0 _stx250925_)
                     (let ((_arg1250932_ (car _args250927_))
                           (_rest250934_ (cdr _args250927_)))
                       (if (null? _rest250934_)
                           (gxc#compile-e__1 _stx250925_ _arg1250932_)
                           (let ((_arg2250937_ (car _rest250934_))
                                 (_rest250939_ (cdr _rest250934_)))
                             (if (null? _rest250939_)
                                 (gxc#compile-e__2
                                  _stx250925_
                                  _arg1250932_
                                  _arg2250937_)
                                 (apply gxc#compile-e
                                        _stx250925_
                                        _arg1250932_
                                        _arg2250937_
                                        _rest250939_))))))))
              (__tmp256639 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp256640
           gxc#current-compile-methods
           __tmp256639))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl250922_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp256641 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl250922_ __tmp256641))
           (let ()
             (declare (not safe))
             (table-set! _tbl250922_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250922_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl250922_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250922_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250922_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250922_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250922_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl250922_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl250922_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl250922_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl250922_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl250922_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250922_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250922_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250922_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250922_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl250922_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx250905_ . _args250907_)
        (let ((__tmp256643
               (lambda ()
                 (declare (not safe))
                 (if (null? _args250907_)
                     (gxc#compile-e__0 _stx250905_)
                     (let ((_arg1250912_ (car _args250907_))
                           (_rest250914_ (cdr _args250907_)))
                       (if (null? _rest250914_)
                           (gxc#compile-e__1 _stx250905_ _arg1250912_)
                           (let ((_arg2250917_ (car _rest250914_))
                                 (_rest250919_ (cdr _rest250914_)))
                             (if (null? _rest250919_)
                                 (gxc#compile-e__2
                                  _stx250905_
                                  _arg1250912_
                                  _arg2250917_)
                                 (apply gxc#compile-e
                                        _stx250905_
                                        _arg1250912_
                                        _arg2250917_
                                        _rest250919_))))))))
              (__tmp256642 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp256643
           gxc#current-compile-methods
           __tmp256642))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl250902_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp256644 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl250902_ __tmp256644))
           (let ()
             (declare (not safe))
             (table-set! _tbl250902_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl250902_ '%#call gxc#subst-object-refs-call%))
           _tbl250902_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx250885_ . _args250887_)
        (let ((__tmp256646
               (lambda ()
                 (declare (not safe))
                 (if (null? _args250887_)
                     (gxc#compile-e__0 _stx250885_)
                     (let ((_arg1250892_ (car _args250887_))
                           (_rest250894_ (cdr _args250887_)))
                       (if (null? _rest250894_)
                           (gxc#compile-e__1 _stx250885_ _arg1250892_)
                           (let ((_arg2250897_ (car _rest250894_))
                                 (_rest250899_ (cdr _rest250894_)))
                             (if (null? _rest250899_)
                                 (gxc#compile-e__2
                                  _stx250885_
                                  _arg1250892_
                                  _arg2250897_)
                                 (apply gxc#compile-e
                                        _stx250885_
                                        _arg1250892_
                                        _arg2250897_
                                        _rest250899_))))))))
              (__tmp256645 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp256646
           gxc#current-compile-methods
           __tmp256645))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx247555_)
        (letrec ((_generate-method-bind247557_
                  (lambda (_$t250879_ _id250880_ _$id250881_)
                    (let ((_$tmp250883_
                           (let ((__tmp256647 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp256647))))
                      (let ((__tmp256695
                             (let ()
                               (declare (not safe))
                               (cons _$id250881_ '())))
                            (__tmp256648
                             (let ((__tmp256649
                                    (let ((__tmp256650
                                           (let ((__tmp256693
                                                  (let ((__tmp256694
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp256694)))
                                                 (__tmp256651
                                                  (let ((__tmp256652
                                                         (let ((__tmp256653
                                                                (let ((__tmp256654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp256655
                                      (let ((__tmp256656
                                             (let ((__tmp256676
                                                    (let ((__tmp256677
                                                           (let ((__tmp256692
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp250883_ '())))
                         (__tmp256678
                          (let ((__tmp256679
                                 (let ((__tmp256680
                                        (let ((__tmp256690
                                               (let ((__tmp256691
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp256691)))
                                              (__tmp256681
                                               (let ((__tmp256688
                                                      (let ((__tmp256689
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t250879_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp256689)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp256682
                                                      (let ((__tmp256686
                                                             (let ((__tmp256687
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp256687)))
                    (__tmp256683
                     (let ((__tmp256684
                            (let ((__tmp256685
                                   (let ()
                                     (declare (not safe))
                                     (cons _id250880_ '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp256685))))
                       (declare (not safe))
                       (cons __tmp256684 '()))))
                (declare (not safe))
                (cons __tmp256686 __tmp256683))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp256688
                                                       __tmp256682))))
                                          (declare (not safe))
                                          (cons __tmp256690 __tmp256681))))
                                   (declare (not safe))
                                   (cons '%#call __tmp256680))))
                            (declare (not safe))
                            (cons __tmp256679 '()))))
                     (declare (not safe))
                     (cons __tmp256692 __tmp256678))))
              (declare (not safe))
              (cons __tmp256677 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp256657
                                                    (let ((__tmp256658
                                                           (let ((__tmp256659
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp256674
                                 (let ((__tmp256675
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp250883_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp256675)))
                                (__tmp256660
                                 (let ((__tmp256672
                                        (let ((__tmp256673
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp250883_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp256673)))
                                       (__tmp256661
                                        (let ((__tmp256662
                                               (let ((__tmp256663
                                                      (let ((__tmp256670
                                                             (let ((__tmp256671
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp256671)))
                    (__tmp256664
                     (let ((__tmp256668
                            (let ((__tmp256669
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp256669)))
                           (__tmp256665
                            (let ((__tmp256666
                                   (let ((__tmp256667
                                          (let ()
                                            (declare (not safe))
                                            (cons _id250880_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp256667))))
                              (declare (not safe))
                              (cons __tmp256666 '()))))
                       (declare (not safe))
                       (cons __tmp256668 __tmp256665))))
                (declare (not safe))
                (cons __tmp256670 __tmp256664))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp256663))))
                                          (declare (not safe))
                                          (cons __tmp256662 '()))))
                                   (declare (not safe))
                                   (cons __tmp256672 __tmp256661))))
                            (declare (not safe))
                            (cons __tmp256674 __tmp256660))))
                     (declare (not safe))
                     (cons '%#if __tmp256659))))
              (declare (not safe))
              (cons __tmp256658 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp256676
                                                     __tmp256657))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp256656))))
                                 (declare (not safe))
                                 (cons __tmp256655 '()))))
                          (declare (not safe))
                          (cons '() __tmp256654))))
                   (declare (not safe))
                   (cons '%#lambda __tmp256653))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp256652 '()))))
                                             (declare (not safe))
                                             (cons __tmp256693 __tmp256651))))
                                      (declare (not safe))
                                      (cons '%#call __tmp256650))))
                               (declare (not safe))
                               (cons __tmp256649 '()))))
                        (declare (not safe))
                        (cons __tmp256695 __tmp256648)))))
                 (_generate-slot-bind247558_
                  (lambda (_$t250873_ _id250874_ _$id250875_)
                    (let ((_$tmp250877_
                           (let ((__tmp256696 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp256696))))
                      (let ((__tmp256733
                             (let ()
                               (declare (not safe))
                               (cons _$id250875_ '())))
                            (__tmp256697
                             (let ((__tmp256698
                                    (let ((__tmp256699
                                           (let ((__tmp256719
                                                  (let ((__tmp256720
                                                         (let ((__tmp256732
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp250877_ '())))
                       (__tmp256721
                        (let ((__tmp256722
                               (let ((__tmp256723
                                      (let ((__tmp256730
                                             (let ((__tmp256731
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp256731)))
                                            (__tmp256724
                                             (let ((__tmp256728
                                                    (let ((__tmp256729
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t250873_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp256729)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp256725
                                                    (let ((__tmp256726
                                                           (let ((__tmp256727
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id250874_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp256727))))
              (declare (not safe))
              (cons __tmp256726 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp256728
                                                     __tmp256725))))
                                        (declare (not safe))
                                        (cons __tmp256730 __tmp256724))))
                                 (declare (not safe))
                                 (cons '%#call __tmp256723))))
                          (declare (not safe))
                          (cons __tmp256722 '()))))
                   (declare (not safe))
                   (cons __tmp256732 __tmp256721))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp256720 '())))
                                                 (__tmp256700
                                                  (let ((__tmp256701
                                                         (let ((__tmp256702
                                                                (let ((__tmp256717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp256718
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp250877_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp256718)))
                              (__tmp256703
                               (let ((__tmp256715
                                      (let ((__tmp256716
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp250877_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp256716)))
                                     (__tmp256704
                                      (let ((__tmp256705
                                             (let ((__tmp256706
                                                    (let ((__tmp256713
                                                           (let ((__tmp256714
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp256714)))
                  (__tmp256707
                   (let ((__tmp256711
                          (let ((__tmp256712
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp256712)))
                         (__tmp256708
                          (let ((__tmp256709
                                 (let ((__tmp256710
                                        (let ()
                                          (declare (not safe))
                                          (cons _id250874_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp256710))))
                            (declare (not safe))
                            (cons __tmp256709 '()))))
                     (declare (not safe))
                     (cons __tmp256711 __tmp256708))))
              (declare (not safe))
              (cons __tmp256713 __tmp256707))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp256706))))
                                        (declare (not safe))
                                        (cons __tmp256705 '()))))
                                 (declare (not safe))
                                 (cons __tmp256715 __tmp256704))))
                          (declare (not safe))
                          (cons __tmp256717 __tmp256703))))
                   (declare (not safe))
                   (cons '%#if __tmp256702))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp256701 '()))))
                                             (declare (not safe))
                                             (cons __tmp256719 __tmp256700))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp256699))))
                               (declare (not safe))
                               (cons __tmp256698 '()))))
                        (declare (not safe))
                        (cons __tmp256733 __tmp256697)))))
                 (_generate-class-check-bind247559_
                  (lambda (_$t250869_ _class-type250870_ _$class-type250871_)
                    (let ((__tmp256745
                           (let ()
                             (declare (not safe))
                             (cons _$class-type250871_ '())))
                          (__tmp256734
                           (let ((__tmp256735
                                  (let ((__tmp256736
                                         (let ((__tmp256743
                                                (let ((__tmp256744
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp256744)))
                                               (__tmp256737
                                                (let ((__tmp256741
                                                       (let ((__tmp256742
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t250869_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp256742)))
              (__tmp256738
               (let ((__tmp256739
                      (let ((__tmp256740
                             (let ()
                               (declare (not safe))
                               (cons _class-type250870_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp256740))))
                 (declare (not safe))
                 (cons __tmp256739 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256741
                                                        __tmp256738))))
                                           (declare (not safe))
                                           (cons __tmp256743 __tmp256737))))
                                    (declare (not safe))
                                    (cons '%#call __tmp256736))))
                             (declare (not safe))
                             (cons __tmp256735 '()))))
                      (declare (not safe))
                      (cons __tmp256745 __tmp256734))))
                 (_generate-struct-check-bind247560_
                  (lambda (_$t250865_ _class-type250866_ _$class-type250867_)
                    (let ((__tmp256757
                           (let ()
                             (declare (not safe))
                             (cons _$class-type250867_ '())))
                          (__tmp256746
                           (let ((__tmp256747
                                  (let ((__tmp256748
                                         (let ((__tmp256755
                                                (let ((__tmp256756
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp256756)))
                                               (__tmp256749
                                                (let ((__tmp256753
                                                       (let ((__tmp256754
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t250865_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp256754)))
              (__tmp256750
               (let ((__tmp256751
                      (let ((__tmp256752
                             (let ()
                               (declare (not safe))
                               (cons _class-type250866_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp256752))))
                 (declare (not safe))
                 (cons __tmp256751 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256753
                                                        __tmp256750))))
                                           (declare (not safe))
                                           (cons __tmp256755 __tmp256749))))
                                    (declare (not safe))
                                    (cons '%#call __tmp256748))))
                             (declare (not safe))
                             (cons __tmp256747 '()))))
                      (declare (not safe))
                      (cons __tmp256757 __tmp256746))))
                 (_generate-specializer-impl247561_
                  (lambda (_$t250814_
                           _methods-bind250815_
                           _slots-bind250816_
                           _class-check-bind250817_
                           _struct-check-bind250818_
                           _specializer-impl250819_
                           _lifted-specializer-id250820_
                           _unchecked-specializer-impl250821_)
                    (let ((__tmp256758
                           (let ((__tmp256759
                                  (let ((__tmp256785
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t250814_ '())))
                                        (__tmp256760
                                         (let ((__tmp256761
                                                (let ((__tmp256762
                                                       (let ((__tmp256782
                                                              (let ((__tmp256783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp256784
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind250818_
                                              _class-check-bind250817_))))
                               (declare (not safe))
                               (foldr1 cons __tmp256784 _slots-bind250816_))))
                        (declare (not safe))
                        (foldr1 cons __tmp256783 _methods-bind250815_)))
                     (__tmp256763
                      (let ((__tmp256764
                             (if (or _lifted-specializer-id250820_
                                     _unchecked-specializer-impl250821_)
                                 (let* ((_$specializer250826_
                                         (let ((__tmp256765
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp256765)))
                                        (__tmp256766
                                         (let ((__tmp256778
                                                (let ((__tmp256779
                                                       (let ((__tmp256781
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer250826_ '())))
                     (__tmp256780
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl250819_ '()))))
                 (declare (not safe))
                 (cons __tmp256781 __tmp256780))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256779 '())))
                                               (__tmp256767
                                                (let ((__tmp256768
                                                       (let _recur250828_ ((_rest250830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind250818_)))
                 (let* ((_rest250831250839_ _rest250830_)
                        (_else250833250847_
                         (lambda ()
                           (if _lifted-specializer-id250820_
                               (let ((__tmp256769
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id250820_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp256769))
                               _unchecked-specializer-impl250821_)))
                        (_K250835250853_
                         (lambda (_rest250850_ _checkq250851_)
                           (let ((__tmp256770
                                  (let ((__tmp256776
                                         (let ((__tmp256777
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq250851_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp256777)))
                                        (__tmp256771
                                         (let ((__tmp256775
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur250828_
                                                   _rest250850_)))
                                               (__tmp256772
                                                (let ((__tmp256773
                                                       (let ((__tmp256774
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer250826_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp256774))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256773 '()))))
                                           (declare (not safe))
                                           (cons __tmp256775 __tmp256772))))
                                    (declare (not safe))
                                    (cons __tmp256776 __tmp256771))))
                             (declare (not safe))
                             (cons '%#if __tmp256770)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest250831250839_))
                       (let ((_hd250836250856_
                              (let ()
                                (declare (not safe))
                                (##car _rest250831250839_)))
                             (_tl250837250858_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest250831250839_))))
                         (let* ((_checkq250861_ _hd250836250856_)
                                (_rest250863_ _tl250837250858_))
                           (declare (not safe))
                           (_K250835250853_ _rest250863_ _checkq250861_)))
                       (let () (declare (not safe)) (_else250833250847_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256768 '()))))
                                           (declare (not safe))
                                           (cons __tmp256778 __tmp256767))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp256766))
                                 _specializer-impl250819_)))
                        (declare (not safe))
                        (cons __tmp256764 '()))))
                 (declare (not safe))
                 (cons __tmp256782 __tmp256763))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp256762))))
                                           (declare (not safe))
                                           (cons __tmp256761 '()))))
                                    (declare (not safe))
                                    (cons __tmp256785 __tmp256760))))
                             (declare (not safe))
                             (cons '%#lambda __tmp256759))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp256758 _stx247555_))))
                 (_generate-specializer-def247562_
                  (lambda (_id250808_
                           _specializer-id250809_
                           _specializer-impl250810_
                           _lifted-specializer-id250811_
                           _unchecked-specializer-impl250812_)
                    (let ((__tmp256786
                           (let ((__tmp256787
                                  (let ((__tmp256788
                                         (let ((__tmp256808
                                                (let ((__tmp256809
                                                       (let ((__tmp256810
                                                              (let ((__tmp256812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id250809_ '())))
                            (__tmp256811
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl250810_ '()))))
                        (declare (not safe))
                        (cons __tmp256812 __tmp256811))))
                 (declare (not safe))
                 (cons '%#define-values __tmp256810))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp256809
                                                   _stx247555_)))
                                               (__tmp256789
                                                (let ((__tmp256796
                                                       (let ((__tmp256797
                                                              (let ((__tmp256798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp256799
                                    (let ((__tmp256806
                                           (let ((__tmp256807
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp256807)))
                                          (__tmp256800
                                           (let ((__tmp256804
                                                  (let ((__tmp256805
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id250808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp256805)))
                                                 (__tmp256801
                                                  (let ((__tmp256802
                                                         (let ((__tmp256803
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id250809_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp256803))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp256802 '()))))
                                             (declare (not safe))
                                             (cons __tmp256804 __tmp256801))))
                                      (declare (not safe))
                                      (cons __tmp256806 __tmp256800))))
                               (declare (not safe))
                               (cons '%#call __tmp256799))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp256798 _stx247555_))))
                 (declare (not safe))
                 (cons __tmp256797 '())))
              (__tmp256790
               (if _lifted-specializer-id250811_
                   (let ((__tmp256791
                          (let ((__tmp256792
                                 (let ((__tmp256793
                                        (let ((__tmp256795
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id250811_
                                                       '())))
                                              (__tmp256794
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl250812_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp256795 __tmp256794))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp256793))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp256792 _stx247555_))))
                     (declare (not safe))
                     (cons __tmp256791 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp256796
                                                          __tmp256790))))
                                           (declare (not safe))
                                           (cons __tmp256808 __tmp256789))))
                                    (declare (not safe))
                                    (cons _stx247555_ __tmp256788))))
                             (declare (not safe))
                             (cons '%#begin __tmp256787))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp256786 _stx247555_)))))
          (let* ((___stx255599255600_ _stx247555_)
                 (_g247565247585_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx255599255600_)))))
            (let ((___kont255601255602_
                   (lambda (_L247629_ _L247630_)
                     (let ((_method-calls247649_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_slot-refs247650_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_class-type-check247651_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-check247652_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-assert247653_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_empty247654_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?))))
                       (letrec ((_no-specializer?247656_
                                 (lambda ()
                                   (if (let ((__tmp256817
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls247649_))))
                                         (declare (not safe))
                                         (fxzero? __tmp256817))
                                       (if (let ((__tmp256816
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs247650_))))
                                             (declare (not safe))
                                             (fxzero? __tmp256816))
                                           (if (let ((__tmp256815
                                                      (let ()
                                                        (declare (not safe))
                                                        (table-length
                                                         _class-type-check247651_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp256815))
                                               (if (let ((__tmp256814
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-check247652_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp256814))
                                                   (let ((__tmp256813
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-assert247653_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp256813))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?247657_
                                 (lambda ()
                                   (let ((_$e250801_
                                          (let ((__tmp256818
                                                 (let ((__tmp256819
                                                        (let ()
                                                          (declare (not safe))
                                                          (table-length
                                                           _struct-type-check247652_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp256819))))
                                            (declare (not safe))
                                            (not __tmp256818))))
                                     (if _$e250801_
                                         _$e250801_
                                         (let ((__tmp256820
                                                (let ((__tmp256821
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-length
                                                          _struct-type-assert247653_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp256821))))
                                           (declare (not safe))
                                           (not __tmp256820))))))
                                (_lift-unchecked-specializer?247658_
                                 (lambda ()
                                   (if (let ((__tmp256824
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls247649_))))
                                         (declare (not safe))
                                         (fxzero? __tmp256824))
                                       (if (let ((__tmp256823
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs247650_))))
                                             (declare (not safe))
                                             (fxzero? __tmp256823))
                                           (let ((__tmp256822
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _class-type-check247651_))))
                                             (declare (not safe))
                                             (fxzero? __tmp256822))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L247629_))
                             (let* ((___stx255513255514_ _L247629_)
                                    (_g248171248189_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx255513255514_)))))
                               (let ((___kont255515255516_
                                      (lambda (_L248225_ _L248226_ _L248227_)
                                        (for-each
                                         (lambda (_g248242248244_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g248242248244_
                                              _L248227_
                                              _method-calls247649_
                                              _slot-refs247650_
                                              _class-type-check247651_
                                              _struct-type-check247652_
                                              _struct-type-assert247653_)))
                                         _L248225_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?247656_))
                                            _stx247555_
                                            (let* ((_specializer-id248253_
                                                    (let* ((_id248247_
                                                            (let ((__tmp256974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L247630_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp256974 '"::specialize")))
                   (_specializer-id248250_
                    (let ((__tmp256975
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx247555_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id248247_ __tmp256975))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id248250_))
              _specializer-id248250_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id248260_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?247658_))
                                                        (let* ((_id248255_
                                                                (let ((__tmp256976
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L247630_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp256976
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id248257_
                        (let ((__tmp256977
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx247555_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id248255_ __tmp256977))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id248257_))
                  _lifted-specializer-id248257_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t248262_
                                                    (let ((__tmp256978
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp256978)))
                                                   (_methods248264_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls247649_)))
                                                   (_$methods248268_
                                                    (map (lambda (_id248266_)
                                                           (let ((__tmp256979
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id248266_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp256979)))
                 _methods248264_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g256980_
                                                    (for-each
                                                     (lambda (_g248269248272_
                                                              _g248270248274_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls247649_
                                                          _g248269248272_
                                                          _g248270248274_)))
                                                     _methods248264_
                                                     _$methods248268_))
                                                   (_methods-bind248285_
                                                    (map (lambda (_g248277248280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g248278248282_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind247557_
                      _$t248262_
                      _g248277248280_
                      _g248278248282_)))
                 _methods248264_
                 _$methods248268_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots248287_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs247650_)))
                                                   (_$slots248291_
                                                    (map (lambda (_id248289_)
                                                           (let ((__tmp256981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id248289_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp256981)))
                 _slots248287_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g256982_
                                                    (for-each
                                                     (lambda (_g248292248295_
                                                              _g248293248297_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs247650_
                                                          _g248292248295_
                                                          _g248293248297_)))
                                                     _slots248287_
                                                     _$slots248291_))
                                                   (_slots-bind248308_
                                                    (map (lambda (_g248300248303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g248301248305_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind247558_
                      _$t248262_
                      _g248300248303_
                      _g248301248305_)))
                 _slots248287_
                 _$slots248291_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check248310_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check247651_)))
                                                   (_$class-check248313_
                                                    (map (lambda (_g256983_)
                                                           (let ((__tmp256984
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp256984)))
                 _class-check248310_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g256985_
                                                    (for-each
                                                     (lambda (_g248314248317_
                                                              _g248315248319_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check247651_
                                                          _g248314248317_
                                                          _g248315248319_)))
                                                     _class-check248310_
                                                     _$class-check248313_))
                                                   (_class-check-bind248330_
                                                    (map (lambda (_g248322248325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g248323248327_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind247559_
                      _$t248262_
                      _g248322248325_
                      _g248323248327_)))
                 _class-check248310_
                 _$class-check248313_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all248332_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check247652_
                                                       _struct-type-assert247653_)))
                                                   (_struct-check248334_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all248332_)))
                                                   (_$struct-check248337_
                                                    (map (lambda (_g256986_)
                                                           (let ((__tmp256987
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp256987)))
                 _struct-check248334_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g256988_
                                                    (for-each
                                                     (lambda (_g248338248341_
                                                              _g248339248343_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all248332_
                                                          _g248338248341_
                                                          _g248339248343_)))
                                                     _struct-check248334_
                                                     _$struct-check248337_))
                                                   (_struct-check-bind248354_
                                                    (map (lambda (_g248346248349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g248347248351_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind247560_
                      _$t248262_
                      _g248346248349_
                      _g248347248351_)))
                 _struct-check248334_
                 _$struct-check248337_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl248365_
                                                    (lambda (_struct-type-check1248356_
                                                             _struct-type-check2248357_)
                                                      (let* ((_specializer-body248363_
                                                              (map (lambda (_g248358248360_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g248358248360_
                                _L248227_
                                _$t248262_
                                _method-calls247649_
                                _slot-refs247650_
                                _class-type-check247651_
                                _struct-type-check1248356_
                                _struct-type-check2248357_)))
                           _L248225_))
                     (__tmp256989
                      (let ((__tmp256990
                             (let ((__tmp256991
                                    (let ()
                                      (declare (not safe))
                                      (cons _L248227_ _L248226_))))
                               (declare (not safe))
                               (cons __tmp256991 _specializer-body248363_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp256990))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp256989 _stx247555_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl248367_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl248365_
                                                       _struct-check-all248332_
                                                       _empty247654_)))
                                                   (_unchecked-specializer-impl248369_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?247657_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl248365_
                                                           _empty247654_
                                                           _struct-check-all248332_))
                                                        '#f))
                                                   (_specializer-impl248371_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl247561_
                                                       _$t248262_
                                                       _methods-bind248285_
                                                       _slots-bind248308_
                                                       _class-check-bind248330_
                                                       _struct-check-bind248354_
                                                       _specializer-impl248367_
                                                       _lifted-specializer-id248260_
                                                       _unchecked-specializer-impl248369_))))
                                              (let ((__tmp256993
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L247630_)))
                                                    (__tmp256992
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id248253_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp256993
                                                 '" => "
                                                 __tmp256992))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def247562_
                                                 _L247630_
                                                 _specializer-id248253_
                                                 _specializer-impl248371_
                                                 _lifted-specializer-id248260_
                                                 _unchecked-specializer-impl248369_))))))
                                     (___kont255517255518_
                                      (lambda () _stx247555_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx255513255514_))
                                     (let ((_e248178248201_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx255513255514_))))
                                       (let ((_tl248176248206_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e248178248201_)))
                                             (_hd248177248204_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e248178248201_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl248176248206_))
                                             (let ((_e248181248209_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl248176248206_))))
                                               (let ((_tl248179248214_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e248181248209_)))
                                                     (_hd248180248212_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e248181248209_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd248180248212_))
                                                     (let ((_e248184248217_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd248180248212_))))
                                                       (let ((_tl248182248222_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e248184248217_)))
                     (_hd248183248220_
                      (let () (declare (not safe)) (##car _e248184248217_))))
                 (___kont255515255516_
                  _tl248179248214_
                  _tl248182248222_
                  _hd248183248220_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont255517255518_))))
                                             (___kont255517255518_))))
                                     (___kont255517255518_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L247629_))
                                 (let* ((_g248377248396_
                                         (lambda (_g248378248393_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g248378248393_))))
                                        (_g248376248747_
                                         (lambda (_g248378248399_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g248378248399_))
                                               (let ((_e248382248401_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g248378248399_))))
                                                 (let ((_hd248381248404_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e248382248401_)))
                                                       (_tl248380248406_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e248382248401_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl248380248406_))
                                                       (let ((_g256950_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl248380248406_ '0))))
                 (begin
                   (let ((_g256951_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g256950_)
                                (##vector-length _g256950_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g256951_ 2)))
                         (error "Context expects 2 values" _g256951_)))
                   (let ((_target248383248409_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g256950_ 0)))
                         (_tl248385248411_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g256950_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl248385248411_))
                         (letrec ((_loop248386248414_
                                   (lambda (_hd248384248417_
                                            _clause248390248419_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd248384248417_))
                                         (let ((_e248387248422_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd248384248417_))))
                                           (let ((_lp-hd248388248425_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e248387248422_)))
                                                 (_lp-tl248389248427_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e248387248422_))))
                                             (let ((__tmp256973
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd248388248425_
                                                            _clause248390248419_))))
                                               (declare (not safe))
                                               (_loop248386248414_
                                                _lp-tl248389248427_
                                                __tmp256973))))
                                         (let ((_clause248391248430_
                                                (reverse _clause248390248419_)))
                                           ((lambda (_L248433_)
                                              (for-each
                                               (lambda (_clause248446_)
                                                 (let* ((___stx255539255540_
                                                         _clause248446_)
                                                        (_g248449248464_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx255539255540_)))))
                                                   (let ((___kont255541255542_
                                                          (lambda (_L248492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L248493_
                           _L248494_)
                    (for-each
                     (lambda (_g248509248511_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g248509248511_
                          _L248494_
                          _method-calls247649_
                          _slot-refs247650_
                          _class-type-check247651_
                          _struct-type-check247652_
                          _struct-type-assert247653_)))
                     _L248492_)))
                 (___kont255543255544_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx255539255540_))
                                                         (let ((_e248456248476_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx255539255540_))))
                   (let ((_tl248454248481_
                          (let ()
                            (declare (not safe))
                            (##cdr _e248456248476_)))
                         (_hd248455248479_
                          (let ()
                            (declare (not safe))
                            (##car _e248456248476_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd248455248479_))
                         (let ((_e248459248484_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd248455248479_))))
                           (let ((_tl248457248489_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e248459248484_)))
                                 (_hd248458248487_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e248459248484_))))
                             (___kont255541255542_
                              _tl248454248481_
                              _tl248457248489_
                              _hd248458248487_)))
                         (___kont255543255544_))))
                 (___kont255543255544_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp256952
                                                      (lambda (_g248516248519_
                                                               _g248517248521_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g248516248519_
                                                                _g248517248521_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp256952
                                                         '()
                                                         _L248433_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?247656_))
                                                  _stx247555_
                                                  (let* ((_specializer-id248530_
                                                          (let* ((_id248524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp256953
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L247630_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp256953 '"::specialize")))
                         (_specializer-id248527_
                          (let ((__tmp256954
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx247555_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id248524_ __tmp256954))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id248527_))
                    _specializer-id248527_))
                 (_lifted-specializer-id248537_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?247658_))
                      (let* ((_id248532_
                              (let ((__tmp256955
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L247630_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp256955
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id248534_
                              (let ((__tmp256956
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx247555_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id248532_
                                 __tmp256956))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id248534_))
                        _lifted-specializer-id248534_)
                      '#f))
                 (_$t248539_
                  (let ((__tmp256957 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp256957)))
                 (_methods248541_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls247649_)))
                 (_$methods248545_
                  (map (lambda (_id248543_)
                         (let ((__tmp256958 (gensym _id248543_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp256958)))
                       _methods248541_))
                 (_g256959_
                  (for-each
                   (lambda (_g248546248549_ _g248547248551_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls247649_
                        _g248546248549_
                        _g248547248551_)))
                   _methods248541_
                   _$methods248545_))
                 (_methods-bind248562_
                  (map (lambda (_g248554248557_ _g248555248559_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind247557_
                            _$t248539_
                            _g248554248557_
                            _g248555248559_)))
                       _methods248541_
                       _$methods248545_))
                 (_slots248564_
                  (let () (declare (not safe)) (hash-keys _slot-refs247650_)))
                 (_$slots248568_
                  (map (lambda (_id248566_)
                         (let ((__tmp256960 (gensym _id248566_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp256960)))
                       _slots248564_))
                 (_g256961_
                  (for-each
                   (lambda (_g248569248572_ _g248570248574_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs247650_
                        _g248569248572_
                        _g248570248574_)))
                   _slots248564_
                   _$slots248568_))
                 (_slots-bind248585_
                  (map (lambda (_g248577248580_ _g248578248582_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind247558_
                            _$t248539_
                            _g248577248580_
                            _g248578248582_)))
                       _slots248564_
                       _$slots248568_))
                 (_class-check248587_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check247651_)))
                 (_$class-check248590_
                  (map (lambda (_g256962_)
                         (let ((__tmp256963 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp256963)))
                       _class-check248587_))
                 (_g256964_
                  (for-each
                   (lambda (_g248591248594_ _g248592248596_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check247651_
                        _g248591248594_
                        _g248592248596_)))
                   _class-check248587_
                   _$class-check248590_))
                 (_class-check-bind248607_
                  (map (lambda (_g248599248602_ _g248600248604_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind247559_
                            _$t248539_
                            _g248599248602_
                            _g248600248604_)))
                       _class-check248587_
                       _$class-check248590_))
                 (_struct-check-all248609_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check247652_
                     _struct-type-assert247653_)))
                 (_struct-check248611_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all248609_)))
                 (_$struct-check248614_
                  (map (lambda (_g256965_)
                         (let ((__tmp256966 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp256966)))
                       _struct-check248611_))
                 (_g256967_
                  (for-each
                   (lambda (_g248615248618_ _g248616248620_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all248609_
                        _g248615248618_
                        _g248616248620_)))
                   _struct-check248611_
                   _$struct-check248614_))
                 (_struct-check-bind248631_
                  (map (lambda (_g248623248626_ _g248624248628_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind247560_
                            _$t248539_
                            _g248623248626_
                            _g248624248628_)))
                       _struct-check248611_
                       _$struct-check248614_))
                 (_make-specializer-impl248738_
                  (lambda (_struct-type-check1248633_
                           _struct-type-check2248634_)
                    (let* ((_specializer-clauses248736_
                            (map (lambda (_clause248636_)
                                   (let* ((___stx255559255560_ _clause248636_)
                                          (_g248639248654_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx255559255560_)))))
                                     (let ((___kont255561255562_
                                            (lambda (_L248682_
                                                     _L248683_
                                                     _L248684_)
                                              (let* ((_body248724_
                                                      (map (lambda (_g248719248721_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g248719248721_
                        _L248684_
                        _$t248539_
                        _method-calls247649_
                        _slot-refs247650_
                        _class-type-check247651_
                        _struct-type-check1248633_
                        _struct-type-check2248634_)))
                   _L248682_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp256968
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L248684_
                                                              _L248683_))))
                                                (declare (not safe))
                                                (cons __tmp256968
                                                      _body248724_))))
                                           (___kont255563255564_
                                            (lambda () _clause248636_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx255559255560_))
                                           (let ((_e248646248666_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx255559255560_))))
                                             (let ((_tl248644248671_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e248646248666_)))
                                                   (_hd248645248669_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e248646248666_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd248645248669_))
                                                   (let ((_e248649248674_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd248645248669_))))
                                                     (let ((_tl248647248679_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e248649248674_)))
                                                           (_hd248648248677_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e248649248674_))))
                                                       (___kont255561255562_
                                                        _tl248644248671_
                                                        _tl248647248679_
                                                        _hd248648248677_)))
                                                   (___kont255563255564_))))
                                           (___kont255563255564_)))))
                                 (let ((__tmp256969
                                        (lambda (_g248728248731_
                                                 _g248729248733_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g248728248731_
                                                  _g248729248733_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp256969 '() _L248433_))))
                           (__tmp256970
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses248736_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp256970 _stx247555_))))
                 (_specializer-impl248740_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl248738_
                     _struct-check-all248609_
                     _empty247654_)))
                 (_unchecked-specializer-impl248742_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?247657_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl248738_
                         _empty247654_
                         _struct-check-all248609_))
                      '#f))
                 (_specializer-impl248744_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl247561_
                     _$t248539_
                     _methods-bind248562_
                     _slots-bind248585_
                     _class-check-bind248607_
                     _struct-check-bind248631_
                     _specializer-impl248740_
                     _lifted-specializer-id248537_
                     _unchecked-specializer-impl248742_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp256972
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L247630_)))
                                                          (__tmp256971
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id248530_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp256972
                                                       '" => "
                                                       __tmp256971))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def247562_
                                                       _L247630_
                                                       _specializer-id248530_
                                                       _specializer-impl248744_
                                                       _lifted-specializer-id248537_
                                                       _unchecked-specializer-impl248742_)))))
                                            _clause248391248430_))))))
                           (let ()
                             (declare (not safe))
                             (_loop248386248414_ _target248383248409_ '())))
                         (let ()
                           (declare (not safe))
                           (_g248377248396_ _g248378248399_))))))
               (let ()
                 (declare (not safe))
                 (_g248377248396_ _g248378248399_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g248377248396_
                                                  _g248378248399_))))))
                                   (declare (not safe))
                                   (_g248376248747_ _L247629_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L247629_))
                                     (let* ((_g248750248780_
                                             (lambda (_g248751248777_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g248751248777_))))
                                            (_g248749249468_
                                             (lambda (_g248751248783_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g248751248783_))
                                                   (let ((_e248757248785_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g248751248783_))))
                                                     (let ((_hd248756248788_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e248757248785_)))
                                                           (_tl248755248790_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e248757248785_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl248755248790_))
                                                           (let ((_e248760248793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl248755248790_))))
                     (let ((_hd248759248796_
                            (let ()
                              (declare (not safe))
                              (##car _e248760248793_)))
                           (_tl248758248798_
                            (let ()
                              (declare (not safe))
                              (##cdr _e248760248793_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd248759248796_))
                           (let ((_e248763248801_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd248759248796_))))
                             (let ((_hd248762248804_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e248763248801_)))
                                   (_tl248761248806_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e248763248801_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd248762248804_))
                                   (let ((_e248766248809_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd248762248804_))))
                                     (let ((_hd248765248812_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e248766248809_)))
                                           (_tl248764248814_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e248766248809_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd248765248812_))
                                           (let ((_e248769248817_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd248765248812_))))
                                             (let ((_hd248768248820_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e248769248817_)))
                                                   (_tl248767248822_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e248769248817_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl248767248822_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl248764248814_))
                                                       (let ((_e248772248825_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl248764248814_))))
                 (let ((_hd248771248828_
                        (let () (declare (not safe)) (##car _e248772248825_)))
                       (_tl248770248830_
                        (let () (declare (not safe)) (##cdr _e248772248825_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl248770248830_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl248761248806_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl248758248798_))
                               (let ((_e248775248833_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl248758248798_))))
                                 (let ((_hd248774248836_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e248775248833_)))
                                       (_tl248773248838_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e248775248833_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl248773248838_))
                                       ((lambda (_L248841_ _L248842_ _L248843_)
                                          (let* ((_g248866248884_
                                                  (lambda (_g248867248881_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g248867248881_))))
                                                 (_g248865248935_
                                                  (lambda (_g248867248887_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g248867248887_))
                                                        (let ((_e248873248889_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g248867248887_))))
                  (let ((_hd248872248892_
                         (let () (declare (not safe)) (##car _e248873248889_)))
                        (_tl248871248894_
                         (let ()
                           (declare (not safe))
                           (##cdr _e248873248889_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl248871248894_))
                        (let ((_e248876248897_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl248871248894_))))
                          (let ((_hd248875248900_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e248876248897_)))
                                (_tl248874248902_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e248876248897_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd248875248900_))
                                (let ((_e248879248905_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd248875248900_))))
                                  (let ((_hd248878248908_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e248879248905_)))
                                        (_tl248877248910_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e248879248905_))))
                                    ((lambda (_L248913_ _L248914_ _L248915_)
                                       (for-each
                                        (lambda (_g248930248932_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g248930248932_
                                             _L248915_
                                             _method-calls247649_
                                             _slot-refs247650_
                                             _class-type-check247651_
                                             _struct-type-check247652_
                                             _struct-type-assert247653_)))
                                        _L248913_))
                                     _tl248874248902_
                                     _tl248877248910_
                                     _hd248878248908_)))
                                (let ()
                                  (declare (not safe))
                                  (_g248866248884_ _g248867248887_)))))
                        (let ()
                          (declare (not safe))
                          (_g248866248884_ _g248867248887_)))))
                (let ()
                  (declare (not safe))
                  (_g248866248884_ _g248867248887_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g248865248935_ _L248842_))
                                          (let* ((_g248938248957_
                                                  (lambda (_g248939248954_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g248939248954_))))
                                                 (_g248937249076_
                                                  (lambda (_g248939248960_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g248939248960_))
                                                        (let ((_e248943248962_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g248939248960_))))
                  (let ((_hd248942248965_
                         (let () (declare (not safe)) (##car _e248943248962_)))
                        (_tl248941248967_
                         (let ()
                           (declare (not safe))
                           (##cdr _e248943248962_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl248941248967_))
                        (let ((_g256913_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl248941248967_
                                  '0))))
                          (begin
                            (let ((_g256914_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g256913_)
                                         (##vector-length _g256913_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g256914_ 2)))
                                  (error "Context expects 2 values"
                                         _g256914_)))
                            (let ((_target248944248970_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g256913_ 0)))
                                  (_tl248946248972_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g256913_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl248946248972_))
                                  (letrec ((_loop248947248975_
                                            (lambda (_hd248945248978_
                                                     _clause248951248980_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd248945248978_))
                                                  (let ((_e248948248983_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd248945248978_))))
                                                    (let ((_lp-hd248949248986_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e248948248983_)))
                                                          (_lp-tl248950248988_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e248948248983_))))
                                                      (let ((__tmp256916
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd248949248986_ _clause248951248980_))))
                (declare (not safe))
                (_loop248947248975_ _lp-tl248950248988_ __tmp256916))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause248952248991_
                                                         (reverse _clause248951248980_)))
                                                    ((lambda (_L248994_)
                                                       (for-each
                                                        (lambda (_clause249007_)
                                                          (let* ((_g249009249024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g249010249021_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g249010249021_))))
                         (_g249008249066_
                          (lambda (_g249010249027_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g249010249027_))
                                (let ((_e249016249029_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g249010249027_))))
                                  (let ((_hd249015249032_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e249016249029_)))
                                        (_tl249014249034_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e249016249029_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd249015249032_))
                                        (let ((_e249019249037_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd249015249032_))))
                                          (let ((_hd249018249040_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e249019249037_)))
                                                (_tl249017249042_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e249019249037_))))
                                            ((lambda (_L249045_
                                                      _L249046_
                                                      _L249047_)
                                               (for-each
                                                (lambda (_g249061249063_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g249061249063_
                                                     _L249047_
                                                     _method-calls247649_
                                                     _slot-refs247650_
                                                     _class-type-check247651_
                                                     _struct-type-check247652_
                                                     _struct-type-assert247653_)))
                                                _L249045_))
                                             _tl249014249034_
                                             _tl249017249042_
                                             _hd249018249040_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g249009249024_ _g249010249027_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g249009249024_ _g249010249027_))))))
                    (declare (not safe))
                    (_g249008249066_ _clause249007_)))
                (let ((__tmp256915
                       (lambda (_g249068249071_ _g249069249073_)
                         (let ()
                           (declare (not safe))
                           (cons _g249068249071_ _g249069249073_)))))
                  (declare (not safe))
                  (foldr1 __tmp256915 '() _L248994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause248952248991_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop248947248975_
                                       _target248944248970_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g248938248957_ _g248939248960_))))))
                        (let ()
                          (declare (not safe))
                          (_g248938248957_ _g248939248960_)))))
                (let ()
                  (declare (not safe))
                  (_g248938248957_ _g248939248960_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g248937249076_ _L248841_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?247656_))
                                              _stx247555_
                                              (let* ((_specializer-id249085_
                                                      (let* ((_id249079_
                                                              (let ((__tmp256917
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L247630_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp256917 '"::specialize")))
                     (_specializer-id249082_
                      (let ((__tmp256918
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx247555_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id249079_ __tmp256918))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id249082_))
                _specializer-id249082_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id249092_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?247658_))
                                                          (let* ((_id249087_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp256919
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L247630_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp256919
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id249089_
                          (let ((__tmp256920
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx247555_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id249087_ __tmp256920))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id249089_))
                    _lifted-specializer-id249089_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t249094_
                                                      (let ((__tmp256921
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp256921)))
                                                     (_methods249096_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls247649_)))
                                                     (_$methods249100_
                                                      (map (lambda (_id249098_)
                                                             (let ((__tmp256922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id249098_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp256922)))
                   _methods249096_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g256923_
                                                      (for-each
                                                       (lambda (_g249101249104_
                                                                _g249102249106_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls247649_
                                                            _g249101249104_
                                                            _g249102249106_)))
                                                       _methods249096_
                                                       _$methods249100_))
                                                     (_methods-bind249117_
                                                      (map (lambda (_g249109249112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g249110249114_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind247557_
                        _$t249094_
                        _g249109249112_
                        _g249110249114_)))
                   _methods249096_
                   _$methods249100_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots249119_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs247650_)))
                                                     (_$slots249123_
                                                      (map (lambda (_id249121_)
                                                             (let ((__tmp256924
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id249121_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp256924)))
                   _slots249119_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g256925_
                                                      (for-each
                                                       (lambda (_g249124249127_
                                                                _g249125249129_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs247650_
                                                            _g249124249127_
                                                            _g249125249129_)))
                                                       _slots249119_
                                                       _$slots249123_))
                                                     (_slots-bind249140_
                                                      (map (lambda (_g249132249135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g249133249137_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind247558_
                        _$t249094_
                        _g249132249135_
                        _g249133249137_)))
                   _slots249119_
                   _$slots249123_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check249142_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check247651_)))
                                                     (_$class-check249145_
                                                      (map (lambda (_g256926_)
                                                             (let ((__tmp256927
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp256927)))
                   _class-check249142_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g256928_
                                                      (for-each
                                                       (lambda (_g249146249149_
                                                                _g249147249151_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check247651_
                                                            _g249146249149_
                                                            _g249147249151_)))
                                                       _class-check249142_
                                                       _$class-check249145_))
                                                     (_class-check-bind249162_
                                                      (map (lambda (_g249154249157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g249155249159_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind247559_
                        _$t249094_
                        _g249154249157_
                        _g249155249159_)))
                   _class-check249142_
                   _$class-check249145_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all249164_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check247652_
                                                         _struct-type-assert247653_)))
                                                     (_struct-check249166_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all249164_)))
                                                     (_$struct-check249169_
                                                      (map (lambda (_g256929_)
                                                             (let ((__tmp256930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp256930)))
                   _struct-check249166_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g256931_
                                                      (for-each
                                                       (lambda (_g249170249173_
                                                                _g249171249175_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all249164_
                                                            _g249170249173_
                                                            _g249171249175_)))
                                                       _struct-check249166_
                                                       _$struct-check249169_))
                                                     (_struct-check-bind249186_
                                                      (map (lambda (_g249178249181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g249179249183_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind247560_
                        _$t249094_
                        _g249178249181_
                        _g249179249183_)))
                   _struct-check249166_
                   _$struct-check249169_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr249285_
                                                      (lambda (_struct-type-check1249188_
                                                               _struct-type-check2249189_)
                                                        (let* ((_g249191249209_
                                                                (lambda (_g249192249206_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g249192249206_))))
                       (_g249190249282_
                        (lambda (_g249192249212_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g249192249212_))
                              (let ((_e249198249214_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g249192249212_))))
                                (let ((_hd249197249217_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e249198249214_)))
                                      (_tl249196249219_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e249198249214_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl249196249219_))
                                      (let ((_e249201249222_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl249196249219_))))
                                        (let ((_hd249200249225_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e249201249222_)))
                                              (_tl249199249227_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e249201249222_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd249200249225_))
                                              (let ((_e249204249230_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd249200249225_))))
                                                (let ((_hd249203249233_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e249204249230_)))
                                                      (_tl249202249235_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e249204249230_))))
                                                  ((lambda (_L249238_
                                                            _L249239_
                                                            _L249240_)
                                                     (let* ((_body249280_
                                                             (map (lambda (_g249275249277_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g249275249277_
                               _L249240_
                               _$t249094_
                               _method-calls247649_
                               _slot-refs247650_
                               _class-type-check247651_
                               _struct-type-check1249188_
                               _struct-type-check2249189_)))
                          _L249238_))
                    (__tmp256932
                     (let ((__tmp256933
                            (let ((__tmp256934
                                   (let ()
                                     (declare (not safe))
                                     (cons _L249240_ _L249239_))))
                              (declare (not safe))
                              (cons __tmp256934 _body249280_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp256933))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp256932 _L248842_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl249199249227_
                                                   _tl249202249235_
                                                   _hd249203249233_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g249191249209_
                                                 _g249192249212_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g249191249209_ _g249192249212_)))))
                              (let ()
                                (declare (not safe))
                                (_g249191249209_ _g249192249212_))))))
                  (declare (not safe))
                  (_g249190249282_ _L248842_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr249446_
                                                      (lambda (_struct-type-check1249287_
                                                               _struct-type-check2249288_)
                                                        (let* ((_g249290249309_
                                                                (lambda (_g249291249306_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g249291249306_))))
                       (_g249289249443_
                        (lambda (_g249291249312_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g249291249312_))
                              (let ((_e249295249314_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g249291249312_))))
                                (let ((_hd249294249317_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e249295249314_)))
                                      (_tl249293249319_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e249295249314_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl249293249319_))
                                      (let ((_g256935_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl249293249319_
                                                '0))))
                                        (begin
                                          (let ((_g256936_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g256935_)
                                                       (##vector-length
                                                        _g256935_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g256936_ 2)))
                                                (error "Context expects 2 values"
                                                       _g256936_)))
                                          (let ((_target249296249322_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g256935_ 0)))
                                                (_tl249298249324_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g256935_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl249298249324_))
                                                (letrec ((_loop249299249327_
                                                          (lambda (_hd249297249330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause249303249332_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd249297249330_))
                        (let ((_e249300249335_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd249297249330_))))
                          (let ((_lp-hd249301249338_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e249300249335_)))
                                (_lp-tl249302249340_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e249300249335_))))
                            (let ((__tmp256940
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd249301249338_
                                           _clause249303249332_))))
                              (declare (not safe))
                              (_loop249299249327_
                               _lp-tl249302249340_
                               __tmp256940))))
                        (let ((_clause249304249343_
                               (reverse _clause249303249332_)))
                          ((lambda (_L249346_)
                             (let* ((_clauses249441_
                                     (map (lambda (_clause249361_)
                                            (let* ((___stx255579255580_
                                                    _clause249361_)
                                                   (_g249364249379_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx255579255580_)))))
                                              (let ((___kont255581255582_
                                                     (lambda (_L249407_
                                                              _L249408_
                                                              _L249409_)
                                                       (let* ((_body249429_
                                                               (map (lambda (_g249424249426_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g249424249426_
                                 _L249409_
                                 _$t249094_
                                 _method-calls247649_
                                 _slot-refs247650_
                                 _class-type-check247651_
                                 _struct-type-check1249287_
                                 _struct-type-check2249288_)))
                            _L249407_))
                      (__tmp256937
                       (let ()
                         (declare (not safe))
                         (cons _L249409_ _L249408_))))
                 (declare (not safe))
                 (cons __tmp256937 _body249429_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont255583255584_
                                                     (lambda ()
                                                       _clause249361_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx255579255580_))
                                                    (let ((_e249371249391_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx255579255580_))))
                                                      (let ((_tl249369249396_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e249371249391_)))
                    (_hd249370249394_
                     (let () (declare (not safe)) (##car _e249371249391_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd249370249394_))
                    (let ((_e249374249399_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd249370249394_))))
                      (let ((_tl249372249404_
                             (let ()
                               (declare (not safe))
                               (##cdr _e249374249399_)))
                            (_hd249373249402_
                             (let ()
                               (declare (not safe))
                               (##car _e249374249399_))))
                        (___kont255581255582_
                         _tl249369249396_
                         _tl249372249404_
                         _hd249373249402_)))
                    (___kont255583255584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont255583255584_)))))
                                          (let ((__tmp256938
                                                 (lambda (_g249433249436_
                                                          _g249434249438_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g249433249436_
                                                           _g249434249438_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp256938
                                                    '()
                                                    _L249346_))))
                                    (__tmp256939
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses249441_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp256939 _L248841_)))
                           _clause249304249343_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop249299249327_
                                                     _target249296249322_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g249290249309_
                                                   _g249291249312_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g249290249309_ _g249291249312_)))))
                              (let ()
                                (declare (not safe))
                                (_g249290249309_ _g249291249312_))))))
                  (declare (not safe))
                  (_g249289249443_ _L248841_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl249451_
                                                      (lambda (_specializer-lambda-expr249448_
                                                               _specializer-case-lambda-expr249449_)
                                                        (let ((__tmp256941
                                                               (let ((__tmp256942
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp256944
                                     (let ((__tmp256945
                                            (let ((__tmp256947
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L248843_ '())))
                                                  (__tmp256946
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr249448_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp256947 __tmp256946))))
                                       (declare (not safe))
                                       (cons __tmp256945 '())))
                                    (__tmp256943
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr249449_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp256944 __tmp256943))))
                         (declare (not safe))
                         (cons '%#let-values __tmp256942))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp256941 _stx247555_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr249453_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr249285_
                                                         _struct-check-all249164_
                                                         _empty247654_)))
                                                     (_specializer-case-lambda-expr249455_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr249446_
                                                         _struct-check-all249164_
                                                         _empty247654_)))
                                                     (_specializer-impl249457_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl249451_
                                                         _specializer-lambda-expr249453_
                                                         _specializer-case-lambda-expr249455_)))
                                                     (_unchecked-specializer-lambda-expr249459_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?247657_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr249285_
                                                             _empty247654_
                                                             _struct-check-all249164_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr249461_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?247657_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr249446_
                                                             _empty247654_
                                                             _struct-check-all249164_))
                                                          '#f))
                                                     (_unchecked-specializer-impl249463_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?247657_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl249451_
                                                             _unchecked-specializer-lambda-expr249459_
                                                             _unchecked-specializer-case-lambda-expr249461_))
                                                          '#f))
                                                     (_specializer-impl249465_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl247561_
                                                         _$t249094_
                                                         _methods-bind249117_
                                                         _slots-bind249140_
                                                         _class-check-bind249162_
                                                         _struct-check-bind249186_
                                                         _specializer-impl249457_
                                                         _lifted-specializer-id249092_
                                                         _unchecked-specializer-impl249463_))))
                                                (let ((__tmp256949
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L247630_)))
                                                      (__tmp256948
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id249085_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp256949
                                                   '" => "
                                                   __tmp256948))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def247562_
                                                   _L247630_
                                                   _specializer-id249085_
                                                   _specializer-impl249465_
                                                   _lifted-specializer-id249092_
                                                   _unchecked-specializer-impl249463_)))))
                                        _hd248774248836_
                                        _hd248771248828_
                                        _hd248768248820_)
                                       (let ()
                                         (declare (not safe))
                                         (_g248750248780_ _g248751248783_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g248750248780_ _g248751248783_)))
                           (let ()
                             (declare (not safe))
                             (_g248750248780_ _g248751248783_)))
                       (let ()
                         (declare (not safe))
                         (_g248750248780_ _g248751248783_)))))
               (let () (declare (not safe)) (_g248750248780_ _g248751248783_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g248750248780_
                                                      _g248751248783_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g248750248780_
                                              _g248751248783_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g248750248780_ _g248751248783_)))))
                           (let ()
                             (declare (not safe))
                             (_g248750248780_ _g248751248783_)))))
                   (let ()
                     (declare (not safe))
                     (_g248750248780_ _g248751248783_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g248750248780_
                                                      _g248751248783_))))))
                                       (declare (not safe))
                                       (_g248749249468_ _L247629_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L247629_))
                                         (let* ((_g249471249524_
                                                 (lambda (_g249472249521_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g249472249521_))))
                                                (_g249470250796_
                                                 (lambda (_g249472249527_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g249472249527_))
                                                       (let ((_e249480249529_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g249472249527_))))
                 (let ((_hd249479249532_
                        (let () (declare (not safe)) (##car _e249480249529_)))
                       (_tl249478249534_
                        (let () (declare (not safe)) (##cdr _e249480249529_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd249479249532_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd249479249532_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl249478249534_))
                               (let ((_e249483249537_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl249478249534_))))
                                 (let ((_hd249482249540_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e249483249537_)))
                                       (_tl249481249542_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e249483249537_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd249482249540_))
                                       (let ((_e249486249545_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd249482249540_))))
                                         (let ((_hd249485249548_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e249486249545_)))
                                               (_tl249484249550_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e249486249545_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd249485249548_))
                                               (let ((_e249489249553_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd249485249548_))))
                                                 (let ((_hd249488249556_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e249489249553_)))
                                                       (_tl249487249558_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e249489249553_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd249488249556_))
                                                       (let ((_e249492249561_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd249488249556_))))
                 (let ((_hd249491249564_
                        (let () (declare (not safe)) (##car _e249492249561_)))
                       (_tl249490249566_
                        (let () (declare (not safe)) (##cdr _e249492249561_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl249490249566_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl249487249558_))
                           (let ((_e249495249569_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl249487249558_))))
                             (let ((_hd249494249572_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e249495249569_)))
                                   (_tl249493249574_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e249495249569_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd249494249572_))
                                   (let ((_e249498249577_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd249494249572_))))
                                     (let ((_hd249497249580_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e249498249577_)))
                                           (_tl249496249582_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e249498249577_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd249497249580_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd249497249580_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl249496249582_))
                                                   (let ((_e249501249585_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl249496249582_))))
                                                     (let ((_hd249500249588_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e249501249585_)))
                                                           (_tl249499249590_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e249501249585_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd249500249588_))
                                                           (let ((_e249504249593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd249500249588_))))
                     (let ((_hd249503249596_
                            (let ()
                              (declare (not safe))
                              (##car _e249504249593_)))
                           (_tl249502249598_
                            (let ()
                              (declare (not safe))
                              (##cdr _e249504249593_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd249503249596_))
                           (let ((_e249507249601_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd249503249596_))))
                             (let ((_hd249506249604_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e249507249601_)))
                                   (_tl249505249606_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e249507249601_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd249506249604_))
                                   (let ((_e249510249609_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd249506249604_))))
                                     (let ((_hd249509249612_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e249510249609_)))
                                           (_tl249508249614_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e249510249609_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl249508249614_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl249505249606_))
                                               (let ((_e249513249617_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl249505249606_))))
                                                 (let ((_hd249512249620_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e249513249617_)))
                                                       (_tl249511249622_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e249513249617_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl249511249622_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl249502249598_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl249499249590_))
                       (let ((_e249516249625_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl249499249590_))))
                         (let ((_hd249515249628_
                                (let ()
                                  (declare (not safe))
                                  (##car _e249516249625_)))
                               (_tl249514249630_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e249516249625_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl249514249630_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl249493249574_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl249484249550_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl249481249542_))
                                           (let ((_e249519249633_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl249481249542_))))
                                             (let ((_hd249518249636_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e249519249633_)))
                                                   (_tl249517249638_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e249519249633_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl249517249638_))
                                                   ((lambda (_L249641_
                                                             _L249642_
                                                             _L249643_
                                                             _L249644_
                                                             _L249645_)
                                                      (let* ((_g249684249746_
                                                              (lambda (_g249685249743_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g249685249743_))))
                     (_g249683250793_
                      (lambda (_g249685249749_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g249685249749_))
                            (let ((_e249693249751_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g249685249749_))))
                              (let ((_hd249692249754_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e249693249751_)))
                                    (_tl249691249756_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e249693249751_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd249692249754_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd249692249754_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl249691249756_))
                                            (let ((_e249696249759_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl249691249756_))))
                                              (let ((_hd249695249762_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e249696249759_)))
                                                    (_tl249694249764_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e249696249759_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl249694249764_))
                                                    (let ((_e249699249767_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl249694249764_))))
                                                      (let ((_hd249698249770_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e249699249767_)))
                    (_tl249697249772_
                     (let () (declare (not safe)) (##cdr _e249699249767_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd249698249770_))
                    (let ((_e249702249775_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd249698249770_))))
                      (let ((_hd249701249778_
                             (let ()
                               (declare (not safe))
                               (##car _e249702249775_)))
                            (_tl249700249780_
                             (let ()
                               (declare (not safe))
                               (##cdr _e249702249775_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd249701249778_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd249701249778_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl249700249780_))
                                    (let ((_e249705249783_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl249700249780_))))
                                      (let ((_hd249704249786_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e249705249783_)))
                                            (_tl249703249788_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e249705249783_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd249704249786_))
                                            (let ((_e249708249791_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd249704249786_))))
                                              (let ((_hd249707249794_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e249708249791_)))
                                                    (_tl249706249796_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e249708249791_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd249707249794_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd249707249794_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl249706249796_))
                                                            (let ((_e249711249799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl249706249796_))))
                      (let ((_hd249710249802_
                             (let ()
                               (declare (not safe))
                               (##car _e249711249799_)))
                            (_tl249709249804_
                             (let ()
                               (declare (not safe))
                               (##cdr _e249711249799_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl249709249804_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl249703249788_))
                                (let ((_e249714249807_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl249703249788_))))
                                  (let ((_hd249713249810_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e249714249807_)))
                                        (_tl249712249812_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e249714249807_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd249713249810_))
                                        (let ((_e249717249815_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd249713249810_))))
                                          (let ((_hd249716249818_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e249717249815_)))
                                                (_tl249715249820_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e249717249815_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd249716249818_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd249716249818_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl249715249820_))
                                                        (let ((_e249720249823_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl249715249820_))))
                  (let ((_hd249719249826_
                         (let () (declare (not safe)) (##car _e249720249823_)))
                        (_tl249718249828_
                         (let ()
                           (declare (not safe))
                           (##cdr _e249720249823_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl249718249828_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl249712249812_))
                            (let ((_e249723249831_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl249712249812_))))
                              (let ((_hd249722249834_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e249723249831_)))
                                    (_tl249721249836_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e249723249831_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd249722249834_))
                                    (let ((_e249726249839_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd249722249834_))))
                                      (let ((_hd249725249842_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e249726249839_)))
                                            (_tl249724249844_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e249726249839_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd249725249842_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd249725249842_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl249724249844_))
                                                    (let ((_e249729249847_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl249724249844_))))
                                                      (let ((_hd249728249850_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e249729249847_)))
                    (_tl249727249852_
                     (let () (declare (not safe)) (##cdr _e249729249847_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl249727249852_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl249721249836_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl249721249836_))
                                  '1)
                            (let ((_g256825_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl249721249836_
                                      '1))))
                              (begin
                                (let ((_g256826_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g256825_)
                                             (##vector-length _g256825_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g256826_ 2)))
                                      (error "Context expects 2 values"
                                             _g256826_)))
                                (let ((_target249730249855_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g256825_ 0)))
                                      (_tl249732249857_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g256825_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl249732249857_))
                                      (let ((_e249741249860_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl249732249857_))))
                                        (let ((_hd249740249863_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e249741249860_)))
                                              (_tl249739249865_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e249741249860_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl249739249865_))
                                              (letrec ((_loop249733249868_
                                                        (lambda (_hd249731249871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref249737249873_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd249731249871_))
                      (let ((_e249734249876_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd249731249871_))))
                        (let ((_lp-hd249735249879_
                               (let ()
                                 (declare (not safe))
                                 (##car _e249734249876_)))
                              (_lp-tl249736249881_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e249734249876_))))
                          (let ((__tmp256912
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd249735249879_
                                         _kw-ref249737249873_))))
                            (declare (not safe))
                            (_loop249733249868_
                             _lp-tl249736249881_
                             __tmp256912))))
                      (let ((_kw-ref249738249884_
                             (reverse _kw-ref249737249873_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl249697249772_))
                            ((lambda (_L249887_
                                      _L249888_
                                      _L249889_
                                      _L249890_
                                      _L249891_)
                               (let* ((_kw-count249942_
                                       (length (let ((__tmp256827
                                                      (lambda (_g249934249937_
                                                               _g249935249939_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g249934249937_
                                                                _g249935249939_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp256827
                                                         '()
                                                         _L249888_))))
                                      (_self-index249944_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count249942_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L249643_))
                                     (let* ((_g249947249961_
                                             (lambda (_g249948249958_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g249948249958_))))
                                            (_g249946250132_
                                             (lambda (_g249948249964_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g249948249964_))
                                                   (let ((_e249953249966_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g249948249964_))))
                                                     (let ((_hd249952249969_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e249953249966_)))
                                                           (_tl249951249971_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e249953249966_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl249951249971_))
                                                           (let ((_e249956249974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl249951249971_))))
                     (let ((_hd249955249977_
                            (let ()
                              (declare (not safe))
                              (##car _e249956249974_)))
                           (_tl249954249979_
                            (let ()
                              (declare (not safe))
                              (##cdr _e249956249974_))))
                       ((lambda (_L249982_ _L249983_)
                          (let ((_self249999_
                                 (list-ref _L249983_ _self-index249944_)))
                            (for-each
                             (lambda (_g250000250002_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g250000250002_
                                  _self249999_
                                  _method-calls247649_
                                  _slot-refs247650_
                                  _class-type-check247651_
                                  _struct-type-check247652_
                                  _struct-type-assert247653_)))
                             _L249982_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?247656_))
                                _stx247555_
                                (let* ((_specializer-id250011_
                                        (let* ((_id250005_
                                                (let ((__tmp256878
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L247630_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp256878
                                                   '"::specialize")))
                                               (_specializer-id250008_
                                                (let ((__tmp256879
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx247555_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id250005_
                                                   __tmp256879))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id250008_))
                                          _specializer-id250008_))
                                       (_lifted-specializer-id250018_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?247658_))
                                            (let* ((_id250013_
                                                    (let ((__tmp256880
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L247630_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp256880
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id250015_
                                                    (let ((__tmp256881
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx247555_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id250013_
                                                       __tmp256881))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id250015_))
                                              _lifted-specializer-id250015_)
                                            '#f))
                                       (_$t250020_
                                        (let ((__tmp256882 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp256882)))
                                       (_methods250022_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls247649_)))
                                       (_$methods250026_
                                        (map (lambda (_id250024_)
                                               (let ((__tmp256883
                                                      (gensym _id250024_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp256883)))
                                             _methods250022_))
                                       (_g256884_
                                        (for-each
                                         (lambda (_g250027250030_
                                                  _g250028250032_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls247649_
                                              _g250027250030_
                                              _g250028250032_)))
                                         _methods250022_
                                         _$methods250026_))
                                       (_methods-bind250043_
                                        (map (lambda (_g250035250038_
                                                      _g250036250040_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind247557_
                                                  _$t250020_
                                                  _g250035250038_
                                                  _g250036250040_)))
                                             _methods250022_
                                             _$methods250026_))
                                       (_slots250045_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs247650_)))
                                       (_$slots250049_
                                        (map (lambda (_id250047_)
                                               (let ((__tmp256885
                                                      (gensym _id250047_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp256885)))
                                             _slots250045_))
                                       (_g256886_
                                        (for-each
                                         (lambda (_g250050250053_
                                                  _g250051250055_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs247650_
                                              _g250050250053_
                                              _g250051250055_)))
                                         _slots250045_
                                         _$slots250049_))
                                       (_slots-bind250066_
                                        (map (lambda (_g250058250061_
                                                      _g250059250063_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind247558_
                                                  _$t250020_
                                                  _g250058250061_
                                                  _g250059250063_)))
                                             _slots250045_
                                             _$slots250049_))
                                       (_class-check250068_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check247651_)))
                                       (_$class-check250071_
                                        (map (lambda (_g256887_)
                                               (let ((__tmp256888
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp256888)))
                                             _class-check250068_))
                                       (_g256889_
                                        (for-each
                                         (lambda (_g250072250075_
                                                  _g250073250077_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check247651_
                                              _g250072250075_
                                              _g250073250077_)))
                                         _class-check250068_
                                         _$class-check250071_))
                                       (_class-check-bind250088_
                                        (map (lambda (_g250080250083_
                                                      _g250081250085_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind247559_
                                                  _$t250020_
                                                  _g250080250083_
                                                  _g250081250085_)))
                                             _class-check250068_
                                             _$class-check250071_))
                                       (_struct-check-all250090_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check247652_
                                           _struct-type-assert247653_)))
                                       (_struct-check250092_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all250090_)))
                                       (_$struct-check250095_
                                        (map (lambda (_g256890_)
                                               (let ((__tmp256891
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp256891)))
                                             _struct-check250092_))
                                       (_g256892_
                                        (for-each
                                         (lambda (_g250096250099_
                                                  _g250097250101_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all250090_
                                              _g250096250099_
                                              _g250097250101_)))
                                         _struct-check250092_
                                         _$struct-check250095_))
                                       (_struct-check-bind250112_
                                        (map (lambda (_g250104250107_
                                                      _g250105250109_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind247560_
                                                  _$t250020_
                                                  _g250104250107_
                                                  _g250105250109_)))
                                             _struct-check250092_
                                             _$struct-check250095_))
                                       (_make-specializer-impl250123_
                                        (lambda (_struct-type-check1250114_
                                                 _struct-type-check2250115_)
                                          (let* ((_specializer-body250121_
                                                  (map (lambda (_g250116250118_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g250116250118_
                                                            _self249999_
                                                            _$t250020_
                                                            _method-calls247649_
                                                            _slot-refs247650_
                                                            _class-type-check247651_
                                                            _struct-type-check1250114_
                                                            _struct-type-check2250115_)))
                                                       _L249982_))
                                                 (__tmp256893
                                                  (let ((__tmp256894
                                                         (let ((__tmp256896
                                                                (let ((__tmp256897
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp256909
                                      (let ()
                                        (declare (not safe))
                                        (cons _L249645_ '())))
                                     (__tmp256898
                                      (let ((__tmp256899
                                             (let ((__tmp256900
                                                    (let ((__tmp256902
                                                           (let ((__tmp256903
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp256908
                                 (let ()
                                   (declare (not safe))
                                   (cons _L249644_ '())))
                                (__tmp256904
                                 (let ((__tmp256905
                                        (let ((__tmp256906
                                               (let ((__tmp256907
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L249983_
                                                              _specializer-body250121_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp256907))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp256906
                                           _L249643_))))
                                   (declare (not safe))
                                   (cons __tmp256905 '()))))
                            (declare (not safe))
                            (cons __tmp256908 __tmp256904))))
                     (declare (not safe))
                     (cons __tmp256903 '())))
                  (__tmp256901
                   (let () (declare (not safe)) (cons _L249642_ '()))))
              (declare (not safe))
              (cons __tmp256902 __tmp256901))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp256900))))
                                        (declare (not safe))
                                        (cons __tmp256899 '()))))
                                 (declare (not safe))
                                 (cons __tmp256909 __tmp256898))))
                          (declare (not safe))
                          (cons __tmp256897 '())))
                       (__tmp256895
                        (let () (declare (not safe)) (cons _L249641_ '()))))
                   (declare (not safe))
                   (cons __tmp256896 __tmp256895))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp256894))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp256893
                                             _stx247555_))))
                                       (_specializer-impl250125_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl250123_
                                           _struct-check-all250090_
                                           _empty247654_)))
                                       (_unchecked-specializer-impl250127_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?247657_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl250123_
                                               _empty247654_
                                               _struct-check-all250090_))
                                            '#f))
                                       (_specializer-impl250129_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl247561_
                                           _$t250020_
                                           _methods-bind250043_
                                           _slots-bind250066_
                                           _class-check-bind250088_
                                           _struct-check-bind250112_
                                           _specializer-impl250125_
                                           _lifted-specializer-id250018_
                                           _unchecked-specializer-impl250127_))))
                                  (let ((__tmp256911
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L247630_)))
                                        (__tmp256910
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id250011_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp256911
                                     '" => "
                                     __tmp256910))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def247562_
                                     _L247630_
                                     _specializer-id250011_
                                     _specializer-impl250129_
                                     _lifted-specializer-id250018_
                                     _unchecked-specializer-impl250127_))))))
                        _tl249954249979_
                        _hd249955249977_)))
                   (let ()
                     (declare (not safe))
                     (_g249947249961_ _g249948249964_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g249947249961_
                                                      _g249948249964_))))))
                                       (declare (not safe))
                                       (_g249946250132_ _L249643_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L249643_))
                                         (let* ((_g250135250165_
                                                 (lambda (_g250136250162_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g250136250162_))))
                                                (_g250134250790_
                                                 (lambda (_g250136250168_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g250136250168_))
                                                       (let ((_e250142250170_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g250136250168_))))
                 (let ((_hd250141250173_
                        (let () (declare (not safe)) (##car _e250142250170_)))
                       (_tl250140250175_
                        (let () (declare (not safe)) (##cdr _e250142250170_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl250140250175_))
                       (let ((_e250145250178_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl250140250175_))))
                         (let ((_hd250144250181_
                                (let ()
                                  (declare (not safe))
                                  (##car _e250145250178_)))
                               (_tl250143250183_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e250145250178_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd250144250181_))
                               (let ((_e250148250186_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd250144250181_))))
                                 (let ((_hd250147250189_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e250148250186_)))
                                       (_tl250146250191_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e250148250186_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd250147250189_))
                                       (let ((_e250151250194_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd250147250189_))))
                                         (let ((_hd250150250197_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e250151250194_)))
                                               (_tl250149250199_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e250151250194_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd250150250197_))
                                               (let ((_e250154250202_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd250150250197_))))
                                                 (let ((_hd250153250205_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e250154250202_)))
                                                       (_tl250152250207_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e250154250202_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl250152250207_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl250149250199_))
                                                           (let ((_e250157250210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl250149250199_))))
                     (let ((_hd250156250213_
                            (let ()
                              (declare (not safe))
                              (##car _e250157250210_)))
                           (_tl250155250215_
                            (let ()
                              (declare (not safe))
                              (##cdr _e250157250210_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl250155250215_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl250146250191_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl250143250183_))
                                   (let ((_e250160250218_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl250143250183_))))
                                     (let ((_hd250159250221_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e250160250218_)))
                                           (_tl250158250223_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e250160250218_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl250158250223_))
                                           ((lambda (_L250226_
                                                     _L250227_
                                                     _L250228_)
                                              (let* ((_g250251250265_
                                                      (lambda (_g250252250262_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g250252250262_))))
                                                     (_g250250250306_
                                                      (lambda (_g250252250268_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g250252250268_))
                                                            (let ((_e250257250270_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g250252250268_))))
                      (let ((_hd250256250273_
                             (let ()
                               (declare (not safe))
                               (##car _e250257250270_)))
                            (_tl250255250275_
                             (let ()
                               (declare (not safe))
                               (##cdr _e250257250270_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl250255250275_))
                            (let ((_e250260250278_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl250255250275_))))
                              (let ((_hd250259250281_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e250260250278_)))
                                    (_tl250258250283_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e250260250278_))))
                                ((lambda (_L250286_ _L250287_)
                                   (let ((_self250300_
                                          (list-ref
                                           _L250287_
                                           _self-index249944_)))
                                     (for-each
                                      (lambda (_g250301250303_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g250301250303_
                                           _self250300_
                                           _method-calls247649_
                                           _slot-refs247650_
                                           _class-type-check247651_
                                           _struct-type-check247652_
                                           _struct-type-assert247653_)))
                                      _L250286_)))
                                 _tl250258250283_
                                 _hd250259250281_)))
                            (let ()
                              (declare (not safe))
                              (_g250251250265_ _g250252250268_)))))
                    (let ()
                      (declare (not safe))
                      (_g250251250265_ _g250252250268_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g250250250306_ _L250227_))
                                              (let* ((_g250309250328_
                                                      (lambda (_g250310250325_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g250310250325_))))
                                                     (_g250308250433_
                                                      (lambda (_g250310250331_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g250310250331_))
                                                            (let ((_e250314250333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g250310250331_))))
                      (let ((_hd250313250336_
                             (let ()
                               (declare (not safe))
                               (##car _e250314250333_)))
                            (_tl250312250338_
                             (let ()
                               (declare (not safe))
                               (##cdr _e250314250333_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl250312250338_))
                            (let ((_g256828_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl250312250338_
                                      '0))))
                              (begin
                                (let ((_g256829_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g256828_)
                                             (##vector-length _g256828_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g256829_ 2)))
                                      (error "Context expects 2 values"
                                             _g256829_)))
                                (let ((_target250315250341_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g256828_ 0)))
                                      (_tl250317250343_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g256828_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl250317250343_))
                                      (letrec ((_loop250318250346_
                                                (lambda (_hd250316250349_
                                                         _clause250322250351_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd250316250349_))
                                                      (let ((_e250319250354_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd250316250349_))))
                (let ((_lp-hd250320250357_
                       (let () (declare (not safe)) (##car _e250319250354_)))
                      (_lp-tl250321250359_
                       (let () (declare (not safe)) (##cdr _e250319250354_))))
                  (let ((__tmp256831
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd250320250357_ _clause250322250351_))))
                    (declare (not safe))
                    (_loop250318250346_ _lp-tl250321250359_ __tmp256831))))
              (let ((_clause250323250362_ (reverse _clause250322250351_)))
                ((lambda (_L250365_)
                   (for-each
                    (lambda (_clause250378_)
                      (let* ((_g250380250391_
                              (lambda (_g250381250388_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g250381250388_))))
                             (_g250379250423_
                              (lambda (_g250381250394_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g250381250394_))
                                    (let ((_e250386250396_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g250381250394_))))
                                      (let ((_hd250385250399_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e250386250396_)))
                                            (_tl250384250401_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e250386250396_))))
                                        ((lambda (_L250404_ _L250405_)
                                           (let ((_self250417_
                                                  (list-ref
                                                   _L250405_
                                                   _self-index249944_)))
                                             (for-each
                                              (lambda (_g250418250420_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g250418250420_
                                                   _self250417_
                                                   _method-calls247649_
                                                   _slot-refs247650_
                                                   _class-type-check247651_
                                                   _struct-type-check247652_
                                                   _struct-type-assert247653_)))
                                              _L250404_)))
                                         _tl250384250401_
                                         _hd250385250399_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g250380250391_ _g250381250394_))))))
                        (declare (not safe))
                        (_g250379250423_ _clause250378_)))
                    (let ((__tmp256830
                           (lambda (_g250425250428_ _g250426250430_)
                             (let ()
                               (declare (not safe))
                               (cons _g250425250428_ _g250426250430_)))))
                      (declare (not safe))
                      (foldr1 __tmp256830 '() _L250365_))))
                 _clause250323250362_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop250318250346_
                                           _target250315250341_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g250309250328_ _g250310250331_))))))
                            (let ()
                              (declare (not safe))
                              (_g250309250328_ _g250310250331_)))))
                    (let ()
                      (declare (not safe))
                      (_g250309250328_ _g250310250331_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g250308250433_ _L250226_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?247656_))
                                                  _stx247555_
                                                  (let* ((_specializer-id250442_
                                                          (let* ((_id250436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp256832
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L247630_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp256832 '"::specialize")))
                         (_specializer-id250439_
                          (let ((__tmp256833
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx247555_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id250436_ __tmp256833))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id250439_))
                    _specializer-id250439_))
                 (_lifted-specializer-id250449_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?247658_))
                      (let* ((_id250444_
                              (let ((__tmp256834
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L247630_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp256834
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id250446_
                              (let ((__tmp256835
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx247555_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id250444_
                                 __tmp256835))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id250446_))
                        _lifted-specializer-id250446_)
                      '#f))
                 (_$t250451_
                  (let ((__tmp256836 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp256836)))
                 (_methods250453_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls247649_)))
                 (_$methods250457_
                  (map (lambda (_id250455_)
                         (let ((__tmp256837 (gensym _id250455_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp256837)))
                       _methods250453_))
                 (_g256838_
                  (for-each
                   (lambda (_g250458250461_ _g250459250463_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls247649_
                        _g250458250461_
                        _g250459250463_)))
                   _methods250453_
                   _$methods250457_))
                 (_methods-bind250474_
                  (map (lambda (_g250466250469_ _g250467250471_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind247557_
                            _$t250451_
                            _g250466250469_
                            _g250467250471_)))
                       _methods250453_
                       _$methods250457_))
                 (_slots250476_
                  (let () (declare (not safe)) (hash-keys _slot-refs247650_)))
                 (_$slots250480_
                  (map (lambda (_id250478_)
                         (let ((__tmp256839 (gensym _id250478_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp256839)))
                       _slots250476_))
                 (_g256840_
                  (for-each
                   (lambda (_g250481250484_ _g250482250486_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs247650_
                        _g250481250484_
                        _g250482250486_)))
                   _slots250476_
                   _$slots250480_))
                 (_slots-bind250497_
                  (map (lambda (_g250489250492_ _g250490250494_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind247558_
                            _$t250451_
                            _g250489250492_
                            _g250490250494_)))
                       _slots250476_
                       _$slots250480_))
                 (_class-check250499_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check247651_)))
                 (_$class-check250502_
                  (map (lambda (_g256841_)
                         (let ((__tmp256842 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp256842)))
                       _class-check250499_))
                 (_g256843_
                  (for-each
                   (lambda (_g250503250506_ _g250504250508_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check247651_
                        _g250503250506_
                        _g250504250508_)))
                   _class-check250499_
                   _$class-check250502_))
                 (_class-check-bind250519_
                  (map (lambda (_g250511250514_ _g250512250516_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind247559_
                            _$t250451_
                            _g250511250514_
                            _g250512250516_)))
                       _class-check250499_
                       _$class-check250502_))
                 (_struct-check-all250521_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check247652_
                     _struct-type-assert247653_)))
                 (_struct-check250523_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all250521_)))
                 (_$struct-check250526_
                  (map (lambda (_g256844_)
                         (let ((__tmp256845 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp256845)))
                       _struct-check250523_))
                 (_g256846_
                  (for-each
                   (lambda (_g250527250530_ _g250528250532_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all250521_
                        _g250527250530_
                        _g250528250532_)))
                   _struct-check250523_
                   _$struct-check250526_))
                 (_struct-check-bind250543_
                  (map (lambda (_g250535250538_ _g250536250540_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind247560_
                            _$t250451_
                            _g250535250538_
                            _g250536250540_)))
                       _struct-check250523_
                       _$struct-check250526_))
                 (_make-specializer-lambda-expr250629_
                  (lambda (_struct-type-check1250545_
                           _struct-type-check2250546_)
                    (let* ((_g250548250562_
                            (lambda (_g250549250559_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g250549250559_))))
                           (_g250547250626_
                            (lambda (_g250549250565_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g250549250565_))
                                  (let ((_e250554250567_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g250549250565_))))
                                    (let ((_hd250553250570_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e250554250567_)))
                                          (_tl250552250572_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e250554250567_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl250552250572_))
                                          (let ((_e250557250575_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl250552250572_))))
                                            (let ((_hd250556250578_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e250557250575_)))
                                                  (_tl250555250580_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e250557250575_))))
                                              ((lambda (_L250583_ _L250584_)
                                                 (let* ((_self250617_
                                                         (list-ref
                                                          _L250584_
                                                          _self-index249944_))
                                                        (_body250623_
                                                         (map (lambda (_g250618250620_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g250618250620_
                           _self250617_
                           _$t250451_
                           _method-calls247649_
                           _slot-refs247650_
                           _class-type-check247651_
                           _struct-type-check1250545_
                           _struct-type-check2250546_)))
                      _L250583_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp256847
                                                          (let ((__tmp256848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L250584_ _body250623_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp256848))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp256847
                                                      _L250227_))))
                                               _tl250555250580_
                                               _hd250556250578_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g250548250562_
                                             _g250549250565_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g250548250562_ _g250549250565_))))))
                      (declare (not safe))
                      (_g250547250626_ _L250227_))))
                 (_make-specializer-case-lambda-expr250768_
                  (lambda (_struct-type-check1250631_
                           _struct-type-check2250632_)
                    (let* ((_g250634250653_
                            (lambda (_g250635250650_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g250635250650_))))
                           (_g250633250765_
                            (lambda (_g250635250656_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g250635250656_))
                                  (let ((_e250639250658_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g250635250656_))))
                                    (let ((_hd250638250661_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e250639250658_)))
                                          (_tl250637250663_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e250639250658_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl250637250663_))
                                          (let ((_g256849_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl250637250663_
                                                    '0))))
                                            (begin
                                              (let ((_g256850_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g256849_)
                                                           (##vector-length
                                                            _g256849_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g256850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g256850_)))
                                              (let ((_target250640250666_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g256849_
                                                        0)))
                                                    (_tl250642250668_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g256849_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl250642250668_))
                                                    (letrec ((_loop250643250671_
                                                              (lambda (_hd250641250674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause250647250676_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd250641250674_))
                            (let ((_e250644250679_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd250641250674_))))
                              (let ((_lp-hd250645250682_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e250644250679_)))
                                    (_lp-tl250646250684_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e250644250679_))))
                                (let ((__tmp256853
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd250645250682_
                                               _clause250647250676_))))
                                  (declare (not safe))
                                  (_loop250643250671_
                                   _lp-tl250646250684_
                                   __tmp256853))))
                            (let ((_clause250648250687_
                                   (reverse _clause250647250676_)))
                              ((lambda (_L250690_)
                                 (let* ((_clauses250763_
                                         (map (lambda (_clause250705_)
                                                (let* ((_g250707250718_
                                                        (lambda (_g250708250715_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g250708250715_))))
                                                       (_g250706250753_
                                                        (lambda (_g250708250721_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g250708250721_))
                      (let ((_e250713250723_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g250708250721_))))
                        (let ((_hd250712250726_
                               (let ()
                                 (declare (not safe))
                                 (##car _e250713250723_)))
                              (_tl250711250728_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e250713250723_))))
                          ((lambda (_L250731_ _L250732_)
                             (let* ((_self250744_
                                     (list-ref _L250732_ _self-index249944_))
                                    (_body250750_
                                     (map (lambda (_g250745250747_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g250745250747_
                                               _self250744_
                                               _$t250451_
                                               _method-calls247649_
                                               _slot-refs247650_
                                               _class-type-check247651_
                                               _struct-type-check1250631_
                                               _struct-type-check2250632_)))
                                          _L250731_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L250732_ _body250750_))))
                           _tl250711250728_
                           _hd250712250726_)))
                      (let ()
                        (declare (not safe))
                        (_g250707250718_ _g250708250721_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g250706250753_
                                                   _clause250705_)))
                                              (let ((__tmp256851
                                                     (lambda (_g250755250758_
                                                              _g250756250760_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g250755250758_
                                                               _g250756250760_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp256851
                                                        '()
                                                        _L250690_))))
                                        (__tmp256852
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses250763_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp256852
                                    _L250226_)))
                               _clause250648250687_))))))
              (let ()
                (declare (not safe))
                (_loop250643250671_ _target250640250666_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g250634250653_
                                                       _g250635250656_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g250634250653_
                                             _g250635250656_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g250634250653_ _g250635250656_))))))
                      (declare (not safe))
                      (_g250633250765_ _L250226_))))
                 (_make-specializer-impl250773_
                  (lambda (_specializer-lambda-expr250770_
                           _specializer-case-lambda-expr250771_)
                    (let ((__tmp256854
                           (let ((__tmp256855
                                  (let ((__tmp256857
                                         (let ((__tmp256858
                                                (let ((__tmp256875
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L249645_ '())))
                                                      (__tmp256859
                                                       (let ((__tmp256860
                                                              (let ((__tmp256861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp256863
                                    (let ((__tmp256864
                                           (let ((__tmp256874
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L249644_ '())))
                                                 (__tmp256865
                                                  (let ((__tmp256866
                                                         (let ((__tmp256867
                                                                (let ((__tmp256868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp256870
                                      (let ((__tmp256871
                                             (let ((__tmp256873
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L250228_ '())))
                                                   (__tmp256872
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr250770_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp256873
                                                     __tmp256872))))
                                        (declare (not safe))
                                        (cons __tmp256871 '())))
                                     (__tmp256869
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr250771_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp256870 __tmp256869))))
                          (declare (not safe))
                          (cons '%#let-values __tmp256868))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp256867 _stx247555_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp256866 '()))))
                                             (declare (not safe))
                                             (cons __tmp256874 __tmp256865))))
                                      (declare (not safe))
                                      (cons __tmp256864 '())))
                                   (__tmp256862
                                    (let ()
                                      (declare (not safe))
                                      (cons _L249642_ '()))))
                               (declare (not safe))
                               (cons __tmp256863 __tmp256862))))
                        (declare (not safe))
                        (cons '%#let-values __tmp256861))))
                 (declare (not safe))
                 (cons __tmp256860 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256875
                                                        __tmp256859))))
                                           (declare (not safe))
                                           (cons __tmp256858 '())))
                                        (__tmp256856
                                         (let ()
                                           (declare (not safe))
                                           (cons _L249641_ '()))))
                                    (declare (not safe))
                                    (cons __tmp256857 __tmp256856))))
                             (declare (not safe))
                             (cons '%#let-values __tmp256855))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp256854 _stx247555_))))
                 (_specializer-lambda-expr250775_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr250629_
                     _struct-check-all250521_
                     _empty247654_)))
                 (_specializer-case-lambda-expr250777_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr250768_
                     _struct-check-all250521_
                     _empty247654_)))
                 (_specializer-impl250779_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl250773_
                     _specializer-lambda-expr250775_
                     _specializer-case-lambda-expr250777_)))
                 (_unchecked-specializer-lambda-expr250781_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?247657_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr250629_
                         _empty247654_
                         _struct-check-all250521_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr250783_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?247657_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr250768_
                         _empty247654_
                         _struct-check-all250521_))
                      '#f))
                 (_unchecked-specializer-impl250785_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?247657_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl250773_
                         _unchecked-specializer-lambda-expr250781_
                         _unchecked-specializer-case-lambda-expr250783_))
                      '#f))
                 (_specializer-impl250787_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl247561_
                     _$t250451_
                     _methods-bind250474_
                     _slots-bind250497_
                     _class-check-bind250519_
                     _struct-check-bind250543_
                     _specializer-impl250779_
                     _lifted-specializer-id250449_
                     _unchecked-specializer-impl250785_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp256877
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L247630_)))
                                                          (__tmp256876
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id250442_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp256877
                                                       '" => "
                                                       __tmp256876))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def247562_
                                                       _L247630_
                                                       _specializer-id250442_
                                                       _specializer-impl250787_
                                                       _lifted-specializer-id250449_
                                                       _unchecked-specializer-impl250785_)))))
                                            _hd250159250221_
                                            _hd250156250213_
                                            _hd250153250205_)
                                           (let ()
                                             (declare (not safe))
                                             (_g250135250165_
                                              _g250136250168_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g250135250165_ _g250136250168_)))
                               (let ()
                                 (declare (not safe))
                                 (_g250135250165_ _g250136250168_)))
                           (let ()
                             (declare (not safe))
                             (_g250135250165_ _g250136250168_)))))
                   (let ()
                     (declare (not safe))
                     (_g250135250165_ _g250136250168_)))
               (let ()
                 (declare (not safe))
                 (_g250135250165_ _g250136250168_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g250135250165_
                                                  _g250136250168_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g250135250165_ _g250136250168_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g250135250165_ _g250136250168_)))))
                       (let ()
                         (declare (not safe))
                         (_g250135250165_ _g250136250168_)))))
               (let ()
                 (declare (not safe))
                 (_g250135250165_ _g250136250168_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g250134250790_ _L249643_))
                                         _stx247555_))))
                             _hd249740249863_
                             _kw-ref249738249884_
                             _hd249728249850_
                             _hd249719249826_
                             _hd249710249802_)
                            (let ()
                              (declare (not safe))
                              (_g249684249746_ _g249685249749_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop249733249868_
                                                   _target249730249855_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g249684249746_
                                                 _g249685249749_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g249684249746_ _g249685249749_))))))
                            (let ()
                              (declare (not safe))
                              (_g249684249746_ _g249685249749_)))
                        (let ()
                          (declare (not safe))
                          (_g249684249746_ _g249685249749_)))
                    (let ()
                      (declare (not safe))
                      (_g249684249746_ _g249685249749_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g249684249746_
                                                       _g249685249749_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g249684249746_
                                                   _g249685249749_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g249684249746_
                                               _g249685249749_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g249684249746_ _g249685249749_)))))
                            (let ()
                              (declare (not safe))
                              (_g249684249746_ _g249685249749_)))
                        (let ()
                          (declare (not safe))
                          (_g249684249746_ _g249685249749_)))))
                (let ()
                  (declare (not safe))
                  (_g249684249746_ _g249685249749_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g249684249746_
                                                       _g249685249749_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g249684249746_
                                                   _g249685249749_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g249684249746_ _g249685249749_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g249684249746_ _g249685249749_)))
                            (let ()
                              (declare (not safe))
                              (_g249684249746_ _g249685249749_)))))
                    (let ()
                      (declare (not safe))
                      (_g249684249746_ _g249685249749_)))
                (let ()
                  (declare (not safe))
                  (_g249684249746_ _g249685249749_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g249684249746_
                                                       _g249685249749_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g249684249746_
                                               _g249685249749_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g249684249746_ _g249685249749_)))
                                (let ()
                                  (declare (not safe))
                                  (_g249684249746_ _g249685249749_)))
                            (let ()
                              (declare (not safe))
                              (_g249684249746_ _g249685249749_)))))
                    (let ()
                      (declare (not safe))
                      (_g249684249746_ _g249685249749_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g249684249746_
                                                       _g249685249749_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g249684249746_
                                               _g249685249749_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g249684249746_ _g249685249749_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g249684249746_ _g249685249749_)))))
                            (let ()
                              (declare (not safe))
                              (_g249684249746_ _g249685249749_))))))
                (declare (not safe))
                (_g249683250793_ _L249642_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd249518249636_
                                                    _hd249515249628_
                                                    _hd249512249620_
                                                    _hd249509249612_
                                                    _hd249491249564_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g249471249524_
                                                      _g249472249527_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g249471249524_
                                              _g249472249527_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g249471249524_ _g249472249527_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g249471249524_ _g249472249527_)))
                               (let ()
                                 (declare (not safe))
                                 (_g249471249524_ _g249472249527_)))))
                       (let ()
                         (declare (not safe))
                         (_g249471249524_ _g249472249527_)))
                   (let ()
                     (declare (not safe))
                     (_g249471249524_ _g249472249527_)))
               (let ()
                 (declare (not safe))
                 (_g249471249524_ _g249472249527_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g249471249524_
                                                  _g249472249527_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g249471249524_
                                              _g249472249527_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g249471249524_ _g249472249527_)))))
                           (let ()
                             (declare (not safe))
                             (_g249471249524_ _g249472249527_)))))
                   (let ()
                     (declare (not safe))
                     (_g249471249524_ _g249472249527_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g249471249524_
                                                      _g249472249527_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g249471249524_
                                                  _g249472249527_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g249471249524_
                                              _g249472249527_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g249471249524_ _g249472249527_)))))
                           (let ()
                             (declare (not safe))
                             (_g249471249524_ _g249472249527_)))
                       (let ()
                         (declare (not safe))
                         (_g249471249524_ _g249472249527_)))))
               (let ()
                 (declare (not safe))
                 (_g249471249524_ _g249472249527_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g249471249524_
                                                  _g249472249527_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g249471249524_ _g249472249527_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g249471249524_ _g249472249527_)))
                           (let ()
                             (declare (not safe))
                             (_g249471249524_ _g249472249527_)))
                       (let ()
                         (declare (not safe))
                         (_g249471249524_ _g249472249527_)))))
               (let ()
                 (declare (not safe))
                 (_g249471249524_ _g249472249527_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g249470250796_ _L247629_))
                                         _stx247555_))))))))
                  (___kont255603255604_ (lambda () _stx247555_)))
              (let ((___match255632255633_
                     (lambda (_e247571247597_
                              _hd247570247600_
                              _tl247569247602_
                              _e247574247605_
                              _hd247573247608_
                              _tl247572247610_
                              _e247577247613_
                              _hd247576247616_
                              _tl247575247618_
                              _e247580247621_
                              _hd247579247624_
                              _tl247578247626_)
                       (let ((_L247629_ _hd247579247624_)
                             (_L247630_ _hd247576247616_))
                         (if (let ((__tmp256994
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L247630_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp256994))
                             (___kont255601255602_ _L247629_ _L247630_)
                             (___kont255603255604_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx255599255600_))
                    (let ((_e247571247597_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx255599255600_))))
                      (let ((_tl247569247602_
                             (let ()
                               (declare (not safe))
                               (##cdr _e247571247597_)))
                            (_hd247570247600_
                             (let ()
                               (declare (not safe))
                               (##car _e247571247597_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl247569247602_))
                            (let ((_e247574247605_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl247569247602_))))
                              (let ((_tl247572247610_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e247574247605_)))
                                    (_hd247573247608_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e247574247605_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd247573247608_))
                                    (let ((_e247577247613_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd247573247608_))))
                                      (let ((_tl247575247618_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e247577247613_)))
                                            (_hd247576247616_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e247577247613_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl247575247618_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl247572247610_))
                                                (let ((_e247580247621_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl247572247610_))))
                                                  (let ((_tl247578247626_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e247580247621_)))
                                                        (_hd247579247624_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e247580247621_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl247578247626_))
                                                        (___match255632255633_
                                                         _e247571247597_
                                                         _hd247570247600_
                                                         _tl247569247602_
                                                         _e247574247605_
                                                         _hd247573247608_
                                                         _tl247572247610_
                                                         _e247577247613_
                                                         _hd247576247616_
                                                         _tl247575247618_
                                                         _e247580247621_
                                                         _hd247579247624_
                                                         _tl247578247626_)
                                                        (___kont255603255604_))))
                                                (___kont255603255604_))
                                            (___kont255603255604_))))
                                    (___kont255603255604_))))
                            (___kont255603255604_))))
                    (___kont255603255604_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx246531_
               _self246532_
               _methods246533_
               _slots246534_
               _class-check246535_
               _struct-check246536_
               _struct-assert246537_)
        (let* ((___stx255635255636_ _stx246531_)
               (_g246545246767_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx255635255636_)))))
          (let ((___kont255637255638_
                 (lambda (_L247504_ _L247505_ _L247506_ _L247507_)
                   (let ((__tmp256995
                          (let () (declare (not safe)) (gx#stx-e _L247505_))))
                     (declare (not safe))
                     (table-set! _methods246533_ __tmp256995 '#t))
                   (for-each
                    (lambda (_g247540247542_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g247540247542_
                         _self246532_
                         _methods246533_
                         _slots246534_
                         _class-check246535_
                         _struct-check246536_
                         _struct-assert246537_)))
                    (let ((__tmp256996
                           (lambda (_g247544247547_ _g247545247549_)
                             (let ()
                               (declare (not safe))
                               (cons _g247544247547_ _g247545247549_)))))
                      (declare (not safe))
                      (foldr1 __tmp256996 '() _L247504_)))))
                (___kont255641255642_
                 (lambda (_L247339_ _L247340_ _L247341_ _L247342_ _L247343_)
                   (let ((__tmp256997
                          (let () (declare (not safe)) (gx#stx-e _L247340_))))
                     (declare (not safe))
                     (table-set! _methods246533_ __tmp256997 '#t))
                   (for-each
                    (lambda (_g247383247385_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g247383247385_
                         _self246532_
                         _methods246533_
                         _slots246534_
                         _class-check246535_
                         _struct-check246536_
                         _struct-assert246537_)))
                    (let ((__tmp256998
                           (lambda (_g247387247390_ _g247388247392_)
                             (let ()
                               (declare (not safe))
                               (cons _g247387247390_ _g247388247392_)))))
                      (declare (not safe))
                      (foldr1 __tmp256998 '() _L247339_)))))
                (___kont255645255646_
                 (lambda (_L247172_ _L247173_ _L247174_)
                   (let ((__tmp256999
                          (let () (declare (not safe)) (gx#stx-e _L247172_))))
                     (declare (not safe))
                     (table-set! _slots246534_ __tmp256999 '#t))))
                (___kont255647255648_
                 (lambda (_L247049_ _L247050_ _L247051_ _L247052_)
                   (let ((__tmp257000
                          (let () (declare (not safe)) (gx#stx-e _L247050_))))
                     (declare (not safe))
                     (table-set! _slots246534_ __tmp257000 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L247049_
                      _self246532_
                      _methods246533_
                      _slots246534_
                      _class-check246535_
                      _struct-check246536_
                      _struct-assert246537_))))
                (___kont255649255650_
                 (lambda (_L246933_ _L246934_)
                   (let ((__tmp257001
                          (##structure-ref
                           (let ((__tmp257002
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L246934_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp257002))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots246534_ __tmp257001 '#t))))
                (___kont255651255652_
                 (lambda (_L246843_ _L246844_ _L246845_)
                   (let ((__tmp257003
                          (##structure-ref
                           (let ((__tmp257004
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L246845_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp257004))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots246534_ __tmp257003 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L246843_
                      _self246532_
                      _methods246533_
                      _slots246534_
                      _class-check246535_
                      _struct-check246536_
                      _struct-assert246537_))))
                (___kont255653255654_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx246531_
                      _self246532_
                      _methods246533_
                      _slots246534_
                      _class-check246535_
                      _struct-check246536_
                      _struct-assert246537_)))))
            (let* ((___match256134256135_
                    (lambda (_e246741246779_
                             _hd246740246782_
                             _tl246739246784_
                             _e246744246787_
                             _hd246743246790_
                             _tl246742246792_
                             _e246747246795_
                             _hd246746246798_
                             _tl246745246800_
                             _e246750246803_
                             _hd246749246806_
                             _tl246748246808_
                             _e246753246811_
                             _hd246752246814_
                             _tl246751246816_
                             _e246756246819_
                             _hd246755246822_
                             _tl246754246824_
                             _e246759246827_
                             _hd246758246830_
                             _tl246757246832_
                             _e246762246835_
                             _hd246761246838_
                             _tl246760246840_)
                      (let ((_L246843_ _hd246761246838_)
                            (_L246844_ _hd246758246830_)
                            (_L246845_ _hd246749246806_))
                        (if (and (let ((__tmp257005
                                        (let ((__tmp257006
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L246845_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp257006))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp257005
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L246844_
                                    _self246532_)))
                            (___kont255651255652_
                             _L246843_
                             _L246844_
                             _L246845_)
                            (___kont255653255654_)))))
                   (___match256132256133_
                    (lambda (_e246741246779_
                             _hd246740246782_
                             _tl246739246784_
                             _e246744246787_
                             _hd246743246790_
                             _tl246742246792_
                             _e246747246795_
                             _hd246746246798_
                             _tl246745246800_
                             _e246750246803_
                             _hd246749246806_
                             _tl246748246808_
                             _e246753246811_
                             _hd246752246814_
                             _tl246751246816_
                             _e246756246819_
                             _hd246755246822_
                             _tl246754246824_
                             _e246759246827_
                             _hd246758246830_
                             _tl246757246832_
                             _e246762246835_
                             _hd246761246838_
                             _tl246760246840_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl246760246840_))
                          (___match256134256135_
                           _e246741246779_
                           _hd246740246782_
                           _tl246739246784_
                           _e246744246787_
                           _hd246743246790_
                           _tl246742246792_
                           _e246747246795_
                           _hd246746246798_
                           _tl246745246800_
                           _e246750246803_
                           _hd246749246806_
                           _tl246748246808_
                           _e246753246811_
                           _hd246752246814_
                           _tl246751246816_
                           _e246756246819_
                           _hd246755246822_
                           _tl246754246824_
                           _e246759246827_
                           _hd246758246830_
                           _tl246757246832_
                           _e246762246835_
                           _hd246761246838_
                           _tl246760246840_)
                          (___kont255653255654_))))
                   (___match256126256127_
                    (lambda (_e246741246779_
                             _hd246740246782_
                             _tl246739246784_
                             _e246744246787_
                             _hd246743246790_
                             _tl246742246792_
                             _e246747246795_
                             _hd246746246798_
                             _tl246745246800_
                             _e246750246803_
                             _hd246749246806_
                             _tl246748246808_
                             _e246753246811_
                             _hd246752246814_
                             _tl246751246816_
                             _e246756246819_
                             _hd246755246822_
                             _tl246754246824_
                             _e246759246827_
                             _hd246758246830_
                             _tl246757246832_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl246751246816_))
                          (let ((_e246762246835_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl246751246816_))))
                            (let ((_tl246760246840_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e246762246835_)))
                                  (_hd246761246838_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e246762246835_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl246760246840_))
                                  (___match256134256135_
                                   _e246741246779_
                                   _hd246740246782_
                                   _tl246739246784_
                                   _e246744246787_
                                   _hd246743246790_
                                   _tl246742246792_
                                   _e246747246795_
                                   _hd246746246798_
                                   _tl246745246800_
                                   _e246750246803_
                                   _hd246749246806_
                                   _tl246748246808_
                                   _e246753246811_
                                   _hd246752246814_
                                   _tl246751246816_
                                   _e246756246819_
                                   _hd246755246822_
                                   _tl246754246824_
                                   _e246759246827_
                                   _hd246758246830_
                                   _tl246757246832_
                                   _e246762246835_
                                   _hd246761246838_
                                   _tl246760246840_)
                                  (___kont255653255654_))))
                          (___kont255653255654_))))
                   (___match256072256073_
                    (lambda (_e246717246877_
                             _hd246716246880_
                             _tl246715246882_
                             _e246720246885_
                             _hd246719246888_
                             _tl246718246890_
                             _e246723246893_
                             _hd246722246896_
                             _tl246721246898_
                             _e246726246901_
                             _hd246725246904_
                             _tl246724246906_
                             _e246729246909_
                             _hd246728246912_
                             _tl246727246914_
                             _e246732246917_
                             _hd246731246920_
                             _tl246730246922_
                             _e246735246925_
                             _hd246734246928_
                             _tl246733246930_)
                      (let ((_L246933_ _hd246734246928_)
                            (_L246934_ _hd246725246904_))
                        (if (and (let ((__tmp257007
                                        (let ((__tmp257008
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L246934_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp257008))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp257007
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L246933_
                                    _self246532_)))
                            (___kont255649255650_ _L246933_ _L246934_)
                            (___kont255653255654_)))))
                   (___match256070256071_
                    (lambda (_e246717246877_
                             _hd246716246880_
                             _tl246715246882_
                             _e246720246885_
                             _hd246719246888_
                             _tl246718246890_
                             _e246723246893_
                             _hd246722246896_
                             _tl246721246898_
                             _e246726246901_
                             _hd246725246904_
                             _tl246724246906_
                             _e246729246909_
                             _hd246728246912_
                             _tl246727246914_
                             _e246732246917_
                             _hd246731246920_
                             _tl246730246922_
                             _e246735246925_
                             _hd246734246928_
                             _tl246733246930_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl246727246914_))
                          (___match256072256073_
                           _e246717246877_
                           _hd246716246880_
                           _tl246715246882_
                           _e246720246885_
                           _hd246719246888_
                           _tl246718246890_
                           _e246723246893_
                           _hd246722246896_
                           _tl246721246898_
                           _e246726246901_
                           _hd246725246904_
                           _tl246724246906_
                           _e246729246909_
                           _hd246728246912_
                           _tl246727246914_
                           _e246732246917_
                           _hd246731246920_
                           _tl246730246922_
                           _e246735246925_
                           _hd246734246928_
                           _tl246733246930_)
                          (___match256126256127_
                           _e246717246877_
                           _hd246716246880_
                           _tl246715246882_
                           _e246720246885_
                           _hd246719246888_
                           _tl246718246890_
                           _e246723246893_
                           _hd246722246896_
                           _tl246721246898_
                           _e246726246901_
                           _hd246725246904_
                           _tl246724246906_
                           _e246729246909_
                           _hd246728246912_
                           _tl246727246914_
                           _e246732246917_
                           _hd246731246920_
                           _tl246730246922_
                           _e246735246925_
                           _hd246734246928_
                           _tl246733246930_))))
                   (___match256016256017_
                    (lambda (_e246682246961_
                             _hd246681246964_
                             _tl246680246966_
                             _e246685246969_
                             _hd246684246972_
                             _tl246683246974_
                             _e246688246977_
                             _hd246687246980_
                             _tl246686246982_
                             _e246691246985_
                             _hd246690246988_
                             _tl246689246990_
                             _e246694246993_
                             _hd246693246996_
                             _tl246692246998_
                             _e246697247001_
                             _hd246696247004_
                             _tl246695247006_
                             _e246700247009_
                             _hd246699247012_
                             _tl246698247014_
                             _e246703247017_
                             _hd246702247020_
                             _tl246701247022_
                             _e246706247025_
                             _hd246705247028_
                             _tl246704247030_
                             _e246709247033_
                             _hd246708247036_
                             _tl246707247038_
                             _e246712247041_
                             _hd246711247044_
                             _tl246710247046_)
                      (let ((_L247049_ _hd246711247044_)
                            (_L247050_ _hd246708247036_)
                            (_L247051_ _hd246699247012_)
                            (_L247052_ _hd246690246988_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L247052_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L247052_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L247051_
                                    _self246532_)))
                            (___kont255647255648_
                             _L247049_
                             _L247050_
                             _L247051_
                             _L247052_)
                            (___kont255653255654_)))))
                   (___match256008256009_
                    (lambda (_e246682246961_
                             _hd246681246964_
                             _tl246680246966_
                             _e246685246969_
                             _hd246684246972_
                             _tl246683246974_
                             _e246688246977_
                             _hd246687246980_
                             _tl246686246982_
                             _e246691246985_
                             _hd246690246988_
                             _tl246689246990_
                             _e246694246993_
                             _hd246693246996_
                             _tl246692246998_
                             _e246697247001_
                             _hd246696247004_
                             _tl246695247006_
                             _e246700247009_
                             _hd246699247012_
                             _tl246698247014_
                             _e246703247017_
                             _hd246702247020_
                             _tl246701247022_
                             _e246706247025_
                             _hd246705247028_
                             _tl246704247030_
                             _e246709247033_
                             _hd246708247036_
                             _tl246707247038_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl246701247022_))
                          (let ((_e246712247041_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl246701247022_))))
                            (let ((_tl246710247046_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e246712247041_)))
                                  (_hd246711247044_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e246712247041_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl246710247046_))
                                  (___match256016256017_
                                   _e246682246961_
                                   _hd246681246964_
                                   _tl246680246966_
                                   _e246685246969_
                                   _hd246684246972_
                                   _tl246683246974_
                                   _e246688246977_
                                   _hd246687246980_
                                   _tl246686246982_
                                   _e246691246985_
                                   _hd246690246988_
                                   _tl246689246990_
                                   _e246694246993_
                                   _hd246693246996_
                                   _tl246692246998_
                                   _e246697247001_
                                   _hd246696247004_
                                   _tl246695247006_
                                   _e246700247009_
                                   _hd246699247012_
                                   _tl246698247014_
                                   _e246703247017_
                                   _hd246702247020_
                                   _tl246701247022_
                                   _e246706247025_
                                   _hd246705247028_
                                   _tl246704247030_
                                   _e246709247033_
                                   _hd246708247036_
                                   _tl246707247038_
                                   _e246712247041_
                                   _hd246711247044_
                                   _tl246710247046_)
                                  (___kont255653255654_))))
                          (___match256132256133_
                           _e246682246961_
                           _hd246681246964_
                           _tl246680246966_
                           _e246685246969_
                           _hd246684246972_
                           _tl246683246974_
                           _e246688246977_
                           _hd246687246980_
                           _tl246686246982_
                           _e246691246985_
                           _hd246690246988_
                           _tl246689246990_
                           _e246694246993_
                           _hd246693246996_
                           _tl246692246998_
                           _e246697247001_
                           _hd246696247004_
                           _tl246695247006_
                           _e246700247009_
                           _hd246699247012_
                           _tl246698247014_
                           _e246703247017_
                           _hd246702247020_
                           _tl246701247022_))))
                   (___match255930255931_
                    (lambda (_e246648247092_
                             _hd246647247095_
                             _tl246646247097_
                             _e246651247100_
                             _hd246650247103_
                             _tl246649247105_
                             _e246654247108_
                             _hd246653247111_
                             _tl246652247113_
                             _e246657247116_
                             _hd246656247119_
                             _tl246655247121_
                             _e246660247124_
                             _hd246659247127_
                             _tl246658247129_
                             _e246663247132_
                             _hd246662247135_
                             _tl246661247137_
                             _e246666247140_
                             _hd246665247143_
                             _tl246664247145_
                             _e246669247148_
                             _hd246668247151_
                             _tl246667247153_
                             _e246672247156_
                             _hd246671247159_
                             _tl246670247161_
                             _e246675247164_
                             _hd246674247167_
                             _tl246673247169_)
                      (let ((_L247172_ _hd246674247167_)
                            (_L247173_ _hd246665247143_)
                            (_L247174_ _hd246656247119_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L247174_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L247174_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L247173_
                                    _self246532_)))
                            (___kont255645255646_
                             _L247172_
                             _L247173_
                             _L247174_)
                            (___match256134256135_
                             _e246648247092_
                             _hd246647247095_
                             _tl246646247097_
                             _e246651247100_
                             _hd246650247103_
                             _tl246649247105_
                             _e246654247108_
                             _hd246653247111_
                             _tl246652247113_
                             _e246657247116_
                             _hd246656247119_
                             _tl246655247121_
                             _e246660247124_
                             _hd246659247127_
                             _tl246658247129_
                             _e246663247132_
                             _hd246662247135_
                             _tl246661247137_
                             _e246666247140_
                             _hd246665247143_
                             _tl246664247145_
                             _e246669247148_
                             _hd246668247151_
                             _tl246667247153_)))))
                   (___match255928255929_
                    (lambda (_e246648247092_
                             _hd246647247095_
                             _tl246646247097_
                             _e246651247100_
                             _hd246650247103_
                             _tl246649247105_
                             _e246654247108_
                             _hd246653247111_
                             _tl246652247113_
                             _e246657247116_
                             _hd246656247119_
                             _tl246655247121_
                             _e246660247124_
                             _hd246659247127_
                             _tl246658247129_
                             _e246663247132_
                             _hd246662247135_
                             _tl246661247137_
                             _e246666247140_
                             _hd246665247143_
                             _tl246664247145_
                             _e246669247148_
                             _hd246668247151_
                             _tl246667247153_
                             _e246672247156_
                             _hd246671247159_
                             _tl246670247161_
                             _e246675247164_
                             _hd246674247167_
                             _tl246673247169_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl246667247153_))
                          (___match255930255931_
                           _e246648247092_
                           _hd246647247095_
                           _tl246646247097_
                           _e246651247100_
                           _hd246650247103_
                           _tl246649247105_
                           _e246654247108_
                           _hd246653247111_
                           _tl246652247113_
                           _e246657247116_
                           _hd246656247119_
                           _tl246655247121_
                           _e246660247124_
                           _hd246659247127_
                           _tl246658247129_
                           _e246663247132_
                           _hd246662247135_
                           _tl246661247137_
                           _e246666247140_
                           _hd246665247143_
                           _tl246664247145_
                           _e246669247148_
                           _hd246668247151_
                           _tl246667247153_
                           _e246672247156_
                           _hd246671247159_
                           _tl246670247161_
                           _e246675247164_
                           _hd246674247167_
                           _tl246673247169_)
                          (___match256008256009_
                           _e246648247092_
                           _hd246647247095_
                           _tl246646247097_
                           _e246651247100_
                           _hd246650247103_
                           _tl246649247105_
                           _e246654247108_
                           _hd246653247111_
                           _tl246652247113_
                           _e246657247116_
                           _hd246656247119_
                           _tl246655247121_
                           _e246660247124_
                           _hd246659247127_
                           _tl246658247129_
                           _e246663247132_
                           _hd246662247135_
                           _tl246661247137_
                           _e246666247140_
                           _hd246665247143_
                           _tl246664247145_
                           _e246669247148_
                           _hd246668247151_
                           _tl246667247153_
                           _e246672247156_
                           _hd246671247159_
                           _tl246670247161_
                           _e246675247164_
                           _hd246674247167_
                           _tl246673247169_))))
                   (___match255918255919_
                    (lambda (_e246648247092_
                             _hd246647247095_
                             _tl246646247097_
                             _e246651247100_
                             _hd246650247103_
                             _tl246649247105_
                             _e246654247108_
                             _hd246653247111_
                             _tl246652247113_
                             _e246657247116_
                             _hd246656247119_
                             _tl246655247121_
                             _e246660247124_
                             _hd246659247127_
                             _tl246658247129_
                             _e246663247132_
                             _hd246662247135_
                             _tl246661247137_
                             _e246666247140_
                             _hd246665247143_
                             _tl246664247145_
                             _e246669247148_
                             _hd246668247151_
                             _tl246667247153_
                             _e246672247156_
                             _hd246671247159_
                             _tl246670247161_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd246671247159_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl246670247161_))
                              (let ((_e246675247164_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl246670247161_))))
                                (let ((_tl246673247169_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e246675247164_)))
                                      (_hd246674247167_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e246675247164_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl246673247169_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl246667247153_))
                                          (___match255930255931_
                                           _e246648247092_
                                           _hd246647247095_
                                           _tl246646247097_
                                           _e246651247100_
                                           _hd246650247103_
                                           _tl246649247105_
                                           _e246654247108_
                                           _hd246653247111_
                                           _tl246652247113_
                                           _e246657247116_
                                           _hd246656247119_
                                           _tl246655247121_
                                           _e246660247124_
                                           _hd246659247127_
                                           _tl246658247129_
                                           _e246663247132_
                                           _hd246662247135_
                                           _tl246661247137_
                                           _e246666247140_
                                           _hd246665247143_
                                           _tl246664247145_
                                           _e246669247148_
                                           _hd246668247151_
                                           _tl246667247153_
                                           _e246672247156_
                                           _hd246671247159_
                                           _tl246670247161_
                                           _e246675247164_
                                           _hd246674247167_
                                           _tl246673247169_)
                                          (___match256008256009_
                                           _e246648247092_
                                           _hd246647247095_
                                           _tl246646247097_
                                           _e246651247100_
                                           _hd246650247103_
                                           _tl246649247105_
                                           _e246654247108_
                                           _hd246653247111_
                                           _tl246652247113_
                                           _e246657247116_
                                           _hd246656247119_
                                           _tl246655247121_
                                           _e246660247124_
                                           _hd246659247127_
                                           _tl246658247129_
                                           _e246663247132_
                                           _hd246662247135_
                                           _tl246661247137_
                                           _e246666247140_
                                           _hd246665247143_
                                           _tl246664247145_
                                           _e246669247148_
                                           _hd246668247151_
                                           _tl246667247153_
                                           _e246672247156_
                                           _hd246671247159_
                                           _tl246670247161_
                                           _e246675247164_
                                           _hd246674247167_
                                           _tl246673247169_))
                                      (___match256132256133_
                                       _e246648247092_
                                       _hd246647247095_
                                       _tl246646247097_
                                       _e246651247100_
                                       _hd246650247103_
                                       _tl246649247105_
                                       _e246654247108_
                                       _hd246653247111_
                                       _tl246652247113_
                                       _e246657247116_
                                       _hd246656247119_
                                       _tl246655247121_
                                       _e246660247124_
                                       _hd246659247127_
                                       _tl246658247129_
                                       _e246663247132_
                                       _hd246662247135_
                                       _tl246661247137_
                                       _e246666247140_
                                       _hd246665247143_
                                       _tl246664247145_
                                       _e246669247148_
                                       _hd246668247151_
                                       _tl246667247153_))))
                              (___match256132256133_
                               _e246648247092_
                               _hd246647247095_
                               _tl246646247097_
                               _e246651247100_
                               _hd246650247103_
                               _tl246649247105_
                               _e246654247108_
                               _hd246653247111_
                               _tl246652247113_
                               _e246657247116_
                               _hd246656247119_
                               _tl246655247121_
                               _e246660247124_
                               _hd246659247127_
                               _tl246658247129_
                               _e246663247132_
                               _hd246662247135_
                               _tl246661247137_
                               _e246666247140_
                               _hd246665247143_
                               _tl246664247145_
                               _e246669247148_
                               _hd246668247151_
                               _tl246667247153_))
                          (___match256132256133_
                           _e246648247092_
                           _hd246647247095_
                           _tl246646247097_
                           _e246651247100_
                           _hd246650247103_
                           _tl246649247105_
                           _e246654247108_
                           _hd246653247111_
                           _tl246652247113_
                           _e246657247116_
                           _hd246656247119_
                           _tl246655247121_
                           _e246660247124_
                           _hd246659247127_
                           _tl246658247129_
                           _e246663247132_
                           _hd246662247135_
                           _tl246661247137_
                           _e246666247140_
                           _hd246665247143_
                           _tl246664247145_
                           _e246669247148_
                           _hd246668247151_
                           _tl246667247153_))))
                   (___match255850255851_
                    (lambda (_e246597247211_
                             _hd246596247214_
                             _tl246595247216_
                             _e246600247219_
                             _hd246599247222_
                             _tl246598247224_
                             _e246603247227_
                             _hd246602247230_
                             _tl246601247232_
                             _e246606247235_
                             _hd246605247238_
                             _tl246604247240_
                             _e246609247243_
                             _hd246608247246_
                             _tl246607247248_
                             _e246612247251_
                             _hd246611247254_
                             _tl246610247256_
                             _e246615247259_
                             _hd246614247262_
                             _tl246613247264_
                             _e246618247267_
                             _hd246617247270_
                             _tl246616247272_
                             _e246621247275_
                             _hd246620247278_
                             _tl246619247280_
                             _e246624247283_
                             _hd246623247286_
                             _tl246622247288_
                             _e246627247291_
                             _hd246626247294_
                             _tl246625247296_
                             _e246630247299_
                             _hd246629247302_
                             _tl246628247304_
                             _e246633247307_
                             _hd246632247310_
                             _tl246631247312_
                             ___splice255643255644_
                             _target246634247315_
                             _tl246636247317_)
                      (letrec ((_loop246637247320_
                                (lambda (_hd246635247323_ _args246641247325_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd246635247323_))
                                      (let ((_e246638247328_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd246635247323_))))
                                        (let ((_lp-tl246640247333_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e246638247328_)))
                                              (_lp-hd246639247331_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e246638247328_))))
                                          (let ((__tmp257009
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd246639247331_
                                                         _args246641247325_))))
                                            (declare (not safe))
                                            (_loop246637247320_
                                             _lp-tl246640247333_
                                             __tmp257009))))
                                      (let ((_args246642247336_
                                             (reverse _args246641247325_)))
                                        (let ((_L247339_ _args246642247336_)
                                              (_L247340_ _hd246632247310_)
                                              (_L247341_ _hd246623247286_)
                                              (_L247342_ _hd246614247262_)
                                              (_L247343_ _hd246605247238_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L247343_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L247342_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L247341_
                                                      _self246532_)))
                                              (___kont255641255642_
                                               _L247339_
                                               _L247340_
                                               _L247341_
                                               _L247342_
                                               _L247343_)
                                              (___kont255653255654_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop246637247320_ _target246634247315_ '())))))
                   (___match255808255809_
                    (lambda (_e246597247211_
                             _hd246596247214_
                             _tl246595247216_
                             _e246600247219_
                             _hd246599247222_
                             _tl246598247224_
                             _e246603247227_
                             _hd246602247230_
                             _tl246601247232_
                             _e246606247235_
                             _hd246605247238_
                             _tl246604247240_
                             _e246609247243_
                             _hd246608247246_
                             _tl246607247248_
                             _e246612247251_
                             _hd246611247254_
                             _tl246610247256_
                             _e246615247259_
                             _hd246614247262_
                             _tl246613247264_
                             _e246618247267_
                             _hd246617247270_
                             _tl246616247272_
                             _e246621247275_
                             _hd246620247278_
                             _tl246619247280_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd246620247278_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl246619247280_))
                              (let ((_e246624247283_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl246619247280_))))
                                (let ((_tl246622247288_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e246624247283_)))
                                      (_hd246623247286_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e246624247283_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl246622247288_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl246616247272_))
                                          (let ((_e246627247291_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl246616247272_))))
                                            (let ((_tl246625247296_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e246627247291_)))
                                                  (_hd246626247294_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e246627247291_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd246626247294_))
                                                  (let ((_e246630247299_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd246626247294_))))
                                                    (let ((_tl246628247304_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e246630247299_)))
                                                          (_hd246629247302_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e246630247299_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd246629247302_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd246629247302_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl246628247304_))
                          (let ((_e246633247307_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl246628247304_))))
                            (let ((_tl246631247312_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e246633247307_)))
                                  (_hd246632247310_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e246633247307_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl246631247312_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl246625247296_))
                                      (let ((___splice255643255644_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl246625247296_
                                                '0))))
                                        (let ((_tl246636247317_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice255643255644_
                                                  '1)))
                                              (_target246634247315_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice255643255644_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl246636247317_))
                                              (___match255850255851_
                                               _e246597247211_
                                               _hd246596247214_
                                               _tl246595247216_
                                               _e246600247219_
                                               _hd246599247222_
                                               _tl246598247224_
                                               _e246603247227_
                                               _hd246602247230_
                                               _tl246601247232_
                                               _e246606247235_
                                               _hd246605247238_
                                               _tl246604247240_
                                               _e246609247243_
                                               _hd246608247246_
                                               _tl246607247248_
                                               _e246612247251_
                                               _hd246611247254_
                                               _tl246610247256_
                                               _e246615247259_
                                               _hd246614247262_
                                               _tl246613247264_
                                               _e246618247267_
                                               _hd246617247270_
                                               _tl246616247272_
                                               _e246621247275_
                                               _hd246620247278_
                                               _tl246619247280_
                                               _e246624247283_
                                               _hd246623247286_
                                               _tl246622247288_
                                               _e246627247291_
                                               _hd246626247294_
                                               _tl246625247296_
                                               _e246630247299_
                                               _hd246629247302_
                                               _tl246628247304_
                                               _e246633247307_
                                               _hd246632247310_
                                               _tl246631247312_
                                               ___splice255643255644_
                                               _target246634247315_
                                               _tl246636247317_)
                                              (___kont255653255654_))))
                                      (___kont255653255654_))
                                  (___kont255653255654_))))
                          (___kont255653255654_))
                      (___kont255653255654_))
                  (___kont255653255654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont255653255654_))))
                                          (___match256132256133_
                                           _e246597247211_
                                           _hd246596247214_
                                           _tl246595247216_
                                           _e246600247219_
                                           _hd246599247222_
                                           _tl246598247224_
                                           _e246603247227_
                                           _hd246602247230_
                                           _tl246601247232_
                                           _e246606247235_
                                           _hd246605247238_
                                           _tl246604247240_
                                           _e246609247243_
                                           _hd246608247246_
                                           _tl246607247248_
                                           _e246612247251_
                                           _hd246611247254_
                                           _tl246610247256_
                                           _e246615247259_
                                           _hd246614247262_
                                           _tl246613247264_
                                           _e246618247267_
                                           _hd246617247270_
                                           _tl246616247272_))
                                      (___match256132256133_
                                       _e246597247211_
                                       _hd246596247214_
                                       _tl246595247216_
                                       _e246600247219_
                                       _hd246599247222_
                                       _tl246598247224_
                                       _e246603247227_
                                       _hd246602247230_
                                       _tl246601247232_
                                       _e246606247235_
                                       _hd246605247238_
                                       _tl246604247240_
                                       _e246609247243_
                                       _hd246608247246_
                                       _tl246607247248_
                                       _e246612247251_
                                       _hd246611247254_
                                       _tl246610247256_
                                       _e246615247259_
                                       _hd246614247262_
                                       _tl246613247264_
                                       _e246618247267_
                                       _hd246617247270_
                                       _tl246616247272_))))
                              (___match256132256133_
                               _e246597247211_
                               _hd246596247214_
                               _tl246595247216_
                               _e246600247219_
                               _hd246599247222_
                               _tl246598247224_
                               _e246603247227_
                               _hd246602247230_
                               _tl246601247232_
                               _e246606247235_
                               _hd246605247238_
                               _tl246604247240_
                               _e246609247243_
                               _hd246608247246_
                               _tl246607247248_
                               _e246612247251_
                               _hd246611247254_
                               _tl246610247256_
                               _e246615247259_
                               _hd246614247262_
                               _tl246613247264_
                               _e246618247267_
                               _hd246617247270_
                               _tl246616247272_))
                          (___match255918255919_
                           _e246597247211_
                           _hd246596247214_
                           _tl246595247216_
                           _e246600247219_
                           _hd246599247222_
                           _tl246598247224_
                           _e246603247227_
                           _hd246602247230_
                           _tl246601247232_
                           _e246606247235_
                           _hd246605247238_
                           _tl246604247240_
                           _e246609247243_
                           _hd246608247246_
                           _tl246607247248_
                           _e246612247251_
                           _hd246611247254_
                           _tl246610247256_
                           _e246615247259_
                           _hd246614247262_
                           _tl246613247264_
                           _e246618247267_
                           _hd246617247270_
                           _tl246616247272_
                           _e246621247275_
                           _hd246620247278_
                           _tl246619247280_))))
                   (___match255740255741_
                    (lambda (_e246553247400_
                             _hd246552247403_
                             _tl246551247405_
                             _e246556247408_
                             _hd246555247411_
                             _tl246554247413_
                             _e246559247416_
                             _hd246558247419_
                             _tl246557247421_
                             _e246562247424_
                             _hd246561247427_
                             _tl246560247429_
                             _e246565247432_
                             _hd246564247435_
                             _tl246563247437_
                             _e246568247440_
                             _hd246567247443_
                             _tl246566247445_
                             _e246571247448_
                             _hd246570247451_
                             _tl246569247453_
                             _e246574247456_
                             _hd246573247459_
                             _tl246572247461_
                             _e246577247464_
                             _hd246576247467_
                             _tl246575247469_
                             _e246580247472_
                             _hd246579247475_
                             _tl246578247477_
                             ___splice255639255640_
                             _target246581247480_
                             _tl246583247482_)
                      (letrec ((_loop246584247485_
                                (lambda (_hd246582247488_ _args246588247490_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd246582247488_))
                                      (let ((_e246585247493_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd246582247488_))))
                                        (let ((_lp-tl246587247498_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e246585247493_)))
                                              (_lp-hd246586247496_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e246585247493_))))
                                          (let ((__tmp257010
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd246586247496_
                                                         _args246588247490_))))
                                            (declare (not safe))
                                            (_loop246584247485_
                                             _lp-tl246587247498_
                                             __tmp257010))))
                                      (let ((_args246589247501_
                                             (reverse _args246588247490_)))
                                        (let ((_L247504_ _args246589247501_)
                                              (_L247505_ _hd246579247475_)
                                              (_L247506_ _hd246570247451_)
                                              (_L247507_ _hd246561247427_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L247507_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L247506_
                                                      _self246532_)))
                                              (___kont255637255638_
                                               _L247504_
                                               _L247505_
                                               _L247506_
                                               _L247507_)
                                              (___match255928255929_
                                               _e246553247400_
                                               _hd246552247403_
                                               _tl246551247405_
                                               _e246556247408_
                                               _hd246555247411_
                                               _tl246554247413_
                                               _e246559247416_
                                               _hd246558247419_
                                               _tl246557247421_
                                               _e246562247424_
                                               _hd246561247427_
                                               _tl246560247429_
                                               _e246565247432_
                                               _hd246564247435_
                                               _tl246563247437_
                                               _e246568247440_
                                               _hd246567247443_
                                               _tl246566247445_
                                               _e246571247448_
                                               _hd246570247451_
                                               _tl246569247453_
                                               _e246574247456_
                                               _hd246573247459_
                                               _tl246572247461_
                                               _e246577247464_
                                               _hd246576247467_
                                               _tl246575247469_
                                               _e246580247472_
                                               _hd246579247475_
                                               _tl246578247477_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop246584247485_ _target246581247480_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx255635255636_))
                  (let ((_e246553247400_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx255635255636_))))
                    (let ((_tl246551247405_
                           (let ()
                             (declare (not safe))
                             (##cdr _e246553247400_)))
                          (_hd246552247403_
                           (let ()
                             (declare (not safe))
                             (##car _e246553247400_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl246551247405_))
                          (let ((_e246556247408_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl246551247405_))))
                            (let ((_tl246554247413_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e246556247408_)))
                                  (_hd246555247411_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e246556247408_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd246555247411_))
                                  (let ((_e246559247416_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd246555247411_))))
                                    (let ((_tl246557247421_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e246559247416_)))
                                          (_hd246558247419_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e246559247416_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd246558247419_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd246558247419_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl246557247421_))
                                                  (let ((_e246562247424_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl246557247421_))))
                                                    (let ((_tl246560247429_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e246562247424_)))
                                                          (_hd246561247427_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e246562247424_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl246560247429_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl246554247413_))
                      (let ((_e246565247432_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl246554247413_))))
                        (let ((_tl246563247437_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e246565247432_)))
                              (_hd246564247435_
                               (let ()
                                 (declare (not safe))
                                 (##car _e246565247432_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd246564247435_))
                              (let ((_e246568247440_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd246564247435_))))
                                (let ((_tl246566247445_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e246568247440_)))
                                      (_hd246567247443_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e246568247440_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd246567247443_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd246567247443_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl246566247445_))
                                              (let ((_e246571247448_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl246566247445_))))
                                                (let ((_tl246569247453_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e246571247448_)))
                                                      (_hd246570247451_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e246571247448_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl246569247453_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl246563247437_))
                                                          (let ((_e246574247456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl246563247437_))))
                    (let ((_tl246572247461_
                           (let ()
                             (declare (not safe))
                             (##cdr _e246574247456_)))
                          (_hd246573247459_
                           (let ()
                             (declare (not safe))
                             (##car _e246574247456_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd246573247459_))
                          (let ((_e246577247464_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd246573247459_))))
                            (let ((_tl246575247469_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e246577247464_)))
                                  (_hd246576247467_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e246577247464_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd246576247467_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd246576247467_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl246575247469_))
                                          (let ((_e246580247472_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl246575247469_))))
                                            (let ((_tl246578247477_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e246580247472_)))
                                                  (_hd246579247475_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e246580247472_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl246578247477_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl246572247461_))
                                                      (let ((___splice255639255640_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl246572247461_ '0))))
                (let ((_tl246583247482_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice255639255640_ '1)))
                      (_target246581247480_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice255639255640_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl246583247482_))
                      (___match255740255741_
                       _e246553247400_
                       _hd246552247403_
                       _tl246551247405_
                       _e246556247408_
                       _hd246555247411_
                       _tl246554247413_
                       _e246559247416_
                       _hd246558247419_
                       _tl246557247421_
                       _e246562247424_
                       _hd246561247427_
                       _tl246560247429_
                       _e246565247432_
                       _hd246564247435_
                       _tl246563247437_
                       _e246568247440_
                       _hd246567247443_
                       _tl246566247445_
                       _e246571247448_
                       _hd246570247451_
                       _tl246569247453_
                       _e246574247456_
                       _hd246573247459_
                       _tl246572247461_
                       _e246577247464_
                       _hd246576247467_
                       _tl246575247469_
                       _e246580247472_
                       _hd246579247475_
                       _tl246578247477_
                       ___splice255639255640_
                       _target246581247480_
                       _tl246583247482_)
                      (___match255928255929_
                       _e246553247400_
                       _hd246552247403_
                       _tl246551247405_
                       _e246556247408_
                       _hd246555247411_
                       _tl246554247413_
                       _e246559247416_
                       _hd246558247419_
                       _tl246557247421_
                       _e246562247424_
                       _hd246561247427_
                       _tl246560247429_
                       _e246565247432_
                       _hd246564247435_
                       _tl246563247437_
                       _e246568247440_
                       _hd246567247443_
                       _tl246566247445_
                       _e246571247448_
                       _hd246570247451_
                       _tl246569247453_
                       _e246574247456_
                       _hd246573247459_
                       _tl246572247461_
                       _e246577247464_
                       _hd246576247467_
                       _tl246575247469_
                       _e246580247472_
                       _hd246579247475_
                       _tl246578247477_))))
              (___match255928255929_
               _e246553247400_
               _hd246552247403_
               _tl246551247405_
               _e246556247408_
               _hd246555247411_
               _tl246554247413_
               _e246559247416_
               _hd246558247419_
               _tl246557247421_
               _e246562247424_
               _hd246561247427_
               _tl246560247429_
               _e246565247432_
               _hd246564247435_
               _tl246563247437_
               _e246568247440_
               _hd246567247443_
               _tl246566247445_
               _e246571247448_
               _hd246570247451_
               _tl246569247453_
               _e246574247456_
               _hd246573247459_
               _tl246572247461_
               _e246577247464_
               _hd246576247467_
               _tl246575247469_
               _e246580247472_
               _hd246579247475_
               _tl246578247477_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match256132256133_
                                                   _e246553247400_
                                                   _hd246552247403_
                                                   _tl246551247405_
                                                   _e246556247408_
                                                   _hd246555247411_
                                                   _tl246554247413_
                                                   _e246559247416_
                                                   _hd246558247419_
                                                   _tl246557247421_
                                                   _e246562247424_
                                                   _hd246561247427_
                                                   _tl246560247429_
                                                   _e246565247432_
                                                   _hd246564247435_
                                                   _tl246563247437_
                                                   _e246568247440_
                                                   _hd246567247443_
                                                   _tl246566247445_
                                                   _e246571247448_
                                                   _hd246570247451_
                                                   _tl246569247453_
                                                   _e246574247456_
                                                   _hd246573247459_
                                                   _tl246572247461_))))
                                          (___match256132256133_
                                           _e246553247400_
                                           _hd246552247403_
                                           _tl246551247405_
                                           _e246556247408_
                                           _hd246555247411_
                                           _tl246554247413_
                                           _e246559247416_
                                           _hd246558247419_
                                           _tl246557247421_
                                           _e246562247424_
                                           _hd246561247427_
                                           _tl246560247429_
                                           _e246565247432_
                                           _hd246564247435_
                                           _tl246563247437_
                                           _e246568247440_
                                           _hd246567247443_
                                           _tl246566247445_
                                           _e246571247448_
                                           _hd246570247451_
                                           _tl246569247453_
                                           _e246574247456_
                                           _hd246573247459_
                                           _tl246572247461_))
                                      (___match255808255809_
                                       _e246553247400_
                                       _hd246552247403_
                                       _tl246551247405_
                                       _e246556247408_
                                       _hd246555247411_
                                       _tl246554247413_
                                       _e246559247416_
                                       _hd246558247419_
                                       _tl246557247421_
                                       _e246562247424_
                                       _hd246561247427_
                                       _tl246560247429_
                                       _e246565247432_
                                       _hd246564247435_
                                       _tl246563247437_
                                       _e246568247440_
                                       _hd246567247443_
                                       _tl246566247445_
                                       _e246571247448_
                                       _hd246570247451_
                                       _tl246569247453_
                                       _e246574247456_
                                       _hd246573247459_
                                       _tl246572247461_
                                       _e246577247464_
                                       _hd246576247467_
                                       _tl246575247469_))
                                  (___match256132256133_
                                   _e246553247400_
                                   _hd246552247403_
                                   _tl246551247405_
                                   _e246556247408_
                                   _hd246555247411_
                                   _tl246554247413_
                                   _e246559247416_
                                   _hd246558247419_
                                   _tl246557247421_
                                   _e246562247424_
                                   _hd246561247427_
                                   _tl246560247429_
                                   _e246565247432_
                                   _hd246564247435_
                                   _tl246563247437_
                                   _e246568247440_
                                   _hd246567247443_
                                   _tl246566247445_
                                   _e246571247448_
                                   _hd246570247451_
                                   _tl246569247453_
                                   _e246574247456_
                                   _hd246573247459_
                                   _tl246572247461_))))
                          (___match256132256133_
                           _e246553247400_
                           _hd246552247403_
                           _tl246551247405_
                           _e246556247408_
                           _hd246555247411_
                           _tl246554247413_
                           _e246559247416_
                           _hd246558247419_
                           _tl246557247421_
                           _e246562247424_
                           _hd246561247427_
                           _tl246560247429_
                           _e246565247432_
                           _hd246564247435_
                           _tl246563247437_
                           _e246568247440_
                           _hd246567247443_
                           _tl246566247445_
                           _e246571247448_
                           _hd246570247451_
                           _tl246569247453_
                           _e246574247456_
                           _hd246573247459_
                           _tl246572247461_))))
                  (___match256070256071_
                   _e246553247400_
                   _hd246552247403_
                   _tl246551247405_
                   _e246556247408_
                   _hd246555247411_
                   _tl246554247413_
                   _e246559247416_
                   _hd246558247419_
                   _tl246557247421_
                   _e246562247424_
                   _hd246561247427_
                   _tl246560247429_
                   _e246565247432_
                   _hd246564247435_
                   _tl246563247437_
                   _e246568247440_
                   _hd246567247443_
                   _tl246566247445_
                   _e246571247448_
                   _hd246570247451_
                   _tl246569247453_))
              (___kont255653255654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont255653255654_))
                                          (___kont255653255654_))
                                      (___kont255653255654_))))
                              (___kont255653255654_))))
                      (___kont255653255654_))
                  (___kont255653255654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont255653255654_))
                                              (___kont255653255654_))
                                          (___kont255653255654_))))
                                  (___kont255653255654_))))
                          (___kont255653255654_))))
                  (___kont255653255654_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx245477_
               _self245478_
               _$t245479_
               _methods245480_
               _slots245481_
               _class-check245482_
               _struct-check245483_
               _struct-assert245484_)
        (letrec ((_force-e245486_
                  (lambda (_what246529_)
                    (let ((__tmp257011
                           (let ((__tmp257015
                                  (let ((__tmp257016
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp257016)))
                                 (__tmp257012
                                  (let ((__tmp257013
                                         (let ((__tmp257014
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what246529_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp257014))))
                                    (declare (not safe))
                                    (cons __tmp257013 '()))))
                             (declare (not safe))
                             (cons __tmp257015 __tmp257012))))
                      (declare (not safe))
                      (cons '%#call __tmp257011)))))
          (let* ((___stx256137256138_ _stx245477_)
                 (_g245494245716_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx256137256138_)))))
            (let ((___kont256139256140_
                   (lambda (_L246475_ _L246476_ _L246477_ _L246478_)
                     (let ((_$method246523_
                            (let ((__tmp257017
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L246476_))))
                              (declare (not safe))
                              (table-ref _methods245480_ __tmp257017)))
                           (_args246524_
                            (map (lambda (_g246511246513_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g246511246513_
                                      _self245478_
                                      _$t245479_
                                      _methods245480_
                                      _slots245481_
                                      _class-check245482_
                                      _struct-check245483_
                                      _struct-assert245484_)))
                                 (let ((__tmp257018
                                        (lambda (_g246515246518_
                                                 _g246516246520_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g246515246518_
                                                  _g246516246520_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp257018 '() _L246475_)))))
                       (let ((__tmp257019
                              (let ((__tmp257020
                                     (let ((__tmp257024
                                            (let ()
                                              (declare (not safe))
                                              (_force-e245486_
                                               _$method246523_)))
                                           (__tmp257021
                                            (let ((__tmp257022
                                                   (let ((__tmp257023
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self245478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp257023))))
                                              (declare (not safe))
                                              (cons __tmp257022
                                                    _args246524_))))
                                       (declare (not safe))
                                       (cons __tmp257024 __tmp257021))))
                                (declare (not safe))
                                (cons '%#call __tmp257020))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp257019 _stx245477_)))))
                  (___kont256143256144_
                   (lambda (_L246307_ _L246308_ _L246309_ _L246310_ _L246311_)
                     (let ((_$method246363_
                            (let ((__tmp257025
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L246308_))))
                              (declare (not safe))
                              (table-ref _methods245480_ __tmp257025)))
                           (_args246364_
                            (map (lambda (_g246351246353_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g246351246353_
                                      _self245478_
                                      _$t245479_
                                      _methods245480_
                                      _slots245481_
                                      _class-check245482_
                                      _struct-check245483_
                                      _struct-assert245484_)))
                                 (let ((__tmp257026
                                        (lambda (_g246355246358_
                                                 _g246356246360_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g246355246358_
                                                  _g246356246360_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp257026 '() _L246307_)))))
                       (let ((__tmp257027
                              (let ((__tmp257028
                                     (let ((__tmp257034
                                            (let ((__tmp257035
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp257035)))
                                           (__tmp257029
                                            (let ((__tmp257033
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e245486_
                                                      _$method246363_)))
                                                  (__tmp257030
                                                   (let ((__tmp257031
                                                          (let ((__tmp257032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self245478_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp257032))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp257031
                                                           _args246364_))))
                                              (declare (not safe))
                                              (cons __tmp257033 __tmp257030))))
                                       (declare (not safe))
                                       (cons __tmp257034 __tmp257029))))
                                (declare (not safe))
                                (cons '%#call __tmp257028))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp257027 _stx245477_)))))
                  (___kont256147256148_
                   (lambda (_L246138_ _L246139_ _L246140_)
                     (let* ((_$field246172_
                             (let ((__tmp257036
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L246138_))))
                               (declare (not safe))
                               (table-ref _slots245481_ __tmp257036)))
                            (__tmp257037
                             (let ((__tmp257038
                                    (let ((__tmp257045
                                           (let ((__tmp257046
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t245479_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp257046)))
                                          (__tmp257039
                                           (let ((__tmp257043
                                                  (let ((__tmp257044
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field246172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp257044)))
                                                 (__tmp257040
                                                  (let ((__tmp257041
                                                         (let ((__tmp257042
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self245478_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp257042))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp257041 '()))))
                                             (declare (not safe))
                                             (cons __tmp257043 __tmp257040))))
                                      (declare (not safe))
                                      (cons __tmp257045 __tmp257039))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp257038))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp257037 _stx245477_))))
                  (___kont256149256150_
                   (lambda (_L246012_ _L246013_ _L246014_ _L246015_)
                     (let ((_$field246050_
                            (let ((__tmp257047
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L246013_))))
                              (declare (not safe))
                              (table-ref _slots245481_ __tmp257047)))
                           (_expr246051_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L246012_
                               _self245478_
                               _$t245479_
                               _methods245480_
                               _slots245481_
                               _class-check245482_
                               _struct-check245483_
                               _struct-assert245484_))))
                       (let ((__tmp257048
                              (let ((__tmp257049
                                     (let ((__tmp257057
                                            (let ((__tmp257058
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t245479_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp257058)))
                                           (__tmp257050
                                            (let ((__tmp257055
                                                   (let ((__tmp257056
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field246050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp257056)))
                                                  (__tmp257051
                                                   (let ((__tmp257053
                                                          (let ((__tmp257054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self245478_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp257054)))
                 (__tmp257052
                  (let () (declare (not safe)) (cons _expr246051_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp257053
                                                           __tmp257052))))
                                              (declare (not safe))
                                              (cons __tmp257055 __tmp257051))))
                                       (declare (not safe))
                                       (cons __tmp257057 __tmp257050))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp257049))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp257048 _stx245477_)))))
                  (___kont256151256152_
                   (lambda (_L245891_ _L245892_)
                     (let* ((_slot245914_
                             (##structure-ref
                              (let ((__tmp257059
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L245892_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp257059))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field245916_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots245481_ _slot245914_))))
                       (let ((__tmp257060
                              (let ((__tmp257061
                                     (let ((__tmp257068
                                            (let ((__tmp257069
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t245479_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp257069)))
                                           (__tmp257062
                                            (let ((__tmp257066
                                                   (let ((__tmp257067
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field245916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp257067)))
                                                  (__tmp257063
                                                   (let ((__tmp257064
                                                          (let ((__tmp257065
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self245478_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp257065))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp257064 '()))))
                                              (declare (not safe))
                                              (cons __tmp257066 __tmp257063))))
                                       (declare (not safe))
                                       (cons __tmp257068 __tmp257062))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp257061))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp257060 _stx245477_)))))
                  (___kont256153256154_
                   (lambda (_L245792_ _L245793_ _L245794_)
                     (let* ((_slot245823_
                             (##structure-ref
                              (let ((__tmp257070
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L245794_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp257070))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field245825_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots245481_ _slot245823_)))
                            (_expr245827_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L245792_
                                _self245478_
                                _$t245479_
                                _methods245480_
                                _slots245481_
                                _class-check245482_
                                _struct-check245483_
                                _struct-assert245484_))))
                       (let ((__tmp257071
                              (let ((__tmp257072
                                     (let ((__tmp257080
                                            (let ((__tmp257081
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t245479_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp257081)))
                                           (__tmp257073
                                            (let ((__tmp257078
                                                   (let ((__tmp257079
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field245825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp257079)))
                                                  (__tmp257074
                                                   (let ((__tmp257076
                                                          (let ((__tmp257077
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self245478_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp257077)))
                 (__tmp257075
                  (let () (declare (not safe)) (cons _expr245827_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp257076
                                                           __tmp257075))))
                                              (declare (not safe))
                                              (cons __tmp257078 __tmp257074))))
                                       (declare (not safe))
                                       (cons __tmp257080 __tmp257073))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp257072))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp257071 _stx245477_)))))
                  (___kont256155256156_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx245477_
                        _self245478_
                        _$t245479_
                        _methods245480_
                        _slots245481_
                        _class-check245482_
                        _struct-check245483_
                        _struct-assert245484_)))))
              (let* ((___match256636256637_
                      (lambda (_e245690245728_
                               _hd245689245731_
                               _tl245688245733_
                               _e245693245736_
                               _hd245692245739_
                               _tl245691245741_
                               _e245696245744_
                               _hd245695245747_
                               _tl245694245749_
                               _e245699245752_
                               _hd245698245755_
                               _tl245697245757_
                               _e245702245760_
                               _hd245701245763_
                               _tl245700245765_
                               _e245705245768_
                               _hd245704245771_
                               _tl245703245773_
                               _e245708245776_
                               _hd245707245779_
                               _tl245706245781_
                               _e245711245784_
                               _hd245710245787_
                               _tl245709245789_)
                        (let ((_L245792_ _hd245710245787_)
                              (_L245793_ _hd245707245779_)
                              (_L245794_ _hd245698245755_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L245793_
                                      _self245478_))
                                   (let ((__tmp257082
                                          (let ((__tmp257083
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L245794_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp257083))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp257082
                                      'gxc#!mutator::t)))
                              (___kont256153256154_
                               _L245792_
                               _L245793_
                               _L245794_)
                              (___kont256155256156_)))))
                     (___match256634256635_
                      (lambda (_e245690245728_
                               _hd245689245731_
                               _tl245688245733_
                               _e245693245736_
                               _hd245692245739_
                               _tl245691245741_
                               _e245696245744_
                               _hd245695245747_
                               _tl245694245749_
                               _e245699245752_
                               _hd245698245755_
                               _tl245697245757_
                               _e245702245760_
                               _hd245701245763_
                               _tl245700245765_
                               _e245705245768_
                               _hd245704245771_
                               _tl245703245773_
                               _e245708245776_
                               _hd245707245779_
                               _tl245706245781_
                               _e245711245784_
                               _hd245710245787_
                               _tl245709245789_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl245709245789_))
                            (___match256636256637_
                             _e245690245728_
                             _hd245689245731_
                             _tl245688245733_
                             _e245693245736_
                             _hd245692245739_
                             _tl245691245741_
                             _e245696245744_
                             _hd245695245747_
                             _tl245694245749_
                             _e245699245752_
                             _hd245698245755_
                             _tl245697245757_
                             _e245702245760_
                             _hd245701245763_
                             _tl245700245765_
                             _e245705245768_
                             _hd245704245771_
                             _tl245703245773_
                             _e245708245776_
                             _hd245707245779_
                             _tl245706245781_
                             _e245711245784_
                             _hd245710245787_
                             _tl245709245789_)
                            (___kont256155256156_))))
                     (___match256628256629_
                      (lambda (_e245690245728_
                               _hd245689245731_
                               _tl245688245733_
                               _e245693245736_
                               _hd245692245739_
                               _tl245691245741_
                               _e245696245744_
                               _hd245695245747_
                               _tl245694245749_
                               _e245699245752_
                               _hd245698245755_
                               _tl245697245757_
                               _e245702245760_
                               _hd245701245763_
                               _tl245700245765_
                               _e245705245768_
                               _hd245704245771_
                               _tl245703245773_
                               _e245708245776_
                               _hd245707245779_
                               _tl245706245781_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl245700245765_))
                            (let ((_e245711245784_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl245700245765_))))
                              (let ((_tl245709245789_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245711245784_)))
                                    (_hd245710245787_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245711245784_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl245709245789_))
                                    (___match256636256637_
                                     _e245690245728_
                                     _hd245689245731_
                                     _tl245688245733_
                                     _e245693245736_
                                     _hd245692245739_
                                     _tl245691245741_
                                     _e245696245744_
                                     _hd245695245747_
                                     _tl245694245749_
                                     _e245699245752_
                                     _hd245698245755_
                                     _tl245697245757_
                                     _e245702245760_
                                     _hd245701245763_
                                     _tl245700245765_
                                     _e245705245768_
                                     _hd245704245771_
                                     _tl245703245773_
                                     _e245708245776_
                                     _hd245707245779_
                                     _tl245706245781_
                                     _e245711245784_
                                     _hd245710245787_
                                     _tl245709245789_)
                                    (___kont256155256156_))))
                            (___kont256155256156_))))
                     (___match256574256575_
                      (lambda (_e245666245835_
                               _hd245665245838_
                               _tl245664245840_
                               _e245669245843_
                               _hd245668245846_
                               _tl245667245848_
                               _e245672245851_
                               _hd245671245854_
                               _tl245670245856_
                               _e245675245859_
                               _hd245674245862_
                               _tl245673245864_
                               _e245678245867_
                               _hd245677245870_
                               _tl245676245872_
                               _e245681245875_
                               _hd245680245878_
                               _tl245679245880_
                               _e245684245883_
                               _hd245683245886_
                               _tl245682245888_)
                        (let ((_L245891_ _hd245683245886_)
                              (_L245892_ _hd245674245862_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L245891_
                                      _self245478_))
                                   (let ((__tmp257084
                                          (let ((__tmp257085
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L245892_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp257085))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp257084
                                      'gxc#!accessor::t)))
                              (___kont256151256152_ _L245891_ _L245892_)
                              (___kont256155256156_)))))
                     (___match256572256573_
                      (lambda (_e245666245835_
                               _hd245665245838_
                               _tl245664245840_
                               _e245669245843_
                               _hd245668245846_
                               _tl245667245848_
                               _e245672245851_
                               _hd245671245854_
                               _tl245670245856_
                               _e245675245859_
                               _hd245674245862_
                               _tl245673245864_
                               _e245678245867_
                               _hd245677245870_
                               _tl245676245872_
                               _e245681245875_
                               _hd245680245878_
                               _tl245679245880_
                               _e245684245883_
                               _hd245683245886_
                               _tl245682245888_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl245676245872_))
                            (___match256574256575_
                             _e245666245835_
                             _hd245665245838_
                             _tl245664245840_
                             _e245669245843_
                             _hd245668245846_
                             _tl245667245848_
                             _e245672245851_
                             _hd245671245854_
                             _tl245670245856_
                             _e245675245859_
                             _hd245674245862_
                             _tl245673245864_
                             _e245678245867_
                             _hd245677245870_
                             _tl245676245872_
                             _e245681245875_
                             _hd245680245878_
                             _tl245679245880_
                             _e245684245883_
                             _hd245683245886_
                             _tl245682245888_)
                            (___match256628256629_
                             _e245666245835_
                             _hd245665245838_
                             _tl245664245840_
                             _e245669245843_
                             _hd245668245846_
                             _tl245667245848_
                             _e245672245851_
                             _hd245671245854_
                             _tl245670245856_
                             _e245675245859_
                             _hd245674245862_
                             _tl245673245864_
                             _e245678245867_
                             _hd245677245870_
                             _tl245676245872_
                             _e245681245875_
                             _hd245680245878_
                             _tl245679245880_
                             _e245684245883_
                             _hd245683245886_
                             _tl245682245888_))))
                     (___match256518256519_
                      (lambda (_e245631245924_
                               _hd245630245927_
                               _tl245629245929_
                               _e245634245932_
                               _hd245633245935_
                               _tl245632245937_
                               _e245637245940_
                               _hd245636245943_
                               _tl245635245945_
                               _e245640245948_
                               _hd245639245951_
                               _tl245638245953_
                               _e245643245956_
                               _hd245642245959_
                               _tl245641245961_
                               _e245646245964_
                               _hd245645245967_
                               _tl245644245969_
                               _e245649245972_
                               _hd245648245975_
                               _tl245647245977_
                               _e245652245980_
                               _hd245651245983_
                               _tl245650245985_
                               _e245655245988_
                               _hd245654245991_
                               _tl245653245993_
                               _e245658245996_
                               _hd245657245999_
                               _tl245656246001_
                               _e245661246004_
                               _hd245660246007_
                               _tl245659246009_)
                        (let ((_L246012_ _hd245660246007_)
                              (_L246013_ _hd245657245999_)
                              (_L246014_ _hd245648245975_)
                              (_L246015_ _hd245639245951_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L246015_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L246015_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L246014_
                                      _self245478_)))
                              (___kont256149256150_
                               _L246012_
                               _L246013_
                               _L246014_
                               _L246015_)
                              (___kont256155256156_)))))
                     (___match256510256511_
                      (lambda (_e245631245924_
                               _hd245630245927_
                               _tl245629245929_
                               _e245634245932_
                               _hd245633245935_
                               _tl245632245937_
                               _e245637245940_
                               _hd245636245943_
                               _tl245635245945_
                               _e245640245948_
                               _hd245639245951_
                               _tl245638245953_
                               _e245643245956_
                               _hd245642245959_
                               _tl245641245961_
                               _e245646245964_
                               _hd245645245967_
                               _tl245644245969_
                               _e245649245972_
                               _hd245648245975_
                               _tl245647245977_
                               _e245652245980_
                               _hd245651245983_
                               _tl245650245985_
                               _e245655245988_
                               _hd245654245991_
                               _tl245653245993_
                               _e245658245996_
                               _hd245657245999_
                               _tl245656246001_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl245650245985_))
                            (let ((_e245661246004_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl245650245985_))))
                              (let ((_tl245659246009_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245661246004_)))
                                    (_hd245660246007_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245661246004_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl245659246009_))
                                    (___match256518256519_
                                     _e245631245924_
                                     _hd245630245927_
                                     _tl245629245929_
                                     _e245634245932_
                                     _hd245633245935_
                                     _tl245632245937_
                                     _e245637245940_
                                     _hd245636245943_
                                     _tl245635245945_
                                     _e245640245948_
                                     _hd245639245951_
                                     _tl245638245953_
                                     _e245643245956_
                                     _hd245642245959_
                                     _tl245641245961_
                                     _e245646245964_
                                     _hd245645245967_
                                     _tl245644245969_
                                     _e245649245972_
                                     _hd245648245975_
                                     _tl245647245977_
                                     _e245652245980_
                                     _hd245651245983_
                                     _tl245650245985_
                                     _e245655245988_
                                     _hd245654245991_
                                     _tl245653245993_
                                     _e245658245996_
                                     _hd245657245999_
                                     _tl245656246001_
                                     _e245661246004_
                                     _hd245660246007_
                                     _tl245659246009_)
                                    (___kont256155256156_))))
                            (___match256634256635_
                             _e245631245924_
                             _hd245630245927_
                             _tl245629245929_
                             _e245634245932_
                             _hd245633245935_
                             _tl245632245937_
                             _e245637245940_
                             _hd245636245943_
                             _tl245635245945_
                             _e245640245948_
                             _hd245639245951_
                             _tl245638245953_
                             _e245643245956_
                             _hd245642245959_
                             _tl245641245961_
                             _e245646245964_
                             _hd245645245967_
                             _tl245644245969_
                             _e245649245972_
                             _hd245648245975_
                             _tl245647245977_
                             _e245652245980_
                             _hd245651245983_
                             _tl245650245985_))))
                     (___match256432256433_
                      (lambda (_e245597246058_
                               _hd245596246061_
                               _tl245595246063_
                               _e245600246066_
                               _hd245599246069_
                               _tl245598246071_
                               _e245603246074_
                               _hd245602246077_
                               _tl245601246079_
                               _e245606246082_
                               _hd245605246085_
                               _tl245604246087_
                               _e245609246090_
                               _hd245608246093_
                               _tl245607246095_
                               _e245612246098_
                               _hd245611246101_
                               _tl245610246103_
                               _e245615246106_
                               _hd245614246109_
                               _tl245613246111_
                               _e245618246114_
                               _hd245617246117_
                               _tl245616246119_
                               _e245621246122_
                               _hd245620246125_
                               _tl245619246127_
                               _e245624246130_
                               _hd245623246133_
                               _tl245622246135_)
                        (let ((_L246138_ _hd245623246133_)
                              (_L246139_ _hd245614246109_)
                              (_L246140_ _hd245605246085_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L246140_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L246140_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L246139_
                                      _self245478_)))
                              (___kont256147256148_
                               _L246138_
                               _L246139_
                               _L246140_)
                              (___match256636256637_
                               _e245597246058_
                               _hd245596246061_
                               _tl245595246063_
                               _e245600246066_
                               _hd245599246069_
                               _tl245598246071_
                               _e245603246074_
                               _hd245602246077_
                               _tl245601246079_
                               _e245606246082_
                               _hd245605246085_
                               _tl245604246087_
                               _e245609246090_
                               _hd245608246093_
                               _tl245607246095_
                               _e245612246098_
                               _hd245611246101_
                               _tl245610246103_
                               _e245615246106_
                               _hd245614246109_
                               _tl245613246111_
                               _e245618246114_
                               _hd245617246117_
                               _tl245616246119_)))))
                     (___match256430256431_
                      (lambda (_e245597246058_
                               _hd245596246061_
                               _tl245595246063_
                               _e245600246066_
                               _hd245599246069_
                               _tl245598246071_
                               _e245603246074_
                               _hd245602246077_
                               _tl245601246079_
                               _e245606246082_
                               _hd245605246085_
                               _tl245604246087_
                               _e245609246090_
                               _hd245608246093_
                               _tl245607246095_
                               _e245612246098_
                               _hd245611246101_
                               _tl245610246103_
                               _e245615246106_
                               _hd245614246109_
                               _tl245613246111_
                               _e245618246114_
                               _hd245617246117_
                               _tl245616246119_
                               _e245621246122_
                               _hd245620246125_
                               _tl245619246127_
                               _e245624246130_
                               _hd245623246133_
                               _tl245622246135_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl245616246119_))
                            (___match256432256433_
                             _e245597246058_
                             _hd245596246061_
                             _tl245595246063_
                             _e245600246066_
                             _hd245599246069_
                             _tl245598246071_
                             _e245603246074_
                             _hd245602246077_
                             _tl245601246079_
                             _e245606246082_
                             _hd245605246085_
                             _tl245604246087_
                             _e245609246090_
                             _hd245608246093_
                             _tl245607246095_
                             _e245612246098_
                             _hd245611246101_
                             _tl245610246103_
                             _e245615246106_
                             _hd245614246109_
                             _tl245613246111_
                             _e245618246114_
                             _hd245617246117_
                             _tl245616246119_
                             _e245621246122_
                             _hd245620246125_
                             _tl245619246127_
                             _e245624246130_
                             _hd245623246133_
                             _tl245622246135_)
                            (___match256510256511_
                             _e245597246058_
                             _hd245596246061_
                             _tl245595246063_
                             _e245600246066_
                             _hd245599246069_
                             _tl245598246071_
                             _e245603246074_
                             _hd245602246077_
                             _tl245601246079_
                             _e245606246082_
                             _hd245605246085_
                             _tl245604246087_
                             _e245609246090_
                             _hd245608246093_
                             _tl245607246095_
                             _e245612246098_
                             _hd245611246101_
                             _tl245610246103_
                             _e245615246106_
                             _hd245614246109_
                             _tl245613246111_
                             _e245618246114_
                             _hd245617246117_
                             _tl245616246119_
                             _e245621246122_
                             _hd245620246125_
                             _tl245619246127_
                             _e245624246130_
                             _hd245623246133_
                             _tl245622246135_))))
                     (___match256420256421_
                      (lambda (_e245597246058_
                               _hd245596246061_
                               _tl245595246063_
                               _e245600246066_
                               _hd245599246069_
                               _tl245598246071_
                               _e245603246074_
                               _hd245602246077_
                               _tl245601246079_
                               _e245606246082_
                               _hd245605246085_
                               _tl245604246087_
                               _e245609246090_
                               _hd245608246093_
                               _tl245607246095_
                               _e245612246098_
                               _hd245611246101_
                               _tl245610246103_
                               _e245615246106_
                               _hd245614246109_
                               _tl245613246111_
                               _e245618246114_
                               _hd245617246117_
                               _tl245616246119_
                               _e245621246122_
                               _hd245620246125_
                               _tl245619246127_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd245620246125_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl245619246127_))
                                (let ((_e245624246130_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl245619246127_))))
                                  (let ((_tl245622246135_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e245624246130_)))
                                        (_hd245623246133_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e245624246130_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl245622246135_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl245616246119_))
                                            (___match256432256433_
                                             _e245597246058_
                                             _hd245596246061_
                                             _tl245595246063_
                                             _e245600246066_
                                             _hd245599246069_
                                             _tl245598246071_
                                             _e245603246074_
                                             _hd245602246077_
                                             _tl245601246079_
                                             _e245606246082_
                                             _hd245605246085_
                                             _tl245604246087_
                                             _e245609246090_
                                             _hd245608246093_
                                             _tl245607246095_
                                             _e245612246098_
                                             _hd245611246101_
                                             _tl245610246103_
                                             _e245615246106_
                                             _hd245614246109_
                                             _tl245613246111_
                                             _e245618246114_
                                             _hd245617246117_
                                             _tl245616246119_
                                             _e245621246122_
                                             _hd245620246125_
                                             _tl245619246127_
                                             _e245624246130_
                                             _hd245623246133_
                                             _tl245622246135_)
                                            (___match256510256511_
                                             _e245597246058_
                                             _hd245596246061_
                                             _tl245595246063_
                                             _e245600246066_
                                             _hd245599246069_
                                             _tl245598246071_
                                             _e245603246074_
                                             _hd245602246077_
                                             _tl245601246079_
                                             _e245606246082_
                                             _hd245605246085_
                                             _tl245604246087_
                                             _e245609246090_
                                             _hd245608246093_
                                             _tl245607246095_
                                             _e245612246098_
                                             _hd245611246101_
                                             _tl245610246103_
                                             _e245615246106_
                                             _hd245614246109_
                                             _tl245613246111_
                                             _e245618246114_
                                             _hd245617246117_
                                             _tl245616246119_
                                             _e245621246122_
                                             _hd245620246125_
                                             _tl245619246127_
                                             _e245624246130_
                                             _hd245623246133_
                                             _tl245622246135_))
                                        (___match256634256635_
                                         _e245597246058_
                                         _hd245596246061_
                                         _tl245595246063_
                                         _e245600246066_
                                         _hd245599246069_
                                         _tl245598246071_
                                         _e245603246074_
                                         _hd245602246077_
                                         _tl245601246079_
                                         _e245606246082_
                                         _hd245605246085_
                                         _tl245604246087_
                                         _e245609246090_
                                         _hd245608246093_
                                         _tl245607246095_
                                         _e245612246098_
                                         _hd245611246101_
                                         _tl245610246103_
                                         _e245615246106_
                                         _hd245614246109_
                                         _tl245613246111_
                                         _e245618246114_
                                         _hd245617246117_
                                         _tl245616246119_))))
                                (___match256634256635_
                                 _e245597246058_
                                 _hd245596246061_
                                 _tl245595246063_
                                 _e245600246066_
                                 _hd245599246069_
                                 _tl245598246071_
                                 _e245603246074_
                                 _hd245602246077_
                                 _tl245601246079_
                                 _e245606246082_
                                 _hd245605246085_
                                 _tl245604246087_
                                 _e245609246090_
                                 _hd245608246093_
                                 _tl245607246095_
                                 _e245612246098_
                                 _hd245611246101_
                                 _tl245610246103_
                                 _e245615246106_
                                 _hd245614246109_
                                 _tl245613246111_
                                 _e245618246114_
                                 _hd245617246117_
                                 _tl245616246119_))
                            (___match256634256635_
                             _e245597246058_
                             _hd245596246061_
                             _tl245595246063_
                             _e245600246066_
                             _hd245599246069_
                             _tl245598246071_
                             _e245603246074_
                             _hd245602246077_
                             _tl245601246079_
                             _e245606246082_
                             _hd245605246085_
                             _tl245604246087_
                             _e245609246090_
                             _hd245608246093_
                             _tl245607246095_
                             _e245612246098_
                             _hd245611246101_
                             _tl245610246103_
                             _e245615246106_
                             _hd245614246109_
                             _tl245613246111_
                             _e245618246114_
                             _hd245617246117_
                             _tl245616246119_))))
                     (___match256352256353_
                      (lambda (_e245546246179_
                               _hd245545246182_
                               _tl245544246184_
                               _e245549246187_
                               _hd245548246190_
                               _tl245547246192_
                               _e245552246195_
                               _hd245551246198_
                               _tl245550246200_
                               _e245555246203_
                               _hd245554246206_
                               _tl245553246208_
                               _e245558246211_
                               _hd245557246214_
                               _tl245556246216_
                               _e245561246219_
                               _hd245560246222_
                               _tl245559246224_
                               _e245564246227_
                               _hd245563246230_
                               _tl245562246232_
                               _e245567246235_
                               _hd245566246238_
                               _tl245565246240_
                               _e245570246243_
                               _hd245569246246_
                               _tl245568246248_
                               _e245573246251_
                               _hd245572246254_
                               _tl245571246256_
                               _e245576246259_
                               _hd245575246262_
                               _tl245574246264_
                               _e245579246267_
                               _hd245578246270_
                               _tl245577246272_
                               _e245582246275_
                               _hd245581246278_
                               _tl245580246280_
                               ___splice256145256146_
                               _target245583246283_
                               _tl245585246285_)
                        (letrec ((_loop245586246288_
                                  (lambda (_hd245584246291_ _args245590246293_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd245584246291_))
                                        (let ((_e245587246296_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd245584246291_))))
                                          (let ((_lp-tl245589246301_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e245587246296_)))
                                                (_lp-hd245588246299_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e245587246296_))))
                                            (let ((__tmp257086
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd245588246299_
                                                           _args245590246293_))))
                                              (declare (not safe))
                                              (_loop245586246288_
                                               _lp-tl245589246301_
                                               __tmp257086))))
                                        (let ((_args245591246304_
                                               (reverse _args245590246293_)))
                                          (let ((_L246307_ _args245591246304_)
                                                (_L246308_ _hd245581246278_)
                                                (_L246309_ _hd245572246254_)
                                                (_L246310_ _hd245563246230_)
                                                (_L246311_ _hd245554246206_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L246311_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L246310_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L246309_
                                                        _self245478_)))
                                                (___kont256143256144_
                                                 _L246307_
                                                 _L246308_
                                                 _L246309_
                                                 _L246310_
                                                 _L246311_)
                                                (___kont256155256156_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop245586246288_ _target245583246283_ '())))))
                     (___match256310256311_
                      (lambda (_e245546246179_
                               _hd245545246182_
                               _tl245544246184_
                               _e245549246187_
                               _hd245548246190_
                               _tl245547246192_
                               _e245552246195_
                               _hd245551246198_
                               _tl245550246200_
                               _e245555246203_
                               _hd245554246206_
                               _tl245553246208_
                               _e245558246211_
                               _hd245557246214_
                               _tl245556246216_
                               _e245561246219_
                               _hd245560246222_
                               _tl245559246224_
                               _e245564246227_
                               _hd245563246230_
                               _tl245562246232_
                               _e245567246235_
                               _hd245566246238_
                               _tl245565246240_
                               _e245570246243_
                               _hd245569246246_
                               _tl245568246248_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd245569246246_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl245568246248_))
                                (let ((_e245573246251_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl245568246248_))))
                                  (let ((_tl245571246256_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e245573246251_)))
                                        (_hd245572246254_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e245573246251_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl245571246256_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl245565246240_))
                                            (let ((_e245576246259_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl245565246240_))))
                                              (let ((_tl245574246264_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e245576246259_)))
                                                    (_hd245575246262_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e245576246259_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd245575246262_))
                                                    (let ((_e245579246267_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd245575246262_))))
                                                      (let ((_tl245577246272_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e245579246267_)))
                    (_hd245578246270_
                     (let () (declare (not safe)) (##car _e245579246267_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd245578246270_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd245578246270_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl245577246272_))
                            (let ((_e245582246275_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl245577246272_))))
                              (let ((_tl245580246280_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245582246275_)))
                                    (_hd245581246278_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245582246275_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl245580246280_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl245574246264_))
                                        (let ((___splice256145256146_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl245574246264_
                                                  '0))))
                                          (let ((_tl245585246285_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice256145256146_
                                                    '1)))
                                                (_target245583246283_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice256145256146_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl245585246285_))
                                                (___match256352256353_
                                                 _e245546246179_
                                                 _hd245545246182_
                                                 _tl245544246184_
                                                 _e245549246187_
                                                 _hd245548246190_
                                                 _tl245547246192_
                                                 _e245552246195_
                                                 _hd245551246198_
                                                 _tl245550246200_
                                                 _e245555246203_
                                                 _hd245554246206_
                                                 _tl245553246208_
                                                 _e245558246211_
                                                 _hd245557246214_
                                                 _tl245556246216_
                                                 _e245561246219_
                                                 _hd245560246222_
                                                 _tl245559246224_
                                                 _e245564246227_
                                                 _hd245563246230_
                                                 _tl245562246232_
                                                 _e245567246235_
                                                 _hd245566246238_
                                                 _tl245565246240_
                                                 _e245570246243_
                                                 _hd245569246246_
                                                 _tl245568246248_
                                                 _e245573246251_
                                                 _hd245572246254_
                                                 _tl245571246256_
                                                 _e245576246259_
                                                 _hd245575246262_
                                                 _tl245574246264_
                                                 _e245579246267_
                                                 _hd245578246270_
                                                 _tl245577246272_
                                                 _e245582246275_
                                                 _hd245581246278_
                                                 _tl245580246280_
                                                 ___splice256145256146_
                                                 _target245583246283_
                                                 _tl245585246285_)
                                                (___kont256155256156_))))
                                        (___kont256155256156_))
                                    (___kont256155256156_))))
                            (___kont256155256156_))
                        (___kont256155256156_))
                    (___kont256155256156_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont256155256156_))))
                                            (___match256634256635_
                                             _e245546246179_
                                             _hd245545246182_
                                             _tl245544246184_
                                             _e245549246187_
                                             _hd245548246190_
                                             _tl245547246192_
                                             _e245552246195_
                                             _hd245551246198_
                                             _tl245550246200_
                                             _e245555246203_
                                             _hd245554246206_
                                             _tl245553246208_
                                             _e245558246211_
                                             _hd245557246214_
                                             _tl245556246216_
                                             _e245561246219_
                                             _hd245560246222_
                                             _tl245559246224_
                                             _e245564246227_
                                             _hd245563246230_
                                             _tl245562246232_
                                             _e245567246235_
                                             _hd245566246238_
                                             _tl245565246240_))
                                        (___match256634256635_
                                         _e245546246179_
                                         _hd245545246182_
                                         _tl245544246184_
                                         _e245549246187_
                                         _hd245548246190_
                                         _tl245547246192_
                                         _e245552246195_
                                         _hd245551246198_
                                         _tl245550246200_
                                         _e245555246203_
                                         _hd245554246206_
                                         _tl245553246208_
                                         _e245558246211_
                                         _hd245557246214_
                                         _tl245556246216_
                                         _e245561246219_
                                         _hd245560246222_
                                         _tl245559246224_
                                         _e245564246227_
                                         _hd245563246230_
                                         _tl245562246232_
                                         _e245567246235_
                                         _hd245566246238_
                                         _tl245565246240_))))
                                (___match256634256635_
                                 _e245546246179_
                                 _hd245545246182_
                                 _tl245544246184_
                                 _e245549246187_
                                 _hd245548246190_
                                 _tl245547246192_
                                 _e245552246195_
                                 _hd245551246198_
                                 _tl245550246200_
                                 _e245555246203_
                                 _hd245554246206_
                                 _tl245553246208_
                                 _e245558246211_
                                 _hd245557246214_
                                 _tl245556246216_
                                 _e245561246219_
                                 _hd245560246222_
                                 _tl245559246224_
                                 _e245564246227_
                                 _hd245563246230_
                                 _tl245562246232_
                                 _e245567246235_
                                 _hd245566246238_
                                 _tl245565246240_))
                            (___match256420256421_
                             _e245546246179_
                             _hd245545246182_
                             _tl245544246184_
                             _e245549246187_
                             _hd245548246190_
                             _tl245547246192_
                             _e245552246195_
                             _hd245551246198_
                             _tl245550246200_
                             _e245555246203_
                             _hd245554246206_
                             _tl245553246208_
                             _e245558246211_
                             _hd245557246214_
                             _tl245556246216_
                             _e245561246219_
                             _hd245560246222_
                             _tl245559246224_
                             _e245564246227_
                             _hd245563246230_
                             _tl245562246232_
                             _e245567246235_
                             _hd245566246238_
                             _tl245565246240_
                             _e245570246243_
                             _hd245569246246_
                             _tl245568246248_))))
                     (___match256242256243_
                      (lambda (_e245502246371_
                               _hd245501246374_
                               _tl245500246376_
                               _e245505246379_
                               _hd245504246382_
                               _tl245503246384_
                               _e245508246387_
                               _hd245507246390_
                               _tl245506246392_
                               _e245511246395_
                               _hd245510246398_
                               _tl245509246400_
                               _e245514246403_
                               _hd245513246406_
                               _tl245512246408_
                               _e245517246411_
                               _hd245516246414_
                               _tl245515246416_
                               _e245520246419_
                               _hd245519246422_
                               _tl245518246424_
                               _e245523246427_
                               _hd245522246430_
                               _tl245521246432_
                               _e245526246435_
                               _hd245525246438_
                               _tl245524246440_
                               _e245529246443_
                               _hd245528246446_
                               _tl245527246448_
                               ___splice256141256142_
                               _target245530246451_
                               _tl245532246453_)
                        (letrec ((_loop245533246456_
                                  (lambda (_hd245531246459_ _args245537246461_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd245531246459_))
                                        (let ((_e245534246464_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd245531246459_))))
                                          (let ((_lp-tl245536246469_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e245534246464_)))
                                                (_lp-hd245535246467_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e245534246464_))))
                                            (let ((__tmp257087
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd245535246467_
                                                           _args245537246461_))))
                                              (declare (not safe))
                                              (_loop245533246456_
                                               _lp-tl245536246469_
                                               __tmp257087))))
                                        (let ((_args245538246472_
                                               (reverse _args245537246461_)))
                                          (let ((_L246475_ _args245538246472_)
                                                (_L246476_ _hd245528246446_)
                                                (_L246477_ _hd245519246422_)
                                                (_L246478_ _hd245510246398_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L246478_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L246477_
                                                        _self245478_)))
                                                (___kont256139256140_
                                                 _L246475_
                                                 _L246476_
                                                 _L246477_
                                                 _L246478_)
                                                (___match256430256431_
                                                 _e245502246371_
                                                 _hd245501246374_
                                                 _tl245500246376_
                                                 _e245505246379_
                                                 _hd245504246382_
                                                 _tl245503246384_
                                                 _e245508246387_
                                                 _hd245507246390_
                                                 _tl245506246392_
                                                 _e245511246395_
                                                 _hd245510246398_
                                                 _tl245509246400_
                                                 _e245514246403_
                                                 _hd245513246406_
                                                 _tl245512246408_
                                                 _e245517246411_
                                                 _hd245516246414_
                                                 _tl245515246416_
                                                 _e245520246419_
                                                 _hd245519246422_
                                                 _tl245518246424_
                                                 _e245523246427_
                                                 _hd245522246430_
                                                 _tl245521246432_
                                                 _e245526246435_
                                                 _hd245525246438_
                                                 _tl245524246440_
                                                 _e245529246443_
                                                 _hd245528246446_
                                                 _tl245527246448_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop245533246456_ _target245530246451_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx256137256138_))
                    (let ((_e245502246371_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx256137256138_))))
                      (let ((_tl245500246376_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245502246371_)))
                            (_hd245501246374_
                             (let ()
                               (declare (not safe))
                               (##car _e245502246371_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl245500246376_))
                            (let ((_e245505246379_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl245500246376_))))
                              (let ((_tl245503246384_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245505246379_)))
                                    (_hd245504246382_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245505246379_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd245504246382_))
                                    (let ((_e245508246387_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd245504246382_))))
                                      (let ((_tl245506246392_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e245508246387_)))
                                            (_hd245507246390_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e245508246387_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd245507246390_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd245507246390_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl245506246392_))
                                                    (let ((_e245511246395_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl245506246392_))))
                                                      (let ((_tl245509246400_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e245511246395_)))
                    (_hd245510246398_
                     (let () (declare (not safe)) (##car _e245511246395_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl245509246400_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl245503246384_))
                        (let ((_e245514246403_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl245503246384_))))
                          (let ((_tl245512246408_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e245514246403_)))
                                (_hd245513246406_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e245514246403_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd245513246406_))
                                (let ((_e245517246411_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd245513246406_))))
                                  (let ((_tl245515246416_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e245517246411_)))
                                        (_hd245516246414_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e245517246411_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd245516246414_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd245516246414_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl245515246416_))
                                                (let ((_e245520246419_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl245515246416_))))
                                                  (let ((_tl245518246424_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e245520246419_)))
                                                        (_hd245519246422_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e245520246419_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl245518246424_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl245512246408_))
                                                            (let ((_e245523246427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl245512246408_))))
                      (let ((_tl245521246432_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245523246427_)))
                            (_hd245522246430_
                             (let ()
                               (declare (not safe))
                               (##car _e245523246427_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd245522246430_))
                            (let ((_e245526246435_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd245522246430_))))
                              (let ((_tl245524246440_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245526246435_)))
                                    (_hd245525246438_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245526246435_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd245525246438_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd245525246438_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl245524246440_))
                                            (let ((_e245529246443_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl245524246440_))))
                                              (let ((_tl245527246448_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e245529246443_)))
                                                    (_hd245528246446_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e245529246443_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl245527246448_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl245521246432_))
                                                        (let ((___splice256141256142_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl245521246432_ '0))))
                  (let ((_tl245532246453_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice256141256142_ '1)))
                        (_target245530246451_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice256141256142_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl245532246453_))
                        (___match256242256243_
                         _e245502246371_
                         _hd245501246374_
                         _tl245500246376_
                         _e245505246379_
                         _hd245504246382_
                         _tl245503246384_
                         _e245508246387_
                         _hd245507246390_
                         _tl245506246392_
                         _e245511246395_
                         _hd245510246398_
                         _tl245509246400_
                         _e245514246403_
                         _hd245513246406_
                         _tl245512246408_
                         _e245517246411_
                         _hd245516246414_
                         _tl245515246416_
                         _e245520246419_
                         _hd245519246422_
                         _tl245518246424_
                         _e245523246427_
                         _hd245522246430_
                         _tl245521246432_
                         _e245526246435_
                         _hd245525246438_
                         _tl245524246440_
                         _e245529246443_
                         _hd245528246446_
                         _tl245527246448_
                         ___splice256141256142_
                         _target245530246451_
                         _tl245532246453_)
                        (___match256430256431_
                         _e245502246371_
                         _hd245501246374_
                         _tl245500246376_
                         _e245505246379_
                         _hd245504246382_
                         _tl245503246384_
                         _e245508246387_
                         _hd245507246390_
                         _tl245506246392_
                         _e245511246395_
                         _hd245510246398_
                         _tl245509246400_
                         _e245514246403_
                         _hd245513246406_
                         _tl245512246408_
                         _e245517246411_
                         _hd245516246414_
                         _tl245515246416_
                         _e245520246419_
                         _hd245519246422_
                         _tl245518246424_
                         _e245523246427_
                         _hd245522246430_
                         _tl245521246432_
                         _e245526246435_
                         _hd245525246438_
                         _tl245524246440_
                         _e245529246443_
                         _hd245528246446_
                         _tl245527246448_))))
                (___match256430256431_
                 _e245502246371_
                 _hd245501246374_
                 _tl245500246376_
                 _e245505246379_
                 _hd245504246382_
                 _tl245503246384_
                 _e245508246387_
                 _hd245507246390_
                 _tl245506246392_
                 _e245511246395_
                 _hd245510246398_
                 _tl245509246400_
                 _e245514246403_
                 _hd245513246406_
                 _tl245512246408_
                 _e245517246411_
                 _hd245516246414_
                 _tl245515246416_
                 _e245520246419_
                 _hd245519246422_
                 _tl245518246424_
                 _e245523246427_
                 _hd245522246430_
                 _tl245521246432_
                 _e245526246435_
                 _hd245525246438_
                 _tl245524246440_
                 _e245529246443_
                 _hd245528246446_
                 _tl245527246448_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match256634256635_
                                                     _e245502246371_
                                                     _hd245501246374_
                                                     _tl245500246376_
                                                     _e245505246379_
                                                     _hd245504246382_
                                                     _tl245503246384_
                                                     _e245508246387_
                                                     _hd245507246390_
                                                     _tl245506246392_
                                                     _e245511246395_
                                                     _hd245510246398_
                                                     _tl245509246400_
                                                     _e245514246403_
                                                     _hd245513246406_
                                                     _tl245512246408_
                                                     _e245517246411_
                                                     _hd245516246414_
                                                     _tl245515246416_
                                                     _e245520246419_
                                                     _hd245519246422_
                                                     _tl245518246424_
                                                     _e245523246427_
                                                     _hd245522246430_
                                                     _tl245521246432_))))
                                            (___match256634256635_
                                             _e245502246371_
                                             _hd245501246374_
                                             _tl245500246376_
                                             _e245505246379_
                                             _hd245504246382_
                                             _tl245503246384_
                                             _e245508246387_
                                             _hd245507246390_
                                             _tl245506246392_
                                             _e245511246395_
                                             _hd245510246398_
                                             _tl245509246400_
                                             _e245514246403_
                                             _hd245513246406_
                                             _tl245512246408_
                                             _e245517246411_
                                             _hd245516246414_
                                             _tl245515246416_
                                             _e245520246419_
                                             _hd245519246422_
                                             _tl245518246424_
                                             _e245523246427_
                                             _hd245522246430_
                                             _tl245521246432_))
                                        (___match256310256311_
                                         _e245502246371_
                                         _hd245501246374_
                                         _tl245500246376_
                                         _e245505246379_
                                         _hd245504246382_
                                         _tl245503246384_
                                         _e245508246387_
                                         _hd245507246390_
                                         _tl245506246392_
                                         _e245511246395_
                                         _hd245510246398_
                                         _tl245509246400_
                                         _e245514246403_
                                         _hd245513246406_
                                         _tl245512246408_
                                         _e245517246411_
                                         _hd245516246414_
                                         _tl245515246416_
                                         _e245520246419_
                                         _hd245519246422_
                                         _tl245518246424_
                                         _e245523246427_
                                         _hd245522246430_
                                         _tl245521246432_
                                         _e245526246435_
                                         _hd245525246438_
                                         _tl245524246440_))
                                    (___match256634256635_
                                     _e245502246371_
                                     _hd245501246374_
                                     _tl245500246376_
                                     _e245505246379_
                                     _hd245504246382_
                                     _tl245503246384_
                                     _e245508246387_
                                     _hd245507246390_
                                     _tl245506246392_
                                     _e245511246395_
                                     _hd245510246398_
                                     _tl245509246400_
                                     _e245514246403_
                                     _hd245513246406_
                                     _tl245512246408_
                                     _e245517246411_
                                     _hd245516246414_
                                     _tl245515246416_
                                     _e245520246419_
                                     _hd245519246422_
                                     _tl245518246424_
                                     _e245523246427_
                                     _hd245522246430_
                                     _tl245521246432_))))
                            (___match256634256635_
                             _e245502246371_
                             _hd245501246374_
                             _tl245500246376_
                             _e245505246379_
                             _hd245504246382_
                             _tl245503246384_
                             _e245508246387_
                             _hd245507246390_
                             _tl245506246392_
                             _e245511246395_
                             _hd245510246398_
                             _tl245509246400_
                             _e245514246403_
                             _hd245513246406_
                             _tl245512246408_
                             _e245517246411_
                             _hd245516246414_
                             _tl245515246416_
                             _e245520246419_
                             _hd245519246422_
                             _tl245518246424_
                             _e245523246427_
                             _hd245522246430_
                             _tl245521246432_))))
                    (___match256572256573_
                     _e245502246371_
                     _hd245501246374_
                     _tl245500246376_
                     _e245505246379_
                     _hd245504246382_
                     _tl245503246384_
                     _e245508246387_
                     _hd245507246390_
                     _tl245506246392_
                     _e245511246395_
                     _hd245510246398_
                     _tl245509246400_
                     _e245514246403_
                     _hd245513246406_
                     _tl245512246408_
                     _e245517246411_
                     _hd245516246414_
                     _tl245515246416_
                     _e245520246419_
                     _hd245519246422_
                     _tl245518246424_))
                (___kont256155256156_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont256155256156_))
                                            (___kont256155256156_))
                                        (___kont256155256156_))))
                                (___kont256155256156_))))
                        (___kont256155256156_))
                    (___kont256155256156_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont256155256156_))
                                                (___kont256155256156_))
                                            (___kont256155256156_))))
                                    (___kont256155256156_))))
                            (___kont256155256156_))))
                    (___kont256155256156_))))))))))
