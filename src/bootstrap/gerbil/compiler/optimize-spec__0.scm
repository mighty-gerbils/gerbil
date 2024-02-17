(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1708194432)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl242509_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp247704 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl242509_ __tmp247704))
           (let ()
             (declare (not safe))
             (table-set! _tbl242509_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl242509_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl242509_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242509_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl242509_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx242492_ . _args242494_)
        (let ((__tmp247706
               (lambda ()
                 (declare (not safe))
                 (if (null? _args242494_)
                     (gxc#compile-e__0 _stx242492_)
                     (let ((_arg1242499_ (car _args242494_))
                           (_rest242501_ (cdr _args242494_)))
                       (if (null? _rest242501_)
                           (gxc#compile-e__1 _stx242492_ _arg1242499_)
                           (let ((_arg2242504_ (car _rest242501_))
                                 (_rest242506_ (cdr _rest242501_)))
                             (if (null? _rest242506_)
                                 (gxc#compile-e__2
                                  _stx242492_
                                  _arg1242499_
                                  _arg2242504_)
                                 (apply gxc#compile-e
                                        _stx242492_
                                        _arg1242499_
                                        _arg2242504_
                                        _rest242506_))))))))
              (__tmp247705 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp247706
           gxc#current-compile-methods
           __tmp247705))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl242489_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp247707 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl242489_ __tmp247707))
           (let ()
             (declare (not safe))
             (table-set! _tbl242489_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242489_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl242489_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242489_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242489_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242489_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242489_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl242489_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl242489_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl242489_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl242489_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl242489_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242489_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242489_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242489_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242489_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl242489_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx242472_ . _args242474_)
        (let ((__tmp247709
               (lambda ()
                 (declare (not safe))
                 (if (null? _args242474_)
                     (gxc#compile-e__0 _stx242472_)
                     (let ((_arg1242479_ (car _args242474_))
                           (_rest242481_ (cdr _args242474_)))
                       (if (null? _rest242481_)
                           (gxc#compile-e__1 _stx242472_ _arg1242479_)
                           (let ((_arg2242484_ (car _rest242481_))
                                 (_rest242486_ (cdr _rest242481_)))
                             (if (null? _rest242486_)
                                 (gxc#compile-e__2
                                  _stx242472_
                                  _arg1242479_
                                  _arg2242484_)
                                 (apply gxc#compile-e
                                        _stx242472_
                                        _arg1242479_
                                        _arg2242484_
                                        _rest242486_))))))))
              (__tmp247708 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp247709
           gxc#current-compile-methods
           __tmp247708))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl242469_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp247710 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl242469_ __tmp247710))
           (let ()
             (declare (not safe))
             (table-set! _tbl242469_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl242469_ '%#call gxc#subst-object-refs-call%))
           _tbl242469_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx242452_ . _args242454_)
        (let ((__tmp247712
               (lambda ()
                 (declare (not safe))
                 (if (null? _args242454_)
                     (gxc#compile-e__0 _stx242452_)
                     (let ((_arg1242459_ (car _args242454_))
                           (_rest242461_ (cdr _args242454_)))
                       (if (null? _rest242461_)
                           (gxc#compile-e__1 _stx242452_ _arg1242459_)
                           (let ((_arg2242464_ (car _rest242461_))
                                 (_rest242466_ (cdr _rest242461_)))
                             (if (null? _rest242466_)
                                 (gxc#compile-e__2
                                  _stx242452_
                                  _arg1242459_
                                  _arg2242464_)
                                 (apply gxc#compile-e
                                        _stx242452_
                                        _arg1242459_
                                        _arg2242464_
                                        _rest242466_))))))))
              (__tmp247711 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp247712
           gxc#current-compile-methods
           __tmp247711))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx239122_)
        (letrec ((_generate-method-bind239124_
                  (lambda (_$t242446_ _id242447_ _$id242448_)
                    (let ((_$tmp242450_
                           (let ((__tmp247713 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp247713))))
                      (let ((__tmp247761
                             (let ()
                               (declare (not safe))
                               (cons _$id242448_ '())))
                            (__tmp247714
                             (let ((__tmp247715
                                    (let ((__tmp247716
                                           (let ((__tmp247759
                                                  (let ((__tmp247760
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp247760)))
                                                 (__tmp247717
                                                  (let ((__tmp247718
                                                         (let ((__tmp247719
                                                                (let ((__tmp247720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp247721
                                      (let ((__tmp247722
                                             (let ((__tmp247742
                                                    (let ((__tmp247743
                                                           (let ((__tmp247758
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp242450_ '())))
                         (__tmp247744
                          (let ((__tmp247745
                                 (let ((__tmp247746
                                        (let ((__tmp247756
                                               (let ((__tmp247757
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp247757)))
                                              (__tmp247747
                                               (let ((__tmp247754
                                                      (let ((__tmp247755
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t242446_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp247755)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp247748
                                                      (let ((__tmp247752
                                                             (let ((__tmp247753
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp247753)))
                    (__tmp247749
                     (let ((__tmp247750
                            (let ((__tmp247751
                                   (let ()
                                     (declare (not safe))
                                     (cons _id242447_ '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp247751))))
                       (declare (not safe))
                       (cons __tmp247750 '()))))
                (declare (not safe))
                (cons __tmp247752 __tmp247749))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp247754
                                                       __tmp247748))))
                                          (declare (not safe))
                                          (cons __tmp247756 __tmp247747))))
                                   (declare (not safe))
                                   (cons '%#call __tmp247746))))
                            (declare (not safe))
                            (cons __tmp247745 '()))))
                     (declare (not safe))
                     (cons __tmp247758 __tmp247744))))
              (declare (not safe))
              (cons __tmp247743 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp247723
                                                    (let ((__tmp247724
                                                           (let ((__tmp247725
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp247740
                                 (let ((__tmp247741
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp242450_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp247741)))
                                (__tmp247726
                                 (let ((__tmp247738
                                        (let ((__tmp247739
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp242450_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp247739)))
                                       (__tmp247727
                                        (let ((__tmp247728
                                               (let ((__tmp247729
                                                      (let ((__tmp247736
                                                             (let ((__tmp247737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp247737)))
                    (__tmp247730
                     (let ((__tmp247734
                            (let ((__tmp247735
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp247735)))
                           (__tmp247731
                            (let ((__tmp247732
                                   (let ((__tmp247733
                                          (let ()
                                            (declare (not safe))
                                            (cons _id242447_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp247733))))
                              (declare (not safe))
                              (cons __tmp247732 '()))))
                       (declare (not safe))
                       (cons __tmp247734 __tmp247731))))
                (declare (not safe))
                (cons __tmp247736 __tmp247730))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp247729))))
                                          (declare (not safe))
                                          (cons __tmp247728 '()))))
                                   (declare (not safe))
                                   (cons __tmp247738 __tmp247727))))
                            (declare (not safe))
                            (cons __tmp247740 __tmp247726))))
                     (declare (not safe))
                     (cons '%#if __tmp247725))))
              (declare (not safe))
              (cons __tmp247724 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp247742
                                                     __tmp247723))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp247722))))
                                 (declare (not safe))
                                 (cons __tmp247721 '()))))
                          (declare (not safe))
                          (cons '() __tmp247720))))
                   (declare (not safe))
                   (cons '%#lambda __tmp247719))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp247718 '()))))
                                             (declare (not safe))
                                             (cons __tmp247759 __tmp247717))))
                                      (declare (not safe))
                                      (cons '%#call __tmp247716))))
                               (declare (not safe))
                               (cons __tmp247715 '()))))
                        (declare (not safe))
                        (cons __tmp247761 __tmp247714)))))
                 (_generate-slot-bind239125_
                  (lambda (_$t242440_ _id242441_ _$id242442_)
                    (let ((_$tmp242444_
                           (let ((__tmp247762 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp247762))))
                      (let ((__tmp247799
                             (let ()
                               (declare (not safe))
                               (cons _$id242442_ '())))
                            (__tmp247763
                             (let ((__tmp247764
                                    (let ((__tmp247765
                                           (let ((__tmp247785
                                                  (let ((__tmp247786
                                                         (let ((__tmp247798
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp242444_ '())))
                       (__tmp247787
                        (let ((__tmp247788
                               (let ((__tmp247789
                                      (let ((__tmp247796
                                             (let ((__tmp247797
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp247797)))
                                            (__tmp247790
                                             (let ((__tmp247794
                                                    (let ((__tmp247795
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t242440_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp247795)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp247791
                                                    (let ((__tmp247792
                                                           (let ((__tmp247793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id242441_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp247793))))
              (declare (not safe))
              (cons __tmp247792 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp247794
                                                     __tmp247791))))
                                        (declare (not safe))
                                        (cons __tmp247796 __tmp247790))))
                                 (declare (not safe))
                                 (cons '%#call __tmp247789))))
                          (declare (not safe))
                          (cons __tmp247788 '()))))
                   (declare (not safe))
                   (cons __tmp247798 __tmp247787))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp247786 '())))
                                                 (__tmp247766
                                                  (let ((__tmp247767
                                                         (let ((__tmp247768
                                                                (let ((__tmp247783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp247784
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp242444_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp247784)))
                              (__tmp247769
                               (let ((__tmp247781
                                      (let ((__tmp247782
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp242444_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp247782)))
                                     (__tmp247770
                                      (let ((__tmp247771
                                             (let ((__tmp247772
                                                    (let ((__tmp247779
                                                           (let ((__tmp247780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp247780)))
                  (__tmp247773
                   (let ((__tmp247777
                          (let ((__tmp247778
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp247778)))
                         (__tmp247774
                          (let ((__tmp247775
                                 (let ((__tmp247776
                                        (let ()
                                          (declare (not safe))
                                          (cons _id242441_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp247776))))
                            (declare (not safe))
                            (cons __tmp247775 '()))))
                     (declare (not safe))
                     (cons __tmp247777 __tmp247774))))
              (declare (not safe))
              (cons __tmp247779 __tmp247773))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp247772))))
                                        (declare (not safe))
                                        (cons __tmp247771 '()))))
                                 (declare (not safe))
                                 (cons __tmp247781 __tmp247770))))
                          (declare (not safe))
                          (cons __tmp247783 __tmp247769))))
                   (declare (not safe))
                   (cons '%#if __tmp247768))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp247767 '()))))
                                             (declare (not safe))
                                             (cons __tmp247785 __tmp247766))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp247765))))
                               (declare (not safe))
                               (cons __tmp247764 '()))))
                        (declare (not safe))
                        (cons __tmp247799 __tmp247763)))))
                 (_generate-class-check-bind239126_
                  (lambda (_$t242436_ _class-type242437_ _$class-type242438_)
                    (let ((__tmp247811
                           (let ()
                             (declare (not safe))
                             (cons _$class-type242438_ '())))
                          (__tmp247800
                           (let ((__tmp247801
                                  (let ((__tmp247802
                                         (let ((__tmp247809
                                                (let ((__tmp247810
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp247810)))
                                               (__tmp247803
                                                (let ((__tmp247807
                                                       (let ((__tmp247808
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t242436_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp247808)))
              (__tmp247804
               (let ((__tmp247805
                      (let ((__tmp247806
                             (let ()
                               (declare (not safe))
                               (cons _class-type242437_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp247806))))
                 (declare (not safe))
                 (cons __tmp247805 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp247807
                                                        __tmp247804))))
                                           (declare (not safe))
                                           (cons __tmp247809 __tmp247803))))
                                    (declare (not safe))
                                    (cons '%#call __tmp247802))))
                             (declare (not safe))
                             (cons __tmp247801 '()))))
                      (declare (not safe))
                      (cons __tmp247811 __tmp247800))))
                 (_generate-struct-check-bind239127_
                  (lambda (_$t242432_ _class-type242433_ _$class-type242434_)
                    (let ((__tmp247823
                           (let ()
                             (declare (not safe))
                             (cons _$class-type242434_ '())))
                          (__tmp247812
                           (let ((__tmp247813
                                  (let ((__tmp247814
                                         (let ((__tmp247821
                                                (let ((__tmp247822
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp247822)))
                                               (__tmp247815
                                                (let ((__tmp247819
                                                       (let ((__tmp247820
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t242432_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp247820)))
              (__tmp247816
               (let ((__tmp247817
                      (let ((__tmp247818
                             (let ()
                               (declare (not safe))
                               (cons _class-type242433_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp247818))))
                 (declare (not safe))
                 (cons __tmp247817 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp247819
                                                        __tmp247816))))
                                           (declare (not safe))
                                           (cons __tmp247821 __tmp247815))))
                                    (declare (not safe))
                                    (cons '%#call __tmp247814))))
                             (declare (not safe))
                             (cons __tmp247813 '()))))
                      (declare (not safe))
                      (cons __tmp247823 __tmp247812))))
                 (_generate-specializer-impl239128_
                  (lambda (_$t242381_
                           _methods-bind242382_
                           _slots-bind242383_
                           _class-check-bind242384_
                           _struct-check-bind242385_
                           _specializer-impl242386_
                           _lifted-specializer-id242387_
                           _unchecked-specializer-impl242388_)
                    (let ((__tmp247824
                           (let ((__tmp247825
                                  (let ((__tmp247851
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t242381_ '())))
                                        (__tmp247826
                                         (let ((__tmp247827
                                                (let ((__tmp247828
                                                       (let ((__tmp247848
                                                              (let ((__tmp247849
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp247850
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind242385_
                                              _class-check-bind242384_))))
                               (declare (not safe))
                               (foldr1 cons __tmp247850 _slots-bind242383_))))
                        (declare (not safe))
                        (foldr1 cons __tmp247849 _methods-bind242382_)))
                     (__tmp247829
                      (let ((__tmp247830
                             (if (or _lifted-specializer-id242387_
                                     _unchecked-specializer-impl242388_)
                                 (let* ((_$specializer242393_
                                         (let ((__tmp247831
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp247831)))
                                        (__tmp247832
                                         (let ((__tmp247844
                                                (let ((__tmp247845
                                                       (let ((__tmp247847
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer242393_ '())))
                     (__tmp247846
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl242386_ '()))))
                 (declare (not safe))
                 (cons __tmp247847 __tmp247846))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp247845 '())))
                                               (__tmp247833
                                                (let ((__tmp247834
                                                       (let _recur242395_ ((_rest242397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind242385_)))
                 (let* ((_rest242398242406_ _rest242397_)
                        (_else242400242414_
                         (lambda ()
                           (if _lifted-specializer-id242387_
                               (let ((__tmp247835
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id242387_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp247835))
                               _unchecked-specializer-impl242388_)))
                        (_K242402242420_
                         (lambda (_rest242417_ _checkq242418_)
                           (let ((__tmp247836
                                  (let ((__tmp247842
                                         (let ((__tmp247843
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq242418_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp247843)))
                                        (__tmp247837
                                         (let ((__tmp247841
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur242395_
                                                   _rest242417_)))
                                               (__tmp247838
                                                (let ((__tmp247839
                                                       (let ((__tmp247840
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer242393_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp247840))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp247839 '()))))
                                           (declare (not safe))
                                           (cons __tmp247841 __tmp247838))))
                                    (declare (not safe))
                                    (cons __tmp247842 __tmp247837))))
                             (declare (not safe))
                             (cons '%#if __tmp247836)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest242398242406_))
                       (let ((_hd242403242423_
                              (let ()
                                (declare (not safe))
                                (##car _rest242398242406_)))
                             (_tl242404242425_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest242398242406_))))
                         (let* ((_checkq242428_ _hd242403242423_)
                                (_rest242430_ _tl242404242425_))
                           (declare (not safe))
                           (_K242402242420_ _rest242430_ _checkq242428_)))
                       (let () (declare (not safe)) (_else242400242414_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp247834 '()))))
                                           (declare (not safe))
                                           (cons __tmp247844 __tmp247833))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp247832))
                                 _specializer-impl242386_)))
                        (declare (not safe))
                        (cons __tmp247830 '()))))
                 (declare (not safe))
                 (cons __tmp247848 __tmp247829))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp247828))))
                                           (declare (not safe))
                                           (cons __tmp247827 '()))))
                                    (declare (not safe))
                                    (cons __tmp247851 __tmp247826))))
                             (declare (not safe))
                             (cons '%#lambda __tmp247825))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp247824 _stx239122_))))
                 (_generate-specializer-def239129_
                  (lambda (_id242375_
                           _specializer-id242376_
                           _specializer-impl242377_
                           _lifted-specializer-id242378_
                           _unchecked-specializer-impl242379_)
                    (let ((__tmp247852
                           (let ((__tmp247853
                                  (let ((__tmp247854
                                         (let ((__tmp247874
                                                (let ((__tmp247875
                                                       (let ((__tmp247876
                                                              (let ((__tmp247878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id242376_ '())))
                            (__tmp247877
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl242377_ '()))))
                        (declare (not safe))
                        (cons __tmp247878 __tmp247877))))
                 (declare (not safe))
                 (cons '%#define-values __tmp247876))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp247875
                                                   _stx239122_)))
                                               (__tmp247855
                                                (let ((__tmp247862
                                                       (let ((__tmp247863
                                                              (let ((__tmp247864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp247865
                                    (let ((__tmp247872
                                           (let ((__tmp247873
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp247873)))
                                          (__tmp247866
                                           (let ((__tmp247870
                                                  (let ((__tmp247871
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id242375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp247871)))
                                                 (__tmp247867
                                                  (let ((__tmp247868
                                                         (let ((__tmp247869
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id242376_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp247869))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp247868 '()))))
                                             (declare (not safe))
                                             (cons __tmp247870 __tmp247867))))
                                      (declare (not safe))
                                      (cons __tmp247872 __tmp247866))))
                               (declare (not safe))
                               (cons '%#call __tmp247865))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp247864 _stx239122_))))
                 (declare (not safe))
                 (cons __tmp247863 '())))
              (__tmp247856
               (if _lifted-specializer-id242378_
                   (let ((__tmp247857
                          (let ((__tmp247858
                                 (let ((__tmp247859
                                        (let ((__tmp247861
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id242378_
                                                       '())))
                                              (__tmp247860
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl242379_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp247861 __tmp247860))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp247859))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp247858 _stx239122_))))
                     (declare (not safe))
                     (cons __tmp247857 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp247862
                                                          __tmp247856))))
                                           (declare (not safe))
                                           (cons __tmp247874 __tmp247855))))
                                    (declare (not safe))
                                    (cons _stx239122_ __tmp247854))))
                             (declare (not safe))
                             (cons '%#begin __tmp247853))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp247852 _stx239122_)))))
          (let* ((___stx246665246666_ _stx239122_)
                 (_g239132239152_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx246665246666_)))))
            (let ((___kont246667246668_
                   (lambda (_L239196_ _L239197_)
                     (let ((_method-calls239216_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs239217_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_class-type-check239218_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_struct-type-check239219_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_struct-type-assert239220_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty239221_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?239223_
                                 (lambda ()
                                   (if (let ((__tmp247879
                                              (hash-length
                                               _method-calls239216_)))
                                         (declare (not safe))
                                         (fxzero? __tmp247879))
                                       (if (let ((__tmp247880
                                                  (hash-length
                                                   _slot-refs239217_)))
                                             (declare (not safe))
                                             (fxzero? __tmp247880))
                                           (if (let ((__tmp247881
                                                      (hash-length
                                                       _class-type-check239218_)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp247881))
                                               (if (let ((__tmp247882
                                                          (hash-length
                                                           _struct-type-check239219_)))
                                                     (declare (not safe))
                                                     (fxzero? __tmp247882))
                                                   (let ((__tmp247883
                                                          (hash-length
                                                           _struct-type-assert239220_)))
                                                     (declare (not safe))
                                                     (fxzero? __tmp247883))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?239224_
                                 (lambda ()
                                   (let ((_$e242368_
                                          (let ((__tmp247884
                                                 (let ((__tmp247885
                                                        (hash-length
                                                         _struct-type-check239219_)))
                                                   (declare (not safe))
                                                   (fxzero? __tmp247885))))
                                            (declare (not safe))
                                            (not __tmp247884))))
                                     (if _$e242368_
                                         _$e242368_
                                         (let ((__tmp247886
                                                (let ((__tmp247887
                                                       (hash-length
                                                        _struct-type-assert239220_)))
                                                  (declare (not safe))
                                                  (fxzero? __tmp247887))))
                                           (declare (not safe))
                                           (not __tmp247886))))))
                                (_lift-unchecked-specializer?239225_
                                 (lambda ()
                                   (if (let ((__tmp247888
                                              (hash-length
                                               _method-calls239216_)))
                                         (declare (not safe))
                                         (fxzero? __tmp247888))
                                       (if (let ((__tmp247889
                                                  (hash-length
                                                   _slot-refs239217_)))
                                             (declare (not safe))
                                             (fxzero? __tmp247889))
                                           (let ((__tmp247890
                                                  (hash-length
                                                   _class-type-check239218_)))
                                             (declare (not safe))
                                             (fxzero? __tmp247890))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L239196_))
                             (let* ((___stx246579246580_ _L239196_)
                                    (_g239738239756_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx246579246580_)))))
                               (let ((___kont246581246582_
                                      (lambda (_L239792_ _L239793_ _L239794_)
                                        (for-each
                                         (lambda (_g239809239811_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g239809239811_
                                              _L239794_
                                              _method-calls239216_
                                              _slot-refs239217_
                                              _class-type-check239218_
                                              _struct-type-check239219_
                                              _struct-type-assert239220_)))
                                         _L239792_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?239223_))
                                            _stx239122_
                                            (let* ((_specializer-id239820_
                                                    (let* ((_id239814_
                                                            (let ((__tmp247891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L239197_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp247891 '"::specialize")))
                   (_specializer-id239817_
                    (let ((__tmp247892
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx239122_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id239814_ __tmp247892))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id239817_))
              _specializer-id239817_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id239827_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?239225_))
                                                        (let* ((_id239822_
                                                                (let ((__tmp247893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L239197_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp247893
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id239824_
                        (let ((__tmp247894
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx239122_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id239822_ __tmp247894))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id239824_))
                  _lifted-specializer-id239824_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t239829_
                                                    (let ((__tmp247895
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp247895)))
                                                   (_methods239831_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls239216_)))
                                                   (_$methods239835_
                                                    (map (lambda (_id239833_)
                                                           (let ((__tmp247896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id239833_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp247896)))
                 _methods239831_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g247897_
                                                    (for-each
                                                     (lambda (_g239836239839_
                                                              _g239837239841_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls239216_
                                                          _g239836239839_
                                                          _g239837239841_)))
                                                     _methods239831_
                                                     _$methods239835_))
                                                   (_methods-bind239852_
                                                    (map (lambda (_g239844239847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g239845239849_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind239124_
                      _$t239829_
                      _g239844239847_
                      _g239845239849_)))
                 _methods239831_
                 _$methods239835_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots239854_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs239217_)))
                                                   (_$slots239858_
                                                    (map (lambda (_id239856_)
                                                           (let ((__tmp247898
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id239856_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp247898)))
                 _slots239854_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g247899_
                                                    (for-each
                                                     (lambda (_g239859239862_
                                                              _g239860239864_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs239217_
                                                          _g239859239862_
                                                          _g239860239864_)))
                                                     _slots239854_
                                                     _$slots239858_))
                                                   (_slots-bind239875_
                                                    (map (lambda (_g239867239870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g239868239872_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind239125_
                      _$t239829_
                      _g239867239870_
                      _g239868239872_)))
                 _slots239854_
                 _$slots239858_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check239877_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check239218_)))
                                                   (_$class-check239880_
                                                    (map (lambda (_g247900_)
                                                           (let ((__tmp247901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp247901)))
                 _class-check239877_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g247902_
                                                    (for-each
                                                     (lambda (_g239881239884_
                                                              _g239882239886_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check239218_
                                                          _g239881239884_
                                                          _g239882239886_)))
                                                     _class-check239877_
                                                     _$class-check239880_))
                                                   (_class-check-bind239897_
                                                    (map (lambda (_g239889239892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g239890239894_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind239126_
                      _$t239829_
                      _g239889239892_
                      _g239890239894_)))
                 _class-check239877_
                 _$class-check239880_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all239899_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check239219_
                                                       _struct-type-assert239220_)))
                                                   (_struct-check239901_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all239899_)))
                                                   (_$struct-check239904_
                                                    (map (lambda (_g247903_)
                                                           (let ((__tmp247904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp247904)))
                 _struct-check239901_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g247905_
                                                    (for-each
                                                     (lambda (_g239905239908_
                                                              _g239906239910_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all239899_
                                                          _g239905239908_
                                                          _g239906239910_)))
                                                     _struct-check239901_
                                                     _$struct-check239904_))
                                                   (_struct-check-bind239921_
                                                    (map (lambda (_g239913239916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g239914239918_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind239127_
                      _$t239829_
                      _g239913239916_
                      _g239914239918_)))
                 _struct-check239901_
                 _$struct-check239904_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl239932_
                                                    (lambda (_struct-type-check1239923_
                                                             _struct-type-check2239924_)
                                                      (let* ((_specializer-body239930_
                                                              (map (lambda (_g239925239927_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g239925239927_
                                _L239794_
                                _$t239829_
                                _method-calls239216_
                                _slot-refs239217_
                                _class-type-check239218_
                                _struct-type-check1239923_
                                _struct-type-check2239924_)))
                           _L239792_))
                     (__tmp247906
                      (let ((__tmp247907
                             (let ((__tmp247908
                                    (let ()
                                      (declare (not safe))
                                      (cons _L239794_ _L239793_))))
                               (declare (not safe))
                               (cons __tmp247908 _specializer-body239930_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp247907))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp247906 _stx239122_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl239934_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl239932_
                                                       _struct-check-all239899_
                                                       _empty239221_)))
                                                   (_unchecked-specializer-impl239936_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?239224_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl239932_
                                                           _empty239221_
                                                           _struct-check-all239899_))
                                                        '#f))
                                                   (_specializer-impl239938_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl239128_
                                                       _$t239829_
                                                       _methods-bind239852_
                                                       _slots-bind239875_
                                                       _class-check-bind239897_
                                                       _struct-check-bind239921_
                                                       _specializer-impl239934_
                                                       _lifted-specializer-id239827_
                                                       _unchecked-specializer-impl239936_))))
                                              (let ((__tmp247910
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L239197_)))
                                                    (__tmp247909
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id239820_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp247910
                                                 '" => "
                                                 __tmp247909))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def239129_
                                                 _L239197_
                                                 _specializer-id239820_
                                                 _specializer-impl239938_
                                                 _lifted-specializer-id239827_
                                                 _unchecked-specializer-impl239936_))))))
                                     (___kont246583246584_
                                      (lambda () _stx239122_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx246579246580_))
                                     (let ((_e239743239768_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx246579246580_))))
                                       (let ((_tl239745239773_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e239743239768_)))
                                             (_hd239744239771_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e239743239768_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl239745239773_))
                                             (let ((_e239746239776_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl239745239773_))))
                                               (let ((_tl239748239781_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e239746239776_)))
                                                     (_hd239747239779_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e239746239776_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd239747239779_))
                                                     (let ((_e239749239784_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd239747239779_))))
                                                       (let ((_tl239751239789_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e239749239784_)))
                     (_hd239750239787_
                      (let () (declare (not safe)) (##car _e239749239784_))))
                 (___kont246581246582_
                  _tl239748239781_
                  _tl239751239789_
                  _hd239750239787_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont246583246584_))))
                                             (___kont246583246584_))))
                                     (___kont246583246584_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L239196_))
                                 (let* ((_g239944239963_
                                         (lambda (_g239945239960_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g239945239960_))))
                                        (_g239943240314_
                                         (lambda (_g239945239966_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g239945239966_))
                                               (let ((_e239947239968_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g239945239966_))))
                                                 (let ((_hd239948239971_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e239947239968_)))
                                                       (_tl239949239973_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e239947239968_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl239949239973_))
                                                       (let ((_g247911_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl239949239973_ '0))))
                 (begin
                   (let ((_g247912_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g247911_)
                                (##vector-length _g247911_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g247912_ 2)))
                         (error "Context expects 2 values" _g247912_)))
                   (let ((_target239950239976_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g247911_ 0)))
                         (_tl239952239978_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g247911_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl239952239978_))
                         (letrec ((_loop239953239981_
                                   (lambda (_hd239951239984_
                                            _clause239957239986_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd239951239984_))
                                         (let ((_e239954239989_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd239951239984_))))
                                           (let ((_lp-hd239955239992_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e239954239989_)))
                                                 (_lp-tl239956239994_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e239954239989_))))
                                             (let ((__tmp247913
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd239955239992_
                                                            _clause239957239986_))))
                                               (declare (not safe))
                                               (_loop239953239981_
                                                _lp-tl239956239994_
                                                __tmp247913))))
                                         (let ((_clause239958239997_
                                                (reverse _clause239957239986_)))
                                           ((lambda (_L240000_)
                                              (for-each
                                               (lambda (_clause240013_)
                                                 (let* ((___stx246605246606_
                                                         _clause240013_)
                                                        (_g240016240031_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx246605246606_)))))
                                                   (let ((___kont246607246608_
                                                          (lambda (_L240059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L240060_
                           _L240061_)
                    (for-each
                     (lambda (_g240076240078_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g240076240078_
                          _L240061_
                          _method-calls239216_
                          _slot-refs239217_
                          _class-type-check239218_
                          _struct-type-check239219_
                          _struct-type-assert239220_)))
                     _L240059_)))
                 (___kont246609246610_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx246605246606_))
                                                         (let ((_e240021240043_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx246605246606_))))
                   (let ((_tl240023240048_
                          (let ()
                            (declare (not safe))
                            (##cdr _e240021240043_)))
                         (_hd240022240046_
                          (let ()
                            (declare (not safe))
                            (##car _e240021240043_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd240022240046_))
                         (let ((_e240024240051_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd240022240046_))))
                           (let ((_tl240026240056_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e240024240051_)))
                                 (_hd240025240054_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e240024240051_))))
                             (___kont246607246608_
                              _tl240023240048_
                              _tl240026240056_
                              _hd240025240054_)))
                         (___kont246609246610_))))
                 (___kont246609246610_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp247914
                                                      (lambda (_g240083240086_
                                                               _g240084240088_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g240083240086_
                                                                _g240084240088_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp247914
                                                         '()
                                                         _L240000_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?239223_))
                                                  _stx239122_
                                                  (let* ((_specializer-id240097_
                                                          (let* ((_id240091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp247915
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L239197_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp247915 '"::specialize")))
                         (_specializer-id240094_
                          (let ((__tmp247916
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx239122_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id240091_ __tmp247916))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id240094_))
                    _specializer-id240094_))
                 (_lifted-specializer-id240104_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?239225_))
                      (let* ((_id240099_
                              (let ((__tmp247917
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L239197_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp247917
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id240101_
                              (let ((__tmp247918
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx239122_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id240099_
                                 __tmp247918))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id240101_))
                        _lifted-specializer-id240101_)
                      '#f))
                 (_$t240106_
                  (let ((__tmp247919 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp247919)))
                 (_methods240108_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls239216_)))
                 (_$methods240112_
                  (map (lambda (_id240110_)
                         (let ((__tmp247920 (gensym _id240110_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp247920)))
                       _methods240108_))
                 (_g247921_
                  (for-each
                   (lambda (_g240113240116_ _g240114240118_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls239216_
                        _g240113240116_
                        _g240114240118_)))
                   _methods240108_
                   _$methods240112_))
                 (_methods-bind240129_
                  (map (lambda (_g240121240124_ _g240122240126_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind239124_
                            _$t240106_
                            _g240121240124_
                            _g240122240126_)))
                       _methods240108_
                       _$methods240112_))
                 (_slots240131_
                  (let () (declare (not safe)) (hash-keys _slot-refs239217_)))
                 (_$slots240135_
                  (map (lambda (_id240133_)
                         (let ((__tmp247922 (gensym _id240133_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp247922)))
                       _slots240131_))
                 (_g247923_
                  (for-each
                   (lambda (_g240136240139_ _g240137240141_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs239217_
                        _g240136240139_
                        _g240137240141_)))
                   _slots240131_
                   _$slots240135_))
                 (_slots-bind240152_
                  (map (lambda (_g240144240147_ _g240145240149_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind239125_
                            _$t240106_
                            _g240144240147_
                            _g240145240149_)))
                       _slots240131_
                       _$slots240135_))
                 (_class-check240154_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check239218_)))
                 (_$class-check240157_
                  (map (lambda (_g247924_)
                         (let ((__tmp247925 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp247925)))
                       _class-check240154_))
                 (_g247926_
                  (for-each
                   (lambda (_g240158240161_ _g240159240163_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check239218_
                        _g240158240161_
                        _g240159240163_)))
                   _class-check240154_
                   _$class-check240157_))
                 (_class-check-bind240174_
                  (map (lambda (_g240166240169_ _g240167240171_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind239126_
                            _$t240106_
                            _g240166240169_
                            _g240167240171_)))
                       _class-check240154_
                       _$class-check240157_))
                 (_struct-check-all240176_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check239219_
                     _struct-type-assert239220_)))
                 (_struct-check240178_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all240176_)))
                 (_$struct-check240181_
                  (map (lambda (_g247927_)
                         (let ((__tmp247928 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp247928)))
                       _struct-check240178_))
                 (_g247929_
                  (for-each
                   (lambda (_g240182240185_ _g240183240187_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all240176_
                        _g240182240185_
                        _g240183240187_)))
                   _struct-check240178_
                   _$struct-check240181_))
                 (_struct-check-bind240198_
                  (map (lambda (_g240190240193_ _g240191240195_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind239127_
                            _$t240106_
                            _g240190240193_
                            _g240191240195_)))
                       _struct-check240178_
                       _$struct-check240181_))
                 (_make-specializer-impl240305_
                  (lambda (_struct-type-check1240200_
                           _struct-type-check2240201_)
                    (let* ((_specializer-clauses240303_
                            (map (lambda (_clause240203_)
                                   (let* ((___stx246625246626_ _clause240203_)
                                          (_g240206240221_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx246625246626_)))))
                                     (let ((___kont246627246628_
                                            (lambda (_L240249_
                                                     _L240250_
                                                     _L240251_)
                                              (let* ((_body240291_
                                                      (map (lambda (_g240286240288_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g240286240288_
                        _L240251_
                        _$t240106_
                        _method-calls239216_
                        _slot-refs239217_
                        _class-type-check239218_
                        _struct-type-check1240200_
                        _struct-type-check2240201_)))
                   _L240249_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp247930
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L240251_
                                                              _L240250_))))
                                                (declare (not safe))
                                                (cons __tmp247930
                                                      _body240291_))))
                                           (___kont246629246630_
                                            (lambda () _clause240203_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx246625246626_))
                                           (let ((_e240211240233_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx246625246626_))))
                                             (let ((_tl240213240238_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e240211240233_)))
                                                   (_hd240212240236_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e240211240233_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd240212240236_))
                                                   (let ((_e240214240241_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd240212240236_))))
                                                     (let ((_tl240216240246_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e240214240241_)))
                                                           (_hd240215240244_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e240214240241_))))
                                                       (___kont246627246628_
                                                        _tl240213240238_
                                                        _tl240216240246_
                                                        _hd240215240244_)))
                                                   (___kont246629246630_))))
                                           (___kont246629246630_)))))
                                 (let ((__tmp247931
                                        (lambda (_g240295240298_
                                                 _g240296240300_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g240295240298_
                                                  _g240296240300_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp247931 '() _L240000_))))
                           (__tmp247932
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses240303_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp247932 _stx239122_))))
                 (_specializer-impl240307_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl240305_
                     _struct-check-all240176_
                     _empty239221_)))
                 (_unchecked-specializer-impl240309_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?239224_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl240305_
                         _empty239221_
                         _struct-check-all240176_))
                      '#f))
                 (_specializer-impl240311_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl239128_
                     _$t240106_
                     _methods-bind240129_
                     _slots-bind240152_
                     _class-check-bind240174_
                     _struct-check-bind240198_
                     _specializer-impl240307_
                     _lifted-specializer-id240104_
                     _unchecked-specializer-impl240309_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp247934
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L239197_)))
                                                          (__tmp247933
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id240097_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp247934
                                                       '" => "
                                                       __tmp247933))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def239129_
                                                       _L239197_
                                                       _specializer-id240097_
                                                       _specializer-impl240311_
                                                       _lifted-specializer-id240104_
                                                       _unchecked-specializer-impl240309_)))))
                                            _clause239958239997_))))))
                           (let ()
                             (declare (not safe))
                             (_loop239953239981_ _target239950239976_ '())))
                         (let ()
                           (declare (not safe))
                           (_g239944239963_ _g239945239966_))))))
               (let ()
                 (declare (not safe))
                 (_g239944239963_ _g239945239966_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g239944239963_
                                                  _g239945239966_))))))
                                   (declare (not safe))
                                   (_g239943240314_ _L239196_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L239196_))
                                     (let* ((_g240317240347_
                                             (lambda (_g240318240344_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g240318240344_))))
                                            (_g240316241035_
                                             (lambda (_g240318240350_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g240318240350_))
                                                   (let ((_e240322240352_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g240318240350_))))
                                                     (let ((_hd240323240355_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e240322240352_)))
                                                           (_tl240324240357_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e240322240352_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl240324240357_))
                                                           (let ((_e240325240360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl240324240357_))))
                     (let ((_hd240326240363_
                            (let ()
                              (declare (not safe))
                              (##car _e240325240360_)))
                           (_tl240327240365_
                            (let ()
                              (declare (not safe))
                              (##cdr _e240325240360_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd240326240363_))
                           (let ((_e240328240368_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd240326240363_))))
                             (let ((_hd240329240371_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e240328240368_)))
                                   (_tl240330240373_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e240328240368_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd240329240371_))
                                   (let ((_e240331240376_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd240329240371_))))
                                     (let ((_hd240332240379_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e240331240376_)))
                                           (_tl240333240381_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e240331240376_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd240332240379_))
                                           (let ((_e240334240384_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd240332240379_))))
                                             (let ((_hd240335240387_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e240334240384_)))
                                                   (_tl240336240389_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e240334240384_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl240336240389_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl240333240381_))
                                                       (let ((_e240337240392_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl240333240381_))))
                 (let ((_hd240338240395_
                        (let () (declare (not safe)) (##car _e240337240392_)))
                       (_tl240339240397_
                        (let () (declare (not safe)) (##cdr _e240337240392_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl240339240397_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl240330240373_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl240327240365_))
                               (let ((_e240340240400_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl240327240365_))))
                                 (let ((_hd240341240403_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e240340240400_)))
                                       (_tl240342240405_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e240340240400_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl240342240405_))
                                       ((lambda (_L240408_ _L240409_ _L240410_)
                                          (let* ((_g240433240451_
                                                  (lambda (_g240434240448_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g240434240448_))))
                                                 (_g240432240502_
                                                  (lambda (_g240434240454_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g240434240454_))
                                                        (let ((_e240438240456_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g240434240454_))))
                  (let ((_hd240439240459_
                         (let () (declare (not safe)) (##car _e240438240456_)))
                        (_tl240440240461_
                         (let ()
                           (declare (not safe))
                           (##cdr _e240438240456_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl240440240461_))
                        (let ((_e240441240464_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl240440240461_))))
                          (let ((_hd240442240467_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e240441240464_)))
                                (_tl240443240469_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e240441240464_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd240442240467_))
                                (let ((_e240444240472_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd240442240467_))))
                                  (let ((_hd240445240475_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e240444240472_)))
                                        (_tl240446240477_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e240444240472_))))
                                    ((lambda (_L240480_ _L240481_ _L240482_)
                                       (for-each
                                        (lambda (_g240497240499_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g240497240499_
                                             _L240482_
                                             _method-calls239216_
                                             _slot-refs239217_
                                             _class-type-check239218_
                                             _struct-type-check239219_
                                             _struct-type-assert239220_)))
                                        _L240480_))
                                     _tl240443240469_
                                     _tl240446240477_
                                     _hd240445240475_)))
                                (let ()
                                  (declare (not safe))
                                  (_g240433240451_ _g240434240454_)))))
                        (let ()
                          (declare (not safe))
                          (_g240433240451_ _g240434240454_)))))
                (let ()
                  (declare (not safe))
                  (_g240433240451_ _g240434240454_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g240432240502_ _L240409_))
                                          (let* ((_g240505240524_
                                                  (lambda (_g240506240521_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g240506240521_))))
                                                 (_g240504240643_
                                                  (lambda (_g240506240527_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g240506240527_))
                                                        (let ((_e240508240529_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g240506240527_))))
                  (let ((_hd240509240532_
                         (let () (declare (not safe)) (##car _e240508240529_)))
                        (_tl240510240534_
                         (let ()
                           (declare (not safe))
                           (##cdr _e240508240529_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl240510240534_))
                        (let ((_g247935_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl240510240534_
                                  '0))))
                          (begin
                            (let ((_g247936_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g247935_)
                                         (##vector-length _g247935_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g247936_ 2)))
                                  (error "Context expects 2 values"
                                         _g247936_)))
                            (let ((_target240511240537_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g247935_ 0)))
                                  (_tl240513240539_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g247935_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl240513240539_))
                                  (letrec ((_loop240514240542_
                                            (lambda (_hd240512240545_
                                                     _clause240518240547_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd240512240545_))
                                                  (let ((_e240515240550_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd240512240545_))))
                                                    (let ((_lp-hd240516240553_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e240515240550_)))
                                                          (_lp-tl240517240555_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e240515240550_))))
                                                      (let ((__tmp247937
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd240516240553_ _clause240518240547_))))
                (declare (not safe))
                (_loop240514240542_ _lp-tl240517240555_ __tmp247937))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause240519240558_
                                                         (reverse _clause240518240547_)))
                                                    ((lambda (_L240561_)
                                                       (for-each
                                                        (lambda (_clause240574_)
                                                          (let* ((_g240576240591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g240577240588_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g240577240588_))))
                         (_g240575240633_
                          (lambda (_g240577240594_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g240577240594_))
                                (let ((_e240581240596_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g240577240594_))))
                                  (let ((_hd240582240599_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e240581240596_)))
                                        (_tl240583240601_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e240581240596_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd240582240599_))
                                        (let ((_e240584240604_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd240582240599_))))
                                          (let ((_hd240585240607_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e240584240604_)))
                                                (_tl240586240609_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e240584240604_))))
                                            ((lambda (_L240612_
                                                      _L240613_
                                                      _L240614_)
                                               (for-each
                                                (lambda (_g240628240630_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g240628240630_
                                                     _L240614_
                                                     _method-calls239216_
                                                     _slot-refs239217_
                                                     _class-type-check239218_
                                                     _struct-type-check239219_
                                                     _struct-type-assert239220_)))
                                                _L240612_))
                                             _tl240583240601_
                                             _tl240586240609_
                                             _hd240585240607_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g240576240591_ _g240577240594_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g240576240591_ _g240577240594_))))))
                    (declare (not safe))
                    (_g240575240633_ _clause240574_)))
                (let ((__tmp247938
                       (lambda (_g240635240638_ _g240636240640_)
                         (let ()
                           (declare (not safe))
                           (cons _g240635240638_ _g240636240640_)))))
                  (declare (not safe))
                  (foldr1 __tmp247938 '() _L240561_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause240519240558_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop240514240542_
                                       _target240511240537_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g240505240524_ _g240506240527_))))))
                        (let ()
                          (declare (not safe))
                          (_g240505240524_ _g240506240527_)))))
                (let ()
                  (declare (not safe))
                  (_g240505240524_ _g240506240527_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g240504240643_ _L240408_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?239223_))
                                              _stx239122_
                                              (let* ((_specializer-id240652_
                                                      (let* ((_id240646_
                                                              (let ((__tmp247939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L239197_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp247939 '"::specialize")))
                     (_specializer-id240649_
                      (let ((__tmp247940
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx239122_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id240646_ __tmp247940))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id240649_))
                _specializer-id240649_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id240659_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?239225_))
                                                          (let* ((_id240654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp247941
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L239197_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp247941
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id240656_
                          (let ((__tmp247942
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx239122_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id240654_ __tmp247942))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id240656_))
                    _lifted-specializer-id240656_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t240661_
                                                      (let ((__tmp247943
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp247943)))
                                                     (_methods240663_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls239216_)))
                                                     (_$methods240667_
                                                      (map (lambda (_id240665_)
                                                             (let ((__tmp247944
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id240665_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp247944)))
                   _methods240663_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g247945_
                                                      (for-each
                                                       (lambda (_g240668240671_
                                                                _g240669240673_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls239216_
                                                            _g240668240671_
                                                            _g240669240673_)))
                                                       _methods240663_
                                                       _$methods240667_))
                                                     (_methods-bind240684_
                                                      (map (lambda (_g240676240679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g240677240681_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind239124_
                        _$t240661_
                        _g240676240679_
                        _g240677240681_)))
                   _methods240663_
                   _$methods240667_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots240686_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs239217_)))
                                                     (_$slots240690_
                                                      (map (lambda (_id240688_)
                                                             (let ((__tmp247946
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id240688_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp247946)))
                   _slots240686_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g247947_
                                                      (for-each
                                                       (lambda (_g240691240694_
                                                                _g240692240696_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs239217_
                                                            _g240691240694_
                                                            _g240692240696_)))
                                                       _slots240686_
                                                       _$slots240690_))
                                                     (_slots-bind240707_
                                                      (map (lambda (_g240699240702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g240700240704_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind239125_
                        _$t240661_
                        _g240699240702_
                        _g240700240704_)))
                   _slots240686_
                   _$slots240690_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check240709_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check239218_)))
                                                     (_$class-check240712_
                                                      (map (lambda (_g247948_)
                                                             (let ((__tmp247949
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp247949)))
                   _class-check240709_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g247950_
                                                      (for-each
                                                       (lambda (_g240713240716_
                                                                _g240714240718_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check239218_
                                                            _g240713240716_
                                                            _g240714240718_)))
                                                       _class-check240709_
                                                       _$class-check240712_))
                                                     (_class-check-bind240729_
                                                      (map (lambda (_g240721240724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g240722240726_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind239126_
                        _$t240661_
                        _g240721240724_
                        _g240722240726_)))
                   _class-check240709_
                   _$class-check240712_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all240731_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check239219_
                                                         _struct-type-assert239220_)))
                                                     (_struct-check240733_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all240731_)))
                                                     (_$struct-check240736_
                                                      (map (lambda (_g247951_)
                                                             (let ((__tmp247952
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp247952)))
                   _struct-check240733_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g247953_
                                                      (for-each
                                                       (lambda (_g240737240740_
                                                                _g240738240742_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all240731_
                                                            _g240737240740_
                                                            _g240738240742_)))
                                                       _struct-check240733_
                                                       _$struct-check240736_))
                                                     (_struct-check-bind240753_
                                                      (map (lambda (_g240745240748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g240746240750_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind239127_
                        _$t240661_
                        _g240745240748_
                        _g240746240750_)))
                   _struct-check240733_
                   _$struct-check240736_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr240852_
                                                      (lambda (_struct-type-check1240755_
                                                               _struct-type-check2240756_)
                                                        (let* ((_g240758240776_
                                                                (lambda (_g240759240773_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g240759240773_))))
                       (_g240757240849_
                        (lambda (_g240759240779_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g240759240779_))
                              (let ((_e240763240781_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g240759240779_))))
                                (let ((_hd240764240784_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e240763240781_)))
                                      (_tl240765240786_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e240763240781_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl240765240786_))
                                      (let ((_e240766240789_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl240765240786_))))
                                        (let ((_hd240767240792_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e240766240789_)))
                                              (_tl240768240794_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e240766240789_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd240767240792_))
                                              (let ((_e240769240797_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd240767240792_))))
                                                (let ((_hd240770240800_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e240769240797_)))
                                                      (_tl240771240802_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e240769240797_))))
                                                  ((lambda (_L240805_
                                                            _L240806_
                                                            _L240807_)
                                                     (let* ((_body240847_
                                                             (map (lambda (_g240842240844_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g240842240844_
                               _L240807_
                               _$t240661_
                               _method-calls239216_
                               _slot-refs239217_
                               _class-type-check239218_
                               _struct-type-check1240755_
                               _struct-type-check2240756_)))
                          _L240805_))
                    (__tmp247954
                     (let ((__tmp247955
                            (let ((__tmp247956
                                   (let ()
                                     (declare (not safe))
                                     (cons _L240807_ _L240806_))))
                              (declare (not safe))
                              (cons __tmp247956 _body240847_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp247955))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp247954 _L240409_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl240768240794_
                                                   _tl240771240802_
                                                   _hd240770240800_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g240758240776_
                                                 _g240759240779_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g240758240776_ _g240759240779_)))))
                              (let ()
                                (declare (not safe))
                                (_g240758240776_ _g240759240779_))))))
                  (declare (not safe))
                  (_g240757240849_ _L240409_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr241013_
                                                      (lambda (_struct-type-check1240854_
                                                               _struct-type-check2240855_)
                                                        (let* ((_g240857240876_
                                                                (lambda (_g240858240873_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g240858240873_))))
                       (_g240856241010_
                        (lambda (_g240858240879_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g240858240879_))
                              (let ((_e240860240881_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g240858240879_))))
                                (let ((_hd240861240884_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e240860240881_)))
                                      (_tl240862240886_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e240860240881_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl240862240886_))
                                      (let ((_g247957_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl240862240886_
                                                '0))))
                                        (begin
                                          (let ((_g247958_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g247957_)
                                                       (##vector-length
                                                        _g247957_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g247958_ 2)))
                                                (error "Context expects 2 values"
                                                       _g247958_)))
                                          (let ((_target240863240889_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g247957_ 0)))
                                                (_tl240865240891_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g247957_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl240865240891_))
                                                (letrec ((_loop240866240894_
                                                          (lambda (_hd240864240897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause240870240899_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd240864240897_))
                        (let ((_e240867240902_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd240864240897_))))
                          (let ((_lp-hd240868240905_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e240867240902_)))
                                (_lp-tl240869240907_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e240867240902_))))
                            (let ((__tmp247959
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd240868240905_
                                           _clause240870240899_))))
                              (declare (not safe))
                              (_loop240866240894_
                               _lp-tl240869240907_
                               __tmp247959))))
                        (let ((_clause240871240910_
                               (reverse _clause240870240899_)))
                          ((lambda (_L240913_)
                             (let* ((_clauses241008_
                                     (map (lambda (_clause240928_)
                                            (let* ((___stx246645246646_
                                                    _clause240928_)
                                                   (_g240931240946_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx246645246646_)))))
                                              (let ((___kont246647246648_
                                                     (lambda (_L240974_
                                                              _L240975_
                                                              _L240976_)
                                                       (let* ((_body240996_
                                                               (map (lambda (_g240991240993_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g240991240993_
                                 _L240976_
                                 _$t240661_
                                 _method-calls239216_
                                 _slot-refs239217_
                                 _class-type-check239218_
                                 _struct-type-check1240854_
                                 _struct-type-check2240855_)))
                            _L240974_))
                      (__tmp247960
                       (let ()
                         (declare (not safe))
                         (cons _L240976_ _L240975_))))
                 (declare (not safe))
                 (cons __tmp247960 _body240996_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont246649246650_
                                                     (lambda ()
                                                       _clause240928_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx246645246646_))
                                                    (let ((_e240936240958_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx246645246646_))))
                                                      (let ((_tl240938240963_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e240936240958_)))
                    (_hd240937240961_
                     (let () (declare (not safe)) (##car _e240936240958_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd240937240961_))
                    (let ((_e240939240966_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd240937240961_))))
                      (let ((_tl240941240971_
                             (let ()
                               (declare (not safe))
                               (##cdr _e240939240966_)))
                            (_hd240940240969_
                             (let ()
                               (declare (not safe))
                               (##car _e240939240966_))))
                        (___kont246647246648_
                         _tl240938240963_
                         _tl240941240971_
                         _hd240940240969_)))
                    (___kont246649246650_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont246649246650_)))))
                                          (let ((__tmp247961
                                                 (lambda (_g241000241003_
                                                          _g241001241005_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g241000241003_
                                                           _g241001241005_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp247961
                                                    '()
                                                    _L240913_))))
                                    (__tmp247962
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses241008_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp247962 _L240408_)))
                           _clause240871240910_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop240866240894_
                                                     _target240863240889_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g240857240876_
                                                   _g240858240879_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g240857240876_ _g240858240879_)))))
                              (let ()
                                (declare (not safe))
                                (_g240857240876_ _g240858240879_))))))
                  (declare (not safe))
                  (_g240856241010_ _L240408_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl241018_
                                                      (lambda (_specializer-lambda-expr241015_
                                                               _specializer-case-lambda-expr241016_)
                                                        (let ((__tmp247963
                                                               (let ((__tmp247964
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp247966
                                     (let ((__tmp247967
                                            (let ((__tmp247969
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L240410_ '())))
                                                  (__tmp247968
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr241015_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp247969 __tmp247968))))
                                       (declare (not safe))
                                       (cons __tmp247967 '())))
                                    (__tmp247965
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr241016_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp247966 __tmp247965))))
                         (declare (not safe))
                         (cons '%#let-values __tmp247964))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp247963 _stx239122_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr241020_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr240852_
                                                         _struct-check-all240731_
                                                         _empty239221_)))
                                                     (_specializer-case-lambda-expr241022_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr241013_
                                                         _struct-check-all240731_
                                                         _empty239221_)))
                                                     (_specializer-impl241024_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl241018_
                                                         _specializer-lambda-expr241020_
                                                         _specializer-case-lambda-expr241022_)))
                                                     (_unchecked-specializer-lambda-expr241026_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?239224_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr240852_
                                                             _empty239221_
                                                             _struct-check-all240731_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr241028_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?239224_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr241013_
                                                             _empty239221_
                                                             _struct-check-all240731_))
                                                          '#f))
                                                     (_unchecked-specializer-impl241030_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?239224_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl241018_
                                                             _unchecked-specializer-lambda-expr241026_
                                                             _unchecked-specializer-case-lambda-expr241028_))
                                                          '#f))
                                                     (_specializer-impl241032_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl239128_
                                                         _$t240661_
                                                         _methods-bind240684_
                                                         _slots-bind240707_
                                                         _class-check-bind240729_
                                                         _struct-check-bind240753_
                                                         _specializer-impl241024_
                                                         _lifted-specializer-id240659_
                                                         _unchecked-specializer-impl241030_))))
                                                (let ((__tmp247971
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L239197_)))
                                                      (__tmp247970
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id240652_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp247971
                                                   '" => "
                                                   __tmp247970))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def239129_
                                                   _L239197_
                                                   _specializer-id240652_
                                                   _specializer-impl241032_
                                                   _lifted-specializer-id240659_
                                                   _unchecked-specializer-impl241030_)))))
                                        _hd240341240403_
                                        _hd240338240395_
                                        _hd240335240387_)
                                       (let ()
                                         (declare (not safe))
                                         (_g240317240347_ _g240318240350_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g240317240347_ _g240318240350_)))
                           (let ()
                             (declare (not safe))
                             (_g240317240347_ _g240318240350_)))
                       (let ()
                         (declare (not safe))
                         (_g240317240347_ _g240318240350_)))))
               (let () (declare (not safe)) (_g240317240347_ _g240318240350_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g240317240347_
                                                      _g240318240350_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g240317240347_
                                              _g240318240350_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g240317240347_ _g240318240350_)))))
                           (let ()
                             (declare (not safe))
                             (_g240317240347_ _g240318240350_)))))
                   (let ()
                     (declare (not safe))
                     (_g240317240347_ _g240318240350_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g240317240347_
                                                      _g240318240350_))))))
                                       (declare (not safe))
                                       (_g240316241035_ _L239196_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L239196_))
                                         (let* ((_g241038241091_
                                                 (lambda (_g241039241088_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g241039241088_))))
                                                (_g241037242363_
                                                 (lambda (_g241039241094_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g241039241094_))
                                                       (let ((_e241045241096_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g241039241094_))))
                 (let ((_hd241046241099_
                        (let () (declare (not safe)) (##car _e241045241096_)))
                       (_tl241047241101_
                        (let () (declare (not safe)) (##cdr _e241045241096_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd241046241099_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd241046241099_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl241047241101_))
                               (let ((_e241048241104_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl241047241101_))))
                                 (let ((_hd241049241107_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e241048241104_)))
                                       (_tl241050241109_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e241048241104_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd241049241107_))
                                       (let ((_e241051241112_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd241049241107_))))
                                         (let ((_hd241052241115_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e241051241112_)))
                                               (_tl241053241117_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e241051241112_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd241052241115_))
                                               (let ((_e241054241120_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd241052241115_))))
                                                 (let ((_hd241055241123_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e241054241120_)))
                                                       (_tl241056241125_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e241054241120_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd241055241123_))
                                                       (let ((_e241057241128_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd241055241123_))))
                 (let ((_hd241058241131_
                        (let () (declare (not safe)) (##car _e241057241128_)))
                       (_tl241059241133_
                        (let () (declare (not safe)) (##cdr _e241057241128_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl241059241133_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl241056241125_))
                           (let ((_e241060241136_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl241056241125_))))
                             (let ((_hd241061241139_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e241060241136_)))
                                   (_tl241062241141_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e241060241136_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd241061241139_))
                                   (let ((_e241063241144_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd241061241139_))))
                                     (let ((_hd241064241147_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e241063241144_)))
                                           (_tl241065241149_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e241063241144_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd241064241147_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd241064241147_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl241065241149_))
                                                   (let ((_e241066241152_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl241065241149_))))
                                                     (let ((_hd241067241155_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e241066241152_)))
                                                           (_tl241068241157_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e241066241152_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd241067241155_))
                                                           (let ((_e241069241160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd241067241155_))))
                     (let ((_hd241070241163_
                            (let ()
                              (declare (not safe))
                              (##car _e241069241160_)))
                           (_tl241071241165_
                            (let ()
                              (declare (not safe))
                              (##cdr _e241069241160_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd241070241163_))
                           (let ((_e241072241168_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd241070241163_))))
                             (let ((_hd241073241171_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e241072241168_)))
                                   (_tl241074241173_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e241072241168_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd241073241171_))
                                   (let ((_e241075241176_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd241073241171_))))
                                     (let ((_hd241076241179_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e241075241176_)))
                                           (_tl241077241181_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e241075241176_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl241077241181_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl241074241173_))
                                               (let ((_e241078241184_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl241074241173_))))
                                                 (let ((_hd241079241187_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e241078241184_)))
                                                       (_tl241080241189_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e241078241184_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl241080241189_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl241071241165_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl241068241157_))
                       (let ((_e241081241192_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl241068241157_))))
                         (let ((_hd241082241195_
                                (let ()
                                  (declare (not safe))
                                  (##car _e241081241192_)))
                               (_tl241083241197_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e241081241192_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl241083241197_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl241062241141_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl241053241117_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl241050241109_))
                                           (let ((_e241084241200_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl241050241109_))))
                                             (let ((_hd241085241203_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e241084241200_)))
                                                   (_tl241086241205_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e241084241200_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl241086241205_))
                                                   ((lambda (_L241208_
                                                             _L241209_
                                                             _L241210_
                                                             _L241211_
                                                             _L241212_)
                                                      (let* ((_g241251241313_
                                                              (lambda (_g241252241310_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g241252241310_))))
                     (_g241250242360_
                      (lambda (_g241252241316_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g241252241316_))
                            (let ((_e241258241318_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g241252241316_))))
                              (let ((_hd241259241321_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241258241318_)))
                                    (_tl241260241323_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241258241318_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd241259241321_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd241259241321_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl241260241323_))
                                            (let ((_e241261241326_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl241260241323_))))
                                              (let ((_hd241262241329_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241261241326_)))
                                                    (_tl241263241331_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241261241326_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl241263241331_))
                                                    (let ((_e241264241334_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl241263241331_))))
                                                      (let ((_hd241265241337_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e241264241334_)))
                    (_tl241266241339_
                     (let () (declare (not safe)) (##cdr _e241264241334_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd241265241337_))
                    (let ((_e241267241342_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd241265241337_))))
                      (let ((_hd241268241345_
                             (let ()
                               (declare (not safe))
                               (##car _e241267241342_)))
                            (_tl241269241347_
                             (let ()
                               (declare (not safe))
                               (##cdr _e241267241342_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd241268241345_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd241268241345_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl241269241347_))
                                    (let ((_e241270241350_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl241269241347_))))
                                      (let ((_hd241271241353_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e241270241350_)))
                                            (_tl241272241355_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e241270241350_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd241271241353_))
                                            (let ((_e241273241358_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd241271241353_))))
                                              (let ((_hd241274241361_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241273241358_)))
                                                    (_tl241275241363_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241273241358_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd241274241361_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd241274241361_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl241275241363_))
                                                            (let ((_e241276241366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl241275241363_))))
                      (let ((_hd241277241369_
                             (let ()
                               (declare (not safe))
                               (##car _e241276241366_)))
                            (_tl241278241371_
                             (let ()
                               (declare (not safe))
                               (##cdr _e241276241366_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241278241371_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241272241355_))
                                (let ((_e241279241374_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241272241355_))))
                                  (let ((_hd241280241377_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241279241374_)))
                                        (_tl241281241379_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241279241374_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd241280241377_))
                                        (let ((_e241282241382_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd241280241377_))))
                                          (let ((_hd241283241385_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e241282241382_)))
                                                (_tl241284241387_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e241282241382_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd241283241385_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd241283241385_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl241284241387_))
                                                        (let ((_e241285241390_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl241284241387_))))
                  (let ((_hd241286241393_
                         (let () (declare (not safe)) (##car _e241285241390_)))
                        (_tl241287241395_
                         (let ()
                           (declare (not safe))
                           (##cdr _e241285241390_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl241287241395_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241281241379_))
                            (let ((_e241288241398_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241281241379_))))
                              (let ((_hd241289241401_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241288241398_)))
                                    (_tl241290241403_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241288241398_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd241289241401_))
                                    (let ((_e241291241406_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd241289241401_))))
                                      (let ((_hd241292241409_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e241291241406_)))
                                            (_tl241293241411_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e241291241406_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd241292241409_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd241292241409_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl241293241411_))
                                                    (let ((_e241294241414_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl241293241411_))))
                                                      (let ((_hd241295241417_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e241294241414_)))
                    (_tl241296241419_
                     (let () (declare (not safe)) (##cdr _e241294241414_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl241296241419_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl241290241403_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl241290241403_))
                                  '1)
                            (let ((_g247972_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl241290241403_
                                      '1))))
                              (begin
                                (let ((_g247973_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g247972_)
                                             (##vector-length _g247972_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g247973_ 2)))
                                      (error "Context expects 2 values"
                                             _g247973_)))
                                (let ((_target241297241422_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g247972_ 0)))
                                      (_tl241299241424_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g247972_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl241299241424_))
                                      (let ((_e241306241427_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl241299241424_))))
                                        (let ((_hd241307241430_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241306241427_)))
                                              (_tl241308241432_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241306241427_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl241308241432_))
                                              (letrec ((_loop241300241435_
                                                        (lambda (_hd241298241438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref241304241440_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd241298241438_))
                      (let ((_e241301241443_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd241298241438_))))
                        (let ((_lp-hd241302241446_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241301241443_)))
                              (_lp-tl241303241448_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241301241443_))))
                          (let ((__tmp247974
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd241302241446_
                                         _kw-ref241304241440_))))
                            (declare (not safe))
                            (_loop241300241435_
                             _lp-tl241303241448_
                             __tmp247974))))
                      (let ((_kw-ref241305241451_
                             (reverse _kw-ref241304241440_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241266241339_))
                            ((lambda (_L241454_
                                      _L241455_
                                      _L241456_
                                      _L241457_
                                      _L241458_)
                               (let* ((_kw-count241509_
                                       (length (let ((__tmp247975
                                                      (lambda (_g241501241504_
                                                               _g241502241506_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g241501241504_
                                                                _g241502241506_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp247975
                                                         '()
                                                         _L241455_))))
                                      (_self-index241511_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count241509_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L241210_))
                                     (let* ((_g241514241528_
                                             (lambda (_g241515241525_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g241515241525_))))
                                            (_g241513241699_
                                             (lambda (_g241515241531_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g241515241531_))
                                                   (let ((_e241518241533_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g241515241531_))))
                                                     (let ((_hd241519241536_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e241518241533_)))
                                                           (_tl241520241538_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e241518241533_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl241520241538_))
                                                           (let ((_e241521241541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl241520241538_))))
                     (let ((_hd241522241544_
                            (let ()
                              (declare (not safe))
                              (##car _e241521241541_)))
                           (_tl241523241546_
                            (let ()
                              (declare (not safe))
                              (##cdr _e241521241541_))))
                       ((lambda (_L241549_ _L241550_)
                          (let ((_self241566_
                                 (list-ref _L241550_ _self-index241511_)))
                            (for-each
                             (lambda (_g241567241569_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g241567241569_
                                  _self241566_
                                  _method-calls239216_
                                  _slot-refs239217_
                                  _class-type-check239218_
                                  _struct-type-check239219_
                                  _struct-type-assert239220_)))
                             _L241549_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?239223_))
                                _stx239122_
                                (let* ((_specializer-id241578_
                                        (let* ((_id241572_
                                                (let ((__tmp247976
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L239197_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp247976
                                                   '"::specialize")))
                                               (_specializer-id241575_
                                                (let ((__tmp247977
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx239122_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id241572_
                                                   __tmp247977))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id241575_))
                                          _specializer-id241575_))
                                       (_lifted-specializer-id241585_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?239225_))
                                            (let* ((_id241580_
                                                    (let ((__tmp247978
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L239197_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp247978
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id241582_
                                                    (let ((__tmp247979
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx239122_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id241580_
                                                       __tmp247979))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id241582_))
                                              _lifted-specializer-id241582_)
                                            '#f))
                                       (_$t241587_
                                        (let ((__tmp247980 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp247980)))
                                       (_methods241589_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls239216_)))
                                       (_$methods241593_
                                        (map (lambda (_id241591_)
                                               (let ((__tmp247981
                                                      (gensym _id241591_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp247981)))
                                             _methods241589_))
                                       (_g247982_
                                        (for-each
                                         (lambda (_g241594241597_
                                                  _g241595241599_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls239216_
                                              _g241594241597_
                                              _g241595241599_)))
                                         _methods241589_
                                         _$methods241593_))
                                       (_methods-bind241610_
                                        (map (lambda (_g241602241605_
                                                      _g241603241607_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind239124_
                                                  _$t241587_
                                                  _g241602241605_
                                                  _g241603241607_)))
                                             _methods241589_
                                             _$methods241593_))
                                       (_slots241612_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs239217_)))
                                       (_$slots241616_
                                        (map (lambda (_id241614_)
                                               (let ((__tmp247983
                                                      (gensym _id241614_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp247983)))
                                             _slots241612_))
                                       (_g247984_
                                        (for-each
                                         (lambda (_g241617241620_
                                                  _g241618241622_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs239217_
                                              _g241617241620_
                                              _g241618241622_)))
                                         _slots241612_
                                         _$slots241616_))
                                       (_slots-bind241633_
                                        (map (lambda (_g241625241628_
                                                      _g241626241630_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind239125_
                                                  _$t241587_
                                                  _g241625241628_
                                                  _g241626241630_)))
                                             _slots241612_
                                             _$slots241616_))
                                       (_class-check241635_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check239218_)))
                                       (_$class-check241638_
                                        (map (lambda (_g247985_)
                                               (let ((__tmp247986
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp247986)))
                                             _class-check241635_))
                                       (_g247987_
                                        (for-each
                                         (lambda (_g241639241642_
                                                  _g241640241644_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check239218_
                                              _g241639241642_
                                              _g241640241644_)))
                                         _class-check241635_
                                         _$class-check241638_))
                                       (_class-check-bind241655_
                                        (map (lambda (_g241647241650_
                                                      _g241648241652_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind239126_
                                                  _$t241587_
                                                  _g241647241650_
                                                  _g241648241652_)))
                                             _class-check241635_
                                             _$class-check241638_))
                                       (_struct-check-all241657_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check239219_
                                           _struct-type-assert239220_)))
                                       (_struct-check241659_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all241657_)))
                                       (_$struct-check241662_
                                        (map (lambda (_g247988_)
                                               (let ((__tmp247989
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp247989)))
                                             _struct-check241659_))
                                       (_g247990_
                                        (for-each
                                         (lambda (_g241663241666_
                                                  _g241664241668_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all241657_
                                              _g241663241666_
                                              _g241664241668_)))
                                         _struct-check241659_
                                         _$struct-check241662_))
                                       (_struct-check-bind241679_
                                        (map (lambda (_g241671241674_
                                                      _g241672241676_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind239127_
                                                  _$t241587_
                                                  _g241671241674_
                                                  _g241672241676_)))
                                             _struct-check241659_
                                             _$struct-check241662_))
                                       (_make-specializer-impl241690_
                                        (lambda (_struct-type-check1241681_
                                                 _struct-type-check2241682_)
                                          (let* ((_specializer-body241688_
                                                  (map (lambda (_g241683241685_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g241683241685_
                                                            _self241566_
                                                            _$t241587_
                                                            _method-calls239216_
                                                            _slot-refs239217_
                                                            _class-type-check239218_
                                                            _struct-type-check1241681_
                                                            _struct-type-check2241682_)))
                                                       _L241549_))
                                                 (__tmp247991
                                                  (let ((__tmp247992
                                                         (let ((__tmp247994
                                                                (let ((__tmp247995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp248007
                                      (let ()
                                        (declare (not safe))
                                        (cons _L241212_ '())))
                                     (__tmp247996
                                      (let ((__tmp247997
                                             (let ((__tmp247998
                                                    (let ((__tmp248000
                                                           (let ((__tmp248001
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp248006
                                 (let ()
                                   (declare (not safe))
                                   (cons _L241211_ '())))
                                (__tmp248002
                                 (let ((__tmp248003
                                        (let ((__tmp248004
                                               (let ((__tmp248005
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L241550_
                                                              _specializer-body241688_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp248005))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp248004
                                           _L241210_))))
                                   (declare (not safe))
                                   (cons __tmp248003 '()))))
                            (declare (not safe))
                            (cons __tmp248006 __tmp248002))))
                     (declare (not safe))
                     (cons __tmp248001 '())))
                  (__tmp247999
                   (let () (declare (not safe)) (cons _L241209_ '()))))
              (declare (not safe))
              (cons __tmp248000 __tmp247999))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp247998))))
                                        (declare (not safe))
                                        (cons __tmp247997 '()))))
                                 (declare (not safe))
                                 (cons __tmp248007 __tmp247996))))
                          (declare (not safe))
                          (cons __tmp247995 '())))
                       (__tmp247993
                        (let () (declare (not safe)) (cons _L241208_ '()))))
                   (declare (not safe))
                   (cons __tmp247994 __tmp247993))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp247992))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp247991
                                             _stx239122_))))
                                       (_specializer-impl241692_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl241690_
                                           _struct-check-all241657_
                                           _empty239221_)))
                                       (_unchecked-specializer-impl241694_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?239224_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl241690_
                                               _empty239221_
                                               _struct-check-all241657_))
                                            '#f))
                                       (_specializer-impl241696_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl239128_
                                           _$t241587_
                                           _methods-bind241610_
                                           _slots-bind241633_
                                           _class-check-bind241655_
                                           _struct-check-bind241679_
                                           _specializer-impl241692_
                                           _lifted-specializer-id241585_
                                           _unchecked-specializer-impl241694_))))
                                  (let ((__tmp248009
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L239197_)))
                                        (__tmp248008
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id241578_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp248009
                                     '" => "
                                     __tmp248008))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def239129_
                                     _L239197_
                                     _specializer-id241578_
                                     _specializer-impl241696_
                                     _lifted-specializer-id241585_
                                     _unchecked-specializer-impl241694_))))))
                        _tl241523241546_
                        _hd241522241544_)))
                   (let ()
                     (declare (not safe))
                     (_g241514241528_ _g241515241531_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g241514241528_
                                                      _g241515241531_))))))
                                       (declare (not safe))
                                       (_g241513241699_ _L241210_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L241210_))
                                         (let* ((_g241702241732_
                                                 (lambda (_g241703241729_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g241703241729_))))
                                                (_g241701242357_
                                                 (lambda (_g241703241735_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g241703241735_))
                                                       (let ((_e241707241737_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g241703241735_))))
                 (let ((_hd241708241740_
                        (let () (declare (not safe)) (##car _e241707241737_)))
                       (_tl241709241742_
                        (let () (declare (not safe)) (##cdr _e241707241737_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl241709241742_))
                       (let ((_e241710241745_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl241709241742_))))
                         (let ((_hd241711241748_
                                (let ()
                                  (declare (not safe))
                                  (##car _e241710241745_)))
                               (_tl241712241750_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e241710241745_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd241711241748_))
                               (let ((_e241713241753_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd241711241748_))))
                                 (let ((_hd241714241756_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e241713241753_)))
                                       (_tl241715241758_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e241713241753_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd241714241756_))
                                       (let ((_e241716241761_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd241714241756_))))
                                         (let ((_hd241717241764_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e241716241761_)))
                                               (_tl241718241766_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e241716241761_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd241717241764_))
                                               (let ((_e241719241769_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd241717241764_))))
                                                 (let ((_hd241720241772_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e241719241769_)))
                                                       (_tl241721241774_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e241719241769_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl241721241774_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl241718241766_))
                                                           (let ((_e241722241777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl241718241766_))))
                     (let ((_hd241723241780_
                            (let ()
                              (declare (not safe))
                              (##car _e241722241777_)))
                           (_tl241724241782_
                            (let ()
                              (declare (not safe))
                              (##cdr _e241722241777_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl241724241782_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl241715241758_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl241712241750_))
                                   (let ((_e241725241785_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl241712241750_))))
                                     (let ((_hd241726241788_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e241725241785_)))
                                           (_tl241727241790_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e241725241785_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl241727241790_))
                                           ((lambda (_L241793_
                                                     _L241794_
                                                     _L241795_)
                                              (let* ((_g241818241832_
                                                      (lambda (_g241819241829_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g241819241829_))))
                                                     (_g241817241873_
                                                      (lambda (_g241819241835_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g241819241835_))
                                                            (let ((_e241822241837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g241819241835_))))
                      (let ((_hd241823241840_
                             (let ()
                               (declare (not safe))
                               (##car _e241822241837_)))
                            (_tl241824241842_
                             (let ()
                               (declare (not safe))
                               (##cdr _e241822241837_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241824241842_))
                            (let ((_e241825241845_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241824241842_))))
                              (let ((_hd241826241848_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241825241845_)))
                                    (_tl241827241850_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241825241845_))))
                                ((lambda (_L241853_ _L241854_)
                                   (let ((_self241867_
                                          (list-ref
                                           _L241854_
                                           _self-index241511_)))
                                     (for-each
                                      (lambda (_g241868241870_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g241868241870_
                                           _self241867_
                                           _method-calls239216_
                                           _slot-refs239217_
                                           _class-type-check239218_
                                           _struct-type-check239219_
                                           _struct-type-assert239220_)))
                                      _L241853_)))
                                 _tl241827241850_
                                 _hd241826241848_)))
                            (let ()
                              (declare (not safe))
                              (_g241818241832_ _g241819241835_)))))
                    (let ()
                      (declare (not safe))
                      (_g241818241832_ _g241819241835_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g241817241873_ _L241794_))
                                              (let* ((_g241876241895_
                                                      (lambda (_g241877241892_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g241877241892_))))
                                                     (_g241875242000_
                                                      (lambda (_g241877241898_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g241877241898_))
                                                            (let ((_e241879241900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g241877241898_))))
                      (let ((_hd241880241903_
                             (let ()
                               (declare (not safe))
                               (##car _e241879241900_)))
                            (_tl241881241905_
                             (let ()
                               (declare (not safe))
                               (##cdr _e241879241900_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl241881241905_))
                            (let ((_g248010_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl241881241905_
                                      '0))))
                              (begin
                                (let ((_g248011_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g248010_)
                                             (##vector-length _g248010_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g248011_ 2)))
                                      (error "Context expects 2 values"
                                             _g248011_)))
                                (let ((_target241882241908_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g248010_ 0)))
                                      (_tl241884241910_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g248010_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl241884241910_))
                                      (letrec ((_loop241885241913_
                                                (lambda (_hd241883241916_
                                                         _clause241889241918_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd241883241916_))
                                                      (let ((_e241886241921_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd241883241916_))))
                (let ((_lp-hd241887241924_
                       (let () (declare (not safe)) (##car _e241886241921_)))
                      (_lp-tl241888241926_
                       (let () (declare (not safe)) (##cdr _e241886241921_))))
                  (let ((__tmp248012
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd241887241924_ _clause241889241918_))))
                    (declare (not safe))
                    (_loop241885241913_ _lp-tl241888241926_ __tmp248012))))
              (let ((_clause241890241929_ (reverse _clause241889241918_)))
                ((lambda (_L241932_)
                   (for-each
                    (lambda (_clause241945_)
                      (let* ((_g241947241958_
                              (lambda (_g241948241955_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g241948241955_))))
                             (_g241946241990_
                              (lambda (_g241948241961_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g241948241961_))
                                    (let ((_e241951241963_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g241948241961_))))
                                      (let ((_hd241952241966_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e241951241963_)))
                                            (_tl241953241968_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e241951241963_))))
                                        ((lambda (_L241971_ _L241972_)
                                           (let ((_self241984_
                                                  (list-ref
                                                   _L241972_
                                                   _self-index241511_)))
                                             (for-each
                                              (lambda (_g241985241987_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g241985241987_
                                                   _self241984_
                                                   _method-calls239216_
                                                   _slot-refs239217_
                                                   _class-type-check239218_
                                                   _struct-type-check239219_
                                                   _struct-type-assert239220_)))
                                              _L241971_)))
                                         _tl241953241968_
                                         _hd241952241966_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g241947241958_ _g241948241961_))))))
                        (declare (not safe))
                        (_g241946241990_ _clause241945_)))
                    (let ((__tmp248013
                           (lambda (_g241992241995_ _g241993241997_)
                             (let ()
                               (declare (not safe))
                               (cons _g241992241995_ _g241993241997_)))))
                      (declare (not safe))
                      (foldr1 __tmp248013 '() _L241932_))))
                 _clause241890241929_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop241885241913_
                                           _target241882241908_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g241876241895_ _g241877241898_))))))
                            (let ()
                              (declare (not safe))
                              (_g241876241895_ _g241877241898_)))))
                    (let ()
                      (declare (not safe))
                      (_g241876241895_ _g241877241898_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g241875242000_ _L241793_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?239223_))
                                                  _stx239122_
                                                  (let* ((_specializer-id242009_
                                                          (let* ((_id242003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp248014
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L239197_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp248014 '"::specialize")))
                         (_specializer-id242006_
                          (let ((__tmp248015
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx239122_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id242003_ __tmp248015))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id242006_))
                    _specializer-id242006_))
                 (_lifted-specializer-id242016_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?239225_))
                      (let* ((_id242011_
                              (let ((__tmp248016
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L239197_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp248016
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id242013_
                              (let ((__tmp248017
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx239122_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id242011_
                                 __tmp248017))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id242013_))
                        _lifted-specializer-id242013_)
                      '#f))
                 (_$t242018_
                  (let ((__tmp248018 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp248018)))
                 (_methods242020_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls239216_)))
                 (_$methods242024_
                  (map (lambda (_id242022_)
                         (let ((__tmp248019 (gensym _id242022_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp248019)))
                       _methods242020_))
                 (_g248020_
                  (for-each
                   (lambda (_g242025242028_ _g242026242030_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls239216_
                        _g242025242028_
                        _g242026242030_)))
                   _methods242020_
                   _$methods242024_))
                 (_methods-bind242041_
                  (map (lambda (_g242033242036_ _g242034242038_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind239124_
                            _$t242018_
                            _g242033242036_
                            _g242034242038_)))
                       _methods242020_
                       _$methods242024_))
                 (_slots242043_
                  (let () (declare (not safe)) (hash-keys _slot-refs239217_)))
                 (_$slots242047_
                  (map (lambda (_id242045_)
                         (let ((__tmp248021 (gensym _id242045_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp248021)))
                       _slots242043_))
                 (_g248022_
                  (for-each
                   (lambda (_g242048242051_ _g242049242053_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs239217_
                        _g242048242051_
                        _g242049242053_)))
                   _slots242043_
                   _$slots242047_))
                 (_slots-bind242064_
                  (map (lambda (_g242056242059_ _g242057242061_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind239125_
                            _$t242018_
                            _g242056242059_
                            _g242057242061_)))
                       _slots242043_
                       _$slots242047_))
                 (_class-check242066_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check239218_)))
                 (_$class-check242069_
                  (map (lambda (_g248023_)
                         (let ((__tmp248024 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp248024)))
                       _class-check242066_))
                 (_g248025_
                  (for-each
                   (lambda (_g242070242073_ _g242071242075_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check239218_
                        _g242070242073_
                        _g242071242075_)))
                   _class-check242066_
                   _$class-check242069_))
                 (_class-check-bind242086_
                  (map (lambda (_g242078242081_ _g242079242083_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind239126_
                            _$t242018_
                            _g242078242081_
                            _g242079242083_)))
                       _class-check242066_
                       _$class-check242069_))
                 (_struct-check-all242088_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check239219_
                     _struct-type-assert239220_)))
                 (_struct-check242090_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all242088_)))
                 (_$struct-check242093_
                  (map (lambda (_g248026_)
                         (let ((__tmp248027 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp248027)))
                       _struct-check242090_))
                 (_g248028_
                  (for-each
                   (lambda (_g242094242097_ _g242095242099_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all242088_
                        _g242094242097_
                        _g242095242099_)))
                   _struct-check242090_
                   _$struct-check242093_))
                 (_struct-check-bind242110_
                  (map (lambda (_g242102242105_ _g242103242107_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind239127_
                            _$t242018_
                            _g242102242105_
                            _g242103242107_)))
                       _struct-check242090_
                       _$struct-check242093_))
                 (_make-specializer-lambda-expr242196_
                  (lambda (_struct-type-check1242112_
                           _struct-type-check2242113_)
                    (let* ((_g242115242129_
                            (lambda (_g242116242126_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g242116242126_))))
                           (_g242114242193_
                            (lambda (_g242116242132_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g242116242132_))
                                  (let ((_e242119242134_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g242116242132_))))
                                    (let ((_hd242120242137_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242119242134_)))
                                          (_tl242121242139_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242119242134_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242121242139_))
                                          (let ((_e242122242142_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242121242139_))))
                                            (let ((_hd242123242145_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242122242142_)))
                                                  (_tl242124242147_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242122242142_))))
                                              ((lambda (_L242150_ _L242151_)
                                                 (let* ((_self242184_
                                                         (list-ref
                                                          _L242151_
                                                          _self-index241511_))
                                                        (_body242190_
                                                         (map (lambda (_g242185242187_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g242185242187_
                           _self242184_
                           _$t242018_
                           _method-calls239216_
                           _slot-refs239217_
                           _class-type-check239218_
                           _struct-type-check1242112_
                           _struct-type-check2242113_)))
                      _L242150_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp248029
                                                          (let ((__tmp248030
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L242151_ _body242190_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp248030))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp248029
                                                      _L241794_))))
                                               _tl242124242147_
                                               _hd242123242145_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g242115242129_
                                             _g242116242132_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g242115242129_ _g242116242132_))))))
                      (declare (not safe))
                      (_g242114242193_ _L241794_))))
                 (_make-specializer-case-lambda-expr242335_
                  (lambda (_struct-type-check1242198_
                           _struct-type-check2242199_)
                    (let* ((_g242201242220_
                            (lambda (_g242202242217_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g242202242217_))))
                           (_g242200242332_
                            (lambda (_g242202242223_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g242202242223_))
                                  (let ((_e242204242225_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g242202242223_))))
                                    (let ((_hd242205242228_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242204242225_)))
                                          (_tl242206242230_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242204242225_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl242206242230_))
                                          (let ((_g248031_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl242206242230_
                                                    '0))))
                                            (begin
                                              (let ((_g248032_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g248031_)
                                                           (##vector-length
                                                            _g248031_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g248032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g248032_)))
                                              (let ((_target242207242233_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g248031_
                                                        0)))
                                                    (_tl242209242235_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g248031_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl242209242235_))
                                                    (letrec ((_loop242210242238_
                                                              (lambda (_hd242208242241_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause242214242243_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd242208242241_))
                            (let ((_e242211242246_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd242208242241_))))
                              (let ((_lp-hd242212242249_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e242211242246_)))
                                    (_lp-tl242213242251_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e242211242246_))))
                                (let ((__tmp248033
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd242212242249_
                                               _clause242214242243_))))
                                  (declare (not safe))
                                  (_loop242210242238_
                                   _lp-tl242213242251_
                                   __tmp248033))))
                            (let ((_clause242215242254_
                                   (reverse _clause242214242243_)))
                              ((lambda (_L242257_)
                                 (let* ((_clauses242330_
                                         (map (lambda (_clause242272_)
                                                (let* ((_g242274242285_
                                                        (lambda (_g242275242282_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g242275242282_))))
                                                       (_g242273242320_
                                                        (lambda (_g242275242288_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g242275242288_))
                      (let ((_e242278242290_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g242275242288_))))
                        (let ((_hd242279242293_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242278242290_)))
                              (_tl242280242295_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242278242290_))))
                          ((lambda (_L242298_ _L242299_)
                             (let* ((_self242311_
                                     (list-ref _L242299_ _self-index241511_))
                                    (_body242317_
                                     (map (lambda (_g242312242314_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g242312242314_
                                               _self242311_
                                               _$t242018_
                                               _method-calls239216_
                                               _slot-refs239217_
                                               _class-type-check239218_
                                               _struct-type-check1242198_
                                               _struct-type-check2242199_)))
                                          _L242298_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L242299_ _body242317_))))
                           _tl242280242295_
                           _hd242279242293_)))
                      (let ()
                        (declare (not safe))
                        (_g242274242285_ _g242275242288_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g242273242320_
                                                   _clause242272_)))
                                              (let ((__tmp248034
                                                     (lambda (_g242322242325_
                                                              _g242323242327_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g242322242325_
                                                               _g242323242327_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp248034
                                                        '()
                                                        _L242257_))))
                                        (__tmp248035
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses242330_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp248035
                                    _L241793_)))
                               _clause242215242254_))))))
              (let ()
                (declare (not safe))
                (_loop242210242238_ _target242207242233_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g242201242220_
                                                       _g242202242223_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g242201242220_
                                             _g242202242223_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g242201242220_ _g242202242223_))))))
                      (declare (not safe))
                      (_g242200242332_ _L241793_))))
                 (_make-specializer-impl242340_
                  (lambda (_specializer-lambda-expr242337_
                           _specializer-case-lambda-expr242338_)
                    (let ((__tmp248036
                           (let ((__tmp248037
                                  (let ((__tmp248039
                                         (let ((__tmp248040
                                                (let ((__tmp248057
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L241212_ '())))
                                                      (__tmp248041
                                                       (let ((__tmp248042
                                                              (let ((__tmp248043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp248045
                                    (let ((__tmp248046
                                           (let ((__tmp248056
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L241211_ '())))
                                                 (__tmp248047
                                                  (let ((__tmp248048
                                                         (let ((__tmp248049
                                                                (let ((__tmp248050
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp248052
                                      (let ((__tmp248053
                                             (let ((__tmp248055
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L241795_ '())))
                                                   (__tmp248054
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr242337_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp248055
                                                     __tmp248054))))
                                        (declare (not safe))
                                        (cons __tmp248053 '())))
                                     (__tmp248051
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr242338_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp248052 __tmp248051))))
                          (declare (not safe))
                          (cons '%#let-values __tmp248050))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp248049 _stx239122_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp248048 '()))))
                                             (declare (not safe))
                                             (cons __tmp248056 __tmp248047))))
                                      (declare (not safe))
                                      (cons __tmp248046 '())))
                                   (__tmp248044
                                    (let ()
                                      (declare (not safe))
                                      (cons _L241209_ '()))))
                               (declare (not safe))
                               (cons __tmp248045 __tmp248044))))
                        (declare (not safe))
                        (cons '%#let-values __tmp248043))))
                 (declare (not safe))
                 (cons __tmp248042 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp248057
                                                        __tmp248041))))
                                           (declare (not safe))
                                           (cons __tmp248040 '())))
                                        (__tmp248038
                                         (let ()
                                           (declare (not safe))
                                           (cons _L241208_ '()))))
                                    (declare (not safe))
                                    (cons __tmp248039 __tmp248038))))
                             (declare (not safe))
                             (cons '%#let-values __tmp248037))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp248036 _stx239122_))))
                 (_specializer-lambda-expr242342_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr242196_
                     _struct-check-all242088_
                     _empty239221_)))
                 (_specializer-case-lambda-expr242344_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr242335_
                     _struct-check-all242088_
                     _empty239221_)))
                 (_specializer-impl242346_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl242340_
                     _specializer-lambda-expr242342_
                     _specializer-case-lambda-expr242344_)))
                 (_unchecked-specializer-lambda-expr242348_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?239224_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr242196_
                         _empty239221_
                         _struct-check-all242088_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr242350_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?239224_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr242335_
                         _empty239221_
                         _struct-check-all242088_))
                      '#f))
                 (_unchecked-specializer-impl242352_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?239224_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl242340_
                         _unchecked-specializer-lambda-expr242348_
                         _unchecked-specializer-case-lambda-expr242350_))
                      '#f))
                 (_specializer-impl242354_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl239128_
                     _$t242018_
                     _methods-bind242041_
                     _slots-bind242064_
                     _class-check-bind242086_
                     _struct-check-bind242110_
                     _specializer-impl242346_
                     _lifted-specializer-id242016_
                     _unchecked-specializer-impl242352_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp248059
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L239197_)))
                                                          (__tmp248058
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id242009_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp248059
                                                       '" => "
                                                       __tmp248058))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def239129_
                                                       _L239197_
                                                       _specializer-id242009_
                                                       _specializer-impl242354_
                                                       _lifted-specializer-id242016_
                                                       _unchecked-specializer-impl242352_)))))
                                            _hd241726241788_
                                            _hd241723241780_
                                            _hd241720241772_)
                                           (let ()
                                             (declare (not safe))
                                             (_g241702241732_
                                              _g241703241735_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g241702241732_ _g241703241735_)))
                               (let ()
                                 (declare (not safe))
                                 (_g241702241732_ _g241703241735_)))
                           (let ()
                             (declare (not safe))
                             (_g241702241732_ _g241703241735_)))))
                   (let ()
                     (declare (not safe))
                     (_g241702241732_ _g241703241735_)))
               (let ()
                 (declare (not safe))
                 (_g241702241732_ _g241703241735_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g241702241732_
                                                  _g241703241735_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g241702241732_ _g241703241735_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g241702241732_ _g241703241735_)))))
                       (let ()
                         (declare (not safe))
                         (_g241702241732_ _g241703241735_)))))
               (let ()
                 (declare (not safe))
                 (_g241702241732_ _g241703241735_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g241701242357_ _L241210_))
                                         _stx239122_))))
                             _hd241307241430_
                             _kw-ref241305241451_
                             _hd241295241417_
                             _hd241286241393_
                             _hd241277241369_)
                            (let ()
                              (declare (not safe))
                              (_g241251241313_ _g241252241316_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop241300241435_
                                                   _target241297241422_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g241251241313_
                                                 _g241252241316_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g241251241313_ _g241252241316_))))))
                            (let ()
                              (declare (not safe))
                              (_g241251241313_ _g241252241316_)))
                        (let ()
                          (declare (not safe))
                          (_g241251241313_ _g241252241316_)))
                    (let ()
                      (declare (not safe))
                      (_g241251241313_ _g241252241316_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g241251241313_
                                                       _g241252241316_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g241251241313_
                                                   _g241252241316_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g241251241313_
                                               _g241252241316_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g241251241313_ _g241252241316_)))))
                            (let ()
                              (declare (not safe))
                              (_g241251241313_ _g241252241316_)))
                        (let ()
                          (declare (not safe))
                          (_g241251241313_ _g241252241316_)))))
                (let ()
                  (declare (not safe))
                  (_g241251241313_ _g241252241316_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g241251241313_
                                                       _g241252241316_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g241251241313_
                                                   _g241252241316_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g241251241313_ _g241252241316_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g241251241313_ _g241252241316_)))
                            (let ()
                              (declare (not safe))
                              (_g241251241313_ _g241252241316_)))))
                    (let ()
                      (declare (not safe))
                      (_g241251241313_ _g241252241316_)))
                (let ()
                  (declare (not safe))
                  (_g241251241313_ _g241252241316_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g241251241313_
                                                       _g241252241316_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g241251241313_
                                               _g241252241316_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g241251241313_ _g241252241316_)))
                                (let ()
                                  (declare (not safe))
                                  (_g241251241313_ _g241252241316_)))
                            (let ()
                              (declare (not safe))
                              (_g241251241313_ _g241252241316_)))))
                    (let ()
                      (declare (not safe))
                      (_g241251241313_ _g241252241316_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g241251241313_
                                                       _g241252241316_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g241251241313_
                                               _g241252241316_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g241251241313_ _g241252241316_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g241251241313_ _g241252241316_)))))
                            (let ()
                              (declare (not safe))
                              (_g241251241313_ _g241252241316_))))))
                (declare (not safe))
                (_g241250242360_ _L241209_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd241085241203_
                                                    _hd241082241195_
                                                    _hd241079241187_
                                                    _hd241076241179_
                                                    _hd241058241131_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g241038241091_
                                                      _g241039241094_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g241038241091_
                                              _g241039241094_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g241038241091_ _g241039241094_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g241038241091_ _g241039241094_)))
                               (let ()
                                 (declare (not safe))
                                 (_g241038241091_ _g241039241094_)))))
                       (let ()
                         (declare (not safe))
                         (_g241038241091_ _g241039241094_)))
                   (let ()
                     (declare (not safe))
                     (_g241038241091_ _g241039241094_)))
               (let ()
                 (declare (not safe))
                 (_g241038241091_ _g241039241094_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g241038241091_
                                                  _g241039241094_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g241038241091_
                                              _g241039241094_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g241038241091_ _g241039241094_)))))
                           (let ()
                             (declare (not safe))
                             (_g241038241091_ _g241039241094_)))))
                   (let ()
                     (declare (not safe))
                     (_g241038241091_ _g241039241094_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g241038241091_
                                                      _g241039241094_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g241038241091_
                                                  _g241039241094_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g241038241091_
                                              _g241039241094_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g241038241091_ _g241039241094_)))))
                           (let ()
                             (declare (not safe))
                             (_g241038241091_ _g241039241094_)))
                       (let ()
                         (declare (not safe))
                         (_g241038241091_ _g241039241094_)))))
               (let ()
                 (declare (not safe))
                 (_g241038241091_ _g241039241094_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g241038241091_
                                                  _g241039241094_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g241038241091_ _g241039241094_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g241038241091_ _g241039241094_)))
                           (let ()
                             (declare (not safe))
                             (_g241038241091_ _g241039241094_)))
                       (let ()
                         (declare (not safe))
                         (_g241038241091_ _g241039241094_)))))
               (let ()
                 (declare (not safe))
                 (_g241038241091_ _g241039241094_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g241037242363_ _L239196_))
                                         _stx239122_))))))))
                  (___kont246669246670_ (lambda () _stx239122_)))
              (let ((___match246698246699_
                     (lambda (_e239136239164_
                              _hd239137239167_
                              _tl239138239169_
                              _e239139239172_
                              _hd239140239175_
                              _tl239141239177_
                              _e239142239180_
                              _hd239143239183_
                              _tl239144239185_
                              _e239145239188_
                              _hd239146239191_
                              _tl239147239193_)
                       (let ((_L239196_ _hd239146239191_)
                             (_L239197_ _hd239143239183_))
                         (if (let ((__tmp248060
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L239197_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp248060))
                             (___kont246667246668_ _L239196_ _L239197_)
                             (___kont246669246670_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx246665246666_))
                    (let ((_e239136239164_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx246665246666_))))
                      (let ((_tl239138239169_
                             (let ()
                               (declare (not safe))
                               (##cdr _e239136239164_)))
                            (_hd239137239167_
                             (let ()
                               (declare (not safe))
                               (##car _e239136239164_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl239138239169_))
                            (let ((_e239139239172_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl239138239169_))))
                              (let ((_tl239141239177_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239139239172_)))
                                    (_hd239140239175_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239139239172_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd239140239175_))
                                    (let ((_e239142239180_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd239140239175_))))
                                      (let ((_tl239144239185_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e239142239180_)))
                                            (_hd239143239183_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e239142239180_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl239144239185_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl239141239177_))
                                                (let ((_e239145239188_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl239141239177_))))
                                                  (let ((_tl239147239193_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239145239188_)))
                                                        (_hd239146239191_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239145239188_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl239147239193_))
                                                        (___match246698246699_
                                                         _e239136239164_
                                                         _hd239137239167_
                                                         _tl239138239169_
                                                         _e239139239172_
                                                         _hd239140239175_
                                                         _tl239141239177_
                                                         _e239142239180_
                                                         _hd239143239183_
                                                         _tl239144239185_
                                                         _e239145239188_
                                                         _hd239146239191_
                                                         _tl239147239193_)
                                                        (___kont246669246670_))))
                                                (___kont246669246670_))
                                            (___kont246669246670_))))
                                    (___kont246669246670_))))
                            (___kont246669246670_))))
                    (___kont246669246670_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx238098_
               _self238099_
               _methods238100_
               _slots238101_
               _class-check238102_
               _struct-check238103_
               _struct-assert238104_)
        (let* ((___stx246701246702_ _stx238098_)
               (_g238112238334_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx246701246702_)))))
          (let ((___kont246703246704_
                 (lambda (_L239071_ _L239072_ _L239073_ _L239074_)
                   (let ((__tmp248061
                          (let () (declare (not safe)) (gx#stx-e _L239072_))))
                     (declare (not safe))
                     (table-set! _methods238100_ __tmp248061 '#t))
                   (for-each
                    (lambda (_g239107239109_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g239107239109_
                         _self238099_
                         _methods238100_
                         _slots238101_
                         _class-check238102_
                         _struct-check238103_
                         _struct-assert238104_)))
                    (let ((__tmp248062
                           (lambda (_g239111239114_ _g239112239116_)
                             (let ()
                               (declare (not safe))
                               (cons _g239111239114_ _g239112239116_)))))
                      (declare (not safe))
                      (foldr1 __tmp248062 '() _L239071_)))))
                (___kont246707246708_
                 (lambda (_L238906_ _L238907_ _L238908_ _L238909_ _L238910_)
                   (let ((__tmp248063
                          (let () (declare (not safe)) (gx#stx-e _L238907_))))
                     (declare (not safe))
                     (table-set! _methods238100_ __tmp248063 '#t))
                   (for-each
                    (lambda (_g238950238952_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g238950238952_
                         _self238099_
                         _methods238100_
                         _slots238101_
                         _class-check238102_
                         _struct-check238103_
                         _struct-assert238104_)))
                    (let ((__tmp248064
                           (lambda (_g238954238957_ _g238955238959_)
                             (let ()
                               (declare (not safe))
                               (cons _g238954238957_ _g238955238959_)))))
                      (declare (not safe))
                      (foldr1 __tmp248064 '() _L238906_)))))
                (___kont246711246712_
                 (lambda (_L238739_ _L238740_ _L238741_)
                   (let ((__tmp248065
                          (let () (declare (not safe)) (gx#stx-e _L238739_))))
                     (declare (not safe))
                     (table-set! _slots238101_ __tmp248065 '#t))))
                (___kont246713246714_
                 (lambda (_L238616_ _L238617_ _L238618_ _L238619_)
                   (let ((__tmp248066
                          (let () (declare (not safe)) (gx#stx-e _L238617_))))
                     (declare (not safe))
                     (table-set! _slots238101_ __tmp248066 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L238616_
                      _self238099_
                      _methods238100_
                      _slots238101_
                      _class-check238102_
                      _struct-check238103_
                      _struct-assert238104_))))
                (___kont246715246716_
                 (lambda (_L238500_ _L238501_)
                   (let ((__tmp248067
                          (##structure-ref
                           (let ((__tmp248068
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L238501_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp248068))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots238101_ __tmp248067 '#t))))
                (___kont246717246718_
                 (lambda (_L238410_ _L238411_ _L238412_)
                   (let ((__tmp248069
                          (##structure-ref
                           (let ((__tmp248070
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L238412_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp248070))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots238101_ __tmp248069 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L238410_
                      _self238099_
                      _methods238100_
                      _slots238101_
                      _class-check238102_
                      _struct-check238103_
                      _struct-assert238104_))))
                (___kont246719246720_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx238098_
                      _self238099_
                      _methods238100_
                      _slots238101_
                      _class-check238102_
                      _struct-check238103_
                      _struct-assert238104_)))))
            (let* ((___match247200247201_
                    (lambda (_e238306238346_
                             _hd238307238349_
                             _tl238308238351_
                             _e238309238354_
                             _hd238310238357_
                             _tl238311238359_
                             _e238312238362_
                             _hd238313238365_
                             _tl238314238367_
                             _e238315238370_
                             _hd238316238373_
                             _tl238317238375_
                             _e238318238378_
                             _hd238319238381_
                             _tl238320238383_
                             _e238321238386_
                             _hd238322238389_
                             _tl238323238391_
                             _e238324238394_
                             _hd238325238397_
                             _tl238326238399_
                             _e238327238402_
                             _hd238328238405_
                             _tl238329238407_)
                      (let ((_L238410_ _hd238328238405_)
                            (_L238411_ _hd238325238397_)
                            (_L238412_ _hd238316238373_))
                        (if (and (let ((__tmp248071
                                        (let ((__tmp248072
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L238412_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp248072))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp248071
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L238411_
                                    _self238099_)))
                            (___kont246717246718_
                             _L238410_
                             _L238411_
                             _L238412_)
                            (___kont246719246720_)))))
                   (___match247198247199_
                    (lambda (_e238306238346_
                             _hd238307238349_
                             _tl238308238351_
                             _e238309238354_
                             _hd238310238357_
                             _tl238311238359_
                             _e238312238362_
                             _hd238313238365_
                             _tl238314238367_
                             _e238315238370_
                             _hd238316238373_
                             _tl238317238375_
                             _e238318238378_
                             _hd238319238381_
                             _tl238320238383_
                             _e238321238386_
                             _hd238322238389_
                             _tl238323238391_
                             _e238324238394_
                             _hd238325238397_
                             _tl238326238399_
                             _e238327238402_
                             _hd238328238405_
                             _tl238329238407_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl238329238407_))
                          (___match247200247201_
                           _e238306238346_
                           _hd238307238349_
                           _tl238308238351_
                           _e238309238354_
                           _hd238310238357_
                           _tl238311238359_
                           _e238312238362_
                           _hd238313238365_
                           _tl238314238367_
                           _e238315238370_
                           _hd238316238373_
                           _tl238317238375_
                           _e238318238378_
                           _hd238319238381_
                           _tl238320238383_
                           _e238321238386_
                           _hd238322238389_
                           _tl238323238391_
                           _e238324238394_
                           _hd238325238397_
                           _tl238326238399_
                           _e238327238402_
                           _hd238328238405_
                           _tl238329238407_)
                          (___kont246719246720_))))
                   (___match247192247193_
                    (lambda (_e238306238346_
                             _hd238307238349_
                             _tl238308238351_
                             _e238309238354_
                             _hd238310238357_
                             _tl238311238359_
                             _e238312238362_
                             _hd238313238365_
                             _tl238314238367_
                             _e238315238370_
                             _hd238316238373_
                             _tl238317238375_
                             _e238318238378_
                             _hd238319238381_
                             _tl238320238383_
                             _e238321238386_
                             _hd238322238389_
                             _tl238323238391_
                             _e238324238394_
                             _hd238325238397_
                             _tl238326238399_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl238320238383_))
                          (let ((_e238327238402_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl238320238383_))))
                            (let ((_tl238329238407_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238327238402_)))
                                  (_hd238328238405_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238327238402_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl238329238407_))
                                  (___match247200247201_
                                   _e238306238346_
                                   _hd238307238349_
                                   _tl238308238351_
                                   _e238309238354_
                                   _hd238310238357_
                                   _tl238311238359_
                                   _e238312238362_
                                   _hd238313238365_
                                   _tl238314238367_
                                   _e238315238370_
                                   _hd238316238373_
                                   _tl238317238375_
                                   _e238318238378_
                                   _hd238319238381_
                                   _tl238320238383_
                                   _e238321238386_
                                   _hd238322238389_
                                   _tl238323238391_
                                   _e238324238394_
                                   _hd238325238397_
                                   _tl238326238399_
                                   _e238327238402_
                                   _hd238328238405_
                                   _tl238329238407_)
                                  (___kont246719246720_))))
                          (___kont246719246720_))))
                   (___match247138247139_
                    (lambda (_e238282238444_
                             _hd238283238447_
                             _tl238284238449_
                             _e238285238452_
                             _hd238286238455_
                             _tl238287238457_
                             _e238288238460_
                             _hd238289238463_
                             _tl238290238465_
                             _e238291238468_
                             _hd238292238471_
                             _tl238293238473_
                             _e238294238476_
                             _hd238295238479_
                             _tl238296238481_
                             _e238297238484_
                             _hd238298238487_
                             _tl238299238489_
                             _e238300238492_
                             _hd238301238495_
                             _tl238302238497_)
                      (let ((_L238500_ _hd238301238495_)
                            (_L238501_ _hd238292238471_))
                        (if (and (let ((__tmp248073
                                        (let ((__tmp248074
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L238501_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp248074))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp248073
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L238500_
                                    _self238099_)))
                            (___kont246715246716_ _L238500_ _L238501_)
                            (___kont246719246720_)))))
                   (___match247136247137_
                    (lambda (_e238282238444_
                             _hd238283238447_
                             _tl238284238449_
                             _e238285238452_
                             _hd238286238455_
                             _tl238287238457_
                             _e238288238460_
                             _hd238289238463_
                             _tl238290238465_
                             _e238291238468_
                             _hd238292238471_
                             _tl238293238473_
                             _e238294238476_
                             _hd238295238479_
                             _tl238296238481_
                             _e238297238484_
                             _hd238298238487_
                             _tl238299238489_
                             _e238300238492_
                             _hd238301238495_
                             _tl238302238497_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl238296238481_))
                          (___match247138247139_
                           _e238282238444_
                           _hd238283238447_
                           _tl238284238449_
                           _e238285238452_
                           _hd238286238455_
                           _tl238287238457_
                           _e238288238460_
                           _hd238289238463_
                           _tl238290238465_
                           _e238291238468_
                           _hd238292238471_
                           _tl238293238473_
                           _e238294238476_
                           _hd238295238479_
                           _tl238296238481_
                           _e238297238484_
                           _hd238298238487_
                           _tl238299238489_
                           _e238300238492_
                           _hd238301238495_
                           _tl238302238497_)
                          (___match247192247193_
                           _e238282238444_
                           _hd238283238447_
                           _tl238284238449_
                           _e238285238452_
                           _hd238286238455_
                           _tl238287238457_
                           _e238288238460_
                           _hd238289238463_
                           _tl238290238465_
                           _e238291238468_
                           _hd238292238471_
                           _tl238293238473_
                           _e238294238476_
                           _hd238295238479_
                           _tl238296238481_
                           _e238297238484_
                           _hd238298238487_
                           _tl238299238489_
                           _e238300238492_
                           _hd238301238495_
                           _tl238302238497_))))
                   (___match247082247083_
                    (lambda (_e238247238528_
                             _hd238248238531_
                             _tl238249238533_
                             _e238250238536_
                             _hd238251238539_
                             _tl238252238541_
                             _e238253238544_
                             _hd238254238547_
                             _tl238255238549_
                             _e238256238552_
                             _hd238257238555_
                             _tl238258238557_
                             _e238259238560_
                             _hd238260238563_
                             _tl238261238565_
                             _e238262238568_
                             _hd238263238571_
                             _tl238264238573_
                             _e238265238576_
                             _hd238266238579_
                             _tl238267238581_
                             _e238268238584_
                             _hd238269238587_
                             _tl238270238589_
                             _e238271238592_
                             _hd238272238595_
                             _tl238273238597_
                             _e238274238600_
                             _hd238275238603_
                             _tl238276238605_
                             _e238277238608_
                             _hd238278238611_
                             _tl238279238613_)
                      (let ((_L238616_ _hd238278238611_)
                            (_L238617_ _hd238275238603_)
                            (_L238618_ _hd238266238579_)
                            (_L238619_ _hd238257238555_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L238619_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L238619_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L238618_
                                    _self238099_)))
                            (___kont246713246714_
                             _L238616_
                             _L238617_
                             _L238618_
                             _L238619_)
                            (___kont246719246720_)))))
                   (___match247074247075_
                    (lambda (_e238247238528_
                             _hd238248238531_
                             _tl238249238533_
                             _e238250238536_
                             _hd238251238539_
                             _tl238252238541_
                             _e238253238544_
                             _hd238254238547_
                             _tl238255238549_
                             _e238256238552_
                             _hd238257238555_
                             _tl238258238557_
                             _e238259238560_
                             _hd238260238563_
                             _tl238261238565_
                             _e238262238568_
                             _hd238263238571_
                             _tl238264238573_
                             _e238265238576_
                             _hd238266238579_
                             _tl238267238581_
                             _e238268238584_
                             _hd238269238587_
                             _tl238270238589_
                             _e238271238592_
                             _hd238272238595_
                             _tl238273238597_
                             _e238274238600_
                             _hd238275238603_
                             _tl238276238605_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl238270238589_))
                          (let ((_e238277238608_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl238270238589_))))
                            (let ((_tl238279238613_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238277238608_)))
                                  (_hd238278238611_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238277238608_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl238279238613_))
                                  (___match247082247083_
                                   _e238247238528_
                                   _hd238248238531_
                                   _tl238249238533_
                                   _e238250238536_
                                   _hd238251238539_
                                   _tl238252238541_
                                   _e238253238544_
                                   _hd238254238547_
                                   _tl238255238549_
                                   _e238256238552_
                                   _hd238257238555_
                                   _tl238258238557_
                                   _e238259238560_
                                   _hd238260238563_
                                   _tl238261238565_
                                   _e238262238568_
                                   _hd238263238571_
                                   _tl238264238573_
                                   _e238265238576_
                                   _hd238266238579_
                                   _tl238267238581_
                                   _e238268238584_
                                   _hd238269238587_
                                   _tl238270238589_
                                   _e238271238592_
                                   _hd238272238595_
                                   _tl238273238597_
                                   _e238274238600_
                                   _hd238275238603_
                                   _tl238276238605_
                                   _e238277238608_
                                   _hd238278238611_
                                   _tl238279238613_)
                                  (___kont246719246720_))))
                          (___match247198247199_
                           _e238247238528_
                           _hd238248238531_
                           _tl238249238533_
                           _e238250238536_
                           _hd238251238539_
                           _tl238252238541_
                           _e238253238544_
                           _hd238254238547_
                           _tl238255238549_
                           _e238256238552_
                           _hd238257238555_
                           _tl238258238557_
                           _e238259238560_
                           _hd238260238563_
                           _tl238261238565_
                           _e238262238568_
                           _hd238263238571_
                           _tl238264238573_
                           _e238265238576_
                           _hd238266238579_
                           _tl238267238581_
                           _e238268238584_
                           _hd238269238587_
                           _tl238270238589_))))
                   (___match246996246997_
                    (lambda (_e238213238659_
                             _hd238214238662_
                             _tl238215238664_
                             _e238216238667_
                             _hd238217238670_
                             _tl238218238672_
                             _e238219238675_
                             _hd238220238678_
                             _tl238221238680_
                             _e238222238683_
                             _hd238223238686_
                             _tl238224238688_
                             _e238225238691_
                             _hd238226238694_
                             _tl238227238696_
                             _e238228238699_
                             _hd238229238702_
                             _tl238230238704_
                             _e238231238707_
                             _hd238232238710_
                             _tl238233238712_
                             _e238234238715_
                             _hd238235238718_
                             _tl238236238720_
                             _e238237238723_
                             _hd238238238726_
                             _tl238239238728_
                             _e238240238731_
                             _hd238241238734_
                             _tl238242238736_)
                      (let ((_L238739_ _hd238241238734_)
                            (_L238740_ _hd238232238710_)
                            (_L238741_ _hd238223238686_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L238741_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L238741_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L238740_
                                    _self238099_)))
                            (___kont246711246712_
                             _L238739_
                             _L238740_
                             _L238741_)
                            (___match247200247201_
                             _e238213238659_
                             _hd238214238662_
                             _tl238215238664_
                             _e238216238667_
                             _hd238217238670_
                             _tl238218238672_
                             _e238219238675_
                             _hd238220238678_
                             _tl238221238680_
                             _e238222238683_
                             _hd238223238686_
                             _tl238224238688_
                             _e238225238691_
                             _hd238226238694_
                             _tl238227238696_
                             _e238228238699_
                             _hd238229238702_
                             _tl238230238704_
                             _e238231238707_
                             _hd238232238710_
                             _tl238233238712_
                             _e238234238715_
                             _hd238235238718_
                             _tl238236238720_)))))
                   (___match246994246995_
                    (lambda (_e238213238659_
                             _hd238214238662_
                             _tl238215238664_
                             _e238216238667_
                             _hd238217238670_
                             _tl238218238672_
                             _e238219238675_
                             _hd238220238678_
                             _tl238221238680_
                             _e238222238683_
                             _hd238223238686_
                             _tl238224238688_
                             _e238225238691_
                             _hd238226238694_
                             _tl238227238696_
                             _e238228238699_
                             _hd238229238702_
                             _tl238230238704_
                             _e238231238707_
                             _hd238232238710_
                             _tl238233238712_
                             _e238234238715_
                             _hd238235238718_
                             _tl238236238720_
                             _e238237238723_
                             _hd238238238726_
                             _tl238239238728_
                             _e238240238731_
                             _hd238241238734_
                             _tl238242238736_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl238236238720_))
                          (___match246996246997_
                           _e238213238659_
                           _hd238214238662_
                           _tl238215238664_
                           _e238216238667_
                           _hd238217238670_
                           _tl238218238672_
                           _e238219238675_
                           _hd238220238678_
                           _tl238221238680_
                           _e238222238683_
                           _hd238223238686_
                           _tl238224238688_
                           _e238225238691_
                           _hd238226238694_
                           _tl238227238696_
                           _e238228238699_
                           _hd238229238702_
                           _tl238230238704_
                           _e238231238707_
                           _hd238232238710_
                           _tl238233238712_
                           _e238234238715_
                           _hd238235238718_
                           _tl238236238720_
                           _e238237238723_
                           _hd238238238726_
                           _tl238239238728_
                           _e238240238731_
                           _hd238241238734_
                           _tl238242238736_)
                          (___match247074247075_
                           _e238213238659_
                           _hd238214238662_
                           _tl238215238664_
                           _e238216238667_
                           _hd238217238670_
                           _tl238218238672_
                           _e238219238675_
                           _hd238220238678_
                           _tl238221238680_
                           _e238222238683_
                           _hd238223238686_
                           _tl238224238688_
                           _e238225238691_
                           _hd238226238694_
                           _tl238227238696_
                           _e238228238699_
                           _hd238229238702_
                           _tl238230238704_
                           _e238231238707_
                           _hd238232238710_
                           _tl238233238712_
                           _e238234238715_
                           _hd238235238718_
                           _tl238236238720_
                           _e238237238723_
                           _hd238238238726_
                           _tl238239238728_
                           _e238240238731_
                           _hd238241238734_
                           _tl238242238736_))))
                   (___match246984246985_
                    (lambda (_e238213238659_
                             _hd238214238662_
                             _tl238215238664_
                             _e238216238667_
                             _hd238217238670_
                             _tl238218238672_
                             _e238219238675_
                             _hd238220238678_
                             _tl238221238680_
                             _e238222238683_
                             _hd238223238686_
                             _tl238224238688_
                             _e238225238691_
                             _hd238226238694_
                             _tl238227238696_
                             _e238228238699_
                             _hd238229238702_
                             _tl238230238704_
                             _e238231238707_
                             _hd238232238710_
                             _tl238233238712_
                             _e238234238715_
                             _hd238235238718_
                             _tl238236238720_
                             _e238237238723_
                             _hd238238238726_
                             _tl238239238728_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd238238238726_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl238239238728_))
                              (let ((_e238240238731_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl238239238728_))))
                                (let ((_tl238242238736_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e238240238731_)))
                                      (_hd238241238734_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e238240238731_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl238242238736_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl238236238720_))
                                          (___match246996246997_
                                           _e238213238659_
                                           _hd238214238662_
                                           _tl238215238664_
                                           _e238216238667_
                                           _hd238217238670_
                                           _tl238218238672_
                                           _e238219238675_
                                           _hd238220238678_
                                           _tl238221238680_
                                           _e238222238683_
                                           _hd238223238686_
                                           _tl238224238688_
                                           _e238225238691_
                                           _hd238226238694_
                                           _tl238227238696_
                                           _e238228238699_
                                           _hd238229238702_
                                           _tl238230238704_
                                           _e238231238707_
                                           _hd238232238710_
                                           _tl238233238712_
                                           _e238234238715_
                                           _hd238235238718_
                                           _tl238236238720_
                                           _e238237238723_
                                           _hd238238238726_
                                           _tl238239238728_
                                           _e238240238731_
                                           _hd238241238734_
                                           _tl238242238736_)
                                          (___match247074247075_
                                           _e238213238659_
                                           _hd238214238662_
                                           _tl238215238664_
                                           _e238216238667_
                                           _hd238217238670_
                                           _tl238218238672_
                                           _e238219238675_
                                           _hd238220238678_
                                           _tl238221238680_
                                           _e238222238683_
                                           _hd238223238686_
                                           _tl238224238688_
                                           _e238225238691_
                                           _hd238226238694_
                                           _tl238227238696_
                                           _e238228238699_
                                           _hd238229238702_
                                           _tl238230238704_
                                           _e238231238707_
                                           _hd238232238710_
                                           _tl238233238712_
                                           _e238234238715_
                                           _hd238235238718_
                                           _tl238236238720_
                                           _e238237238723_
                                           _hd238238238726_
                                           _tl238239238728_
                                           _e238240238731_
                                           _hd238241238734_
                                           _tl238242238736_))
                                      (___match247198247199_
                                       _e238213238659_
                                       _hd238214238662_
                                       _tl238215238664_
                                       _e238216238667_
                                       _hd238217238670_
                                       _tl238218238672_
                                       _e238219238675_
                                       _hd238220238678_
                                       _tl238221238680_
                                       _e238222238683_
                                       _hd238223238686_
                                       _tl238224238688_
                                       _e238225238691_
                                       _hd238226238694_
                                       _tl238227238696_
                                       _e238228238699_
                                       _hd238229238702_
                                       _tl238230238704_
                                       _e238231238707_
                                       _hd238232238710_
                                       _tl238233238712_
                                       _e238234238715_
                                       _hd238235238718_
                                       _tl238236238720_))))
                              (___match247198247199_
                               _e238213238659_
                               _hd238214238662_
                               _tl238215238664_
                               _e238216238667_
                               _hd238217238670_
                               _tl238218238672_
                               _e238219238675_
                               _hd238220238678_
                               _tl238221238680_
                               _e238222238683_
                               _hd238223238686_
                               _tl238224238688_
                               _e238225238691_
                               _hd238226238694_
                               _tl238227238696_
                               _e238228238699_
                               _hd238229238702_
                               _tl238230238704_
                               _e238231238707_
                               _hd238232238710_
                               _tl238233238712_
                               _e238234238715_
                               _hd238235238718_
                               _tl238236238720_))
                          (___match247198247199_
                           _e238213238659_
                           _hd238214238662_
                           _tl238215238664_
                           _e238216238667_
                           _hd238217238670_
                           _tl238218238672_
                           _e238219238675_
                           _hd238220238678_
                           _tl238221238680_
                           _e238222238683_
                           _hd238223238686_
                           _tl238224238688_
                           _e238225238691_
                           _hd238226238694_
                           _tl238227238696_
                           _e238228238699_
                           _hd238229238702_
                           _tl238230238704_
                           _e238231238707_
                           _hd238232238710_
                           _tl238233238712_
                           _e238234238715_
                           _hd238235238718_
                           _tl238236238720_))))
                   (___match246916246917_
                    (lambda (_e238162238778_
                             _hd238163238781_
                             _tl238164238783_
                             _e238165238786_
                             _hd238166238789_
                             _tl238167238791_
                             _e238168238794_
                             _hd238169238797_
                             _tl238170238799_
                             _e238171238802_
                             _hd238172238805_
                             _tl238173238807_
                             _e238174238810_
                             _hd238175238813_
                             _tl238176238815_
                             _e238177238818_
                             _hd238178238821_
                             _tl238179238823_
                             _e238180238826_
                             _hd238181238829_
                             _tl238182238831_
                             _e238183238834_
                             _hd238184238837_
                             _tl238185238839_
                             _e238186238842_
                             _hd238187238845_
                             _tl238188238847_
                             _e238189238850_
                             _hd238190238853_
                             _tl238191238855_
                             _e238192238858_
                             _hd238193238861_
                             _tl238194238863_
                             _e238195238866_
                             _hd238196238869_
                             _tl238197238871_
                             _e238198238874_
                             _hd238199238877_
                             _tl238200238879_
                             ___splice246709246710_
                             _target238201238882_
                             _tl238203238884_)
                      (letrec ((_loop238204238887_
                                (lambda (_hd238202238890_ _args238208238892_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd238202238890_))
                                      (let ((_e238205238895_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd238202238890_))))
                                        (let ((_lp-tl238207238900_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e238205238895_)))
                                              (_lp-hd238206238898_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e238205238895_))))
                                          (let ((__tmp248075
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd238206238898_
                                                         _args238208238892_))))
                                            (declare (not safe))
                                            (_loop238204238887_
                                             _lp-tl238207238900_
                                             __tmp248075))))
                                      (let ((_args238209238903_
                                             (reverse _args238208238892_)))
                                        (let ((_L238906_ _args238209238903_)
                                              (_L238907_ _hd238199238877_)
                                              (_L238908_ _hd238190238853_)
                                              (_L238909_ _hd238181238829_)
                                              (_L238910_ _hd238172238805_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L238910_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L238909_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L238908_
                                                      _self238099_)))
                                              (___kont246707246708_
                                               _L238906_
                                               _L238907_
                                               _L238908_
                                               _L238909_
                                               _L238910_)
                                              (___kont246719246720_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop238204238887_ _target238201238882_ '())))))
                   (___match246874246875_
                    (lambda (_e238162238778_
                             _hd238163238781_
                             _tl238164238783_
                             _e238165238786_
                             _hd238166238789_
                             _tl238167238791_
                             _e238168238794_
                             _hd238169238797_
                             _tl238170238799_
                             _e238171238802_
                             _hd238172238805_
                             _tl238173238807_
                             _e238174238810_
                             _hd238175238813_
                             _tl238176238815_
                             _e238177238818_
                             _hd238178238821_
                             _tl238179238823_
                             _e238180238826_
                             _hd238181238829_
                             _tl238182238831_
                             _e238183238834_
                             _hd238184238837_
                             _tl238185238839_
                             _e238186238842_
                             _hd238187238845_
                             _tl238188238847_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd238187238845_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl238188238847_))
                              (let ((_e238189238850_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl238188238847_))))
                                (let ((_tl238191238855_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e238189238850_)))
                                      (_hd238190238853_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e238189238850_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl238191238855_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl238185238839_))
                                          (let ((_e238192238858_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl238185238839_))))
                                            (let ((_tl238194238863_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e238192238858_)))
                                                  (_hd238193238861_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e238192238858_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd238193238861_))
                                                  (let ((_e238195238866_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd238193238861_))))
                                                    (let ((_tl238197238871_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e238195238866_)))
                                                          (_hd238196238869_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e238195238866_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd238196238869_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd238196238869_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl238197238871_))
                          (let ((_e238198238874_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl238197238871_))))
                            (let ((_tl238200238879_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238198238874_)))
                                  (_hd238199238877_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238198238874_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl238200238879_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl238194238863_))
                                      (let ((___splice246709246710_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl238194238863_
                                                '0))))
                                        (let ((_tl238203238884_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice246709246710_
                                                  '1)))
                                              (_target238201238882_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice246709246710_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl238203238884_))
                                              (___match246916246917_
                                               _e238162238778_
                                               _hd238163238781_
                                               _tl238164238783_
                                               _e238165238786_
                                               _hd238166238789_
                                               _tl238167238791_
                                               _e238168238794_
                                               _hd238169238797_
                                               _tl238170238799_
                                               _e238171238802_
                                               _hd238172238805_
                                               _tl238173238807_
                                               _e238174238810_
                                               _hd238175238813_
                                               _tl238176238815_
                                               _e238177238818_
                                               _hd238178238821_
                                               _tl238179238823_
                                               _e238180238826_
                                               _hd238181238829_
                                               _tl238182238831_
                                               _e238183238834_
                                               _hd238184238837_
                                               _tl238185238839_
                                               _e238186238842_
                                               _hd238187238845_
                                               _tl238188238847_
                                               _e238189238850_
                                               _hd238190238853_
                                               _tl238191238855_
                                               _e238192238858_
                                               _hd238193238861_
                                               _tl238194238863_
                                               _e238195238866_
                                               _hd238196238869_
                                               _tl238197238871_
                                               _e238198238874_
                                               _hd238199238877_
                                               _tl238200238879_
                                               ___splice246709246710_
                                               _target238201238882_
                                               _tl238203238884_)
                                              (___kont246719246720_))))
                                      (___kont246719246720_))
                                  (___kont246719246720_))))
                          (___kont246719246720_))
                      (___kont246719246720_))
                  (___kont246719246720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont246719246720_))))
                                          (___match247198247199_
                                           _e238162238778_
                                           _hd238163238781_
                                           _tl238164238783_
                                           _e238165238786_
                                           _hd238166238789_
                                           _tl238167238791_
                                           _e238168238794_
                                           _hd238169238797_
                                           _tl238170238799_
                                           _e238171238802_
                                           _hd238172238805_
                                           _tl238173238807_
                                           _e238174238810_
                                           _hd238175238813_
                                           _tl238176238815_
                                           _e238177238818_
                                           _hd238178238821_
                                           _tl238179238823_
                                           _e238180238826_
                                           _hd238181238829_
                                           _tl238182238831_
                                           _e238183238834_
                                           _hd238184238837_
                                           _tl238185238839_))
                                      (___match247198247199_
                                       _e238162238778_
                                       _hd238163238781_
                                       _tl238164238783_
                                       _e238165238786_
                                       _hd238166238789_
                                       _tl238167238791_
                                       _e238168238794_
                                       _hd238169238797_
                                       _tl238170238799_
                                       _e238171238802_
                                       _hd238172238805_
                                       _tl238173238807_
                                       _e238174238810_
                                       _hd238175238813_
                                       _tl238176238815_
                                       _e238177238818_
                                       _hd238178238821_
                                       _tl238179238823_
                                       _e238180238826_
                                       _hd238181238829_
                                       _tl238182238831_
                                       _e238183238834_
                                       _hd238184238837_
                                       _tl238185238839_))))
                              (___match247198247199_
                               _e238162238778_
                               _hd238163238781_
                               _tl238164238783_
                               _e238165238786_
                               _hd238166238789_
                               _tl238167238791_
                               _e238168238794_
                               _hd238169238797_
                               _tl238170238799_
                               _e238171238802_
                               _hd238172238805_
                               _tl238173238807_
                               _e238174238810_
                               _hd238175238813_
                               _tl238176238815_
                               _e238177238818_
                               _hd238178238821_
                               _tl238179238823_
                               _e238180238826_
                               _hd238181238829_
                               _tl238182238831_
                               _e238183238834_
                               _hd238184238837_
                               _tl238185238839_))
                          (___match246984246985_
                           _e238162238778_
                           _hd238163238781_
                           _tl238164238783_
                           _e238165238786_
                           _hd238166238789_
                           _tl238167238791_
                           _e238168238794_
                           _hd238169238797_
                           _tl238170238799_
                           _e238171238802_
                           _hd238172238805_
                           _tl238173238807_
                           _e238174238810_
                           _hd238175238813_
                           _tl238176238815_
                           _e238177238818_
                           _hd238178238821_
                           _tl238179238823_
                           _e238180238826_
                           _hd238181238829_
                           _tl238182238831_
                           _e238183238834_
                           _hd238184238837_
                           _tl238185238839_
                           _e238186238842_
                           _hd238187238845_
                           _tl238188238847_))))
                   (___match246806246807_
                    (lambda (_e238118238967_
                             _hd238119238970_
                             _tl238120238972_
                             _e238121238975_
                             _hd238122238978_
                             _tl238123238980_
                             _e238124238983_
                             _hd238125238986_
                             _tl238126238988_
                             _e238127238991_
                             _hd238128238994_
                             _tl238129238996_
                             _e238130238999_
                             _hd238131239002_
                             _tl238132239004_
                             _e238133239007_
                             _hd238134239010_
                             _tl238135239012_
                             _e238136239015_
                             _hd238137239018_
                             _tl238138239020_
                             _e238139239023_
                             _hd238140239026_
                             _tl238141239028_
                             _e238142239031_
                             _hd238143239034_
                             _tl238144239036_
                             _e238145239039_
                             _hd238146239042_
                             _tl238147239044_
                             ___splice246705246706_
                             _target238148239047_
                             _tl238150239049_)
                      (letrec ((_loop238151239052_
                                (lambda (_hd238149239055_ _args238155239057_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd238149239055_))
                                      (let ((_e238152239060_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd238149239055_))))
                                        (let ((_lp-tl238154239065_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e238152239060_)))
                                              (_lp-hd238153239063_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e238152239060_))))
                                          (let ((__tmp248076
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd238153239063_
                                                         _args238155239057_))))
                                            (declare (not safe))
                                            (_loop238151239052_
                                             _lp-tl238154239065_
                                             __tmp248076))))
                                      (let ((_args238156239068_
                                             (reverse _args238155239057_)))
                                        (let ((_L239071_ _args238156239068_)
                                              (_L239072_ _hd238146239042_)
                                              (_L239073_ _hd238137239018_)
                                              (_L239074_ _hd238128238994_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L239074_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L239073_
                                                      _self238099_)))
                                              (___kont246703246704_
                                               _L239071_
                                               _L239072_
                                               _L239073_
                                               _L239074_)
                                              (___match246994246995_
                                               _e238118238967_
                                               _hd238119238970_
                                               _tl238120238972_
                                               _e238121238975_
                                               _hd238122238978_
                                               _tl238123238980_
                                               _e238124238983_
                                               _hd238125238986_
                                               _tl238126238988_
                                               _e238127238991_
                                               _hd238128238994_
                                               _tl238129238996_
                                               _e238130238999_
                                               _hd238131239002_
                                               _tl238132239004_
                                               _e238133239007_
                                               _hd238134239010_
                                               _tl238135239012_
                                               _e238136239015_
                                               _hd238137239018_
                                               _tl238138239020_
                                               _e238139239023_
                                               _hd238140239026_
                                               _tl238141239028_
                                               _e238142239031_
                                               _hd238143239034_
                                               _tl238144239036_
                                               _e238145239039_
                                               _hd238146239042_
                                               _tl238147239044_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop238151239052_ _target238148239047_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx246701246702_))
                  (let ((_e238118238967_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx246701246702_))))
                    (let ((_tl238120238972_
                           (let ()
                             (declare (not safe))
                             (##cdr _e238118238967_)))
                          (_hd238119238970_
                           (let ()
                             (declare (not safe))
                             (##car _e238118238967_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl238120238972_))
                          (let ((_e238121238975_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl238120238972_))))
                            (let ((_tl238123238980_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238121238975_)))
                                  (_hd238122238978_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238121238975_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd238122238978_))
                                  (let ((_e238124238983_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd238122238978_))))
                                    (let ((_tl238126238988_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e238124238983_)))
                                          (_hd238125238986_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e238124238983_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd238125238986_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd238125238986_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl238126238988_))
                                                  (let ((_e238127238991_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl238126238988_))))
                                                    (let ((_tl238129238996_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e238127238991_)))
                                                          (_hd238128238994_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e238127238991_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl238129238996_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl238123238980_))
                      (let ((_e238130238999_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl238123238980_))))
                        (let ((_tl238132239004_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e238130238999_)))
                              (_hd238131239002_
                               (let ()
                                 (declare (not safe))
                                 (##car _e238130238999_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd238131239002_))
                              (let ((_e238133239007_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd238131239002_))))
                                (let ((_tl238135239012_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e238133239007_)))
                                      (_hd238134239010_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e238133239007_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd238134239010_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd238134239010_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl238135239012_))
                                              (let ((_e238136239015_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl238135239012_))))
                                                (let ((_tl238138239020_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e238136239015_)))
                                                      (_hd238137239018_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e238136239015_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl238138239020_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl238132239004_))
                                                          (let ((_e238139239023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl238132239004_))))
                    (let ((_tl238141239028_
                           (let ()
                             (declare (not safe))
                             (##cdr _e238139239023_)))
                          (_hd238140239026_
                           (let ()
                             (declare (not safe))
                             (##car _e238139239023_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd238140239026_))
                          (let ((_e238142239031_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd238140239026_))))
                            (let ((_tl238144239036_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238142239031_)))
                                  (_hd238143239034_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238142239031_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd238143239034_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd238143239034_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl238144239036_))
                                          (let ((_e238145239039_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl238144239036_))))
                                            (let ((_tl238147239044_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e238145239039_)))
                                                  (_hd238146239042_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e238145239039_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl238147239044_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl238141239028_))
                                                      (let ((___splice246705246706_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl238141239028_ '0))))
                (let ((_tl238150239049_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice246705246706_ '1)))
                      (_target238148239047_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice246705246706_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl238150239049_))
                      (___match246806246807_
                       _e238118238967_
                       _hd238119238970_
                       _tl238120238972_
                       _e238121238975_
                       _hd238122238978_
                       _tl238123238980_
                       _e238124238983_
                       _hd238125238986_
                       _tl238126238988_
                       _e238127238991_
                       _hd238128238994_
                       _tl238129238996_
                       _e238130238999_
                       _hd238131239002_
                       _tl238132239004_
                       _e238133239007_
                       _hd238134239010_
                       _tl238135239012_
                       _e238136239015_
                       _hd238137239018_
                       _tl238138239020_
                       _e238139239023_
                       _hd238140239026_
                       _tl238141239028_
                       _e238142239031_
                       _hd238143239034_
                       _tl238144239036_
                       _e238145239039_
                       _hd238146239042_
                       _tl238147239044_
                       ___splice246705246706_
                       _target238148239047_
                       _tl238150239049_)
                      (___match246994246995_
                       _e238118238967_
                       _hd238119238970_
                       _tl238120238972_
                       _e238121238975_
                       _hd238122238978_
                       _tl238123238980_
                       _e238124238983_
                       _hd238125238986_
                       _tl238126238988_
                       _e238127238991_
                       _hd238128238994_
                       _tl238129238996_
                       _e238130238999_
                       _hd238131239002_
                       _tl238132239004_
                       _e238133239007_
                       _hd238134239010_
                       _tl238135239012_
                       _e238136239015_
                       _hd238137239018_
                       _tl238138239020_
                       _e238139239023_
                       _hd238140239026_
                       _tl238141239028_
                       _e238142239031_
                       _hd238143239034_
                       _tl238144239036_
                       _e238145239039_
                       _hd238146239042_
                       _tl238147239044_))))
              (___match246994246995_
               _e238118238967_
               _hd238119238970_
               _tl238120238972_
               _e238121238975_
               _hd238122238978_
               _tl238123238980_
               _e238124238983_
               _hd238125238986_
               _tl238126238988_
               _e238127238991_
               _hd238128238994_
               _tl238129238996_
               _e238130238999_
               _hd238131239002_
               _tl238132239004_
               _e238133239007_
               _hd238134239010_
               _tl238135239012_
               _e238136239015_
               _hd238137239018_
               _tl238138239020_
               _e238139239023_
               _hd238140239026_
               _tl238141239028_
               _e238142239031_
               _hd238143239034_
               _tl238144239036_
               _e238145239039_
               _hd238146239042_
               _tl238147239044_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match247198247199_
                                                   _e238118238967_
                                                   _hd238119238970_
                                                   _tl238120238972_
                                                   _e238121238975_
                                                   _hd238122238978_
                                                   _tl238123238980_
                                                   _e238124238983_
                                                   _hd238125238986_
                                                   _tl238126238988_
                                                   _e238127238991_
                                                   _hd238128238994_
                                                   _tl238129238996_
                                                   _e238130238999_
                                                   _hd238131239002_
                                                   _tl238132239004_
                                                   _e238133239007_
                                                   _hd238134239010_
                                                   _tl238135239012_
                                                   _e238136239015_
                                                   _hd238137239018_
                                                   _tl238138239020_
                                                   _e238139239023_
                                                   _hd238140239026_
                                                   _tl238141239028_))))
                                          (___match247198247199_
                                           _e238118238967_
                                           _hd238119238970_
                                           _tl238120238972_
                                           _e238121238975_
                                           _hd238122238978_
                                           _tl238123238980_
                                           _e238124238983_
                                           _hd238125238986_
                                           _tl238126238988_
                                           _e238127238991_
                                           _hd238128238994_
                                           _tl238129238996_
                                           _e238130238999_
                                           _hd238131239002_
                                           _tl238132239004_
                                           _e238133239007_
                                           _hd238134239010_
                                           _tl238135239012_
                                           _e238136239015_
                                           _hd238137239018_
                                           _tl238138239020_
                                           _e238139239023_
                                           _hd238140239026_
                                           _tl238141239028_))
                                      (___match246874246875_
                                       _e238118238967_
                                       _hd238119238970_
                                       _tl238120238972_
                                       _e238121238975_
                                       _hd238122238978_
                                       _tl238123238980_
                                       _e238124238983_
                                       _hd238125238986_
                                       _tl238126238988_
                                       _e238127238991_
                                       _hd238128238994_
                                       _tl238129238996_
                                       _e238130238999_
                                       _hd238131239002_
                                       _tl238132239004_
                                       _e238133239007_
                                       _hd238134239010_
                                       _tl238135239012_
                                       _e238136239015_
                                       _hd238137239018_
                                       _tl238138239020_
                                       _e238139239023_
                                       _hd238140239026_
                                       _tl238141239028_
                                       _e238142239031_
                                       _hd238143239034_
                                       _tl238144239036_))
                                  (___match247198247199_
                                   _e238118238967_
                                   _hd238119238970_
                                   _tl238120238972_
                                   _e238121238975_
                                   _hd238122238978_
                                   _tl238123238980_
                                   _e238124238983_
                                   _hd238125238986_
                                   _tl238126238988_
                                   _e238127238991_
                                   _hd238128238994_
                                   _tl238129238996_
                                   _e238130238999_
                                   _hd238131239002_
                                   _tl238132239004_
                                   _e238133239007_
                                   _hd238134239010_
                                   _tl238135239012_
                                   _e238136239015_
                                   _hd238137239018_
                                   _tl238138239020_
                                   _e238139239023_
                                   _hd238140239026_
                                   _tl238141239028_))))
                          (___match247198247199_
                           _e238118238967_
                           _hd238119238970_
                           _tl238120238972_
                           _e238121238975_
                           _hd238122238978_
                           _tl238123238980_
                           _e238124238983_
                           _hd238125238986_
                           _tl238126238988_
                           _e238127238991_
                           _hd238128238994_
                           _tl238129238996_
                           _e238130238999_
                           _hd238131239002_
                           _tl238132239004_
                           _e238133239007_
                           _hd238134239010_
                           _tl238135239012_
                           _e238136239015_
                           _hd238137239018_
                           _tl238138239020_
                           _e238139239023_
                           _hd238140239026_
                           _tl238141239028_))))
                  (___match247136247137_
                   _e238118238967_
                   _hd238119238970_
                   _tl238120238972_
                   _e238121238975_
                   _hd238122238978_
                   _tl238123238980_
                   _e238124238983_
                   _hd238125238986_
                   _tl238126238988_
                   _e238127238991_
                   _hd238128238994_
                   _tl238129238996_
                   _e238130238999_
                   _hd238131239002_
                   _tl238132239004_
                   _e238133239007_
                   _hd238134239010_
                   _tl238135239012_
                   _e238136239015_
                   _hd238137239018_
                   _tl238138239020_))
              (___kont246719246720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont246719246720_))
                                          (___kont246719246720_))
                                      (___kont246719246720_))))
                              (___kont246719246720_))))
                      (___kont246719246720_))
                  (___kont246719246720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont246719246720_))
                                              (___kont246719246720_))
                                          (___kont246719246720_))))
                                  (___kont246719246720_))))
                          (___kont246719246720_))))
                  (___kont246719246720_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx237044_
               _self237045_
               _$t237046_
               _methods237047_
               _slots237048_
               _class-check237049_
               _struct-check237050_
               _struct-assert237051_)
        (letrec ((_force-e237053_
                  (lambda (_what238096_)
                    (let ((__tmp248077
                           (let ((__tmp248081
                                  (let ((__tmp248082
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp248082)))
                                 (__tmp248078
                                  (let ((__tmp248079
                                         (let ((__tmp248080
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what238096_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp248080))))
                                    (declare (not safe))
                                    (cons __tmp248079 '()))))
                             (declare (not safe))
                             (cons __tmp248081 __tmp248078))))
                      (declare (not safe))
                      (cons '%#call __tmp248077)))))
          (let* ((___stx247203247204_ _stx237044_)
                 (_g237061237283_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx247203247204_)))))
            (let ((___kont247205247206_
                   (lambda (_L238042_ _L238043_ _L238044_ _L238045_)
                     (let ((_$method238090_
                            (hash-ref
                             _methods237047_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L238043_))))
                           (_args238091_
                            (map (lambda (_g238078238080_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g238078238080_
                                      _self237045_
                                      _$t237046_
                                      _methods237047_
                                      _slots237048_
                                      _class-check237049_
                                      _struct-check237050_
                                      _struct-assert237051_)))
                                 (let ((__tmp248083
                                        (lambda (_g238082238085_
                                                 _g238083238087_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g238082238085_
                                                  _g238083238087_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp248083 '() _L238042_)))))
                       (let ((__tmp248084
                              (let ((__tmp248085
                                     (let ((__tmp248089
                                            (let ()
                                              (declare (not safe))
                                              (_force-e237053_
                                               _$method238090_)))
                                           (__tmp248086
                                            (let ((__tmp248087
                                                   (let ((__tmp248088
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self237045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp248088))))
                                              (declare (not safe))
                                              (cons __tmp248087
                                                    _args238091_))))
                                       (declare (not safe))
                                       (cons __tmp248089 __tmp248086))))
                                (declare (not safe))
                                (cons '%#call __tmp248085))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp248084 _stx237044_)))))
                  (___kont247209247210_
                   (lambda (_L237874_ _L237875_ _L237876_ _L237877_ _L237878_)
                     (let ((_$method237930_
                            (hash-ref
                             _methods237047_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L237875_))))
                           (_args237931_
                            (map (lambda (_g237918237920_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g237918237920_
                                      _self237045_
                                      _$t237046_
                                      _methods237047_
                                      _slots237048_
                                      _class-check237049_
                                      _struct-check237050_
                                      _struct-assert237051_)))
                                 (let ((__tmp248090
                                        (lambda (_g237922237925_
                                                 _g237923237927_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g237922237925_
                                                  _g237923237927_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp248090 '() _L237874_)))))
                       (let ((__tmp248091
                              (let ((__tmp248092
                                     (let ((__tmp248098
                                            (let ((__tmp248099
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp248099)))
                                           (__tmp248093
                                            (let ((__tmp248097
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e237053_
                                                      _$method237930_)))
                                                  (__tmp248094
                                                   (let ((__tmp248095
                                                          (let ((__tmp248096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self237045_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp248096))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp248095
                                                           _args237931_))))
                                              (declare (not safe))
                                              (cons __tmp248097 __tmp248094))))
                                       (declare (not safe))
                                       (cons __tmp248098 __tmp248093))))
                                (declare (not safe))
                                (cons '%#call __tmp248092))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp248091 _stx237044_)))))
                  (___kont247213247214_
                   (lambda (_L237705_ _L237706_ _L237707_)
                     (let* ((_$field237739_
                             (hash-ref
                              _slots237048_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _L237705_))))
                            (__tmp248100
                             (let ((__tmp248101
                                    (let ((__tmp248108
                                           (let ((__tmp248109
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t237046_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp248109)))
                                          (__tmp248102
                                           (let ((__tmp248106
                                                  (let ((__tmp248107
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field237739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp248107)))
                                                 (__tmp248103
                                                  (let ((__tmp248104
                                                         (let ((__tmp248105
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self237045_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp248105))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp248104 '()))))
                                             (declare (not safe))
                                             (cons __tmp248106 __tmp248103))))
                                      (declare (not safe))
                                      (cons __tmp248108 __tmp248102))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp248101))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp248100 _stx237044_))))
                  (___kont247215247216_
                   (lambda (_L237579_ _L237580_ _L237581_ _L237582_)
                     (let ((_$field237617_
                            (hash-ref
                             _slots237048_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L237580_))))
                           (_expr237618_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L237579_
                               _self237045_
                               _$t237046_
                               _methods237047_
                               _slots237048_
                               _class-check237049_
                               _struct-check237050_
                               _struct-assert237051_))))
                       (let ((__tmp248110
                              (let ((__tmp248111
                                     (let ((__tmp248119
                                            (let ((__tmp248120
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t237046_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp248120)))
                                           (__tmp248112
                                            (let ((__tmp248117
                                                   (let ((__tmp248118
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field237617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp248118)))
                                                  (__tmp248113
                                                   (let ((__tmp248115
                                                          (let ((__tmp248116
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self237045_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp248116)))
                 (__tmp248114
                  (let () (declare (not safe)) (cons _expr237618_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp248115
                                                           __tmp248114))))
                                              (declare (not safe))
                                              (cons __tmp248117 __tmp248113))))
                                       (declare (not safe))
                                       (cons __tmp248119 __tmp248112))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp248111))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp248110 _stx237044_)))))
                  (___kont247217247218_
                   (lambda (_L237458_ _L237459_)
                     (let* ((_slot237481_
                             (##structure-ref
                              (let ((__tmp248121
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L237459_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp248121))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field237483_
                             (hash-ref _slots237048_ _slot237481_)))
                       (let ((__tmp248122
                              (let ((__tmp248123
                                     (let ((__tmp248130
                                            (let ((__tmp248131
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t237046_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp248131)))
                                           (__tmp248124
                                            (let ((__tmp248128
                                                   (let ((__tmp248129
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field237483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp248129)))
                                                  (__tmp248125
                                                   (let ((__tmp248126
                                                          (let ((__tmp248127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self237045_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp248127))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp248126 '()))))
                                              (declare (not safe))
                                              (cons __tmp248128 __tmp248125))))
                                       (declare (not safe))
                                       (cons __tmp248130 __tmp248124))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp248123))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp248122 _stx237044_)))))
                  (___kont247219247220_
                   (lambda (_L237359_ _L237360_ _L237361_)
                     (let* ((_slot237390_
                             (##structure-ref
                              (let ((__tmp248132
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L237361_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp248132))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field237392_
                             (hash-ref _slots237048_ _slot237390_))
                            (_expr237394_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L237359_
                                _self237045_
                                _$t237046_
                                _methods237047_
                                _slots237048_
                                _class-check237049_
                                _struct-check237050_
                                _struct-assert237051_))))
                       (let ((__tmp248133
                              (let ((__tmp248134
                                     (let ((__tmp248142
                                            (let ((__tmp248143
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t237046_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp248143)))
                                           (__tmp248135
                                            (let ((__tmp248140
                                                   (let ((__tmp248141
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field237392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp248141)))
                                                  (__tmp248136
                                                   (let ((__tmp248138
                                                          (let ((__tmp248139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self237045_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp248139)))
                 (__tmp248137
                  (let () (declare (not safe)) (cons _expr237394_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp248138
                                                           __tmp248137))))
                                              (declare (not safe))
                                              (cons __tmp248140 __tmp248136))))
                                       (declare (not safe))
                                       (cons __tmp248142 __tmp248135))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp248134))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp248133 _stx237044_)))))
                  (___kont247221247222_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx237044_
                        _self237045_
                        _$t237046_
                        _methods237047_
                        _slots237048_
                        _class-check237049_
                        _struct-check237050_
                        _struct-assert237051_)))))
              (let* ((___match247702247703_
                      (lambda (_e237255237295_
                               _hd237256237298_
                               _tl237257237300_
                               _e237258237303_
                               _hd237259237306_
                               _tl237260237308_
                               _e237261237311_
                               _hd237262237314_
                               _tl237263237316_
                               _e237264237319_
                               _hd237265237322_
                               _tl237266237324_
                               _e237267237327_
                               _hd237268237330_
                               _tl237269237332_
                               _e237270237335_
                               _hd237271237338_
                               _tl237272237340_
                               _e237273237343_
                               _hd237274237346_
                               _tl237275237348_
                               _e237276237351_
                               _hd237277237354_
                               _tl237278237356_)
                        (let ((_L237359_ _hd237277237354_)
                              (_L237360_ _hd237274237346_)
                              (_L237361_ _hd237265237322_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L237360_
                                      _self237045_))
                                   (let ((__tmp248144
                                          (let ((__tmp248145
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L237361_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp248145))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp248144
                                      'gxc#!mutator::t)))
                              (___kont247219247220_
                               _L237359_
                               _L237360_
                               _L237361_)
                              (___kont247221247222_)))))
                     (___match247700247701_
                      (lambda (_e237255237295_
                               _hd237256237298_
                               _tl237257237300_
                               _e237258237303_
                               _hd237259237306_
                               _tl237260237308_
                               _e237261237311_
                               _hd237262237314_
                               _tl237263237316_
                               _e237264237319_
                               _hd237265237322_
                               _tl237266237324_
                               _e237267237327_
                               _hd237268237330_
                               _tl237269237332_
                               _e237270237335_
                               _hd237271237338_
                               _tl237272237340_
                               _e237273237343_
                               _hd237274237346_
                               _tl237275237348_
                               _e237276237351_
                               _hd237277237354_
                               _tl237278237356_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl237278237356_))
                            (___match247702247703_
                             _e237255237295_
                             _hd237256237298_
                             _tl237257237300_
                             _e237258237303_
                             _hd237259237306_
                             _tl237260237308_
                             _e237261237311_
                             _hd237262237314_
                             _tl237263237316_
                             _e237264237319_
                             _hd237265237322_
                             _tl237266237324_
                             _e237267237327_
                             _hd237268237330_
                             _tl237269237332_
                             _e237270237335_
                             _hd237271237338_
                             _tl237272237340_
                             _e237273237343_
                             _hd237274237346_
                             _tl237275237348_
                             _e237276237351_
                             _hd237277237354_
                             _tl237278237356_)
                            (___kont247221247222_))))
                     (___match247694247695_
                      (lambda (_e237255237295_
                               _hd237256237298_
                               _tl237257237300_
                               _e237258237303_
                               _hd237259237306_
                               _tl237260237308_
                               _e237261237311_
                               _hd237262237314_
                               _tl237263237316_
                               _e237264237319_
                               _hd237265237322_
                               _tl237266237324_
                               _e237267237327_
                               _hd237268237330_
                               _tl237269237332_
                               _e237270237335_
                               _hd237271237338_
                               _tl237272237340_
                               _e237273237343_
                               _hd237274237346_
                               _tl237275237348_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl237269237332_))
                            (let ((_e237276237351_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl237269237332_))))
                              (let ((_tl237278237356_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237276237351_)))
                                    (_hd237277237354_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237276237351_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl237278237356_))
                                    (___match247702247703_
                                     _e237255237295_
                                     _hd237256237298_
                                     _tl237257237300_
                                     _e237258237303_
                                     _hd237259237306_
                                     _tl237260237308_
                                     _e237261237311_
                                     _hd237262237314_
                                     _tl237263237316_
                                     _e237264237319_
                                     _hd237265237322_
                                     _tl237266237324_
                                     _e237267237327_
                                     _hd237268237330_
                                     _tl237269237332_
                                     _e237270237335_
                                     _hd237271237338_
                                     _tl237272237340_
                                     _e237273237343_
                                     _hd237274237346_
                                     _tl237275237348_
                                     _e237276237351_
                                     _hd237277237354_
                                     _tl237278237356_)
                                    (___kont247221247222_))))
                            (___kont247221247222_))))
                     (___match247640247641_
                      (lambda (_e237231237402_
                               _hd237232237405_
                               _tl237233237407_
                               _e237234237410_
                               _hd237235237413_
                               _tl237236237415_
                               _e237237237418_
                               _hd237238237421_
                               _tl237239237423_
                               _e237240237426_
                               _hd237241237429_
                               _tl237242237431_
                               _e237243237434_
                               _hd237244237437_
                               _tl237245237439_
                               _e237246237442_
                               _hd237247237445_
                               _tl237248237447_
                               _e237249237450_
                               _hd237250237453_
                               _tl237251237455_)
                        (let ((_L237458_ _hd237250237453_)
                              (_L237459_ _hd237241237429_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L237458_
                                      _self237045_))
                                   (let ((__tmp248146
                                          (let ((__tmp248147
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L237459_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp248147))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp248146
                                      'gxc#!accessor::t)))
                              (___kont247217247218_ _L237458_ _L237459_)
                              (___kont247221247222_)))))
                     (___match247638247639_
                      (lambda (_e237231237402_
                               _hd237232237405_
                               _tl237233237407_
                               _e237234237410_
                               _hd237235237413_
                               _tl237236237415_
                               _e237237237418_
                               _hd237238237421_
                               _tl237239237423_
                               _e237240237426_
                               _hd237241237429_
                               _tl237242237431_
                               _e237243237434_
                               _hd237244237437_
                               _tl237245237439_
                               _e237246237442_
                               _hd237247237445_
                               _tl237248237447_
                               _e237249237450_
                               _hd237250237453_
                               _tl237251237455_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl237245237439_))
                            (___match247640247641_
                             _e237231237402_
                             _hd237232237405_
                             _tl237233237407_
                             _e237234237410_
                             _hd237235237413_
                             _tl237236237415_
                             _e237237237418_
                             _hd237238237421_
                             _tl237239237423_
                             _e237240237426_
                             _hd237241237429_
                             _tl237242237431_
                             _e237243237434_
                             _hd237244237437_
                             _tl237245237439_
                             _e237246237442_
                             _hd237247237445_
                             _tl237248237447_
                             _e237249237450_
                             _hd237250237453_
                             _tl237251237455_)
                            (___match247694247695_
                             _e237231237402_
                             _hd237232237405_
                             _tl237233237407_
                             _e237234237410_
                             _hd237235237413_
                             _tl237236237415_
                             _e237237237418_
                             _hd237238237421_
                             _tl237239237423_
                             _e237240237426_
                             _hd237241237429_
                             _tl237242237431_
                             _e237243237434_
                             _hd237244237437_
                             _tl237245237439_
                             _e237246237442_
                             _hd237247237445_
                             _tl237248237447_
                             _e237249237450_
                             _hd237250237453_
                             _tl237251237455_))))
                     (___match247584247585_
                      (lambda (_e237196237491_
                               _hd237197237494_
                               _tl237198237496_
                               _e237199237499_
                               _hd237200237502_
                               _tl237201237504_
                               _e237202237507_
                               _hd237203237510_
                               _tl237204237512_
                               _e237205237515_
                               _hd237206237518_
                               _tl237207237520_
                               _e237208237523_
                               _hd237209237526_
                               _tl237210237528_
                               _e237211237531_
                               _hd237212237534_
                               _tl237213237536_
                               _e237214237539_
                               _hd237215237542_
                               _tl237216237544_
                               _e237217237547_
                               _hd237218237550_
                               _tl237219237552_
                               _e237220237555_
                               _hd237221237558_
                               _tl237222237560_
                               _e237223237563_
                               _hd237224237566_
                               _tl237225237568_
                               _e237226237571_
                               _hd237227237574_
                               _tl237228237576_)
                        (let ((_L237579_ _hd237227237574_)
                              (_L237580_ _hd237224237566_)
                              (_L237581_ _hd237215237542_)
                              (_L237582_ _hd237206237518_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L237582_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L237582_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L237581_
                                      _self237045_)))
                              (___kont247215247216_
                               _L237579_
                               _L237580_
                               _L237581_
                               _L237582_)
                              (___kont247221247222_)))))
                     (___match247576247577_
                      (lambda (_e237196237491_
                               _hd237197237494_
                               _tl237198237496_
                               _e237199237499_
                               _hd237200237502_
                               _tl237201237504_
                               _e237202237507_
                               _hd237203237510_
                               _tl237204237512_
                               _e237205237515_
                               _hd237206237518_
                               _tl237207237520_
                               _e237208237523_
                               _hd237209237526_
                               _tl237210237528_
                               _e237211237531_
                               _hd237212237534_
                               _tl237213237536_
                               _e237214237539_
                               _hd237215237542_
                               _tl237216237544_
                               _e237217237547_
                               _hd237218237550_
                               _tl237219237552_
                               _e237220237555_
                               _hd237221237558_
                               _tl237222237560_
                               _e237223237563_
                               _hd237224237566_
                               _tl237225237568_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl237219237552_))
                            (let ((_e237226237571_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl237219237552_))))
                              (let ((_tl237228237576_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237226237571_)))
                                    (_hd237227237574_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237226237571_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl237228237576_))
                                    (___match247584247585_
                                     _e237196237491_
                                     _hd237197237494_
                                     _tl237198237496_
                                     _e237199237499_
                                     _hd237200237502_
                                     _tl237201237504_
                                     _e237202237507_
                                     _hd237203237510_
                                     _tl237204237512_
                                     _e237205237515_
                                     _hd237206237518_
                                     _tl237207237520_
                                     _e237208237523_
                                     _hd237209237526_
                                     _tl237210237528_
                                     _e237211237531_
                                     _hd237212237534_
                                     _tl237213237536_
                                     _e237214237539_
                                     _hd237215237542_
                                     _tl237216237544_
                                     _e237217237547_
                                     _hd237218237550_
                                     _tl237219237552_
                                     _e237220237555_
                                     _hd237221237558_
                                     _tl237222237560_
                                     _e237223237563_
                                     _hd237224237566_
                                     _tl237225237568_
                                     _e237226237571_
                                     _hd237227237574_
                                     _tl237228237576_)
                                    (___kont247221247222_))))
                            (___match247700247701_
                             _e237196237491_
                             _hd237197237494_
                             _tl237198237496_
                             _e237199237499_
                             _hd237200237502_
                             _tl237201237504_
                             _e237202237507_
                             _hd237203237510_
                             _tl237204237512_
                             _e237205237515_
                             _hd237206237518_
                             _tl237207237520_
                             _e237208237523_
                             _hd237209237526_
                             _tl237210237528_
                             _e237211237531_
                             _hd237212237534_
                             _tl237213237536_
                             _e237214237539_
                             _hd237215237542_
                             _tl237216237544_
                             _e237217237547_
                             _hd237218237550_
                             _tl237219237552_))))
                     (___match247498247499_
                      (lambda (_e237162237625_
                               _hd237163237628_
                               _tl237164237630_
                               _e237165237633_
                               _hd237166237636_
                               _tl237167237638_
                               _e237168237641_
                               _hd237169237644_
                               _tl237170237646_
                               _e237171237649_
                               _hd237172237652_
                               _tl237173237654_
                               _e237174237657_
                               _hd237175237660_
                               _tl237176237662_
                               _e237177237665_
                               _hd237178237668_
                               _tl237179237670_
                               _e237180237673_
                               _hd237181237676_
                               _tl237182237678_
                               _e237183237681_
                               _hd237184237684_
                               _tl237185237686_
                               _e237186237689_
                               _hd237187237692_
                               _tl237188237694_
                               _e237189237697_
                               _hd237190237700_
                               _tl237191237702_)
                        (let ((_L237705_ _hd237190237700_)
                              (_L237706_ _hd237181237676_)
                              (_L237707_ _hd237172237652_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L237707_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L237707_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L237706_
                                      _self237045_)))
                              (___kont247213247214_
                               _L237705_
                               _L237706_
                               _L237707_)
                              (___match247702247703_
                               _e237162237625_
                               _hd237163237628_
                               _tl237164237630_
                               _e237165237633_
                               _hd237166237636_
                               _tl237167237638_
                               _e237168237641_
                               _hd237169237644_
                               _tl237170237646_
                               _e237171237649_
                               _hd237172237652_
                               _tl237173237654_
                               _e237174237657_
                               _hd237175237660_
                               _tl237176237662_
                               _e237177237665_
                               _hd237178237668_
                               _tl237179237670_
                               _e237180237673_
                               _hd237181237676_
                               _tl237182237678_
                               _e237183237681_
                               _hd237184237684_
                               _tl237185237686_)))))
                     (___match247496247497_
                      (lambda (_e237162237625_
                               _hd237163237628_
                               _tl237164237630_
                               _e237165237633_
                               _hd237166237636_
                               _tl237167237638_
                               _e237168237641_
                               _hd237169237644_
                               _tl237170237646_
                               _e237171237649_
                               _hd237172237652_
                               _tl237173237654_
                               _e237174237657_
                               _hd237175237660_
                               _tl237176237662_
                               _e237177237665_
                               _hd237178237668_
                               _tl237179237670_
                               _e237180237673_
                               _hd237181237676_
                               _tl237182237678_
                               _e237183237681_
                               _hd237184237684_
                               _tl237185237686_
                               _e237186237689_
                               _hd237187237692_
                               _tl237188237694_
                               _e237189237697_
                               _hd237190237700_
                               _tl237191237702_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl237185237686_))
                            (___match247498247499_
                             _e237162237625_
                             _hd237163237628_
                             _tl237164237630_
                             _e237165237633_
                             _hd237166237636_
                             _tl237167237638_
                             _e237168237641_
                             _hd237169237644_
                             _tl237170237646_
                             _e237171237649_
                             _hd237172237652_
                             _tl237173237654_
                             _e237174237657_
                             _hd237175237660_
                             _tl237176237662_
                             _e237177237665_
                             _hd237178237668_
                             _tl237179237670_
                             _e237180237673_
                             _hd237181237676_
                             _tl237182237678_
                             _e237183237681_
                             _hd237184237684_
                             _tl237185237686_
                             _e237186237689_
                             _hd237187237692_
                             _tl237188237694_
                             _e237189237697_
                             _hd237190237700_
                             _tl237191237702_)
                            (___match247576247577_
                             _e237162237625_
                             _hd237163237628_
                             _tl237164237630_
                             _e237165237633_
                             _hd237166237636_
                             _tl237167237638_
                             _e237168237641_
                             _hd237169237644_
                             _tl237170237646_
                             _e237171237649_
                             _hd237172237652_
                             _tl237173237654_
                             _e237174237657_
                             _hd237175237660_
                             _tl237176237662_
                             _e237177237665_
                             _hd237178237668_
                             _tl237179237670_
                             _e237180237673_
                             _hd237181237676_
                             _tl237182237678_
                             _e237183237681_
                             _hd237184237684_
                             _tl237185237686_
                             _e237186237689_
                             _hd237187237692_
                             _tl237188237694_
                             _e237189237697_
                             _hd237190237700_
                             _tl237191237702_))))
                     (___match247486247487_
                      (lambda (_e237162237625_
                               _hd237163237628_
                               _tl237164237630_
                               _e237165237633_
                               _hd237166237636_
                               _tl237167237638_
                               _e237168237641_
                               _hd237169237644_
                               _tl237170237646_
                               _e237171237649_
                               _hd237172237652_
                               _tl237173237654_
                               _e237174237657_
                               _hd237175237660_
                               _tl237176237662_
                               _e237177237665_
                               _hd237178237668_
                               _tl237179237670_
                               _e237180237673_
                               _hd237181237676_
                               _tl237182237678_
                               _e237183237681_
                               _hd237184237684_
                               _tl237185237686_
                               _e237186237689_
                               _hd237187237692_
                               _tl237188237694_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd237187237692_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl237188237694_))
                                (let ((_e237189237697_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl237188237694_))))
                                  (let ((_tl237191237702_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237189237697_)))
                                        (_hd237190237700_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237189237697_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl237191237702_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl237185237686_))
                                            (___match247498247499_
                                             _e237162237625_
                                             _hd237163237628_
                                             _tl237164237630_
                                             _e237165237633_
                                             _hd237166237636_
                                             _tl237167237638_
                                             _e237168237641_
                                             _hd237169237644_
                                             _tl237170237646_
                                             _e237171237649_
                                             _hd237172237652_
                                             _tl237173237654_
                                             _e237174237657_
                                             _hd237175237660_
                                             _tl237176237662_
                                             _e237177237665_
                                             _hd237178237668_
                                             _tl237179237670_
                                             _e237180237673_
                                             _hd237181237676_
                                             _tl237182237678_
                                             _e237183237681_
                                             _hd237184237684_
                                             _tl237185237686_
                                             _e237186237689_
                                             _hd237187237692_
                                             _tl237188237694_
                                             _e237189237697_
                                             _hd237190237700_
                                             _tl237191237702_)
                                            (___match247576247577_
                                             _e237162237625_
                                             _hd237163237628_
                                             _tl237164237630_
                                             _e237165237633_
                                             _hd237166237636_
                                             _tl237167237638_
                                             _e237168237641_
                                             _hd237169237644_
                                             _tl237170237646_
                                             _e237171237649_
                                             _hd237172237652_
                                             _tl237173237654_
                                             _e237174237657_
                                             _hd237175237660_
                                             _tl237176237662_
                                             _e237177237665_
                                             _hd237178237668_
                                             _tl237179237670_
                                             _e237180237673_
                                             _hd237181237676_
                                             _tl237182237678_
                                             _e237183237681_
                                             _hd237184237684_
                                             _tl237185237686_
                                             _e237186237689_
                                             _hd237187237692_
                                             _tl237188237694_
                                             _e237189237697_
                                             _hd237190237700_
                                             _tl237191237702_))
                                        (___match247700247701_
                                         _e237162237625_
                                         _hd237163237628_
                                         _tl237164237630_
                                         _e237165237633_
                                         _hd237166237636_
                                         _tl237167237638_
                                         _e237168237641_
                                         _hd237169237644_
                                         _tl237170237646_
                                         _e237171237649_
                                         _hd237172237652_
                                         _tl237173237654_
                                         _e237174237657_
                                         _hd237175237660_
                                         _tl237176237662_
                                         _e237177237665_
                                         _hd237178237668_
                                         _tl237179237670_
                                         _e237180237673_
                                         _hd237181237676_
                                         _tl237182237678_
                                         _e237183237681_
                                         _hd237184237684_
                                         _tl237185237686_))))
                                (___match247700247701_
                                 _e237162237625_
                                 _hd237163237628_
                                 _tl237164237630_
                                 _e237165237633_
                                 _hd237166237636_
                                 _tl237167237638_
                                 _e237168237641_
                                 _hd237169237644_
                                 _tl237170237646_
                                 _e237171237649_
                                 _hd237172237652_
                                 _tl237173237654_
                                 _e237174237657_
                                 _hd237175237660_
                                 _tl237176237662_
                                 _e237177237665_
                                 _hd237178237668_
                                 _tl237179237670_
                                 _e237180237673_
                                 _hd237181237676_
                                 _tl237182237678_
                                 _e237183237681_
                                 _hd237184237684_
                                 _tl237185237686_))
                            (___match247700247701_
                             _e237162237625_
                             _hd237163237628_
                             _tl237164237630_
                             _e237165237633_
                             _hd237166237636_
                             _tl237167237638_
                             _e237168237641_
                             _hd237169237644_
                             _tl237170237646_
                             _e237171237649_
                             _hd237172237652_
                             _tl237173237654_
                             _e237174237657_
                             _hd237175237660_
                             _tl237176237662_
                             _e237177237665_
                             _hd237178237668_
                             _tl237179237670_
                             _e237180237673_
                             _hd237181237676_
                             _tl237182237678_
                             _e237183237681_
                             _hd237184237684_
                             _tl237185237686_))))
                     (___match247418247419_
                      (lambda (_e237111237746_
                               _hd237112237749_
                               _tl237113237751_
                               _e237114237754_
                               _hd237115237757_
                               _tl237116237759_
                               _e237117237762_
                               _hd237118237765_
                               _tl237119237767_
                               _e237120237770_
                               _hd237121237773_
                               _tl237122237775_
                               _e237123237778_
                               _hd237124237781_
                               _tl237125237783_
                               _e237126237786_
                               _hd237127237789_
                               _tl237128237791_
                               _e237129237794_
                               _hd237130237797_
                               _tl237131237799_
                               _e237132237802_
                               _hd237133237805_
                               _tl237134237807_
                               _e237135237810_
                               _hd237136237813_
                               _tl237137237815_
                               _e237138237818_
                               _hd237139237821_
                               _tl237140237823_
                               _e237141237826_
                               _hd237142237829_
                               _tl237143237831_
                               _e237144237834_
                               _hd237145237837_
                               _tl237146237839_
                               _e237147237842_
                               _hd237148237845_
                               _tl237149237847_
                               ___splice247211247212_
                               _target237150237850_
                               _tl237152237852_)
                        (letrec ((_loop237153237855_
                                  (lambda (_hd237151237858_ _args237157237860_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd237151237858_))
                                        (let ((_e237154237863_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd237151237858_))))
                                          (let ((_lp-tl237156237868_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e237154237863_)))
                                                (_lp-hd237155237866_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e237154237863_))))
                                            (let ((__tmp248148
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd237155237866_
                                                           _args237157237860_))))
                                              (declare (not safe))
                                              (_loop237153237855_
                                               _lp-tl237156237868_
                                               __tmp248148))))
                                        (let ((_args237158237871_
                                               (reverse _args237157237860_)))
                                          (let ((_L237874_ _args237158237871_)
                                                (_L237875_ _hd237148237845_)
                                                (_L237876_ _hd237139237821_)
                                                (_L237877_ _hd237130237797_)
                                                (_L237878_ _hd237121237773_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L237878_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L237877_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L237876_
                                                        _self237045_)))
                                                (___kont247209247210_
                                                 _L237874_
                                                 _L237875_
                                                 _L237876_
                                                 _L237877_
                                                 _L237878_)
                                                (___kont247221247222_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop237153237855_ _target237150237850_ '())))))
                     (___match247376247377_
                      (lambda (_e237111237746_
                               _hd237112237749_
                               _tl237113237751_
                               _e237114237754_
                               _hd237115237757_
                               _tl237116237759_
                               _e237117237762_
                               _hd237118237765_
                               _tl237119237767_
                               _e237120237770_
                               _hd237121237773_
                               _tl237122237775_
                               _e237123237778_
                               _hd237124237781_
                               _tl237125237783_
                               _e237126237786_
                               _hd237127237789_
                               _tl237128237791_
                               _e237129237794_
                               _hd237130237797_
                               _tl237131237799_
                               _e237132237802_
                               _hd237133237805_
                               _tl237134237807_
                               _e237135237810_
                               _hd237136237813_
                               _tl237137237815_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd237136237813_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl237137237815_))
                                (let ((_e237138237818_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl237137237815_))))
                                  (let ((_tl237140237823_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237138237818_)))
                                        (_hd237139237821_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237138237818_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl237140237823_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl237134237807_))
                                            (let ((_e237141237826_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl237134237807_))))
                                              (let ((_tl237143237831_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e237141237826_)))
                                                    (_hd237142237829_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e237141237826_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd237142237829_))
                                                    (let ((_e237144237834_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd237142237829_))))
                                                      (let ((_tl237146237839_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e237144237834_)))
                    (_hd237145237837_
                     (let () (declare (not safe)) (##car _e237144237834_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd237145237837_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd237145237837_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl237146237839_))
                            (let ((_e237147237842_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl237146237839_))))
                              (let ((_tl237149237847_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237147237842_)))
                                    (_hd237148237845_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237147237842_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl237149237847_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl237143237831_))
                                        (let ((___splice247211247212_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl237143237831_
                                                  '0))))
                                          (let ((_tl237152237852_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice247211247212_
                                                    '1)))
                                                (_target237150237850_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice247211247212_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl237152237852_))
                                                (___match247418247419_
                                                 _e237111237746_
                                                 _hd237112237749_
                                                 _tl237113237751_
                                                 _e237114237754_
                                                 _hd237115237757_
                                                 _tl237116237759_
                                                 _e237117237762_
                                                 _hd237118237765_
                                                 _tl237119237767_
                                                 _e237120237770_
                                                 _hd237121237773_
                                                 _tl237122237775_
                                                 _e237123237778_
                                                 _hd237124237781_
                                                 _tl237125237783_
                                                 _e237126237786_
                                                 _hd237127237789_
                                                 _tl237128237791_
                                                 _e237129237794_
                                                 _hd237130237797_
                                                 _tl237131237799_
                                                 _e237132237802_
                                                 _hd237133237805_
                                                 _tl237134237807_
                                                 _e237135237810_
                                                 _hd237136237813_
                                                 _tl237137237815_
                                                 _e237138237818_
                                                 _hd237139237821_
                                                 _tl237140237823_
                                                 _e237141237826_
                                                 _hd237142237829_
                                                 _tl237143237831_
                                                 _e237144237834_
                                                 _hd237145237837_
                                                 _tl237146237839_
                                                 _e237147237842_
                                                 _hd237148237845_
                                                 _tl237149237847_
                                                 ___splice247211247212_
                                                 _target237150237850_
                                                 _tl237152237852_)
                                                (___kont247221247222_))))
                                        (___kont247221247222_))
                                    (___kont247221247222_))))
                            (___kont247221247222_))
                        (___kont247221247222_))
                    (___kont247221247222_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont247221247222_))))
                                            (___match247700247701_
                                             _e237111237746_
                                             _hd237112237749_
                                             _tl237113237751_
                                             _e237114237754_
                                             _hd237115237757_
                                             _tl237116237759_
                                             _e237117237762_
                                             _hd237118237765_
                                             _tl237119237767_
                                             _e237120237770_
                                             _hd237121237773_
                                             _tl237122237775_
                                             _e237123237778_
                                             _hd237124237781_
                                             _tl237125237783_
                                             _e237126237786_
                                             _hd237127237789_
                                             _tl237128237791_
                                             _e237129237794_
                                             _hd237130237797_
                                             _tl237131237799_
                                             _e237132237802_
                                             _hd237133237805_
                                             _tl237134237807_))
                                        (___match247700247701_
                                         _e237111237746_
                                         _hd237112237749_
                                         _tl237113237751_
                                         _e237114237754_
                                         _hd237115237757_
                                         _tl237116237759_
                                         _e237117237762_
                                         _hd237118237765_
                                         _tl237119237767_
                                         _e237120237770_
                                         _hd237121237773_
                                         _tl237122237775_
                                         _e237123237778_
                                         _hd237124237781_
                                         _tl237125237783_
                                         _e237126237786_
                                         _hd237127237789_
                                         _tl237128237791_
                                         _e237129237794_
                                         _hd237130237797_
                                         _tl237131237799_
                                         _e237132237802_
                                         _hd237133237805_
                                         _tl237134237807_))))
                                (___match247700247701_
                                 _e237111237746_
                                 _hd237112237749_
                                 _tl237113237751_
                                 _e237114237754_
                                 _hd237115237757_
                                 _tl237116237759_
                                 _e237117237762_
                                 _hd237118237765_
                                 _tl237119237767_
                                 _e237120237770_
                                 _hd237121237773_
                                 _tl237122237775_
                                 _e237123237778_
                                 _hd237124237781_
                                 _tl237125237783_
                                 _e237126237786_
                                 _hd237127237789_
                                 _tl237128237791_
                                 _e237129237794_
                                 _hd237130237797_
                                 _tl237131237799_
                                 _e237132237802_
                                 _hd237133237805_
                                 _tl237134237807_))
                            (___match247486247487_
                             _e237111237746_
                             _hd237112237749_
                             _tl237113237751_
                             _e237114237754_
                             _hd237115237757_
                             _tl237116237759_
                             _e237117237762_
                             _hd237118237765_
                             _tl237119237767_
                             _e237120237770_
                             _hd237121237773_
                             _tl237122237775_
                             _e237123237778_
                             _hd237124237781_
                             _tl237125237783_
                             _e237126237786_
                             _hd237127237789_
                             _tl237128237791_
                             _e237129237794_
                             _hd237130237797_
                             _tl237131237799_
                             _e237132237802_
                             _hd237133237805_
                             _tl237134237807_
                             _e237135237810_
                             _hd237136237813_
                             _tl237137237815_))))
                     (___match247308247309_
                      (lambda (_e237067237938_
                               _hd237068237941_
                               _tl237069237943_
                               _e237070237946_
                               _hd237071237949_
                               _tl237072237951_
                               _e237073237954_
                               _hd237074237957_
                               _tl237075237959_
                               _e237076237962_
                               _hd237077237965_
                               _tl237078237967_
                               _e237079237970_
                               _hd237080237973_
                               _tl237081237975_
                               _e237082237978_
                               _hd237083237981_
                               _tl237084237983_
                               _e237085237986_
                               _hd237086237989_
                               _tl237087237991_
                               _e237088237994_
                               _hd237089237997_
                               _tl237090237999_
                               _e237091238002_
                               _hd237092238005_
                               _tl237093238007_
                               _e237094238010_
                               _hd237095238013_
                               _tl237096238015_
                               ___splice247207247208_
                               _target237097238018_
                               _tl237099238020_)
                        (letrec ((_loop237100238023_
                                  (lambda (_hd237098238026_ _args237104238028_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd237098238026_))
                                        (let ((_e237101238031_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd237098238026_))))
                                          (let ((_lp-tl237103238036_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e237101238031_)))
                                                (_lp-hd237102238034_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e237101238031_))))
                                            (let ((__tmp248149
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd237102238034_
                                                           _args237104238028_))))
                                              (declare (not safe))
                                              (_loop237100238023_
                                               _lp-tl237103238036_
                                               __tmp248149))))
                                        (let ((_args237105238039_
                                               (reverse _args237104238028_)))
                                          (let ((_L238042_ _args237105238039_)
                                                (_L238043_ _hd237095238013_)
                                                (_L238044_ _hd237086237989_)
                                                (_L238045_ _hd237077237965_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L238045_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L238044_
                                                        _self237045_)))
                                                (___kont247205247206_
                                                 _L238042_
                                                 _L238043_
                                                 _L238044_
                                                 _L238045_)
                                                (___match247496247497_
                                                 _e237067237938_
                                                 _hd237068237941_
                                                 _tl237069237943_
                                                 _e237070237946_
                                                 _hd237071237949_
                                                 _tl237072237951_
                                                 _e237073237954_
                                                 _hd237074237957_
                                                 _tl237075237959_
                                                 _e237076237962_
                                                 _hd237077237965_
                                                 _tl237078237967_
                                                 _e237079237970_
                                                 _hd237080237973_
                                                 _tl237081237975_
                                                 _e237082237978_
                                                 _hd237083237981_
                                                 _tl237084237983_
                                                 _e237085237986_
                                                 _hd237086237989_
                                                 _tl237087237991_
                                                 _e237088237994_
                                                 _hd237089237997_
                                                 _tl237090237999_
                                                 _e237091238002_
                                                 _hd237092238005_
                                                 _tl237093238007_
                                                 _e237094238010_
                                                 _hd237095238013_
                                                 _tl237096238015_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop237100238023_ _target237097238018_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx247203247204_))
                    (let ((_e237067237938_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx247203247204_))))
                      (let ((_tl237069237943_
                             (let ()
                               (declare (not safe))
                               (##cdr _e237067237938_)))
                            (_hd237068237941_
                             (let ()
                               (declare (not safe))
                               (##car _e237067237938_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl237069237943_))
                            (let ((_e237070237946_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl237069237943_))))
                              (let ((_tl237072237951_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237070237946_)))
                                    (_hd237071237949_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237070237946_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd237071237949_))
                                    (let ((_e237073237954_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd237071237949_))))
                                      (let ((_tl237075237959_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e237073237954_)))
                                            (_hd237074237957_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e237073237954_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd237074237957_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd237074237957_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl237075237959_))
                                                    (let ((_e237076237962_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl237075237959_))))
                                                      (let ((_tl237078237967_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e237076237962_)))
                    (_hd237077237965_
                     (let () (declare (not safe)) (##car _e237076237962_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl237078237967_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl237072237951_))
                        (let ((_e237079237970_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl237072237951_))))
                          (let ((_tl237081237975_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e237079237970_)))
                                (_hd237080237973_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e237079237970_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd237080237973_))
                                (let ((_e237082237978_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd237080237973_))))
                                  (let ((_tl237084237983_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237082237978_)))
                                        (_hd237083237981_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237082237978_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd237083237981_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd237083237981_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl237084237983_))
                                                (let ((_e237085237986_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl237084237983_))))
                                                  (let ((_tl237087237991_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e237085237986_)))
                                                        (_hd237086237989_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e237085237986_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl237087237991_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl237081237975_))
                                                            (let ((_e237088237994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl237081237975_))))
                      (let ((_tl237090237999_
                             (let ()
                               (declare (not safe))
                               (##cdr _e237088237994_)))
                            (_hd237089237997_
                             (let ()
                               (declare (not safe))
                               (##car _e237088237994_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd237089237997_))
                            (let ((_e237091238002_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd237089237997_))))
                              (let ((_tl237093238007_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237091238002_)))
                                    (_hd237092238005_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237091238002_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd237092238005_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd237092238005_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl237093238007_))
                                            (let ((_e237094238010_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl237093238007_))))
                                              (let ((_tl237096238015_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e237094238010_)))
                                                    (_hd237095238013_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e237094238010_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl237096238015_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl237090237999_))
                                                        (let ((___splice247207247208_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl237090237999_ '0))))
                  (let ((_tl237099238020_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice247207247208_ '1)))
                        (_target237097238018_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice247207247208_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl237099238020_))
                        (___match247308247309_
                         _e237067237938_
                         _hd237068237941_
                         _tl237069237943_
                         _e237070237946_
                         _hd237071237949_
                         _tl237072237951_
                         _e237073237954_
                         _hd237074237957_
                         _tl237075237959_
                         _e237076237962_
                         _hd237077237965_
                         _tl237078237967_
                         _e237079237970_
                         _hd237080237973_
                         _tl237081237975_
                         _e237082237978_
                         _hd237083237981_
                         _tl237084237983_
                         _e237085237986_
                         _hd237086237989_
                         _tl237087237991_
                         _e237088237994_
                         _hd237089237997_
                         _tl237090237999_
                         _e237091238002_
                         _hd237092238005_
                         _tl237093238007_
                         _e237094238010_
                         _hd237095238013_
                         _tl237096238015_
                         ___splice247207247208_
                         _target237097238018_
                         _tl237099238020_)
                        (___match247496247497_
                         _e237067237938_
                         _hd237068237941_
                         _tl237069237943_
                         _e237070237946_
                         _hd237071237949_
                         _tl237072237951_
                         _e237073237954_
                         _hd237074237957_
                         _tl237075237959_
                         _e237076237962_
                         _hd237077237965_
                         _tl237078237967_
                         _e237079237970_
                         _hd237080237973_
                         _tl237081237975_
                         _e237082237978_
                         _hd237083237981_
                         _tl237084237983_
                         _e237085237986_
                         _hd237086237989_
                         _tl237087237991_
                         _e237088237994_
                         _hd237089237997_
                         _tl237090237999_
                         _e237091238002_
                         _hd237092238005_
                         _tl237093238007_
                         _e237094238010_
                         _hd237095238013_
                         _tl237096238015_))))
                (___match247496247497_
                 _e237067237938_
                 _hd237068237941_
                 _tl237069237943_
                 _e237070237946_
                 _hd237071237949_
                 _tl237072237951_
                 _e237073237954_
                 _hd237074237957_
                 _tl237075237959_
                 _e237076237962_
                 _hd237077237965_
                 _tl237078237967_
                 _e237079237970_
                 _hd237080237973_
                 _tl237081237975_
                 _e237082237978_
                 _hd237083237981_
                 _tl237084237983_
                 _e237085237986_
                 _hd237086237989_
                 _tl237087237991_
                 _e237088237994_
                 _hd237089237997_
                 _tl237090237999_
                 _e237091238002_
                 _hd237092238005_
                 _tl237093238007_
                 _e237094238010_
                 _hd237095238013_
                 _tl237096238015_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match247700247701_
                                                     _e237067237938_
                                                     _hd237068237941_
                                                     _tl237069237943_
                                                     _e237070237946_
                                                     _hd237071237949_
                                                     _tl237072237951_
                                                     _e237073237954_
                                                     _hd237074237957_
                                                     _tl237075237959_
                                                     _e237076237962_
                                                     _hd237077237965_
                                                     _tl237078237967_
                                                     _e237079237970_
                                                     _hd237080237973_
                                                     _tl237081237975_
                                                     _e237082237978_
                                                     _hd237083237981_
                                                     _tl237084237983_
                                                     _e237085237986_
                                                     _hd237086237989_
                                                     _tl237087237991_
                                                     _e237088237994_
                                                     _hd237089237997_
                                                     _tl237090237999_))))
                                            (___match247700247701_
                                             _e237067237938_
                                             _hd237068237941_
                                             _tl237069237943_
                                             _e237070237946_
                                             _hd237071237949_
                                             _tl237072237951_
                                             _e237073237954_
                                             _hd237074237957_
                                             _tl237075237959_
                                             _e237076237962_
                                             _hd237077237965_
                                             _tl237078237967_
                                             _e237079237970_
                                             _hd237080237973_
                                             _tl237081237975_
                                             _e237082237978_
                                             _hd237083237981_
                                             _tl237084237983_
                                             _e237085237986_
                                             _hd237086237989_
                                             _tl237087237991_
                                             _e237088237994_
                                             _hd237089237997_
                                             _tl237090237999_))
                                        (___match247376247377_
                                         _e237067237938_
                                         _hd237068237941_
                                         _tl237069237943_
                                         _e237070237946_
                                         _hd237071237949_
                                         _tl237072237951_
                                         _e237073237954_
                                         _hd237074237957_
                                         _tl237075237959_
                                         _e237076237962_
                                         _hd237077237965_
                                         _tl237078237967_
                                         _e237079237970_
                                         _hd237080237973_
                                         _tl237081237975_
                                         _e237082237978_
                                         _hd237083237981_
                                         _tl237084237983_
                                         _e237085237986_
                                         _hd237086237989_
                                         _tl237087237991_
                                         _e237088237994_
                                         _hd237089237997_
                                         _tl237090237999_
                                         _e237091238002_
                                         _hd237092238005_
                                         _tl237093238007_))
                                    (___match247700247701_
                                     _e237067237938_
                                     _hd237068237941_
                                     _tl237069237943_
                                     _e237070237946_
                                     _hd237071237949_
                                     _tl237072237951_
                                     _e237073237954_
                                     _hd237074237957_
                                     _tl237075237959_
                                     _e237076237962_
                                     _hd237077237965_
                                     _tl237078237967_
                                     _e237079237970_
                                     _hd237080237973_
                                     _tl237081237975_
                                     _e237082237978_
                                     _hd237083237981_
                                     _tl237084237983_
                                     _e237085237986_
                                     _hd237086237989_
                                     _tl237087237991_
                                     _e237088237994_
                                     _hd237089237997_
                                     _tl237090237999_))))
                            (___match247700247701_
                             _e237067237938_
                             _hd237068237941_
                             _tl237069237943_
                             _e237070237946_
                             _hd237071237949_
                             _tl237072237951_
                             _e237073237954_
                             _hd237074237957_
                             _tl237075237959_
                             _e237076237962_
                             _hd237077237965_
                             _tl237078237967_
                             _e237079237970_
                             _hd237080237973_
                             _tl237081237975_
                             _e237082237978_
                             _hd237083237981_
                             _tl237084237983_
                             _e237085237986_
                             _hd237086237989_
                             _tl237087237991_
                             _e237088237994_
                             _hd237089237997_
                             _tl237090237999_))))
                    (___match247638247639_
                     _e237067237938_
                     _hd237068237941_
                     _tl237069237943_
                     _e237070237946_
                     _hd237071237949_
                     _tl237072237951_
                     _e237073237954_
                     _hd237074237957_
                     _tl237075237959_
                     _e237076237962_
                     _hd237077237965_
                     _tl237078237967_
                     _e237079237970_
                     _hd237080237973_
                     _tl237081237975_
                     _e237082237978_
                     _hd237083237981_
                     _tl237084237983_
                     _e237085237986_
                     _hd237086237989_
                     _tl237087237991_))
                (___kont247221247222_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont247221247222_))
                                            (___kont247221247222_))
                                        (___kont247221247222_))))
                                (___kont247221247222_))))
                        (___kont247221247222_))
                    (___kont247221247222_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont247221247222_))
                                                (___kont247221247222_))
                                            (___kont247221247222_))))
                                    (___kont247221247222_))))
                            (___kont247221247222_))))
                    (___kont247221247222_))))))))))
