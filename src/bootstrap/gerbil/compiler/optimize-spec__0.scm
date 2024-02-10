(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1707601719)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl247104_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp252700 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl247104_ __tmp252700))
           (let ()
             (declare (not safe))
             (table-set! _tbl247104_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl247104_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl247104_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247104_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl247104_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx247087_ . _args247089_)
        (let ((__tmp252702
               (lambda ()
                 (declare (not safe))
                 (if (null? _args247089_)
                     (gxc#compile-e__0 _stx247087_)
                     (let ((_arg1247094_ (car _args247089_))
                           (_rest247096_ (cdr _args247089_)))
                       (if (null? _rest247096_)
                           (gxc#compile-e__1 _stx247087_ _arg1247094_)
                           (let ((_arg2247099_ (car _rest247096_))
                                 (_rest247101_ (cdr _rest247096_)))
                             (if (null? _rest247101_)
                                 (gxc#compile-e__2
                                  _stx247087_
                                  _arg1247094_
                                  _arg2247099_)
                                 (apply gxc#compile-e
                                        _stx247087_
                                        _arg1247094_
                                        _arg2247099_
                                        _rest247101_))))))))
              (__tmp252701 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp252702
           gxc#current-compile-methods
           __tmp252701))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl247084_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp252703 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl247084_ __tmp252703))
           (let ()
             (declare (not safe))
             (table-set! _tbl247084_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247084_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl247084_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247084_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247084_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247084_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247084_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl247084_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl247084_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl247084_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl247084_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl247084_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247084_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247084_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247084_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247084_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl247084_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx247067_ . _args247069_)
        (let ((__tmp252705
               (lambda ()
                 (declare (not safe))
                 (if (null? _args247069_)
                     (gxc#compile-e__0 _stx247067_)
                     (let ((_arg1247074_ (car _args247069_))
                           (_rest247076_ (cdr _args247069_)))
                       (if (null? _rest247076_)
                           (gxc#compile-e__1 _stx247067_ _arg1247074_)
                           (let ((_arg2247079_ (car _rest247076_))
                                 (_rest247081_ (cdr _rest247076_)))
                             (if (null? _rest247081_)
                                 (gxc#compile-e__2
                                  _stx247067_
                                  _arg1247074_
                                  _arg2247079_)
                                 (apply gxc#compile-e
                                        _stx247067_
                                        _arg1247074_
                                        _arg2247079_
                                        _rest247081_))))))))
              (__tmp252704 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp252705
           gxc#current-compile-methods
           __tmp252704))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl247064_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp252706 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl247064_ __tmp252706))
           (let ()
             (declare (not safe))
             (table-set! _tbl247064_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl247064_ '%#call gxc#subst-object-refs-call%))
           _tbl247064_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx247047_ . _args247049_)
        (let ((__tmp252708
               (lambda ()
                 (declare (not safe))
                 (if (null? _args247049_)
                     (gxc#compile-e__0 _stx247047_)
                     (let ((_arg1247054_ (car _args247049_))
                           (_rest247056_ (cdr _args247049_)))
                       (if (null? _rest247056_)
                           (gxc#compile-e__1 _stx247047_ _arg1247054_)
                           (let ((_arg2247059_ (car _rest247056_))
                                 (_rest247061_ (cdr _rest247056_)))
                             (if (null? _rest247061_)
                                 (gxc#compile-e__2
                                  _stx247047_
                                  _arg1247054_
                                  _arg2247059_)
                                 (apply gxc#compile-e
                                        _stx247047_
                                        _arg1247054_
                                        _arg2247059_
                                        _rest247061_))))))))
              (__tmp252707 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp252708
           gxc#current-compile-methods
           __tmp252707))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx243717_)
        (letrec ((_generate-method-bind243719_
                  (lambda (_$t247041_ _id247042_ _$id247043_)
                    (let ((_$tmp247045_
                           (let ((__tmp252709 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp252709))))
                      (let ((__tmp252754
                             (let ()
                               (declare (not safe))
                               (cons _$id247043_ '())))
                            (__tmp252710
                             (let ((__tmp252711
                                    (let ((__tmp252712
                                           (let ((__tmp252752
                                                  (let ((__tmp252753
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp252753)))
                                                 (__tmp252713
                                                  (let ((__tmp252714
                                                         (let ((__tmp252715
                                                                (let ((__tmp252716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252717
                                      (let ((__tmp252718
                                             (let ((__tmp252738
                                                    (let ((__tmp252739
                                                           (let ((__tmp252751
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp247045_ '())))
                         (__tmp252740
                          (let ((__tmp252741
                                 (let ((__tmp252742
                                        (let ((__tmp252749
                                               (let ((__tmp252750
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp252750)))
                                              (__tmp252743
                                               (let ((__tmp252747
                                                      (let ((__tmp252748
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t247041_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp252748)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp252744
                                                      (let ((__tmp252745
                                                             (let ((__tmp252746
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id247042_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp252746))))
                (declare (not safe))
                (cons __tmp252745 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp252747
                                                       __tmp252744))))
                                          (declare (not safe))
                                          (cons __tmp252749 __tmp252743))))
                                   (declare (not safe))
                                   (cons '%#call __tmp252742))))
                            (declare (not safe))
                            (cons __tmp252741 '()))))
                     (declare (not safe))
                     (cons __tmp252751 __tmp252740))))
              (declare (not safe))
              (cons __tmp252739 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp252719
                                                    (let ((__tmp252720
                                                           (let ((__tmp252721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252736
                                 (let ((__tmp252737
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp247045_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp252737)))
                                (__tmp252722
                                 (let ((__tmp252734
                                        (let ((__tmp252735
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp247045_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp252735)))
                                       (__tmp252723
                                        (let ((__tmp252724
                                               (let ((__tmp252725
                                                      (let ((__tmp252732
                                                             (let ((__tmp252733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp252733)))
                    (__tmp252726
                     (let ((__tmp252730
                            (let ((__tmp252731
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp252731)))
                           (__tmp252727
                            (let ((__tmp252728
                                   (let ((__tmp252729
                                          (let ()
                                            (declare (not safe))
                                            (cons _id247042_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp252729))))
                              (declare (not safe))
                              (cons __tmp252728 '()))))
                       (declare (not safe))
                       (cons __tmp252730 __tmp252727))))
                (declare (not safe))
                (cons __tmp252732 __tmp252726))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp252725))))
                                          (declare (not safe))
                                          (cons __tmp252724 '()))))
                                   (declare (not safe))
                                   (cons __tmp252734 __tmp252723))))
                            (declare (not safe))
                            (cons __tmp252736 __tmp252722))))
                     (declare (not safe))
                     (cons '%#if __tmp252721))))
              (declare (not safe))
              (cons __tmp252720 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp252738
                                                     __tmp252719))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp252718))))
                                 (declare (not safe))
                                 (cons __tmp252717 '()))))
                          (declare (not safe))
                          (cons '() __tmp252716))))
                   (declare (not safe))
                   (cons '%#lambda __tmp252715))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252714 '()))))
                                             (declare (not safe))
                                             (cons __tmp252752 __tmp252713))))
                                      (declare (not safe))
                                      (cons '%#call __tmp252712))))
                               (declare (not safe))
                               (cons __tmp252711 '()))))
                        (declare (not safe))
                        (cons __tmp252754 __tmp252710)))))
                 (_generate-slot-bind243720_
                  (lambda (_$t247035_ _id247036_ _$id247037_)
                    (let ((_$tmp247039_
                           (let ((__tmp252755 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp252755))))
                      (let ((__tmp252792
                             (let ()
                               (declare (not safe))
                               (cons _$id247037_ '())))
                            (__tmp252756
                             (let ((__tmp252757
                                    (let ((__tmp252758
                                           (let ((__tmp252778
                                                  (let ((__tmp252779
                                                         (let ((__tmp252791
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp247039_ '())))
                       (__tmp252780
                        (let ((__tmp252781
                               (let ((__tmp252782
                                      (let ((__tmp252789
                                             (let ((__tmp252790
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp252790)))
                                            (__tmp252783
                                             (let ((__tmp252787
                                                    (let ((__tmp252788
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t247035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp252788)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp252784
                                                    (let ((__tmp252785
                                                           (let ((__tmp252786
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id247036_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp252786))))
              (declare (not safe))
              (cons __tmp252785 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp252787
                                                     __tmp252784))))
                                        (declare (not safe))
                                        (cons __tmp252789 __tmp252783))))
                                 (declare (not safe))
                                 (cons '%#call __tmp252782))))
                          (declare (not safe))
                          (cons __tmp252781 '()))))
                   (declare (not safe))
                   (cons __tmp252791 __tmp252780))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252779 '())))
                                                 (__tmp252759
                                                  (let ((__tmp252760
                                                         (let ((__tmp252761
                                                                (let ((__tmp252776
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252777
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp247039_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp252777)))
                              (__tmp252762
                               (let ((__tmp252774
                                      (let ((__tmp252775
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp247039_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp252775)))
                                     (__tmp252763
                                      (let ((__tmp252764
                                             (let ((__tmp252765
                                                    (let ((__tmp252772
                                                           (let ((__tmp252773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp252773)))
                  (__tmp252766
                   (let ((__tmp252770
                          (let ((__tmp252771
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp252771)))
                         (__tmp252767
                          (let ((__tmp252768
                                 (let ((__tmp252769
                                        (let ()
                                          (declare (not safe))
                                          (cons _id247036_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp252769))))
                            (declare (not safe))
                            (cons __tmp252768 '()))))
                     (declare (not safe))
                     (cons __tmp252770 __tmp252767))))
              (declare (not safe))
              (cons __tmp252772 __tmp252766))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp252765))))
                                        (declare (not safe))
                                        (cons __tmp252764 '()))))
                                 (declare (not safe))
                                 (cons __tmp252774 __tmp252763))))
                          (declare (not safe))
                          (cons __tmp252776 __tmp252762))))
                   (declare (not safe))
                   (cons '%#if __tmp252761))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252760 '()))))
                                             (declare (not safe))
                                             (cons __tmp252778 __tmp252759))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp252758))))
                               (declare (not safe))
                               (cons __tmp252757 '()))))
                        (declare (not safe))
                        (cons __tmp252792 __tmp252756)))))
                 (_generate-class-check-bind243721_
                  (lambda (_$t247031_ _class-type247032_ _$class-type247033_)
                    (let ((__tmp252804
                           (let ()
                             (declare (not safe))
                             (cons _$class-type247033_ '())))
                          (__tmp252793
                           (let ((__tmp252794
                                  (let ((__tmp252795
                                         (let ((__tmp252802
                                                (let ((__tmp252803
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp252803)))
                                               (__tmp252796
                                                (let ((__tmp252800
                                                       (let ((__tmp252801
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t247031_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp252801)))
              (__tmp252797
               (let ((__tmp252798
                      (let ((__tmp252799
                             (let ()
                               (declare (not safe))
                               (cons _class-type247032_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp252799))))
                 (declare (not safe))
                 (cons __tmp252798 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252800
                                                        __tmp252797))))
                                           (declare (not safe))
                                           (cons __tmp252802 __tmp252796))))
                                    (declare (not safe))
                                    (cons '%#call __tmp252795))))
                             (declare (not safe))
                             (cons __tmp252794 '()))))
                      (declare (not safe))
                      (cons __tmp252804 __tmp252793))))
                 (_generate-struct-check-bind243722_
                  (lambda (_$t247027_ _class-type247028_ _$class-type247029_)
                    (let ((__tmp252816
                           (let ()
                             (declare (not safe))
                             (cons _$class-type247029_ '())))
                          (__tmp252805
                           (let ((__tmp252806
                                  (let ((__tmp252807
                                         (let ((__tmp252814
                                                (let ((__tmp252815
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp252815)))
                                               (__tmp252808
                                                (let ((__tmp252812
                                                       (let ((__tmp252813
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t247027_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp252813)))
              (__tmp252809
               (let ((__tmp252810
                      (let ((__tmp252811
                             (let ()
                               (declare (not safe))
                               (cons _class-type247028_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp252811))))
                 (declare (not safe))
                 (cons __tmp252810 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252812
                                                        __tmp252809))))
                                           (declare (not safe))
                                           (cons __tmp252814 __tmp252808))))
                                    (declare (not safe))
                                    (cons '%#call __tmp252807))))
                             (declare (not safe))
                             (cons __tmp252806 '()))))
                      (declare (not safe))
                      (cons __tmp252816 __tmp252805))))
                 (_generate-specializer-impl243723_
                  (lambda (_$t246976_
                           _methods-bind246977_
                           _slots-bind246978_
                           _class-check-bind246979_
                           _struct-check-bind246980_
                           _specializer-impl246981_
                           _lifted-specializer-id246982_
                           _unchecked-specializer-impl246983_)
                    (let ((__tmp252817
                           (let ((__tmp252818
                                  (let ((__tmp252844
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t246976_ '())))
                                        (__tmp252819
                                         (let ((__tmp252820
                                                (let ((__tmp252821
                                                       (let ((__tmp252841
                                                              (let ((__tmp252842
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp252843
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind246980_
                                              _class-check-bind246979_))))
                               (declare (not safe))
                               (foldr1 cons __tmp252843 _slots-bind246978_))))
                        (declare (not safe))
                        (foldr1 cons __tmp252842 _methods-bind246977_)))
                     (__tmp252822
                      (let ((__tmp252823
                             (if (or _lifted-specializer-id246982_
                                     _unchecked-specializer-impl246983_)
                                 (let* ((_$specializer246988_
                                         (let ((__tmp252824
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp252824)))
                                        (__tmp252825
                                         (let ((__tmp252837
                                                (let ((__tmp252838
                                                       (let ((__tmp252840
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer246988_ '())))
                     (__tmp252839
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl246981_ '()))))
                 (declare (not safe))
                 (cons __tmp252840 __tmp252839))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252838 '())))
                                               (__tmp252826
                                                (let ((__tmp252827
                                                       (let _recur246990_ ((_rest246992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind246980_)))
                 (let* ((_rest246993247001_ _rest246992_)
                        (_else246995247009_
                         (lambda ()
                           (if _lifted-specializer-id246982_
                               (let ((__tmp252828
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id246982_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp252828))
                               _unchecked-specializer-impl246983_)))
                        (_K246997247015_
                         (lambda (_rest247012_ _checkq247013_)
                           (let ((__tmp252829
                                  (let ((__tmp252835
                                         (let ((__tmp252836
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq247013_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp252836)))
                                        (__tmp252830
                                         (let ((__tmp252834
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur246990_
                                                   _rest247012_)))
                                               (__tmp252831
                                                (let ((__tmp252832
                                                       (let ((__tmp252833
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer246988_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp252833))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252832 '()))))
                                           (declare (not safe))
                                           (cons __tmp252834 __tmp252831))))
                                    (declare (not safe))
                                    (cons __tmp252835 __tmp252830))))
                             (declare (not safe))
                             (cons '%#if __tmp252829)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest246993247001_))
                       (let ((_hd246998247018_
                              (let ()
                                (declare (not safe))
                                (##car _rest246993247001_)))
                             (_tl246999247020_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest246993247001_))))
                         (let* ((_checkq247023_ _hd246998247018_)
                                (_rest247025_ _tl246999247020_))
                           (declare (not safe))
                           (_K246997247015_ _rest247025_ _checkq247023_)))
                       (let () (declare (not safe)) (_else246995247009_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252827 '()))))
                                           (declare (not safe))
                                           (cons __tmp252837 __tmp252826))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp252825))
                                 _specializer-impl246981_)))
                        (declare (not safe))
                        (cons __tmp252823 '()))))
                 (declare (not safe))
                 (cons __tmp252841 __tmp252822))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp252821))))
                                           (declare (not safe))
                                           (cons __tmp252820 '()))))
                                    (declare (not safe))
                                    (cons __tmp252844 __tmp252819))))
                             (declare (not safe))
                             (cons '%#lambda __tmp252818))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252817 _stx243717_))))
                 (_generate-specializer-def243724_
                  (lambda (_id246970_
                           _specializer-id246971_
                           _specializer-impl246972_
                           _lifted-specializer-id246973_
                           _unchecked-specializer-impl246974_)
                    (let ((__tmp252845
                           (let ((__tmp252846
                                  (let ((__tmp252847
                                         (let ((__tmp252867
                                                (let ((__tmp252868
                                                       (let ((__tmp252869
                                                              (let ((__tmp252871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id246971_ '())))
                            (__tmp252870
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl246972_ '()))))
                        (declare (not safe))
                        (cons __tmp252871 __tmp252870))))
                 (declare (not safe))
                 (cons '%#define-values __tmp252869))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp252868
                                                   _stx243717_)))
                                               (__tmp252848
                                                (let ((__tmp252855
                                                       (let ((__tmp252856
                                                              (let ((__tmp252857
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp252858
                                    (let ((__tmp252865
                                           (let ((__tmp252866
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp252866)))
                                          (__tmp252859
                                           (let ((__tmp252863
                                                  (let ((__tmp252864
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id246970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp252864)))
                                                 (__tmp252860
                                                  (let ((__tmp252861
                                                         (let ((__tmp252862
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id246971_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp252862))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252861 '()))))
                                             (declare (not safe))
                                             (cons __tmp252863 __tmp252860))))
                                      (declare (not safe))
                                      (cons __tmp252865 __tmp252859))))
                               (declare (not safe))
                               (cons '%#call __tmp252858))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp252857 _stx243717_))))
                 (declare (not safe))
                 (cons __tmp252856 '())))
              (__tmp252849
               (if _lifted-specializer-id246973_
                   (let ((__tmp252850
                          (let ((__tmp252851
                                 (let ((__tmp252852
                                        (let ((__tmp252854
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id246973_
                                                       '())))
                                              (__tmp252853
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl246974_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp252854 __tmp252853))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp252852))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp252851 _stx243717_))))
                     (declare (not safe))
                     (cons __tmp252850 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp252855
                                                          __tmp252849))))
                                           (declare (not safe))
                                           (cons __tmp252867 __tmp252848))))
                                    (declare (not safe))
                                    (cons _stx243717_ __tmp252847))))
                             (declare (not safe))
                             (cons '%#begin __tmp252846))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252845 _stx243717_)))))
          (let* ((___stx251661251662_ _stx243717_)
                 (_g243727243747_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx251661251662_)))))
            (let ((___kont251663251664_
                   (lambda (_L243791_ _L243792_)
                     (let ((_method-calls243811_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_slot-refs243812_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_class-type-check243813_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-check243814_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-assert243815_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_empty243816_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?))))
                       (letrec ((_no-specializer?243818_
                                 (lambda ()
                                   (if (let ((__tmp252876
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls243811_))))
                                         (declare (not safe))
                                         (fxzero? __tmp252876))
                                       (if (let ((__tmp252875
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs243812_))))
                                             (declare (not safe))
                                             (fxzero? __tmp252875))
                                           (if (let ((__tmp252874
                                                      (let ()
                                                        (declare (not safe))
                                                        (table-length
                                                         _class-type-check243813_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp252874))
                                               (if (let ((__tmp252873
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-check243814_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp252873))
                                                   (let ((__tmp252872
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-assert243815_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp252872))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?243819_
                                 (lambda ()
                                   (let ((_$e246963_
                                          (let ((__tmp252877
                                                 (let ((__tmp252878
                                                        (let ()
                                                          (declare (not safe))
                                                          (table-length
                                                           _struct-type-check243814_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp252878))))
                                            (declare (not safe))
                                            (not __tmp252877))))
                                     (if _$e246963_
                                         _$e246963_
                                         (let ((__tmp252879
                                                (let ((__tmp252880
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-length
                                                          _struct-type-assert243815_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp252880))))
                                           (declare (not safe))
                                           (not __tmp252879))))))
                                (_lift-unchecked-specializer?243820_
                                 (lambda ()
                                   (if (let ((__tmp252883
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls243811_))))
                                         (declare (not safe))
                                         (fxzero? __tmp252883))
                                       (if (let ((__tmp252882
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs243812_))))
                                             (declare (not safe))
                                             (fxzero? __tmp252882))
                                           (let ((__tmp252881
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _class-type-check243813_))))
                                             (declare (not safe))
                                             (fxzero? __tmp252881))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L243791_))
                             (let* ((___stx251575251576_ _L243791_)
                                    (_g244333244351_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx251575251576_)))))
                               (let ((___kont251577251578_
                                      (lambda (_L244387_ _L244388_ _L244389_)
                                        (for-each
                                         (lambda (_g244404244406_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g244404244406_
                                              _L244389_
                                              _method-calls243811_
                                              _slot-refs243812_
                                              _class-type-check243813_
                                              _struct-type-check243814_
                                              _struct-type-assert243815_)))
                                         _L244387_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?243818_))
                                            _stx243717_
                                            (let* ((_specializer-id244415_
                                                    (let* ((_id244409_
                                                            (let ((__tmp253033
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L243792_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp253033 '"::specialize")))
                   (_specializer-id244412_
                    (let ((__tmp253034
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx243717_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id244409_ __tmp253034))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id244412_))
              _specializer-id244412_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id244422_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?243820_))
                                                        (let* ((_id244417_
                                                                (let ((__tmp253035
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L243792_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp253035
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id244419_
                        (let ((__tmp253036
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx243717_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id244417_ __tmp253036))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id244419_))
                  _lifted-specializer-id244419_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t244424_
                                                    (let ((__tmp253037
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp253037)))
                                                   (_methods244426_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls243811_)))
                                                   (_$methods244430_
                                                    (map (lambda (_id244428_)
                                                           (let ((__tmp253038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id244428_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp253038)))
                 _methods244426_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g253039_
                                                    (for-each
                                                     (lambda (_g244431244434_
                                                              _g244432244436_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls243811_
                                                          _g244431244434_
                                                          _g244432244436_)))
                                                     _methods244426_
                                                     _$methods244430_))
                                                   (_methods-bind244447_
                                                    (map (lambda (_g244439244442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g244440244444_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind243719_
                      _$t244424_
                      _g244439244442_
                      _g244440244444_)))
                 _methods244426_
                 _$methods244430_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots244449_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs243812_)))
                                                   (_$slots244453_
                                                    (map (lambda (_id244451_)
                                                           (let ((__tmp253040
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id244451_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp253040)))
                 _slots244449_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g253041_
                                                    (for-each
                                                     (lambda (_g244454244457_
                                                              _g244455244459_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs243812_
                                                          _g244454244457_
                                                          _g244455244459_)))
                                                     _slots244449_
                                                     _$slots244453_))
                                                   (_slots-bind244470_
                                                    (map (lambda (_g244462244465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g244463244467_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind243720_
                      _$t244424_
                      _g244462244465_
                      _g244463244467_)))
                 _slots244449_
                 _$slots244453_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check244472_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check243813_)))
                                                   (_$class-check244475_
                                                    (map (lambda (_g253042_)
                                                           (let ((__tmp253043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp253043)))
                 _class-check244472_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g253044_
                                                    (for-each
                                                     (lambda (_g244476244479_
                                                              _g244477244481_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check243813_
                                                          _g244476244479_
                                                          _g244477244481_)))
                                                     _class-check244472_
                                                     _$class-check244475_))
                                                   (_class-check-bind244492_
                                                    (map (lambda (_g244484244487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g244485244489_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind243721_
                      _$t244424_
                      _g244484244487_
                      _g244485244489_)))
                 _class-check244472_
                 _$class-check244475_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all244494_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check243814_
                                                       _struct-type-assert243815_)))
                                                   (_struct-check244496_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all244494_)))
                                                   (_$struct-check244499_
                                                    (map (lambda (_g253045_)
                                                           (let ((__tmp253046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp253046)))
                 _struct-check244496_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g253047_
                                                    (for-each
                                                     (lambda (_g244500244503_
                                                              _g244501244505_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all244494_
                                                          _g244500244503_
                                                          _g244501244505_)))
                                                     _struct-check244496_
                                                     _$struct-check244499_))
                                                   (_struct-check-bind244516_
                                                    (map (lambda (_g244508244511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g244509244513_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind243722_
                      _$t244424_
                      _g244508244511_
                      _g244509244513_)))
                 _struct-check244496_
                 _$struct-check244499_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl244527_
                                                    (lambda (_struct-type-check1244518_
                                                             _struct-type-check2244519_)
                                                      (let* ((_specializer-body244525_
                                                              (map (lambda (_g244520244522_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g244520244522_
                                _L244389_
                                _$t244424_
                                _method-calls243811_
                                _slot-refs243812_
                                _class-type-check243813_
                                _struct-type-check1244518_
                                _struct-type-check2244519_)))
                           _L244387_))
                     (__tmp253048
                      (let ((__tmp253049
                             (let ((__tmp253050
                                    (let ()
                                      (declare (not safe))
                                      (cons _L244389_ _L244388_))))
                               (declare (not safe))
                               (cons __tmp253050 _specializer-body244525_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp253049))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp253048 _stx243717_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl244529_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl244527_
                                                       _struct-check-all244494_
                                                       _empty243816_)))
                                                   (_unchecked-specializer-impl244531_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?243819_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl244527_
                                                           _empty243816_
                                                           _struct-check-all244494_))
                                                        '#f))
                                                   (_specializer-impl244533_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl243723_
                                                       _$t244424_
                                                       _methods-bind244447_
                                                       _slots-bind244470_
                                                       _class-check-bind244492_
                                                       _struct-check-bind244516_
                                                       _specializer-impl244529_
                                                       _lifted-specializer-id244422_
                                                       _unchecked-specializer-impl244531_))))
                                              (let ((__tmp253052
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L243792_)))
                                                    (__tmp253051
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id244415_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp253052
                                                 '" => "
                                                 __tmp253051))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def243724_
                                                 _L243792_
                                                 _specializer-id244415_
                                                 _specializer-impl244533_
                                                 _lifted-specializer-id244422_
                                                 _unchecked-specializer-impl244531_))))))
                                     (___kont251579251580_
                                      (lambda () _stx243717_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx251575251576_))
                                     (let ((_e244340244363_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx251575251576_))))
                                       (let ((_tl244338244368_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e244340244363_)))
                                             (_hd244339244366_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e244340244363_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl244338244368_))
                                             (let ((_e244343244371_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl244338244368_))))
                                               (let ((_tl244341244376_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e244343244371_)))
                                                     (_hd244342244374_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e244343244371_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd244342244374_))
                                                     (let ((_e244346244379_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd244342244374_))))
                                                       (let ((_tl244344244384_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e244346244379_)))
                     (_hd244345244382_
                      (let () (declare (not safe)) (##car _e244346244379_))))
                 (___kont251577251578_
                  _tl244341244376_
                  _tl244344244384_
                  _hd244345244382_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont251579251580_))))
                                             (___kont251579251580_))))
                                     (___kont251579251580_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L243791_))
                                 (let* ((_g244539244558_
                                         (lambda (_g244540244555_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g244540244555_))))
                                        (_g244538244909_
                                         (lambda (_g244540244561_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g244540244561_))
                                               (let ((_e244544244563_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g244540244561_))))
                                                 (let ((_hd244543244566_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e244544244563_)))
                                                       (_tl244542244568_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e244544244563_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl244542244568_))
                                                       (let ((_g253009_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl244542244568_ '0))))
                 (begin
                   (let ((_g253010_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g253009_)
                                (##vector-length _g253009_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g253010_ 2)))
                         (error "Context expects 2 values" _g253010_)))
                   (let ((_target244545244571_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g253009_ 0)))
                         (_tl244547244573_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g253009_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl244547244573_))
                         (letrec ((_loop244548244576_
                                   (lambda (_hd244546244579_
                                            _clause244552244581_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd244546244579_))
                                         (let ((_e244549244584_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd244546244579_))))
                                           (let ((_lp-hd244550244587_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e244549244584_)))
                                                 (_lp-tl244551244589_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e244549244584_))))
                                             (let ((__tmp253032
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd244550244587_
                                                            _clause244552244581_))))
                                               (declare (not safe))
                                               (_loop244548244576_
                                                _lp-tl244551244589_
                                                __tmp253032))))
                                         (let ((_clause244553244592_
                                                (reverse _clause244552244581_)))
                                           ((lambda (_L244595_)
                                              (for-each
                                               (lambda (_clause244608_)
                                                 (let* ((___stx251601251602_
                                                         _clause244608_)
                                                        (_g244611244626_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx251601251602_)))))
                                                   (let ((___kont251603251604_
                                                          (lambda (_L244654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L244655_
                           _L244656_)
                    (for-each
                     (lambda (_g244671244673_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g244671244673_
                          _L244656_
                          _method-calls243811_
                          _slot-refs243812_
                          _class-type-check243813_
                          _struct-type-check243814_
                          _struct-type-assert243815_)))
                     _L244654_)))
                 (___kont251605251606_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx251601251602_))
                                                         (let ((_e244618244638_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx251601251602_))))
                   (let ((_tl244616244643_
                          (let ()
                            (declare (not safe))
                            (##cdr _e244618244638_)))
                         (_hd244617244641_
                          (let ()
                            (declare (not safe))
                            (##car _e244618244638_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd244617244641_))
                         (let ((_e244621244646_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd244617244641_))))
                           (let ((_tl244619244651_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e244621244646_)))
                                 (_hd244620244649_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e244621244646_))))
                             (___kont251603251604_
                              _tl244616244643_
                              _tl244619244651_
                              _hd244620244649_)))
                         (___kont251605251606_))))
                 (___kont251605251606_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp253011
                                                      (lambda (_g244678244681_
                                                               _g244679244683_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g244678244681_
                                                                _g244679244683_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp253011
                                                         '()
                                                         _L244595_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?243818_))
                                                  _stx243717_
                                                  (let* ((_specializer-id244692_
                                                          (let* ((_id244686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp253012
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L243792_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp253012 '"::specialize")))
                         (_specializer-id244689_
                          (let ((__tmp253013
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx243717_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id244686_ __tmp253013))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id244689_))
                    _specializer-id244689_))
                 (_lifted-specializer-id244699_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?243820_))
                      (let* ((_id244694_
                              (let ((__tmp253014
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L243792_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp253014
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id244696_
                              (let ((__tmp253015
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx243717_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id244694_
                                 __tmp253015))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id244696_))
                        _lifted-specializer-id244696_)
                      '#f))
                 (_$t244701_
                  (let ((__tmp253016 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp253016)))
                 (_methods244703_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls243811_)))
                 (_$methods244707_
                  (map (lambda (_id244705_)
                         (let ((__tmp253017 (gensym _id244705_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp253017)))
                       _methods244703_))
                 (_g253018_
                  (for-each
                   (lambda (_g244708244711_ _g244709244713_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls243811_
                        _g244708244711_
                        _g244709244713_)))
                   _methods244703_
                   _$methods244707_))
                 (_methods-bind244724_
                  (map (lambda (_g244716244719_ _g244717244721_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind243719_
                            _$t244701_
                            _g244716244719_
                            _g244717244721_)))
                       _methods244703_
                       _$methods244707_))
                 (_slots244726_
                  (let () (declare (not safe)) (hash-keys _slot-refs243812_)))
                 (_$slots244730_
                  (map (lambda (_id244728_)
                         (let ((__tmp253019 (gensym _id244728_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp253019)))
                       _slots244726_))
                 (_g253020_
                  (for-each
                   (lambda (_g244731244734_ _g244732244736_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs243812_
                        _g244731244734_
                        _g244732244736_)))
                   _slots244726_
                   _$slots244730_))
                 (_slots-bind244747_
                  (map (lambda (_g244739244742_ _g244740244744_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind243720_
                            _$t244701_
                            _g244739244742_
                            _g244740244744_)))
                       _slots244726_
                       _$slots244730_))
                 (_class-check244749_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check243813_)))
                 (_$class-check244752_
                  (map (lambda (_g253021_)
                         (let ((__tmp253022 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp253022)))
                       _class-check244749_))
                 (_g253023_
                  (for-each
                   (lambda (_g244753244756_ _g244754244758_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check243813_
                        _g244753244756_
                        _g244754244758_)))
                   _class-check244749_
                   _$class-check244752_))
                 (_class-check-bind244769_
                  (map (lambda (_g244761244764_ _g244762244766_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind243721_
                            _$t244701_
                            _g244761244764_
                            _g244762244766_)))
                       _class-check244749_
                       _$class-check244752_))
                 (_struct-check-all244771_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check243814_
                     _struct-type-assert243815_)))
                 (_struct-check244773_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all244771_)))
                 (_$struct-check244776_
                  (map (lambda (_g253024_)
                         (let ((__tmp253025 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp253025)))
                       _struct-check244773_))
                 (_g253026_
                  (for-each
                   (lambda (_g244777244780_ _g244778244782_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all244771_
                        _g244777244780_
                        _g244778244782_)))
                   _struct-check244773_
                   _$struct-check244776_))
                 (_struct-check-bind244793_
                  (map (lambda (_g244785244788_ _g244786244790_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind243722_
                            _$t244701_
                            _g244785244788_
                            _g244786244790_)))
                       _struct-check244773_
                       _$struct-check244776_))
                 (_make-specializer-impl244900_
                  (lambda (_struct-type-check1244795_
                           _struct-type-check2244796_)
                    (let* ((_specializer-clauses244898_
                            (map (lambda (_clause244798_)
                                   (let* ((___stx251621251622_ _clause244798_)
                                          (_g244801244816_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx251621251622_)))))
                                     (let ((___kont251623251624_
                                            (lambda (_L244844_
                                                     _L244845_
                                                     _L244846_)
                                              (let* ((_body244886_
                                                      (map (lambda (_g244881244883_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g244881244883_
                        _L244846_
                        _$t244701_
                        _method-calls243811_
                        _slot-refs243812_
                        _class-type-check243813_
                        _struct-type-check1244795_
                        _struct-type-check2244796_)))
                   _L244844_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp253027
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L244846_
                                                              _L244845_))))
                                                (declare (not safe))
                                                (cons __tmp253027
                                                      _body244886_))))
                                           (___kont251625251626_
                                            (lambda () _clause244798_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx251621251622_))
                                           (let ((_e244808244828_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx251621251622_))))
                                             (let ((_tl244806244833_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e244808244828_)))
                                                   (_hd244807244831_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e244808244828_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd244807244831_))
                                                   (let ((_e244811244836_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd244807244831_))))
                                                     (let ((_tl244809244841_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e244811244836_)))
                                                           (_hd244810244839_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e244811244836_))))
                                                       (___kont251623251624_
                                                        _tl244806244833_
                                                        _tl244809244841_
                                                        _hd244810244839_)))
                                                   (___kont251625251626_))))
                                           (___kont251625251626_)))))
                                 (let ((__tmp253028
                                        (lambda (_g244890244893_
                                                 _g244891244895_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g244890244893_
                                                  _g244891244895_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp253028 '() _L244595_))))
                           (__tmp253029
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses244898_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp253029 _stx243717_))))
                 (_specializer-impl244902_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl244900_
                     _struct-check-all244771_
                     _empty243816_)))
                 (_unchecked-specializer-impl244904_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?243819_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl244900_
                         _empty243816_
                         _struct-check-all244771_))
                      '#f))
                 (_specializer-impl244906_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl243723_
                     _$t244701_
                     _methods-bind244724_
                     _slots-bind244747_
                     _class-check-bind244769_
                     _struct-check-bind244793_
                     _specializer-impl244902_
                     _lifted-specializer-id244699_
                     _unchecked-specializer-impl244904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp253031
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L243792_)))
                                                          (__tmp253030
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id244692_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp253031
                                                       '" => "
                                                       __tmp253030))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def243724_
                                                       _L243792_
                                                       _specializer-id244692_
                                                       _specializer-impl244906_
                                                       _lifted-specializer-id244699_
                                                       _unchecked-specializer-impl244904_)))))
                                            _clause244553244592_))))))
                           (let ()
                             (declare (not safe))
                             (_loop244548244576_ _target244545244571_ '())))
                         (let ()
                           (declare (not safe))
                           (_g244539244558_ _g244540244561_))))))
               (let ()
                 (declare (not safe))
                 (_g244539244558_ _g244540244561_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g244539244558_
                                                  _g244540244561_))))))
                                   (declare (not safe))
                                   (_g244538244909_ _L243791_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L243791_))
                                     (let* ((_g244912244942_
                                             (lambda (_g244913244939_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g244913244939_))))
                                            (_g244911245630_
                                             (lambda (_g244913244945_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g244913244945_))
                                                   (let ((_e244919244947_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g244913244945_))))
                                                     (let ((_hd244918244950_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e244919244947_)))
                                                           (_tl244917244952_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e244919244947_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl244917244952_))
                                                           (let ((_e244922244955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl244917244952_))))
                     (let ((_hd244921244958_
                            (let ()
                              (declare (not safe))
                              (##car _e244922244955_)))
                           (_tl244920244960_
                            (let ()
                              (declare (not safe))
                              (##cdr _e244922244955_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd244921244958_))
                           (let ((_e244925244963_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd244921244958_))))
                             (let ((_hd244924244966_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e244925244963_)))
                                   (_tl244923244968_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e244925244963_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd244924244966_))
                                   (let ((_e244928244971_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd244924244966_))))
                                     (let ((_hd244927244974_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e244928244971_)))
                                           (_tl244926244976_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e244928244971_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd244927244974_))
                                           (let ((_e244931244979_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd244927244974_))))
                                             (let ((_hd244930244982_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e244931244979_)))
                                                   (_tl244929244984_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e244931244979_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl244929244984_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl244926244976_))
                                                       (let ((_e244934244987_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl244926244976_))))
                 (let ((_hd244933244990_
                        (let () (declare (not safe)) (##car _e244934244987_)))
                       (_tl244932244992_
                        (let () (declare (not safe)) (##cdr _e244934244987_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl244932244992_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl244923244968_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl244920244960_))
                               (let ((_e244937244995_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl244920244960_))))
                                 (let ((_hd244936244998_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e244937244995_)))
                                       (_tl244935245000_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e244937244995_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl244935245000_))
                                       ((lambda (_L245003_ _L245004_ _L245005_)
                                          (let* ((_g245028245046_
                                                  (lambda (_g245029245043_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g245029245043_))))
                                                 (_g245027245097_
                                                  (lambda (_g245029245049_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g245029245049_))
                                                        (let ((_e245035245051_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g245029245049_))))
                  (let ((_hd245034245054_
                         (let () (declare (not safe)) (##car _e245035245051_)))
                        (_tl245033245056_
                         (let ()
                           (declare (not safe))
                           (##cdr _e245035245051_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl245033245056_))
                        (let ((_e245038245059_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl245033245056_))))
                          (let ((_hd245037245062_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e245038245059_)))
                                (_tl245036245064_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e245038245059_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd245037245062_))
                                (let ((_e245041245067_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd245037245062_))))
                                  (let ((_hd245040245070_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e245041245067_)))
                                        (_tl245039245072_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e245041245067_))))
                                    ((lambda (_L245075_ _L245076_ _L245077_)
                                       (for-each
                                        (lambda (_g245092245094_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g245092245094_
                                             _L245077_
                                             _method-calls243811_
                                             _slot-refs243812_
                                             _class-type-check243813_
                                             _struct-type-check243814_
                                             _struct-type-assert243815_)))
                                        _L245075_))
                                     _tl245036245064_
                                     _tl245039245072_
                                     _hd245040245070_)))
                                (let ()
                                  (declare (not safe))
                                  (_g245028245046_ _g245029245049_)))))
                        (let ()
                          (declare (not safe))
                          (_g245028245046_ _g245029245049_)))))
                (let ()
                  (declare (not safe))
                  (_g245028245046_ _g245029245049_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g245027245097_ _L245004_))
                                          (let* ((_g245100245119_
                                                  (lambda (_g245101245116_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g245101245116_))))
                                                 (_g245099245238_
                                                  (lambda (_g245101245122_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g245101245122_))
                                                        (let ((_e245105245124_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g245101245122_))))
                  (let ((_hd245104245127_
                         (let () (declare (not safe)) (##car _e245105245124_)))
                        (_tl245103245129_
                         (let ()
                           (declare (not safe))
                           (##cdr _e245105245124_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl245103245129_))
                        (let ((_g252972_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl245103245129_
                                  '0))))
                          (begin
                            (let ((_g252973_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g252972_)
                                         (##vector-length _g252972_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g252973_ 2)))
                                  (error "Context expects 2 values"
                                         _g252973_)))
                            (let ((_target245106245132_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g252972_ 0)))
                                  (_tl245108245134_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g252972_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl245108245134_))
                                  (letrec ((_loop245109245137_
                                            (lambda (_hd245107245140_
                                                     _clause245113245142_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd245107245140_))
                                                  (let ((_e245110245145_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd245107245140_))))
                                                    (let ((_lp-hd245111245148_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e245110245145_)))
                                                          (_lp-tl245112245150_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e245110245145_))))
                                                      (let ((__tmp252975
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd245111245148_ _clause245113245142_))))
                (declare (not safe))
                (_loop245109245137_ _lp-tl245112245150_ __tmp252975))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause245114245153_
                                                         (reverse _clause245113245142_)))
                                                    ((lambda (_L245156_)
                                                       (for-each
                                                        (lambda (_clause245169_)
                                                          (let* ((_g245171245186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g245172245183_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g245172245183_))))
                         (_g245170245228_
                          (lambda (_g245172245189_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g245172245189_))
                                (let ((_e245178245191_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g245172245189_))))
                                  (let ((_hd245177245194_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e245178245191_)))
                                        (_tl245176245196_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e245178245191_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd245177245194_))
                                        (let ((_e245181245199_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd245177245194_))))
                                          (let ((_hd245180245202_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e245181245199_)))
                                                (_tl245179245204_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e245181245199_))))
                                            ((lambda (_L245207_
                                                      _L245208_
                                                      _L245209_)
                                               (for-each
                                                (lambda (_g245223245225_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g245223245225_
                                                     _L245209_
                                                     _method-calls243811_
                                                     _slot-refs243812_
                                                     _class-type-check243813_
                                                     _struct-type-check243814_
                                                     _struct-type-assert243815_)))
                                                _L245207_))
                                             _tl245176245196_
                                             _tl245179245204_
                                             _hd245180245202_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g245171245186_ _g245172245189_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g245171245186_ _g245172245189_))))))
                    (declare (not safe))
                    (_g245170245228_ _clause245169_)))
                (let ((__tmp252974
                       (lambda (_g245230245233_ _g245231245235_)
                         (let ()
                           (declare (not safe))
                           (cons _g245230245233_ _g245231245235_)))))
                  (declare (not safe))
                  (foldr1 __tmp252974 '() _L245156_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause245114245153_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop245109245137_
                                       _target245106245132_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g245100245119_ _g245101245122_))))))
                        (let ()
                          (declare (not safe))
                          (_g245100245119_ _g245101245122_)))))
                (let ()
                  (declare (not safe))
                  (_g245100245119_ _g245101245122_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g245099245238_ _L245003_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?243818_))
                                              _stx243717_
                                              (let* ((_specializer-id245247_
                                                      (let* ((_id245241_
                                                              (let ((__tmp252976
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L243792_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp252976 '"::specialize")))
                     (_specializer-id245244_
                      (let ((__tmp252977
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx243717_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id245241_ __tmp252977))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id245244_))
                _specializer-id245244_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id245254_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?243820_))
                                                          (let* ((_id245249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252978
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L243792_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp252978
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id245251_
                          (let ((__tmp252979
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx243717_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id245249_ __tmp252979))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id245251_))
                    _lifted-specializer-id245251_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t245256_
                                                      (let ((__tmp252980
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp252980)))
                                                     (_methods245258_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls243811_)))
                                                     (_$methods245262_
                                                      (map (lambda (_id245260_)
                                                             (let ((__tmp252981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id245260_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp252981)))
                   _methods245258_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g252982_
                                                      (for-each
                                                       (lambda (_g245263245266_
                                                                _g245264245268_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls243811_
                                                            _g245263245266_
                                                            _g245264245268_)))
                                                       _methods245258_
                                                       _$methods245262_))
                                                     (_methods-bind245279_
                                                      (map (lambda (_g245271245274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g245272245276_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind243719_
                        _$t245256_
                        _g245271245274_
                        _g245272245276_)))
                   _methods245258_
                   _$methods245262_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots245281_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs243812_)))
                                                     (_$slots245285_
                                                      (map (lambda (_id245283_)
                                                             (let ((__tmp252983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id245283_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp252983)))
                   _slots245281_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g252984_
                                                      (for-each
                                                       (lambda (_g245286245289_
                                                                _g245287245291_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs243812_
                                                            _g245286245289_
                                                            _g245287245291_)))
                                                       _slots245281_
                                                       _$slots245285_))
                                                     (_slots-bind245302_
                                                      (map (lambda (_g245294245297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g245295245299_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind243720_
                        _$t245256_
                        _g245294245297_
                        _g245295245299_)))
                   _slots245281_
                   _$slots245285_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check245304_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check243813_)))
                                                     (_$class-check245307_
                                                      (map (lambda (_g252985_)
                                                             (let ((__tmp252986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp252986)))
                   _class-check245304_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g252987_
                                                      (for-each
                                                       (lambda (_g245308245311_
                                                                _g245309245313_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check243813_
                                                            _g245308245311_
                                                            _g245309245313_)))
                                                       _class-check245304_
                                                       _$class-check245307_))
                                                     (_class-check-bind245324_
                                                      (map (lambda (_g245316245319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g245317245321_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind243721_
                        _$t245256_
                        _g245316245319_
                        _g245317245321_)))
                   _class-check245304_
                   _$class-check245307_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all245326_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check243814_
                                                         _struct-type-assert243815_)))
                                                     (_struct-check245328_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all245326_)))
                                                     (_$struct-check245331_
                                                      (map (lambda (_g252988_)
                                                             (let ((__tmp252989
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp252989)))
                   _struct-check245328_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g252990_
                                                      (for-each
                                                       (lambda (_g245332245335_
                                                                _g245333245337_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all245326_
                                                            _g245332245335_
                                                            _g245333245337_)))
                                                       _struct-check245328_
                                                       _$struct-check245331_))
                                                     (_struct-check-bind245348_
                                                      (map (lambda (_g245340245343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g245341245345_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind243722_
                        _$t245256_
                        _g245340245343_
                        _g245341245345_)))
                   _struct-check245328_
                   _$struct-check245331_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr245447_
                                                      (lambda (_struct-type-check1245350_
                                                               _struct-type-check2245351_)
                                                        (let* ((_g245353245371_
                                                                (lambda (_g245354245368_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g245354245368_))))
                       (_g245352245444_
                        (lambda (_g245354245374_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g245354245374_))
                              (let ((_e245360245376_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g245354245374_))))
                                (let ((_hd245359245379_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e245360245376_)))
                                      (_tl245358245381_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e245360245376_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl245358245381_))
                                      (let ((_e245363245384_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl245358245381_))))
                                        (let ((_hd245362245387_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e245363245384_)))
                                              (_tl245361245389_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e245363245384_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd245362245387_))
                                              (let ((_e245366245392_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd245362245387_))))
                                                (let ((_hd245365245395_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e245366245392_)))
                                                      (_tl245364245397_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e245366245392_))))
                                                  ((lambda (_L245400_
                                                            _L245401_
                                                            _L245402_)
                                                     (let* ((_body245442_
                                                             (map (lambda (_g245437245439_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g245437245439_
                               _L245402_
                               _$t245256_
                               _method-calls243811_
                               _slot-refs243812_
                               _class-type-check243813_
                               _struct-type-check1245350_
                               _struct-type-check2245351_)))
                          _L245400_))
                    (__tmp252991
                     (let ((__tmp252992
                            (let ((__tmp252993
                                   (let ()
                                     (declare (not safe))
                                     (cons _L245402_ _L245401_))))
                              (declare (not safe))
                              (cons __tmp252993 _body245442_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp252992))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp252991 _L245004_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl245361245389_
                                                   _tl245364245397_
                                                   _hd245365245395_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g245353245371_
                                                 _g245354245374_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g245353245371_ _g245354245374_)))))
                              (let ()
                                (declare (not safe))
                                (_g245353245371_ _g245354245374_))))))
                  (declare (not safe))
                  (_g245352245444_ _L245004_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr245608_
                                                      (lambda (_struct-type-check1245449_
                                                               _struct-type-check2245450_)
                                                        (let* ((_g245452245471_
                                                                (lambda (_g245453245468_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g245453245468_))))
                       (_g245451245605_
                        (lambda (_g245453245474_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g245453245474_))
                              (let ((_e245457245476_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g245453245474_))))
                                (let ((_hd245456245479_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e245457245476_)))
                                      (_tl245455245481_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e245457245476_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl245455245481_))
                                      (let ((_g252994_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl245455245481_
                                                '0))))
                                        (begin
                                          (let ((_g252995_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g252994_)
                                                       (##vector-length
                                                        _g252994_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g252995_ 2)))
                                                (error "Context expects 2 values"
                                                       _g252995_)))
                                          (let ((_target245458245484_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g252994_ 0)))
                                                (_tl245460245486_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g252994_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl245460245486_))
                                                (letrec ((_loop245461245489_
                                                          (lambda (_hd245459245492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause245465245494_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd245459245492_))
                        (let ((_e245462245497_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd245459245492_))))
                          (let ((_lp-hd245463245500_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e245462245497_)))
                                (_lp-tl245464245502_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e245462245497_))))
                            (let ((__tmp252999
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd245463245500_
                                           _clause245465245494_))))
                              (declare (not safe))
                              (_loop245461245489_
                               _lp-tl245464245502_
                               __tmp252999))))
                        (let ((_clause245466245505_
                               (reverse _clause245465245494_)))
                          ((lambda (_L245508_)
                             (let* ((_clauses245603_
                                     (map (lambda (_clause245523_)
                                            (let* ((___stx251641251642_
                                                    _clause245523_)
                                                   (_g245526245541_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx251641251642_)))))
                                              (let ((___kont251643251644_
                                                     (lambda (_L245569_
                                                              _L245570_
                                                              _L245571_)
                                                       (let* ((_body245591_
                                                               (map (lambda (_g245586245588_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g245586245588_
                                 _L245571_
                                 _$t245256_
                                 _method-calls243811_
                                 _slot-refs243812_
                                 _class-type-check243813_
                                 _struct-type-check1245449_
                                 _struct-type-check2245450_)))
                            _L245569_))
                      (__tmp252996
                       (let ()
                         (declare (not safe))
                         (cons _L245571_ _L245570_))))
                 (declare (not safe))
                 (cons __tmp252996 _body245591_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont251645251646_
                                                     (lambda ()
                                                       _clause245523_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx251641251642_))
                                                    (let ((_e245533245553_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx251641251642_))))
                                                      (let ((_tl245531245558_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e245533245553_)))
                    (_hd245532245556_
                     (let () (declare (not safe)) (##car _e245533245553_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd245532245556_))
                    (let ((_e245536245561_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd245532245556_))))
                      (let ((_tl245534245566_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245536245561_)))
                            (_hd245535245564_
                             (let ()
                               (declare (not safe))
                               (##car _e245536245561_))))
                        (___kont251643251644_
                         _tl245531245558_
                         _tl245534245566_
                         _hd245535245564_)))
                    (___kont251645251646_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont251645251646_)))))
                                          (let ((__tmp252997
                                                 (lambda (_g245595245598_
                                                          _g245596245600_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g245595245598_
                                                           _g245596245600_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp252997
                                                    '()
                                                    _L245508_))))
                                    (__tmp252998
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses245603_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp252998 _L245003_)))
                           _clause245466245505_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop245461245489_
                                                     _target245458245484_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g245452245471_
                                                   _g245453245474_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g245452245471_ _g245453245474_)))))
                              (let ()
                                (declare (not safe))
                                (_g245452245471_ _g245453245474_))))))
                  (declare (not safe))
                  (_g245451245605_ _L245003_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl245613_
                                                      (lambda (_specializer-lambda-expr245610_
                                                               _specializer-case-lambda-expr245611_)
                                                        (let ((__tmp253000
                                                               (let ((__tmp253001
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp253003
                                     (let ((__tmp253004
                                            (let ((__tmp253006
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L245005_ '())))
                                                  (__tmp253005
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr245610_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp253006 __tmp253005))))
                                       (declare (not safe))
                                       (cons __tmp253004 '())))
                                    (__tmp253002
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr245611_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp253003 __tmp253002))))
                         (declare (not safe))
                         (cons '%#let-values __tmp253001))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp253000 _stx243717_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr245615_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr245447_
                                                         _struct-check-all245326_
                                                         _empty243816_)))
                                                     (_specializer-case-lambda-expr245617_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr245608_
                                                         _struct-check-all245326_
                                                         _empty243816_)))
                                                     (_specializer-impl245619_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl245613_
                                                         _specializer-lambda-expr245615_
                                                         _specializer-case-lambda-expr245617_)))
                                                     (_unchecked-specializer-lambda-expr245621_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?243819_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr245447_
                                                             _empty243816_
                                                             _struct-check-all245326_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr245623_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?243819_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr245608_
                                                             _empty243816_
                                                             _struct-check-all245326_))
                                                          '#f))
                                                     (_unchecked-specializer-impl245625_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?243819_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl245613_
                                                             _unchecked-specializer-lambda-expr245621_
                                                             _unchecked-specializer-case-lambda-expr245623_))
                                                          '#f))
                                                     (_specializer-impl245627_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl243723_
                                                         _$t245256_
                                                         _methods-bind245279_
                                                         _slots-bind245302_
                                                         _class-check-bind245324_
                                                         _struct-check-bind245348_
                                                         _specializer-impl245619_
                                                         _lifted-specializer-id245254_
                                                         _unchecked-specializer-impl245625_))))
                                                (let ((__tmp253008
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L243792_)))
                                                      (__tmp253007
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id245247_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp253008
                                                   '" => "
                                                   __tmp253007))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def243724_
                                                   _L243792_
                                                   _specializer-id245247_
                                                   _specializer-impl245627_
                                                   _lifted-specializer-id245254_
                                                   _unchecked-specializer-impl245625_)))))
                                        _hd244936244998_
                                        _hd244933244990_
                                        _hd244930244982_)
                                       (let ()
                                         (declare (not safe))
                                         (_g244912244942_ _g244913244945_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g244912244942_ _g244913244945_)))
                           (let ()
                             (declare (not safe))
                             (_g244912244942_ _g244913244945_)))
                       (let ()
                         (declare (not safe))
                         (_g244912244942_ _g244913244945_)))))
               (let () (declare (not safe)) (_g244912244942_ _g244913244945_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g244912244942_
                                                      _g244913244945_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g244912244942_
                                              _g244913244945_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g244912244942_ _g244913244945_)))))
                           (let ()
                             (declare (not safe))
                             (_g244912244942_ _g244913244945_)))))
                   (let ()
                     (declare (not safe))
                     (_g244912244942_ _g244913244945_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g244912244942_
                                                      _g244913244945_))))))
                                       (declare (not safe))
                                       (_g244911245630_ _L243791_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L243791_))
                                         (let* ((_g245633245686_
                                                 (lambda (_g245634245683_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g245634245683_))))
                                                (_g245632246958_
                                                 (lambda (_g245634245689_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g245634245689_))
                                                       (let ((_e245642245691_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g245634245689_))))
                 (let ((_hd245641245694_
                        (let () (declare (not safe)) (##car _e245642245691_)))
                       (_tl245640245696_
                        (let () (declare (not safe)) (##cdr _e245642245691_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd245641245694_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd245641245694_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl245640245696_))
                               (let ((_e245645245699_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl245640245696_))))
                                 (let ((_hd245644245702_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e245645245699_)))
                                       (_tl245643245704_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e245645245699_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd245644245702_))
                                       (let ((_e245648245707_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd245644245702_))))
                                         (let ((_hd245647245710_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e245648245707_)))
                                               (_tl245646245712_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e245648245707_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd245647245710_))
                                               (let ((_e245651245715_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd245647245710_))))
                                                 (let ((_hd245650245718_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e245651245715_)))
                                                       (_tl245649245720_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e245651245715_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd245650245718_))
                                                       (let ((_e245654245723_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd245650245718_))))
                 (let ((_hd245653245726_
                        (let () (declare (not safe)) (##car _e245654245723_)))
                       (_tl245652245728_
                        (let () (declare (not safe)) (##cdr _e245654245723_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl245652245728_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl245649245720_))
                           (let ((_e245657245731_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl245649245720_))))
                             (let ((_hd245656245734_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e245657245731_)))
                                   (_tl245655245736_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e245657245731_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd245656245734_))
                                   (let ((_e245660245739_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd245656245734_))))
                                     (let ((_hd245659245742_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e245660245739_)))
                                           (_tl245658245744_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e245660245739_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd245659245742_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd245659245742_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl245658245744_))
                                                   (let ((_e245663245747_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl245658245744_))))
                                                     (let ((_hd245662245750_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e245663245747_)))
                                                           (_tl245661245752_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e245663245747_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd245662245750_))
                                                           (let ((_e245666245755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd245662245750_))))
                     (let ((_hd245665245758_
                            (let ()
                              (declare (not safe))
                              (##car _e245666245755_)))
                           (_tl245664245760_
                            (let ()
                              (declare (not safe))
                              (##cdr _e245666245755_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd245665245758_))
                           (let ((_e245669245763_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd245665245758_))))
                             (let ((_hd245668245766_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e245669245763_)))
                                   (_tl245667245768_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e245669245763_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd245668245766_))
                                   (let ((_e245672245771_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd245668245766_))))
                                     (let ((_hd245671245774_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e245672245771_)))
                                           (_tl245670245776_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e245672245771_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl245670245776_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl245667245768_))
                                               (let ((_e245675245779_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl245667245768_))))
                                                 (let ((_hd245674245782_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e245675245779_)))
                                                       (_tl245673245784_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e245675245779_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl245673245784_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl245664245760_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl245661245752_))
                       (let ((_e245678245787_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl245661245752_))))
                         (let ((_hd245677245790_
                                (let ()
                                  (declare (not safe))
                                  (##car _e245678245787_)))
                               (_tl245676245792_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e245678245787_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl245676245792_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl245655245736_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl245646245712_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl245643245704_))
                                           (let ((_e245681245795_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl245643245704_))))
                                             (let ((_hd245680245798_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e245681245795_)))
                                                   (_tl245679245800_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e245681245795_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl245679245800_))
                                                   ((lambda (_L245803_
                                                             _L245804_
                                                             _L245805_
                                                             _L245806_
                                                             _L245807_)
                                                      (let* ((_g245846245908_
                                                              (lambda (_g245847245905_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g245847245905_))))
                     (_g245845246955_
                      (lambda (_g245847245911_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g245847245911_))
                            (let ((_e245855245913_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g245847245911_))))
                              (let ((_hd245854245916_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245855245913_)))
                                    (_tl245853245918_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245855245913_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd245854245916_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd245854245916_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl245853245918_))
                                            (let ((_e245858245921_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl245853245918_))))
                                              (let ((_hd245857245924_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e245858245921_)))
                                                    (_tl245856245926_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e245858245921_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl245856245926_))
                                                    (let ((_e245861245929_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl245856245926_))))
                                                      (let ((_hd245860245932_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e245861245929_)))
                    (_tl245859245934_
                     (let () (declare (not safe)) (##cdr _e245861245929_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd245860245932_))
                    (let ((_e245864245937_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd245860245932_))))
                      (let ((_hd245863245940_
                             (let ()
                               (declare (not safe))
                               (##car _e245864245937_)))
                            (_tl245862245942_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245864245937_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd245863245940_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd245863245940_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl245862245942_))
                                    (let ((_e245867245945_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl245862245942_))))
                                      (let ((_hd245866245948_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e245867245945_)))
                                            (_tl245865245950_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e245867245945_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd245866245948_))
                                            (let ((_e245870245953_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd245866245948_))))
                                              (let ((_hd245869245956_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e245870245953_)))
                                                    (_tl245868245958_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e245870245953_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd245869245956_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd245869245956_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl245868245958_))
                                                            (let ((_e245873245961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl245868245958_))))
                      (let ((_hd245872245964_
                             (let ()
                               (declare (not safe))
                               (##car _e245873245961_)))
                            (_tl245871245966_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245873245961_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl245871245966_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl245865245950_))
                                (let ((_e245876245969_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl245865245950_))))
                                  (let ((_hd245875245972_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e245876245969_)))
                                        (_tl245874245974_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e245876245969_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd245875245972_))
                                        (let ((_e245879245977_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd245875245972_))))
                                          (let ((_hd245878245980_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e245879245977_)))
                                                (_tl245877245982_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e245879245977_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd245878245980_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd245878245980_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl245877245982_))
                                                        (let ((_e245882245985_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl245877245982_))))
                  (let ((_hd245881245988_
                         (let () (declare (not safe)) (##car _e245882245985_)))
                        (_tl245880245990_
                         (let ()
                           (declare (not safe))
                           (##cdr _e245882245985_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl245880245990_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl245874245974_))
                            (let ((_e245885245993_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl245874245974_))))
                              (let ((_hd245884245996_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245885245993_)))
                                    (_tl245883245998_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245885245993_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd245884245996_))
                                    (let ((_e245888246001_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd245884245996_))))
                                      (let ((_hd245887246004_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e245888246001_)))
                                            (_tl245886246006_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e245888246001_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd245887246004_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd245887246004_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl245886246006_))
                                                    (let ((_e245891246009_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl245886246006_))))
                                                      (let ((_hd245890246012_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e245891246009_)))
                    (_tl245889246014_
                     (let () (declare (not safe)) (##cdr _e245891246009_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl245889246014_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl245883245998_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl245883245998_))
                                  '1)
                            (let ((_g252884_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl245883245998_
                                      '1))))
                              (begin
                                (let ((_g252885_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g252884_)
                                             (##vector-length _g252884_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g252885_ 2)))
                                      (error "Context expects 2 values"
                                             _g252885_)))
                                (let ((_target245892246017_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252884_ 0)))
                                      (_tl245894246019_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252884_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl245894246019_))
                                      (let ((_e245903246022_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl245894246019_))))
                                        (let ((_hd245902246025_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e245903246022_)))
                                              (_tl245901246027_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e245903246022_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl245901246027_))
                                              (letrec ((_loop245895246030_
                                                        (lambda (_hd245893246033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref245899246035_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd245893246033_))
                      (let ((_e245896246038_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd245893246033_))))
                        (let ((_lp-hd245897246041_
                               (let ()
                                 (declare (not safe))
                                 (##car _e245896246038_)))
                              (_lp-tl245898246043_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e245896246038_))))
                          (let ((__tmp252971
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd245897246041_
                                         _kw-ref245899246035_))))
                            (declare (not safe))
                            (_loop245895246030_
                             _lp-tl245898246043_
                             __tmp252971))))
                      (let ((_kw-ref245900246046_
                             (reverse _kw-ref245899246035_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl245859245934_))
                            ((lambda (_L246049_
                                      _L246050_
                                      _L246051_
                                      _L246052_
                                      _L246053_)
                               (let* ((_kw-count246104_
                                       (length (let ((__tmp252886
                                                      (lambda (_g246096246099_
                                                               _g246097246101_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g246096246099_
                                                                _g246097246101_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp252886
                                                         '()
                                                         _L246050_))))
                                      (_self-index246106_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count246104_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L245805_))
                                     (let* ((_g246109246123_
                                             (lambda (_g246110246120_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g246110246120_))))
                                            (_g246108246294_
                                             (lambda (_g246110246126_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g246110246126_))
                                                   (let ((_e246115246128_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g246110246126_))))
                                                     (let ((_hd246114246131_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e246115246128_)))
                                                           (_tl246113246133_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e246115246128_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl246113246133_))
                                                           (let ((_e246118246136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl246113246133_))))
                     (let ((_hd246117246139_
                            (let ()
                              (declare (not safe))
                              (##car _e246118246136_)))
                           (_tl246116246141_
                            (let ()
                              (declare (not safe))
                              (##cdr _e246118246136_))))
                       ((lambda (_L246144_ _L246145_)
                          (let ((_self246161_
                                 (list-ref _L246145_ _self-index246106_)))
                            (for-each
                             (lambda (_g246162246164_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g246162246164_
                                  _self246161_
                                  _method-calls243811_
                                  _slot-refs243812_
                                  _class-type-check243813_
                                  _struct-type-check243814_
                                  _struct-type-assert243815_)))
                             _L246144_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?243818_))
                                _stx243717_
                                (let* ((_specializer-id246173_
                                        (let* ((_id246167_
                                                (let ((__tmp252937
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L243792_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp252937
                                                   '"::specialize")))
                                               (_specializer-id246170_
                                                (let ((__tmp252938
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx243717_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id246167_
                                                   __tmp252938))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id246170_))
                                          _specializer-id246170_))
                                       (_lifted-specializer-id246180_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?243820_))
                                            (let* ((_id246175_
                                                    (let ((__tmp252939
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L243792_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp252939
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id246177_
                                                    (let ((__tmp252940
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx243717_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id246175_
                                                       __tmp252940))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id246177_))
                                              _lifted-specializer-id246177_)
                                            '#f))
                                       (_$t246182_
                                        (let ((__tmp252941 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp252941)))
                                       (_methods246184_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls243811_)))
                                       (_$methods246188_
                                        (map (lambda (_id246186_)
                                               (let ((__tmp252942
                                                      (gensym _id246186_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp252942)))
                                             _methods246184_))
                                       (_g252943_
                                        (for-each
                                         (lambda (_g246189246192_
                                                  _g246190246194_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls243811_
                                              _g246189246192_
                                              _g246190246194_)))
                                         _methods246184_
                                         _$methods246188_))
                                       (_methods-bind246205_
                                        (map (lambda (_g246197246200_
                                                      _g246198246202_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind243719_
                                                  _$t246182_
                                                  _g246197246200_
                                                  _g246198246202_)))
                                             _methods246184_
                                             _$methods246188_))
                                       (_slots246207_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs243812_)))
                                       (_$slots246211_
                                        (map (lambda (_id246209_)
                                               (let ((__tmp252944
                                                      (gensym _id246209_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp252944)))
                                             _slots246207_))
                                       (_g252945_
                                        (for-each
                                         (lambda (_g246212246215_
                                                  _g246213246217_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs243812_
                                              _g246212246215_
                                              _g246213246217_)))
                                         _slots246207_
                                         _$slots246211_))
                                       (_slots-bind246228_
                                        (map (lambda (_g246220246223_
                                                      _g246221246225_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind243720_
                                                  _$t246182_
                                                  _g246220246223_
                                                  _g246221246225_)))
                                             _slots246207_
                                             _$slots246211_))
                                       (_class-check246230_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check243813_)))
                                       (_$class-check246233_
                                        (map (lambda (_g252946_)
                                               (let ((__tmp252947
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp252947)))
                                             _class-check246230_))
                                       (_g252948_
                                        (for-each
                                         (lambda (_g246234246237_
                                                  _g246235246239_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check243813_
                                              _g246234246237_
                                              _g246235246239_)))
                                         _class-check246230_
                                         _$class-check246233_))
                                       (_class-check-bind246250_
                                        (map (lambda (_g246242246245_
                                                      _g246243246247_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind243721_
                                                  _$t246182_
                                                  _g246242246245_
                                                  _g246243246247_)))
                                             _class-check246230_
                                             _$class-check246233_))
                                       (_struct-check-all246252_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check243814_
                                           _struct-type-assert243815_)))
                                       (_struct-check246254_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all246252_)))
                                       (_$struct-check246257_
                                        (map (lambda (_g252949_)
                                               (let ((__tmp252950
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp252950)))
                                             _struct-check246254_))
                                       (_g252951_
                                        (for-each
                                         (lambda (_g246258246261_
                                                  _g246259246263_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all246252_
                                              _g246258246261_
                                              _g246259246263_)))
                                         _struct-check246254_
                                         _$struct-check246257_))
                                       (_struct-check-bind246274_
                                        (map (lambda (_g246266246269_
                                                      _g246267246271_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind243722_
                                                  _$t246182_
                                                  _g246266246269_
                                                  _g246267246271_)))
                                             _struct-check246254_
                                             _$struct-check246257_))
                                       (_make-specializer-impl246285_
                                        (lambda (_struct-type-check1246276_
                                                 _struct-type-check2246277_)
                                          (let* ((_specializer-body246283_
                                                  (map (lambda (_g246278246280_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g246278246280_
                                                            _self246161_
                                                            _$t246182_
                                                            _method-calls243811_
                                                            _slot-refs243812_
                                                            _class-type-check243813_
                                                            _struct-type-check1246276_
                                                            _struct-type-check2246277_)))
                                                       _L246144_))
                                                 (__tmp252952
                                                  (let ((__tmp252953
                                                         (let ((__tmp252955
                                                                (let ((__tmp252956
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252968
                                      (let ()
                                        (declare (not safe))
                                        (cons _L245807_ '())))
                                     (__tmp252957
                                      (let ((__tmp252958
                                             (let ((__tmp252959
                                                    (let ((__tmp252961
                                                           (let ((__tmp252962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252967
                                 (let ()
                                   (declare (not safe))
                                   (cons _L245806_ '())))
                                (__tmp252963
                                 (let ((__tmp252964
                                        (let ((__tmp252965
                                               (let ((__tmp252966
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L246145_
                                                              _specializer-body246283_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp252966))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp252965
                                           _L245805_))))
                                   (declare (not safe))
                                   (cons __tmp252964 '()))))
                            (declare (not safe))
                            (cons __tmp252967 __tmp252963))))
                     (declare (not safe))
                     (cons __tmp252962 '())))
                  (__tmp252960
                   (let () (declare (not safe)) (cons _L245804_ '()))))
              (declare (not safe))
              (cons __tmp252961 __tmp252960))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp252959))))
                                        (declare (not safe))
                                        (cons __tmp252958 '()))))
                                 (declare (not safe))
                                 (cons __tmp252968 __tmp252957))))
                          (declare (not safe))
                          (cons __tmp252956 '())))
                       (__tmp252954
                        (let () (declare (not safe)) (cons _L245803_ '()))))
                   (declare (not safe))
                   (cons __tmp252955 __tmp252954))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp252953))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp252952
                                             _stx243717_))))
                                       (_specializer-impl246287_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl246285_
                                           _struct-check-all246252_
                                           _empty243816_)))
                                       (_unchecked-specializer-impl246289_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?243819_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl246285_
                                               _empty243816_
                                               _struct-check-all246252_))
                                            '#f))
                                       (_specializer-impl246291_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl243723_
                                           _$t246182_
                                           _methods-bind246205_
                                           _slots-bind246228_
                                           _class-check-bind246250_
                                           _struct-check-bind246274_
                                           _specializer-impl246287_
                                           _lifted-specializer-id246180_
                                           _unchecked-specializer-impl246289_))))
                                  (let ((__tmp252970
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L243792_)))
                                        (__tmp252969
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id246173_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp252970
                                     '" => "
                                     __tmp252969))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def243724_
                                     _L243792_
                                     _specializer-id246173_
                                     _specializer-impl246291_
                                     _lifted-specializer-id246180_
                                     _unchecked-specializer-impl246289_))))))
                        _tl246116246141_
                        _hd246117246139_)))
                   (let ()
                     (declare (not safe))
                     (_g246109246123_ _g246110246126_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g246109246123_
                                                      _g246110246126_))))))
                                       (declare (not safe))
                                       (_g246108246294_ _L245805_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L245805_))
                                         (let* ((_g246297246327_
                                                 (lambda (_g246298246324_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g246298246324_))))
                                                (_g246296246952_
                                                 (lambda (_g246298246330_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g246298246330_))
                                                       (let ((_e246304246332_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g246298246330_))))
                 (let ((_hd246303246335_
                        (let () (declare (not safe)) (##car _e246304246332_)))
                       (_tl246302246337_
                        (let () (declare (not safe)) (##cdr _e246304246332_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl246302246337_))
                       (let ((_e246307246340_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl246302246337_))))
                         (let ((_hd246306246343_
                                (let ()
                                  (declare (not safe))
                                  (##car _e246307246340_)))
                               (_tl246305246345_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e246307246340_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd246306246343_))
                               (let ((_e246310246348_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd246306246343_))))
                                 (let ((_hd246309246351_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e246310246348_)))
                                       (_tl246308246353_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e246310246348_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd246309246351_))
                                       (let ((_e246313246356_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd246309246351_))))
                                         (let ((_hd246312246359_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e246313246356_)))
                                               (_tl246311246361_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e246313246356_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd246312246359_))
                                               (let ((_e246316246364_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd246312246359_))))
                                                 (let ((_hd246315246367_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e246316246364_)))
                                                       (_tl246314246369_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e246316246364_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl246314246369_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl246311246361_))
                                                           (let ((_e246319246372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl246311246361_))))
                     (let ((_hd246318246375_
                            (let ()
                              (declare (not safe))
                              (##car _e246319246372_)))
                           (_tl246317246377_
                            (let ()
                              (declare (not safe))
                              (##cdr _e246319246372_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl246317246377_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl246308246353_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl246305246345_))
                                   (let ((_e246322246380_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl246305246345_))))
                                     (let ((_hd246321246383_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e246322246380_)))
                                           (_tl246320246385_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e246322246380_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl246320246385_))
                                           ((lambda (_L246388_
                                                     _L246389_
                                                     _L246390_)
                                              (let* ((_g246413246427_
                                                      (lambda (_g246414246424_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g246414246424_))))
                                                     (_g246412246468_
                                                      (lambda (_g246414246430_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g246414246430_))
                                                            (let ((_e246419246432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g246414246430_))))
                      (let ((_hd246418246435_
                             (let ()
                               (declare (not safe))
                               (##car _e246419246432_)))
                            (_tl246417246437_
                             (let ()
                               (declare (not safe))
                               (##cdr _e246419246432_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl246417246437_))
                            (let ((_e246422246440_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl246417246437_))))
                              (let ((_hd246421246443_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e246422246440_)))
                                    (_tl246420246445_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e246422246440_))))
                                ((lambda (_L246448_ _L246449_)
                                   (let ((_self246462_
                                          (list-ref
                                           _L246449_
                                           _self-index246106_)))
                                     (for-each
                                      (lambda (_g246463246465_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g246463246465_
                                           _self246462_
                                           _method-calls243811_
                                           _slot-refs243812_
                                           _class-type-check243813_
                                           _struct-type-check243814_
                                           _struct-type-assert243815_)))
                                      _L246448_)))
                                 _tl246420246445_
                                 _hd246421246443_)))
                            (let ()
                              (declare (not safe))
                              (_g246413246427_ _g246414246430_)))))
                    (let ()
                      (declare (not safe))
                      (_g246413246427_ _g246414246430_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g246412246468_ _L246389_))
                                              (let* ((_g246471246490_
                                                      (lambda (_g246472246487_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g246472246487_))))
                                                     (_g246470246595_
                                                      (lambda (_g246472246493_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g246472246493_))
                                                            (let ((_e246476246495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g246472246493_))))
                      (let ((_hd246475246498_
                             (let ()
                               (declare (not safe))
                               (##car _e246476246495_)))
                            (_tl246474246500_
                             (let ()
                               (declare (not safe))
                               (##cdr _e246476246495_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl246474246500_))
                            (let ((_g252887_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl246474246500_
                                      '0))))
                              (begin
                                (let ((_g252888_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g252887_)
                                             (##vector-length _g252887_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g252888_ 2)))
                                      (error "Context expects 2 values"
                                             _g252888_)))
                                (let ((_target246477246503_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252887_ 0)))
                                      (_tl246479246505_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252887_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl246479246505_))
                                      (letrec ((_loop246480246508_
                                                (lambda (_hd246478246511_
                                                         _clause246484246513_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd246478246511_))
                                                      (let ((_e246481246516_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd246478246511_))))
                (let ((_lp-hd246482246519_
                       (let () (declare (not safe)) (##car _e246481246516_)))
                      (_lp-tl246483246521_
                       (let () (declare (not safe)) (##cdr _e246481246516_))))
                  (let ((__tmp252890
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd246482246519_ _clause246484246513_))))
                    (declare (not safe))
                    (_loop246480246508_ _lp-tl246483246521_ __tmp252890))))
              (let ((_clause246485246524_ (reverse _clause246484246513_)))
                ((lambda (_L246527_)
                   (for-each
                    (lambda (_clause246540_)
                      (let* ((_g246542246553_
                              (lambda (_g246543246550_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g246543246550_))))
                             (_g246541246585_
                              (lambda (_g246543246556_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g246543246556_))
                                    (let ((_e246548246558_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g246543246556_))))
                                      (let ((_hd246547246561_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e246548246558_)))
                                            (_tl246546246563_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e246548246558_))))
                                        ((lambda (_L246566_ _L246567_)
                                           (let ((_self246579_
                                                  (list-ref
                                                   _L246567_
                                                   _self-index246106_)))
                                             (for-each
                                              (lambda (_g246580246582_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g246580246582_
                                                   _self246579_
                                                   _method-calls243811_
                                                   _slot-refs243812_
                                                   _class-type-check243813_
                                                   _struct-type-check243814_
                                                   _struct-type-assert243815_)))
                                              _L246566_)))
                                         _tl246546246563_
                                         _hd246547246561_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g246542246553_ _g246543246556_))))))
                        (declare (not safe))
                        (_g246541246585_ _clause246540_)))
                    (let ((__tmp252889
                           (lambda (_g246587246590_ _g246588246592_)
                             (let ()
                               (declare (not safe))
                               (cons _g246587246590_ _g246588246592_)))))
                      (declare (not safe))
                      (foldr1 __tmp252889 '() _L246527_))))
                 _clause246485246524_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop246480246508_
                                           _target246477246503_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g246471246490_ _g246472246493_))))))
                            (let ()
                              (declare (not safe))
                              (_g246471246490_ _g246472246493_)))))
                    (let ()
                      (declare (not safe))
                      (_g246471246490_ _g246472246493_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g246470246595_ _L246388_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?243818_))
                                                  _stx243717_
                                                  (let* ((_specializer-id246604_
                                                          (let* ((_id246598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252891
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L243792_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp252891 '"::specialize")))
                         (_specializer-id246601_
                          (let ((__tmp252892
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx243717_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id246598_ __tmp252892))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id246601_))
                    _specializer-id246601_))
                 (_lifted-specializer-id246611_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?243820_))
                      (let* ((_id246606_
                              (let ((__tmp252893
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L243792_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp252893
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id246608_
                              (let ((__tmp252894
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx243717_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id246606_
                                 __tmp252894))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id246608_))
                        _lifted-specializer-id246608_)
                      '#f))
                 (_$t246613_
                  (let ((__tmp252895 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp252895)))
                 (_methods246615_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls243811_)))
                 (_$methods246619_
                  (map (lambda (_id246617_)
                         (let ((__tmp252896 (gensym _id246617_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp252896)))
                       _methods246615_))
                 (_g252897_
                  (for-each
                   (lambda (_g246620246623_ _g246621246625_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls243811_
                        _g246620246623_
                        _g246621246625_)))
                   _methods246615_
                   _$methods246619_))
                 (_methods-bind246636_
                  (map (lambda (_g246628246631_ _g246629246633_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind243719_
                            _$t246613_
                            _g246628246631_
                            _g246629246633_)))
                       _methods246615_
                       _$methods246619_))
                 (_slots246638_
                  (let () (declare (not safe)) (hash-keys _slot-refs243812_)))
                 (_$slots246642_
                  (map (lambda (_id246640_)
                         (let ((__tmp252898 (gensym _id246640_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp252898)))
                       _slots246638_))
                 (_g252899_
                  (for-each
                   (lambda (_g246643246646_ _g246644246648_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs243812_
                        _g246643246646_
                        _g246644246648_)))
                   _slots246638_
                   _$slots246642_))
                 (_slots-bind246659_
                  (map (lambda (_g246651246654_ _g246652246656_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind243720_
                            _$t246613_
                            _g246651246654_
                            _g246652246656_)))
                       _slots246638_
                       _$slots246642_))
                 (_class-check246661_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check243813_)))
                 (_$class-check246664_
                  (map (lambda (_g252900_)
                         (let ((__tmp252901 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp252901)))
                       _class-check246661_))
                 (_g252902_
                  (for-each
                   (lambda (_g246665246668_ _g246666246670_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check243813_
                        _g246665246668_
                        _g246666246670_)))
                   _class-check246661_
                   _$class-check246664_))
                 (_class-check-bind246681_
                  (map (lambda (_g246673246676_ _g246674246678_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind243721_
                            _$t246613_
                            _g246673246676_
                            _g246674246678_)))
                       _class-check246661_
                       _$class-check246664_))
                 (_struct-check-all246683_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check243814_
                     _struct-type-assert243815_)))
                 (_struct-check246685_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all246683_)))
                 (_$struct-check246688_
                  (map (lambda (_g252903_)
                         (let ((__tmp252904 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp252904)))
                       _struct-check246685_))
                 (_g252905_
                  (for-each
                   (lambda (_g246689246692_ _g246690246694_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all246683_
                        _g246689246692_
                        _g246690246694_)))
                   _struct-check246685_
                   _$struct-check246688_))
                 (_struct-check-bind246705_
                  (map (lambda (_g246697246700_ _g246698246702_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind243722_
                            _$t246613_
                            _g246697246700_
                            _g246698246702_)))
                       _struct-check246685_
                       _$struct-check246688_))
                 (_make-specializer-lambda-expr246791_
                  (lambda (_struct-type-check1246707_
                           _struct-type-check2246708_)
                    (let* ((_g246710246724_
                            (lambda (_g246711246721_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g246711246721_))))
                           (_g246709246788_
                            (lambda (_g246711246727_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g246711246727_))
                                  (let ((_e246716246729_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g246711246727_))))
                                    (let ((_hd246715246732_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e246716246729_)))
                                          (_tl246714246734_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e246716246729_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl246714246734_))
                                          (let ((_e246719246737_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl246714246734_))))
                                            (let ((_hd246718246740_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e246719246737_)))
                                                  (_tl246717246742_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e246719246737_))))
                                              ((lambda (_L246745_ _L246746_)
                                                 (let* ((_self246779_
                                                         (list-ref
                                                          _L246746_
                                                          _self-index246106_))
                                                        (_body246785_
                                                         (map (lambda (_g246780246782_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g246780246782_
                           _self246779_
                           _$t246613_
                           _method-calls243811_
                           _slot-refs243812_
                           _class-type-check243813_
                           _struct-type-check1246707_
                           _struct-type-check2246708_)))
                      _L246745_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp252906
                                                          (let ((__tmp252907
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L246746_ _body246785_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp252907))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp252906
                                                      _L246389_))))
                                               _tl246717246742_
                                               _hd246718246740_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g246710246724_
                                             _g246711246727_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g246710246724_ _g246711246727_))))))
                      (declare (not safe))
                      (_g246709246788_ _L246389_))))
                 (_make-specializer-case-lambda-expr246930_
                  (lambda (_struct-type-check1246793_
                           _struct-type-check2246794_)
                    (let* ((_g246796246815_
                            (lambda (_g246797246812_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g246797246812_))))
                           (_g246795246927_
                            (lambda (_g246797246818_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g246797246818_))
                                  (let ((_e246801246820_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g246797246818_))))
                                    (let ((_hd246800246823_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e246801246820_)))
                                          (_tl246799246825_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e246801246820_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl246799246825_))
                                          (let ((_g252908_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl246799246825_
                                                    '0))))
                                            (begin
                                              (let ((_g252909_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g252908_)
                                                           (##vector-length
                                                            _g252908_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g252909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g252909_)))
                                              (let ((_target246802246828_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g252908_
                                                        0)))
                                                    (_tl246804246830_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g252908_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl246804246830_))
                                                    (letrec ((_loop246805246833_
                                                              (lambda (_hd246803246836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause246809246838_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd246803246836_))
                            (let ((_e246806246841_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd246803246836_))))
                              (let ((_lp-hd246807246844_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e246806246841_)))
                                    (_lp-tl246808246846_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e246806246841_))))
                                (let ((__tmp252912
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd246807246844_
                                               _clause246809246838_))))
                                  (declare (not safe))
                                  (_loop246805246833_
                                   _lp-tl246808246846_
                                   __tmp252912))))
                            (let ((_clause246810246849_
                                   (reverse _clause246809246838_)))
                              ((lambda (_L246852_)
                                 (let* ((_clauses246925_
                                         (map (lambda (_clause246867_)
                                                (let* ((_g246869246880_
                                                        (lambda (_g246870246877_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g246870246877_))))
                                                       (_g246868246915_
                                                        (lambda (_g246870246883_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g246870246883_))
                      (let ((_e246875246885_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g246870246883_))))
                        (let ((_hd246874246888_
                               (let ()
                                 (declare (not safe))
                                 (##car _e246875246885_)))
                              (_tl246873246890_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e246875246885_))))
                          ((lambda (_L246893_ _L246894_)
                             (let* ((_self246906_
                                     (list-ref _L246894_ _self-index246106_))
                                    (_body246912_
                                     (map (lambda (_g246907246909_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g246907246909_
                                               _self246906_
                                               _$t246613_
                                               _method-calls243811_
                                               _slot-refs243812_
                                               _class-type-check243813_
                                               _struct-type-check1246793_
                                               _struct-type-check2246794_)))
                                          _L246893_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L246894_ _body246912_))))
                           _tl246873246890_
                           _hd246874246888_)))
                      (let ()
                        (declare (not safe))
                        (_g246869246880_ _g246870246883_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g246868246915_
                                                   _clause246867_)))
                                              (let ((__tmp252910
                                                     (lambda (_g246917246920_
                                                              _g246918246922_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g246917246920_
                                                               _g246918246922_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp252910
                                                        '()
                                                        _L246852_))))
                                        (__tmp252911
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses246925_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp252911
                                    _L246388_)))
                               _clause246810246849_))))))
              (let ()
                (declare (not safe))
                (_loop246805246833_ _target246802246828_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g246796246815_
                                                       _g246797246818_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g246796246815_
                                             _g246797246818_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g246796246815_ _g246797246818_))))))
                      (declare (not safe))
                      (_g246795246927_ _L246388_))))
                 (_make-specializer-impl246935_
                  (lambda (_specializer-lambda-expr246932_
                           _specializer-case-lambda-expr246933_)
                    (let ((__tmp252913
                           (let ((__tmp252914
                                  (let ((__tmp252916
                                         (let ((__tmp252917
                                                (let ((__tmp252934
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L245807_ '())))
                                                      (__tmp252918
                                                       (let ((__tmp252919
                                                              (let ((__tmp252920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp252922
                                    (let ((__tmp252923
                                           (let ((__tmp252933
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L245806_ '())))
                                                 (__tmp252924
                                                  (let ((__tmp252925
                                                         (let ((__tmp252926
                                                                (let ((__tmp252927
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252929
                                      (let ((__tmp252930
                                             (let ((__tmp252932
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L246390_ '())))
                                                   (__tmp252931
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr246932_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp252932
                                                     __tmp252931))))
                                        (declare (not safe))
                                        (cons __tmp252930 '())))
                                     (__tmp252928
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr246933_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp252929 __tmp252928))))
                          (declare (not safe))
                          (cons '%#let-values __tmp252927))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp252926 _stx243717_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252925 '()))))
                                             (declare (not safe))
                                             (cons __tmp252933 __tmp252924))))
                                      (declare (not safe))
                                      (cons __tmp252923 '())))
                                   (__tmp252921
                                    (let ()
                                      (declare (not safe))
                                      (cons _L245804_ '()))))
                               (declare (not safe))
                               (cons __tmp252922 __tmp252921))))
                        (declare (not safe))
                        (cons '%#let-values __tmp252920))))
                 (declare (not safe))
                 (cons __tmp252919 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252934
                                                        __tmp252918))))
                                           (declare (not safe))
                                           (cons __tmp252917 '())))
                                        (__tmp252915
                                         (let ()
                                           (declare (not safe))
                                           (cons _L245803_ '()))))
                                    (declare (not safe))
                                    (cons __tmp252916 __tmp252915))))
                             (declare (not safe))
                             (cons '%#let-values __tmp252914))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252913 _stx243717_))))
                 (_specializer-lambda-expr246937_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr246791_
                     _struct-check-all246683_
                     _empty243816_)))
                 (_specializer-case-lambda-expr246939_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr246930_
                     _struct-check-all246683_
                     _empty243816_)))
                 (_specializer-impl246941_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl246935_
                     _specializer-lambda-expr246937_
                     _specializer-case-lambda-expr246939_)))
                 (_unchecked-specializer-lambda-expr246943_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?243819_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr246791_
                         _empty243816_
                         _struct-check-all246683_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr246945_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?243819_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr246930_
                         _empty243816_
                         _struct-check-all246683_))
                      '#f))
                 (_unchecked-specializer-impl246947_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?243819_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl246935_
                         _unchecked-specializer-lambda-expr246943_
                         _unchecked-specializer-case-lambda-expr246945_))
                      '#f))
                 (_specializer-impl246949_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl243723_
                     _$t246613_
                     _methods-bind246636_
                     _slots-bind246659_
                     _class-check-bind246681_
                     _struct-check-bind246705_
                     _specializer-impl246941_
                     _lifted-specializer-id246611_
                     _unchecked-specializer-impl246947_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp252936
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L243792_)))
                                                          (__tmp252935
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id246604_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp252936
                                                       '" => "
                                                       __tmp252935))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def243724_
                                                       _L243792_
                                                       _specializer-id246604_
                                                       _specializer-impl246949_
                                                       _lifted-specializer-id246611_
                                                       _unchecked-specializer-impl246947_)))))
                                            _hd246321246383_
                                            _hd246318246375_
                                            _hd246315246367_)
                                           (let ()
                                             (declare (not safe))
                                             (_g246297246327_
                                              _g246298246330_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g246297246327_ _g246298246330_)))
                               (let ()
                                 (declare (not safe))
                                 (_g246297246327_ _g246298246330_)))
                           (let ()
                             (declare (not safe))
                             (_g246297246327_ _g246298246330_)))))
                   (let ()
                     (declare (not safe))
                     (_g246297246327_ _g246298246330_)))
               (let ()
                 (declare (not safe))
                 (_g246297246327_ _g246298246330_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g246297246327_
                                                  _g246298246330_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g246297246327_ _g246298246330_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g246297246327_ _g246298246330_)))))
                       (let ()
                         (declare (not safe))
                         (_g246297246327_ _g246298246330_)))))
               (let ()
                 (declare (not safe))
                 (_g246297246327_ _g246298246330_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g246296246952_ _L245805_))
                                         _stx243717_))))
                             _hd245902246025_
                             _kw-ref245900246046_
                             _hd245890246012_
                             _hd245881245988_
                             _hd245872245964_)
                            (let ()
                              (declare (not safe))
                              (_g245846245908_ _g245847245911_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop245895246030_
                                                   _target245892246017_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g245846245908_
                                                 _g245847245911_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g245846245908_ _g245847245911_))))))
                            (let ()
                              (declare (not safe))
                              (_g245846245908_ _g245847245911_)))
                        (let ()
                          (declare (not safe))
                          (_g245846245908_ _g245847245911_)))
                    (let ()
                      (declare (not safe))
                      (_g245846245908_ _g245847245911_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245846245908_
                                                       _g245847245911_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g245846245908_
                                                   _g245847245911_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g245846245908_
                                               _g245847245911_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g245846245908_ _g245847245911_)))))
                            (let ()
                              (declare (not safe))
                              (_g245846245908_ _g245847245911_)))
                        (let ()
                          (declare (not safe))
                          (_g245846245908_ _g245847245911_)))))
                (let ()
                  (declare (not safe))
                  (_g245846245908_ _g245847245911_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245846245908_
                                                       _g245847245911_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g245846245908_
                                                   _g245847245911_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g245846245908_ _g245847245911_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g245846245908_ _g245847245911_)))
                            (let ()
                              (declare (not safe))
                              (_g245846245908_ _g245847245911_)))))
                    (let ()
                      (declare (not safe))
                      (_g245846245908_ _g245847245911_)))
                (let ()
                  (declare (not safe))
                  (_g245846245908_ _g245847245911_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245846245908_
                                                       _g245847245911_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g245846245908_
                                               _g245847245911_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g245846245908_ _g245847245911_)))
                                (let ()
                                  (declare (not safe))
                                  (_g245846245908_ _g245847245911_)))
                            (let ()
                              (declare (not safe))
                              (_g245846245908_ _g245847245911_)))))
                    (let ()
                      (declare (not safe))
                      (_g245846245908_ _g245847245911_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245846245908_
                                                       _g245847245911_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g245846245908_
                                               _g245847245911_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g245846245908_ _g245847245911_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g245846245908_ _g245847245911_)))))
                            (let ()
                              (declare (not safe))
                              (_g245846245908_ _g245847245911_))))))
                (declare (not safe))
                (_g245845246955_ _L245804_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd245680245798_
                                                    _hd245677245790_
                                                    _hd245674245782_
                                                    _hd245671245774_
                                                    _hd245653245726_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g245633245686_
                                                      _g245634245689_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g245633245686_
                                              _g245634245689_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g245633245686_ _g245634245689_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g245633245686_ _g245634245689_)))
                               (let ()
                                 (declare (not safe))
                                 (_g245633245686_ _g245634245689_)))))
                       (let ()
                         (declare (not safe))
                         (_g245633245686_ _g245634245689_)))
                   (let ()
                     (declare (not safe))
                     (_g245633245686_ _g245634245689_)))
               (let ()
                 (declare (not safe))
                 (_g245633245686_ _g245634245689_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g245633245686_
                                                  _g245634245689_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g245633245686_
                                              _g245634245689_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g245633245686_ _g245634245689_)))))
                           (let ()
                             (declare (not safe))
                             (_g245633245686_ _g245634245689_)))))
                   (let ()
                     (declare (not safe))
                     (_g245633245686_ _g245634245689_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g245633245686_
                                                      _g245634245689_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g245633245686_
                                                  _g245634245689_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g245633245686_
                                              _g245634245689_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g245633245686_ _g245634245689_)))))
                           (let ()
                             (declare (not safe))
                             (_g245633245686_ _g245634245689_)))
                       (let ()
                         (declare (not safe))
                         (_g245633245686_ _g245634245689_)))))
               (let ()
                 (declare (not safe))
                 (_g245633245686_ _g245634245689_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g245633245686_
                                                  _g245634245689_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g245633245686_ _g245634245689_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g245633245686_ _g245634245689_)))
                           (let ()
                             (declare (not safe))
                             (_g245633245686_ _g245634245689_)))
                       (let ()
                         (declare (not safe))
                         (_g245633245686_ _g245634245689_)))))
               (let ()
                 (declare (not safe))
                 (_g245633245686_ _g245634245689_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g245632246958_ _L243791_))
                                         _stx243717_))))))))
                  (___kont251665251666_ (lambda () _stx243717_)))
              (let ((___match251694251695_
                     (lambda (_e243733243759_
                              _hd243732243762_
                              _tl243731243764_
                              _e243736243767_
                              _hd243735243770_
                              _tl243734243772_
                              _e243739243775_
                              _hd243738243778_
                              _tl243737243780_
                              _e243742243783_
                              _hd243741243786_
                              _tl243740243788_)
                       (let ((_L243791_ _hd243741243786_)
                             (_L243792_ _hd243738243778_))
                         (if (let ((__tmp253053
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L243792_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp253053))
                             (___kont251663251664_ _L243791_ _L243792_)
                             (___kont251665251666_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx251661251662_))
                    (let ((_e243733243759_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx251661251662_))))
                      (let ((_tl243731243764_
                             (let ()
                               (declare (not safe))
                               (##cdr _e243733243759_)))
                            (_hd243732243762_
                             (let ()
                               (declare (not safe))
                               (##car _e243733243759_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl243731243764_))
                            (let ((_e243736243767_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl243731243764_))))
                              (let ((_tl243734243772_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e243736243767_)))
                                    (_hd243735243770_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e243736243767_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd243735243770_))
                                    (let ((_e243739243775_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd243735243770_))))
                                      (let ((_tl243737243780_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e243739243775_)))
                                            (_hd243738243778_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e243739243775_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl243737243780_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl243734243772_))
                                                (let ((_e243742243783_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl243734243772_))))
                                                  (let ((_tl243740243788_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e243742243783_)))
                                                        (_hd243741243786_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e243742243783_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl243740243788_))
                                                        (___match251694251695_
                                                         _e243733243759_
                                                         _hd243732243762_
                                                         _tl243731243764_
                                                         _e243736243767_
                                                         _hd243735243770_
                                                         _tl243734243772_
                                                         _e243739243775_
                                                         _hd243738243778_
                                                         _tl243737243780_
                                                         _e243742243783_
                                                         _hd243741243786_
                                                         _tl243740243788_)
                                                        (___kont251665251666_))))
                                                (___kont251665251666_))
                                            (___kont251665251666_))))
                                    (___kont251665251666_))))
                            (___kont251665251666_))))
                    (___kont251665251666_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx242693_
               _self242694_
               _methods242695_
               _slots242696_
               _class-check242697_
               _struct-check242698_
               _struct-assert242699_)
        (let* ((___stx251697251698_ _stx242693_)
               (_g242707242929_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx251697251698_)))))
          (let ((___kont251699251700_
                 (lambda (_L243666_ _L243667_ _L243668_ _L243669_)
                   (let ((__tmp253054
                          (let () (declare (not safe)) (gx#stx-e _L243667_))))
                     (declare (not safe))
                     (table-set! _methods242695_ __tmp253054 '#t))
                   (for-each
                    (lambda (_g243702243704_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g243702243704_
                         _self242694_
                         _methods242695_
                         _slots242696_
                         _class-check242697_
                         _struct-check242698_
                         _struct-assert242699_)))
                    (let ((__tmp253055
                           (lambda (_g243706243709_ _g243707243711_)
                             (let ()
                               (declare (not safe))
                               (cons _g243706243709_ _g243707243711_)))))
                      (declare (not safe))
                      (foldr1 __tmp253055 '() _L243666_)))))
                (___kont251703251704_
                 (lambda (_L243501_ _L243502_ _L243503_ _L243504_ _L243505_)
                   (let ((__tmp253056
                          (let () (declare (not safe)) (gx#stx-e _L243502_))))
                     (declare (not safe))
                     (table-set! _methods242695_ __tmp253056 '#t))
                   (for-each
                    (lambda (_g243545243547_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g243545243547_
                         _self242694_
                         _methods242695_
                         _slots242696_
                         _class-check242697_
                         _struct-check242698_
                         _struct-assert242699_)))
                    (let ((__tmp253057
                           (lambda (_g243549243552_ _g243550243554_)
                             (let ()
                               (declare (not safe))
                               (cons _g243549243552_ _g243550243554_)))))
                      (declare (not safe))
                      (foldr1 __tmp253057 '() _L243501_)))))
                (___kont251707251708_
                 (lambda (_L243334_ _L243335_ _L243336_)
                   (let ((__tmp253058
                          (let () (declare (not safe)) (gx#stx-e _L243334_))))
                     (declare (not safe))
                     (table-set! _slots242696_ __tmp253058 '#t))))
                (___kont251709251710_
                 (lambda (_L243211_ _L243212_ _L243213_ _L243214_)
                   (let ((__tmp253059
                          (let () (declare (not safe)) (gx#stx-e _L243212_))))
                     (declare (not safe))
                     (table-set! _slots242696_ __tmp253059 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L243211_
                      _self242694_
                      _methods242695_
                      _slots242696_
                      _class-check242697_
                      _struct-check242698_
                      _struct-assert242699_))))
                (___kont251711251712_
                 (lambda (_L243095_ _L243096_)
                   (let ((__tmp253060
                          (##structure-ref
                           (let ((__tmp253061
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L243096_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp253061))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots242696_ __tmp253060 '#t))))
                (___kont251713251714_
                 (lambda (_L243005_ _L243006_ _L243007_)
                   (let ((__tmp253062
                          (##structure-ref
                           (let ((__tmp253063
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L243007_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp253063))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots242696_ __tmp253062 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L243005_
                      _self242694_
                      _methods242695_
                      _slots242696_
                      _class-check242697_
                      _struct-check242698_
                      _struct-assert242699_))))
                (___kont251715251716_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx242693_
                      _self242694_
                      _methods242695_
                      _slots242696_
                      _class-check242697_
                      _struct-check242698_
                      _struct-assert242699_)))))
            (let* ((___match252196252197_
                    (lambda (_e242903242941_
                             _hd242902242944_
                             _tl242901242946_
                             _e242906242949_
                             _hd242905242952_
                             _tl242904242954_
                             _e242909242957_
                             _hd242908242960_
                             _tl242907242962_
                             _e242912242965_
                             _hd242911242968_
                             _tl242910242970_
                             _e242915242973_
                             _hd242914242976_
                             _tl242913242978_
                             _e242918242981_
                             _hd242917242984_
                             _tl242916242986_
                             _e242921242989_
                             _hd242920242992_
                             _tl242919242994_
                             _e242924242997_
                             _hd242923243000_
                             _tl242922243002_)
                      (let ((_L243005_ _hd242923243000_)
                            (_L243006_ _hd242920242992_)
                            (_L243007_ _hd242911242968_))
                        (if (and (let ((__tmp253064
                                        (let ((__tmp253065
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L243007_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp253065))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp253064
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L243006_
                                    _self242694_)))
                            (___kont251713251714_
                             _L243005_
                             _L243006_
                             _L243007_)
                            (___kont251715251716_)))))
                   (___match252194252195_
                    (lambda (_e242903242941_
                             _hd242902242944_
                             _tl242901242946_
                             _e242906242949_
                             _hd242905242952_
                             _tl242904242954_
                             _e242909242957_
                             _hd242908242960_
                             _tl242907242962_
                             _e242912242965_
                             _hd242911242968_
                             _tl242910242970_
                             _e242915242973_
                             _hd242914242976_
                             _tl242913242978_
                             _e242918242981_
                             _hd242917242984_
                             _tl242916242986_
                             _e242921242989_
                             _hd242920242992_
                             _tl242919242994_
                             _e242924242997_
                             _hd242923243000_
                             _tl242922243002_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl242922243002_))
                          (___match252196252197_
                           _e242903242941_
                           _hd242902242944_
                           _tl242901242946_
                           _e242906242949_
                           _hd242905242952_
                           _tl242904242954_
                           _e242909242957_
                           _hd242908242960_
                           _tl242907242962_
                           _e242912242965_
                           _hd242911242968_
                           _tl242910242970_
                           _e242915242973_
                           _hd242914242976_
                           _tl242913242978_
                           _e242918242981_
                           _hd242917242984_
                           _tl242916242986_
                           _e242921242989_
                           _hd242920242992_
                           _tl242919242994_
                           _e242924242997_
                           _hd242923243000_
                           _tl242922243002_)
                          (___kont251715251716_))))
                   (___match252188252189_
                    (lambda (_e242903242941_
                             _hd242902242944_
                             _tl242901242946_
                             _e242906242949_
                             _hd242905242952_
                             _tl242904242954_
                             _e242909242957_
                             _hd242908242960_
                             _tl242907242962_
                             _e242912242965_
                             _hd242911242968_
                             _tl242910242970_
                             _e242915242973_
                             _hd242914242976_
                             _tl242913242978_
                             _e242918242981_
                             _hd242917242984_
                             _tl242916242986_
                             _e242921242989_
                             _hd242920242992_
                             _tl242919242994_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242913242978_))
                          (let ((_e242924242997_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242913242978_))))
                            (let ((_tl242922243002_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242924242997_)))
                                  (_hd242923243000_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242924242997_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl242922243002_))
                                  (___match252196252197_
                                   _e242903242941_
                                   _hd242902242944_
                                   _tl242901242946_
                                   _e242906242949_
                                   _hd242905242952_
                                   _tl242904242954_
                                   _e242909242957_
                                   _hd242908242960_
                                   _tl242907242962_
                                   _e242912242965_
                                   _hd242911242968_
                                   _tl242910242970_
                                   _e242915242973_
                                   _hd242914242976_
                                   _tl242913242978_
                                   _e242918242981_
                                   _hd242917242984_
                                   _tl242916242986_
                                   _e242921242989_
                                   _hd242920242992_
                                   _tl242919242994_
                                   _e242924242997_
                                   _hd242923243000_
                                   _tl242922243002_)
                                  (___kont251715251716_))))
                          (___kont251715251716_))))
                   (___match252134252135_
                    (lambda (_e242879243039_
                             _hd242878243042_
                             _tl242877243044_
                             _e242882243047_
                             _hd242881243050_
                             _tl242880243052_
                             _e242885243055_
                             _hd242884243058_
                             _tl242883243060_
                             _e242888243063_
                             _hd242887243066_
                             _tl242886243068_
                             _e242891243071_
                             _hd242890243074_
                             _tl242889243076_
                             _e242894243079_
                             _hd242893243082_
                             _tl242892243084_
                             _e242897243087_
                             _hd242896243090_
                             _tl242895243092_)
                      (let ((_L243095_ _hd242896243090_)
                            (_L243096_ _hd242887243066_))
                        (if (and (let ((__tmp253066
                                        (let ((__tmp253067
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L243096_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp253067))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp253066
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L243095_
                                    _self242694_)))
                            (___kont251711251712_ _L243095_ _L243096_)
                            (___kont251715251716_)))))
                   (___match252132252133_
                    (lambda (_e242879243039_
                             _hd242878243042_
                             _tl242877243044_
                             _e242882243047_
                             _hd242881243050_
                             _tl242880243052_
                             _e242885243055_
                             _hd242884243058_
                             _tl242883243060_
                             _e242888243063_
                             _hd242887243066_
                             _tl242886243068_
                             _e242891243071_
                             _hd242890243074_
                             _tl242889243076_
                             _e242894243079_
                             _hd242893243082_
                             _tl242892243084_
                             _e242897243087_
                             _hd242896243090_
                             _tl242895243092_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl242889243076_))
                          (___match252134252135_
                           _e242879243039_
                           _hd242878243042_
                           _tl242877243044_
                           _e242882243047_
                           _hd242881243050_
                           _tl242880243052_
                           _e242885243055_
                           _hd242884243058_
                           _tl242883243060_
                           _e242888243063_
                           _hd242887243066_
                           _tl242886243068_
                           _e242891243071_
                           _hd242890243074_
                           _tl242889243076_
                           _e242894243079_
                           _hd242893243082_
                           _tl242892243084_
                           _e242897243087_
                           _hd242896243090_
                           _tl242895243092_)
                          (___match252188252189_
                           _e242879243039_
                           _hd242878243042_
                           _tl242877243044_
                           _e242882243047_
                           _hd242881243050_
                           _tl242880243052_
                           _e242885243055_
                           _hd242884243058_
                           _tl242883243060_
                           _e242888243063_
                           _hd242887243066_
                           _tl242886243068_
                           _e242891243071_
                           _hd242890243074_
                           _tl242889243076_
                           _e242894243079_
                           _hd242893243082_
                           _tl242892243084_
                           _e242897243087_
                           _hd242896243090_
                           _tl242895243092_))))
                   (___match252078252079_
                    (lambda (_e242844243123_
                             _hd242843243126_
                             _tl242842243128_
                             _e242847243131_
                             _hd242846243134_
                             _tl242845243136_
                             _e242850243139_
                             _hd242849243142_
                             _tl242848243144_
                             _e242853243147_
                             _hd242852243150_
                             _tl242851243152_
                             _e242856243155_
                             _hd242855243158_
                             _tl242854243160_
                             _e242859243163_
                             _hd242858243166_
                             _tl242857243168_
                             _e242862243171_
                             _hd242861243174_
                             _tl242860243176_
                             _e242865243179_
                             _hd242864243182_
                             _tl242863243184_
                             _e242868243187_
                             _hd242867243190_
                             _tl242866243192_
                             _e242871243195_
                             _hd242870243198_
                             _tl242869243200_
                             _e242874243203_
                             _hd242873243206_
                             _tl242872243208_)
                      (let ((_L243211_ _hd242873243206_)
                            (_L243212_ _hd242870243198_)
                            (_L243213_ _hd242861243174_)
                            (_L243214_ _hd242852243150_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L243214_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L243214_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L243213_
                                    _self242694_)))
                            (___kont251709251710_
                             _L243211_
                             _L243212_
                             _L243213_
                             _L243214_)
                            (___kont251715251716_)))))
                   (___match252070252071_
                    (lambda (_e242844243123_
                             _hd242843243126_
                             _tl242842243128_
                             _e242847243131_
                             _hd242846243134_
                             _tl242845243136_
                             _e242850243139_
                             _hd242849243142_
                             _tl242848243144_
                             _e242853243147_
                             _hd242852243150_
                             _tl242851243152_
                             _e242856243155_
                             _hd242855243158_
                             _tl242854243160_
                             _e242859243163_
                             _hd242858243166_
                             _tl242857243168_
                             _e242862243171_
                             _hd242861243174_
                             _tl242860243176_
                             _e242865243179_
                             _hd242864243182_
                             _tl242863243184_
                             _e242868243187_
                             _hd242867243190_
                             _tl242866243192_
                             _e242871243195_
                             _hd242870243198_
                             _tl242869243200_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242863243184_))
                          (let ((_e242874243203_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242863243184_))))
                            (let ((_tl242872243208_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242874243203_)))
                                  (_hd242873243206_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242874243203_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl242872243208_))
                                  (___match252078252079_
                                   _e242844243123_
                                   _hd242843243126_
                                   _tl242842243128_
                                   _e242847243131_
                                   _hd242846243134_
                                   _tl242845243136_
                                   _e242850243139_
                                   _hd242849243142_
                                   _tl242848243144_
                                   _e242853243147_
                                   _hd242852243150_
                                   _tl242851243152_
                                   _e242856243155_
                                   _hd242855243158_
                                   _tl242854243160_
                                   _e242859243163_
                                   _hd242858243166_
                                   _tl242857243168_
                                   _e242862243171_
                                   _hd242861243174_
                                   _tl242860243176_
                                   _e242865243179_
                                   _hd242864243182_
                                   _tl242863243184_
                                   _e242868243187_
                                   _hd242867243190_
                                   _tl242866243192_
                                   _e242871243195_
                                   _hd242870243198_
                                   _tl242869243200_
                                   _e242874243203_
                                   _hd242873243206_
                                   _tl242872243208_)
                                  (___kont251715251716_))))
                          (___match252194252195_
                           _e242844243123_
                           _hd242843243126_
                           _tl242842243128_
                           _e242847243131_
                           _hd242846243134_
                           _tl242845243136_
                           _e242850243139_
                           _hd242849243142_
                           _tl242848243144_
                           _e242853243147_
                           _hd242852243150_
                           _tl242851243152_
                           _e242856243155_
                           _hd242855243158_
                           _tl242854243160_
                           _e242859243163_
                           _hd242858243166_
                           _tl242857243168_
                           _e242862243171_
                           _hd242861243174_
                           _tl242860243176_
                           _e242865243179_
                           _hd242864243182_
                           _tl242863243184_))))
                   (___match251992251993_
                    (lambda (_e242810243254_
                             _hd242809243257_
                             _tl242808243259_
                             _e242813243262_
                             _hd242812243265_
                             _tl242811243267_
                             _e242816243270_
                             _hd242815243273_
                             _tl242814243275_
                             _e242819243278_
                             _hd242818243281_
                             _tl242817243283_
                             _e242822243286_
                             _hd242821243289_
                             _tl242820243291_
                             _e242825243294_
                             _hd242824243297_
                             _tl242823243299_
                             _e242828243302_
                             _hd242827243305_
                             _tl242826243307_
                             _e242831243310_
                             _hd242830243313_
                             _tl242829243315_
                             _e242834243318_
                             _hd242833243321_
                             _tl242832243323_
                             _e242837243326_
                             _hd242836243329_
                             _tl242835243331_)
                      (let ((_L243334_ _hd242836243329_)
                            (_L243335_ _hd242827243305_)
                            (_L243336_ _hd242818243281_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L243336_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L243336_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L243335_
                                    _self242694_)))
                            (___kont251707251708_
                             _L243334_
                             _L243335_
                             _L243336_)
                            (___match252196252197_
                             _e242810243254_
                             _hd242809243257_
                             _tl242808243259_
                             _e242813243262_
                             _hd242812243265_
                             _tl242811243267_
                             _e242816243270_
                             _hd242815243273_
                             _tl242814243275_
                             _e242819243278_
                             _hd242818243281_
                             _tl242817243283_
                             _e242822243286_
                             _hd242821243289_
                             _tl242820243291_
                             _e242825243294_
                             _hd242824243297_
                             _tl242823243299_
                             _e242828243302_
                             _hd242827243305_
                             _tl242826243307_
                             _e242831243310_
                             _hd242830243313_
                             _tl242829243315_)))))
                   (___match251990251991_
                    (lambda (_e242810243254_
                             _hd242809243257_
                             _tl242808243259_
                             _e242813243262_
                             _hd242812243265_
                             _tl242811243267_
                             _e242816243270_
                             _hd242815243273_
                             _tl242814243275_
                             _e242819243278_
                             _hd242818243281_
                             _tl242817243283_
                             _e242822243286_
                             _hd242821243289_
                             _tl242820243291_
                             _e242825243294_
                             _hd242824243297_
                             _tl242823243299_
                             _e242828243302_
                             _hd242827243305_
                             _tl242826243307_
                             _e242831243310_
                             _hd242830243313_
                             _tl242829243315_
                             _e242834243318_
                             _hd242833243321_
                             _tl242832243323_
                             _e242837243326_
                             _hd242836243329_
                             _tl242835243331_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl242829243315_))
                          (___match251992251993_
                           _e242810243254_
                           _hd242809243257_
                           _tl242808243259_
                           _e242813243262_
                           _hd242812243265_
                           _tl242811243267_
                           _e242816243270_
                           _hd242815243273_
                           _tl242814243275_
                           _e242819243278_
                           _hd242818243281_
                           _tl242817243283_
                           _e242822243286_
                           _hd242821243289_
                           _tl242820243291_
                           _e242825243294_
                           _hd242824243297_
                           _tl242823243299_
                           _e242828243302_
                           _hd242827243305_
                           _tl242826243307_
                           _e242831243310_
                           _hd242830243313_
                           _tl242829243315_
                           _e242834243318_
                           _hd242833243321_
                           _tl242832243323_
                           _e242837243326_
                           _hd242836243329_
                           _tl242835243331_)
                          (___match252070252071_
                           _e242810243254_
                           _hd242809243257_
                           _tl242808243259_
                           _e242813243262_
                           _hd242812243265_
                           _tl242811243267_
                           _e242816243270_
                           _hd242815243273_
                           _tl242814243275_
                           _e242819243278_
                           _hd242818243281_
                           _tl242817243283_
                           _e242822243286_
                           _hd242821243289_
                           _tl242820243291_
                           _e242825243294_
                           _hd242824243297_
                           _tl242823243299_
                           _e242828243302_
                           _hd242827243305_
                           _tl242826243307_
                           _e242831243310_
                           _hd242830243313_
                           _tl242829243315_
                           _e242834243318_
                           _hd242833243321_
                           _tl242832243323_
                           _e242837243326_
                           _hd242836243329_
                           _tl242835243331_))))
                   (___match251980251981_
                    (lambda (_e242810243254_
                             _hd242809243257_
                             _tl242808243259_
                             _e242813243262_
                             _hd242812243265_
                             _tl242811243267_
                             _e242816243270_
                             _hd242815243273_
                             _tl242814243275_
                             _e242819243278_
                             _hd242818243281_
                             _tl242817243283_
                             _e242822243286_
                             _hd242821243289_
                             _tl242820243291_
                             _e242825243294_
                             _hd242824243297_
                             _tl242823243299_
                             _e242828243302_
                             _hd242827243305_
                             _tl242826243307_
                             _e242831243310_
                             _hd242830243313_
                             _tl242829243315_
                             _e242834243318_
                             _hd242833243321_
                             _tl242832243323_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd242833243321_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242832243323_))
                              (let ((_e242837243326_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242832243323_))))
                                (let ((_tl242835243331_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242837243326_)))
                                      (_hd242836243329_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242837243326_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242835243331_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242829243315_))
                                          (___match251992251993_
                                           _e242810243254_
                                           _hd242809243257_
                                           _tl242808243259_
                                           _e242813243262_
                                           _hd242812243265_
                                           _tl242811243267_
                                           _e242816243270_
                                           _hd242815243273_
                                           _tl242814243275_
                                           _e242819243278_
                                           _hd242818243281_
                                           _tl242817243283_
                                           _e242822243286_
                                           _hd242821243289_
                                           _tl242820243291_
                                           _e242825243294_
                                           _hd242824243297_
                                           _tl242823243299_
                                           _e242828243302_
                                           _hd242827243305_
                                           _tl242826243307_
                                           _e242831243310_
                                           _hd242830243313_
                                           _tl242829243315_
                                           _e242834243318_
                                           _hd242833243321_
                                           _tl242832243323_
                                           _e242837243326_
                                           _hd242836243329_
                                           _tl242835243331_)
                                          (___match252070252071_
                                           _e242810243254_
                                           _hd242809243257_
                                           _tl242808243259_
                                           _e242813243262_
                                           _hd242812243265_
                                           _tl242811243267_
                                           _e242816243270_
                                           _hd242815243273_
                                           _tl242814243275_
                                           _e242819243278_
                                           _hd242818243281_
                                           _tl242817243283_
                                           _e242822243286_
                                           _hd242821243289_
                                           _tl242820243291_
                                           _e242825243294_
                                           _hd242824243297_
                                           _tl242823243299_
                                           _e242828243302_
                                           _hd242827243305_
                                           _tl242826243307_
                                           _e242831243310_
                                           _hd242830243313_
                                           _tl242829243315_
                                           _e242834243318_
                                           _hd242833243321_
                                           _tl242832243323_
                                           _e242837243326_
                                           _hd242836243329_
                                           _tl242835243331_))
                                      (___match252194252195_
                                       _e242810243254_
                                       _hd242809243257_
                                       _tl242808243259_
                                       _e242813243262_
                                       _hd242812243265_
                                       _tl242811243267_
                                       _e242816243270_
                                       _hd242815243273_
                                       _tl242814243275_
                                       _e242819243278_
                                       _hd242818243281_
                                       _tl242817243283_
                                       _e242822243286_
                                       _hd242821243289_
                                       _tl242820243291_
                                       _e242825243294_
                                       _hd242824243297_
                                       _tl242823243299_
                                       _e242828243302_
                                       _hd242827243305_
                                       _tl242826243307_
                                       _e242831243310_
                                       _hd242830243313_
                                       _tl242829243315_))))
                              (___match252194252195_
                               _e242810243254_
                               _hd242809243257_
                               _tl242808243259_
                               _e242813243262_
                               _hd242812243265_
                               _tl242811243267_
                               _e242816243270_
                               _hd242815243273_
                               _tl242814243275_
                               _e242819243278_
                               _hd242818243281_
                               _tl242817243283_
                               _e242822243286_
                               _hd242821243289_
                               _tl242820243291_
                               _e242825243294_
                               _hd242824243297_
                               _tl242823243299_
                               _e242828243302_
                               _hd242827243305_
                               _tl242826243307_
                               _e242831243310_
                               _hd242830243313_
                               _tl242829243315_))
                          (___match252194252195_
                           _e242810243254_
                           _hd242809243257_
                           _tl242808243259_
                           _e242813243262_
                           _hd242812243265_
                           _tl242811243267_
                           _e242816243270_
                           _hd242815243273_
                           _tl242814243275_
                           _e242819243278_
                           _hd242818243281_
                           _tl242817243283_
                           _e242822243286_
                           _hd242821243289_
                           _tl242820243291_
                           _e242825243294_
                           _hd242824243297_
                           _tl242823243299_
                           _e242828243302_
                           _hd242827243305_
                           _tl242826243307_
                           _e242831243310_
                           _hd242830243313_
                           _tl242829243315_))))
                   (___match251912251913_
                    (lambda (_e242759243373_
                             _hd242758243376_
                             _tl242757243378_
                             _e242762243381_
                             _hd242761243384_
                             _tl242760243386_
                             _e242765243389_
                             _hd242764243392_
                             _tl242763243394_
                             _e242768243397_
                             _hd242767243400_
                             _tl242766243402_
                             _e242771243405_
                             _hd242770243408_
                             _tl242769243410_
                             _e242774243413_
                             _hd242773243416_
                             _tl242772243418_
                             _e242777243421_
                             _hd242776243424_
                             _tl242775243426_
                             _e242780243429_
                             _hd242779243432_
                             _tl242778243434_
                             _e242783243437_
                             _hd242782243440_
                             _tl242781243442_
                             _e242786243445_
                             _hd242785243448_
                             _tl242784243450_
                             _e242789243453_
                             _hd242788243456_
                             _tl242787243458_
                             _e242792243461_
                             _hd242791243464_
                             _tl242790243466_
                             _e242795243469_
                             _hd242794243472_
                             _tl242793243474_
                             ___splice251705251706_
                             _target242796243477_
                             _tl242798243479_)
                      (letrec ((_loop242799243482_
                                (lambda (_hd242797243485_ _args242803243487_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd242797243485_))
                                      (let ((_e242800243490_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd242797243485_))))
                                        (let ((_lp-tl242802243495_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242800243490_)))
                                              (_lp-hd242801243493_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242800243490_))))
                                          (let ((__tmp253068
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd242801243493_
                                                         _args242803243487_))))
                                            (declare (not safe))
                                            (_loop242799243482_
                                             _lp-tl242802243495_
                                             __tmp253068))))
                                      (let ((_args242804243498_
                                             (reverse _args242803243487_)))
                                        (let ((_L243501_ _args242804243498_)
                                              (_L243502_ _hd242794243472_)
                                              (_L243503_ _hd242785243448_)
                                              (_L243504_ _hd242776243424_)
                                              (_L243505_ _hd242767243400_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L243505_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L243504_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L243503_
                                                      _self242694_)))
                                              (___kont251703251704_
                                               _L243501_
                                               _L243502_
                                               _L243503_
                                               _L243504_
                                               _L243505_)
                                              (___kont251715251716_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop242799243482_ _target242796243477_ '())))))
                   (___match251870251871_
                    (lambda (_e242759243373_
                             _hd242758243376_
                             _tl242757243378_
                             _e242762243381_
                             _hd242761243384_
                             _tl242760243386_
                             _e242765243389_
                             _hd242764243392_
                             _tl242763243394_
                             _e242768243397_
                             _hd242767243400_
                             _tl242766243402_
                             _e242771243405_
                             _hd242770243408_
                             _tl242769243410_
                             _e242774243413_
                             _hd242773243416_
                             _tl242772243418_
                             _e242777243421_
                             _hd242776243424_
                             _tl242775243426_
                             _e242780243429_
                             _hd242779243432_
                             _tl242778243434_
                             _e242783243437_
                             _hd242782243440_
                             _tl242781243442_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd242782243440_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242781243442_))
                              (let ((_e242786243445_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242781243442_))))
                                (let ((_tl242784243450_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242786243445_)))
                                      (_hd242785243448_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242786243445_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242784243450_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242778243434_))
                                          (let ((_e242789243453_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242778243434_))))
                                            (let ((_tl242787243458_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242789243453_)))
                                                  (_hd242788243456_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242789243453_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd242788243456_))
                                                  (let ((_e242792243461_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd242788243456_))))
                                                    (let ((_tl242790243466_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242792243461_)))
                                                          (_hd242791243464_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242792243461_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd242791243464_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd242791243464_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242790243466_))
                          (let ((_e242795243469_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242790243466_))))
                            (let ((_tl242793243474_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242795243469_)))
                                  (_hd242794243472_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242795243469_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl242793243474_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl242787243458_))
                                      (let ((___splice251705251706_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl242787243458_
                                                '0))))
                                        (let ((_tl242798243479_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice251705251706_
                                                  '1)))
                                              (_target242796243477_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice251705251706_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242798243479_))
                                              (___match251912251913_
                                               _e242759243373_
                                               _hd242758243376_
                                               _tl242757243378_
                                               _e242762243381_
                                               _hd242761243384_
                                               _tl242760243386_
                                               _e242765243389_
                                               _hd242764243392_
                                               _tl242763243394_
                                               _e242768243397_
                                               _hd242767243400_
                                               _tl242766243402_
                                               _e242771243405_
                                               _hd242770243408_
                                               _tl242769243410_
                                               _e242774243413_
                                               _hd242773243416_
                                               _tl242772243418_
                                               _e242777243421_
                                               _hd242776243424_
                                               _tl242775243426_
                                               _e242780243429_
                                               _hd242779243432_
                                               _tl242778243434_
                                               _e242783243437_
                                               _hd242782243440_
                                               _tl242781243442_
                                               _e242786243445_
                                               _hd242785243448_
                                               _tl242784243450_
                                               _e242789243453_
                                               _hd242788243456_
                                               _tl242787243458_
                                               _e242792243461_
                                               _hd242791243464_
                                               _tl242790243466_
                                               _e242795243469_
                                               _hd242794243472_
                                               _tl242793243474_
                                               ___splice251705251706_
                                               _target242796243477_
                                               _tl242798243479_)
                                              (___kont251715251716_))))
                                      (___kont251715251716_))
                                  (___kont251715251716_))))
                          (___kont251715251716_))
                      (___kont251715251716_))
                  (___kont251715251716_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont251715251716_))))
                                          (___match252194252195_
                                           _e242759243373_
                                           _hd242758243376_
                                           _tl242757243378_
                                           _e242762243381_
                                           _hd242761243384_
                                           _tl242760243386_
                                           _e242765243389_
                                           _hd242764243392_
                                           _tl242763243394_
                                           _e242768243397_
                                           _hd242767243400_
                                           _tl242766243402_
                                           _e242771243405_
                                           _hd242770243408_
                                           _tl242769243410_
                                           _e242774243413_
                                           _hd242773243416_
                                           _tl242772243418_
                                           _e242777243421_
                                           _hd242776243424_
                                           _tl242775243426_
                                           _e242780243429_
                                           _hd242779243432_
                                           _tl242778243434_))
                                      (___match252194252195_
                                       _e242759243373_
                                       _hd242758243376_
                                       _tl242757243378_
                                       _e242762243381_
                                       _hd242761243384_
                                       _tl242760243386_
                                       _e242765243389_
                                       _hd242764243392_
                                       _tl242763243394_
                                       _e242768243397_
                                       _hd242767243400_
                                       _tl242766243402_
                                       _e242771243405_
                                       _hd242770243408_
                                       _tl242769243410_
                                       _e242774243413_
                                       _hd242773243416_
                                       _tl242772243418_
                                       _e242777243421_
                                       _hd242776243424_
                                       _tl242775243426_
                                       _e242780243429_
                                       _hd242779243432_
                                       _tl242778243434_))))
                              (___match252194252195_
                               _e242759243373_
                               _hd242758243376_
                               _tl242757243378_
                               _e242762243381_
                               _hd242761243384_
                               _tl242760243386_
                               _e242765243389_
                               _hd242764243392_
                               _tl242763243394_
                               _e242768243397_
                               _hd242767243400_
                               _tl242766243402_
                               _e242771243405_
                               _hd242770243408_
                               _tl242769243410_
                               _e242774243413_
                               _hd242773243416_
                               _tl242772243418_
                               _e242777243421_
                               _hd242776243424_
                               _tl242775243426_
                               _e242780243429_
                               _hd242779243432_
                               _tl242778243434_))
                          (___match251980251981_
                           _e242759243373_
                           _hd242758243376_
                           _tl242757243378_
                           _e242762243381_
                           _hd242761243384_
                           _tl242760243386_
                           _e242765243389_
                           _hd242764243392_
                           _tl242763243394_
                           _e242768243397_
                           _hd242767243400_
                           _tl242766243402_
                           _e242771243405_
                           _hd242770243408_
                           _tl242769243410_
                           _e242774243413_
                           _hd242773243416_
                           _tl242772243418_
                           _e242777243421_
                           _hd242776243424_
                           _tl242775243426_
                           _e242780243429_
                           _hd242779243432_
                           _tl242778243434_
                           _e242783243437_
                           _hd242782243440_
                           _tl242781243442_))))
                   (___match251802251803_
                    (lambda (_e242715243562_
                             _hd242714243565_
                             _tl242713243567_
                             _e242718243570_
                             _hd242717243573_
                             _tl242716243575_
                             _e242721243578_
                             _hd242720243581_
                             _tl242719243583_
                             _e242724243586_
                             _hd242723243589_
                             _tl242722243591_
                             _e242727243594_
                             _hd242726243597_
                             _tl242725243599_
                             _e242730243602_
                             _hd242729243605_
                             _tl242728243607_
                             _e242733243610_
                             _hd242732243613_
                             _tl242731243615_
                             _e242736243618_
                             _hd242735243621_
                             _tl242734243623_
                             _e242739243626_
                             _hd242738243629_
                             _tl242737243631_
                             _e242742243634_
                             _hd242741243637_
                             _tl242740243639_
                             ___splice251701251702_
                             _target242743243642_
                             _tl242745243644_)
                      (letrec ((_loop242746243647_
                                (lambda (_hd242744243650_ _args242750243652_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd242744243650_))
                                      (let ((_e242747243655_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd242744243650_))))
                                        (let ((_lp-tl242749243660_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242747243655_)))
                                              (_lp-hd242748243658_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242747243655_))))
                                          (let ((__tmp253069
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd242748243658_
                                                         _args242750243652_))))
                                            (declare (not safe))
                                            (_loop242746243647_
                                             _lp-tl242749243660_
                                             __tmp253069))))
                                      (let ((_args242751243663_
                                             (reverse _args242750243652_)))
                                        (let ((_L243666_ _args242751243663_)
                                              (_L243667_ _hd242741243637_)
                                              (_L243668_ _hd242732243613_)
                                              (_L243669_ _hd242723243589_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L243669_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L243668_
                                                      _self242694_)))
                                              (___kont251699251700_
                                               _L243666_
                                               _L243667_
                                               _L243668_
                                               _L243669_)
                                              (___match251990251991_
                                               _e242715243562_
                                               _hd242714243565_
                                               _tl242713243567_
                                               _e242718243570_
                                               _hd242717243573_
                                               _tl242716243575_
                                               _e242721243578_
                                               _hd242720243581_
                                               _tl242719243583_
                                               _e242724243586_
                                               _hd242723243589_
                                               _tl242722243591_
                                               _e242727243594_
                                               _hd242726243597_
                                               _tl242725243599_
                                               _e242730243602_
                                               _hd242729243605_
                                               _tl242728243607_
                                               _e242733243610_
                                               _hd242732243613_
                                               _tl242731243615_
                                               _e242736243618_
                                               _hd242735243621_
                                               _tl242734243623_
                                               _e242739243626_
                                               _hd242738243629_
                                               _tl242737243631_
                                               _e242742243634_
                                               _hd242741243637_
                                               _tl242740243639_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop242746243647_ _target242743243642_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx251697251698_))
                  (let ((_e242715243562_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx251697251698_))))
                    (let ((_tl242713243567_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242715243562_)))
                          (_hd242714243565_
                           (let ()
                             (declare (not safe))
                             (##car _e242715243562_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242713243567_))
                          (let ((_e242718243570_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242713243567_))))
                            (let ((_tl242716243575_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242718243570_)))
                                  (_hd242717243573_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242718243570_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd242717243573_))
                                  (let ((_e242721243578_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd242717243573_))))
                                    (let ((_tl242719243583_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242721243578_)))
                                          (_hd242720243581_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242721243578_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd242720243581_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd242720243581_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl242719243583_))
                                                  (let ((_e242724243586_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl242719243583_))))
                                                    (let ((_tl242722243591_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242724243586_)))
                                                          (_hd242723243589_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242724243586_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl242722243591_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl242716243575_))
                      (let ((_e242727243594_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl242716243575_))))
                        (let ((_tl242725243599_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242727243594_)))
                              (_hd242726243597_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242727243594_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd242726243597_))
                              (let ((_e242730243602_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd242726243597_))))
                                (let ((_tl242728243607_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242730243602_)))
                                      (_hd242729243605_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242730243602_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd242729243605_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd242729243605_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl242728243607_))
                                              (let ((_e242733243610_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl242728243607_))))
                                                (let ((_tl242731243615_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e242733243610_)))
                                                      (_hd242732243613_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e242733243610_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl242731243615_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl242725243599_))
                                                          (let ((_e242736243618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl242725243599_))))
                    (let ((_tl242734243623_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242736243618_)))
                          (_hd242735243621_
                           (let ()
                             (declare (not safe))
                             (##car _e242736243618_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242735243621_))
                          (let ((_e242739243626_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242735243621_))))
                            (let ((_tl242737243631_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242739243626_)))
                                  (_hd242738243629_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242739243626_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd242738243629_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd242738243629_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242737243631_))
                                          (let ((_e242742243634_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242737243631_))))
                                            (let ((_tl242740243639_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242742243634_)))
                                                  (_hd242741243637_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242742243634_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242740243639_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl242734243623_))
                                                      (let ((___splice251701251702_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl242734243623_ '0))))
                (let ((_tl242745243644_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice251701251702_ '1)))
                      (_target242743243642_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice251701251702_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl242745243644_))
                      (___match251802251803_
                       _e242715243562_
                       _hd242714243565_
                       _tl242713243567_
                       _e242718243570_
                       _hd242717243573_
                       _tl242716243575_
                       _e242721243578_
                       _hd242720243581_
                       _tl242719243583_
                       _e242724243586_
                       _hd242723243589_
                       _tl242722243591_
                       _e242727243594_
                       _hd242726243597_
                       _tl242725243599_
                       _e242730243602_
                       _hd242729243605_
                       _tl242728243607_
                       _e242733243610_
                       _hd242732243613_
                       _tl242731243615_
                       _e242736243618_
                       _hd242735243621_
                       _tl242734243623_
                       _e242739243626_
                       _hd242738243629_
                       _tl242737243631_
                       _e242742243634_
                       _hd242741243637_
                       _tl242740243639_
                       ___splice251701251702_
                       _target242743243642_
                       _tl242745243644_)
                      (___match251990251991_
                       _e242715243562_
                       _hd242714243565_
                       _tl242713243567_
                       _e242718243570_
                       _hd242717243573_
                       _tl242716243575_
                       _e242721243578_
                       _hd242720243581_
                       _tl242719243583_
                       _e242724243586_
                       _hd242723243589_
                       _tl242722243591_
                       _e242727243594_
                       _hd242726243597_
                       _tl242725243599_
                       _e242730243602_
                       _hd242729243605_
                       _tl242728243607_
                       _e242733243610_
                       _hd242732243613_
                       _tl242731243615_
                       _e242736243618_
                       _hd242735243621_
                       _tl242734243623_
                       _e242739243626_
                       _hd242738243629_
                       _tl242737243631_
                       _e242742243634_
                       _hd242741243637_
                       _tl242740243639_))))
              (___match251990251991_
               _e242715243562_
               _hd242714243565_
               _tl242713243567_
               _e242718243570_
               _hd242717243573_
               _tl242716243575_
               _e242721243578_
               _hd242720243581_
               _tl242719243583_
               _e242724243586_
               _hd242723243589_
               _tl242722243591_
               _e242727243594_
               _hd242726243597_
               _tl242725243599_
               _e242730243602_
               _hd242729243605_
               _tl242728243607_
               _e242733243610_
               _hd242732243613_
               _tl242731243615_
               _e242736243618_
               _hd242735243621_
               _tl242734243623_
               _e242739243626_
               _hd242738243629_
               _tl242737243631_
               _e242742243634_
               _hd242741243637_
               _tl242740243639_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match252194252195_
                                                   _e242715243562_
                                                   _hd242714243565_
                                                   _tl242713243567_
                                                   _e242718243570_
                                                   _hd242717243573_
                                                   _tl242716243575_
                                                   _e242721243578_
                                                   _hd242720243581_
                                                   _tl242719243583_
                                                   _e242724243586_
                                                   _hd242723243589_
                                                   _tl242722243591_
                                                   _e242727243594_
                                                   _hd242726243597_
                                                   _tl242725243599_
                                                   _e242730243602_
                                                   _hd242729243605_
                                                   _tl242728243607_
                                                   _e242733243610_
                                                   _hd242732243613_
                                                   _tl242731243615_
                                                   _e242736243618_
                                                   _hd242735243621_
                                                   _tl242734243623_))))
                                          (___match252194252195_
                                           _e242715243562_
                                           _hd242714243565_
                                           _tl242713243567_
                                           _e242718243570_
                                           _hd242717243573_
                                           _tl242716243575_
                                           _e242721243578_
                                           _hd242720243581_
                                           _tl242719243583_
                                           _e242724243586_
                                           _hd242723243589_
                                           _tl242722243591_
                                           _e242727243594_
                                           _hd242726243597_
                                           _tl242725243599_
                                           _e242730243602_
                                           _hd242729243605_
                                           _tl242728243607_
                                           _e242733243610_
                                           _hd242732243613_
                                           _tl242731243615_
                                           _e242736243618_
                                           _hd242735243621_
                                           _tl242734243623_))
                                      (___match251870251871_
                                       _e242715243562_
                                       _hd242714243565_
                                       _tl242713243567_
                                       _e242718243570_
                                       _hd242717243573_
                                       _tl242716243575_
                                       _e242721243578_
                                       _hd242720243581_
                                       _tl242719243583_
                                       _e242724243586_
                                       _hd242723243589_
                                       _tl242722243591_
                                       _e242727243594_
                                       _hd242726243597_
                                       _tl242725243599_
                                       _e242730243602_
                                       _hd242729243605_
                                       _tl242728243607_
                                       _e242733243610_
                                       _hd242732243613_
                                       _tl242731243615_
                                       _e242736243618_
                                       _hd242735243621_
                                       _tl242734243623_
                                       _e242739243626_
                                       _hd242738243629_
                                       _tl242737243631_))
                                  (___match252194252195_
                                   _e242715243562_
                                   _hd242714243565_
                                   _tl242713243567_
                                   _e242718243570_
                                   _hd242717243573_
                                   _tl242716243575_
                                   _e242721243578_
                                   _hd242720243581_
                                   _tl242719243583_
                                   _e242724243586_
                                   _hd242723243589_
                                   _tl242722243591_
                                   _e242727243594_
                                   _hd242726243597_
                                   _tl242725243599_
                                   _e242730243602_
                                   _hd242729243605_
                                   _tl242728243607_
                                   _e242733243610_
                                   _hd242732243613_
                                   _tl242731243615_
                                   _e242736243618_
                                   _hd242735243621_
                                   _tl242734243623_))))
                          (___match252194252195_
                           _e242715243562_
                           _hd242714243565_
                           _tl242713243567_
                           _e242718243570_
                           _hd242717243573_
                           _tl242716243575_
                           _e242721243578_
                           _hd242720243581_
                           _tl242719243583_
                           _e242724243586_
                           _hd242723243589_
                           _tl242722243591_
                           _e242727243594_
                           _hd242726243597_
                           _tl242725243599_
                           _e242730243602_
                           _hd242729243605_
                           _tl242728243607_
                           _e242733243610_
                           _hd242732243613_
                           _tl242731243615_
                           _e242736243618_
                           _hd242735243621_
                           _tl242734243623_))))
                  (___match252132252133_
                   _e242715243562_
                   _hd242714243565_
                   _tl242713243567_
                   _e242718243570_
                   _hd242717243573_
                   _tl242716243575_
                   _e242721243578_
                   _hd242720243581_
                   _tl242719243583_
                   _e242724243586_
                   _hd242723243589_
                   _tl242722243591_
                   _e242727243594_
                   _hd242726243597_
                   _tl242725243599_
                   _e242730243602_
                   _hd242729243605_
                   _tl242728243607_
                   _e242733243610_
                   _hd242732243613_
                   _tl242731243615_))
              (___kont251715251716_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont251715251716_))
                                          (___kont251715251716_))
                                      (___kont251715251716_))))
                              (___kont251715251716_))))
                      (___kont251715251716_))
                  (___kont251715251716_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont251715251716_))
                                              (___kont251715251716_))
                                          (___kont251715251716_))))
                                  (___kont251715251716_))))
                          (___kont251715251716_))))
                  (___kont251715251716_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx241639_
               _self241640_
               _$t241641_
               _methods241642_
               _slots241643_
               _class-check241644_
               _struct-check241645_
               _struct-assert241646_)
        (letrec ((_force-e241648_
                  (lambda (_what242691_)
                    (let ((__tmp253070
                           (let ((__tmp253074
                                  (let ((__tmp253075
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp253075)))
                                 (__tmp253071
                                  (let ((__tmp253072
                                         (let ((__tmp253073
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what242691_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp253073))))
                                    (declare (not safe))
                                    (cons __tmp253072 '()))))
                             (declare (not safe))
                             (cons __tmp253074 __tmp253071))))
                      (declare (not safe))
                      (cons '%#call __tmp253070)))))
          (let* ((___stx252199252200_ _stx241639_)
                 (_g241656241878_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx252199252200_)))))
            (let ((___kont252201252202_
                   (lambda (_L242637_ _L242638_ _L242639_ _L242640_)
                     (let ((_$method242685_
                            (let ((__tmp253076
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L242638_))))
                              (declare (not safe))
                              (table-ref _methods241642_ __tmp253076)))
                           (_args242686_
                            (map (lambda (_g242673242675_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g242673242675_
                                      _self241640_
                                      _$t241641_
                                      _methods241642_
                                      _slots241643_
                                      _class-check241644_
                                      _struct-check241645_
                                      _struct-assert241646_)))
                                 (let ((__tmp253077
                                        (lambda (_g242677242680_
                                                 _g242678242682_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g242677242680_
                                                  _g242678242682_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp253077 '() _L242637_)))))
                       (let ((__tmp253078
                              (let ((__tmp253079
                                     (let ((__tmp253083
                                            (let ()
                                              (declare (not safe))
                                              (_force-e241648_
                                               _$method242685_)))
                                           (__tmp253080
                                            (let ((__tmp253081
                                                   (let ((__tmp253082
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self241640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp253082))))
                                              (declare (not safe))
                                              (cons __tmp253081
                                                    _args242686_))))
                                       (declare (not safe))
                                       (cons __tmp253083 __tmp253080))))
                                (declare (not safe))
                                (cons '%#call __tmp253079))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp253078 _stx241639_)))))
                  (___kont252205252206_
                   (lambda (_L242469_ _L242470_ _L242471_ _L242472_ _L242473_)
                     (let ((_$method242525_
                            (let ((__tmp253084
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L242470_))))
                              (declare (not safe))
                              (table-ref _methods241642_ __tmp253084)))
                           (_args242526_
                            (map (lambda (_g242513242515_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g242513242515_
                                      _self241640_
                                      _$t241641_
                                      _methods241642_
                                      _slots241643_
                                      _class-check241644_
                                      _struct-check241645_
                                      _struct-assert241646_)))
                                 (let ((__tmp253085
                                        (lambda (_g242517242520_
                                                 _g242518242522_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g242517242520_
                                                  _g242518242522_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp253085 '() _L242469_)))))
                       (let ((__tmp253086
                              (let ((__tmp253087
                                     (let ((__tmp253093
                                            (let ((__tmp253094
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp253094)))
                                           (__tmp253088
                                            (let ((__tmp253092
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e241648_
                                                      _$method242525_)))
                                                  (__tmp253089
                                                   (let ((__tmp253090
                                                          (let ((__tmp253091
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self241640_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp253091))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp253090
                                                           _args242526_))))
                                              (declare (not safe))
                                              (cons __tmp253092 __tmp253089))))
                                       (declare (not safe))
                                       (cons __tmp253093 __tmp253088))))
                                (declare (not safe))
                                (cons '%#call __tmp253087))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp253086 _stx241639_)))))
                  (___kont252209252210_
                   (lambda (_L242300_ _L242301_ _L242302_)
                     (let* ((_$field242334_
                             (let ((__tmp253095
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L242300_))))
                               (declare (not safe))
                               (table-ref _slots241643_ __tmp253095)))
                            (__tmp253096
                             (let ((__tmp253097
                                    (let ((__tmp253104
                                           (let ((__tmp253105
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t241641_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp253105)))
                                          (__tmp253098
                                           (let ((__tmp253102
                                                  (let ((__tmp253103
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field242334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp253103)))
                                                 (__tmp253099
                                                  (let ((__tmp253100
                                                         (let ((__tmp253101
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self241640_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp253101))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp253100 '()))))
                                             (declare (not safe))
                                             (cons __tmp253102 __tmp253099))))
                                      (declare (not safe))
                                      (cons __tmp253104 __tmp253098))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp253097))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp253096 _stx241639_))))
                  (___kont252211252212_
                   (lambda (_L242174_ _L242175_ _L242176_ _L242177_)
                     (let ((_$field242212_
                            (let ((__tmp253106
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L242175_))))
                              (declare (not safe))
                              (table-ref _slots241643_ __tmp253106)))
                           (_expr242213_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L242174_
                               _self241640_
                               _$t241641_
                               _methods241642_
                               _slots241643_
                               _class-check241644_
                               _struct-check241645_
                               _struct-assert241646_))))
                       (let ((__tmp253107
                              (let ((__tmp253108
                                     (let ((__tmp253116
                                            (let ((__tmp253117
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t241641_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp253117)))
                                           (__tmp253109
                                            (let ((__tmp253114
                                                   (let ((__tmp253115
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field242212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp253115)))
                                                  (__tmp253110
                                                   (let ((__tmp253112
                                                          (let ((__tmp253113
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self241640_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp253113)))
                 (__tmp253111
                  (let () (declare (not safe)) (cons _expr242213_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp253112
                                                           __tmp253111))))
                                              (declare (not safe))
                                              (cons __tmp253114 __tmp253110))))
                                       (declare (not safe))
                                       (cons __tmp253116 __tmp253109))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp253108))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp253107 _stx241639_)))))
                  (___kont252213252214_
                   (lambda (_L242053_ _L242054_)
                     (let* ((_slot242076_
                             (##structure-ref
                              (let ((__tmp253118
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L242054_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp253118))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field242078_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots241643_ _slot242076_))))
                       (let ((__tmp253119
                              (let ((__tmp253120
                                     (let ((__tmp253127
                                            (let ((__tmp253128
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t241641_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp253128)))
                                           (__tmp253121
                                            (let ((__tmp253125
                                                   (let ((__tmp253126
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field242078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp253126)))
                                                  (__tmp253122
                                                   (let ((__tmp253123
                                                          (let ((__tmp253124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self241640_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp253124))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp253123 '()))))
                                              (declare (not safe))
                                              (cons __tmp253125 __tmp253122))))
                                       (declare (not safe))
                                       (cons __tmp253127 __tmp253121))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp253120))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp253119 _stx241639_)))))
                  (___kont252215252216_
                   (lambda (_L241954_ _L241955_ _L241956_)
                     (let* ((_slot241985_
                             (##structure-ref
                              (let ((__tmp253129
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L241956_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp253129))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field241987_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots241643_ _slot241985_)))
                            (_expr241989_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L241954_
                                _self241640_
                                _$t241641_
                                _methods241642_
                                _slots241643_
                                _class-check241644_
                                _struct-check241645_
                                _struct-assert241646_))))
                       (let ((__tmp253130
                              (let ((__tmp253131
                                     (let ((__tmp253139
                                            (let ((__tmp253140
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t241641_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp253140)))
                                           (__tmp253132
                                            (let ((__tmp253137
                                                   (let ((__tmp253138
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field241987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp253138)))
                                                  (__tmp253133
                                                   (let ((__tmp253135
                                                          (let ((__tmp253136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self241640_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp253136)))
                 (__tmp253134
                  (let () (declare (not safe)) (cons _expr241989_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp253135
                                                           __tmp253134))))
                                              (declare (not safe))
                                              (cons __tmp253137 __tmp253133))))
                                       (declare (not safe))
                                       (cons __tmp253139 __tmp253132))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp253131))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp253130 _stx241639_)))))
                  (___kont252217252218_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx241639_
                        _self241640_
                        _$t241641_
                        _methods241642_
                        _slots241643_
                        _class-check241644_
                        _struct-check241645_
                        _struct-assert241646_)))))
              (let* ((___match252698252699_
                      (lambda (_e241852241890_
                               _hd241851241893_
                               _tl241850241895_
                               _e241855241898_
                               _hd241854241901_
                               _tl241853241903_
                               _e241858241906_
                               _hd241857241909_
                               _tl241856241911_
                               _e241861241914_
                               _hd241860241917_
                               _tl241859241919_
                               _e241864241922_
                               _hd241863241925_
                               _tl241862241927_
                               _e241867241930_
                               _hd241866241933_
                               _tl241865241935_
                               _e241870241938_
                               _hd241869241941_
                               _tl241868241943_
                               _e241873241946_
                               _hd241872241949_
                               _tl241871241951_)
                        (let ((_L241954_ _hd241872241949_)
                              (_L241955_ _hd241869241941_)
                              (_L241956_ _hd241860241917_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L241955_
                                      _self241640_))
                                   (let ((__tmp253141
                                          (let ((__tmp253142
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L241956_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp253142))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp253141
                                      'gxc#!mutator::t)))
                              (___kont252215252216_
                               _L241954_
                               _L241955_
                               _L241956_)
                              (___kont252217252218_)))))
                     (___match252696252697_
                      (lambda (_e241852241890_
                               _hd241851241893_
                               _tl241850241895_
                               _e241855241898_
                               _hd241854241901_
                               _tl241853241903_
                               _e241858241906_
                               _hd241857241909_
                               _tl241856241911_
                               _e241861241914_
                               _hd241860241917_
                               _tl241859241919_
                               _e241864241922_
                               _hd241863241925_
                               _tl241862241927_
                               _e241867241930_
                               _hd241866241933_
                               _tl241865241935_
                               _e241870241938_
                               _hd241869241941_
                               _tl241868241943_
                               _e241873241946_
                               _hd241872241949_
                               _tl241871241951_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241871241951_))
                            (___match252698252699_
                             _e241852241890_
                             _hd241851241893_
                             _tl241850241895_
                             _e241855241898_
                             _hd241854241901_
                             _tl241853241903_
                             _e241858241906_
                             _hd241857241909_
                             _tl241856241911_
                             _e241861241914_
                             _hd241860241917_
                             _tl241859241919_
                             _e241864241922_
                             _hd241863241925_
                             _tl241862241927_
                             _e241867241930_
                             _hd241866241933_
                             _tl241865241935_
                             _e241870241938_
                             _hd241869241941_
                             _tl241868241943_
                             _e241873241946_
                             _hd241872241949_
                             _tl241871241951_)
                            (___kont252217252218_))))
                     (___match252690252691_
                      (lambda (_e241852241890_
                               _hd241851241893_
                               _tl241850241895_
                               _e241855241898_
                               _hd241854241901_
                               _tl241853241903_
                               _e241858241906_
                               _hd241857241909_
                               _tl241856241911_
                               _e241861241914_
                               _hd241860241917_
                               _tl241859241919_
                               _e241864241922_
                               _hd241863241925_
                               _tl241862241927_
                               _e241867241930_
                               _hd241866241933_
                               _tl241865241935_
                               _e241870241938_
                               _hd241869241941_
                               _tl241868241943_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241862241927_))
                            (let ((_e241873241946_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241862241927_))))
                              (let ((_tl241871241951_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241873241946_)))
                                    (_hd241872241949_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241873241946_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl241871241951_))
                                    (___match252698252699_
                                     _e241852241890_
                                     _hd241851241893_
                                     _tl241850241895_
                                     _e241855241898_
                                     _hd241854241901_
                                     _tl241853241903_
                                     _e241858241906_
                                     _hd241857241909_
                                     _tl241856241911_
                                     _e241861241914_
                                     _hd241860241917_
                                     _tl241859241919_
                                     _e241864241922_
                                     _hd241863241925_
                                     _tl241862241927_
                                     _e241867241930_
                                     _hd241866241933_
                                     _tl241865241935_
                                     _e241870241938_
                                     _hd241869241941_
                                     _tl241868241943_
                                     _e241873241946_
                                     _hd241872241949_
                                     _tl241871241951_)
                                    (___kont252217252218_))))
                            (___kont252217252218_))))
                     (___match252636252637_
                      (lambda (_e241828241997_
                               _hd241827242000_
                               _tl241826242002_
                               _e241831242005_
                               _hd241830242008_
                               _tl241829242010_
                               _e241834242013_
                               _hd241833242016_
                               _tl241832242018_
                               _e241837242021_
                               _hd241836242024_
                               _tl241835242026_
                               _e241840242029_
                               _hd241839242032_
                               _tl241838242034_
                               _e241843242037_
                               _hd241842242040_
                               _tl241841242042_
                               _e241846242045_
                               _hd241845242048_
                               _tl241844242050_)
                        (let ((_L242053_ _hd241845242048_)
                              (_L242054_ _hd241836242024_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L242053_
                                      _self241640_))
                                   (let ((__tmp253143
                                          (let ((__tmp253144
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L242054_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp253144))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp253143
                                      'gxc#!accessor::t)))
                              (___kont252213252214_ _L242053_ _L242054_)
                              (___kont252217252218_)))))
                     (___match252634252635_
                      (lambda (_e241828241997_
                               _hd241827242000_
                               _tl241826242002_
                               _e241831242005_
                               _hd241830242008_
                               _tl241829242010_
                               _e241834242013_
                               _hd241833242016_
                               _tl241832242018_
                               _e241837242021_
                               _hd241836242024_
                               _tl241835242026_
                               _e241840242029_
                               _hd241839242032_
                               _tl241838242034_
                               _e241843242037_
                               _hd241842242040_
                               _tl241841242042_
                               _e241846242045_
                               _hd241845242048_
                               _tl241844242050_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241838242034_))
                            (___match252636252637_
                             _e241828241997_
                             _hd241827242000_
                             _tl241826242002_
                             _e241831242005_
                             _hd241830242008_
                             _tl241829242010_
                             _e241834242013_
                             _hd241833242016_
                             _tl241832242018_
                             _e241837242021_
                             _hd241836242024_
                             _tl241835242026_
                             _e241840242029_
                             _hd241839242032_
                             _tl241838242034_
                             _e241843242037_
                             _hd241842242040_
                             _tl241841242042_
                             _e241846242045_
                             _hd241845242048_
                             _tl241844242050_)
                            (___match252690252691_
                             _e241828241997_
                             _hd241827242000_
                             _tl241826242002_
                             _e241831242005_
                             _hd241830242008_
                             _tl241829242010_
                             _e241834242013_
                             _hd241833242016_
                             _tl241832242018_
                             _e241837242021_
                             _hd241836242024_
                             _tl241835242026_
                             _e241840242029_
                             _hd241839242032_
                             _tl241838242034_
                             _e241843242037_
                             _hd241842242040_
                             _tl241841242042_
                             _e241846242045_
                             _hd241845242048_
                             _tl241844242050_))))
                     (___match252580252581_
                      (lambda (_e241793242086_
                               _hd241792242089_
                               _tl241791242091_
                               _e241796242094_
                               _hd241795242097_
                               _tl241794242099_
                               _e241799242102_
                               _hd241798242105_
                               _tl241797242107_
                               _e241802242110_
                               _hd241801242113_
                               _tl241800242115_
                               _e241805242118_
                               _hd241804242121_
                               _tl241803242123_
                               _e241808242126_
                               _hd241807242129_
                               _tl241806242131_
                               _e241811242134_
                               _hd241810242137_
                               _tl241809242139_
                               _e241814242142_
                               _hd241813242145_
                               _tl241812242147_
                               _e241817242150_
                               _hd241816242153_
                               _tl241815242155_
                               _e241820242158_
                               _hd241819242161_
                               _tl241818242163_
                               _e241823242166_
                               _hd241822242169_
                               _tl241821242171_)
                        (let ((_L242174_ _hd241822242169_)
                              (_L242175_ _hd241819242161_)
                              (_L242176_ _hd241810242137_)
                              (_L242177_ _hd241801242113_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L242177_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L242177_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L242176_
                                      _self241640_)))
                              (___kont252211252212_
                               _L242174_
                               _L242175_
                               _L242176_
                               _L242177_)
                              (___kont252217252218_)))))
                     (___match252572252573_
                      (lambda (_e241793242086_
                               _hd241792242089_
                               _tl241791242091_
                               _e241796242094_
                               _hd241795242097_
                               _tl241794242099_
                               _e241799242102_
                               _hd241798242105_
                               _tl241797242107_
                               _e241802242110_
                               _hd241801242113_
                               _tl241800242115_
                               _e241805242118_
                               _hd241804242121_
                               _tl241803242123_
                               _e241808242126_
                               _hd241807242129_
                               _tl241806242131_
                               _e241811242134_
                               _hd241810242137_
                               _tl241809242139_
                               _e241814242142_
                               _hd241813242145_
                               _tl241812242147_
                               _e241817242150_
                               _hd241816242153_
                               _tl241815242155_
                               _e241820242158_
                               _hd241819242161_
                               _tl241818242163_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241812242147_))
                            (let ((_e241823242166_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241812242147_))))
                              (let ((_tl241821242171_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241823242166_)))
                                    (_hd241822242169_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241823242166_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl241821242171_))
                                    (___match252580252581_
                                     _e241793242086_
                                     _hd241792242089_
                                     _tl241791242091_
                                     _e241796242094_
                                     _hd241795242097_
                                     _tl241794242099_
                                     _e241799242102_
                                     _hd241798242105_
                                     _tl241797242107_
                                     _e241802242110_
                                     _hd241801242113_
                                     _tl241800242115_
                                     _e241805242118_
                                     _hd241804242121_
                                     _tl241803242123_
                                     _e241808242126_
                                     _hd241807242129_
                                     _tl241806242131_
                                     _e241811242134_
                                     _hd241810242137_
                                     _tl241809242139_
                                     _e241814242142_
                                     _hd241813242145_
                                     _tl241812242147_
                                     _e241817242150_
                                     _hd241816242153_
                                     _tl241815242155_
                                     _e241820242158_
                                     _hd241819242161_
                                     _tl241818242163_
                                     _e241823242166_
                                     _hd241822242169_
                                     _tl241821242171_)
                                    (___kont252217252218_))))
                            (___match252696252697_
                             _e241793242086_
                             _hd241792242089_
                             _tl241791242091_
                             _e241796242094_
                             _hd241795242097_
                             _tl241794242099_
                             _e241799242102_
                             _hd241798242105_
                             _tl241797242107_
                             _e241802242110_
                             _hd241801242113_
                             _tl241800242115_
                             _e241805242118_
                             _hd241804242121_
                             _tl241803242123_
                             _e241808242126_
                             _hd241807242129_
                             _tl241806242131_
                             _e241811242134_
                             _hd241810242137_
                             _tl241809242139_
                             _e241814242142_
                             _hd241813242145_
                             _tl241812242147_))))
                     (___match252494252495_
                      (lambda (_e241759242220_
                               _hd241758242223_
                               _tl241757242225_
                               _e241762242228_
                               _hd241761242231_
                               _tl241760242233_
                               _e241765242236_
                               _hd241764242239_
                               _tl241763242241_
                               _e241768242244_
                               _hd241767242247_
                               _tl241766242249_
                               _e241771242252_
                               _hd241770242255_
                               _tl241769242257_
                               _e241774242260_
                               _hd241773242263_
                               _tl241772242265_
                               _e241777242268_
                               _hd241776242271_
                               _tl241775242273_
                               _e241780242276_
                               _hd241779242279_
                               _tl241778242281_
                               _e241783242284_
                               _hd241782242287_
                               _tl241781242289_
                               _e241786242292_
                               _hd241785242295_
                               _tl241784242297_)
                        (let ((_L242300_ _hd241785242295_)
                              (_L242301_ _hd241776242271_)
                              (_L242302_ _hd241767242247_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L242302_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L242302_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L242301_
                                      _self241640_)))
                              (___kont252209252210_
                               _L242300_
                               _L242301_
                               _L242302_)
                              (___match252698252699_
                               _e241759242220_
                               _hd241758242223_
                               _tl241757242225_
                               _e241762242228_
                               _hd241761242231_
                               _tl241760242233_
                               _e241765242236_
                               _hd241764242239_
                               _tl241763242241_
                               _e241768242244_
                               _hd241767242247_
                               _tl241766242249_
                               _e241771242252_
                               _hd241770242255_
                               _tl241769242257_
                               _e241774242260_
                               _hd241773242263_
                               _tl241772242265_
                               _e241777242268_
                               _hd241776242271_
                               _tl241775242273_
                               _e241780242276_
                               _hd241779242279_
                               _tl241778242281_)))))
                     (___match252492252493_
                      (lambda (_e241759242220_
                               _hd241758242223_
                               _tl241757242225_
                               _e241762242228_
                               _hd241761242231_
                               _tl241760242233_
                               _e241765242236_
                               _hd241764242239_
                               _tl241763242241_
                               _e241768242244_
                               _hd241767242247_
                               _tl241766242249_
                               _e241771242252_
                               _hd241770242255_
                               _tl241769242257_
                               _e241774242260_
                               _hd241773242263_
                               _tl241772242265_
                               _e241777242268_
                               _hd241776242271_
                               _tl241775242273_
                               _e241780242276_
                               _hd241779242279_
                               _tl241778242281_
                               _e241783242284_
                               _hd241782242287_
                               _tl241781242289_
                               _e241786242292_
                               _hd241785242295_
                               _tl241784242297_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241778242281_))
                            (___match252494252495_
                             _e241759242220_
                             _hd241758242223_
                             _tl241757242225_
                             _e241762242228_
                             _hd241761242231_
                             _tl241760242233_
                             _e241765242236_
                             _hd241764242239_
                             _tl241763242241_
                             _e241768242244_
                             _hd241767242247_
                             _tl241766242249_
                             _e241771242252_
                             _hd241770242255_
                             _tl241769242257_
                             _e241774242260_
                             _hd241773242263_
                             _tl241772242265_
                             _e241777242268_
                             _hd241776242271_
                             _tl241775242273_
                             _e241780242276_
                             _hd241779242279_
                             _tl241778242281_
                             _e241783242284_
                             _hd241782242287_
                             _tl241781242289_
                             _e241786242292_
                             _hd241785242295_
                             _tl241784242297_)
                            (___match252572252573_
                             _e241759242220_
                             _hd241758242223_
                             _tl241757242225_
                             _e241762242228_
                             _hd241761242231_
                             _tl241760242233_
                             _e241765242236_
                             _hd241764242239_
                             _tl241763242241_
                             _e241768242244_
                             _hd241767242247_
                             _tl241766242249_
                             _e241771242252_
                             _hd241770242255_
                             _tl241769242257_
                             _e241774242260_
                             _hd241773242263_
                             _tl241772242265_
                             _e241777242268_
                             _hd241776242271_
                             _tl241775242273_
                             _e241780242276_
                             _hd241779242279_
                             _tl241778242281_
                             _e241783242284_
                             _hd241782242287_
                             _tl241781242289_
                             _e241786242292_
                             _hd241785242295_
                             _tl241784242297_))))
                     (___match252482252483_
                      (lambda (_e241759242220_
                               _hd241758242223_
                               _tl241757242225_
                               _e241762242228_
                               _hd241761242231_
                               _tl241760242233_
                               _e241765242236_
                               _hd241764242239_
                               _tl241763242241_
                               _e241768242244_
                               _hd241767242247_
                               _tl241766242249_
                               _e241771242252_
                               _hd241770242255_
                               _tl241769242257_
                               _e241774242260_
                               _hd241773242263_
                               _tl241772242265_
                               _e241777242268_
                               _hd241776242271_
                               _tl241775242273_
                               _e241780242276_
                               _hd241779242279_
                               _tl241778242281_
                               _e241783242284_
                               _hd241782242287_
                               _tl241781242289_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd241782242287_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241781242289_))
                                (let ((_e241786242292_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241781242289_))))
                                  (let ((_tl241784242297_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241786242292_)))
                                        (_hd241785242295_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241786242292_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl241784242297_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl241778242281_))
                                            (___match252494252495_
                                             _e241759242220_
                                             _hd241758242223_
                                             _tl241757242225_
                                             _e241762242228_
                                             _hd241761242231_
                                             _tl241760242233_
                                             _e241765242236_
                                             _hd241764242239_
                                             _tl241763242241_
                                             _e241768242244_
                                             _hd241767242247_
                                             _tl241766242249_
                                             _e241771242252_
                                             _hd241770242255_
                                             _tl241769242257_
                                             _e241774242260_
                                             _hd241773242263_
                                             _tl241772242265_
                                             _e241777242268_
                                             _hd241776242271_
                                             _tl241775242273_
                                             _e241780242276_
                                             _hd241779242279_
                                             _tl241778242281_
                                             _e241783242284_
                                             _hd241782242287_
                                             _tl241781242289_
                                             _e241786242292_
                                             _hd241785242295_
                                             _tl241784242297_)
                                            (___match252572252573_
                                             _e241759242220_
                                             _hd241758242223_
                                             _tl241757242225_
                                             _e241762242228_
                                             _hd241761242231_
                                             _tl241760242233_
                                             _e241765242236_
                                             _hd241764242239_
                                             _tl241763242241_
                                             _e241768242244_
                                             _hd241767242247_
                                             _tl241766242249_
                                             _e241771242252_
                                             _hd241770242255_
                                             _tl241769242257_
                                             _e241774242260_
                                             _hd241773242263_
                                             _tl241772242265_
                                             _e241777242268_
                                             _hd241776242271_
                                             _tl241775242273_
                                             _e241780242276_
                                             _hd241779242279_
                                             _tl241778242281_
                                             _e241783242284_
                                             _hd241782242287_
                                             _tl241781242289_
                                             _e241786242292_
                                             _hd241785242295_
                                             _tl241784242297_))
                                        (___match252696252697_
                                         _e241759242220_
                                         _hd241758242223_
                                         _tl241757242225_
                                         _e241762242228_
                                         _hd241761242231_
                                         _tl241760242233_
                                         _e241765242236_
                                         _hd241764242239_
                                         _tl241763242241_
                                         _e241768242244_
                                         _hd241767242247_
                                         _tl241766242249_
                                         _e241771242252_
                                         _hd241770242255_
                                         _tl241769242257_
                                         _e241774242260_
                                         _hd241773242263_
                                         _tl241772242265_
                                         _e241777242268_
                                         _hd241776242271_
                                         _tl241775242273_
                                         _e241780242276_
                                         _hd241779242279_
                                         _tl241778242281_))))
                                (___match252696252697_
                                 _e241759242220_
                                 _hd241758242223_
                                 _tl241757242225_
                                 _e241762242228_
                                 _hd241761242231_
                                 _tl241760242233_
                                 _e241765242236_
                                 _hd241764242239_
                                 _tl241763242241_
                                 _e241768242244_
                                 _hd241767242247_
                                 _tl241766242249_
                                 _e241771242252_
                                 _hd241770242255_
                                 _tl241769242257_
                                 _e241774242260_
                                 _hd241773242263_
                                 _tl241772242265_
                                 _e241777242268_
                                 _hd241776242271_
                                 _tl241775242273_
                                 _e241780242276_
                                 _hd241779242279_
                                 _tl241778242281_))
                            (___match252696252697_
                             _e241759242220_
                             _hd241758242223_
                             _tl241757242225_
                             _e241762242228_
                             _hd241761242231_
                             _tl241760242233_
                             _e241765242236_
                             _hd241764242239_
                             _tl241763242241_
                             _e241768242244_
                             _hd241767242247_
                             _tl241766242249_
                             _e241771242252_
                             _hd241770242255_
                             _tl241769242257_
                             _e241774242260_
                             _hd241773242263_
                             _tl241772242265_
                             _e241777242268_
                             _hd241776242271_
                             _tl241775242273_
                             _e241780242276_
                             _hd241779242279_
                             _tl241778242281_))))
                     (___match252414252415_
                      (lambda (_e241708242341_
                               _hd241707242344_
                               _tl241706242346_
                               _e241711242349_
                               _hd241710242352_
                               _tl241709242354_
                               _e241714242357_
                               _hd241713242360_
                               _tl241712242362_
                               _e241717242365_
                               _hd241716242368_
                               _tl241715242370_
                               _e241720242373_
                               _hd241719242376_
                               _tl241718242378_
                               _e241723242381_
                               _hd241722242384_
                               _tl241721242386_
                               _e241726242389_
                               _hd241725242392_
                               _tl241724242394_
                               _e241729242397_
                               _hd241728242400_
                               _tl241727242402_
                               _e241732242405_
                               _hd241731242408_
                               _tl241730242410_
                               _e241735242413_
                               _hd241734242416_
                               _tl241733242418_
                               _e241738242421_
                               _hd241737242424_
                               _tl241736242426_
                               _e241741242429_
                               _hd241740242432_
                               _tl241739242434_
                               _e241744242437_
                               _hd241743242440_
                               _tl241742242442_
                               ___splice252207252208_
                               _target241745242445_
                               _tl241747242447_)
                        (letrec ((_loop241748242450_
                                  (lambda (_hd241746242453_ _args241752242455_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd241746242453_))
                                        (let ((_e241749242458_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd241746242453_))))
                                          (let ((_lp-tl241751242463_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e241749242458_)))
                                                (_lp-hd241750242461_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e241749242458_))))
                                            (let ((__tmp253145
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd241750242461_
                                                           _args241752242455_))))
                                              (declare (not safe))
                                              (_loop241748242450_
                                               _lp-tl241751242463_
                                               __tmp253145))))
                                        (let ((_args241753242466_
                                               (reverse _args241752242455_)))
                                          (let ((_L242469_ _args241753242466_)
                                                (_L242470_ _hd241743242440_)
                                                (_L242471_ _hd241734242416_)
                                                (_L242472_ _hd241725242392_)
                                                (_L242473_ _hd241716242368_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L242473_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L242472_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L242471_
                                                        _self241640_)))
                                                (___kont252205252206_
                                                 _L242469_
                                                 _L242470_
                                                 _L242471_
                                                 _L242472_
                                                 _L242473_)
                                                (___kont252217252218_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop241748242450_ _target241745242445_ '())))))
                     (___match252372252373_
                      (lambda (_e241708242341_
                               _hd241707242344_
                               _tl241706242346_
                               _e241711242349_
                               _hd241710242352_
                               _tl241709242354_
                               _e241714242357_
                               _hd241713242360_
                               _tl241712242362_
                               _e241717242365_
                               _hd241716242368_
                               _tl241715242370_
                               _e241720242373_
                               _hd241719242376_
                               _tl241718242378_
                               _e241723242381_
                               _hd241722242384_
                               _tl241721242386_
                               _e241726242389_
                               _hd241725242392_
                               _tl241724242394_
                               _e241729242397_
                               _hd241728242400_
                               _tl241727242402_
                               _e241732242405_
                               _hd241731242408_
                               _tl241730242410_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd241731242408_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241730242410_))
                                (let ((_e241735242413_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241730242410_))))
                                  (let ((_tl241733242418_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241735242413_)))
                                        (_hd241734242416_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241735242413_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl241733242418_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl241727242402_))
                                            (let ((_e241738242421_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl241727242402_))))
                                              (let ((_tl241736242426_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241738242421_)))
                                                    (_hd241737242424_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241738242421_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd241737242424_))
                                                    (let ((_e241741242429_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd241737242424_))))
                                                      (let ((_tl241739242434_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241741242429_)))
                    (_hd241740242432_
                     (let () (declare (not safe)) (##car _e241741242429_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd241740242432_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd241740242432_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241739242434_))
                            (let ((_e241744242437_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241739242434_))))
                              (let ((_tl241742242442_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241744242437_)))
                                    (_hd241743242440_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241744242437_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl241742242442_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl241736242426_))
                                        (let ((___splice252207252208_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl241736242426_
                                                  '0))))
                                          (let ((_tl241747242447_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice252207252208_
                                                    '1)))
                                                (_target241745242445_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice252207252208_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl241747242447_))
                                                (___match252414252415_
                                                 _e241708242341_
                                                 _hd241707242344_
                                                 _tl241706242346_
                                                 _e241711242349_
                                                 _hd241710242352_
                                                 _tl241709242354_
                                                 _e241714242357_
                                                 _hd241713242360_
                                                 _tl241712242362_
                                                 _e241717242365_
                                                 _hd241716242368_
                                                 _tl241715242370_
                                                 _e241720242373_
                                                 _hd241719242376_
                                                 _tl241718242378_
                                                 _e241723242381_
                                                 _hd241722242384_
                                                 _tl241721242386_
                                                 _e241726242389_
                                                 _hd241725242392_
                                                 _tl241724242394_
                                                 _e241729242397_
                                                 _hd241728242400_
                                                 _tl241727242402_
                                                 _e241732242405_
                                                 _hd241731242408_
                                                 _tl241730242410_
                                                 _e241735242413_
                                                 _hd241734242416_
                                                 _tl241733242418_
                                                 _e241738242421_
                                                 _hd241737242424_
                                                 _tl241736242426_
                                                 _e241741242429_
                                                 _hd241740242432_
                                                 _tl241739242434_
                                                 _e241744242437_
                                                 _hd241743242440_
                                                 _tl241742242442_
                                                 ___splice252207252208_
                                                 _target241745242445_
                                                 _tl241747242447_)
                                                (___kont252217252218_))))
                                        (___kont252217252218_))
                                    (___kont252217252218_))))
                            (___kont252217252218_))
                        (___kont252217252218_))
                    (___kont252217252218_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont252217252218_))))
                                            (___match252696252697_
                                             _e241708242341_
                                             _hd241707242344_
                                             _tl241706242346_
                                             _e241711242349_
                                             _hd241710242352_
                                             _tl241709242354_
                                             _e241714242357_
                                             _hd241713242360_
                                             _tl241712242362_
                                             _e241717242365_
                                             _hd241716242368_
                                             _tl241715242370_
                                             _e241720242373_
                                             _hd241719242376_
                                             _tl241718242378_
                                             _e241723242381_
                                             _hd241722242384_
                                             _tl241721242386_
                                             _e241726242389_
                                             _hd241725242392_
                                             _tl241724242394_
                                             _e241729242397_
                                             _hd241728242400_
                                             _tl241727242402_))
                                        (___match252696252697_
                                         _e241708242341_
                                         _hd241707242344_
                                         _tl241706242346_
                                         _e241711242349_
                                         _hd241710242352_
                                         _tl241709242354_
                                         _e241714242357_
                                         _hd241713242360_
                                         _tl241712242362_
                                         _e241717242365_
                                         _hd241716242368_
                                         _tl241715242370_
                                         _e241720242373_
                                         _hd241719242376_
                                         _tl241718242378_
                                         _e241723242381_
                                         _hd241722242384_
                                         _tl241721242386_
                                         _e241726242389_
                                         _hd241725242392_
                                         _tl241724242394_
                                         _e241729242397_
                                         _hd241728242400_
                                         _tl241727242402_))))
                                (___match252696252697_
                                 _e241708242341_
                                 _hd241707242344_
                                 _tl241706242346_
                                 _e241711242349_
                                 _hd241710242352_
                                 _tl241709242354_
                                 _e241714242357_
                                 _hd241713242360_
                                 _tl241712242362_
                                 _e241717242365_
                                 _hd241716242368_
                                 _tl241715242370_
                                 _e241720242373_
                                 _hd241719242376_
                                 _tl241718242378_
                                 _e241723242381_
                                 _hd241722242384_
                                 _tl241721242386_
                                 _e241726242389_
                                 _hd241725242392_
                                 _tl241724242394_
                                 _e241729242397_
                                 _hd241728242400_
                                 _tl241727242402_))
                            (___match252482252483_
                             _e241708242341_
                             _hd241707242344_
                             _tl241706242346_
                             _e241711242349_
                             _hd241710242352_
                             _tl241709242354_
                             _e241714242357_
                             _hd241713242360_
                             _tl241712242362_
                             _e241717242365_
                             _hd241716242368_
                             _tl241715242370_
                             _e241720242373_
                             _hd241719242376_
                             _tl241718242378_
                             _e241723242381_
                             _hd241722242384_
                             _tl241721242386_
                             _e241726242389_
                             _hd241725242392_
                             _tl241724242394_
                             _e241729242397_
                             _hd241728242400_
                             _tl241727242402_
                             _e241732242405_
                             _hd241731242408_
                             _tl241730242410_))))
                     (___match252304252305_
                      (lambda (_e241664242533_
                               _hd241663242536_
                               _tl241662242538_
                               _e241667242541_
                               _hd241666242544_
                               _tl241665242546_
                               _e241670242549_
                               _hd241669242552_
                               _tl241668242554_
                               _e241673242557_
                               _hd241672242560_
                               _tl241671242562_
                               _e241676242565_
                               _hd241675242568_
                               _tl241674242570_
                               _e241679242573_
                               _hd241678242576_
                               _tl241677242578_
                               _e241682242581_
                               _hd241681242584_
                               _tl241680242586_
                               _e241685242589_
                               _hd241684242592_
                               _tl241683242594_
                               _e241688242597_
                               _hd241687242600_
                               _tl241686242602_
                               _e241691242605_
                               _hd241690242608_
                               _tl241689242610_
                               ___splice252203252204_
                               _target241692242613_
                               _tl241694242615_)
                        (letrec ((_loop241695242618_
                                  (lambda (_hd241693242621_ _args241699242623_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd241693242621_))
                                        (let ((_e241696242626_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd241693242621_))))
                                          (let ((_lp-tl241698242631_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e241696242626_)))
                                                (_lp-hd241697242629_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e241696242626_))))
                                            (let ((__tmp253146
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd241697242629_
                                                           _args241699242623_))))
                                              (declare (not safe))
                                              (_loop241695242618_
                                               _lp-tl241698242631_
                                               __tmp253146))))
                                        (let ((_args241700242634_
                                               (reverse _args241699242623_)))
                                          (let ((_L242637_ _args241700242634_)
                                                (_L242638_ _hd241690242608_)
                                                (_L242639_ _hd241681242584_)
                                                (_L242640_ _hd241672242560_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L242640_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L242639_
                                                        _self241640_)))
                                                (___kont252201252202_
                                                 _L242637_
                                                 _L242638_
                                                 _L242639_
                                                 _L242640_)
                                                (___match252492252493_
                                                 _e241664242533_
                                                 _hd241663242536_
                                                 _tl241662242538_
                                                 _e241667242541_
                                                 _hd241666242544_
                                                 _tl241665242546_
                                                 _e241670242549_
                                                 _hd241669242552_
                                                 _tl241668242554_
                                                 _e241673242557_
                                                 _hd241672242560_
                                                 _tl241671242562_
                                                 _e241676242565_
                                                 _hd241675242568_
                                                 _tl241674242570_
                                                 _e241679242573_
                                                 _hd241678242576_
                                                 _tl241677242578_
                                                 _e241682242581_
                                                 _hd241681242584_
                                                 _tl241680242586_
                                                 _e241685242589_
                                                 _hd241684242592_
                                                 _tl241683242594_
                                                 _e241688242597_
                                                 _hd241687242600_
                                                 _tl241686242602_
                                                 _e241691242605_
                                                 _hd241690242608_
                                                 _tl241689242610_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop241695242618_ _target241692242613_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx252199252200_))
                    (let ((_e241664242533_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx252199252200_))))
                      (let ((_tl241662242538_
                             (let ()
                               (declare (not safe))
                               (##cdr _e241664242533_)))
                            (_hd241663242536_
                             (let ()
                               (declare (not safe))
                               (##car _e241664242533_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241662242538_))
                            (let ((_e241667242541_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241662242538_))))
                              (let ((_tl241665242546_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241667242541_)))
                                    (_hd241666242544_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241667242541_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd241666242544_))
                                    (let ((_e241670242549_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd241666242544_))))
                                      (let ((_tl241668242554_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e241670242549_)))
                                            (_hd241669242552_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e241670242549_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd241669242552_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd241669242552_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl241668242554_))
                                                    (let ((_e241673242557_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl241668242554_))))
                                                      (let ((_tl241671242562_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241673242557_)))
                    (_hd241672242560_
                     (let () (declare (not safe)) (##car _e241673242557_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl241671242562_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl241665242546_))
                        (let ((_e241676242565_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl241665242546_))))
                          (let ((_tl241674242570_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e241676242565_)))
                                (_hd241675242568_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e241676242565_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd241675242568_))
                                (let ((_e241679242573_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd241675242568_))))
                                  (let ((_tl241677242578_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241679242573_)))
                                        (_hd241678242576_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241679242573_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd241678242576_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd241678242576_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl241677242578_))
                                                (let ((_e241682242581_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl241677242578_))))
                                                  (let ((_tl241680242586_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e241682242581_)))
                                                        (_hd241681242584_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e241682242581_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl241680242586_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl241674242570_))
                                                            (let ((_e241685242589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl241674242570_))))
                      (let ((_tl241683242594_
                             (let ()
                               (declare (not safe))
                               (##cdr _e241685242589_)))
                            (_hd241684242592_
                             (let ()
                               (declare (not safe))
                               (##car _e241685242589_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd241684242592_))
                            (let ((_e241688242597_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd241684242592_))))
                              (let ((_tl241686242602_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241688242597_)))
                                    (_hd241687242600_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241688242597_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd241687242600_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd241687242600_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl241686242602_))
                                            (let ((_e241691242605_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl241686242602_))))
                                              (let ((_tl241689242610_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241691242605_)))
                                                    (_hd241690242608_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241691242605_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl241689242610_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl241683242594_))
                                                        (let ((___splice252203252204_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl241683242594_ '0))))
                  (let ((_tl241694242615_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice252203252204_ '1)))
                        (_target241692242613_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice252203252204_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl241694242615_))
                        (___match252304252305_
                         _e241664242533_
                         _hd241663242536_
                         _tl241662242538_
                         _e241667242541_
                         _hd241666242544_
                         _tl241665242546_
                         _e241670242549_
                         _hd241669242552_
                         _tl241668242554_
                         _e241673242557_
                         _hd241672242560_
                         _tl241671242562_
                         _e241676242565_
                         _hd241675242568_
                         _tl241674242570_
                         _e241679242573_
                         _hd241678242576_
                         _tl241677242578_
                         _e241682242581_
                         _hd241681242584_
                         _tl241680242586_
                         _e241685242589_
                         _hd241684242592_
                         _tl241683242594_
                         _e241688242597_
                         _hd241687242600_
                         _tl241686242602_
                         _e241691242605_
                         _hd241690242608_
                         _tl241689242610_
                         ___splice252203252204_
                         _target241692242613_
                         _tl241694242615_)
                        (___match252492252493_
                         _e241664242533_
                         _hd241663242536_
                         _tl241662242538_
                         _e241667242541_
                         _hd241666242544_
                         _tl241665242546_
                         _e241670242549_
                         _hd241669242552_
                         _tl241668242554_
                         _e241673242557_
                         _hd241672242560_
                         _tl241671242562_
                         _e241676242565_
                         _hd241675242568_
                         _tl241674242570_
                         _e241679242573_
                         _hd241678242576_
                         _tl241677242578_
                         _e241682242581_
                         _hd241681242584_
                         _tl241680242586_
                         _e241685242589_
                         _hd241684242592_
                         _tl241683242594_
                         _e241688242597_
                         _hd241687242600_
                         _tl241686242602_
                         _e241691242605_
                         _hd241690242608_
                         _tl241689242610_))))
                (___match252492252493_
                 _e241664242533_
                 _hd241663242536_
                 _tl241662242538_
                 _e241667242541_
                 _hd241666242544_
                 _tl241665242546_
                 _e241670242549_
                 _hd241669242552_
                 _tl241668242554_
                 _e241673242557_
                 _hd241672242560_
                 _tl241671242562_
                 _e241676242565_
                 _hd241675242568_
                 _tl241674242570_
                 _e241679242573_
                 _hd241678242576_
                 _tl241677242578_
                 _e241682242581_
                 _hd241681242584_
                 _tl241680242586_
                 _e241685242589_
                 _hd241684242592_
                 _tl241683242594_
                 _e241688242597_
                 _hd241687242600_
                 _tl241686242602_
                 _e241691242605_
                 _hd241690242608_
                 _tl241689242610_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match252696252697_
                                                     _e241664242533_
                                                     _hd241663242536_
                                                     _tl241662242538_
                                                     _e241667242541_
                                                     _hd241666242544_
                                                     _tl241665242546_
                                                     _e241670242549_
                                                     _hd241669242552_
                                                     _tl241668242554_
                                                     _e241673242557_
                                                     _hd241672242560_
                                                     _tl241671242562_
                                                     _e241676242565_
                                                     _hd241675242568_
                                                     _tl241674242570_
                                                     _e241679242573_
                                                     _hd241678242576_
                                                     _tl241677242578_
                                                     _e241682242581_
                                                     _hd241681242584_
                                                     _tl241680242586_
                                                     _e241685242589_
                                                     _hd241684242592_
                                                     _tl241683242594_))))
                                            (___match252696252697_
                                             _e241664242533_
                                             _hd241663242536_
                                             _tl241662242538_
                                             _e241667242541_
                                             _hd241666242544_
                                             _tl241665242546_
                                             _e241670242549_
                                             _hd241669242552_
                                             _tl241668242554_
                                             _e241673242557_
                                             _hd241672242560_
                                             _tl241671242562_
                                             _e241676242565_
                                             _hd241675242568_
                                             _tl241674242570_
                                             _e241679242573_
                                             _hd241678242576_
                                             _tl241677242578_
                                             _e241682242581_
                                             _hd241681242584_
                                             _tl241680242586_
                                             _e241685242589_
                                             _hd241684242592_
                                             _tl241683242594_))
                                        (___match252372252373_
                                         _e241664242533_
                                         _hd241663242536_
                                         _tl241662242538_
                                         _e241667242541_
                                         _hd241666242544_
                                         _tl241665242546_
                                         _e241670242549_
                                         _hd241669242552_
                                         _tl241668242554_
                                         _e241673242557_
                                         _hd241672242560_
                                         _tl241671242562_
                                         _e241676242565_
                                         _hd241675242568_
                                         _tl241674242570_
                                         _e241679242573_
                                         _hd241678242576_
                                         _tl241677242578_
                                         _e241682242581_
                                         _hd241681242584_
                                         _tl241680242586_
                                         _e241685242589_
                                         _hd241684242592_
                                         _tl241683242594_
                                         _e241688242597_
                                         _hd241687242600_
                                         _tl241686242602_))
                                    (___match252696252697_
                                     _e241664242533_
                                     _hd241663242536_
                                     _tl241662242538_
                                     _e241667242541_
                                     _hd241666242544_
                                     _tl241665242546_
                                     _e241670242549_
                                     _hd241669242552_
                                     _tl241668242554_
                                     _e241673242557_
                                     _hd241672242560_
                                     _tl241671242562_
                                     _e241676242565_
                                     _hd241675242568_
                                     _tl241674242570_
                                     _e241679242573_
                                     _hd241678242576_
                                     _tl241677242578_
                                     _e241682242581_
                                     _hd241681242584_
                                     _tl241680242586_
                                     _e241685242589_
                                     _hd241684242592_
                                     _tl241683242594_))))
                            (___match252696252697_
                             _e241664242533_
                             _hd241663242536_
                             _tl241662242538_
                             _e241667242541_
                             _hd241666242544_
                             _tl241665242546_
                             _e241670242549_
                             _hd241669242552_
                             _tl241668242554_
                             _e241673242557_
                             _hd241672242560_
                             _tl241671242562_
                             _e241676242565_
                             _hd241675242568_
                             _tl241674242570_
                             _e241679242573_
                             _hd241678242576_
                             _tl241677242578_
                             _e241682242581_
                             _hd241681242584_
                             _tl241680242586_
                             _e241685242589_
                             _hd241684242592_
                             _tl241683242594_))))
                    (___match252634252635_
                     _e241664242533_
                     _hd241663242536_
                     _tl241662242538_
                     _e241667242541_
                     _hd241666242544_
                     _tl241665242546_
                     _e241670242549_
                     _hd241669242552_
                     _tl241668242554_
                     _e241673242557_
                     _hd241672242560_
                     _tl241671242562_
                     _e241676242565_
                     _hd241675242568_
                     _tl241674242570_
                     _e241679242573_
                     _hd241678242576_
                     _tl241677242578_
                     _e241682242581_
                     _hd241681242584_
                     _tl241680242586_))
                (___kont252217252218_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont252217252218_))
                                            (___kont252217252218_))
                                        (___kont252217252218_))))
                                (___kont252217252218_))))
                        (___kont252217252218_))
                    (___kont252217252218_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont252217252218_))
                                                (___kont252217252218_))
                                            (___kont252217252218_))))
                                    (___kont252217252218_))))
                            (___kont252217252218_))))
                    (___kont252217252218_))))))))))
