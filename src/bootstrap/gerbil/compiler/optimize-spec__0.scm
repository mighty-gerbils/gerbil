(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1707846533)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl250941_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp256637 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl250941_ __tmp256637))
           (let ()
             (declare (not safe))
             (table-set! _tbl250941_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl250941_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl250941_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250941_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl250941_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx250924_ . _args250926_)
        (let ((__tmp256639
               (lambda ()
                 (declare (not safe))
                 (if (null? _args250926_)
                     (gxc#compile-e__0 _stx250924_)
                     (let ((_arg1250931_ (car _args250926_))
                           (_rest250933_ (cdr _args250926_)))
                       (if (null? _rest250933_)
                           (gxc#compile-e__1 _stx250924_ _arg1250931_)
                           (let ((_arg2250936_ (car _rest250933_))
                                 (_rest250938_ (cdr _rest250933_)))
                             (if (null? _rest250938_)
                                 (gxc#compile-e__2
                                  _stx250924_
                                  _arg1250931_
                                  _arg2250936_)
                                 (apply gxc#compile-e
                                        _stx250924_
                                        _arg1250931_
                                        _arg2250936_
                                        _rest250938_))))))))
              (__tmp256638 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp256639
           gxc#current-compile-methods
           __tmp256638))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl250921_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp256640 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl250921_ __tmp256640))
           (let ()
             (declare (not safe))
             (table-set! _tbl250921_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250921_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl250921_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250921_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250921_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250921_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250921_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl250921_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl250921_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl250921_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl250921_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl250921_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250921_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250921_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250921_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250921_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl250921_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx250904_ . _args250906_)
        (let ((__tmp256642
               (lambda ()
                 (declare (not safe))
                 (if (null? _args250906_)
                     (gxc#compile-e__0 _stx250904_)
                     (let ((_arg1250911_ (car _args250906_))
                           (_rest250913_ (cdr _args250906_)))
                       (if (null? _rest250913_)
                           (gxc#compile-e__1 _stx250904_ _arg1250911_)
                           (let ((_arg2250916_ (car _rest250913_))
                                 (_rest250918_ (cdr _rest250913_)))
                             (if (null? _rest250918_)
                                 (gxc#compile-e__2
                                  _stx250904_
                                  _arg1250911_
                                  _arg2250916_)
                                 (apply gxc#compile-e
                                        _stx250904_
                                        _arg1250911_
                                        _arg2250916_
                                        _rest250918_))))))))
              (__tmp256641 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp256642
           gxc#current-compile-methods
           __tmp256641))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl250901_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp256643 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl250901_ __tmp256643))
           (let ()
             (declare (not safe))
             (table-set! _tbl250901_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl250901_ '%#call gxc#subst-object-refs-call%))
           _tbl250901_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx250884_ . _args250886_)
        (let ((__tmp256645
               (lambda ()
                 (declare (not safe))
                 (if (null? _args250886_)
                     (gxc#compile-e__0 _stx250884_)
                     (let ((_arg1250891_ (car _args250886_))
                           (_rest250893_ (cdr _args250886_)))
                       (if (null? _rest250893_)
                           (gxc#compile-e__1 _stx250884_ _arg1250891_)
                           (let ((_arg2250896_ (car _rest250893_))
                                 (_rest250898_ (cdr _rest250893_)))
                             (if (null? _rest250898_)
                                 (gxc#compile-e__2
                                  _stx250884_
                                  _arg1250891_
                                  _arg2250896_)
                                 (apply gxc#compile-e
                                        _stx250884_
                                        _arg1250891_
                                        _arg2250896_
                                        _rest250898_))))))))
              (__tmp256644 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp256645
           gxc#current-compile-methods
           __tmp256644))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx247554_)
        (letrec ((_generate-method-bind247556_
                  (lambda (_$t250878_ _id250879_ _$id250880_)
                    (let ((_$tmp250882_
                           (let ((__tmp256646 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp256646))))
                      (let ((__tmp256694
                             (let ()
                               (declare (not safe))
                               (cons _$id250880_ '())))
                            (__tmp256647
                             (let ((__tmp256648
                                    (let ((__tmp256649
                                           (let ((__tmp256692
                                                  (let ((__tmp256693
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp256693)))
                                                 (__tmp256650
                                                  (let ((__tmp256651
                                                         (let ((__tmp256652
                                                                (let ((__tmp256653
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp256654
                                      (let ((__tmp256655
                                             (let ((__tmp256675
                                                    (let ((__tmp256676
                                                           (let ((__tmp256691
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp250882_ '())))
                         (__tmp256677
                          (let ((__tmp256678
                                 (let ((__tmp256679
                                        (let ((__tmp256689
                                               (let ((__tmp256690
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp256690)))
                                              (__tmp256680
                                               (let ((__tmp256687
                                                      (let ((__tmp256688
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t250878_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp256688)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp256681
                                                      (let ((__tmp256685
                                                             (let ((__tmp256686
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp256686)))
                    (__tmp256682
                     (let ((__tmp256683
                            (let ((__tmp256684
                                   (let ()
                                     (declare (not safe))
                                     (cons _id250879_ '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp256684))))
                       (declare (not safe))
                       (cons __tmp256683 '()))))
                (declare (not safe))
                (cons __tmp256685 __tmp256682))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp256687
                                                       __tmp256681))))
                                          (declare (not safe))
                                          (cons __tmp256689 __tmp256680))))
                                   (declare (not safe))
                                   (cons '%#call __tmp256679))))
                            (declare (not safe))
                            (cons __tmp256678 '()))))
                     (declare (not safe))
                     (cons __tmp256691 __tmp256677))))
              (declare (not safe))
              (cons __tmp256676 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp256656
                                                    (let ((__tmp256657
                                                           (let ((__tmp256658
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp256673
                                 (let ((__tmp256674
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp250882_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp256674)))
                                (__tmp256659
                                 (let ((__tmp256671
                                        (let ((__tmp256672
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp250882_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp256672)))
                                       (__tmp256660
                                        (let ((__tmp256661
                                               (let ((__tmp256662
                                                      (let ((__tmp256669
                                                             (let ((__tmp256670
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp256670)))
                    (__tmp256663
                     (let ((__tmp256667
                            (let ((__tmp256668
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp256668)))
                           (__tmp256664
                            (let ((__tmp256665
                                   (let ((__tmp256666
                                          (let ()
                                            (declare (not safe))
                                            (cons _id250879_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp256666))))
                              (declare (not safe))
                              (cons __tmp256665 '()))))
                       (declare (not safe))
                       (cons __tmp256667 __tmp256664))))
                (declare (not safe))
                (cons __tmp256669 __tmp256663))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp256662))))
                                          (declare (not safe))
                                          (cons __tmp256661 '()))))
                                   (declare (not safe))
                                   (cons __tmp256671 __tmp256660))))
                            (declare (not safe))
                            (cons __tmp256673 __tmp256659))))
                     (declare (not safe))
                     (cons '%#if __tmp256658))))
              (declare (not safe))
              (cons __tmp256657 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp256675
                                                     __tmp256656))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp256655))))
                                 (declare (not safe))
                                 (cons __tmp256654 '()))))
                          (declare (not safe))
                          (cons '() __tmp256653))))
                   (declare (not safe))
                   (cons '%#lambda __tmp256652))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp256651 '()))))
                                             (declare (not safe))
                                             (cons __tmp256692 __tmp256650))))
                                      (declare (not safe))
                                      (cons '%#call __tmp256649))))
                               (declare (not safe))
                               (cons __tmp256648 '()))))
                        (declare (not safe))
                        (cons __tmp256694 __tmp256647)))))
                 (_generate-slot-bind247557_
                  (lambda (_$t250872_ _id250873_ _$id250874_)
                    (let ((_$tmp250876_
                           (let ((__tmp256695 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp256695))))
                      (let ((__tmp256732
                             (let ()
                               (declare (not safe))
                               (cons _$id250874_ '())))
                            (__tmp256696
                             (let ((__tmp256697
                                    (let ((__tmp256698
                                           (let ((__tmp256718
                                                  (let ((__tmp256719
                                                         (let ((__tmp256731
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp250876_ '())))
                       (__tmp256720
                        (let ((__tmp256721
                               (let ((__tmp256722
                                      (let ((__tmp256729
                                             (let ((__tmp256730
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp256730)))
                                            (__tmp256723
                                             (let ((__tmp256727
                                                    (let ((__tmp256728
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t250872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp256728)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp256724
                                                    (let ((__tmp256725
                                                           (let ((__tmp256726
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id250873_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp256726))))
              (declare (not safe))
              (cons __tmp256725 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp256727
                                                     __tmp256724))))
                                        (declare (not safe))
                                        (cons __tmp256729 __tmp256723))))
                                 (declare (not safe))
                                 (cons '%#call __tmp256722))))
                          (declare (not safe))
                          (cons __tmp256721 '()))))
                   (declare (not safe))
                   (cons __tmp256731 __tmp256720))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp256719 '())))
                                                 (__tmp256699
                                                  (let ((__tmp256700
                                                         (let ((__tmp256701
                                                                (let ((__tmp256716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp256717
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp250876_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp256717)))
                              (__tmp256702
                               (let ((__tmp256714
                                      (let ((__tmp256715
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp250876_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp256715)))
                                     (__tmp256703
                                      (let ((__tmp256704
                                             (let ((__tmp256705
                                                    (let ((__tmp256712
                                                           (let ((__tmp256713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp256713)))
                  (__tmp256706
                   (let ((__tmp256710
                          (let ((__tmp256711
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp256711)))
                         (__tmp256707
                          (let ((__tmp256708
                                 (let ((__tmp256709
                                        (let ()
                                          (declare (not safe))
                                          (cons _id250873_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp256709))))
                            (declare (not safe))
                            (cons __tmp256708 '()))))
                     (declare (not safe))
                     (cons __tmp256710 __tmp256707))))
              (declare (not safe))
              (cons __tmp256712 __tmp256706))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp256705))))
                                        (declare (not safe))
                                        (cons __tmp256704 '()))))
                                 (declare (not safe))
                                 (cons __tmp256714 __tmp256703))))
                          (declare (not safe))
                          (cons __tmp256716 __tmp256702))))
                   (declare (not safe))
                   (cons '%#if __tmp256701))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp256700 '()))))
                                             (declare (not safe))
                                             (cons __tmp256718 __tmp256699))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp256698))))
                               (declare (not safe))
                               (cons __tmp256697 '()))))
                        (declare (not safe))
                        (cons __tmp256732 __tmp256696)))))
                 (_generate-class-check-bind247558_
                  (lambda (_$t250868_ _class-type250869_ _$class-type250870_)
                    (let ((__tmp256744
                           (let ()
                             (declare (not safe))
                             (cons _$class-type250870_ '())))
                          (__tmp256733
                           (let ((__tmp256734
                                  (let ((__tmp256735
                                         (let ((__tmp256742
                                                (let ((__tmp256743
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp256743)))
                                               (__tmp256736
                                                (let ((__tmp256740
                                                       (let ((__tmp256741
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t250868_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp256741)))
              (__tmp256737
               (let ((__tmp256738
                      (let ((__tmp256739
                             (let ()
                               (declare (not safe))
                               (cons _class-type250869_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp256739))))
                 (declare (not safe))
                 (cons __tmp256738 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256740
                                                        __tmp256737))))
                                           (declare (not safe))
                                           (cons __tmp256742 __tmp256736))))
                                    (declare (not safe))
                                    (cons '%#call __tmp256735))))
                             (declare (not safe))
                             (cons __tmp256734 '()))))
                      (declare (not safe))
                      (cons __tmp256744 __tmp256733))))
                 (_generate-struct-check-bind247559_
                  (lambda (_$t250864_ _class-type250865_ _$class-type250866_)
                    (let ((__tmp256756
                           (let ()
                             (declare (not safe))
                             (cons _$class-type250866_ '())))
                          (__tmp256745
                           (let ((__tmp256746
                                  (let ((__tmp256747
                                         (let ((__tmp256754
                                                (let ((__tmp256755
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp256755)))
                                               (__tmp256748
                                                (let ((__tmp256752
                                                       (let ((__tmp256753
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t250864_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp256753)))
              (__tmp256749
               (let ((__tmp256750
                      (let ((__tmp256751
                             (let ()
                               (declare (not safe))
                               (cons _class-type250865_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp256751))))
                 (declare (not safe))
                 (cons __tmp256750 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256752
                                                        __tmp256749))))
                                           (declare (not safe))
                                           (cons __tmp256754 __tmp256748))))
                                    (declare (not safe))
                                    (cons '%#call __tmp256747))))
                             (declare (not safe))
                             (cons __tmp256746 '()))))
                      (declare (not safe))
                      (cons __tmp256756 __tmp256745))))
                 (_generate-specializer-impl247560_
                  (lambda (_$t250813_
                           _methods-bind250814_
                           _slots-bind250815_
                           _class-check-bind250816_
                           _struct-check-bind250817_
                           _specializer-impl250818_
                           _lifted-specializer-id250819_
                           _unchecked-specializer-impl250820_)
                    (let ((__tmp256757
                           (let ((__tmp256758
                                  (let ((__tmp256784
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t250813_ '())))
                                        (__tmp256759
                                         (let ((__tmp256760
                                                (let ((__tmp256761
                                                       (let ((__tmp256781
                                                              (let ((__tmp256782
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp256783
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind250817_
                                              _class-check-bind250816_))))
                               (declare (not safe))
                               (foldr1 cons __tmp256783 _slots-bind250815_))))
                        (declare (not safe))
                        (foldr1 cons __tmp256782 _methods-bind250814_)))
                     (__tmp256762
                      (let ((__tmp256763
                             (if (or _lifted-specializer-id250819_
                                     _unchecked-specializer-impl250820_)
                                 (let* ((_$specializer250825_
                                         (let ((__tmp256764
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp256764)))
                                        (__tmp256765
                                         (let ((__tmp256777
                                                (let ((__tmp256778
                                                       (let ((__tmp256780
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer250825_ '())))
                     (__tmp256779
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl250818_ '()))))
                 (declare (not safe))
                 (cons __tmp256780 __tmp256779))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256778 '())))
                                               (__tmp256766
                                                (let ((__tmp256767
                                                       (let _recur250827_ ((_rest250829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind250817_)))
                 (let* ((_rest250830250838_ _rest250829_)
                        (_else250832250846_
                         (lambda ()
                           (if _lifted-specializer-id250819_
                               (let ((__tmp256768
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id250819_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp256768))
                               _unchecked-specializer-impl250820_)))
                        (_K250834250852_
                         (lambda (_rest250849_ _checkq250850_)
                           (let ((__tmp256769
                                  (let ((__tmp256775
                                         (let ((__tmp256776
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq250850_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp256776)))
                                        (__tmp256770
                                         (let ((__tmp256774
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur250827_
                                                   _rest250849_)))
                                               (__tmp256771
                                                (let ((__tmp256772
                                                       (let ((__tmp256773
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer250825_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp256773))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256772 '()))))
                                           (declare (not safe))
                                           (cons __tmp256774 __tmp256771))))
                                    (declare (not safe))
                                    (cons __tmp256775 __tmp256770))))
                             (declare (not safe))
                             (cons '%#if __tmp256769)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest250830250838_))
                       (let ((_hd250835250855_
                              (let ()
                                (declare (not safe))
                                (##car _rest250830250838_)))
                             (_tl250836250857_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest250830250838_))))
                         (let* ((_checkq250860_ _hd250835250855_)
                                (_rest250862_ _tl250836250857_))
                           (declare (not safe))
                           (_K250834250852_ _rest250862_ _checkq250860_)))
                       (let () (declare (not safe)) (_else250832250846_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256767 '()))))
                                           (declare (not safe))
                                           (cons __tmp256777 __tmp256766))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp256765))
                                 _specializer-impl250818_)))
                        (declare (not safe))
                        (cons __tmp256763 '()))))
                 (declare (not safe))
                 (cons __tmp256781 __tmp256762))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp256761))))
                                           (declare (not safe))
                                           (cons __tmp256760 '()))))
                                    (declare (not safe))
                                    (cons __tmp256784 __tmp256759))))
                             (declare (not safe))
                             (cons '%#lambda __tmp256758))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp256757 _stx247554_))))
                 (_generate-specializer-def247561_
                  (lambda (_id250807_
                           _specializer-id250808_
                           _specializer-impl250809_
                           _lifted-specializer-id250810_
                           _unchecked-specializer-impl250811_)
                    (let ((__tmp256785
                           (let ((__tmp256786
                                  (let ((__tmp256787
                                         (let ((__tmp256807
                                                (let ((__tmp256808
                                                       (let ((__tmp256809
                                                              (let ((__tmp256811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id250808_ '())))
                            (__tmp256810
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl250809_ '()))))
                        (declare (not safe))
                        (cons __tmp256811 __tmp256810))))
                 (declare (not safe))
                 (cons '%#define-values __tmp256809))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp256808
                                                   _stx247554_)))
                                               (__tmp256788
                                                (let ((__tmp256795
                                                       (let ((__tmp256796
                                                              (let ((__tmp256797
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp256798
                                    (let ((__tmp256805
                                           (let ((__tmp256806
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp256806)))
                                          (__tmp256799
                                           (let ((__tmp256803
                                                  (let ((__tmp256804
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id250807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp256804)))
                                                 (__tmp256800
                                                  (let ((__tmp256801
                                                         (let ((__tmp256802
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id250808_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp256802))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp256801 '()))))
                                             (declare (not safe))
                                             (cons __tmp256803 __tmp256800))))
                                      (declare (not safe))
                                      (cons __tmp256805 __tmp256799))))
                               (declare (not safe))
                               (cons '%#call __tmp256798))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp256797 _stx247554_))))
                 (declare (not safe))
                 (cons __tmp256796 '())))
              (__tmp256789
               (if _lifted-specializer-id250810_
                   (let ((__tmp256790
                          (let ((__tmp256791
                                 (let ((__tmp256792
                                        (let ((__tmp256794
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id250810_
                                                       '())))
                                              (__tmp256793
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl250811_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp256794 __tmp256793))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp256792))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp256791 _stx247554_))))
                     (declare (not safe))
                     (cons __tmp256790 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp256795
                                                          __tmp256789))))
                                           (declare (not safe))
                                           (cons __tmp256807 __tmp256788))))
                                    (declare (not safe))
                                    (cons _stx247554_ __tmp256787))))
                             (declare (not safe))
                             (cons '%#begin __tmp256786))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp256785 _stx247554_)))))
          (let* ((___stx255598255599_ _stx247554_)
                 (_g247564247584_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx255598255599_)))))
            (let ((___kont255600255601_
                   (lambda (_L247628_ _L247629_)
                     (let ((_method-calls247648_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_slot-refs247649_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_class-type-check247650_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-check247651_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-assert247652_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_empty247653_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?))))
                       (letrec ((_no-specializer?247655_
                                 (lambda ()
                                   (if (let ((__tmp256816
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls247648_))))
                                         (declare (not safe))
                                         (fxzero? __tmp256816))
                                       (if (let ((__tmp256815
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs247649_))))
                                             (declare (not safe))
                                             (fxzero? __tmp256815))
                                           (if (let ((__tmp256814
                                                      (let ()
                                                        (declare (not safe))
                                                        (table-length
                                                         _class-type-check247650_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp256814))
                                               (if (let ((__tmp256813
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-check247651_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp256813))
                                                   (let ((__tmp256812
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-assert247652_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp256812))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?247656_
                                 (lambda ()
                                   (let ((_$e250800_
                                          (let ((__tmp256817
                                                 (let ((__tmp256818
                                                        (let ()
                                                          (declare (not safe))
                                                          (table-length
                                                           _struct-type-check247651_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp256818))))
                                            (declare (not safe))
                                            (not __tmp256817))))
                                     (if _$e250800_
                                         _$e250800_
                                         (let ((__tmp256819
                                                (let ((__tmp256820
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-length
                                                          _struct-type-assert247652_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp256820))))
                                           (declare (not safe))
                                           (not __tmp256819))))))
                                (_lift-unchecked-specializer?247657_
                                 (lambda ()
                                   (if (let ((__tmp256823
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls247648_))))
                                         (declare (not safe))
                                         (fxzero? __tmp256823))
                                       (if (let ((__tmp256822
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs247649_))))
                                             (declare (not safe))
                                             (fxzero? __tmp256822))
                                           (let ((__tmp256821
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _class-type-check247650_))))
                                             (declare (not safe))
                                             (fxzero? __tmp256821))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L247628_))
                             (let* ((___stx255512255513_ _L247628_)
                                    (_g248170248188_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx255512255513_)))))
                               (let ((___kont255514255515_
                                      (lambda (_L248224_ _L248225_ _L248226_)
                                        (for-each
                                         (lambda (_g248241248243_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g248241248243_
                                              _L248226_
                                              _method-calls247648_
                                              _slot-refs247649_
                                              _class-type-check247650_
                                              _struct-type-check247651_
                                              _struct-type-assert247652_)))
                                         _L248224_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?247655_))
                                            _stx247554_
                                            (let* ((_specializer-id248252_
                                                    (let* ((_id248246_
                                                            (let ((__tmp256973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L247629_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp256973 '"::specialize")))
                   (_specializer-id248249_
                    (let ((__tmp256974
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx247554_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id248246_ __tmp256974))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id248249_))
              _specializer-id248249_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id248259_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?247657_))
                                                        (let* ((_id248254_
                                                                (let ((__tmp256975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L247629_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp256975
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id248256_
                        (let ((__tmp256976
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx247554_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id248254_ __tmp256976))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id248256_))
                  _lifted-specializer-id248256_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t248261_
                                                    (let ((__tmp256977
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp256977)))
                                                   (_methods248263_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls247648_)))
                                                   (_$methods248267_
                                                    (map (lambda (_id248265_)
                                                           (let ((__tmp256978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id248265_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp256978)))
                 _methods248263_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g256979_
                                                    (for-each
                                                     (lambda (_g248268248271_
                                                              _g248269248273_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls247648_
                                                          _g248268248271_
                                                          _g248269248273_)))
                                                     _methods248263_
                                                     _$methods248267_))
                                                   (_methods-bind248284_
                                                    (map (lambda (_g248276248279_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g248277248281_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind247556_
                      _$t248261_
                      _g248276248279_
                      _g248277248281_)))
                 _methods248263_
                 _$methods248267_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots248286_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs247649_)))
                                                   (_$slots248290_
                                                    (map (lambda (_id248288_)
                                                           (let ((__tmp256980
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id248288_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp256980)))
                 _slots248286_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g256981_
                                                    (for-each
                                                     (lambda (_g248291248294_
                                                              _g248292248296_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs247649_
                                                          _g248291248294_
                                                          _g248292248296_)))
                                                     _slots248286_
                                                     _$slots248290_))
                                                   (_slots-bind248307_
                                                    (map (lambda (_g248299248302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g248300248304_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind247557_
                      _$t248261_
                      _g248299248302_
                      _g248300248304_)))
                 _slots248286_
                 _$slots248290_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check248309_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check247650_)))
                                                   (_$class-check248312_
                                                    (map (lambda (_g256982_)
                                                           (let ((__tmp256983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp256983)))
                 _class-check248309_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g256984_
                                                    (for-each
                                                     (lambda (_g248313248316_
                                                              _g248314248318_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check247650_
                                                          _g248313248316_
                                                          _g248314248318_)))
                                                     _class-check248309_
                                                     _$class-check248312_))
                                                   (_class-check-bind248329_
                                                    (map (lambda (_g248321248324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g248322248326_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind247558_
                      _$t248261_
                      _g248321248324_
                      _g248322248326_)))
                 _class-check248309_
                 _$class-check248312_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all248331_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check247651_
                                                       _struct-type-assert247652_)))
                                                   (_struct-check248333_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all248331_)))
                                                   (_$struct-check248336_
                                                    (map (lambda (_g256985_)
                                                           (let ((__tmp256986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp256986)))
                 _struct-check248333_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g256987_
                                                    (for-each
                                                     (lambda (_g248337248340_
                                                              _g248338248342_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all248331_
                                                          _g248337248340_
                                                          _g248338248342_)))
                                                     _struct-check248333_
                                                     _$struct-check248336_))
                                                   (_struct-check-bind248353_
                                                    (map (lambda (_g248345248348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g248346248350_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind247559_
                      _$t248261_
                      _g248345248348_
                      _g248346248350_)))
                 _struct-check248333_
                 _$struct-check248336_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl248364_
                                                    (lambda (_struct-type-check1248355_
                                                             _struct-type-check2248356_)
                                                      (let* ((_specializer-body248362_
                                                              (map (lambda (_g248357248359_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g248357248359_
                                _L248226_
                                _$t248261_
                                _method-calls247648_
                                _slot-refs247649_
                                _class-type-check247650_
                                _struct-type-check1248355_
                                _struct-type-check2248356_)))
                           _L248224_))
                     (__tmp256988
                      (let ((__tmp256989
                             (let ((__tmp256990
                                    (let ()
                                      (declare (not safe))
                                      (cons _L248226_ _L248225_))))
                               (declare (not safe))
                               (cons __tmp256990 _specializer-body248362_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp256989))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp256988 _stx247554_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl248366_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl248364_
                                                       _struct-check-all248331_
                                                       _empty247653_)))
                                                   (_unchecked-specializer-impl248368_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?247656_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl248364_
                                                           _empty247653_
                                                           _struct-check-all248331_))
                                                        '#f))
                                                   (_specializer-impl248370_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl247560_
                                                       _$t248261_
                                                       _methods-bind248284_
                                                       _slots-bind248307_
                                                       _class-check-bind248329_
                                                       _struct-check-bind248353_
                                                       _specializer-impl248366_
                                                       _lifted-specializer-id248259_
                                                       _unchecked-specializer-impl248368_))))
                                              (let ((__tmp256992
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L247629_)))
                                                    (__tmp256991
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id248252_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp256992
                                                 '" => "
                                                 __tmp256991))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def247561_
                                                 _L247629_
                                                 _specializer-id248252_
                                                 _specializer-impl248370_
                                                 _lifted-specializer-id248259_
                                                 _unchecked-specializer-impl248368_))))))
                                     (___kont255516255517_
                                      (lambda () _stx247554_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx255512255513_))
                                     (let ((_e248177248200_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx255512255513_))))
                                       (let ((_tl248175248205_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e248177248200_)))
                                             (_hd248176248203_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e248177248200_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl248175248205_))
                                             (let ((_e248180248208_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl248175248205_))))
                                               (let ((_tl248178248213_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e248180248208_)))
                                                     (_hd248179248211_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e248180248208_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd248179248211_))
                                                     (let ((_e248183248216_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd248179248211_))))
                                                       (let ((_tl248181248221_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e248183248216_)))
                     (_hd248182248219_
                      (let () (declare (not safe)) (##car _e248183248216_))))
                 (___kont255514255515_
                  _tl248178248213_
                  _tl248181248221_
                  _hd248182248219_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont255516255517_))))
                                             (___kont255516255517_))))
                                     (___kont255516255517_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L247628_))
                                 (let* ((_g248376248395_
                                         (lambda (_g248377248392_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g248377248392_))))
                                        (_g248375248746_
                                         (lambda (_g248377248398_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g248377248398_))
                                               (let ((_e248381248400_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g248377248398_))))
                                                 (let ((_hd248380248403_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e248381248400_)))
                                                       (_tl248379248405_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e248381248400_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl248379248405_))
                                                       (let ((_g256949_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl248379248405_ '0))))
                 (begin
                   (let ((_g256950_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g256949_)
                                (##vector-length _g256949_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g256950_ 2)))
                         (error "Context expects 2 values" _g256950_)))
                   (let ((_target248382248408_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g256949_ 0)))
                         (_tl248384248410_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g256949_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl248384248410_))
                         (letrec ((_loop248385248413_
                                   (lambda (_hd248383248416_
                                            _clause248389248418_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd248383248416_))
                                         (let ((_e248386248421_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd248383248416_))))
                                           (let ((_lp-hd248387248424_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e248386248421_)))
                                                 (_lp-tl248388248426_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e248386248421_))))
                                             (let ((__tmp256972
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd248387248424_
                                                            _clause248389248418_))))
                                               (declare (not safe))
                                               (_loop248385248413_
                                                _lp-tl248388248426_
                                                __tmp256972))))
                                         (let ((_clause248390248429_
                                                (reverse _clause248389248418_)))
                                           ((lambda (_L248432_)
                                              (for-each
                                               (lambda (_clause248445_)
                                                 (let* ((___stx255538255539_
                                                         _clause248445_)
                                                        (_g248448248463_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx255538255539_)))))
                                                   (let ((___kont255540255541_
                                                          (lambda (_L248491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L248492_
                           _L248493_)
                    (for-each
                     (lambda (_g248508248510_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g248508248510_
                          _L248493_
                          _method-calls247648_
                          _slot-refs247649_
                          _class-type-check247650_
                          _struct-type-check247651_
                          _struct-type-assert247652_)))
                     _L248491_)))
                 (___kont255542255543_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx255538255539_))
                                                         (let ((_e248455248475_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx255538255539_))))
                   (let ((_tl248453248480_
                          (let ()
                            (declare (not safe))
                            (##cdr _e248455248475_)))
                         (_hd248454248478_
                          (let ()
                            (declare (not safe))
                            (##car _e248455248475_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd248454248478_))
                         (let ((_e248458248483_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd248454248478_))))
                           (let ((_tl248456248488_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e248458248483_)))
                                 (_hd248457248486_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e248458248483_))))
                             (___kont255540255541_
                              _tl248453248480_
                              _tl248456248488_
                              _hd248457248486_)))
                         (___kont255542255543_))))
                 (___kont255542255543_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp256951
                                                      (lambda (_g248515248518_
                                                               _g248516248520_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g248515248518_
                                                                _g248516248520_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp256951
                                                         '()
                                                         _L248432_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?247655_))
                                                  _stx247554_
                                                  (let* ((_specializer-id248529_
                                                          (let* ((_id248523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp256952
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L247629_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp256952 '"::specialize")))
                         (_specializer-id248526_
                          (let ((__tmp256953
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx247554_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id248523_ __tmp256953))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id248526_))
                    _specializer-id248526_))
                 (_lifted-specializer-id248536_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?247657_))
                      (let* ((_id248531_
                              (let ((__tmp256954
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L247629_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp256954
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id248533_
                              (let ((__tmp256955
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx247554_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id248531_
                                 __tmp256955))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id248533_))
                        _lifted-specializer-id248533_)
                      '#f))
                 (_$t248538_
                  (let ((__tmp256956 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp256956)))
                 (_methods248540_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls247648_)))
                 (_$methods248544_
                  (map (lambda (_id248542_)
                         (let ((__tmp256957 (gensym _id248542_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp256957)))
                       _methods248540_))
                 (_g256958_
                  (for-each
                   (lambda (_g248545248548_ _g248546248550_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls247648_
                        _g248545248548_
                        _g248546248550_)))
                   _methods248540_
                   _$methods248544_))
                 (_methods-bind248561_
                  (map (lambda (_g248553248556_ _g248554248558_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind247556_
                            _$t248538_
                            _g248553248556_
                            _g248554248558_)))
                       _methods248540_
                       _$methods248544_))
                 (_slots248563_
                  (let () (declare (not safe)) (hash-keys _slot-refs247649_)))
                 (_$slots248567_
                  (map (lambda (_id248565_)
                         (let ((__tmp256959 (gensym _id248565_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp256959)))
                       _slots248563_))
                 (_g256960_
                  (for-each
                   (lambda (_g248568248571_ _g248569248573_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs247649_
                        _g248568248571_
                        _g248569248573_)))
                   _slots248563_
                   _$slots248567_))
                 (_slots-bind248584_
                  (map (lambda (_g248576248579_ _g248577248581_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind247557_
                            _$t248538_
                            _g248576248579_
                            _g248577248581_)))
                       _slots248563_
                       _$slots248567_))
                 (_class-check248586_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check247650_)))
                 (_$class-check248589_
                  (map (lambda (_g256961_)
                         (let ((__tmp256962 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp256962)))
                       _class-check248586_))
                 (_g256963_
                  (for-each
                   (lambda (_g248590248593_ _g248591248595_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check247650_
                        _g248590248593_
                        _g248591248595_)))
                   _class-check248586_
                   _$class-check248589_))
                 (_class-check-bind248606_
                  (map (lambda (_g248598248601_ _g248599248603_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind247558_
                            _$t248538_
                            _g248598248601_
                            _g248599248603_)))
                       _class-check248586_
                       _$class-check248589_))
                 (_struct-check-all248608_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check247651_
                     _struct-type-assert247652_)))
                 (_struct-check248610_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all248608_)))
                 (_$struct-check248613_
                  (map (lambda (_g256964_)
                         (let ((__tmp256965 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp256965)))
                       _struct-check248610_))
                 (_g256966_
                  (for-each
                   (lambda (_g248614248617_ _g248615248619_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all248608_
                        _g248614248617_
                        _g248615248619_)))
                   _struct-check248610_
                   _$struct-check248613_))
                 (_struct-check-bind248630_
                  (map (lambda (_g248622248625_ _g248623248627_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind247559_
                            _$t248538_
                            _g248622248625_
                            _g248623248627_)))
                       _struct-check248610_
                       _$struct-check248613_))
                 (_make-specializer-impl248737_
                  (lambda (_struct-type-check1248632_
                           _struct-type-check2248633_)
                    (let* ((_specializer-clauses248735_
                            (map (lambda (_clause248635_)
                                   (let* ((___stx255558255559_ _clause248635_)
                                          (_g248638248653_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx255558255559_)))))
                                     (let ((___kont255560255561_
                                            (lambda (_L248681_
                                                     _L248682_
                                                     _L248683_)
                                              (let* ((_body248723_
                                                      (map (lambda (_g248718248720_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g248718248720_
                        _L248683_
                        _$t248538_
                        _method-calls247648_
                        _slot-refs247649_
                        _class-type-check247650_
                        _struct-type-check1248632_
                        _struct-type-check2248633_)))
                   _L248681_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp256967
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L248683_
                                                              _L248682_))))
                                                (declare (not safe))
                                                (cons __tmp256967
                                                      _body248723_))))
                                           (___kont255562255563_
                                            (lambda () _clause248635_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx255558255559_))
                                           (let ((_e248645248665_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx255558255559_))))
                                             (let ((_tl248643248670_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e248645248665_)))
                                                   (_hd248644248668_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e248645248665_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd248644248668_))
                                                   (let ((_e248648248673_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd248644248668_))))
                                                     (let ((_tl248646248678_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e248648248673_)))
                                                           (_hd248647248676_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e248648248673_))))
                                                       (___kont255560255561_
                                                        _tl248643248670_
                                                        _tl248646248678_
                                                        _hd248647248676_)))
                                                   (___kont255562255563_))))
                                           (___kont255562255563_)))))
                                 (let ((__tmp256968
                                        (lambda (_g248727248730_
                                                 _g248728248732_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g248727248730_
                                                  _g248728248732_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp256968 '() _L248432_))))
                           (__tmp256969
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses248735_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp256969 _stx247554_))))
                 (_specializer-impl248739_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl248737_
                     _struct-check-all248608_
                     _empty247653_)))
                 (_unchecked-specializer-impl248741_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?247656_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl248737_
                         _empty247653_
                         _struct-check-all248608_))
                      '#f))
                 (_specializer-impl248743_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl247560_
                     _$t248538_
                     _methods-bind248561_
                     _slots-bind248584_
                     _class-check-bind248606_
                     _struct-check-bind248630_
                     _specializer-impl248739_
                     _lifted-specializer-id248536_
                     _unchecked-specializer-impl248741_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp256971
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L247629_)))
                                                          (__tmp256970
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id248529_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp256971
                                                       '" => "
                                                       __tmp256970))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def247561_
                                                       _L247629_
                                                       _specializer-id248529_
                                                       _specializer-impl248743_
                                                       _lifted-specializer-id248536_
                                                       _unchecked-specializer-impl248741_)))))
                                            _clause248390248429_))))))
                           (let ()
                             (declare (not safe))
                             (_loop248385248413_ _target248382248408_ '())))
                         (let ()
                           (declare (not safe))
                           (_g248376248395_ _g248377248398_))))))
               (let ()
                 (declare (not safe))
                 (_g248376248395_ _g248377248398_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g248376248395_
                                                  _g248377248398_))))))
                                   (declare (not safe))
                                   (_g248375248746_ _L247628_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L247628_))
                                     (let* ((_g248749248779_
                                             (lambda (_g248750248776_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g248750248776_))))
                                            (_g248748249467_
                                             (lambda (_g248750248782_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g248750248782_))
                                                   (let ((_e248756248784_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g248750248782_))))
                                                     (let ((_hd248755248787_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e248756248784_)))
                                                           (_tl248754248789_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e248756248784_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl248754248789_))
                                                           (let ((_e248759248792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl248754248789_))))
                     (let ((_hd248758248795_
                            (let ()
                              (declare (not safe))
                              (##car _e248759248792_)))
                           (_tl248757248797_
                            (let ()
                              (declare (not safe))
                              (##cdr _e248759248792_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd248758248795_))
                           (let ((_e248762248800_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd248758248795_))))
                             (let ((_hd248761248803_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e248762248800_)))
                                   (_tl248760248805_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e248762248800_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd248761248803_))
                                   (let ((_e248765248808_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd248761248803_))))
                                     (let ((_hd248764248811_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e248765248808_)))
                                           (_tl248763248813_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e248765248808_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd248764248811_))
                                           (let ((_e248768248816_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd248764248811_))))
                                             (let ((_hd248767248819_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e248768248816_)))
                                                   (_tl248766248821_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e248768248816_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl248766248821_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl248763248813_))
                                                       (let ((_e248771248824_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl248763248813_))))
                 (let ((_hd248770248827_
                        (let () (declare (not safe)) (##car _e248771248824_)))
                       (_tl248769248829_
                        (let () (declare (not safe)) (##cdr _e248771248824_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl248769248829_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl248760248805_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl248757248797_))
                               (let ((_e248774248832_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl248757248797_))))
                                 (let ((_hd248773248835_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e248774248832_)))
                                       (_tl248772248837_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e248774248832_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl248772248837_))
                                       ((lambda (_L248840_ _L248841_ _L248842_)
                                          (let* ((_g248865248883_
                                                  (lambda (_g248866248880_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g248866248880_))))
                                                 (_g248864248934_
                                                  (lambda (_g248866248886_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g248866248886_))
                                                        (let ((_e248872248888_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g248866248886_))))
                  (let ((_hd248871248891_
                         (let () (declare (not safe)) (##car _e248872248888_)))
                        (_tl248870248893_
                         (let ()
                           (declare (not safe))
                           (##cdr _e248872248888_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl248870248893_))
                        (let ((_e248875248896_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl248870248893_))))
                          (let ((_hd248874248899_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e248875248896_)))
                                (_tl248873248901_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e248875248896_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd248874248899_))
                                (let ((_e248878248904_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd248874248899_))))
                                  (let ((_hd248877248907_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e248878248904_)))
                                        (_tl248876248909_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e248878248904_))))
                                    ((lambda (_L248912_ _L248913_ _L248914_)
                                       (for-each
                                        (lambda (_g248929248931_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g248929248931_
                                             _L248914_
                                             _method-calls247648_
                                             _slot-refs247649_
                                             _class-type-check247650_
                                             _struct-type-check247651_
                                             _struct-type-assert247652_)))
                                        _L248912_))
                                     _tl248873248901_
                                     _tl248876248909_
                                     _hd248877248907_)))
                                (let ()
                                  (declare (not safe))
                                  (_g248865248883_ _g248866248886_)))))
                        (let ()
                          (declare (not safe))
                          (_g248865248883_ _g248866248886_)))))
                (let ()
                  (declare (not safe))
                  (_g248865248883_ _g248866248886_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g248864248934_ _L248841_))
                                          (let* ((_g248937248956_
                                                  (lambda (_g248938248953_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g248938248953_))))
                                                 (_g248936249075_
                                                  (lambda (_g248938248959_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g248938248959_))
                                                        (let ((_e248942248961_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g248938248959_))))
                  (let ((_hd248941248964_
                         (let () (declare (not safe)) (##car _e248942248961_)))
                        (_tl248940248966_
                         (let ()
                           (declare (not safe))
                           (##cdr _e248942248961_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl248940248966_))
                        (let ((_g256912_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl248940248966_
                                  '0))))
                          (begin
                            (let ((_g256913_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g256912_)
                                         (##vector-length _g256912_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g256913_ 2)))
                                  (error "Context expects 2 values"
                                         _g256913_)))
                            (let ((_target248943248969_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g256912_ 0)))
                                  (_tl248945248971_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g256912_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl248945248971_))
                                  (letrec ((_loop248946248974_
                                            (lambda (_hd248944248977_
                                                     _clause248950248979_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd248944248977_))
                                                  (let ((_e248947248982_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd248944248977_))))
                                                    (let ((_lp-hd248948248985_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e248947248982_)))
                                                          (_lp-tl248949248987_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e248947248982_))))
                                                      (let ((__tmp256915
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd248948248985_ _clause248950248979_))))
                (declare (not safe))
                (_loop248946248974_ _lp-tl248949248987_ __tmp256915))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause248951248990_
                                                         (reverse _clause248950248979_)))
                                                    ((lambda (_L248993_)
                                                       (for-each
                                                        (lambda (_clause249006_)
                                                          (let* ((_g249008249023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g249009249020_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g249009249020_))))
                         (_g249007249065_
                          (lambda (_g249009249026_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g249009249026_))
                                (let ((_e249015249028_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g249009249026_))))
                                  (let ((_hd249014249031_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e249015249028_)))
                                        (_tl249013249033_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e249015249028_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd249014249031_))
                                        (let ((_e249018249036_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd249014249031_))))
                                          (let ((_hd249017249039_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e249018249036_)))
                                                (_tl249016249041_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e249018249036_))))
                                            ((lambda (_L249044_
                                                      _L249045_
                                                      _L249046_)
                                               (for-each
                                                (lambda (_g249060249062_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g249060249062_
                                                     _L249046_
                                                     _method-calls247648_
                                                     _slot-refs247649_
                                                     _class-type-check247650_
                                                     _struct-type-check247651_
                                                     _struct-type-assert247652_)))
                                                _L249044_))
                                             _tl249013249033_
                                             _tl249016249041_
                                             _hd249017249039_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g249008249023_ _g249009249026_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g249008249023_ _g249009249026_))))))
                    (declare (not safe))
                    (_g249007249065_ _clause249006_)))
                (let ((__tmp256914
                       (lambda (_g249067249070_ _g249068249072_)
                         (let ()
                           (declare (not safe))
                           (cons _g249067249070_ _g249068249072_)))))
                  (declare (not safe))
                  (foldr1 __tmp256914 '() _L248993_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause248951248990_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop248946248974_
                                       _target248943248969_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g248937248956_ _g248938248959_))))))
                        (let ()
                          (declare (not safe))
                          (_g248937248956_ _g248938248959_)))))
                (let ()
                  (declare (not safe))
                  (_g248937248956_ _g248938248959_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g248936249075_ _L248840_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?247655_))
                                              _stx247554_
                                              (let* ((_specializer-id249084_
                                                      (let* ((_id249078_
                                                              (let ((__tmp256916
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L247629_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp256916 '"::specialize")))
                     (_specializer-id249081_
                      (let ((__tmp256917
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx247554_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id249078_ __tmp256917))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id249081_))
                _specializer-id249081_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id249091_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?247657_))
                                                          (let* ((_id249086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp256918
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L247629_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp256918
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id249088_
                          (let ((__tmp256919
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx247554_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id249086_ __tmp256919))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id249088_))
                    _lifted-specializer-id249088_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t249093_
                                                      (let ((__tmp256920
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp256920)))
                                                     (_methods249095_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls247648_)))
                                                     (_$methods249099_
                                                      (map (lambda (_id249097_)
                                                             (let ((__tmp256921
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id249097_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp256921)))
                   _methods249095_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g256922_
                                                      (for-each
                                                       (lambda (_g249100249103_
                                                                _g249101249105_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls247648_
                                                            _g249100249103_
                                                            _g249101249105_)))
                                                       _methods249095_
                                                       _$methods249099_))
                                                     (_methods-bind249116_
                                                      (map (lambda (_g249108249111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g249109249113_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind247556_
                        _$t249093_
                        _g249108249111_
                        _g249109249113_)))
                   _methods249095_
                   _$methods249099_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots249118_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs247649_)))
                                                     (_$slots249122_
                                                      (map (lambda (_id249120_)
                                                             (let ((__tmp256923
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id249120_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp256923)))
                   _slots249118_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g256924_
                                                      (for-each
                                                       (lambda (_g249123249126_
                                                                _g249124249128_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs247649_
                                                            _g249123249126_
                                                            _g249124249128_)))
                                                       _slots249118_
                                                       _$slots249122_))
                                                     (_slots-bind249139_
                                                      (map (lambda (_g249131249134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g249132249136_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind247557_
                        _$t249093_
                        _g249131249134_
                        _g249132249136_)))
                   _slots249118_
                   _$slots249122_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check249141_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check247650_)))
                                                     (_$class-check249144_
                                                      (map (lambda (_g256925_)
                                                             (let ((__tmp256926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp256926)))
                   _class-check249141_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g256927_
                                                      (for-each
                                                       (lambda (_g249145249148_
                                                                _g249146249150_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check247650_
                                                            _g249145249148_
                                                            _g249146249150_)))
                                                       _class-check249141_
                                                       _$class-check249144_))
                                                     (_class-check-bind249161_
                                                      (map (lambda (_g249153249156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g249154249158_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind247558_
                        _$t249093_
                        _g249153249156_
                        _g249154249158_)))
                   _class-check249141_
                   _$class-check249144_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all249163_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check247651_
                                                         _struct-type-assert247652_)))
                                                     (_struct-check249165_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all249163_)))
                                                     (_$struct-check249168_
                                                      (map (lambda (_g256928_)
                                                             (let ((__tmp256929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp256929)))
                   _struct-check249165_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g256930_
                                                      (for-each
                                                       (lambda (_g249169249172_
                                                                _g249170249174_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all249163_
                                                            _g249169249172_
                                                            _g249170249174_)))
                                                       _struct-check249165_
                                                       _$struct-check249168_))
                                                     (_struct-check-bind249185_
                                                      (map (lambda (_g249177249180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g249178249182_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind247559_
                        _$t249093_
                        _g249177249180_
                        _g249178249182_)))
                   _struct-check249165_
                   _$struct-check249168_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr249284_
                                                      (lambda (_struct-type-check1249187_
                                                               _struct-type-check2249188_)
                                                        (let* ((_g249190249208_
                                                                (lambda (_g249191249205_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g249191249205_))))
                       (_g249189249281_
                        (lambda (_g249191249211_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g249191249211_))
                              (let ((_e249197249213_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g249191249211_))))
                                (let ((_hd249196249216_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e249197249213_)))
                                      (_tl249195249218_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e249197249213_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl249195249218_))
                                      (let ((_e249200249221_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl249195249218_))))
                                        (let ((_hd249199249224_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e249200249221_)))
                                              (_tl249198249226_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e249200249221_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd249199249224_))
                                              (let ((_e249203249229_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd249199249224_))))
                                                (let ((_hd249202249232_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e249203249229_)))
                                                      (_tl249201249234_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e249203249229_))))
                                                  ((lambda (_L249237_
                                                            _L249238_
                                                            _L249239_)
                                                     (let* ((_body249279_
                                                             (map (lambda (_g249274249276_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g249274249276_
                               _L249239_
                               _$t249093_
                               _method-calls247648_
                               _slot-refs247649_
                               _class-type-check247650_
                               _struct-type-check1249187_
                               _struct-type-check2249188_)))
                          _L249237_))
                    (__tmp256931
                     (let ((__tmp256932
                            (let ((__tmp256933
                                   (let ()
                                     (declare (not safe))
                                     (cons _L249239_ _L249238_))))
                              (declare (not safe))
                              (cons __tmp256933 _body249279_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp256932))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp256931 _L248841_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl249198249226_
                                                   _tl249201249234_
                                                   _hd249202249232_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g249190249208_
                                                 _g249191249211_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g249190249208_ _g249191249211_)))))
                              (let ()
                                (declare (not safe))
                                (_g249190249208_ _g249191249211_))))))
                  (declare (not safe))
                  (_g249189249281_ _L248841_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr249445_
                                                      (lambda (_struct-type-check1249286_
                                                               _struct-type-check2249287_)
                                                        (let* ((_g249289249308_
                                                                (lambda (_g249290249305_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g249290249305_))))
                       (_g249288249442_
                        (lambda (_g249290249311_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g249290249311_))
                              (let ((_e249294249313_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g249290249311_))))
                                (let ((_hd249293249316_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e249294249313_)))
                                      (_tl249292249318_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e249294249313_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl249292249318_))
                                      (let ((_g256934_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl249292249318_
                                                '0))))
                                        (begin
                                          (let ((_g256935_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g256934_)
                                                       (##vector-length
                                                        _g256934_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g256935_ 2)))
                                                (error "Context expects 2 values"
                                                       _g256935_)))
                                          (let ((_target249295249321_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g256934_ 0)))
                                                (_tl249297249323_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g256934_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl249297249323_))
                                                (letrec ((_loop249298249326_
                                                          (lambda (_hd249296249329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause249302249331_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd249296249329_))
                        (let ((_e249299249334_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd249296249329_))))
                          (let ((_lp-hd249300249337_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e249299249334_)))
                                (_lp-tl249301249339_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e249299249334_))))
                            (let ((__tmp256939
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd249300249337_
                                           _clause249302249331_))))
                              (declare (not safe))
                              (_loop249298249326_
                               _lp-tl249301249339_
                               __tmp256939))))
                        (let ((_clause249303249342_
                               (reverse _clause249302249331_)))
                          ((lambda (_L249345_)
                             (let* ((_clauses249440_
                                     (map (lambda (_clause249360_)
                                            (let* ((___stx255578255579_
                                                    _clause249360_)
                                                   (_g249363249378_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx255578255579_)))))
                                              (let ((___kont255580255581_
                                                     (lambda (_L249406_
                                                              _L249407_
                                                              _L249408_)
                                                       (let* ((_body249428_
                                                               (map (lambda (_g249423249425_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g249423249425_
                                 _L249408_
                                 _$t249093_
                                 _method-calls247648_
                                 _slot-refs247649_
                                 _class-type-check247650_
                                 _struct-type-check1249286_
                                 _struct-type-check2249287_)))
                            _L249406_))
                      (__tmp256936
                       (let ()
                         (declare (not safe))
                         (cons _L249408_ _L249407_))))
                 (declare (not safe))
                 (cons __tmp256936 _body249428_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont255582255583_
                                                     (lambda ()
                                                       _clause249360_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx255578255579_))
                                                    (let ((_e249370249390_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx255578255579_))))
                                                      (let ((_tl249368249395_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e249370249390_)))
                    (_hd249369249393_
                     (let () (declare (not safe)) (##car _e249370249390_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd249369249393_))
                    (let ((_e249373249398_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd249369249393_))))
                      (let ((_tl249371249403_
                             (let ()
                               (declare (not safe))
                               (##cdr _e249373249398_)))
                            (_hd249372249401_
                             (let ()
                               (declare (not safe))
                               (##car _e249373249398_))))
                        (___kont255580255581_
                         _tl249368249395_
                         _tl249371249403_
                         _hd249372249401_)))
                    (___kont255582255583_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont255582255583_)))))
                                          (let ((__tmp256937
                                                 (lambda (_g249432249435_
                                                          _g249433249437_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g249432249435_
                                                           _g249433249437_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp256937
                                                    '()
                                                    _L249345_))))
                                    (__tmp256938
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses249440_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp256938 _L248840_)))
                           _clause249303249342_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop249298249326_
                                                     _target249295249321_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g249289249308_
                                                   _g249290249311_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g249289249308_ _g249290249311_)))))
                              (let ()
                                (declare (not safe))
                                (_g249289249308_ _g249290249311_))))))
                  (declare (not safe))
                  (_g249288249442_ _L248840_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl249450_
                                                      (lambda (_specializer-lambda-expr249447_
                                                               _specializer-case-lambda-expr249448_)
                                                        (let ((__tmp256940
                                                               (let ((__tmp256941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp256943
                                     (let ((__tmp256944
                                            (let ((__tmp256946
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L248842_ '())))
                                                  (__tmp256945
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr249447_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp256946 __tmp256945))))
                                       (declare (not safe))
                                       (cons __tmp256944 '())))
                                    (__tmp256942
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr249448_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp256943 __tmp256942))))
                         (declare (not safe))
                         (cons '%#let-values __tmp256941))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp256940 _stx247554_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr249452_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr249284_
                                                         _struct-check-all249163_
                                                         _empty247653_)))
                                                     (_specializer-case-lambda-expr249454_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr249445_
                                                         _struct-check-all249163_
                                                         _empty247653_)))
                                                     (_specializer-impl249456_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl249450_
                                                         _specializer-lambda-expr249452_
                                                         _specializer-case-lambda-expr249454_)))
                                                     (_unchecked-specializer-lambda-expr249458_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?247656_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr249284_
                                                             _empty247653_
                                                             _struct-check-all249163_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr249460_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?247656_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr249445_
                                                             _empty247653_
                                                             _struct-check-all249163_))
                                                          '#f))
                                                     (_unchecked-specializer-impl249462_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?247656_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl249450_
                                                             _unchecked-specializer-lambda-expr249458_
                                                             _unchecked-specializer-case-lambda-expr249460_))
                                                          '#f))
                                                     (_specializer-impl249464_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl247560_
                                                         _$t249093_
                                                         _methods-bind249116_
                                                         _slots-bind249139_
                                                         _class-check-bind249161_
                                                         _struct-check-bind249185_
                                                         _specializer-impl249456_
                                                         _lifted-specializer-id249091_
                                                         _unchecked-specializer-impl249462_))))
                                                (let ((__tmp256948
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L247629_)))
                                                      (__tmp256947
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id249084_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp256948
                                                   '" => "
                                                   __tmp256947))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def247561_
                                                   _L247629_
                                                   _specializer-id249084_
                                                   _specializer-impl249464_
                                                   _lifted-specializer-id249091_
                                                   _unchecked-specializer-impl249462_)))))
                                        _hd248773248835_
                                        _hd248770248827_
                                        _hd248767248819_)
                                       (let ()
                                         (declare (not safe))
                                         (_g248749248779_ _g248750248782_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g248749248779_ _g248750248782_)))
                           (let ()
                             (declare (not safe))
                             (_g248749248779_ _g248750248782_)))
                       (let ()
                         (declare (not safe))
                         (_g248749248779_ _g248750248782_)))))
               (let () (declare (not safe)) (_g248749248779_ _g248750248782_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g248749248779_
                                                      _g248750248782_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g248749248779_
                                              _g248750248782_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g248749248779_ _g248750248782_)))))
                           (let ()
                             (declare (not safe))
                             (_g248749248779_ _g248750248782_)))))
                   (let ()
                     (declare (not safe))
                     (_g248749248779_ _g248750248782_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g248749248779_
                                                      _g248750248782_))))))
                                       (declare (not safe))
                                       (_g248748249467_ _L247628_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L247628_))
                                         (let* ((_g249470249523_
                                                 (lambda (_g249471249520_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g249471249520_))))
                                                (_g249469250795_
                                                 (lambda (_g249471249526_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g249471249526_))
                                                       (let ((_e249479249528_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g249471249526_))))
                 (let ((_hd249478249531_
                        (let () (declare (not safe)) (##car _e249479249528_)))
                       (_tl249477249533_
                        (let () (declare (not safe)) (##cdr _e249479249528_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd249478249531_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd249478249531_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl249477249533_))
                               (let ((_e249482249536_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl249477249533_))))
                                 (let ((_hd249481249539_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e249482249536_)))
                                       (_tl249480249541_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e249482249536_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd249481249539_))
                                       (let ((_e249485249544_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd249481249539_))))
                                         (let ((_hd249484249547_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e249485249544_)))
                                               (_tl249483249549_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e249485249544_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd249484249547_))
                                               (let ((_e249488249552_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd249484249547_))))
                                                 (let ((_hd249487249555_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e249488249552_)))
                                                       (_tl249486249557_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e249488249552_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd249487249555_))
                                                       (let ((_e249491249560_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd249487249555_))))
                 (let ((_hd249490249563_
                        (let () (declare (not safe)) (##car _e249491249560_)))
                       (_tl249489249565_
                        (let () (declare (not safe)) (##cdr _e249491249560_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl249489249565_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl249486249557_))
                           (let ((_e249494249568_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl249486249557_))))
                             (let ((_hd249493249571_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e249494249568_)))
                                   (_tl249492249573_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e249494249568_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd249493249571_))
                                   (let ((_e249497249576_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd249493249571_))))
                                     (let ((_hd249496249579_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e249497249576_)))
                                           (_tl249495249581_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e249497249576_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd249496249579_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd249496249579_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl249495249581_))
                                                   (let ((_e249500249584_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl249495249581_))))
                                                     (let ((_hd249499249587_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e249500249584_)))
                                                           (_tl249498249589_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e249500249584_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd249499249587_))
                                                           (let ((_e249503249592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd249499249587_))))
                     (let ((_hd249502249595_
                            (let ()
                              (declare (not safe))
                              (##car _e249503249592_)))
                           (_tl249501249597_
                            (let ()
                              (declare (not safe))
                              (##cdr _e249503249592_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd249502249595_))
                           (let ((_e249506249600_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd249502249595_))))
                             (let ((_hd249505249603_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e249506249600_)))
                                   (_tl249504249605_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e249506249600_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd249505249603_))
                                   (let ((_e249509249608_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd249505249603_))))
                                     (let ((_hd249508249611_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e249509249608_)))
                                           (_tl249507249613_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e249509249608_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl249507249613_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl249504249605_))
                                               (let ((_e249512249616_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl249504249605_))))
                                                 (let ((_hd249511249619_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e249512249616_)))
                                                       (_tl249510249621_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e249512249616_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl249510249621_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl249501249597_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl249498249589_))
                       (let ((_e249515249624_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl249498249589_))))
                         (let ((_hd249514249627_
                                (let ()
                                  (declare (not safe))
                                  (##car _e249515249624_)))
                               (_tl249513249629_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e249515249624_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl249513249629_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl249492249573_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl249483249549_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl249480249541_))
                                           (let ((_e249518249632_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl249480249541_))))
                                             (let ((_hd249517249635_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e249518249632_)))
                                                   (_tl249516249637_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e249518249632_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl249516249637_))
                                                   ((lambda (_L249640_
                                                             _L249641_
                                                             _L249642_
                                                             _L249643_
                                                             _L249644_)
                                                      (let* ((_g249683249745_
                                                              (lambda (_g249684249742_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g249684249742_))))
                     (_g249682250792_
                      (lambda (_g249684249748_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g249684249748_))
                            (let ((_e249692249750_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g249684249748_))))
                              (let ((_hd249691249753_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e249692249750_)))
                                    (_tl249690249755_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e249692249750_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd249691249753_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd249691249753_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl249690249755_))
                                            (let ((_e249695249758_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl249690249755_))))
                                              (let ((_hd249694249761_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e249695249758_)))
                                                    (_tl249693249763_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e249695249758_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl249693249763_))
                                                    (let ((_e249698249766_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl249693249763_))))
                                                      (let ((_hd249697249769_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e249698249766_)))
                    (_tl249696249771_
                     (let () (declare (not safe)) (##cdr _e249698249766_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd249697249769_))
                    (let ((_e249701249774_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd249697249769_))))
                      (let ((_hd249700249777_
                             (let ()
                               (declare (not safe))
                               (##car _e249701249774_)))
                            (_tl249699249779_
                             (let ()
                               (declare (not safe))
                               (##cdr _e249701249774_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd249700249777_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd249700249777_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl249699249779_))
                                    (let ((_e249704249782_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl249699249779_))))
                                      (let ((_hd249703249785_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e249704249782_)))
                                            (_tl249702249787_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e249704249782_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd249703249785_))
                                            (let ((_e249707249790_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd249703249785_))))
                                              (let ((_hd249706249793_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e249707249790_)))
                                                    (_tl249705249795_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e249707249790_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd249706249793_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd249706249793_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl249705249795_))
                                                            (let ((_e249710249798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl249705249795_))))
                      (let ((_hd249709249801_
                             (let ()
                               (declare (not safe))
                               (##car _e249710249798_)))
                            (_tl249708249803_
                             (let ()
                               (declare (not safe))
                               (##cdr _e249710249798_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl249708249803_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl249702249787_))
                                (let ((_e249713249806_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl249702249787_))))
                                  (let ((_hd249712249809_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e249713249806_)))
                                        (_tl249711249811_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e249713249806_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd249712249809_))
                                        (let ((_e249716249814_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd249712249809_))))
                                          (let ((_hd249715249817_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e249716249814_)))
                                                (_tl249714249819_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e249716249814_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd249715249817_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd249715249817_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl249714249819_))
                                                        (let ((_e249719249822_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl249714249819_))))
                  (let ((_hd249718249825_
                         (let () (declare (not safe)) (##car _e249719249822_)))
                        (_tl249717249827_
                         (let ()
                           (declare (not safe))
                           (##cdr _e249719249822_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl249717249827_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl249711249811_))
                            (let ((_e249722249830_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl249711249811_))))
                              (let ((_hd249721249833_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e249722249830_)))
                                    (_tl249720249835_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e249722249830_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd249721249833_))
                                    (let ((_e249725249838_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd249721249833_))))
                                      (let ((_hd249724249841_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e249725249838_)))
                                            (_tl249723249843_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e249725249838_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd249724249841_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd249724249841_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl249723249843_))
                                                    (let ((_e249728249846_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl249723249843_))))
                                                      (let ((_hd249727249849_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e249728249846_)))
                    (_tl249726249851_
                     (let () (declare (not safe)) (##cdr _e249728249846_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl249726249851_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl249720249835_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl249720249835_))
                                  '1)
                            (let ((_g256824_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl249720249835_
                                      '1))))
                              (begin
                                (let ((_g256825_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g256824_)
                                             (##vector-length _g256824_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g256825_ 2)))
                                      (error "Context expects 2 values"
                                             _g256825_)))
                                (let ((_target249729249854_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g256824_ 0)))
                                      (_tl249731249856_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g256824_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl249731249856_))
                                      (let ((_e249740249859_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl249731249856_))))
                                        (let ((_hd249739249862_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e249740249859_)))
                                              (_tl249738249864_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e249740249859_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl249738249864_))
                                              (letrec ((_loop249732249867_
                                                        (lambda (_hd249730249870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref249736249872_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd249730249870_))
                      (let ((_e249733249875_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd249730249870_))))
                        (let ((_lp-hd249734249878_
                               (let ()
                                 (declare (not safe))
                                 (##car _e249733249875_)))
                              (_lp-tl249735249880_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e249733249875_))))
                          (let ((__tmp256911
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd249734249878_
                                         _kw-ref249736249872_))))
                            (declare (not safe))
                            (_loop249732249867_
                             _lp-tl249735249880_
                             __tmp256911))))
                      (let ((_kw-ref249737249883_
                             (reverse _kw-ref249736249872_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl249696249771_))
                            ((lambda (_L249886_
                                      _L249887_
                                      _L249888_
                                      _L249889_
                                      _L249890_)
                               (let* ((_kw-count249941_
                                       (length (let ((__tmp256826
                                                      (lambda (_g249933249936_
                                                               _g249934249938_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g249933249936_
                                                                _g249934249938_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp256826
                                                         '()
                                                         _L249887_))))
                                      (_self-index249943_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count249941_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L249642_))
                                     (let* ((_g249946249960_
                                             (lambda (_g249947249957_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g249947249957_))))
                                            (_g249945250131_
                                             (lambda (_g249947249963_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g249947249963_))
                                                   (let ((_e249952249965_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g249947249963_))))
                                                     (let ((_hd249951249968_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e249952249965_)))
                                                           (_tl249950249970_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e249952249965_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl249950249970_))
                                                           (let ((_e249955249973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl249950249970_))))
                     (let ((_hd249954249976_
                            (let ()
                              (declare (not safe))
                              (##car _e249955249973_)))
                           (_tl249953249978_
                            (let ()
                              (declare (not safe))
                              (##cdr _e249955249973_))))
                       ((lambda (_L249981_ _L249982_)
                          (let ((_self249998_
                                 (list-ref _L249982_ _self-index249943_)))
                            (for-each
                             (lambda (_g249999250001_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g249999250001_
                                  _self249998_
                                  _method-calls247648_
                                  _slot-refs247649_
                                  _class-type-check247650_
                                  _struct-type-check247651_
                                  _struct-type-assert247652_)))
                             _L249981_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?247655_))
                                _stx247554_
                                (let* ((_specializer-id250010_
                                        (let* ((_id250004_
                                                (let ((__tmp256877
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L247629_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp256877
                                                   '"::specialize")))
                                               (_specializer-id250007_
                                                (let ((__tmp256878
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx247554_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id250004_
                                                   __tmp256878))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id250007_))
                                          _specializer-id250007_))
                                       (_lifted-specializer-id250017_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?247657_))
                                            (let* ((_id250012_
                                                    (let ((__tmp256879
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L247629_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp256879
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id250014_
                                                    (let ((__tmp256880
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx247554_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id250012_
                                                       __tmp256880))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id250014_))
                                              _lifted-specializer-id250014_)
                                            '#f))
                                       (_$t250019_
                                        (let ((__tmp256881 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp256881)))
                                       (_methods250021_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls247648_)))
                                       (_$methods250025_
                                        (map (lambda (_id250023_)
                                               (let ((__tmp256882
                                                      (gensym _id250023_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp256882)))
                                             _methods250021_))
                                       (_g256883_
                                        (for-each
                                         (lambda (_g250026250029_
                                                  _g250027250031_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls247648_
                                              _g250026250029_
                                              _g250027250031_)))
                                         _methods250021_
                                         _$methods250025_))
                                       (_methods-bind250042_
                                        (map (lambda (_g250034250037_
                                                      _g250035250039_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind247556_
                                                  _$t250019_
                                                  _g250034250037_
                                                  _g250035250039_)))
                                             _methods250021_
                                             _$methods250025_))
                                       (_slots250044_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs247649_)))
                                       (_$slots250048_
                                        (map (lambda (_id250046_)
                                               (let ((__tmp256884
                                                      (gensym _id250046_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp256884)))
                                             _slots250044_))
                                       (_g256885_
                                        (for-each
                                         (lambda (_g250049250052_
                                                  _g250050250054_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs247649_
                                              _g250049250052_
                                              _g250050250054_)))
                                         _slots250044_
                                         _$slots250048_))
                                       (_slots-bind250065_
                                        (map (lambda (_g250057250060_
                                                      _g250058250062_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind247557_
                                                  _$t250019_
                                                  _g250057250060_
                                                  _g250058250062_)))
                                             _slots250044_
                                             _$slots250048_))
                                       (_class-check250067_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check247650_)))
                                       (_$class-check250070_
                                        (map (lambda (_g256886_)
                                               (let ((__tmp256887
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp256887)))
                                             _class-check250067_))
                                       (_g256888_
                                        (for-each
                                         (lambda (_g250071250074_
                                                  _g250072250076_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check247650_
                                              _g250071250074_
                                              _g250072250076_)))
                                         _class-check250067_
                                         _$class-check250070_))
                                       (_class-check-bind250087_
                                        (map (lambda (_g250079250082_
                                                      _g250080250084_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind247558_
                                                  _$t250019_
                                                  _g250079250082_
                                                  _g250080250084_)))
                                             _class-check250067_
                                             _$class-check250070_))
                                       (_struct-check-all250089_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check247651_
                                           _struct-type-assert247652_)))
                                       (_struct-check250091_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all250089_)))
                                       (_$struct-check250094_
                                        (map (lambda (_g256889_)
                                               (let ((__tmp256890
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp256890)))
                                             _struct-check250091_))
                                       (_g256891_
                                        (for-each
                                         (lambda (_g250095250098_
                                                  _g250096250100_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all250089_
                                              _g250095250098_
                                              _g250096250100_)))
                                         _struct-check250091_
                                         _$struct-check250094_))
                                       (_struct-check-bind250111_
                                        (map (lambda (_g250103250106_
                                                      _g250104250108_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind247559_
                                                  _$t250019_
                                                  _g250103250106_
                                                  _g250104250108_)))
                                             _struct-check250091_
                                             _$struct-check250094_))
                                       (_make-specializer-impl250122_
                                        (lambda (_struct-type-check1250113_
                                                 _struct-type-check2250114_)
                                          (let* ((_specializer-body250120_
                                                  (map (lambda (_g250115250117_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g250115250117_
                                                            _self249998_
                                                            _$t250019_
                                                            _method-calls247648_
                                                            _slot-refs247649_
                                                            _class-type-check247650_
                                                            _struct-type-check1250113_
                                                            _struct-type-check2250114_)))
                                                       _L249981_))
                                                 (__tmp256892
                                                  (let ((__tmp256893
                                                         (let ((__tmp256895
                                                                (let ((__tmp256896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp256908
                                      (let ()
                                        (declare (not safe))
                                        (cons _L249644_ '())))
                                     (__tmp256897
                                      (let ((__tmp256898
                                             (let ((__tmp256899
                                                    (let ((__tmp256901
                                                           (let ((__tmp256902
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp256907
                                 (let ()
                                   (declare (not safe))
                                   (cons _L249643_ '())))
                                (__tmp256903
                                 (let ((__tmp256904
                                        (let ((__tmp256905
                                               (let ((__tmp256906
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L249982_
                                                              _specializer-body250120_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp256906))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp256905
                                           _L249642_))))
                                   (declare (not safe))
                                   (cons __tmp256904 '()))))
                            (declare (not safe))
                            (cons __tmp256907 __tmp256903))))
                     (declare (not safe))
                     (cons __tmp256902 '())))
                  (__tmp256900
                   (let () (declare (not safe)) (cons _L249641_ '()))))
              (declare (not safe))
              (cons __tmp256901 __tmp256900))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp256899))))
                                        (declare (not safe))
                                        (cons __tmp256898 '()))))
                                 (declare (not safe))
                                 (cons __tmp256908 __tmp256897))))
                          (declare (not safe))
                          (cons __tmp256896 '())))
                       (__tmp256894
                        (let () (declare (not safe)) (cons _L249640_ '()))))
                   (declare (not safe))
                   (cons __tmp256895 __tmp256894))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp256893))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp256892
                                             _stx247554_))))
                                       (_specializer-impl250124_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl250122_
                                           _struct-check-all250089_
                                           _empty247653_)))
                                       (_unchecked-specializer-impl250126_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?247656_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl250122_
                                               _empty247653_
                                               _struct-check-all250089_))
                                            '#f))
                                       (_specializer-impl250128_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl247560_
                                           _$t250019_
                                           _methods-bind250042_
                                           _slots-bind250065_
                                           _class-check-bind250087_
                                           _struct-check-bind250111_
                                           _specializer-impl250124_
                                           _lifted-specializer-id250017_
                                           _unchecked-specializer-impl250126_))))
                                  (let ((__tmp256910
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L247629_)))
                                        (__tmp256909
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id250010_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp256910
                                     '" => "
                                     __tmp256909))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def247561_
                                     _L247629_
                                     _specializer-id250010_
                                     _specializer-impl250128_
                                     _lifted-specializer-id250017_
                                     _unchecked-specializer-impl250126_))))))
                        _tl249953249978_
                        _hd249954249976_)))
                   (let ()
                     (declare (not safe))
                     (_g249946249960_ _g249947249963_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g249946249960_
                                                      _g249947249963_))))))
                                       (declare (not safe))
                                       (_g249945250131_ _L249642_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L249642_))
                                         (let* ((_g250134250164_
                                                 (lambda (_g250135250161_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g250135250161_))))
                                                (_g250133250789_
                                                 (lambda (_g250135250167_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g250135250167_))
                                                       (let ((_e250141250169_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g250135250167_))))
                 (let ((_hd250140250172_
                        (let () (declare (not safe)) (##car _e250141250169_)))
                       (_tl250139250174_
                        (let () (declare (not safe)) (##cdr _e250141250169_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl250139250174_))
                       (let ((_e250144250177_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl250139250174_))))
                         (let ((_hd250143250180_
                                (let ()
                                  (declare (not safe))
                                  (##car _e250144250177_)))
                               (_tl250142250182_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e250144250177_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd250143250180_))
                               (let ((_e250147250185_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd250143250180_))))
                                 (let ((_hd250146250188_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e250147250185_)))
                                       (_tl250145250190_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e250147250185_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd250146250188_))
                                       (let ((_e250150250193_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd250146250188_))))
                                         (let ((_hd250149250196_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e250150250193_)))
                                               (_tl250148250198_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e250150250193_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd250149250196_))
                                               (let ((_e250153250201_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd250149250196_))))
                                                 (let ((_hd250152250204_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e250153250201_)))
                                                       (_tl250151250206_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e250153250201_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl250151250206_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl250148250198_))
                                                           (let ((_e250156250209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl250148250198_))))
                     (let ((_hd250155250212_
                            (let ()
                              (declare (not safe))
                              (##car _e250156250209_)))
                           (_tl250154250214_
                            (let ()
                              (declare (not safe))
                              (##cdr _e250156250209_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl250154250214_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl250145250190_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl250142250182_))
                                   (let ((_e250159250217_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl250142250182_))))
                                     (let ((_hd250158250220_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e250159250217_)))
                                           (_tl250157250222_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e250159250217_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl250157250222_))
                                           ((lambda (_L250225_
                                                     _L250226_
                                                     _L250227_)
                                              (let* ((_g250250250264_
                                                      (lambda (_g250251250261_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g250251250261_))))
                                                     (_g250249250305_
                                                      (lambda (_g250251250267_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g250251250267_))
                                                            (let ((_e250256250269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g250251250267_))))
                      (let ((_hd250255250272_
                             (let ()
                               (declare (not safe))
                               (##car _e250256250269_)))
                            (_tl250254250274_
                             (let ()
                               (declare (not safe))
                               (##cdr _e250256250269_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl250254250274_))
                            (let ((_e250259250277_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl250254250274_))))
                              (let ((_hd250258250280_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e250259250277_)))
                                    (_tl250257250282_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e250259250277_))))
                                ((lambda (_L250285_ _L250286_)
                                   (let ((_self250299_
                                          (list-ref
                                           _L250286_
                                           _self-index249943_)))
                                     (for-each
                                      (lambda (_g250300250302_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g250300250302_
                                           _self250299_
                                           _method-calls247648_
                                           _slot-refs247649_
                                           _class-type-check247650_
                                           _struct-type-check247651_
                                           _struct-type-assert247652_)))
                                      _L250285_)))
                                 _tl250257250282_
                                 _hd250258250280_)))
                            (let ()
                              (declare (not safe))
                              (_g250250250264_ _g250251250267_)))))
                    (let ()
                      (declare (not safe))
                      (_g250250250264_ _g250251250267_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g250249250305_ _L250226_))
                                              (let* ((_g250308250327_
                                                      (lambda (_g250309250324_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g250309250324_))))
                                                     (_g250307250432_
                                                      (lambda (_g250309250330_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g250309250330_))
                                                            (let ((_e250313250332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g250309250330_))))
                      (let ((_hd250312250335_
                             (let ()
                               (declare (not safe))
                               (##car _e250313250332_)))
                            (_tl250311250337_
                             (let ()
                               (declare (not safe))
                               (##cdr _e250313250332_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl250311250337_))
                            (let ((_g256827_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl250311250337_
                                      '0))))
                              (begin
                                (let ((_g256828_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g256827_)
                                             (##vector-length _g256827_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g256828_ 2)))
                                      (error "Context expects 2 values"
                                             _g256828_)))
                                (let ((_target250314250340_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g256827_ 0)))
                                      (_tl250316250342_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g256827_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl250316250342_))
                                      (letrec ((_loop250317250345_
                                                (lambda (_hd250315250348_
                                                         _clause250321250350_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd250315250348_))
                                                      (let ((_e250318250353_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd250315250348_))))
                (let ((_lp-hd250319250356_
                       (let () (declare (not safe)) (##car _e250318250353_)))
                      (_lp-tl250320250358_
                       (let () (declare (not safe)) (##cdr _e250318250353_))))
                  (let ((__tmp256830
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd250319250356_ _clause250321250350_))))
                    (declare (not safe))
                    (_loop250317250345_ _lp-tl250320250358_ __tmp256830))))
              (let ((_clause250322250361_ (reverse _clause250321250350_)))
                ((lambda (_L250364_)
                   (for-each
                    (lambda (_clause250377_)
                      (let* ((_g250379250390_
                              (lambda (_g250380250387_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g250380250387_))))
                             (_g250378250422_
                              (lambda (_g250380250393_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g250380250393_))
                                    (let ((_e250385250395_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g250380250393_))))
                                      (let ((_hd250384250398_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e250385250395_)))
                                            (_tl250383250400_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e250385250395_))))
                                        ((lambda (_L250403_ _L250404_)
                                           (let ((_self250416_
                                                  (list-ref
                                                   _L250404_
                                                   _self-index249943_)))
                                             (for-each
                                              (lambda (_g250417250419_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g250417250419_
                                                   _self250416_
                                                   _method-calls247648_
                                                   _slot-refs247649_
                                                   _class-type-check247650_
                                                   _struct-type-check247651_
                                                   _struct-type-assert247652_)))
                                              _L250403_)))
                                         _tl250383250400_
                                         _hd250384250398_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g250379250390_ _g250380250393_))))))
                        (declare (not safe))
                        (_g250378250422_ _clause250377_)))
                    (let ((__tmp256829
                           (lambda (_g250424250427_ _g250425250429_)
                             (let ()
                               (declare (not safe))
                               (cons _g250424250427_ _g250425250429_)))))
                      (declare (not safe))
                      (foldr1 __tmp256829 '() _L250364_))))
                 _clause250322250361_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop250317250345_
                                           _target250314250340_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g250308250327_ _g250309250330_))))))
                            (let ()
                              (declare (not safe))
                              (_g250308250327_ _g250309250330_)))))
                    (let ()
                      (declare (not safe))
                      (_g250308250327_ _g250309250330_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g250307250432_ _L250225_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?247655_))
                                                  _stx247554_
                                                  (let* ((_specializer-id250441_
                                                          (let* ((_id250435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp256831
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L247629_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp256831 '"::specialize")))
                         (_specializer-id250438_
                          (let ((__tmp256832
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx247554_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id250435_ __tmp256832))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id250438_))
                    _specializer-id250438_))
                 (_lifted-specializer-id250448_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?247657_))
                      (let* ((_id250443_
                              (let ((__tmp256833
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L247629_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp256833
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id250445_
                              (let ((__tmp256834
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx247554_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id250443_
                                 __tmp256834))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id250445_))
                        _lifted-specializer-id250445_)
                      '#f))
                 (_$t250450_
                  (let ((__tmp256835 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp256835)))
                 (_methods250452_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls247648_)))
                 (_$methods250456_
                  (map (lambda (_id250454_)
                         (let ((__tmp256836 (gensym _id250454_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp256836)))
                       _methods250452_))
                 (_g256837_
                  (for-each
                   (lambda (_g250457250460_ _g250458250462_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls247648_
                        _g250457250460_
                        _g250458250462_)))
                   _methods250452_
                   _$methods250456_))
                 (_methods-bind250473_
                  (map (lambda (_g250465250468_ _g250466250470_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind247556_
                            _$t250450_
                            _g250465250468_
                            _g250466250470_)))
                       _methods250452_
                       _$methods250456_))
                 (_slots250475_
                  (let () (declare (not safe)) (hash-keys _slot-refs247649_)))
                 (_$slots250479_
                  (map (lambda (_id250477_)
                         (let ((__tmp256838 (gensym _id250477_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp256838)))
                       _slots250475_))
                 (_g256839_
                  (for-each
                   (lambda (_g250480250483_ _g250481250485_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs247649_
                        _g250480250483_
                        _g250481250485_)))
                   _slots250475_
                   _$slots250479_))
                 (_slots-bind250496_
                  (map (lambda (_g250488250491_ _g250489250493_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind247557_
                            _$t250450_
                            _g250488250491_
                            _g250489250493_)))
                       _slots250475_
                       _$slots250479_))
                 (_class-check250498_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check247650_)))
                 (_$class-check250501_
                  (map (lambda (_g256840_)
                         (let ((__tmp256841 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp256841)))
                       _class-check250498_))
                 (_g256842_
                  (for-each
                   (lambda (_g250502250505_ _g250503250507_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check247650_
                        _g250502250505_
                        _g250503250507_)))
                   _class-check250498_
                   _$class-check250501_))
                 (_class-check-bind250518_
                  (map (lambda (_g250510250513_ _g250511250515_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind247558_
                            _$t250450_
                            _g250510250513_
                            _g250511250515_)))
                       _class-check250498_
                       _$class-check250501_))
                 (_struct-check-all250520_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check247651_
                     _struct-type-assert247652_)))
                 (_struct-check250522_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all250520_)))
                 (_$struct-check250525_
                  (map (lambda (_g256843_)
                         (let ((__tmp256844 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp256844)))
                       _struct-check250522_))
                 (_g256845_
                  (for-each
                   (lambda (_g250526250529_ _g250527250531_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all250520_
                        _g250526250529_
                        _g250527250531_)))
                   _struct-check250522_
                   _$struct-check250525_))
                 (_struct-check-bind250542_
                  (map (lambda (_g250534250537_ _g250535250539_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind247559_
                            _$t250450_
                            _g250534250537_
                            _g250535250539_)))
                       _struct-check250522_
                       _$struct-check250525_))
                 (_make-specializer-lambda-expr250628_
                  (lambda (_struct-type-check1250544_
                           _struct-type-check2250545_)
                    (let* ((_g250547250561_
                            (lambda (_g250548250558_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g250548250558_))))
                           (_g250546250625_
                            (lambda (_g250548250564_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g250548250564_))
                                  (let ((_e250553250566_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g250548250564_))))
                                    (let ((_hd250552250569_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e250553250566_)))
                                          (_tl250551250571_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e250553250566_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl250551250571_))
                                          (let ((_e250556250574_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl250551250571_))))
                                            (let ((_hd250555250577_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e250556250574_)))
                                                  (_tl250554250579_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e250556250574_))))
                                              ((lambda (_L250582_ _L250583_)
                                                 (let* ((_self250616_
                                                         (list-ref
                                                          _L250583_
                                                          _self-index249943_))
                                                        (_body250622_
                                                         (map (lambda (_g250617250619_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g250617250619_
                           _self250616_
                           _$t250450_
                           _method-calls247648_
                           _slot-refs247649_
                           _class-type-check247650_
                           _struct-type-check1250544_
                           _struct-type-check2250545_)))
                      _L250582_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp256846
                                                          (let ((__tmp256847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L250583_ _body250622_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp256847))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp256846
                                                      _L250226_))))
                                               _tl250554250579_
                                               _hd250555250577_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g250547250561_
                                             _g250548250564_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g250547250561_ _g250548250564_))))))
                      (declare (not safe))
                      (_g250546250625_ _L250226_))))
                 (_make-specializer-case-lambda-expr250767_
                  (lambda (_struct-type-check1250630_
                           _struct-type-check2250631_)
                    (let* ((_g250633250652_
                            (lambda (_g250634250649_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g250634250649_))))
                           (_g250632250764_
                            (lambda (_g250634250655_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g250634250655_))
                                  (let ((_e250638250657_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g250634250655_))))
                                    (let ((_hd250637250660_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e250638250657_)))
                                          (_tl250636250662_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e250638250657_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl250636250662_))
                                          (let ((_g256848_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl250636250662_
                                                    '0))))
                                            (begin
                                              (let ((_g256849_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g256848_)
                                                           (##vector-length
                                                            _g256848_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g256849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g256849_)))
                                              (let ((_target250639250665_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g256848_
                                                        0)))
                                                    (_tl250641250667_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g256848_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl250641250667_))
                                                    (letrec ((_loop250642250670_
                                                              (lambda (_hd250640250673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause250646250675_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd250640250673_))
                            (let ((_e250643250678_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd250640250673_))))
                              (let ((_lp-hd250644250681_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e250643250678_)))
                                    (_lp-tl250645250683_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e250643250678_))))
                                (let ((__tmp256852
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd250644250681_
                                               _clause250646250675_))))
                                  (declare (not safe))
                                  (_loop250642250670_
                                   _lp-tl250645250683_
                                   __tmp256852))))
                            (let ((_clause250647250686_
                                   (reverse _clause250646250675_)))
                              ((lambda (_L250689_)
                                 (let* ((_clauses250762_
                                         (map (lambda (_clause250704_)
                                                (let* ((_g250706250717_
                                                        (lambda (_g250707250714_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g250707250714_))))
                                                       (_g250705250752_
                                                        (lambda (_g250707250720_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g250707250720_))
                      (let ((_e250712250722_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g250707250720_))))
                        (let ((_hd250711250725_
                               (let ()
                                 (declare (not safe))
                                 (##car _e250712250722_)))
                              (_tl250710250727_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e250712250722_))))
                          ((lambda (_L250730_ _L250731_)
                             (let* ((_self250743_
                                     (list-ref _L250731_ _self-index249943_))
                                    (_body250749_
                                     (map (lambda (_g250744250746_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g250744250746_
                                               _self250743_
                                               _$t250450_
                                               _method-calls247648_
                                               _slot-refs247649_
                                               _class-type-check247650_
                                               _struct-type-check1250630_
                                               _struct-type-check2250631_)))
                                          _L250730_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L250731_ _body250749_))))
                           _tl250710250727_
                           _hd250711250725_)))
                      (let ()
                        (declare (not safe))
                        (_g250706250717_ _g250707250720_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g250705250752_
                                                   _clause250704_)))
                                              (let ((__tmp256850
                                                     (lambda (_g250754250757_
                                                              _g250755250759_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g250754250757_
                                                               _g250755250759_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp256850
                                                        '()
                                                        _L250689_))))
                                        (__tmp256851
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses250762_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp256851
                                    _L250225_)))
                               _clause250647250686_))))))
              (let ()
                (declare (not safe))
                (_loop250642250670_ _target250639250665_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g250633250652_
                                                       _g250634250655_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g250633250652_
                                             _g250634250655_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g250633250652_ _g250634250655_))))))
                      (declare (not safe))
                      (_g250632250764_ _L250225_))))
                 (_make-specializer-impl250772_
                  (lambda (_specializer-lambda-expr250769_
                           _specializer-case-lambda-expr250770_)
                    (let ((__tmp256853
                           (let ((__tmp256854
                                  (let ((__tmp256856
                                         (let ((__tmp256857
                                                (let ((__tmp256874
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L249644_ '())))
                                                      (__tmp256858
                                                       (let ((__tmp256859
                                                              (let ((__tmp256860
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp256862
                                    (let ((__tmp256863
                                           (let ((__tmp256873
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L249643_ '())))
                                                 (__tmp256864
                                                  (let ((__tmp256865
                                                         (let ((__tmp256866
                                                                (let ((__tmp256867
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp256869
                                      (let ((__tmp256870
                                             (let ((__tmp256872
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L250227_ '())))
                                                   (__tmp256871
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr250769_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp256872
                                                     __tmp256871))))
                                        (declare (not safe))
                                        (cons __tmp256870 '())))
                                     (__tmp256868
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr250770_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp256869 __tmp256868))))
                          (declare (not safe))
                          (cons '%#let-values __tmp256867))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp256866 _stx247554_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp256865 '()))))
                                             (declare (not safe))
                                             (cons __tmp256873 __tmp256864))))
                                      (declare (not safe))
                                      (cons __tmp256863 '())))
                                   (__tmp256861
                                    (let ()
                                      (declare (not safe))
                                      (cons _L249641_ '()))))
                               (declare (not safe))
                               (cons __tmp256862 __tmp256861))))
                        (declare (not safe))
                        (cons '%#let-values __tmp256860))))
                 (declare (not safe))
                 (cons __tmp256859 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256874
                                                        __tmp256858))))
                                           (declare (not safe))
                                           (cons __tmp256857 '())))
                                        (__tmp256855
                                         (let ()
                                           (declare (not safe))
                                           (cons _L249640_ '()))))
                                    (declare (not safe))
                                    (cons __tmp256856 __tmp256855))))
                             (declare (not safe))
                             (cons '%#let-values __tmp256854))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp256853 _stx247554_))))
                 (_specializer-lambda-expr250774_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr250628_
                     _struct-check-all250520_
                     _empty247653_)))
                 (_specializer-case-lambda-expr250776_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr250767_
                     _struct-check-all250520_
                     _empty247653_)))
                 (_specializer-impl250778_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl250772_
                     _specializer-lambda-expr250774_
                     _specializer-case-lambda-expr250776_)))
                 (_unchecked-specializer-lambda-expr250780_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?247656_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr250628_
                         _empty247653_
                         _struct-check-all250520_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr250782_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?247656_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr250767_
                         _empty247653_
                         _struct-check-all250520_))
                      '#f))
                 (_unchecked-specializer-impl250784_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?247656_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl250772_
                         _unchecked-specializer-lambda-expr250780_
                         _unchecked-specializer-case-lambda-expr250782_))
                      '#f))
                 (_specializer-impl250786_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl247560_
                     _$t250450_
                     _methods-bind250473_
                     _slots-bind250496_
                     _class-check-bind250518_
                     _struct-check-bind250542_
                     _specializer-impl250778_
                     _lifted-specializer-id250448_
                     _unchecked-specializer-impl250784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp256876
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L247629_)))
                                                          (__tmp256875
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id250441_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp256876
                                                       '" => "
                                                       __tmp256875))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def247561_
                                                       _L247629_
                                                       _specializer-id250441_
                                                       _specializer-impl250786_
                                                       _lifted-specializer-id250448_
                                                       _unchecked-specializer-impl250784_)))))
                                            _hd250158250220_
                                            _hd250155250212_
                                            _hd250152250204_)
                                           (let ()
                                             (declare (not safe))
                                             (_g250134250164_
                                              _g250135250167_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g250134250164_ _g250135250167_)))
                               (let ()
                                 (declare (not safe))
                                 (_g250134250164_ _g250135250167_)))
                           (let ()
                             (declare (not safe))
                             (_g250134250164_ _g250135250167_)))))
                   (let ()
                     (declare (not safe))
                     (_g250134250164_ _g250135250167_)))
               (let ()
                 (declare (not safe))
                 (_g250134250164_ _g250135250167_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g250134250164_
                                                  _g250135250167_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g250134250164_ _g250135250167_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g250134250164_ _g250135250167_)))))
                       (let ()
                         (declare (not safe))
                         (_g250134250164_ _g250135250167_)))))
               (let ()
                 (declare (not safe))
                 (_g250134250164_ _g250135250167_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g250133250789_ _L249642_))
                                         _stx247554_))))
                             _hd249739249862_
                             _kw-ref249737249883_
                             _hd249727249849_
                             _hd249718249825_
                             _hd249709249801_)
                            (let ()
                              (declare (not safe))
                              (_g249683249745_ _g249684249748_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop249732249867_
                                                   _target249729249854_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g249683249745_
                                                 _g249684249748_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g249683249745_ _g249684249748_))))))
                            (let ()
                              (declare (not safe))
                              (_g249683249745_ _g249684249748_)))
                        (let ()
                          (declare (not safe))
                          (_g249683249745_ _g249684249748_)))
                    (let ()
                      (declare (not safe))
                      (_g249683249745_ _g249684249748_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g249683249745_
                                                       _g249684249748_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g249683249745_
                                                   _g249684249748_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g249683249745_
                                               _g249684249748_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g249683249745_ _g249684249748_)))))
                            (let ()
                              (declare (not safe))
                              (_g249683249745_ _g249684249748_)))
                        (let ()
                          (declare (not safe))
                          (_g249683249745_ _g249684249748_)))))
                (let ()
                  (declare (not safe))
                  (_g249683249745_ _g249684249748_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g249683249745_
                                                       _g249684249748_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g249683249745_
                                                   _g249684249748_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g249683249745_ _g249684249748_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g249683249745_ _g249684249748_)))
                            (let ()
                              (declare (not safe))
                              (_g249683249745_ _g249684249748_)))))
                    (let ()
                      (declare (not safe))
                      (_g249683249745_ _g249684249748_)))
                (let ()
                  (declare (not safe))
                  (_g249683249745_ _g249684249748_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g249683249745_
                                                       _g249684249748_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g249683249745_
                                               _g249684249748_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g249683249745_ _g249684249748_)))
                                (let ()
                                  (declare (not safe))
                                  (_g249683249745_ _g249684249748_)))
                            (let ()
                              (declare (not safe))
                              (_g249683249745_ _g249684249748_)))))
                    (let ()
                      (declare (not safe))
                      (_g249683249745_ _g249684249748_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g249683249745_
                                                       _g249684249748_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g249683249745_
                                               _g249684249748_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g249683249745_ _g249684249748_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g249683249745_ _g249684249748_)))))
                            (let ()
                              (declare (not safe))
                              (_g249683249745_ _g249684249748_))))))
                (declare (not safe))
                (_g249682250792_ _L249641_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd249517249635_
                                                    _hd249514249627_
                                                    _hd249511249619_
                                                    _hd249508249611_
                                                    _hd249490249563_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g249470249523_
                                                      _g249471249526_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g249470249523_
                                              _g249471249526_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g249470249523_ _g249471249526_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g249470249523_ _g249471249526_)))
                               (let ()
                                 (declare (not safe))
                                 (_g249470249523_ _g249471249526_)))))
                       (let ()
                         (declare (not safe))
                         (_g249470249523_ _g249471249526_)))
                   (let ()
                     (declare (not safe))
                     (_g249470249523_ _g249471249526_)))
               (let ()
                 (declare (not safe))
                 (_g249470249523_ _g249471249526_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g249470249523_
                                                  _g249471249526_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g249470249523_
                                              _g249471249526_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g249470249523_ _g249471249526_)))))
                           (let ()
                             (declare (not safe))
                             (_g249470249523_ _g249471249526_)))))
                   (let ()
                     (declare (not safe))
                     (_g249470249523_ _g249471249526_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g249470249523_
                                                      _g249471249526_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g249470249523_
                                                  _g249471249526_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g249470249523_
                                              _g249471249526_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g249470249523_ _g249471249526_)))))
                           (let ()
                             (declare (not safe))
                             (_g249470249523_ _g249471249526_)))
                       (let ()
                         (declare (not safe))
                         (_g249470249523_ _g249471249526_)))))
               (let ()
                 (declare (not safe))
                 (_g249470249523_ _g249471249526_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g249470249523_
                                                  _g249471249526_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g249470249523_ _g249471249526_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g249470249523_ _g249471249526_)))
                           (let ()
                             (declare (not safe))
                             (_g249470249523_ _g249471249526_)))
                       (let ()
                         (declare (not safe))
                         (_g249470249523_ _g249471249526_)))))
               (let ()
                 (declare (not safe))
                 (_g249470249523_ _g249471249526_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g249469250795_ _L247628_))
                                         _stx247554_))))))))
                  (___kont255602255603_ (lambda () _stx247554_)))
              (let ((___match255631255632_
                     (lambda (_e247570247596_
                              _hd247569247599_
                              _tl247568247601_
                              _e247573247604_
                              _hd247572247607_
                              _tl247571247609_
                              _e247576247612_
                              _hd247575247615_
                              _tl247574247617_
                              _e247579247620_
                              _hd247578247623_
                              _tl247577247625_)
                       (let ((_L247628_ _hd247578247623_)
                             (_L247629_ _hd247575247615_))
                         (if (let ((__tmp256993
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L247629_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp256993))
                             (___kont255600255601_ _L247628_ _L247629_)
                             (___kont255602255603_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx255598255599_))
                    (let ((_e247570247596_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx255598255599_))))
                      (let ((_tl247568247601_
                             (let ()
                               (declare (not safe))
                               (##cdr _e247570247596_)))
                            (_hd247569247599_
                             (let ()
                               (declare (not safe))
                               (##car _e247570247596_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl247568247601_))
                            (let ((_e247573247604_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl247568247601_))))
                              (let ((_tl247571247609_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e247573247604_)))
                                    (_hd247572247607_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e247573247604_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd247572247607_))
                                    (let ((_e247576247612_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd247572247607_))))
                                      (let ((_tl247574247617_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e247576247612_)))
                                            (_hd247575247615_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e247576247612_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl247574247617_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl247571247609_))
                                                (let ((_e247579247620_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl247571247609_))))
                                                  (let ((_tl247577247625_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e247579247620_)))
                                                        (_hd247578247623_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e247579247620_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl247577247625_))
                                                        (___match255631255632_
                                                         _e247570247596_
                                                         _hd247569247599_
                                                         _tl247568247601_
                                                         _e247573247604_
                                                         _hd247572247607_
                                                         _tl247571247609_
                                                         _e247576247612_
                                                         _hd247575247615_
                                                         _tl247574247617_
                                                         _e247579247620_
                                                         _hd247578247623_
                                                         _tl247577247625_)
                                                        (___kont255602255603_))))
                                                (___kont255602255603_))
                                            (___kont255602255603_))))
                                    (___kont255602255603_))))
                            (___kont255602255603_))))
                    (___kont255602255603_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx246530_
               _self246531_
               _methods246532_
               _slots246533_
               _class-check246534_
               _struct-check246535_
               _struct-assert246536_)
        (let* ((___stx255634255635_ _stx246530_)
               (_g246544246766_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx255634255635_)))))
          (let ((___kont255636255637_
                 (lambda (_L247503_ _L247504_ _L247505_ _L247506_)
                   (let ((__tmp256994
                          (let () (declare (not safe)) (gx#stx-e _L247504_))))
                     (declare (not safe))
                     (table-set! _methods246532_ __tmp256994 '#t))
                   (for-each
                    (lambda (_g247539247541_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g247539247541_
                         _self246531_
                         _methods246532_
                         _slots246533_
                         _class-check246534_
                         _struct-check246535_
                         _struct-assert246536_)))
                    (let ((__tmp256995
                           (lambda (_g247543247546_ _g247544247548_)
                             (let ()
                               (declare (not safe))
                               (cons _g247543247546_ _g247544247548_)))))
                      (declare (not safe))
                      (foldr1 __tmp256995 '() _L247503_)))))
                (___kont255640255641_
                 (lambda (_L247338_ _L247339_ _L247340_ _L247341_ _L247342_)
                   (let ((__tmp256996
                          (let () (declare (not safe)) (gx#stx-e _L247339_))))
                     (declare (not safe))
                     (table-set! _methods246532_ __tmp256996 '#t))
                   (for-each
                    (lambda (_g247382247384_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g247382247384_
                         _self246531_
                         _methods246532_
                         _slots246533_
                         _class-check246534_
                         _struct-check246535_
                         _struct-assert246536_)))
                    (let ((__tmp256997
                           (lambda (_g247386247389_ _g247387247391_)
                             (let ()
                               (declare (not safe))
                               (cons _g247386247389_ _g247387247391_)))))
                      (declare (not safe))
                      (foldr1 __tmp256997 '() _L247338_)))))
                (___kont255644255645_
                 (lambda (_L247171_ _L247172_ _L247173_)
                   (let ((__tmp256998
                          (let () (declare (not safe)) (gx#stx-e _L247171_))))
                     (declare (not safe))
                     (table-set! _slots246533_ __tmp256998 '#t))))
                (___kont255646255647_
                 (lambda (_L247048_ _L247049_ _L247050_ _L247051_)
                   (let ((__tmp256999
                          (let () (declare (not safe)) (gx#stx-e _L247049_))))
                     (declare (not safe))
                     (table-set! _slots246533_ __tmp256999 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L247048_
                      _self246531_
                      _methods246532_
                      _slots246533_
                      _class-check246534_
                      _struct-check246535_
                      _struct-assert246536_))))
                (___kont255648255649_
                 (lambda (_L246932_ _L246933_)
                   (let ((__tmp257000
                          (##structure-ref
                           (let ((__tmp257001
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L246933_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp257001))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots246533_ __tmp257000 '#t))))
                (___kont255650255651_
                 (lambda (_L246842_ _L246843_ _L246844_)
                   (let ((__tmp257002
                          (##structure-ref
                           (let ((__tmp257003
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L246844_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp257003))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots246533_ __tmp257002 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L246842_
                      _self246531_
                      _methods246532_
                      _slots246533_
                      _class-check246534_
                      _struct-check246535_
                      _struct-assert246536_))))
                (___kont255652255653_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx246530_
                      _self246531_
                      _methods246532_
                      _slots246533_
                      _class-check246534_
                      _struct-check246535_
                      _struct-assert246536_)))))
            (let* ((___match256133256134_
                    (lambda (_e246740246778_
                             _hd246739246781_
                             _tl246738246783_
                             _e246743246786_
                             _hd246742246789_
                             _tl246741246791_
                             _e246746246794_
                             _hd246745246797_
                             _tl246744246799_
                             _e246749246802_
                             _hd246748246805_
                             _tl246747246807_
                             _e246752246810_
                             _hd246751246813_
                             _tl246750246815_
                             _e246755246818_
                             _hd246754246821_
                             _tl246753246823_
                             _e246758246826_
                             _hd246757246829_
                             _tl246756246831_
                             _e246761246834_
                             _hd246760246837_
                             _tl246759246839_)
                      (let ((_L246842_ _hd246760246837_)
                            (_L246843_ _hd246757246829_)
                            (_L246844_ _hd246748246805_))
                        (if (and (let ((__tmp257004
                                        (let ((__tmp257005
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L246844_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp257005))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp257004
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L246843_
                                    _self246531_)))
                            (___kont255650255651_
                             _L246842_
                             _L246843_
                             _L246844_)
                            (___kont255652255653_)))))
                   (___match256131256132_
                    (lambda (_e246740246778_
                             _hd246739246781_
                             _tl246738246783_
                             _e246743246786_
                             _hd246742246789_
                             _tl246741246791_
                             _e246746246794_
                             _hd246745246797_
                             _tl246744246799_
                             _e246749246802_
                             _hd246748246805_
                             _tl246747246807_
                             _e246752246810_
                             _hd246751246813_
                             _tl246750246815_
                             _e246755246818_
                             _hd246754246821_
                             _tl246753246823_
                             _e246758246826_
                             _hd246757246829_
                             _tl246756246831_
                             _e246761246834_
                             _hd246760246837_
                             _tl246759246839_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl246759246839_))
                          (___match256133256134_
                           _e246740246778_
                           _hd246739246781_
                           _tl246738246783_
                           _e246743246786_
                           _hd246742246789_
                           _tl246741246791_
                           _e246746246794_
                           _hd246745246797_
                           _tl246744246799_
                           _e246749246802_
                           _hd246748246805_
                           _tl246747246807_
                           _e246752246810_
                           _hd246751246813_
                           _tl246750246815_
                           _e246755246818_
                           _hd246754246821_
                           _tl246753246823_
                           _e246758246826_
                           _hd246757246829_
                           _tl246756246831_
                           _e246761246834_
                           _hd246760246837_
                           _tl246759246839_)
                          (___kont255652255653_))))
                   (___match256125256126_
                    (lambda (_e246740246778_
                             _hd246739246781_
                             _tl246738246783_
                             _e246743246786_
                             _hd246742246789_
                             _tl246741246791_
                             _e246746246794_
                             _hd246745246797_
                             _tl246744246799_
                             _e246749246802_
                             _hd246748246805_
                             _tl246747246807_
                             _e246752246810_
                             _hd246751246813_
                             _tl246750246815_
                             _e246755246818_
                             _hd246754246821_
                             _tl246753246823_
                             _e246758246826_
                             _hd246757246829_
                             _tl246756246831_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl246750246815_))
                          (let ((_e246761246834_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl246750246815_))))
                            (let ((_tl246759246839_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e246761246834_)))
                                  (_hd246760246837_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e246761246834_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl246759246839_))
                                  (___match256133256134_
                                   _e246740246778_
                                   _hd246739246781_
                                   _tl246738246783_
                                   _e246743246786_
                                   _hd246742246789_
                                   _tl246741246791_
                                   _e246746246794_
                                   _hd246745246797_
                                   _tl246744246799_
                                   _e246749246802_
                                   _hd246748246805_
                                   _tl246747246807_
                                   _e246752246810_
                                   _hd246751246813_
                                   _tl246750246815_
                                   _e246755246818_
                                   _hd246754246821_
                                   _tl246753246823_
                                   _e246758246826_
                                   _hd246757246829_
                                   _tl246756246831_
                                   _e246761246834_
                                   _hd246760246837_
                                   _tl246759246839_)
                                  (___kont255652255653_))))
                          (___kont255652255653_))))
                   (___match256071256072_
                    (lambda (_e246716246876_
                             _hd246715246879_
                             _tl246714246881_
                             _e246719246884_
                             _hd246718246887_
                             _tl246717246889_
                             _e246722246892_
                             _hd246721246895_
                             _tl246720246897_
                             _e246725246900_
                             _hd246724246903_
                             _tl246723246905_
                             _e246728246908_
                             _hd246727246911_
                             _tl246726246913_
                             _e246731246916_
                             _hd246730246919_
                             _tl246729246921_
                             _e246734246924_
                             _hd246733246927_
                             _tl246732246929_)
                      (let ((_L246932_ _hd246733246927_)
                            (_L246933_ _hd246724246903_))
                        (if (and (let ((__tmp257006
                                        (let ((__tmp257007
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L246933_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp257007))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp257006
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L246932_
                                    _self246531_)))
                            (___kont255648255649_ _L246932_ _L246933_)
                            (___kont255652255653_)))))
                   (___match256069256070_
                    (lambda (_e246716246876_
                             _hd246715246879_
                             _tl246714246881_
                             _e246719246884_
                             _hd246718246887_
                             _tl246717246889_
                             _e246722246892_
                             _hd246721246895_
                             _tl246720246897_
                             _e246725246900_
                             _hd246724246903_
                             _tl246723246905_
                             _e246728246908_
                             _hd246727246911_
                             _tl246726246913_
                             _e246731246916_
                             _hd246730246919_
                             _tl246729246921_
                             _e246734246924_
                             _hd246733246927_
                             _tl246732246929_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl246726246913_))
                          (___match256071256072_
                           _e246716246876_
                           _hd246715246879_
                           _tl246714246881_
                           _e246719246884_
                           _hd246718246887_
                           _tl246717246889_
                           _e246722246892_
                           _hd246721246895_
                           _tl246720246897_
                           _e246725246900_
                           _hd246724246903_
                           _tl246723246905_
                           _e246728246908_
                           _hd246727246911_
                           _tl246726246913_
                           _e246731246916_
                           _hd246730246919_
                           _tl246729246921_
                           _e246734246924_
                           _hd246733246927_
                           _tl246732246929_)
                          (___match256125256126_
                           _e246716246876_
                           _hd246715246879_
                           _tl246714246881_
                           _e246719246884_
                           _hd246718246887_
                           _tl246717246889_
                           _e246722246892_
                           _hd246721246895_
                           _tl246720246897_
                           _e246725246900_
                           _hd246724246903_
                           _tl246723246905_
                           _e246728246908_
                           _hd246727246911_
                           _tl246726246913_
                           _e246731246916_
                           _hd246730246919_
                           _tl246729246921_
                           _e246734246924_
                           _hd246733246927_
                           _tl246732246929_))))
                   (___match256015256016_
                    (lambda (_e246681246960_
                             _hd246680246963_
                             _tl246679246965_
                             _e246684246968_
                             _hd246683246971_
                             _tl246682246973_
                             _e246687246976_
                             _hd246686246979_
                             _tl246685246981_
                             _e246690246984_
                             _hd246689246987_
                             _tl246688246989_
                             _e246693246992_
                             _hd246692246995_
                             _tl246691246997_
                             _e246696247000_
                             _hd246695247003_
                             _tl246694247005_
                             _e246699247008_
                             _hd246698247011_
                             _tl246697247013_
                             _e246702247016_
                             _hd246701247019_
                             _tl246700247021_
                             _e246705247024_
                             _hd246704247027_
                             _tl246703247029_
                             _e246708247032_
                             _hd246707247035_
                             _tl246706247037_
                             _e246711247040_
                             _hd246710247043_
                             _tl246709247045_)
                      (let ((_L247048_ _hd246710247043_)
                            (_L247049_ _hd246707247035_)
                            (_L247050_ _hd246698247011_)
                            (_L247051_ _hd246689246987_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L247051_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L247051_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L247050_
                                    _self246531_)))
                            (___kont255646255647_
                             _L247048_
                             _L247049_
                             _L247050_
                             _L247051_)
                            (___kont255652255653_)))))
                   (___match256007256008_
                    (lambda (_e246681246960_
                             _hd246680246963_
                             _tl246679246965_
                             _e246684246968_
                             _hd246683246971_
                             _tl246682246973_
                             _e246687246976_
                             _hd246686246979_
                             _tl246685246981_
                             _e246690246984_
                             _hd246689246987_
                             _tl246688246989_
                             _e246693246992_
                             _hd246692246995_
                             _tl246691246997_
                             _e246696247000_
                             _hd246695247003_
                             _tl246694247005_
                             _e246699247008_
                             _hd246698247011_
                             _tl246697247013_
                             _e246702247016_
                             _hd246701247019_
                             _tl246700247021_
                             _e246705247024_
                             _hd246704247027_
                             _tl246703247029_
                             _e246708247032_
                             _hd246707247035_
                             _tl246706247037_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl246700247021_))
                          (let ((_e246711247040_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl246700247021_))))
                            (let ((_tl246709247045_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e246711247040_)))
                                  (_hd246710247043_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e246711247040_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl246709247045_))
                                  (___match256015256016_
                                   _e246681246960_
                                   _hd246680246963_
                                   _tl246679246965_
                                   _e246684246968_
                                   _hd246683246971_
                                   _tl246682246973_
                                   _e246687246976_
                                   _hd246686246979_
                                   _tl246685246981_
                                   _e246690246984_
                                   _hd246689246987_
                                   _tl246688246989_
                                   _e246693246992_
                                   _hd246692246995_
                                   _tl246691246997_
                                   _e246696247000_
                                   _hd246695247003_
                                   _tl246694247005_
                                   _e246699247008_
                                   _hd246698247011_
                                   _tl246697247013_
                                   _e246702247016_
                                   _hd246701247019_
                                   _tl246700247021_
                                   _e246705247024_
                                   _hd246704247027_
                                   _tl246703247029_
                                   _e246708247032_
                                   _hd246707247035_
                                   _tl246706247037_
                                   _e246711247040_
                                   _hd246710247043_
                                   _tl246709247045_)
                                  (___kont255652255653_))))
                          (___match256131256132_
                           _e246681246960_
                           _hd246680246963_
                           _tl246679246965_
                           _e246684246968_
                           _hd246683246971_
                           _tl246682246973_
                           _e246687246976_
                           _hd246686246979_
                           _tl246685246981_
                           _e246690246984_
                           _hd246689246987_
                           _tl246688246989_
                           _e246693246992_
                           _hd246692246995_
                           _tl246691246997_
                           _e246696247000_
                           _hd246695247003_
                           _tl246694247005_
                           _e246699247008_
                           _hd246698247011_
                           _tl246697247013_
                           _e246702247016_
                           _hd246701247019_
                           _tl246700247021_))))
                   (___match255929255930_
                    (lambda (_e246647247091_
                             _hd246646247094_
                             _tl246645247096_
                             _e246650247099_
                             _hd246649247102_
                             _tl246648247104_
                             _e246653247107_
                             _hd246652247110_
                             _tl246651247112_
                             _e246656247115_
                             _hd246655247118_
                             _tl246654247120_
                             _e246659247123_
                             _hd246658247126_
                             _tl246657247128_
                             _e246662247131_
                             _hd246661247134_
                             _tl246660247136_
                             _e246665247139_
                             _hd246664247142_
                             _tl246663247144_
                             _e246668247147_
                             _hd246667247150_
                             _tl246666247152_
                             _e246671247155_
                             _hd246670247158_
                             _tl246669247160_
                             _e246674247163_
                             _hd246673247166_
                             _tl246672247168_)
                      (let ((_L247171_ _hd246673247166_)
                            (_L247172_ _hd246664247142_)
                            (_L247173_ _hd246655247118_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L247173_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L247173_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L247172_
                                    _self246531_)))
                            (___kont255644255645_
                             _L247171_
                             _L247172_
                             _L247173_)
                            (___match256133256134_
                             _e246647247091_
                             _hd246646247094_
                             _tl246645247096_
                             _e246650247099_
                             _hd246649247102_
                             _tl246648247104_
                             _e246653247107_
                             _hd246652247110_
                             _tl246651247112_
                             _e246656247115_
                             _hd246655247118_
                             _tl246654247120_
                             _e246659247123_
                             _hd246658247126_
                             _tl246657247128_
                             _e246662247131_
                             _hd246661247134_
                             _tl246660247136_
                             _e246665247139_
                             _hd246664247142_
                             _tl246663247144_
                             _e246668247147_
                             _hd246667247150_
                             _tl246666247152_)))))
                   (___match255927255928_
                    (lambda (_e246647247091_
                             _hd246646247094_
                             _tl246645247096_
                             _e246650247099_
                             _hd246649247102_
                             _tl246648247104_
                             _e246653247107_
                             _hd246652247110_
                             _tl246651247112_
                             _e246656247115_
                             _hd246655247118_
                             _tl246654247120_
                             _e246659247123_
                             _hd246658247126_
                             _tl246657247128_
                             _e246662247131_
                             _hd246661247134_
                             _tl246660247136_
                             _e246665247139_
                             _hd246664247142_
                             _tl246663247144_
                             _e246668247147_
                             _hd246667247150_
                             _tl246666247152_
                             _e246671247155_
                             _hd246670247158_
                             _tl246669247160_
                             _e246674247163_
                             _hd246673247166_
                             _tl246672247168_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl246666247152_))
                          (___match255929255930_
                           _e246647247091_
                           _hd246646247094_
                           _tl246645247096_
                           _e246650247099_
                           _hd246649247102_
                           _tl246648247104_
                           _e246653247107_
                           _hd246652247110_
                           _tl246651247112_
                           _e246656247115_
                           _hd246655247118_
                           _tl246654247120_
                           _e246659247123_
                           _hd246658247126_
                           _tl246657247128_
                           _e246662247131_
                           _hd246661247134_
                           _tl246660247136_
                           _e246665247139_
                           _hd246664247142_
                           _tl246663247144_
                           _e246668247147_
                           _hd246667247150_
                           _tl246666247152_
                           _e246671247155_
                           _hd246670247158_
                           _tl246669247160_
                           _e246674247163_
                           _hd246673247166_
                           _tl246672247168_)
                          (___match256007256008_
                           _e246647247091_
                           _hd246646247094_
                           _tl246645247096_
                           _e246650247099_
                           _hd246649247102_
                           _tl246648247104_
                           _e246653247107_
                           _hd246652247110_
                           _tl246651247112_
                           _e246656247115_
                           _hd246655247118_
                           _tl246654247120_
                           _e246659247123_
                           _hd246658247126_
                           _tl246657247128_
                           _e246662247131_
                           _hd246661247134_
                           _tl246660247136_
                           _e246665247139_
                           _hd246664247142_
                           _tl246663247144_
                           _e246668247147_
                           _hd246667247150_
                           _tl246666247152_
                           _e246671247155_
                           _hd246670247158_
                           _tl246669247160_
                           _e246674247163_
                           _hd246673247166_
                           _tl246672247168_))))
                   (___match255917255918_
                    (lambda (_e246647247091_
                             _hd246646247094_
                             _tl246645247096_
                             _e246650247099_
                             _hd246649247102_
                             _tl246648247104_
                             _e246653247107_
                             _hd246652247110_
                             _tl246651247112_
                             _e246656247115_
                             _hd246655247118_
                             _tl246654247120_
                             _e246659247123_
                             _hd246658247126_
                             _tl246657247128_
                             _e246662247131_
                             _hd246661247134_
                             _tl246660247136_
                             _e246665247139_
                             _hd246664247142_
                             _tl246663247144_
                             _e246668247147_
                             _hd246667247150_
                             _tl246666247152_
                             _e246671247155_
                             _hd246670247158_
                             _tl246669247160_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd246670247158_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl246669247160_))
                              (let ((_e246674247163_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl246669247160_))))
                                (let ((_tl246672247168_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e246674247163_)))
                                      (_hd246673247166_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e246674247163_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl246672247168_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl246666247152_))
                                          (___match255929255930_
                                           _e246647247091_
                                           _hd246646247094_
                                           _tl246645247096_
                                           _e246650247099_
                                           _hd246649247102_
                                           _tl246648247104_
                                           _e246653247107_
                                           _hd246652247110_
                                           _tl246651247112_
                                           _e246656247115_
                                           _hd246655247118_
                                           _tl246654247120_
                                           _e246659247123_
                                           _hd246658247126_
                                           _tl246657247128_
                                           _e246662247131_
                                           _hd246661247134_
                                           _tl246660247136_
                                           _e246665247139_
                                           _hd246664247142_
                                           _tl246663247144_
                                           _e246668247147_
                                           _hd246667247150_
                                           _tl246666247152_
                                           _e246671247155_
                                           _hd246670247158_
                                           _tl246669247160_
                                           _e246674247163_
                                           _hd246673247166_
                                           _tl246672247168_)
                                          (___match256007256008_
                                           _e246647247091_
                                           _hd246646247094_
                                           _tl246645247096_
                                           _e246650247099_
                                           _hd246649247102_
                                           _tl246648247104_
                                           _e246653247107_
                                           _hd246652247110_
                                           _tl246651247112_
                                           _e246656247115_
                                           _hd246655247118_
                                           _tl246654247120_
                                           _e246659247123_
                                           _hd246658247126_
                                           _tl246657247128_
                                           _e246662247131_
                                           _hd246661247134_
                                           _tl246660247136_
                                           _e246665247139_
                                           _hd246664247142_
                                           _tl246663247144_
                                           _e246668247147_
                                           _hd246667247150_
                                           _tl246666247152_
                                           _e246671247155_
                                           _hd246670247158_
                                           _tl246669247160_
                                           _e246674247163_
                                           _hd246673247166_
                                           _tl246672247168_))
                                      (___match256131256132_
                                       _e246647247091_
                                       _hd246646247094_
                                       _tl246645247096_
                                       _e246650247099_
                                       _hd246649247102_
                                       _tl246648247104_
                                       _e246653247107_
                                       _hd246652247110_
                                       _tl246651247112_
                                       _e246656247115_
                                       _hd246655247118_
                                       _tl246654247120_
                                       _e246659247123_
                                       _hd246658247126_
                                       _tl246657247128_
                                       _e246662247131_
                                       _hd246661247134_
                                       _tl246660247136_
                                       _e246665247139_
                                       _hd246664247142_
                                       _tl246663247144_
                                       _e246668247147_
                                       _hd246667247150_
                                       _tl246666247152_))))
                              (___match256131256132_
                               _e246647247091_
                               _hd246646247094_
                               _tl246645247096_
                               _e246650247099_
                               _hd246649247102_
                               _tl246648247104_
                               _e246653247107_
                               _hd246652247110_
                               _tl246651247112_
                               _e246656247115_
                               _hd246655247118_
                               _tl246654247120_
                               _e246659247123_
                               _hd246658247126_
                               _tl246657247128_
                               _e246662247131_
                               _hd246661247134_
                               _tl246660247136_
                               _e246665247139_
                               _hd246664247142_
                               _tl246663247144_
                               _e246668247147_
                               _hd246667247150_
                               _tl246666247152_))
                          (___match256131256132_
                           _e246647247091_
                           _hd246646247094_
                           _tl246645247096_
                           _e246650247099_
                           _hd246649247102_
                           _tl246648247104_
                           _e246653247107_
                           _hd246652247110_
                           _tl246651247112_
                           _e246656247115_
                           _hd246655247118_
                           _tl246654247120_
                           _e246659247123_
                           _hd246658247126_
                           _tl246657247128_
                           _e246662247131_
                           _hd246661247134_
                           _tl246660247136_
                           _e246665247139_
                           _hd246664247142_
                           _tl246663247144_
                           _e246668247147_
                           _hd246667247150_
                           _tl246666247152_))))
                   (___match255849255850_
                    (lambda (_e246596247210_
                             _hd246595247213_
                             _tl246594247215_
                             _e246599247218_
                             _hd246598247221_
                             _tl246597247223_
                             _e246602247226_
                             _hd246601247229_
                             _tl246600247231_
                             _e246605247234_
                             _hd246604247237_
                             _tl246603247239_
                             _e246608247242_
                             _hd246607247245_
                             _tl246606247247_
                             _e246611247250_
                             _hd246610247253_
                             _tl246609247255_
                             _e246614247258_
                             _hd246613247261_
                             _tl246612247263_
                             _e246617247266_
                             _hd246616247269_
                             _tl246615247271_
                             _e246620247274_
                             _hd246619247277_
                             _tl246618247279_
                             _e246623247282_
                             _hd246622247285_
                             _tl246621247287_
                             _e246626247290_
                             _hd246625247293_
                             _tl246624247295_
                             _e246629247298_
                             _hd246628247301_
                             _tl246627247303_
                             _e246632247306_
                             _hd246631247309_
                             _tl246630247311_
                             ___splice255642255643_
                             _target246633247314_
                             _tl246635247316_)
                      (letrec ((_loop246636247319_
                                (lambda (_hd246634247322_ _args246640247324_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd246634247322_))
                                      (let ((_e246637247327_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd246634247322_))))
                                        (let ((_lp-tl246639247332_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e246637247327_)))
                                              (_lp-hd246638247330_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e246637247327_))))
                                          (let ((__tmp257008
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd246638247330_
                                                         _args246640247324_))))
                                            (declare (not safe))
                                            (_loop246636247319_
                                             _lp-tl246639247332_
                                             __tmp257008))))
                                      (let ((_args246641247335_
                                             (reverse _args246640247324_)))
                                        (let ((_L247338_ _args246641247335_)
                                              (_L247339_ _hd246631247309_)
                                              (_L247340_ _hd246622247285_)
                                              (_L247341_ _hd246613247261_)
                                              (_L247342_ _hd246604247237_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L247342_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L247341_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L247340_
                                                      _self246531_)))
                                              (___kont255640255641_
                                               _L247338_
                                               _L247339_
                                               _L247340_
                                               _L247341_
                                               _L247342_)
                                              (___kont255652255653_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop246636247319_ _target246633247314_ '())))))
                   (___match255807255808_
                    (lambda (_e246596247210_
                             _hd246595247213_
                             _tl246594247215_
                             _e246599247218_
                             _hd246598247221_
                             _tl246597247223_
                             _e246602247226_
                             _hd246601247229_
                             _tl246600247231_
                             _e246605247234_
                             _hd246604247237_
                             _tl246603247239_
                             _e246608247242_
                             _hd246607247245_
                             _tl246606247247_
                             _e246611247250_
                             _hd246610247253_
                             _tl246609247255_
                             _e246614247258_
                             _hd246613247261_
                             _tl246612247263_
                             _e246617247266_
                             _hd246616247269_
                             _tl246615247271_
                             _e246620247274_
                             _hd246619247277_
                             _tl246618247279_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd246619247277_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl246618247279_))
                              (let ((_e246623247282_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl246618247279_))))
                                (let ((_tl246621247287_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e246623247282_)))
                                      (_hd246622247285_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e246623247282_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl246621247287_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl246615247271_))
                                          (let ((_e246626247290_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl246615247271_))))
                                            (let ((_tl246624247295_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e246626247290_)))
                                                  (_hd246625247293_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e246626247290_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd246625247293_))
                                                  (let ((_e246629247298_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd246625247293_))))
                                                    (let ((_tl246627247303_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e246629247298_)))
                                                          (_hd246628247301_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e246629247298_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd246628247301_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd246628247301_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl246627247303_))
                          (let ((_e246632247306_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl246627247303_))))
                            (let ((_tl246630247311_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e246632247306_)))
                                  (_hd246631247309_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e246632247306_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl246630247311_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl246624247295_))
                                      (let ((___splice255642255643_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl246624247295_
                                                '0))))
                                        (let ((_tl246635247316_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice255642255643_
                                                  '1)))
                                              (_target246633247314_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice255642255643_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl246635247316_))
                                              (___match255849255850_
                                               _e246596247210_
                                               _hd246595247213_
                                               _tl246594247215_
                                               _e246599247218_
                                               _hd246598247221_
                                               _tl246597247223_
                                               _e246602247226_
                                               _hd246601247229_
                                               _tl246600247231_
                                               _e246605247234_
                                               _hd246604247237_
                                               _tl246603247239_
                                               _e246608247242_
                                               _hd246607247245_
                                               _tl246606247247_
                                               _e246611247250_
                                               _hd246610247253_
                                               _tl246609247255_
                                               _e246614247258_
                                               _hd246613247261_
                                               _tl246612247263_
                                               _e246617247266_
                                               _hd246616247269_
                                               _tl246615247271_
                                               _e246620247274_
                                               _hd246619247277_
                                               _tl246618247279_
                                               _e246623247282_
                                               _hd246622247285_
                                               _tl246621247287_
                                               _e246626247290_
                                               _hd246625247293_
                                               _tl246624247295_
                                               _e246629247298_
                                               _hd246628247301_
                                               _tl246627247303_
                                               _e246632247306_
                                               _hd246631247309_
                                               _tl246630247311_
                                               ___splice255642255643_
                                               _target246633247314_
                                               _tl246635247316_)
                                              (___kont255652255653_))))
                                      (___kont255652255653_))
                                  (___kont255652255653_))))
                          (___kont255652255653_))
                      (___kont255652255653_))
                  (___kont255652255653_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont255652255653_))))
                                          (___match256131256132_
                                           _e246596247210_
                                           _hd246595247213_
                                           _tl246594247215_
                                           _e246599247218_
                                           _hd246598247221_
                                           _tl246597247223_
                                           _e246602247226_
                                           _hd246601247229_
                                           _tl246600247231_
                                           _e246605247234_
                                           _hd246604247237_
                                           _tl246603247239_
                                           _e246608247242_
                                           _hd246607247245_
                                           _tl246606247247_
                                           _e246611247250_
                                           _hd246610247253_
                                           _tl246609247255_
                                           _e246614247258_
                                           _hd246613247261_
                                           _tl246612247263_
                                           _e246617247266_
                                           _hd246616247269_
                                           _tl246615247271_))
                                      (___match256131256132_
                                       _e246596247210_
                                       _hd246595247213_
                                       _tl246594247215_
                                       _e246599247218_
                                       _hd246598247221_
                                       _tl246597247223_
                                       _e246602247226_
                                       _hd246601247229_
                                       _tl246600247231_
                                       _e246605247234_
                                       _hd246604247237_
                                       _tl246603247239_
                                       _e246608247242_
                                       _hd246607247245_
                                       _tl246606247247_
                                       _e246611247250_
                                       _hd246610247253_
                                       _tl246609247255_
                                       _e246614247258_
                                       _hd246613247261_
                                       _tl246612247263_
                                       _e246617247266_
                                       _hd246616247269_
                                       _tl246615247271_))))
                              (___match256131256132_
                               _e246596247210_
                               _hd246595247213_
                               _tl246594247215_
                               _e246599247218_
                               _hd246598247221_
                               _tl246597247223_
                               _e246602247226_
                               _hd246601247229_
                               _tl246600247231_
                               _e246605247234_
                               _hd246604247237_
                               _tl246603247239_
                               _e246608247242_
                               _hd246607247245_
                               _tl246606247247_
                               _e246611247250_
                               _hd246610247253_
                               _tl246609247255_
                               _e246614247258_
                               _hd246613247261_
                               _tl246612247263_
                               _e246617247266_
                               _hd246616247269_
                               _tl246615247271_))
                          (___match255917255918_
                           _e246596247210_
                           _hd246595247213_
                           _tl246594247215_
                           _e246599247218_
                           _hd246598247221_
                           _tl246597247223_
                           _e246602247226_
                           _hd246601247229_
                           _tl246600247231_
                           _e246605247234_
                           _hd246604247237_
                           _tl246603247239_
                           _e246608247242_
                           _hd246607247245_
                           _tl246606247247_
                           _e246611247250_
                           _hd246610247253_
                           _tl246609247255_
                           _e246614247258_
                           _hd246613247261_
                           _tl246612247263_
                           _e246617247266_
                           _hd246616247269_
                           _tl246615247271_
                           _e246620247274_
                           _hd246619247277_
                           _tl246618247279_))))
                   (___match255739255740_
                    (lambda (_e246552247399_
                             _hd246551247402_
                             _tl246550247404_
                             _e246555247407_
                             _hd246554247410_
                             _tl246553247412_
                             _e246558247415_
                             _hd246557247418_
                             _tl246556247420_
                             _e246561247423_
                             _hd246560247426_
                             _tl246559247428_
                             _e246564247431_
                             _hd246563247434_
                             _tl246562247436_
                             _e246567247439_
                             _hd246566247442_
                             _tl246565247444_
                             _e246570247447_
                             _hd246569247450_
                             _tl246568247452_
                             _e246573247455_
                             _hd246572247458_
                             _tl246571247460_
                             _e246576247463_
                             _hd246575247466_
                             _tl246574247468_
                             _e246579247471_
                             _hd246578247474_
                             _tl246577247476_
                             ___splice255638255639_
                             _target246580247479_
                             _tl246582247481_)
                      (letrec ((_loop246583247484_
                                (lambda (_hd246581247487_ _args246587247489_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd246581247487_))
                                      (let ((_e246584247492_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd246581247487_))))
                                        (let ((_lp-tl246586247497_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e246584247492_)))
                                              (_lp-hd246585247495_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e246584247492_))))
                                          (let ((__tmp257009
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd246585247495_
                                                         _args246587247489_))))
                                            (declare (not safe))
                                            (_loop246583247484_
                                             _lp-tl246586247497_
                                             __tmp257009))))
                                      (let ((_args246588247500_
                                             (reverse _args246587247489_)))
                                        (let ((_L247503_ _args246588247500_)
                                              (_L247504_ _hd246578247474_)
                                              (_L247505_ _hd246569247450_)
                                              (_L247506_ _hd246560247426_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L247506_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L247505_
                                                      _self246531_)))
                                              (___kont255636255637_
                                               _L247503_
                                               _L247504_
                                               _L247505_
                                               _L247506_)
                                              (___match255927255928_
                                               _e246552247399_
                                               _hd246551247402_
                                               _tl246550247404_
                                               _e246555247407_
                                               _hd246554247410_
                                               _tl246553247412_
                                               _e246558247415_
                                               _hd246557247418_
                                               _tl246556247420_
                                               _e246561247423_
                                               _hd246560247426_
                                               _tl246559247428_
                                               _e246564247431_
                                               _hd246563247434_
                                               _tl246562247436_
                                               _e246567247439_
                                               _hd246566247442_
                                               _tl246565247444_
                                               _e246570247447_
                                               _hd246569247450_
                                               _tl246568247452_
                                               _e246573247455_
                                               _hd246572247458_
                                               _tl246571247460_
                                               _e246576247463_
                                               _hd246575247466_
                                               _tl246574247468_
                                               _e246579247471_
                                               _hd246578247474_
                                               _tl246577247476_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop246583247484_ _target246580247479_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx255634255635_))
                  (let ((_e246552247399_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx255634255635_))))
                    (let ((_tl246550247404_
                           (let ()
                             (declare (not safe))
                             (##cdr _e246552247399_)))
                          (_hd246551247402_
                           (let ()
                             (declare (not safe))
                             (##car _e246552247399_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl246550247404_))
                          (let ((_e246555247407_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl246550247404_))))
                            (let ((_tl246553247412_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e246555247407_)))
                                  (_hd246554247410_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e246555247407_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd246554247410_))
                                  (let ((_e246558247415_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd246554247410_))))
                                    (let ((_tl246556247420_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e246558247415_)))
                                          (_hd246557247418_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e246558247415_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd246557247418_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd246557247418_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl246556247420_))
                                                  (let ((_e246561247423_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl246556247420_))))
                                                    (let ((_tl246559247428_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e246561247423_)))
                                                          (_hd246560247426_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e246561247423_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl246559247428_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl246553247412_))
                      (let ((_e246564247431_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl246553247412_))))
                        (let ((_tl246562247436_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e246564247431_)))
                              (_hd246563247434_
                               (let ()
                                 (declare (not safe))
                                 (##car _e246564247431_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd246563247434_))
                              (let ((_e246567247439_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd246563247434_))))
                                (let ((_tl246565247444_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e246567247439_)))
                                      (_hd246566247442_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e246567247439_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd246566247442_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd246566247442_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl246565247444_))
                                              (let ((_e246570247447_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl246565247444_))))
                                                (let ((_tl246568247452_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e246570247447_)))
                                                      (_hd246569247450_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e246570247447_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl246568247452_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl246562247436_))
                                                          (let ((_e246573247455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl246562247436_))))
                    (let ((_tl246571247460_
                           (let ()
                             (declare (not safe))
                             (##cdr _e246573247455_)))
                          (_hd246572247458_
                           (let ()
                             (declare (not safe))
                             (##car _e246573247455_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd246572247458_))
                          (let ((_e246576247463_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd246572247458_))))
                            (let ((_tl246574247468_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e246576247463_)))
                                  (_hd246575247466_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e246576247463_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd246575247466_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd246575247466_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl246574247468_))
                                          (let ((_e246579247471_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl246574247468_))))
                                            (let ((_tl246577247476_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e246579247471_)))
                                                  (_hd246578247474_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e246579247471_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl246577247476_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl246571247460_))
                                                      (let ((___splice255638255639_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl246571247460_ '0))))
                (let ((_tl246582247481_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice255638255639_ '1)))
                      (_target246580247479_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice255638255639_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl246582247481_))
                      (___match255739255740_
                       _e246552247399_
                       _hd246551247402_
                       _tl246550247404_
                       _e246555247407_
                       _hd246554247410_
                       _tl246553247412_
                       _e246558247415_
                       _hd246557247418_
                       _tl246556247420_
                       _e246561247423_
                       _hd246560247426_
                       _tl246559247428_
                       _e246564247431_
                       _hd246563247434_
                       _tl246562247436_
                       _e246567247439_
                       _hd246566247442_
                       _tl246565247444_
                       _e246570247447_
                       _hd246569247450_
                       _tl246568247452_
                       _e246573247455_
                       _hd246572247458_
                       _tl246571247460_
                       _e246576247463_
                       _hd246575247466_
                       _tl246574247468_
                       _e246579247471_
                       _hd246578247474_
                       _tl246577247476_
                       ___splice255638255639_
                       _target246580247479_
                       _tl246582247481_)
                      (___match255927255928_
                       _e246552247399_
                       _hd246551247402_
                       _tl246550247404_
                       _e246555247407_
                       _hd246554247410_
                       _tl246553247412_
                       _e246558247415_
                       _hd246557247418_
                       _tl246556247420_
                       _e246561247423_
                       _hd246560247426_
                       _tl246559247428_
                       _e246564247431_
                       _hd246563247434_
                       _tl246562247436_
                       _e246567247439_
                       _hd246566247442_
                       _tl246565247444_
                       _e246570247447_
                       _hd246569247450_
                       _tl246568247452_
                       _e246573247455_
                       _hd246572247458_
                       _tl246571247460_
                       _e246576247463_
                       _hd246575247466_
                       _tl246574247468_
                       _e246579247471_
                       _hd246578247474_
                       _tl246577247476_))))
              (___match255927255928_
               _e246552247399_
               _hd246551247402_
               _tl246550247404_
               _e246555247407_
               _hd246554247410_
               _tl246553247412_
               _e246558247415_
               _hd246557247418_
               _tl246556247420_
               _e246561247423_
               _hd246560247426_
               _tl246559247428_
               _e246564247431_
               _hd246563247434_
               _tl246562247436_
               _e246567247439_
               _hd246566247442_
               _tl246565247444_
               _e246570247447_
               _hd246569247450_
               _tl246568247452_
               _e246573247455_
               _hd246572247458_
               _tl246571247460_
               _e246576247463_
               _hd246575247466_
               _tl246574247468_
               _e246579247471_
               _hd246578247474_
               _tl246577247476_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match256131256132_
                                                   _e246552247399_
                                                   _hd246551247402_
                                                   _tl246550247404_
                                                   _e246555247407_
                                                   _hd246554247410_
                                                   _tl246553247412_
                                                   _e246558247415_
                                                   _hd246557247418_
                                                   _tl246556247420_
                                                   _e246561247423_
                                                   _hd246560247426_
                                                   _tl246559247428_
                                                   _e246564247431_
                                                   _hd246563247434_
                                                   _tl246562247436_
                                                   _e246567247439_
                                                   _hd246566247442_
                                                   _tl246565247444_
                                                   _e246570247447_
                                                   _hd246569247450_
                                                   _tl246568247452_
                                                   _e246573247455_
                                                   _hd246572247458_
                                                   _tl246571247460_))))
                                          (___match256131256132_
                                           _e246552247399_
                                           _hd246551247402_
                                           _tl246550247404_
                                           _e246555247407_
                                           _hd246554247410_
                                           _tl246553247412_
                                           _e246558247415_
                                           _hd246557247418_
                                           _tl246556247420_
                                           _e246561247423_
                                           _hd246560247426_
                                           _tl246559247428_
                                           _e246564247431_
                                           _hd246563247434_
                                           _tl246562247436_
                                           _e246567247439_
                                           _hd246566247442_
                                           _tl246565247444_
                                           _e246570247447_
                                           _hd246569247450_
                                           _tl246568247452_
                                           _e246573247455_
                                           _hd246572247458_
                                           _tl246571247460_))
                                      (___match255807255808_
                                       _e246552247399_
                                       _hd246551247402_
                                       _tl246550247404_
                                       _e246555247407_
                                       _hd246554247410_
                                       _tl246553247412_
                                       _e246558247415_
                                       _hd246557247418_
                                       _tl246556247420_
                                       _e246561247423_
                                       _hd246560247426_
                                       _tl246559247428_
                                       _e246564247431_
                                       _hd246563247434_
                                       _tl246562247436_
                                       _e246567247439_
                                       _hd246566247442_
                                       _tl246565247444_
                                       _e246570247447_
                                       _hd246569247450_
                                       _tl246568247452_
                                       _e246573247455_
                                       _hd246572247458_
                                       _tl246571247460_
                                       _e246576247463_
                                       _hd246575247466_
                                       _tl246574247468_))
                                  (___match256131256132_
                                   _e246552247399_
                                   _hd246551247402_
                                   _tl246550247404_
                                   _e246555247407_
                                   _hd246554247410_
                                   _tl246553247412_
                                   _e246558247415_
                                   _hd246557247418_
                                   _tl246556247420_
                                   _e246561247423_
                                   _hd246560247426_
                                   _tl246559247428_
                                   _e246564247431_
                                   _hd246563247434_
                                   _tl246562247436_
                                   _e246567247439_
                                   _hd246566247442_
                                   _tl246565247444_
                                   _e246570247447_
                                   _hd246569247450_
                                   _tl246568247452_
                                   _e246573247455_
                                   _hd246572247458_
                                   _tl246571247460_))))
                          (___match256131256132_
                           _e246552247399_
                           _hd246551247402_
                           _tl246550247404_
                           _e246555247407_
                           _hd246554247410_
                           _tl246553247412_
                           _e246558247415_
                           _hd246557247418_
                           _tl246556247420_
                           _e246561247423_
                           _hd246560247426_
                           _tl246559247428_
                           _e246564247431_
                           _hd246563247434_
                           _tl246562247436_
                           _e246567247439_
                           _hd246566247442_
                           _tl246565247444_
                           _e246570247447_
                           _hd246569247450_
                           _tl246568247452_
                           _e246573247455_
                           _hd246572247458_
                           _tl246571247460_))))
                  (___match256069256070_
                   _e246552247399_
                   _hd246551247402_
                   _tl246550247404_
                   _e246555247407_
                   _hd246554247410_
                   _tl246553247412_
                   _e246558247415_
                   _hd246557247418_
                   _tl246556247420_
                   _e246561247423_
                   _hd246560247426_
                   _tl246559247428_
                   _e246564247431_
                   _hd246563247434_
                   _tl246562247436_
                   _e246567247439_
                   _hd246566247442_
                   _tl246565247444_
                   _e246570247447_
                   _hd246569247450_
                   _tl246568247452_))
              (___kont255652255653_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont255652255653_))
                                          (___kont255652255653_))
                                      (___kont255652255653_))))
                              (___kont255652255653_))))
                      (___kont255652255653_))
                  (___kont255652255653_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont255652255653_))
                                              (___kont255652255653_))
                                          (___kont255652255653_))))
                                  (___kont255652255653_))))
                          (___kont255652255653_))))
                  (___kont255652255653_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx245476_
               _self245477_
               _$t245478_
               _methods245479_
               _slots245480_
               _class-check245481_
               _struct-check245482_
               _struct-assert245483_)
        (letrec ((_force-e245485_
                  (lambda (_what246528_)
                    (let ((__tmp257010
                           (let ((__tmp257014
                                  (let ((__tmp257015
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp257015)))
                                 (__tmp257011
                                  (let ((__tmp257012
                                         (let ((__tmp257013
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what246528_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp257013))))
                                    (declare (not safe))
                                    (cons __tmp257012 '()))))
                             (declare (not safe))
                             (cons __tmp257014 __tmp257011))))
                      (declare (not safe))
                      (cons '%#call __tmp257010)))))
          (let* ((___stx256136256137_ _stx245476_)
                 (_g245493245715_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx256136256137_)))))
            (let ((___kont256138256139_
                   (lambda (_L246474_ _L246475_ _L246476_ _L246477_)
                     (let ((_$method246522_
                            (let ((__tmp257016
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L246475_))))
                              (declare (not safe))
                              (table-ref _methods245479_ __tmp257016)))
                           (_args246523_
                            (map (lambda (_g246510246512_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g246510246512_
                                      _self245477_
                                      _$t245478_
                                      _methods245479_
                                      _slots245480_
                                      _class-check245481_
                                      _struct-check245482_
                                      _struct-assert245483_)))
                                 (let ((__tmp257017
                                        (lambda (_g246514246517_
                                                 _g246515246519_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g246514246517_
                                                  _g246515246519_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp257017 '() _L246474_)))))
                       (let ((__tmp257018
                              (let ((__tmp257019
                                     (let ((__tmp257023
                                            (let ()
                                              (declare (not safe))
                                              (_force-e245485_
                                               _$method246522_)))
                                           (__tmp257020
                                            (let ((__tmp257021
                                                   (let ((__tmp257022
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self245477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp257022))))
                                              (declare (not safe))
                                              (cons __tmp257021
                                                    _args246523_))))
                                       (declare (not safe))
                                       (cons __tmp257023 __tmp257020))))
                                (declare (not safe))
                                (cons '%#call __tmp257019))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp257018 _stx245476_)))))
                  (___kont256142256143_
                   (lambda (_L246306_ _L246307_ _L246308_ _L246309_ _L246310_)
                     (let ((_$method246362_
                            (let ((__tmp257024
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L246307_))))
                              (declare (not safe))
                              (table-ref _methods245479_ __tmp257024)))
                           (_args246363_
                            (map (lambda (_g246350246352_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g246350246352_
                                      _self245477_
                                      _$t245478_
                                      _methods245479_
                                      _slots245480_
                                      _class-check245481_
                                      _struct-check245482_
                                      _struct-assert245483_)))
                                 (let ((__tmp257025
                                        (lambda (_g246354246357_
                                                 _g246355246359_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g246354246357_
                                                  _g246355246359_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp257025 '() _L246306_)))))
                       (let ((__tmp257026
                              (let ((__tmp257027
                                     (let ((__tmp257033
                                            (let ((__tmp257034
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp257034)))
                                           (__tmp257028
                                            (let ((__tmp257032
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e245485_
                                                      _$method246362_)))
                                                  (__tmp257029
                                                   (let ((__tmp257030
                                                          (let ((__tmp257031
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self245477_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp257031))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp257030
                                                           _args246363_))))
                                              (declare (not safe))
                                              (cons __tmp257032 __tmp257029))))
                                       (declare (not safe))
                                       (cons __tmp257033 __tmp257028))))
                                (declare (not safe))
                                (cons '%#call __tmp257027))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp257026 _stx245476_)))))
                  (___kont256146256147_
                   (lambda (_L246137_ _L246138_ _L246139_)
                     (let* ((_$field246171_
                             (let ((__tmp257035
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L246137_))))
                               (declare (not safe))
                               (table-ref _slots245480_ __tmp257035)))
                            (__tmp257036
                             (let ((__tmp257037
                                    (let ((__tmp257044
                                           (let ((__tmp257045
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t245478_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp257045)))
                                          (__tmp257038
                                           (let ((__tmp257042
                                                  (let ((__tmp257043
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field246171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp257043)))
                                                 (__tmp257039
                                                  (let ((__tmp257040
                                                         (let ((__tmp257041
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self245477_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp257041))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp257040 '()))))
                                             (declare (not safe))
                                             (cons __tmp257042 __tmp257039))))
                                      (declare (not safe))
                                      (cons __tmp257044 __tmp257038))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp257037))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp257036 _stx245476_))))
                  (___kont256148256149_
                   (lambda (_L246011_ _L246012_ _L246013_ _L246014_)
                     (let ((_$field246049_
                            (let ((__tmp257046
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L246012_))))
                              (declare (not safe))
                              (table-ref _slots245480_ __tmp257046)))
                           (_expr246050_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L246011_
                               _self245477_
                               _$t245478_
                               _methods245479_
                               _slots245480_
                               _class-check245481_
                               _struct-check245482_
                               _struct-assert245483_))))
                       (let ((__tmp257047
                              (let ((__tmp257048
                                     (let ((__tmp257056
                                            (let ((__tmp257057
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t245478_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp257057)))
                                           (__tmp257049
                                            (let ((__tmp257054
                                                   (let ((__tmp257055
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field246049_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp257055)))
                                                  (__tmp257050
                                                   (let ((__tmp257052
                                                          (let ((__tmp257053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self245477_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp257053)))
                 (__tmp257051
                  (let () (declare (not safe)) (cons _expr246050_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp257052
                                                           __tmp257051))))
                                              (declare (not safe))
                                              (cons __tmp257054 __tmp257050))))
                                       (declare (not safe))
                                       (cons __tmp257056 __tmp257049))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp257048))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp257047 _stx245476_)))))
                  (___kont256150256151_
                   (lambda (_L245890_ _L245891_)
                     (let* ((_slot245913_
                             (##structure-ref
                              (let ((__tmp257058
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L245891_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp257058))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field245915_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots245480_ _slot245913_))))
                       (let ((__tmp257059
                              (let ((__tmp257060
                                     (let ((__tmp257067
                                            (let ((__tmp257068
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t245478_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp257068)))
                                           (__tmp257061
                                            (let ((__tmp257065
                                                   (let ((__tmp257066
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field245915_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp257066)))
                                                  (__tmp257062
                                                   (let ((__tmp257063
                                                          (let ((__tmp257064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self245477_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp257064))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp257063 '()))))
                                              (declare (not safe))
                                              (cons __tmp257065 __tmp257062))))
                                       (declare (not safe))
                                       (cons __tmp257067 __tmp257061))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp257060))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp257059 _stx245476_)))))
                  (___kont256152256153_
                   (lambda (_L245791_ _L245792_ _L245793_)
                     (let* ((_slot245822_
                             (##structure-ref
                              (let ((__tmp257069
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L245793_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp257069))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field245824_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots245480_ _slot245822_)))
                            (_expr245826_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L245791_
                                _self245477_
                                _$t245478_
                                _methods245479_
                                _slots245480_
                                _class-check245481_
                                _struct-check245482_
                                _struct-assert245483_))))
                       (let ((__tmp257070
                              (let ((__tmp257071
                                     (let ((__tmp257079
                                            (let ((__tmp257080
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t245478_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp257080)))
                                           (__tmp257072
                                            (let ((__tmp257077
                                                   (let ((__tmp257078
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field245824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp257078)))
                                                  (__tmp257073
                                                   (let ((__tmp257075
                                                          (let ((__tmp257076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self245477_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp257076)))
                 (__tmp257074
                  (let () (declare (not safe)) (cons _expr245826_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp257075
                                                           __tmp257074))))
                                              (declare (not safe))
                                              (cons __tmp257077 __tmp257073))))
                                       (declare (not safe))
                                       (cons __tmp257079 __tmp257072))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp257071))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp257070 _stx245476_)))))
                  (___kont256154256155_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx245476_
                        _self245477_
                        _$t245478_
                        _methods245479_
                        _slots245480_
                        _class-check245481_
                        _struct-check245482_
                        _struct-assert245483_)))))
              (let* ((___match256635256636_
                      (lambda (_e245689245727_
                               _hd245688245730_
                               _tl245687245732_
                               _e245692245735_
                               _hd245691245738_
                               _tl245690245740_
                               _e245695245743_
                               _hd245694245746_
                               _tl245693245748_
                               _e245698245751_
                               _hd245697245754_
                               _tl245696245756_
                               _e245701245759_
                               _hd245700245762_
                               _tl245699245764_
                               _e245704245767_
                               _hd245703245770_
                               _tl245702245772_
                               _e245707245775_
                               _hd245706245778_
                               _tl245705245780_
                               _e245710245783_
                               _hd245709245786_
                               _tl245708245788_)
                        (let ((_L245791_ _hd245709245786_)
                              (_L245792_ _hd245706245778_)
                              (_L245793_ _hd245697245754_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L245792_
                                      _self245477_))
                                   (let ((__tmp257081
                                          (let ((__tmp257082
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L245793_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp257082))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp257081
                                      'gxc#!mutator::t)))
                              (___kont256152256153_
                               _L245791_
                               _L245792_
                               _L245793_)
                              (___kont256154256155_)))))
                     (___match256633256634_
                      (lambda (_e245689245727_
                               _hd245688245730_
                               _tl245687245732_
                               _e245692245735_
                               _hd245691245738_
                               _tl245690245740_
                               _e245695245743_
                               _hd245694245746_
                               _tl245693245748_
                               _e245698245751_
                               _hd245697245754_
                               _tl245696245756_
                               _e245701245759_
                               _hd245700245762_
                               _tl245699245764_
                               _e245704245767_
                               _hd245703245770_
                               _tl245702245772_
                               _e245707245775_
                               _hd245706245778_
                               _tl245705245780_
                               _e245710245783_
                               _hd245709245786_
                               _tl245708245788_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl245708245788_))
                            (___match256635256636_
                             _e245689245727_
                             _hd245688245730_
                             _tl245687245732_
                             _e245692245735_
                             _hd245691245738_
                             _tl245690245740_
                             _e245695245743_
                             _hd245694245746_
                             _tl245693245748_
                             _e245698245751_
                             _hd245697245754_
                             _tl245696245756_
                             _e245701245759_
                             _hd245700245762_
                             _tl245699245764_
                             _e245704245767_
                             _hd245703245770_
                             _tl245702245772_
                             _e245707245775_
                             _hd245706245778_
                             _tl245705245780_
                             _e245710245783_
                             _hd245709245786_
                             _tl245708245788_)
                            (___kont256154256155_))))
                     (___match256627256628_
                      (lambda (_e245689245727_
                               _hd245688245730_
                               _tl245687245732_
                               _e245692245735_
                               _hd245691245738_
                               _tl245690245740_
                               _e245695245743_
                               _hd245694245746_
                               _tl245693245748_
                               _e245698245751_
                               _hd245697245754_
                               _tl245696245756_
                               _e245701245759_
                               _hd245700245762_
                               _tl245699245764_
                               _e245704245767_
                               _hd245703245770_
                               _tl245702245772_
                               _e245707245775_
                               _hd245706245778_
                               _tl245705245780_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl245699245764_))
                            (let ((_e245710245783_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl245699245764_))))
                              (let ((_tl245708245788_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245710245783_)))
                                    (_hd245709245786_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245710245783_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl245708245788_))
                                    (___match256635256636_
                                     _e245689245727_
                                     _hd245688245730_
                                     _tl245687245732_
                                     _e245692245735_
                                     _hd245691245738_
                                     _tl245690245740_
                                     _e245695245743_
                                     _hd245694245746_
                                     _tl245693245748_
                                     _e245698245751_
                                     _hd245697245754_
                                     _tl245696245756_
                                     _e245701245759_
                                     _hd245700245762_
                                     _tl245699245764_
                                     _e245704245767_
                                     _hd245703245770_
                                     _tl245702245772_
                                     _e245707245775_
                                     _hd245706245778_
                                     _tl245705245780_
                                     _e245710245783_
                                     _hd245709245786_
                                     _tl245708245788_)
                                    (___kont256154256155_))))
                            (___kont256154256155_))))
                     (___match256573256574_
                      (lambda (_e245665245834_
                               _hd245664245837_
                               _tl245663245839_
                               _e245668245842_
                               _hd245667245845_
                               _tl245666245847_
                               _e245671245850_
                               _hd245670245853_
                               _tl245669245855_
                               _e245674245858_
                               _hd245673245861_
                               _tl245672245863_
                               _e245677245866_
                               _hd245676245869_
                               _tl245675245871_
                               _e245680245874_
                               _hd245679245877_
                               _tl245678245879_
                               _e245683245882_
                               _hd245682245885_
                               _tl245681245887_)
                        (let ((_L245890_ _hd245682245885_)
                              (_L245891_ _hd245673245861_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L245890_
                                      _self245477_))
                                   (let ((__tmp257083
                                          (let ((__tmp257084
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L245891_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp257084))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp257083
                                      'gxc#!accessor::t)))
                              (___kont256150256151_ _L245890_ _L245891_)
                              (___kont256154256155_)))))
                     (___match256571256572_
                      (lambda (_e245665245834_
                               _hd245664245837_
                               _tl245663245839_
                               _e245668245842_
                               _hd245667245845_
                               _tl245666245847_
                               _e245671245850_
                               _hd245670245853_
                               _tl245669245855_
                               _e245674245858_
                               _hd245673245861_
                               _tl245672245863_
                               _e245677245866_
                               _hd245676245869_
                               _tl245675245871_
                               _e245680245874_
                               _hd245679245877_
                               _tl245678245879_
                               _e245683245882_
                               _hd245682245885_
                               _tl245681245887_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl245675245871_))
                            (___match256573256574_
                             _e245665245834_
                             _hd245664245837_
                             _tl245663245839_
                             _e245668245842_
                             _hd245667245845_
                             _tl245666245847_
                             _e245671245850_
                             _hd245670245853_
                             _tl245669245855_
                             _e245674245858_
                             _hd245673245861_
                             _tl245672245863_
                             _e245677245866_
                             _hd245676245869_
                             _tl245675245871_
                             _e245680245874_
                             _hd245679245877_
                             _tl245678245879_
                             _e245683245882_
                             _hd245682245885_
                             _tl245681245887_)
                            (___match256627256628_
                             _e245665245834_
                             _hd245664245837_
                             _tl245663245839_
                             _e245668245842_
                             _hd245667245845_
                             _tl245666245847_
                             _e245671245850_
                             _hd245670245853_
                             _tl245669245855_
                             _e245674245858_
                             _hd245673245861_
                             _tl245672245863_
                             _e245677245866_
                             _hd245676245869_
                             _tl245675245871_
                             _e245680245874_
                             _hd245679245877_
                             _tl245678245879_
                             _e245683245882_
                             _hd245682245885_
                             _tl245681245887_))))
                     (___match256517256518_
                      (lambda (_e245630245923_
                               _hd245629245926_
                               _tl245628245928_
                               _e245633245931_
                               _hd245632245934_
                               _tl245631245936_
                               _e245636245939_
                               _hd245635245942_
                               _tl245634245944_
                               _e245639245947_
                               _hd245638245950_
                               _tl245637245952_
                               _e245642245955_
                               _hd245641245958_
                               _tl245640245960_
                               _e245645245963_
                               _hd245644245966_
                               _tl245643245968_
                               _e245648245971_
                               _hd245647245974_
                               _tl245646245976_
                               _e245651245979_
                               _hd245650245982_
                               _tl245649245984_
                               _e245654245987_
                               _hd245653245990_
                               _tl245652245992_
                               _e245657245995_
                               _hd245656245998_
                               _tl245655246000_
                               _e245660246003_
                               _hd245659246006_
                               _tl245658246008_)
                        (let ((_L246011_ _hd245659246006_)
                              (_L246012_ _hd245656245998_)
                              (_L246013_ _hd245647245974_)
                              (_L246014_ _hd245638245950_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L246014_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L246014_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L246013_
                                      _self245477_)))
                              (___kont256148256149_
                               _L246011_
                               _L246012_
                               _L246013_
                               _L246014_)
                              (___kont256154256155_)))))
                     (___match256509256510_
                      (lambda (_e245630245923_
                               _hd245629245926_
                               _tl245628245928_
                               _e245633245931_
                               _hd245632245934_
                               _tl245631245936_
                               _e245636245939_
                               _hd245635245942_
                               _tl245634245944_
                               _e245639245947_
                               _hd245638245950_
                               _tl245637245952_
                               _e245642245955_
                               _hd245641245958_
                               _tl245640245960_
                               _e245645245963_
                               _hd245644245966_
                               _tl245643245968_
                               _e245648245971_
                               _hd245647245974_
                               _tl245646245976_
                               _e245651245979_
                               _hd245650245982_
                               _tl245649245984_
                               _e245654245987_
                               _hd245653245990_
                               _tl245652245992_
                               _e245657245995_
                               _hd245656245998_
                               _tl245655246000_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl245649245984_))
                            (let ((_e245660246003_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl245649245984_))))
                              (let ((_tl245658246008_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245660246003_)))
                                    (_hd245659246006_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245660246003_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl245658246008_))
                                    (___match256517256518_
                                     _e245630245923_
                                     _hd245629245926_
                                     _tl245628245928_
                                     _e245633245931_
                                     _hd245632245934_
                                     _tl245631245936_
                                     _e245636245939_
                                     _hd245635245942_
                                     _tl245634245944_
                                     _e245639245947_
                                     _hd245638245950_
                                     _tl245637245952_
                                     _e245642245955_
                                     _hd245641245958_
                                     _tl245640245960_
                                     _e245645245963_
                                     _hd245644245966_
                                     _tl245643245968_
                                     _e245648245971_
                                     _hd245647245974_
                                     _tl245646245976_
                                     _e245651245979_
                                     _hd245650245982_
                                     _tl245649245984_
                                     _e245654245987_
                                     _hd245653245990_
                                     _tl245652245992_
                                     _e245657245995_
                                     _hd245656245998_
                                     _tl245655246000_
                                     _e245660246003_
                                     _hd245659246006_
                                     _tl245658246008_)
                                    (___kont256154256155_))))
                            (___match256633256634_
                             _e245630245923_
                             _hd245629245926_
                             _tl245628245928_
                             _e245633245931_
                             _hd245632245934_
                             _tl245631245936_
                             _e245636245939_
                             _hd245635245942_
                             _tl245634245944_
                             _e245639245947_
                             _hd245638245950_
                             _tl245637245952_
                             _e245642245955_
                             _hd245641245958_
                             _tl245640245960_
                             _e245645245963_
                             _hd245644245966_
                             _tl245643245968_
                             _e245648245971_
                             _hd245647245974_
                             _tl245646245976_
                             _e245651245979_
                             _hd245650245982_
                             _tl245649245984_))))
                     (___match256431256432_
                      (lambda (_e245596246057_
                               _hd245595246060_
                               _tl245594246062_
                               _e245599246065_
                               _hd245598246068_
                               _tl245597246070_
                               _e245602246073_
                               _hd245601246076_
                               _tl245600246078_
                               _e245605246081_
                               _hd245604246084_
                               _tl245603246086_
                               _e245608246089_
                               _hd245607246092_
                               _tl245606246094_
                               _e245611246097_
                               _hd245610246100_
                               _tl245609246102_
                               _e245614246105_
                               _hd245613246108_
                               _tl245612246110_
                               _e245617246113_
                               _hd245616246116_
                               _tl245615246118_
                               _e245620246121_
                               _hd245619246124_
                               _tl245618246126_
                               _e245623246129_
                               _hd245622246132_
                               _tl245621246134_)
                        (let ((_L246137_ _hd245622246132_)
                              (_L246138_ _hd245613246108_)
                              (_L246139_ _hd245604246084_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L246139_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L246139_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L246138_
                                      _self245477_)))
                              (___kont256146256147_
                               _L246137_
                               _L246138_
                               _L246139_)
                              (___match256635256636_
                               _e245596246057_
                               _hd245595246060_
                               _tl245594246062_
                               _e245599246065_
                               _hd245598246068_
                               _tl245597246070_
                               _e245602246073_
                               _hd245601246076_
                               _tl245600246078_
                               _e245605246081_
                               _hd245604246084_
                               _tl245603246086_
                               _e245608246089_
                               _hd245607246092_
                               _tl245606246094_
                               _e245611246097_
                               _hd245610246100_
                               _tl245609246102_
                               _e245614246105_
                               _hd245613246108_
                               _tl245612246110_
                               _e245617246113_
                               _hd245616246116_
                               _tl245615246118_)))))
                     (___match256429256430_
                      (lambda (_e245596246057_
                               _hd245595246060_
                               _tl245594246062_
                               _e245599246065_
                               _hd245598246068_
                               _tl245597246070_
                               _e245602246073_
                               _hd245601246076_
                               _tl245600246078_
                               _e245605246081_
                               _hd245604246084_
                               _tl245603246086_
                               _e245608246089_
                               _hd245607246092_
                               _tl245606246094_
                               _e245611246097_
                               _hd245610246100_
                               _tl245609246102_
                               _e245614246105_
                               _hd245613246108_
                               _tl245612246110_
                               _e245617246113_
                               _hd245616246116_
                               _tl245615246118_
                               _e245620246121_
                               _hd245619246124_
                               _tl245618246126_
                               _e245623246129_
                               _hd245622246132_
                               _tl245621246134_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl245615246118_))
                            (___match256431256432_
                             _e245596246057_
                             _hd245595246060_
                             _tl245594246062_
                             _e245599246065_
                             _hd245598246068_
                             _tl245597246070_
                             _e245602246073_
                             _hd245601246076_
                             _tl245600246078_
                             _e245605246081_
                             _hd245604246084_
                             _tl245603246086_
                             _e245608246089_
                             _hd245607246092_
                             _tl245606246094_
                             _e245611246097_
                             _hd245610246100_
                             _tl245609246102_
                             _e245614246105_
                             _hd245613246108_
                             _tl245612246110_
                             _e245617246113_
                             _hd245616246116_
                             _tl245615246118_
                             _e245620246121_
                             _hd245619246124_
                             _tl245618246126_
                             _e245623246129_
                             _hd245622246132_
                             _tl245621246134_)
                            (___match256509256510_
                             _e245596246057_
                             _hd245595246060_
                             _tl245594246062_
                             _e245599246065_
                             _hd245598246068_
                             _tl245597246070_
                             _e245602246073_
                             _hd245601246076_
                             _tl245600246078_
                             _e245605246081_
                             _hd245604246084_
                             _tl245603246086_
                             _e245608246089_
                             _hd245607246092_
                             _tl245606246094_
                             _e245611246097_
                             _hd245610246100_
                             _tl245609246102_
                             _e245614246105_
                             _hd245613246108_
                             _tl245612246110_
                             _e245617246113_
                             _hd245616246116_
                             _tl245615246118_
                             _e245620246121_
                             _hd245619246124_
                             _tl245618246126_
                             _e245623246129_
                             _hd245622246132_
                             _tl245621246134_))))
                     (___match256419256420_
                      (lambda (_e245596246057_
                               _hd245595246060_
                               _tl245594246062_
                               _e245599246065_
                               _hd245598246068_
                               _tl245597246070_
                               _e245602246073_
                               _hd245601246076_
                               _tl245600246078_
                               _e245605246081_
                               _hd245604246084_
                               _tl245603246086_
                               _e245608246089_
                               _hd245607246092_
                               _tl245606246094_
                               _e245611246097_
                               _hd245610246100_
                               _tl245609246102_
                               _e245614246105_
                               _hd245613246108_
                               _tl245612246110_
                               _e245617246113_
                               _hd245616246116_
                               _tl245615246118_
                               _e245620246121_
                               _hd245619246124_
                               _tl245618246126_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd245619246124_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl245618246126_))
                                (let ((_e245623246129_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl245618246126_))))
                                  (let ((_tl245621246134_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e245623246129_)))
                                        (_hd245622246132_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e245623246129_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl245621246134_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl245615246118_))
                                            (___match256431256432_
                                             _e245596246057_
                                             _hd245595246060_
                                             _tl245594246062_
                                             _e245599246065_
                                             _hd245598246068_
                                             _tl245597246070_
                                             _e245602246073_
                                             _hd245601246076_
                                             _tl245600246078_
                                             _e245605246081_
                                             _hd245604246084_
                                             _tl245603246086_
                                             _e245608246089_
                                             _hd245607246092_
                                             _tl245606246094_
                                             _e245611246097_
                                             _hd245610246100_
                                             _tl245609246102_
                                             _e245614246105_
                                             _hd245613246108_
                                             _tl245612246110_
                                             _e245617246113_
                                             _hd245616246116_
                                             _tl245615246118_
                                             _e245620246121_
                                             _hd245619246124_
                                             _tl245618246126_
                                             _e245623246129_
                                             _hd245622246132_
                                             _tl245621246134_)
                                            (___match256509256510_
                                             _e245596246057_
                                             _hd245595246060_
                                             _tl245594246062_
                                             _e245599246065_
                                             _hd245598246068_
                                             _tl245597246070_
                                             _e245602246073_
                                             _hd245601246076_
                                             _tl245600246078_
                                             _e245605246081_
                                             _hd245604246084_
                                             _tl245603246086_
                                             _e245608246089_
                                             _hd245607246092_
                                             _tl245606246094_
                                             _e245611246097_
                                             _hd245610246100_
                                             _tl245609246102_
                                             _e245614246105_
                                             _hd245613246108_
                                             _tl245612246110_
                                             _e245617246113_
                                             _hd245616246116_
                                             _tl245615246118_
                                             _e245620246121_
                                             _hd245619246124_
                                             _tl245618246126_
                                             _e245623246129_
                                             _hd245622246132_
                                             _tl245621246134_))
                                        (___match256633256634_
                                         _e245596246057_
                                         _hd245595246060_
                                         _tl245594246062_
                                         _e245599246065_
                                         _hd245598246068_
                                         _tl245597246070_
                                         _e245602246073_
                                         _hd245601246076_
                                         _tl245600246078_
                                         _e245605246081_
                                         _hd245604246084_
                                         _tl245603246086_
                                         _e245608246089_
                                         _hd245607246092_
                                         _tl245606246094_
                                         _e245611246097_
                                         _hd245610246100_
                                         _tl245609246102_
                                         _e245614246105_
                                         _hd245613246108_
                                         _tl245612246110_
                                         _e245617246113_
                                         _hd245616246116_
                                         _tl245615246118_))))
                                (___match256633256634_
                                 _e245596246057_
                                 _hd245595246060_
                                 _tl245594246062_
                                 _e245599246065_
                                 _hd245598246068_
                                 _tl245597246070_
                                 _e245602246073_
                                 _hd245601246076_
                                 _tl245600246078_
                                 _e245605246081_
                                 _hd245604246084_
                                 _tl245603246086_
                                 _e245608246089_
                                 _hd245607246092_
                                 _tl245606246094_
                                 _e245611246097_
                                 _hd245610246100_
                                 _tl245609246102_
                                 _e245614246105_
                                 _hd245613246108_
                                 _tl245612246110_
                                 _e245617246113_
                                 _hd245616246116_
                                 _tl245615246118_))
                            (___match256633256634_
                             _e245596246057_
                             _hd245595246060_
                             _tl245594246062_
                             _e245599246065_
                             _hd245598246068_
                             _tl245597246070_
                             _e245602246073_
                             _hd245601246076_
                             _tl245600246078_
                             _e245605246081_
                             _hd245604246084_
                             _tl245603246086_
                             _e245608246089_
                             _hd245607246092_
                             _tl245606246094_
                             _e245611246097_
                             _hd245610246100_
                             _tl245609246102_
                             _e245614246105_
                             _hd245613246108_
                             _tl245612246110_
                             _e245617246113_
                             _hd245616246116_
                             _tl245615246118_))))
                     (___match256351256352_
                      (lambda (_e245545246178_
                               _hd245544246181_
                               _tl245543246183_
                               _e245548246186_
                               _hd245547246189_
                               _tl245546246191_
                               _e245551246194_
                               _hd245550246197_
                               _tl245549246199_
                               _e245554246202_
                               _hd245553246205_
                               _tl245552246207_
                               _e245557246210_
                               _hd245556246213_
                               _tl245555246215_
                               _e245560246218_
                               _hd245559246221_
                               _tl245558246223_
                               _e245563246226_
                               _hd245562246229_
                               _tl245561246231_
                               _e245566246234_
                               _hd245565246237_
                               _tl245564246239_
                               _e245569246242_
                               _hd245568246245_
                               _tl245567246247_
                               _e245572246250_
                               _hd245571246253_
                               _tl245570246255_
                               _e245575246258_
                               _hd245574246261_
                               _tl245573246263_
                               _e245578246266_
                               _hd245577246269_
                               _tl245576246271_
                               _e245581246274_
                               _hd245580246277_
                               _tl245579246279_
                               ___splice256144256145_
                               _target245582246282_
                               _tl245584246284_)
                        (letrec ((_loop245585246287_
                                  (lambda (_hd245583246290_ _args245589246292_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd245583246290_))
                                        (let ((_e245586246295_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd245583246290_))))
                                          (let ((_lp-tl245588246300_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e245586246295_)))
                                                (_lp-hd245587246298_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e245586246295_))))
                                            (let ((__tmp257085
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd245587246298_
                                                           _args245589246292_))))
                                              (declare (not safe))
                                              (_loop245585246287_
                                               _lp-tl245588246300_
                                               __tmp257085))))
                                        (let ((_args245590246303_
                                               (reverse _args245589246292_)))
                                          (let ((_L246306_ _args245590246303_)
                                                (_L246307_ _hd245580246277_)
                                                (_L246308_ _hd245571246253_)
                                                (_L246309_ _hd245562246229_)
                                                (_L246310_ _hd245553246205_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L246310_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L246309_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L246308_
                                                        _self245477_)))
                                                (___kont256142256143_
                                                 _L246306_
                                                 _L246307_
                                                 _L246308_
                                                 _L246309_
                                                 _L246310_)
                                                (___kont256154256155_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop245585246287_ _target245582246282_ '())))))
                     (___match256309256310_
                      (lambda (_e245545246178_
                               _hd245544246181_
                               _tl245543246183_
                               _e245548246186_
                               _hd245547246189_
                               _tl245546246191_
                               _e245551246194_
                               _hd245550246197_
                               _tl245549246199_
                               _e245554246202_
                               _hd245553246205_
                               _tl245552246207_
                               _e245557246210_
                               _hd245556246213_
                               _tl245555246215_
                               _e245560246218_
                               _hd245559246221_
                               _tl245558246223_
                               _e245563246226_
                               _hd245562246229_
                               _tl245561246231_
                               _e245566246234_
                               _hd245565246237_
                               _tl245564246239_
                               _e245569246242_
                               _hd245568246245_
                               _tl245567246247_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd245568246245_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl245567246247_))
                                (let ((_e245572246250_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl245567246247_))))
                                  (let ((_tl245570246255_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e245572246250_)))
                                        (_hd245571246253_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e245572246250_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl245570246255_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl245564246239_))
                                            (let ((_e245575246258_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl245564246239_))))
                                              (let ((_tl245573246263_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e245575246258_)))
                                                    (_hd245574246261_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e245575246258_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd245574246261_))
                                                    (let ((_e245578246266_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd245574246261_))))
                                                      (let ((_tl245576246271_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e245578246266_)))
                    (_hd245577246269_
                     (let () (declare (not safe)) (##car _e245578246266_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd245577246269_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd245577246269_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl245576246271_))
                            (let ((_e245581246274_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl245576246271_))))
                              (let ((_tl245579246279_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245581246274_)))
                                    (_hd245580246277_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245581246274_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl245579246279_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl245573246263_))
                                        (let ((___splice256144256145_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl245573246263_
                                                  '0))))
                                          (let ((_tl245584246284_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice256144256145_
                                                    '1)))
                                                (_target245582246282_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice256144256145_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl245584246284_))
                                                (___match256351256352_
                                                 _e245545246178_
                                                 _hd245544246181_
                                                 _tl245543246183_
                                                 _e245548246186_
                                                 _hd245547246189_
                                                 _tl245546246191_
                                                 _e245551246194_
                                                 _hd245550246197_
                                                 _tl245549246199_
                                                 _e245554246202_
                                                 _hd245553246205_
                                                 _tl245552246207_
                                                 _e245557246210_
                                                 _hd245556246213_
                                                 _tl245555246215_
                                                 _e245560246218_
                                                 _hd245559246221_
                                                 _tl245558246223_
                                                 _e245563246226_
                                                 _hd245562246229_
                                                 _tl245561246231_
                                                 _e245566246234_
                                                 _hd245565246237_
                                                 _tl245564246239_
                                                 _e245569246242_
                                                 _hd245568246245_
                                                 _tl245567246247_
                                                 _e245572246250_
                                                 _hd245571246253_
                                                 _tl245570246255_
                                                 _e245575246258_
                                                 _hd245574246261_
                                                 _tl245573246263_
                                                 _e245578246266_
                                                 _hd245577246269_
                                                 _tl245576246271_
                                                 _e245581246274_
                                                 _hd245580246277_
                                                 _tl245579246279_
                                                 ___splice256144256145_
                                                 _target245582246282_
                                                 _tl245584246284_)
                                                (___kont256154256155_))))
                                        (___kont256154256155_))
                                    (___kont256154256155_))))
                            (___kont256154256155_))
                        (___kont256154256155_))
                    (___kont256154256155_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont256154256155_))))
                                            (___match256633256634_
                                             _e245545246178_
                                             _hd245544246181_
                                             _tl245543246183_
                                             _e245548246186_
                                             _hd245547246189_
                                             _tl245546246191_
                                             _e245551246194_
                                             _hd245550246197_
                                             _tl245549246199_
                                             _e245554246202_
                                             _hd245553246205_
                                             _tl245552246207_
                                             _e245557246210_
                                             _hd245556246213_
                                             _tl245555246215_
                                             _e245560246218_
                                             _hd245559246221_
                                             _tl245558246223_
                                             _e245563246226_
                                             _hd245562246229_
                                             _tl245561246231_
                                             _e245566246234_
                                             _hd245565246237_
                                             _tl245564246239_))
                                        (___match256633256634_
                                         _e245545246178_
                                         _hd245544246181_
                                         _tl245543246183_
                                         _e245548246186_
                                         _hd245547246189_
                                         _tl245546246191_
                                         _e245551246194_
                                         _hd245550246197_
                                         _tl245549246199_
                                         _e245554246202_
                                         _hd245553246205_
                                         _tl245552246207_
                                         _e245557246210_
                                         _hd245556246213_
                                         _tl245555246215_
                                         _e245560246218_
                                         _hd245559246221_
                                         _tl245558246223_
                                         _e245563246226_
                                         _hd245562246229_
                                         _tl245561246231_
                                         _e245566246234_
                                         _hd245565246237_
                                         _tl245564246239_))))
                                (___match256633256634_
                                 _e245545246178_
                                 _hd245544246181_
                                 _tl245543246183_
                                 _e245548246186_
                                 _hd245547246189_
                                 _tl245546246191_
                                 _e245551246194_
                                 _hd245550246197_
                                 _tl245549246199_
                                 _e245554246202_
                                 _hd245553246205_
                                 _tl245552246207_
                                 _e245557246210_
                                 _hd245556246213_
                                 _tl245555246215_
                                 _e245560246218_
                                 _hd245559246221_
                                 _tl245558246223_
                                 _e245563246226_
                                 _hd245562246229_
                                 _tl245561246231_
                                 _e245566246234_
                                 _hd245565246237_
                                 _tl245564246239_))
                            (___match256419256420_
                             _e245545246178_
                             _hd245544246181_
                             _tl245543246183_
                             _e245548246186_
                             _hd245547246189_
                             _tl245546246191_
                             _e245551246194_
                             _hd245550246197_
                             _tl245549246199_
                             _e245554246202_
                             _hd245553246205_
                             _tl245552246207_
                             _e245557246210_
                             _hd245556246213_
                             _tl245555246215_
                             _e245560246218_
                             _hd245559246221_
                             _tl245558246223_
                             _e245563246226_
                             _hd245562246229_
                             _tl245561246231_
                             _e245566246234_
                             _hd245565246237_
                             _tl245564246239_
                             _e245569246242_
                             _hd245568246245_
                             _tl245567246247_))))
                     (___match256241256242_
                      (lambda (_e245501246370_
                               _hd245500246373_
                               _tl245499246375_
                               _e245504246378_
                               _hd245503246381_
                               _tl245502246383_
                               _e245507246386_
                               _hd245506246389_
                               _tl245505246391_
                               _e245510246394_
                               _hd245509246397_
                               _tl245508246399_
                               _e245513246402_
                               _hd245512246405_
                               _tl245511246407_
                               _e245516246410_
                               _hd245515246413_
                               _tl245514246415_
                               _e245519246418_
                               _hd245518246421_
                               _tl245517246423_
                               _e245522246426_
                               _hd245521246429_
                               _tl245520246431_
                               _e245525246434_
                               _hd245524246437_
                               _tl245523246439_
                               _e245528246442_
                               _hd245527246445_
                               _tl245526246447_
                               ___splice256140256141_
                               _target245529246450_
                               _tl245531246452_)
                        (letrec ((_loop245532246455_
                                  (lambda (_hd245530246458_ _args245536246460_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd245530246458_))
                                        (let ((_e245533246463_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd245530246458_))))
                                          (let ((_lp-tl245535246468_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e245533246463_)))
                                                (_lp-hd245534246466_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e245533246463_))))
                                            (let ((__tmp257086
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd245534246466_
                                                           _args245536246460_))))
                                              (declare (not safe))
                                              (_loop245532246455_
                                               _lp-tl245535246468_
                                               __tmp257086))))
                                        (let ((_args245537246471_
                                               (reverse _args245536246460_)))
                                          (let ((_L246474_ _args245537246471_)
                                                (_L246475_ _hd245527246445_)
                                                (_L246476_ _hd245518246421_)
                                                (_L246477_ _hd245509246397_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L246477_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L246476_
                                                        _self245477_)))
                                                (___kont256138256139_
                                                 _L246474_
                                                 _L246475_
                                                 _L246476_
                                                 _L246477_)
                                                (___match256429256430_
                                                 _e245501246370_
                                                 _hd245500246373_
                                                 _tl245499246375_
                                                 _e245504246378_
                                                 _hd245503246381_
                                                 _tl245502246383_
                                                 _e245507246386_
                                                 _hd245506246389_
                                                 _tl245505246391_
                                                 _e245510246394_
                                                 _hd245509246397_
                                                 _tl245508246399_
                                                 _e245513246402_
                                                 _hd245512246405_
                                                 _tl245511246407_
                                                 _e245516246410_
                                                 _hd245515246413_
                                                 _tl245514246415_
                                                 _e245519246418_
                                                 _hd245518246421_
                                                 _tl245517246423_
                                                 _e245522246426_
                                                 _hd245521246429_
                                                 _tl245520246431_
                                                 _e245525246434_
                                                 _hd245524246437_
                                                 _tl245523246439_
                                                 _e245528246442_
                                                 _hd245527246445_
                                                 _tl245526246447_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop245532246455_ _target245529246450_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx256136256137_))
                    (let ((_e245501246370_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx256136256137_))))
                      (let ((_tl245499246375_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245501246370_)))
                            (_hd245500246373_
                             (let ()
                               (declare (not safe))
                               (##car _e245501246370_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl245499246375_))
                            (let ((_e245504246378_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl245499246375_))))
                              (let ((_tl245502246383_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245504246378_)))
                                    (_hd245503246381_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245504246378_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd245503246381_))
                                    (let ((_e245507246386_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd245503246381_))))
                                      (let ((_tl245505246391_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e245507246386_)))
                                            (_hd245506246389_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e245507246386_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd245506246389_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd245506246389_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl245505246391_))
                                                    (let ((_e245510246394_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl245505246391_))))
                                                      (let ((_tl245508246399_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e245510246394_)))
                    (_hd245509246397_
                     (let () (declare (not safe)) (##car _e245510246394_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl245508246399_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl245502246383_))
                        (let ((_e245513246402_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl245502246383_))))
                          (let ((_tl245511246407_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e245513246402_)))
                                (_hd245512246405_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e245513246402_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd245512246405_))
                                (let ((_e245516246410_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd245512246405_))))
                                  (let ((_tl245514246415_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e245516246410_)))
                                        (_hd245515246413_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e245516246410_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd245515246413_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd245515246413_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl245514246415_))
                                                (let ((_e245519246418_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl245514246415_))))
                                                  (let ((_tl245517246423_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e245519246418_)))
                                                        (_hd245518246421_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e245519246418_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl245517246423_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl245511246407_))
                                                            (let ((_e245522246426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl245511246407_))))
                      (let ((_tl245520246431_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245522246426_)))
                            (_hd245521246429_
                             (let ()
                               (declare (not safe))
                               (##car _e245522246426_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd245521246429_))
                            (let ((_e245525246434_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd245521246429_))))
                              (let ((_tl245523246439_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245525246434_)))
                                    (_hd245524246437_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245525246434_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd245524246437_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd245524246437_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl245523246439_))
                                            (let ((_e245528246442_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl245523246439_))))
                                              (let ((_tl245526246447_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e245528246442_)))
                                                    (_hd245527246445_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e245528246442_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl245526246447_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl245520246431_))
                                                        (let ((___splice256140256141_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl245520246431_ '0))))
                  (let ((_tl245531246452_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice256140256141_ '1)))
                        (_target245529246450_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice256140256141_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl245531246452_))
                        (___match256241256242_
                         _e245501246370_
                         _hd245500246373_
                         _tl245499246375_
                         _e245504246378_
                         _hd245503246381_
                         _tl245502246383_
                         _e245507246386_
                         _hd245506246389_
                         _tl245505246391_
                         _e245510246394_
                         _hd245509246397_
                         _tl245508246399_
                         _e245513246402_
                         _hd245512246405_
                         _tl245511246407_
                         _e245516246410_
                         _hd245515246413_
                         _tl245514246415_
                         _e245519246418_
                         _hd245518246421_
                         _tl245517246423_
                         _e245522246426_
                         _hd245521246429_
                         _tl245520246431_
                         _e245525246434_
                         _hd245524246437_
                         _tl245523246439_
                         _e245528246442_
                         _hd245527246445_
                         _tl245526246447_
                         ___splice256140256141_
                         _target245529246450_
                         _tl245531246452_)
                        (___match256429256430_
                         _e245501246370_
                         _hd245500246373_
                         _tl245499246375_
                         _e245504246378_
                         _hd245503246381_
                         _tl245502246383_
                         _e245507246386_
                         _hd245506246389_
                         _tl245505246391_
                         _e245510246394_
                         _hd245509246397_
                         _tl245508246399_
                         _e245513246402_
                         _hd245512246405_
                         _tl245511246407_
                         _e245516246410_
                         _hd245515246413_
                         _tl245514246415_
                         _e245519246418_
                         _hd245518246421_
                         _tl245517246423_
                         _e245522246426_
                         _hd245521246429_
                         _tl245520246431_
                         _e245525246434_
                         _hd245524246437_
                         _tl245523246439_
                         _e245528246442_
                         _hd245527246445_
                         _tl245526246447_))))
                (___match256429256430_
                 _e245501246370_
                 _hd245500246373_
                 _tl245499246375_
                 _e245504246378_
                 _hd245503246381_
                 _tl245502246383_
                 _e245507246386_
                 _hd245506246389_
                 _tl245505246391_
                 _e245510246394_
                 _hd245509246397_
                 _tl245508246399_
                 _e245513246402_
                 _hd245512246405_
                 _tl245511246407_
                 _e245516246410_
                 _hd245515246413_
                 _tl245514246415_
                 _e245519246418_
                 _hd245518246421_
                 _tl245517246423_
                 _e245522246426_
                 _hd245521246429_
                 _tl245520246431_
                 _e245525246434_
                 _hd245524246437_
                 _tl245523246439_
                 _e245528246442_
                 _hd245527246445_
                 _tl245526246447_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match256633256634_
                                                     _e245501246370_
                                                     _hd245500246373_
                                                     _tl245499246375_
                                                     _e245504246378_
                                                     _hd245503246381_
                                                     _tl245502246383_
                                                     _e245507246386_
                                                     _hd245506246389_
                                                     _tl245505246391_
                                                     _e245510246394_
                                                     _hd245509246397_
                                                     _tl245508246399_
                                                     _e245513246402_
                                                     _hd245512246405_
                                                     _tl245511246407_
                                                     _e245516246410_
                                                     _hd245515246413_
                                                     _tl245514246415_
                                                     _e245519246418_
                                                     _hd245518246421_
                                                     _tl245517246423_
                                                     _e245522246426_
                                                     _hd245521246429_
                                                     _tl245520246431_))))
                                            (___match256633256634_
                                             _e245501246370_
                                             _hd245500246373_
                                             _tl245499246375_
                                             _e245504246378_
                                             _hd245503246381_
                                             _tl245502246383_
                                             _e245507246386_
                                             _hd245506246389_
                                             _tl245505246391_
                                             _e245510246394_
                                             _hd245509246397_
                                             _tl245508246399_
                                             _e245513246402_
                                             _hd245512246405_
                                             _tl245511246407_
                                             _e245516246410_
                                             _hd245515246413_
                                             _tl245514246415_
                                             _e245519246418_
                                             _hd245518246421_
                                             _tl245517246423_
                                             _e245522246426_
                                             _hd245521246429_
                                             _tl245520246431_))
                                        (___match256309256310_
                                         _e245501246370_
                                         _hd245500246373_
                                         _tl245499246375_
                                         _e245504246378_
                                         _hd245503246381_
                                         _tl245502246383_
                                         _e245507246386_
                                         _hd245506246389_
                                         _tl245505246391_
                                         _e245510246394_
                                         _hd245509246397_
                                         _tl245508246399_
                                         _e245513246402_
                                         _hd245512246405_
                                         _tl245511246407_
                                         _e245516246410_
                                         _hd245515246413_
                                         _tl245514246415_
                                         _e245519246418_
                                         _hd245518246421_
                                         _tl245517246423_
                                         _e245522246426_
                                         _hd245521246429_
                                         _tl245520246431_
                                         _e245525246434_
                                         _hd245524246437_
                                         _tl245523246439_))
                                    (___match256633256634_
                                     _e245501246370_
                                     _hd245500246373_
                                     _tl245499246375_
                                     _e245504246378_
                                     _hd245503246381_
                                     _tl245502246383_
                                     _e245507246386_
                                     _hd245506246389_
                                     _tl245505246391_
                                     _e245510246394_
                                     _hd245509246397_
                                     _tl245508246399_
                                     _e245513246402_
                                     _hd245512246405_
                                     _tl245511246407_
                                     _e245516246410_
                                     _hd245515246413_
                                     _tl245514246415_
                                     _e245519246418_
                                     _hd245518246421_
                                     _tl245517246423_
                                     _e245522246426_
                                     _hd245521246429_
                                     _tl245520246431_))))
                            (___match256633256634_
                             _e245501246370_
                             _hd245500246373_
                             _tl245499246375_
                             _e245504246378_
                             _hd245503246381_
                             _tl245502246383_
                             _e245507246386_
                             _hd245506246389_
                             _tl245505246391_
                             _e245510246394_
                             _hd245509246397_
                             _tl245508246399_
                             _e245513246402_
                             _hd245512246405_
                             _tl245511246407_
                             _e245516246410_
                             _hd245515246413_
                             _tl245514246415_
                             _e245519246418_
                             _hd245518246421_
                             _tl245517246423_
                             _e245522246426_
                             _hd245521246429_
                             _tl245520246431_))))
                    (___match256571256572_
                     _e245501246370_
                     _hd245500246373_
                     _tl245499246375_
                     _e245504246378_
                     _hd245503246381_
                     _tl245502246383_
                     _e245507246386_
                     _hd245506246389_
                     _tl245505246391_
                     _e245510246394_
                     _hd245509246397_
                     _tl245508246399_
                     _e245513246402_
                     _hd245512246405_
                     _tl245511246407_
                     _e245516246410_
                     _hd245515246413_
                     _tl245514246415_
                     _e245519246418_
                     _hd245518246421_
                     _tl245517246423_))
                (___kont256154256155_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont256154256155_))
                                            (___kont256154256155_))
                                        (___kont256154256155_))))
                                (___kont256154256155_))))
                        (___kont256154256155_))
                    (___kont256154256155_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont256154256155_))
                                                (___kont256154256155_))
                                            (___kont256154256155_))))
                                    (___kont256154256155_))))
                            (___kont256154256155_))))
                    (___kont256154256155_))))))))))
