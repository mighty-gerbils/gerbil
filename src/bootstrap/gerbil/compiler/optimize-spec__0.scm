(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1708387690)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl133628_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp134756 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl133628_ __tmp134756))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133628_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133628_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133628_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133628_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl133628_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx133611_ . _args133613_)
        (let ((__tmp134758
               (lambda ()
                 (declare (not safe))
                 (if (null? _args133613_)
                     (gxc#compile-e__0 _stx133611_)
                     (let ((_arg1133618_ (car _args133613_))
                           (_rest133620_ (cdr _args133613_)))
                       (if (null? _rest133620_)
                           (gxc#compile-e__1 _stx133611_ _arg1133618_)
                           (let ((_arg2133623_ (car _rest133620_))
                                 (_rest133625_ (cdr _rest133620_)))
                             (if (null? _rest133625_)
                                 (gxc#compile-e__2
                                  _stx133611_
                                  _arg1133618_
                                  _arg2133623_)
                                 (apply gxc#compile-e
                                        _stx133611_
                                        _arg1133618_
                                        _arg2133623_
                                        _rest133625_))))))))
              (__tmp134757 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp134758
           gxc#current-compile-methods
           __tmp134757))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl133608_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp134759 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl133608_ __tmp134759))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133608_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133608_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133608_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133608_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133608_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133608_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133608_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133608_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133608_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133608_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133608_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133608_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133608_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133608_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133608_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133608_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl133608_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx133591_ . _args133593_)
        (let ((__tmp134761
               (lambda ()
                 (declare (not safe))
                 (if (null? _args133593_)
                     (gxc#compile-e__0 _stx133591_)
                     (let ((_arg1133598_ (car _args133593_))
                           (_rest133600_ (cdr _args133593_)))
                       (if (null? _rest133600_)
                           (gxc#compile-e__1 _stx133591_ _arg1133598_)
                           (let ((_arg2133603_ (car _rest133600_))
                                 (_rest133605_ (cdr _rest133600_)))
                             (if (null? _rest133605_)
                                 (gxc#compile-e__2
                                  _stx133591_
                                  _arg1133598_
                                  _arg2133603_)
                                 (apply gxc#compile-e
                                        _stx133591_
                                        _arg1133598_
                                        _arg2133603_
                                        _rest133605_))))))))
              (__tmp134760 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp134761
           gxc#current-compile-methods
           __tmp134760))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl133588_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp134762 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl133588_ __tmp134762))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133588_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133588_ '%#call gxc#subst-object-refs-call%))
           _tbl133588_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx133571_ . _args133573_)
        (let ((__tmp134764
               (lambda ()
                 (declare (not safe))
                 (if (null? _args133573_)
                     (gxc#compile-e__0 _stx133571_)
                     (let ((_arg1133578_ (car _args133573_))
                           (_rest133580_ (cdr _args133573_)))
                       (if (null? _rest133580_)
                           (gxc#compile-e__1 _stx133571_ _arg1133578_)
                           (let ((_arg2133583_ (car _rest133580_))
                                 (_rest133585_ (cdr _rest133580_)))
                             (if (null? _rest133585_)
                                 (gxc#compile-e__2
                                  _stx133571_
                                  _arg1133578_
                                  _arg2133583_)
                                 (apply gxc#compile-e
                                        _stx133571_
                                        _arg1133578_
                                        _arg2133583_
                                        _rest133585_))))))))
              (__tmp134763 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp134764
           gxc#current-compile-methods
           __tmp134763))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx130241_)
        (letrec ((_generate-method-bind130243_
                  (lambda (_$t133565_ _id133566_ _$id133567_)
                    (let ((_$tmp133569_
                           (let ((__tmp134765 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp134765))))
                      (let ((__tmp134813
                             (let ()
                               (declare (not safe))
                               (cons _$id133567_ '())))
                            (__tmp134766
                             (let ((__tmp134767
                                    (let ((__tmp134768
                                           (let ((__tmp134811
                                                  (let ((__tmp134812
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp134812)))
                                                 (__tmp134769
                                                  (let ((__tmp134770
                                                         (let ((__tmp134771
                                                                (let ((__tmp134772
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134773
                                      (let ((__tmp134774
                                             (let ((__tmp134794
                                                    (let ((__tmp134795
                                                           (let ((__tmp134810
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp133569_ '())))
                         (__tmp134796
                          (let ((__tmp134797
                                 (let ((__tmp134798
                                        (let ((__tmp134808
                                               (let ((__tmp134809
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp134809)))
                                              (__tmp134799
                                               (let ((__tmp134806
                                                      (let ((__tmp134807
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t133565_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp134807)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134800
                                                      (let ((__tmp134804
                                                             (let ((__tmp134805
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp134805)))
                    (__tmp134801
                     (let ((__tmp134802
                            (let ((__tmp134803
                                   (let ()
                                     (declare (not safe))
                                     (cons _id133566_ '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp134803))))
                       (declare (not safe))
                       (cons __tmp134802 '()))))
                (declare (not safe))
                (cons __tmp134804 __tmp134801))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp134806
                                                       __tmp134800))))
                                          (declare (not safe))
                                          (cons __tmp134808 __tmp134799))))
                                   (declare (not safe))
                                   (cons '%#call __tmp134798))))
                            (declare (not safe))
                            (cons __tmp134797 '()))))
                     (declare (not safe))
                     (cons __tmp134810 __tmp134796))))
              (declare (not safe))
              (cons __tmp134795 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134775
                                                    (let ((__tmp134776
                                                           (let ((__tmp134777
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134792
                                 (let ((__tmp134793
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp133569_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp134793)))
                                (__tmp134778
                                 (let ((__tmp134790
                                        (let ((__tmp134791
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp133569_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp134791)))
                                       (__tmp134779
                                        (let ((__tmp134780
                                               (let ((__tmp134781
                                                      (let ((__tmp134788
                                                             (let ((__tmp134789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp134789)))
                    (__tmp134782
                     (let ((__tmp134786
                            (let ((__tmp134787
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp134787)))
                           (__tmp134783
                            (let ((__tmp134784
                                   (let ((__tmp134785
                                          (let ()
                                            (declare (not safe))
                                            (cons _id133566_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp134785))))
                              (declare (not safe))
                              (cons __tmp134784 '()))))
                       (declare (not safe))
                       (cons __tmp134786 __tmp134783))))
                (declare (not safe))
                (cons __tmp134788 __tmp134782))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp134781))))
                                          (declare (not safe))
                                          (cons __tmp134780 '()))))
                                   (declare (not safe))
                                   (cons __tmp134790 __tmp134779))))
                            (declare (not safe))
                            (cons __tmp134792 __tmp134778))))
                     (declare (not safe))
                     (cons '%#if __tmp134777))))
              (declare (not safe))
              (cons __tmp134776 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp134794
                                                     __tmp134775))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp134774))))
                                 (declare (not safe))
                                 (cons __tmp134773 '()))))
                          (declare (not safe))
                          (cons '() __tmp134772))))
                   (declare (not safe))
                   (cons '%#lambda __tmp134771))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134770 '()))))
                                             (declare (not safe))
                                             (cons __tmp134811 __tmp134769))))
                                      (declare (not safe))
                                      (cons '%#call __tmp134768))))
                               (declare (not safe))
                               (cons __tmp134767 '()))))
                        (declare (not safe))
                        (cons __tmp134813 __tmp134766)))))
                 (_generate-slot-bind130244_
                  (lambda (_$t133559_ _id133560_ _$id133561_)
                    (let ((_$tmp133563_
                           (let ((__tmp134814 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp134814))))
                      (let ((__tmp134851
                             (let ()
                               (declare (not safe))
                               (cons _$id133561_ '())))
                            (__tmp134815
                             (let ((__tmp134816
                                    (let ((__tmp134817
                                           (let ((__tmp134837
                                                  (let ((__tmp134838
                                                         (let ((__tmp134850
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp133563_ '())))
                       (__tmp134839
                        (let ((__tmp134840
                               (let ((__tmp134841
                                      (let ((__tmp134848
                                             (let ((__tmp134849
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp134849)))
                                            (__tmp134842
                                             (let ((__tmp134846
                                                    (let ((__tmp134847
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t133559_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp134847)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134843
                                                    (let ((__tmp134844
                                                           (let ((__tmp134845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id133560_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp134845))))
              (declare (not safe))
              (cons __tmp134844 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp134846
                                                     __tmp134843))))
                                        (declare (not safe))
                                        (cons __tmp134848 __tmp134842))))
                                 (declare (not safe))
                                 (cons '%#call __tmp134841))))
                          (declare (not safe))
                          (cons __tmp134840 '()))))
                   (declare (not safe))
                   (cons __tmp134850 __tmp134839))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134838 '())))
                                                 (__tmp134818
                                                  (let ((__tmp134819
                                                         (let ((__tmp134820
                                                                (let ((__tmp134835
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134836
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp133563_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp134836)))
                              (__tmp134821
                               (let ((__tmp134833
                                      (let ((__tmp134834
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp133563_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp134834)))
                                     (__tmp134822
                                      (let ((__tmp134823
                                             (let ((__tmp134824
                                                    (let ((__tmp134831
                                                           (let ((__tmp134832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp134832)))
                  (__tmp134825
                   (let ((__tmp134829
                          (let ((__tmp134830
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp134830)))
                         (__tmp134826
                          (let ((__tmp134827
                                 (let ((__tmp134828
                                        (let ()
                                          (declare (not safe))
                                          (cons _id133560_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp134828))))
                            (declare (not safe))
                            (cons __tmp134827 '()))))
                     (declare (not safe))
                     (cons __tmp134829 __tmp134826))))
              (declare (not safe))
              (cons __tmp134831 __tmp134825))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp134824))))
                                        (declare (not safe))
                                        (cons __tmp134823 '()))))
                                 (declare (not safe))
                                 (cons __tmp134833 __tmp134822))))
                          (declare (not safe))
                          (cons __tmp134835 __tmp134821))))
                   (declare (not safe))
                   (cons '%#if __tmp134820))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134819 '()))))
                                             (declare (not safe))
                                             (cons __tmp134837 __tmp134818))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp134817))))
                               (declare (not safe))
                               (cons __tmp134816 '()))))
                        (declare (not safe))
                        (cons __tmp134851 __tmp134815)))))
                 (_generate-class-check-bind130245_
                  (lambda (_$t133555_ _class-type133556_ _$class-type133557_)
                    (let ((__tmp134863
                           (let ()
                             (declare (not safe))
                             (cons _$class-type133557_ '())))
                          (__tmp134852
                           (let ((__tmp134853
                                  (let ((__tmp134854
                                         (let ((__tmp134861
                                                (let ((__tmp134862
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp134862)))
                                               (__tmp134855
                                                (let ((__tmp134859
                                                       (let ((__tmp134860
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t133555_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp134860)))
              (__tmp134856
               (let ((__tmp134857
                      (let ((__tmp134858
                             (let ()
                               (declare (not safe))
                               (cons _class-type133556_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp134858))))
                 (declare (not safe))
                 (cons __tmp134857 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134859
                                                        __tmp134856))))
                                           (declare (not safe))
                                           (cons __tmp134861 __tmp134855))))
                                    (declare (not safe))
                                    (cons '%#call __tmp134854))))
                             (declare (not safe))
                             (cons __tmp134853 '()))))
                      (declare (not safe))
                      (cons __tmp134863 __tmp134852))))
                 (_generate-struct-check-bind130246_
                  (lambda (_$t133551_ _class-type133552_ _$class-type133553_)
                    (let ((__tmp134875
                           (let ()
                             (declare (not safe))
                             (cons _$class-type133553_ '())))
                          (__tmp134864
                           (let ((__tmp134865
                                  (let ((__tmp134866
                                         (let ((__tmp134873
                                                (let ((__tmp134874
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp134874)))
                                               (__tmp134867
                                                (let ((__tmp134871
                                                       (let ((__tmp134872
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t133551_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp134872)))
              (__tmp134868
               (let ((__tmp134869
                      (let ((__tmp134870
                             (let ()
                               (declare (not safe))
                               (cons _class-type133552_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp134870))))
                 (declare (not safe))
                 (cons __tmp134869 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134871
                                                        __tmp134868))))
                                           (declare (not safe))
                                           (cons __tmp134873 __tmp134867))))
                                    (declare (not safe))
                                    (cons '%#call __tmp134866))))
                             (declare (not safe))
                             (cons __tmp134865 '()))))
                      (declare (not safe))
                      (cons __tmp134875 __tmp134864))))
                 (_generate-specializer-impl130247_
                  (lambda (_$t133500_
                           _methods-bind133501_
                           _slots-bind133502_
                           _class-check-bind133503_
                           _struct-check-bind133504_
                           _specializer-impl133505_
                           _lifted-specializer-id133506_
                           _unchecked-specializer-impl133507_)
                    (let ((__tmp134876
                           (let ((__tmp134877
                                  (let ((__tmp134903
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t133500_ '())))
                                        (__tmp134878
                                         (let ((__tmp134879
                                                (let ((__tmp134880
                                                       (let ((__tmp134900
                                                              (let ((__tmp134901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134902
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind133504_
                                              _class-check-bind133503_))))
                               (declare (not safe))
                               (foldr1 cons __tmp134902 _slots-bind133502_))))
                        (declare (not safe))
                        (foldr1 cons __tmp134901 _methods-bind133501_)))
                     (__tmp134881
                      (let ((__tmp134882
                             (if (or _lifted-specializer-id133506_
                                     _unchecked-specializer-impl133507_)
                                 (let* ((_$specializer133512_
                                         (let ((__tmp134883
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp134883)))
                                        (__tmp134884
                                         (let ((__tmp134896
                                                (let ((__tmp134897
                                                       (let ((__tmp134899
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer133512_ '())))
                     (__tmp134898
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl133505_ '()))))
                 (declare (not safe))
                 (cons __tmp134899 __tmp134898))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134897 '())))
                                               (__tmp134885
                                                (let ((__tmp134886
                                                       (let _recur133514_ ((_rest133516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind133504_)))
                 (let* ((_rest133517133525_ _rest133516_)
                        (_else133519133533_
                         (lambda ()
                           (if _lifted-specializer-id133506_
                               (let ((__tmp134887
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id133506_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp134887))
                               _unchecked-specializer-impl133507_)))
                        (_K133521133539_
                         (lambda (_rest133536_ _checkq133537_)
                           (let ((__tmp134888
                                  (let ((__tmp134894
                                         (let ((__tmp134895
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq133537_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp134895)))
                                        (__tmp134889
                                         (let ((__tmp134893
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur133514_
                                                   _rest133536_)))
                                               (__tmp134890
                                                (let ((__tmp134891
                                                       (let ((__tmp134892
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer133512_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp134892))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134891 '()))))
                                           (declare (not safe))
                                           (cons __tmp134893 __tmp134890))))
                                    (declare (not safe))
                                    (cons __tmp134894 __tmp134889))))
                             (declare (not safe))
                             (cons '%#if __tmp134888)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest133517133525_))
                       (let ((_hd133522133542_
                              (let ()
                                (declare (not safe))
                                (##car _rest133517133525_)))
                             (_tl133523133544_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest133517133525_))))
                         (let* ((_checkq133547_ _hd133522133542_)
                                (_rest133549_ _tl133523133544_))
                           (declare (not safe))
                           (_K133521133539_ _rest133549_ _checkq133547_)))
                       (let () (declare (not safe)) (_else133519133533_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134886 '()))))
                                           (declare (not safe))
                                           (cons __tmp134896 __tmp134885))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp134884))
                                 _specializer-impl133505_)))
                        (declare (not safe))
                        (cons __tmp134882 '()))))
                 (declare (not safe))
                 (cons __tmp134900 __tmp134881))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp134880))))
                                           (declare (not safe))
                                           (cons __tmp134879 '()))))
                                    (declare (not safe))
                                    (cons __tmp134903 __tmp134878))))
                             (declare (not safe))
                             (cons '%#lambda __tmp134877))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134876 _stx130241_))))
                 (_generate-specializer-def130248_
                  (lambda (_id133494_
                           _specializer-id133495_
                           _specializer-impl133496_
                           _lifted-specializer-id133497_
                           _unchecked-specializer-impl133498_)
                    (let ((__tmp134904
                           (let ((__tmp134905
                                  (let ((__tmp134906
                                         (let ((__tmp134926
                                                (let ((__tmp134927
                                                       (let ((__tmp134928
                                                              (let ((__tmp134930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id133495_ '())))
                            (__tmp134929
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl133496_ '()))))
                        (declare (not safe))
                        (cons __tmp134930 __tmp134929))))
                 (declare (not safe))
                 (cons '%#define-values __tmp134928))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp134927
                                                   _stx130241_)))
                                               (__tmp134907
                                                (let ((__tmp134914
                                                       (let ((__tmp134915
                                                              (let ((__tmp134916
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134917
                                    (let ((__tmp134924
                                           (let ((__tmp134925
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp134925)))
                                          (__tmp134918
                                           (let ((__tmp134922
                                                  (let ((__tmp134923
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id133494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp134923)))
                                                 (__tmp134919
                                                  (let ((__tmp134920
                                                         (let ((__tmp134921
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id133495_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp134921))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134920 '()))))
                                             (declare (not safe))
                                             (cons __tmp134922 __tmp134919))))
                                      (declare (not safe))
                                      (cons __tmp134924 __tmp134918))))
                               (declare (not safe))
                               (cons '%#call __tmp134917))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp134916 _stx130241_))))
                 (declare (not safe))
                 (cons __tmp134915 '())))
              (__tmp134908
               (if _lifted-specializer-id133497_
                   (let ((__tmp134909
                          (let ((__tmp134910
                                 (let ((__tmp134911
                                        (let ((__tmp134913
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id133497_
                                                       '())))
                                              (__tmp134912
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl133498_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp134913 __tmp134912))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp134911))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp134910 _stx130241_))))
                     (declare (not safe))
                     (cons __tmp134909 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp134914
                                                          __tmp134908))))
                                           (declare (not safe))
                                           (cons __tmp134926 __tmp134907))))
                                    (declare (not safe))
                                    (cons _stx130241_ __tmp134906))))
                             (declare (not safe))
                             (cons '%#begin __tmp134905))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134904 _stx130241_)))))
          (let* ((___stx133717133718_ _stx130241_)
                 (_g130251130271_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx133717133718_)))))
            (let ((___kont133719133720_
                   (lambda (_L130315_ _L130316_)
                     (let ((_method-calls130335_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs130336_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_class-type-check130337_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_struct-type-check130338_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_struct-type-assert130339_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty130340_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?130342_
                                 (lambda ()
                                   (if (let ((__tmp134935
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls130335_))))
                                         (declare (not safe))
                                         (fxzero? __tmp134935))
                                       (if (let ((__tmp134934
                                                  (let ()
                                                    (declare (not safe))
                                                    (hash-length
                                                     _slot-refs130336_))))
                                             (declare (not safe))
                                             (fxzero? __tmp134934))
                                           (if (let ((__tmp134933
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-length
                                                         _class-type-check130337_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp134933))
                                               (if (let ((__tmp134932
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (hash-length
                                                             _struct-type-check130338_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp134932))
                                                   (let ((__tmp134931
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (hash-length
                                                             _struct-type-assert130339_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp134931))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?130343_
                                 (lambda ()
                                   (let ((_$e133487_
                                          (let ((__tmp134936
                                                 (let ((__tmp134937
                                                        (let ()
                                                          (declare (not safe))
                                                          (hash-length
                                                           _struct-type-check130338_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp134937))))
                                            (declare (not safe))
                                            (not __tmp134936))))
                                     (if _$e133487_
                                         _$e133487_
                                         (let ((__tmp134938
                                                (let ((__tmp134939
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-length
                                                          _struct-type-assert130339_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp134939))))
                                           (declare (not safe))
                                           (not __tmp134938))))))
                                (_lift-unchecked-specializer?130344_
                                 (lambda ()
                                   (if (let ((__tmp134942
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls130335_))))
                                         (declare (not safe))
                                         (fxzero? __tmp134942))
                                       (if (let ((__tmp134941
                                                  (let ()
                                                    (declare (not safe))
                                                    (hash-length
                                                     _slot-refs130336_))))
                                             (declare (not safe))
                                             (fxzero? __tmp134941))
                                           (let ((__tmp134940
                                                  (let ()
                                                    (declare (not safe))
                                                    (hash-length
                                                     _class-type-check130337_))))
                                             (declare (not safe))
                                             (fxzero? __tmp134940))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L130315_))
                             (let* ((___stx133631133632_ _L130315_)
                                    (_g130857130875_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx133631133632_)))))
                               (let ((___kont133633133634_
                                      (lambda (_L130911_ _L130912_ _L130913_)
                                        (for-each
                                         (lambda (_g130928130930_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g130928130930_
                                              _L130913_
                                              _method-calls130335_
                                              _slot-refs130336_
                                              _class-type-check130337_
                                              _struct-type-check130338_
                                              _struct-type-assert130339_)))
                                         _L130911_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?130342_))
                                            _stx130241_
                                            (let* ((_specializer-id130939_
                                                    (let* ((_id130933_
                                                            (let ((__tmp135092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L130316_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp135092 '"::specialize")))
                   (_specializer-id130936_
                    (let ((__tmp135093
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx130241_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id130933_ __tmp135093))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id130936_))
              _specializer-id130936_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id130946_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?130344_))
                                                        (let* ((_id130941_
                                                                (let ((__tmp135094
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L130316_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp135094
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id130943_
                        (let ((__tmp135095
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx130241_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id130941_ __tmp135095))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id130943_))
                  _lifted-specializer-id130943_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t130948_
                                                    (let ((__tmp135096
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp135096)))
                                                   (_methods130950_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls130335_)))
                                                   (_$methods130954_
                                                    (map (lambda (_id130952_)
                                                           (let ((__tmp135097
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id130952_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135097)))
                 _methods130950_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135098_
                                                    (for-each
                                                     (lambda (_g130955130958_
                                                              _g130956130960_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls130335_
                                                          _g130955130958_
                                                          _g130956130960_)))
                                                     _methods130950_
                                                     _$methods130954_))
                                                   (_methods-bind130971_
                                                    (map (lambda (_g130963130966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g130964130968_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind130243_
                      _$t130948_
                      _g130963130966_
                      _g130964130968_)))
                 _methods130950_
                 _$methods130954_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots130973_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs130336_)))
                                                   (_$slots130977_
                                                    (map (lambda (_id130975_)
                                                           (let ((__tmp135099
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id130975_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135099)))
                 _slots130973_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135100_
                                                    (for-each
                                                     (lambda (_g130978130981_
                                                              _g130979130983_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs130336_
                                                          _g130978130981_
                                                          _g130979130983_)))
                                                     _slots130973_
                                                     _$slots130977_))
                                                   (_slots-bind130994_
                                                    (map (lambda (_g130986130989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g130987130991_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind130244_
                      _$t130948_
                      _g130986130989_
                      _g130987130991_)))
                 _slots130973_
                 _$slots130977_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check130996_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check130337_)))
                                                   (_$class-check130999_
                                                    (map (lambda (_g135101_)
                                                           (let ((__tmp135102
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp135102)))
                 _class-check130996_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135103_
                                                    (for-each
                                                     (lambda (_g131000131003_
                                                              _g131001131005_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _class-type-check130337_
                                                          _g131000131003_
                                                          _g131001131005_)))
                                                     _class-check130996_
                                                     _$class-check130999_))
                                                   (_class-check-bind131016_
                                                    (map (lambda (_g131008131011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g131009131013_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind130245_
                      _$t130948_
                      _g131008131011_
                      _g131009131013_)))
                 _class-check130996_
                 _$class-check130999_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all131018_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check130338_
                                                       _struct-type-assert130339_)))
                                                   (_struct-check131020_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all131018_)))
                                                   (_$struct-check131023_
                                                    (map (lambda (_g135104_)
                                                           (let ((__tmp135105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp135105)))
                 _struct-check131020_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135106_
                                                    (for-each
                                                     (lambda (_g131024131027_
                                                              _g131025131029_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _struct-check-all131018_
                                                          _g131024131027_
                                                          _g131025131029_)))
                                                     _struct-check131020_
                                                     _$struct-check131023_))
                                                   (_struct-check-bind131040_
                                                    (map (lambda (_g131032131035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g131033131037_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind130246_
                      _$t130948_
                      _g131032131035_
                      _g131033131037_)))
                 _struct-check131020_
                 _$struct-check131023_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl131051_
                                                    (lambda (_struct-type-check1131042_
                                                             _struct-type-check2131043_)
                                                      (let* ((_specializer-body131049_
                                                              (map (lambda (_g131044131046_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g131044131046_
                                _L130913_
                                _$t130948_
                                _method-calls130335_
                                _slot-refs130336_
                                _class-type-check130337_
                                _struct-type-check1131042_
                                _struct-type-check2131043_)))
                           _L130911_))
                     (__tmp135107
                      (let ((__tmp135108
                             (let ((__tmp135109
                                    (let ()
                                      (declare (not safe))
                                      (cons _L130913_ _L130912_))))
                               (declare (not safe))
                               (cons __tmp135109 _specializer-body131049_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp135108))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp135107 _stx130241_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl131053_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl131051_
                                                       _struct-check-all131018_
                                                       _empty130340_)))
                                                   (_unchecked-specializer-impl131055_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?130343_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl131051_
                                                           _empty130340_
                                                           _struct-check-all131018_))
                                                        '#f))
                                                   (_specializer-impl131057_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl130247_
                                                       _$t130948_
                                                       _methods-bind130971_
                                                       _slots-bind130994_
                                                       _class-check-bind131016_
                                                       _struct-check-bind131040_
                                                       _specializer-impl131053_
                                                       _lifted-specializer-id130946_
                                                       _unchecked-specializer-impl131055_))))
                                              (let ((__tmp135111
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L130316_)))
                                                    (__tmp135110
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id130939_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp135111
                                                 '" => "
                                                 __tmp135110))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def130248_
                                                 _L130316_
                                                 _specializer-id130939_
                                                 _specializer-impl131057_
                                                 _lifted-specializer-id130946_
                                                 _unchecked-specializer-impl131055_))))))
                                     (___kont133635133636_
                                      (lambda () _stx130241_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx133631133632_))
                                     (let ((_e130864130887_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx133631133632_))))
                                       (let ((_tl130862130892_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e130864130887_)))
                                             (_hd130863130890_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e130864130887_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl130862130892_))
                                             (let ((_e130867130895_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl130862130892_))))
                                               (let ((_tl130865130900_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e130867130895_)))
                                                     (_hd130866130898_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e130867130895_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd130866130898_))
                                                     (let ((_e130870130903_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd130866130898_))))
                                                       (let ((_tl130868130908_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e130870130903_)))
                     (_hd130869130906_
                      (let () (declare (not safe)) (##car _e130870130903_))))
                 (___kont133633133634_
                  _tl130865130900_
                  _tl130868130908_
                  _hd130869130906_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont133635133636_))))
                                             (___kont133635133636_))))
                                     (___kont133635133636_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L130315_))
                                 (let* ((_g131063131082_
                                         (lambda (_g131064131079_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g131064131079_))))
                                        (_g131062131433_
                                         (lambda (_g131064131085_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g131064131085_))
                                               (let ((_e131068131087_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g131064131085_))))
                                                 (let ((_hd131067131090_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e131068131087_)))
                                                       (_tl131066131092_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e131068131087_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl131066131092_))
                                                       (let ((_g135068_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl131066131092_ '0))))
                 (begin
                   (let ((_g135069_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g135068_)
                                (##vector-length _g135068_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g135069_ 2)))
                         (error "Context expects 2 values" _g135069_)))
                   (let ((_target131069131095_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135068_ 0)))
                         (_tl131071131097_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135068_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl131071131097_))
                         (letrec ((_loop131072131100_
                                   (lambda (_hd131070131103_
                                            _clause131076131105_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd131070131103_))
                                         (let ((_e131073131108_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd131070131103_))))
                                           (let ((_lp-hd131074131111_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131073131108_)))
                                                 (_lp-tl131075131113_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131073131108_))))
                                             (let ((__tmp135091
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd131074131111_
                                                            _clause131076131105_))))
                                               (declare (not safe))
                                               (_loop131072131100_
                                                _lp-tl131075131113_
                                                __tmp135091))))
                                         (let ((_clause131077131116_
                                                (reverse _clause131076131105_)))
                                           ((lambda (_L131119_)
                                              (for-each
                                               (lambda (_clause131132_)
                                                 (let* ((___stx133657133658_
                                                         _clause131132_)
                                                        (_g131135131150_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx133657133658_)))))
                                                   (let ((___kont133659133660_
                                                          (lambda (_L131178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L131179_
                           _L131180_)
                    (for-each
                     (lambda (_g131195131197_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g131195131197_
                          _L131180_
                          _method-calls130335_
                          _slot-refs130336_
                          _class-type-check130337_
                          _struct-type-check130338_
                          _struct-type-assert130339_)))
                     _L131178_)))
                 (___kont133661133662_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx133657133658_))
                                                         (let ((_e131142131162_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx133657133658_))))
                   (let ((_tl131140131167_
                          (let ()
                            (declare (not safe))
                            (##cdr _e131142131162_)))
                         (_hd131141131165_
                          (let ()
                            (declare (not safe))
                            (##car _e131142131162_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd131141131165_))
                         (let ((_e131145131170_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd131141131165_))))
                           (let ((_tl131143131175_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e131145131170_)))
                                 (_hd131144131173_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e131145131170_))))
                             (___kont133659133660_
                              _tl131140131167_
                              _tl131143131175_
                              _hd131144131173_)))
                         (___kont133661133662_))))
                 (___kont133661133662_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp135070
                                                      (lambda (_g131202131205_
                                                               _g131203131207_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g131202131205_
                                                                _g131203131207_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp135070
                                                         '()
                                                         _L131119_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?130342_))
                                                  _stx130241_
                                                  (let* ((_specializer-id131216_
                                                          (let* ((_id131210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135071
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L130316_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp135071 '"::specialize")))
                         (_specializer-id131213_
                          (let ((__tmp135072
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx130241_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id131210_ __tmp135072))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id131213_))
                    _specializer-id131213_))
                 (_lifted-specializer-id131223_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?130344_))
                      (let* ((_id131218_
                              (let ((__tmp135073
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L130316_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp135073
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id131220_
                              (let ((__tmp135074
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx130241_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id131218_
                                 __tmp135074))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id131220_))
                        _lifted-specializer-id131220_)
                      '#f))
                 (_$t131225_
                  (let ((__tmp135075 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135075)))
                 (_methods131227_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls130335_)))
                 (_$methods131231_
                  (map (lambda (_id131229_)
                         (let ((__tmp135076 (gensym _id131229_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135076)))
                       _methods131227_))
                 (_g135077_
                  (for-each
                   (lambda (_g131232131235_ _g131233131237_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls130335_
                        _g131232131235_
                        _g131233131237_)))
                   _methods131227_
                   _$methods131231_))
                 (_methods-bind131248_
                  (map (lambda (_g131240131243_ _g131241131245_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind130243_
                            _$t131225_
                            _g131240131243_
                            _g131241131245_)))
                       _methods131227_
                       _$methods131231_))
                 (_slots131250_
                  (let () (declare (not safe)) (hash-keys _slot-refs130336_)))
                 (_$slots131254_
                  (map (lambda (_id131252_)
                         (let ((__tmp135078 (gensym _id131252_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135078)))
                       _slots131250_))
                 (_g135079_
                  (for-each
                   (lambda (_g131255131258_ _g131256131260_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs130336_
                        _g131255131258_
                        _g131256131260_)))
                   _slots131250_
                   _$slots131254_))
                 (_slots-bind131271_
                  (map (lambda (_g131263131266_ _g131264131268_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind130244_
                            _$t131225_
                            _g131263131266_
                            _g131264131268_)))
                       _slots131250_
                       _$slots131254_))
                 (_class-check131273_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check130337_)))
                 (_$class-check131276_
                  (map (lambda (_g135080_)
                         (let ((__tmp135081 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp135081)))
                       _class-check131273_))
                 (_g135082_
                  (for-each
                   (lambda (_g131277131280_ _g131278131282_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _class-type-check130337_
                        _g131277131280_
                        _g131278131282_)))
                   _class-check131273_
                   _$class-check131276_))
                 (_class-check-bind131293_
                  (map (lambda (_g131285131288_ _g131286131290_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind130245_
                            _$t131225_
                            _g131285131288_
                            _g131286131290_)))
                       _class-check131273_
                       _$class-check131276_))
                 (_struct-check-all131295_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check130338_
                     _struct-type-assert130339_)))
                 (_struct-check131297_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all131295_)))
                 (_$struct-check131300_
                  (map (lambda (_g135083_)
                         (let ((__tmp135084 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp135084)))
                       _struct-check131297_))
                 (_g135085_
                  (for-each
                   (lambda (_g131301131304_ _g131302131306_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _struct-check-all131295_
                        _g131301131304_
                        _g131302131306_)))
                   _struct-check131297_
                   _$struct-check131300_))
                 (_struct-check-bind131317_
                  (map (lambda (_g131309131312_ _g131310131314_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind130246_
                            _$t131225_
                            _g131309131312_
                            _g131310131314_)))
                       _struct-check131297_
                       _$struct-check131300_))
                 (_make-specializer-impl131424_
                  (lambda (_struct-type-check1131319_
                           _struct-type-check2131320_)
                    (let* ((_specializer-clauses131422_
                            (map (lambda (_clause131322_)
                                   (let* ((___stx133677133678_ _clause131322_)
                                          (_g131325131340_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx133677133678_)))))
                                     (let ((___kont133679133680_
                                            (lambda (_L131368_
                                                     _L131369_
                                                     _L131370_)
                                              (let* ((_body131410_
                                                      (map (lambda (_g131405131407_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g131405131407_
                        _L131370_
                        _$t131225_
                        _method-calls130335_
                        _slot-refs130336_
                        _class-type-check130337_
                        _struct-type-check1131319_
                        _struct-type-check2131320_)))
                   _L131368_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp135086
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L131370_
                                                              _L131369_))))
                                                (declare (not safe))
                                                (cons __tmp135086
                                                      _body131410_))))
                                           (___kont133681133682_
                                            (lambda () _clause131322_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx133677133678_))
                                           (let ((_e131332131352_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx133677133678_))))
                                             (let ((_tl131330131357_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e131332131352_)))
                                                   (_hd131331131355_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e131332131352_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd131331131355_))
                                                   (let ((_e131335131360_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd131331131355_))))
                                                     (let ((_tl131333131365_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e131335131360_)))
                                                           (_hd131334131363_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e131335131360_))))
                                                       (___kont133679133680_
                                                        _tl131330131357_
                                                        _tl131333131365_
                                                        _hd131334131363_)))
                                                   (___kont133681133682_))))
                                           (___kont133681133682_)))))
                                 (let ((__tmp135087
                                        (lambda (_g131414131417_
                                                 _g131415131419_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g131414131417_
                                                  _g131415131419_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135087 '() _L131119_))))
                           (__tmp135088
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses131422_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp135088 _stx130241_))))
                 (_specializer-impl131426_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl131424_
                     _struct-check-all131295_
                     _empty130340_)))
                 (_unchecked-specializer-impl131428_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?130343_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl131424_
                         _empty130340_
                         _struct-check-all131295_))
                      '#f))
                 (_specializer-impl131430_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl130247_
                     _$t131225_
                     _methods-bind131248_
                     _slots-bind131271_
                     _class-check-bind131293_
                     _struct-check-bind131317_
                     _specializer-impl131426_
                     _lifted-specializer-id131223_
                     _unchecked-specializer-impl131428_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp135090
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L130316_)))
                                                          (__tmp135089
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id131216_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp135090
                                                       '" => "
                                                       __tmp135089))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def130248_
                                                       _L130316_
                                                       _specializer-id131216_
                                                       _specializer-impl131430_
                                                       _lifted-specializer-id131223_
                                                       _unchecked-specializer-impl131428_)))))
                                            _clause131077131116_))))))
                           (let ()
                             (declare (not safe))
                             (_loop131072131100_ _target131069131095_ '())))
                         (let ()
                           (declare (not safe))
                           (_g131063131082_ _g131064131085_))))))
               (let ()
                 (declare (not safe))
                 (_g131063131082_ _g131064131085_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g131063131082_
                                                  _g131064131085_))))))
                                   (declare (not safe))
                                   (_g131062131433_ _L130315_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L130315_))
                                     (let* ((_g131436131466_
                                             (lambda (_g131437131463_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g131437131463_))))
                                            (_g131435132154_
                                             (lambda (_g131437131469_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g131437131469_))
                                                   (let ((_e131443131471_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g131437131469_))))
                                                     (let ((_hd131442131474_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e131443131471_)))
                                                           (_tl131441131476_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e131443131471_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl131441131476_))
                                                           (let ((_e131446131479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl131441131476_))))
                     (let ((_hd131445131482_
                            (let ()
                              (declare (not safe))
                              (##car _e131446131479_)))
                           (_tl131444131484_
                            (let ()
                              (declare (not safe))
                              (##cdr _e131446131479_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd131445131482_))
                           (let ((_e131449131487_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd131445131482_))))
                             (let ((_hd131448131490_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e131449131487_)))
                                   (_tl131447131492_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e131449131487_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd131448131490_))
                                   (let ((_e131452131495_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd131448131490_))))
                                     (let ((_hd131451131498_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e131452131495_)))
                                           (_tl131450131500_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e131452131495_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd131451131498_))
                                           (let ((_e131455131503_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd131451131498_))))
                                             (let ((_hd131454131506_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e131455131503_)))
                                                   (_tl131453131508_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e131455131503_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl131453131508_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl131450131500_))
                                                       (let ((_e131458131511_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl131450131500_))))
                 (let ((_hd131457131514_
                        (let () (declare (not safe)) (##car _e131458131511_)))
                       (_tl131456131516_
                        (let () (declare (not safe)) (##cdr _e131458131511_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl131456131516_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl131447131492_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl131444131484_))
                               (let ((_e131461131519_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl131444131484_))))
                                 (let ((_hd131460131522_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e131461131519_)))
                                       (_tl131459131524_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e131461131519_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl131459131524_))
                                       ((lambda (_L131527_ _L131528_ _L131529_)
                                          (let* ((_g131552131570_
                                                  (lambda (_g131553131567_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g131553131567_))))
                                                 (_g131551131621_
                                                  (lambda (_g131553131573_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g131553131573_))
                                                        (let ((_e131559131575_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g131553131573_))))
                  (let ((_hd131558131578_
                         (let () (declare (not safe)) (##car _e131559131575_)))
                        (_tl131557131580_
                         (let ()
                           (declare (not safe))
                           (##cdr _e131559131575_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl131557131580_))
                        (let ((_e131562131583_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl131557131580_))))
                          (let ((_hd131561131586_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e131562131583_)))
                                (_tl131560131588_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e131562131583_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd131561131586_))
                                (let ((_e131565131591_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd131561131586_))))
                                  (let ((_hd131564131594_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131565131591_)))
                                        (_tl131563131596_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131565131591_))))
                                    ((lambda (_L131599_ _L131600_ _L131601_)
                                       (for-each
                                        (lambda (_g131616131618_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g131616131618_
                                             _L131601_
                                             _method-calls130335_
                                             _slot-refs130336_
                                             _class-type-check130337_
                                             _struct-type-check130338_
                                             _struct-type-assert130339_)))
                                        _L131599_))
                                     _tl131560131588_
                                     _tl131563131596_
                                     _hd131564131594_)))
                                (let ()
                                  (declare (not safe))
                                  (_g131552131570_ _g131553131573_)))))
                        (let ()
                          (declare (not safe))
                          (_g131552131570_ _g131553131573_)))))
                (let ()
                  (declare (not safe))
                  (_g131552131570_ _g131553131573_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g131551131621_ _L131528_))
                                          (let* ((_g131624131643_
                                                  (lambda (_g131625131640_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g131625131640_))))
                                                 (_g131623131762_
                                                  (lambda (_g131625131646_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g131625131646_))
                                                        (let ((_e131629131648_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g131625131646_))))
                  (let ((_hd131628131651_
                         (let () (declare (not safe)) (##car _e131629131648_)))
                        (_tl131627131653_
                         (let ()
                           (declare (not safe))
                           (##cdr _e131629131648_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl131627131653_))
                        (let ((_g135031_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl131627131653_
                                  '0))))
                          (begin
                            (let ((_g135032_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g135031_)
                                         (##vector-length _g135031_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g135032_ 2)))
                                  (error "Context expects 2 values"
                                         _g135032_)))
                            (let ((_target131630131656_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135031_ 0)))
                                  (_tl131632131658_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135031_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl131632131658_))
                                  (letrec ((_loop131633131661_
                                            (lambda (_hd131631131664_
                                                     _clause131637131666_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd131631131664_))
                                                  (let ((_e131634131669_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd131631131664_))))
                                                    (let ((_lp-hd131635131672_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e131634131669_)))
                                                          (_lp-tl131636131674_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e131634131669_))))
                                                      (let ((__tmp135034
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd131635131672_ _clause131637131666_))))
                (declare (not safe))
                (_loop131633131661_ _lp-tl131636131674_ __tmp135034))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause131638131677_
                                                         (reverse _clause131637131666_)))
                                                    ((lambda (_L131680_)
                                                       (for-each
                                                        (lambda (_clause131693_)
                                                          (let* ((_g131695131710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g131696131707_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g131696131707_))))
                         (_g131694131752_
                          (lambda (_g131696131713_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g131696131713_))
                                (let ((_e131702131715_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g131696131713_))))
                                  (let ((_hd131701131718_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131702131715_)))
                                        (_tl131700131720_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131702131715_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd131701131718_))
                                        (let ((_e131705131723_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd131701131718_))))
                                          (let ((_hd131704131726_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e131705131723_)))
                                                (_tl131703131728_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e131705131723_))))
                                            ((lambda (_L131731_
                                                      _L131732_
                                                      _L131733_)
                                               (for-each
                                                (lambda (_g131747131749_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g131747131749_
                                                     _L131733_
                                                     _method-calls130335_
                                                     _slot-refs130336_
                                                     _class-type-check130337_
                                                     _struct-type-check130338_
                                                     _struct-type-assert130339_)))
                                                _L131731_))
                                             _tl131700131720_
                                             _tl131703131728_
                                             _hd131704131726_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g131695131710_ _g131696131713_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g131695131710_ _g131696131713_))))))
                    (declare (not safe))
                    (_g131694131752_ _clause131693_)))
                (let ((__tmp135033
                       (lambda (_g131754131757_ _g131755131759_)
                         (let ()
                           (declare (not safe))
                           (cons _g131754131757_ _g131755131759_)))))
                  (declare (not safe))
                  (foldr1 __tmp135033 '() _L131680_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause131638131677_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop131633131661_
                                       _target131630131656_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g131624131643_ _g131625131646_))))))
                        (let ()
                          (declare (not safe))
                          (_g131624131643_ _g131625131646_)))))
                (let ()
                  (declare (not safe))
                  (_g131624131643_ _g131625131646_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g131623131762_ _L131527_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?130342_))
                                              _stx130241_
                                              (let* ((_specializer-id131771_
                                                      (let* ((_id131765_
                                                              (let ((__tmp135035
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L130316_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp135035 '"::specialize")))
                     (_specializer-id131768_
                      (let ((__tmp135036
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx130241_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id131765_ __tmp135036))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id131768_))
                _specializer-id131768_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id131778_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?130344_))
                                                          (let* ((_id131773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135037
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L130316_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp135037
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id131775_
                          (let ((__tmp135038
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx130241_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id131773_ __tmp135038))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id131775_))
                    _lifted-specializer-id131775_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t131780_
                                                      (let ((__tmp135039
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp135039)))
                                                     (_methods131782_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls130335_)))
                                                     (_$methods131786_
                                                      (map (lambda (_id131784_)
                                                             (let ((__tmp135040
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id131784_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135040)))
                   _methods131782_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135041_
                                                      (for-each
                                                       (lambda (_g131787131790_
                                                                _g131788131792_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls130335_
                                                            _g131787131790_
                                                            _g131788131792_)))
                                                       _methods131782_
                                                       _$methods131786_))
                                                     (_methods-bind131803_
                                                      (map (lambda (_g131795131798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g131796131800_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind130243_
                        _$t131780_
                        _g131795131798_
                        _g131796131800_)))
                   _methods131782_
                   _$methods131786_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots131805_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs130336_)))
                                                     (_$slots131809_
                                                      (map (lambda (_id131807_)
                                                             (let ((__tmp135042
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id131807_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135042)))
                   _slots131805_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135043_
                                                      (for-each
                                                       (lambda (_g131810131813_
                                                                _g131811131815_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs130336_
                                                            _g131810131813_
                                                            _g131811131815_)))
                                                       _slots131805_
                                                       _$slots131809_))
                                                     (_slots-bind131826_
                                                      (map (lambda (_g131818131821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g131819131823_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind130244_
                        _$t131780_
                        _g131818131821_
                        _g131819131823_)))
                   _slots131805_
                   _$slots131809_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check131828_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check130337_)))
                                                     (_$class-check131831_
                                                      (map (lambda (_g135044_)
                                                             (let ((__tmp135045
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp135045)))
                   _class-check131828_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135046_
                                                      (for-each
                                                       (lambda (_g131832131835_
                                                                _g131833131837_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _class-type-check130337_
                                                            _g131832131835_
                                                            _g131833131837_)))
                                                       _class-check131828_
                                                       _$class-check131831_))
                                                     (_class-check-bind131848_
                                                      (map (lambda (_g131840131843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g131841131845_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind130245_
                        _$t131780_
                        _g131840131843_
                        _g131841131845_)))
                   _class-check131828_
                   _$class-check131831_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all131850_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check130338_
                                                         _struct-type-assert130339_)))
                                                     (_struct-check131852_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all131850_)))
                                                     (_$struct-check131855_
                                                      (map (lambda (_g135047_)
                                                             (let ((__tmp135048
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp135048)))
                   _struct-check131852_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135049_
                                                      (for-each
                                                       (lambda (_g131856131859_
                                                                _g131857131861_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _struct-check-all131850_
                                                            _g131856131859_
                                                            _g131857131861_)))
                                                       _struct-check131852_
                                                       _$struct-check131855_))
                                                     (_struct-check-bind131872_
                                                      (map (lambda (_g131864131867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g131865131869_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind130246_
                        _$t131780_
                        _g131864131867_
                        _g131865131869_)))
                   _struct-check131852_
                   _$struct-check131855_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr131971_
                                                      (lambda (_struct-type-check1131874_
                                                               _struct-type-check2131875_)
                                                        (let* ((_g131877131895_
                                                                (lambda (_g131878131892_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g131878131892_))))
                       (_g131876131968_
                        (lambda (_g131878131898_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g131878131898_))
                              (let ((_e131884131900_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g131878131898_))))
                                (let ((_hd131883131903_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e131884131900_)))
                                      (_tl131882131905_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e131884131900_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl131882131905_))
                                      (let ((_e131887131908_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl131882131905_))))
                                        (let ((_hd131886131911_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e131887131908_)))
                                              (_tl131885131913_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e131887131908_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd131886131911_))
                                              (let ((_e131890131916_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd131886131911_))))
                                                (let ((_hd131889131919_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e131890131916_)))
                                                      (_tl131888131921_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e131890131916_))))
                                                  ((lambda (_L131924_
                                                            _L131925_
                                                            _L131926_)
                                                     (let* ((_body131966_
                                                             (map (lambda (_g131961131963_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g131961131963_
                               _L131926_
                               _$t131780_
                               _method-calls130335_
                               _slot-refs130336_
                               _class-type-check130337_
                               _struct-type-check1131874_
                               _struct-type-check2131875_)))
                          _L131924_))
                    (__tmp135050
                     (let ((__tmp135051
                            (let ((__tmp135052
                                   (let ()
                                     (declare (not safe))
                                     (cons _L131926_ _L131925_))))
                              (declare (not safe))
                              (cons __tmp135052 _body131966_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp135051))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp135050 _L131528_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl131885131913_
                                                   _tl131888131921_
                                                   _hd131889131919_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g131877131895_
                                                 _g131878131898_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g131877131895_ _g131878131898_)))))
                              (let ()
                                (declare (not safe))
                                (_g131877131895_ _g131878131898_))))))
                  (declare (not safe))
                  (_g131876131968_ _L131528_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr132132_
                                                      (lambda (_struct-type-check1131973_
                                                               _struct-type-check2131974_)
                                                        (let* ((_g131976131995_
                                                                (lambda (_g131977131992_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g131977131992_))))
                       (_g131975132129_
                        (lambda (_g131977131998_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g131977131998_))
                              (let ((_e131981132000_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g131977131998_))))
                                (let ((_hd131980132003_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e131981132000_)))
                                      (_tl131979132005_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e131981132000_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl131979132005_))
                                      (let ((_g135053_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl131979132005_
                                                '0))))
                                        (begin
                                          (let ((_g135054_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g135053_)
                                                       (##vector-length
                                                        _g135053_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g135054_ 2)))
                                                (error "Context expects 2 values"
                                                       _g135054_)))
                                          (let ((_target131982132008_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g135053_ 0)))
                                                (_tl131984132010_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g135053_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl131984132010_))
                                                (letrec ((_loop131985132013_
                                                          (lambda (_hd131983132016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause131989132018_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd131983132016_))
                        (let ((_e131986132021_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd131983132016_))))
                          (let ((_lp-hd131987132024_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e131986132021_)))
                                (_lp-tl131988132026_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e131986132021_))))
                            (let ((__tmp135058
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd131987132024_
                                           _clause131989132018_))))
                              (declare (not safe))
                              (_loop131985132013_
                               _lp-tl131988132026_
                               __tmp135058))))
                        (let ((_clause131990132029_
                               (reverse _clause131989132018_)))
                          ((lambda (_L132032_)
                             (let* ((_clauses132127_
                                     (map (lambda (_clause132047_)
                                            (let* ((___stx133697133698_
                                                    _clause132047_)
                                                   (_g132050132065_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx133697133698_)))))
                                              (let ((___kont133699133700_
                                                     (lambda (_L132093_
                                                              _L132094_
                                                              _L132095_)
                                                       (let* ((_body132115_
                                                               (map (lambda (_g132110132112_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g132110132112_
                                 _L132095_
                                 _$t131780_
                                 _method-calls130335_
                                 _slot-refs130336_
                                 _class-type-check130337_
                                 _struct-type-check1131973_
                                 _struct-type-check2131974_)))
                            _L132093_))
                      (__tmp135055
                       (let ()
                         (declare (not safe))
                         (cons _L132095_ _L132094_))))
                 (declare (not safe))
                 (cons __tmp135055 _body132115_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont133701133702_
                                                     (lambda ()
                                                       _clause132047_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx133697133698_))
                                                    (let ((_e132057132077_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx133697133698_))))
                                                      (let ((_tl132055132082_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e132057132077_)))
                    (_hd132056132080_
                     (let () (declare (not safe)) (##car _e132057132077_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd132056132080_))
                    (let ((_e132060132085_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd132056132080_))))
                      (let ((_tl132058132090_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132060132085_)))
                            (_hd132059132088_
                             (let ()
                               (declare (not safe))
                               (##car _e132060132085_))))
                        (___kont133699133700_
                         _tl132055132082_
                         _tl132058132090_
                         _hd132059132088_)))
                    (___kont133701133702_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont133701133702_)))))
                                          (let ((__tmp135056
                                                 (lambda (_g132119132122_
                                                          _g132120132124_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g132119132122_
                                                           _g132120132124_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp135056
                                                    '()
                                                    _L132032_))))
                                    (__tmp135057
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses132127_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp135057 _L131527_)))
                           _clause131990132029_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop131985132013_
                                                     _target131982132008_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g131976131995_
                                                   _g131977131998_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g131976131995_ _g131977131998_)))))
                              (let ()
                                (declare (not safe))
                                (_g131976131995_ _g131977131998_))))))
                  (declare (not safe))
                  (_g131975132129_ _L131527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl132137_
                                                      (lambda (_specializer-lambda-expr132134_
                                                               _specializer-case-lambda-expr132135_)
                                                        (let ((__tmp135059
                                                               (let ((__tmp135060
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp135062
                                     (let ((__tmp135063
                                            (let ((__tmp135065
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L131529_ '())))
                                                  (__tmp135064
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr132134_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp135065 __tmp135064))))
                                       (declare (not safe))
                                       (cons __tmp135063 '())))
                                    (__tmp135061
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr132135_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp135062 __tmp135061))))
                         (declare (not safe))
                         (cons '%#let-values __tmp135060))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp135059 _stx130241_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr132139_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr131971_
                                                         _struct-check-all131850_
                                                         _empty130340_)))
                                                     (_specializer-case-lambda-expr132141_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr132132_
                                                         _struct-check-all131850_
                                                         _empty130340_)))
                                                     (_specializer-impl132143_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl132137_
                                                         _specializer-lambda-expr132139_
                                                         _specializer-case-lambda-expr132141_)))
                                                     (_unchecked-specializer-lambda-expr132145_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?130343_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr131971_
                                                             _empty130340_
                                                             _struct-check-all131850_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr132147_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?130343_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr132132_
                                                             _empty130340_
                                                             _struct-check-all131850_))
                                                          '#f))
                                                     (_unchecked-specializer-impl132149_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?130343_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl132137_
                                                             _unchecked-specializer-lambda-expr132145_
                                                             _unchecked-specializer-case-lambda-expr132147_))
                                                          '#f))
                                                     (_specializer-impl132151_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl130247_
                                                         _$t131780_
                                                         _methods-bind131803_
                                                         _slots-bind131826_
                                                         _class-check-bind131848_
                                                         _struct-check-bind131872_
                                                         _specializer-impl132143_
                                                         _lifted-specializer-id131778_
                                                         _unchecked-specializer-impl132149_))))
                                                (let ((__tmp135067
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L130316_)))
                                                      (__tmp135066
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id131771_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp135067
                                                   '" => "
                                                   __tmp135066))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def130248_
                                                   _L130316_
                                                   _specializer-id131771_
                                                   _specializer-impl132151_
                                                   _lifted-specializer-id131778_
                                                   _unchecked-specializer-impl132149_)))))
                                        _hd131460131522_
                                        _hd131457131514_
                                        _hd131454131506_)
                                       (let ()
                                         (declare (not safe))
                                         (_g131436131466_ _g131437131469_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g131436131466_ _g131437131469_)))
                           (let ()
                             (declare (not safe))
                             (_g131436131466_ _g131437131469_)))
                       (let ()
                         (declare (not safe))
                         (_g131436131466_ _g131437131469_)))))
               (let () (declare (not safe)) (_g131436131466_ _g131437131469_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g131436131466_
                                                      _g131437131469_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g131436131466_
                                              _g131437131469_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g131436131466_ _g131437131469_)))))
                           (let ()
                             (declare (not safe))
                             (_g131436131466_ _g131437131469_)))))
                   (let ()
                     (declare (not safe))
                     (_g131436131466_ _g131437131469_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g131436131466_
                                                      _g131437131469_))))))
                                       (declare (not safe))
                                       (_g131435132154_ _L130315_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L130315_))
                                         (let* ((_g132157132210_
                                                 (lambda (_g132158132207_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g132158132207_))))
                                                (_g132156133482_
                                                 (lambda (_g132158132213_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g132158132213_))
                                                       (let ((_e132166132215_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g132158132213_))))
                 (let ((_hd132165132218_
                        (let () (declare (not safe)) (##car _e132166132215_)))
                       (_tl132164132220_
                        (let () (declare (not safe)) (##cdr _e132166132215_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd132165132218_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd132165132218_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl132164132220_))
                               (let ((_e132169132223_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl132164132220_))))
                                 (let ((_hd132168132226_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132169132223_)))
                                       (_tl132167132228_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132169132223_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd132168132226_))
                                       (let ((_e132172132231_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd132168132226_))))
                                         (let ((_hd132171132234_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e132172132231_)))
                                               (_tl132170132236_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e132172132231_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd132171132234_))
                                               (let ((_e132175132239_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd132171132234_))))
                                                 (let ((_hd132174132242_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132175132239_)))
                                                       (_tl132173132244_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132175132239_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd132174132242_))
                                                       (let ((_e132178132247_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd132174132242_))))
                 (let ((_hd132177132250_
                        (let () (declare (not safe)) (##car _e132178132247_)))
                       (_tl132176132252_
                        (let () (declare (not safe)) (##cdr _e132178132247_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl132176132252_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl132173132244_))
                           (let ((_e132181132255_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl132173132244_))))
                             (let ((_hd132180132258_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132181132255_)))
                                   (_tl132179132260_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132181132255_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132180132258_))
                                   (let ((_e132184132263_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132180132258_))))
                                     (let ((_hd132183132266_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132184132263_)))
                                           (_tl132182132268_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132184132263_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd132183132266_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd132183132266_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl132182132268_))
                                                   (let ((_e132187132271_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl132182132268_))))
                                                     (let ((_hd132186132274_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132187132271_)))
                                                           (_tl132185132276_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132187132271_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd132186132274_))
                                                           (let ((_e132190132279_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd132186132274_))))
                     (let ((_hd132189132282_
                            (let ()
                              (declare (not safe))
                              (##car _e132190132279_)))
                           (_tl132188132284_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132190132279_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd132189132282_))
                           (let ((_e132193132287_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd132189132282_))))
                             (let ((_hd132192132290_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132193132287_)))
                                   (_tl132191132292_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132193132287_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132192132290_))
                                   (let ((_e132196132295_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132192132290_))))
                                     (let ((_hd132195132298_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132196132295_)))
                                           (_tl132194132300_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132196132295_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl132194132300_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl132191132292_))
                                               (let ((_e132199132303_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl132191132292_))))
                                                 (let ((_hd132198132306_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132199132303_)))
                                                       (_tl132197132308_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132199132303_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl132197132308_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl132188132284_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl132185132276_))
                       (let ((_e132202132311_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl132185132276_))))
                         (let ((_hd132201132314_
                                (let ()
                                  (declare (not safe))
                                  (##car _e132202132311_)))
                               (_tl132200132316_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e132202132311_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl132200132316_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl132179132260_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl132170132236_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl132167132228_))
                                           (let ((_e132205132319_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl132167132228_))))
                                             (let ((_hd132204132322_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e132205132319_)))
                                                   (_tl132203132324_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e132205132319_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl132203132324_))
                                                   ((lambda (_L132327_
                                                             _L132328_
                                                             _L132329_
                                                             _L132330_
                                                             _L132331_)
                                                      (let* ((_g132370132432_
                                                              (lambda (_g132371132429_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132371132429_))))
                     (_g132369133479_
                      (lambda (_g132371132435_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132371132435_))
                            (let ((_e132379132437_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132371132435_))))
                              (let ((_hd132378132440_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132379132437_)))
                                    (_tl132377132442_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132379132437_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd132378132440_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd132378132440_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl132377132442_))
                                            (let ((_e132382132445_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl132377132442_))))
                                              (let ((_hd132381132448_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132382132445_)))
                                                    (_tl132380132450_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132382132445_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl132380132450_))
                                                    (let ((_e132385132453_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl132380132450_))))
                                                      (let ((_hd132384132456_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e132385132453_)))
                    (_tl132383132458_
                     (let () (declare (not safe)) (##cdr _e132385132453_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd132384132456_))
                    (let ((_e132388132461_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd132384132456_))))
                      (let ((_hd132387132464_
                             (let ()
                               (declare (not safe))
                               (##car _e132388132461_)))
                            (_tl132386132466_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132388132461_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd132387132464_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd132387132464_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl132386132466_))
                                    (let ((_e132391132469_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl132386132466_))))
                                      (let ((_hd132390132472_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132391132469_)))
                                            (_tl132389132474_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132391132469_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd132390132472_))
                                            (let ((_e132394132477_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd132390132472_))))
                                              (let ((_hd132393132480_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132394132477_)))
                                                    (_tl132392132482_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132394132477_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd132393132480_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd132393132480_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl132392132482_))
                                                            (let ((_e132397132485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl132392132482_))))
                      (let ((_hd132396132488_
                             (let ()
                               (declare (not safe))
                               (##car _e132397132485_)))
                            (_tl132395132490_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132397132485_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl132395132490_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl132389132474_))
                                (let ((_e132400132493_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl132389132474_))))
                                  (let ((_hd132399132496_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132400132493_)))
                                        (_tl132398132498_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132400132493_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd132399132496_))
                                        (let ((_e132403132501_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd132399132496_))))
                                          (let ((_hd132402132504_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e132403132501_)))
                                                (_tl132401132506_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e132403132501_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd132402132504_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd132402132504_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl132401132506_))
                                                        (let ((_e132406132509_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl132401132506_))))
                  (let ((_hd132405132512_
                         (let () (declare (not safe)) (##car _e132406132509_)))
                        (_tl132404132514_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132406132509_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl132404132514_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl132398132498_))
                            (let ((_e132409132517_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl132398132498_))))
                              (let ((_hd132408132520_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132409132517_)))
                                    (_tl132407132522_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132409132517_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd132408132520_))
                                    (let ((_e132412132525_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd132408132520_))))
                                      (let ((_hd132411132528_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132412132525_)))
                                            (_tl132410132530_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132412132525_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd132411132528_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd132411132528_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl132410132530_))
                                                    (let ((_e132415132533_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl132410132530_))))
                                                      (let ((_hd132414132536_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e132415132533_)))
                    (_tl132413132538_
                     (let () (declare (not safe)) (##cdr _e132415132533_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl132413132538_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl132407132522_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl132407132522_))
                                  '1)
                            (let ((_g134943_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl132407132522_
                                      '1))))
                              (begin
                                (let ((_g134944_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g134943_)
                                             (##vector-length _g134943_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g134944_ 2)))
                                      (error "Context expects 2 values"
                                             _g134944_)))
                                (let ((_target132416132541_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134943_ 0)))
                                      (_tl132418132543_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134943_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl132418132543_))
                                      (let ((_e132427132546_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl132418132543_))))
                                        (let ((_hd132426132549_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e132427132546_)))
                                              (_tl132425132551_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e132427132546_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl132425132551_))
                                              (letrec ((_loop132419132554_
                                                        (lambda (_hd132417132557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref132423132559_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd132417132557_))
                      (let ((_e132420132562_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd132417132557_))))
                        (let ((_lp-hd132421132565_
                               (let ()
                                 (declare (not safe))
                                 (##car _e132420132562_)))
                              (_lp-tl132422132567_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e132420132562_))))
                          (let ((__tmp135030
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd132421132565_
                                         _kw-ref132423132559_))))
                            (declare (not safe))
                            (_loop132419132554_
                             _lp-tl132422132567_
                             __tmp135030))))
                      (let ((_kw-ref132424132570_
                             (reverse _kw-ref132423132559_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl132383132458_))
                            ((lambda (_L132573_
                                      _L132574_
                                      _L132575_
                                      _L132576_
                                      _L132577_)
                               (let* ((_kw-count132628_
                                       (length (let ((__tmp134945
                                                      (lambda (_g132620132623_
                                                               _g132621132625_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g132620132623_
                                                                _g132621132625_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp134945
                                                         '()
                                                         _L132574_))))
                                      (_self-index132630_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count132628_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L132329_))
                                     (let* ((_g132633132647_
                                             (lambda (_g132634132644_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g132634132644_))))
                                            (_g132632132818_
                                             (lambda (_g132634132650_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g132634132650_))
                                                   (let ((_e132639132652_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g132634132650_))))
                                                     (let ((_hd132638132655_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132639132652_)))
                                                           (_tl132637132657_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132639132652_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132637132657_))
                                                           (let ((_e132642132660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132637132657_))))
                     (let ((_hd132641132663_
                            (let ()
                              (declare (not safe))
                              (##car _e132642132660_)))
                           (_tl132640132665_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132642132660_))))
                       ((lambda (_L132668_ _L132669_)
                          (let ((_self132685_
                                 (list-ref _L132669_ _self-index132630_)))
                            (for-each
                             (lambda (_g132686132688_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g132686132688_
                                  _self132685_
                                  _method-calls130335_
                                  _slot-refs130336_
                                  _class-type-check130337_
                                  _struct-type-check130338_
                                  _struct-type-assert130339_)))
                             _L132668_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?130342_))
                                _stx130241_
                                (let* ((_specializer-id132697_
                                        (let* ((_id132691_
                                                (let ((__tmp134996
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L130316_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp134996
                                                   '"::specialize")))
                                               (_specializer-id132694_
                                                (let ((__tmp134997
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx130241_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id132691_
                                                   __tmp134997))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id132694_))
                                          _specializer-id132694_))
                                       (_lifted-specializer-id132704_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?130344_))
                                            (let* ((_id132699_
                                                    (let ((__tmp134998
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L130316_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp134998
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id132701_
                                                    (let ((__tmp134999
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx130241_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id132699_
                                                       __tmp134999))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id132701_))
                                              _lifted-specializer-id132701_)
                                            '#f))
                                       (_$t132706_
                                        (let ((__tmp135000 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp135000)))
                                       (_methods132708_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls130335_)))
                                       (_$methods132712_
                                        (map (lambda (_id132710_)
                                               (let ((__tmp135001
                                                      (gensym _id132710_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp135001)))
                                             _methods132708_))
                                       (_g135002_
                                        (for-each
                                         (lambda (_g132713132716_
                                                  _g132714132718_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls130335_
                                              _g132713132716_
                                              _g132714132718_)))
                                         _methods132708_
                                         _$methods132712_))
                                       (_methods-bind132729_
                                        (map (lambda (_g132721132724_
                                                      _g132722132726_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind130243_
                                                  _$t132706_
                                                  _g132721132724_
                                                  _g132722132726_)))
                                             _methods132708_
                                             _$methods132712_))
                                       (_slots132731_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs130336_)))
                                       (_$slots132735_
                                        (map (lambda (_id132733_)
                                               (let ((__tmp135003
                                                      (gensym _id132733_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp135003)))
                                             _slots132731_))
                                       (_g135004_
                                        (for-each
                                         (lambda (_g132736132739_
                                                  _g132737132741_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs130336_
                                              _g132736132739_
                                              _g132737132741_)))
                                         _slots132731_
                                         _$slots132735_))
                                       (_slots-bind132752_
                                        (map (lambda (_g132744132747_
                                                      _g132745132749_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind130244_
                                                  _$t132706_
                                                  _g132744132747_
                                                  _g132745132749_)))
                                             _slots132731_
                                             _$slots132735_))
                                       (_class-check132754_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check130337_)))
                                       (_$class-check132757_
                                        (map (lambda (_g135005_)
                                               (let ((__tmp135006
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp135006)))
                                             _class-check132754_))
                                       (_g135007_
                                        (for-each
                                         (lambda (_g132758132761_
                                                  _g132759132763_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _class-type-check130337_
                                              _g132758132761_
                                              _g132759132763_)))
                                         _class-check132754_
                                         _$class-check132757_))
                                       (_class-check-bind132774_
                                        (map (lambda (_g132766132769_
                                                      _g132767132771_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind130245_
                                                  _$t132706_
                                                  _g132766132769_
                                                  _g132767132771_)))
                                             _class-check132754_
                                             _$class-check132757_))
                                       (_struct-check-all132776_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check130338_
                                           _struct-type-assert130339_)))
                                       (_struct-check132778_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all132776_)))
                                       (_$struct-check132781_
                                        (map (lambda (_g135008_)
                                               (let ((__tmp135009
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp135009)))
                                             _struct-check132778_))
                                       (_g135010_
                                        (for-each
                                         (lambda (_g132782132785_
                                                  _g132783132787_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _struct-check-all132776_
                                              _g132782132785_
                                              _g132783132787_)))
                                         _struct-check132778_
                                         _$struct-check132781_))
                                       (_struct-check-bind132798_
                                        (map (lambda (_g132790132793_
                                                      _g132791132795_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind130246_
                                                  _$t132706_
                                                  _g132790132793_
                                                  _g132791132795_)))
                                             _struct-check132778_
                                             _$struct-check132781_))
                                       (_make-specializer-impl132809_
                                        (lambda (_struct-type-check1132800_
                                                 _struct-type-check2132801_)
                                          (let* ((_specializer-body132807_
                                                  (map (lambda (_g132802132804_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g132802132804_
                                                            _self132685_
                                                            _$t132706_
                                                            _method-calls130335_
                                                            _slot-refs130336_
                                                            _class-type-check130337_
                                                            _struct-type-check1132800_
                                                            _struct-type-check2132801_)))
                                                       _L132668_))
                                                 (__tmp135011
                                                  (let ((__tmp135012
                                                         (let ((__tmp135014
                                                                (let ((__tmp135015
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135027
                                      (let ()
                                        (declare (not safe))
                                        (cons _L132331_ '())))
                                     (__tmp135016
                                      (let ((__tmp135017
                                             (let ((__tmp135018
                                                    (let ((__tmp135020
                                                           (let ((__tmp135021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135026
                                 (let ()
                                   (declare (not safe))
                                   (cons _L132330_ '())))
                                (__tmp135022
                                 (let ((__tmp135023
                                        (let ((__tmp135024
                                               (let ((__tmp135025
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L132669_
                                                              _specializer-body132807_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp135025))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp135024
                                           _L132329_))))
                                   (declare (not safe))
                                   (cons __tmp135023 '()))))
                            (declare (not safe))
                            (cons __tmp135026 __tmp135022))))
                     (declare (not safe))
                     (cons __tmp135021 '())))
                  (__tmp135019
                   (let () (declare (not safe)) (cons _L132328_ '()))))
              (declare (not safe))
              (cons __tmp135020 __tmp135019))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp135018))))
                                        (declare (not safe))
                                        (cons __tmp135017 '()))))
                                 (declare (not safe))
                                 (cons __tmp135027 __tmp135016))))
                          (declare (not safe))
                          (cons __tmp135015 '())))
                       (__tmp135013
                        (let () (declare (not safe)) (cons _L132327_ '()))))
                   (declare (not safe))
                   (cons __tmp135014 __tmp135013))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp135012))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp135011
                                             _stx130241_))))
                                       (_specializer-impl132811_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl132809_
                                           _struct-check-all132776_
                                           _empty130340_)))
                                       (_unchecked-specializer-impl132813_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?130343_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl132809_
                                               _empty130340_
                                               _struct-check-all132776_))
                                            '#f))
                                       (_specializer-impl132815_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl130247_
                                           _$t132706_
                                           _methods-bind132729_
                                           _slots-bind132752_
                                           _class-check-bind132774_
                                           _struct-check-bind132798_
                                           _specializer-impl132811_
                                           _lifted-specializer-id132704_
                                           _unchecked-specializer-impl132813_))))
                                  (let ((__tmp135029
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L130316_)))
                                        (__tmp135028
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id132697_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp135029
                                     '" => "
                                     __tmp135028))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def130248_
                                     _L130316_
                                     _specializer-id132697_
                                     _specializer-impl132815_
                                     _lifted-specializer-id132704_
                                     _unchecked-specializer-impl132813_))))))
                        _tl132640132665_
                        _hd132641132663_)))
                   (let ()
                     (declare (not safe))
                     (_g132633132647_ _g132634132650_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132633132647_
                                                      _g132634132650_))))))
                                       (declare (not safe))
                                       (_g132632132818_ _L132329_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L132329_))
                                         (let* ((_g132821132851_
                                                 (lambda (_g132822132848_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g132822132848_))))
                                                (_g132820133476_
                                                 (lambda (_g132822132854_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g132822132854_))
                                                       (let ((_e132828132856_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g132822132854_))))
                 (let ((_hd132827132859_
                        (let () (declare (not safe)) (##car _e132828132856_)))
                       (_tl132826132861_
                        (let () (declare (not safe)) (##cdr _e132828132856_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl132826132861_))
                       (let ((_e132831132864_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl132826132861_))))
                         (let ((_hd132830132867_
                                (let ()
                                  (declare (not safe))
                                  (##car _e132831132864_)))
                               (_tl132829132869_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e132831132864_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd132830132867_))
                               (let ((_e132834132872_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd132830132867_))))
                                 (let ((_hd132833132875_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132834132872_)))
                                       (_tl132832132877_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132834132872_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd132833132875_))
                                       (let ((_e132837132880_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd132833132875_))))
                                         (let ((_hd132836132883_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e132837132880_)))
                                               (_tl132835132885_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e132837132880_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd132836132883_))
                                               (let ((_e132840132888_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd132836132883_))))
                                                 (let ((_hd132839132891_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132840132888_)))
                                                       (_tl132838132893_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132840132888_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl132838132893_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132835132885_))
                                                           (let ((_e132843132896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132835132885_))))
                     (let ((_hd132842132899_
                            (let ()
                              (declare (not safe))
                              (##car _e132843132896_)))
                           (_tl132841132901_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132843132896_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl132841132901_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl132832132877_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl132829132869_))
                                   (let ((_e132846132904_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl132829132869_))))
                                     (let ((_hd132845132907_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132846132904_)))
                                           (_tl132844132909_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132846132904_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl132844132909_))
                                           ((lambda (_L132912_
                                                     _L132913_
                                                     _L132914_)
                                              (let* ((_g132937132951_
                                                      (lambda (_g132938132948_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g132938132948_))))
                                                     (_g132936132992_
                                                      (lambda (_g132938132954_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g132938132954_))
                                                            (let ((_e132943132956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g132938132954_))))
                      (let ((_hd132942132959_
                             (let ()
                               (declare (not safe))
                               (##car _e132943132956_)))
                            (_tl132941132961_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132943132956_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl132941132961_))
                            (let ((_e132946132964_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl132941132961_))))
                              (let ((_hd132945132967_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132946132964_)))
                                    (_tl132944132969_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132946132964_))))
                                ((lambda (_L132972_ _L132973_)
                                   (let ((_self132986_
                                          (list-ref
                                           _L132973_
                                           _self-index132630_)))
                                     (for-each
                                      (lambda (_g132987132989_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g132987132989_
                                           _self132986_
                                           _method-calls130335_
                                           _slot-refs130336_
                                           _class-type-check130337_
                                           _struct-type-check130338_
                                           _struct-type-assert130339_)))
                                      _L132972_)))
                                 _tl132944132969_
                                 _hd132945132967_)))
                            (let ()
                              (declare (not safe))
                              (_g132937132951_ _g132938132954_)))))
                    (let ()
                      (declare (not safe))
                      (_g132937132951_ _g132938132954_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g132936132992_ _L132913_))
                                              (let* ((_g132995133014_
                                                      (lambda (_g132996133011_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g132996133011_))))
                                                     (_g132994133119_
                                                      (lambda (_g132996133017_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g132996133017_))
                                                            (let ((_e133000133019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g132996133017_))))
                      (let ((_hd132999133022_
                             (let ()
                               (declare (not safe))
                               (##car _e133000133019_)))
                            (_tl132998133024_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133000133019_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl132998133024_))
                            (let ((_g134946_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl132998133024_
                                      '0))))
                              (begin
                                (let ((_g134947_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g134946_)
                                             (##vector-length _g134946_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g134947_ 2)))
                                      (error "Context expects 2 values"
                                             _g134947_)))
                                (let ((_target133001133027_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134946_ 0)))
                                      (_tl133003133029_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134946_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl133003133029_))
                                      (letrec ((_loop133004133032_
                                                (lambda (_hd133002133035_
                                                         _clause133008133037_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd133002133035_))
                                                      (let ((_e133005133040_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd133002133035_))))
                (let ((_lp-hd133006133043_
                       (let () (declare (not safe)) (##car _e133005133040_)))
                      (_lp-tl133007133045_
                       (let () (declare (not safe)) (##cdr _e133005133040_))))
                  (let ((__tmp134949
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd133006133043_ _clause133008133037_))))
                    (declare (not safe))
                    (_loop133004133032_ _lp-tl133007133045_ __tmp134949))))
              (let ((_clause133009133048_ (reverse _clause133008133037_)))
                ((lambda (_L133051_)
                   (for-each
                    (lambda (_clause133064_)
                      (let* ((_g133066133077_
                              (lambda (_g133067133074_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g133067133074_))))
                             (_g133065133109_
                              (lambda (_g133067133080_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g133067133080_))
                                    (let ((_e133072133082_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g133067133080_))))
                                      (let ((_hd133071133085_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133072133082_)))
                                            (_tl133070133087_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133072133082_))))
                                        ((lambda (_L133090_ _L133091_)
                                           (let ((_self133103_
                                                  (list-ref
                                                   _L133091_
                                                   _self-index132630_)))
                                             (for-each
                                              (lambda (_g133104133106_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g133104133106_
                                                   _self133103_
                                                   _method-calls130335_
                                                   _slot-refs130336_
                                                   _class-type-check130337_
                                                   _struct-type-check130338_
                                                   _struct-type-assert130339_)))
                                              _L133090_)))
                                         _tl133070133087_
                                         _hd133071133085_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g133066133077_ _g133067133080_))))))
                        (declare (not safe))
                        (_g133065133109_ _clause133064_)))
                    (let ((__tmp134948
                           (lambda (_g133111133114_ _g133112133116_)
                             (let ()
                               (declare (not safe))
                               (cons _g133111133114_ _g133112133116_)))))
                      (declare (not safe))
                      (foldr1 __tmp134948 '() _L133051_))))
                 _clause133009133048_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop133004133032_
                                           _target133001133027_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g132995133014_ _g132996133017_))))))
                            (let ()
                              (declare (not safe))
                              (_g132995133014_ _g132996133017_)))))
                    (let ()
                      (declare (not safe))
                      (_g132995133014_ _g132996133017_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g132994133119_ _L132912_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?130342_))
                                                  _stx130241_
                                                  (let* ((_specializer-id133128_
                                                          (let* ((_id133122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134950
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L130316_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp134950 '"::specialize")))
                         (_specializer-id133125_
                          (let ((__tmp134951
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx130241_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id133122_ __tmp134951))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id133125_))
                    _specializer-id133125_))
                 (_lifted-specializer-id133135_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?130344_))
                      (let* ((_id133130_
                              (let ((__tmp134952
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L130316_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp134952
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id133132_
                              (let ((__tmp134953
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx130241_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id133130_
                                 __tmp134953))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id133132_))
                        _lifted-specializer-id133132_)
                      '#f))
                 (_$t133137_
                  (let ((__tmp134954 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp134954)))
                 (_methods133139_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls130335_)))
                 (_$methods133143_
                  (map (lambda (_id133141_)
                         (let ((__tmp134955 (gensym _id133141_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp134955)))
                       _methods133139_))
                 (_g134956_
                  (for-each
                   (lambda (_g133144133147_ _g133145133149_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls130335_
                        _g133144133147_
                        _g133145133149_)))
                   _methods133139_
                   _$methods133143_))
                 (_methods-bind133160_
                  (map (lambda (_g133152133155_ _g133153133157_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind130243_
                            _$t133137_
                            _g133152133155_
                            _g133153133157_)))
                       _methods133139_
                       _$methods133143_))
                 (_slots133162_
                  (let () (declare (not safe)) (hash-keys _slot-refs130336_)))
                 (_$slots133166_
                  (map (lambda (_id133164_)
                         (let ((__tmp134957 (gensym _id133164_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp134957)))
                       _slots133162_))
                 (_g134958_
                  (for-each
                   (lambda (_g133167133170_ _g133168133172_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs130336_
                        _g133167133170_
                        _g133168133172_)))
                   _slots133162_
                   _$slots133166_))
                 (_slots-bind133183_
                  (map (lambda (_g133175133178_ _g133176133180_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind130244_
                            _$t133137_
                            _g133175133178_
                            _g133176133180_)))
                       _slots133162_
                       _$slots133166_))
                 (_class-check133185_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check130337_)))
                 (_$class-check133188_
                  (map (lambda (_g134959_)
                         (let ((__tmp134960 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp134960)))
                       _class-check133185_))
                 (_g134961_
                  (for-each
                   (lambda (_g133189133192_ _g133190133194_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _class-type-check130337_
                        _g133189133192_
                        _g133190133194_)))
                   _class-check133185_
                   _$class-check133188_))
                 (_class-check-bind133205_
                  (map (lambda (_g133197133200_ _g133198133202_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind130245_
                            _$t133137_
                            _g133197133200_
                            _g133198133202_)))
                       _class-check133185_
                       _$class-check133188_))
                 (_struct-check-all133207_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check130338_
                     _struct-type-assert130339_)))
                 (_struct-check133209_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all133207_)))
                 (_$struct-check133212_
                  (map (lambda (_g134962_)
                         (let ((__tmp134963 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp134963)))
                       _struct-check133209_))
                 (_g134964_
                  (for-each
                   (lambda (_g133213133216_ _g133214133218_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _struct-check-all133207_
                        _g133213133216_
                        _g133214133218_)))
                   _struct-check133209_
                   _$struct-check133212_))
                 (_struct-check-bind133229_
                  (map (lambda (_g133221133224_ _g133222133226_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind130246_
                            _$t133137_
                            _g133221133224_
                            _g133222133226_)))
                       _struct-check133209_
                       _$struct-check133212_))
                 (_make-specializer-lambda-expr133315_
                  (lambda (_struct-type-check1133231_
                           _struct-type-check2133232_)
                    (let* ((_g133234133248_
                            (lambda (_g133235133245_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g133235133245_))))
                           (_g133233133312_
                            (lambda (_g133235133251_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g133235133251_))
                                  (let ((_e133240133253_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g133235133251_))))
                                    (let ((_hd133239133256_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e133240133253_)))
                                          (_tl133238133258_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e133240133253_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl133238133258_))
                                          (let ((_e133243133261_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl133238133258_))))
                                            (let ((_hd133242133264_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e133243133261_)))
                                                  (_tl133241133266_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e133243133261_))))
                                              ((lambda (_L133269_ _L133270_)
                                                 (let* ((_self133303_
                                                         (list-ref
                                                          _L133270_
                                                          _self-index132630_))
                                                        (_body133309_
                                                         (map (lambda (_g133304133306_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g133304133306_
                           _self133303_
                           _$t133137_
                           _method-calls130335_
                           _slot-refs130336_
                           _class-type-check130337_
                           _struct-type-check1133231_
                           _struct-type-check2133232_)))
                      _L133269_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp134965
                                                          (let ((__tmp134966
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L133270_ _body133309_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp134966))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp134965
                                                      _L132913_))))
                                               _tl133241133266_
                                               _hd133242133264_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g133234133248_
                                             _g133235133251_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g133234133248_ _g133235133251_))))))
                      (declare (not safe))
                      (_g133233133312_ _L132913_))))
                 (_make-specializer-case-lambda-expr133454_
                  (lambda (_struct-type-check1133317_
                           _struct-type-check2133318_)
                    (let* ((_g133320133339_
                            (lambda (_g133321133336_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g133321133336_))))
                           (_g133319133451_
                            (lambda (_g133321133342_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g133321133342_))
                                  (let ((_e133325133344_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g133321133342_))))
                                    (let ((_hd133324133347_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e133325133344_)))
                                          (_tl133323133349_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e133325133344_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl133323133349_))
                                          (let ((_g134967_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl133323133349_
                                                    '0))))
                                            (begin
                                              (let ((_g134968_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g134967_)
                                                           (##vector-length
                                                            _g134967_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g134968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g134968_)))
                                              (let ((_target133326133352_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g134967_
                                                        0)))
                                                    (_tl133328133354_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g134967_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl133328133354_))
                                                    (letrec ((_loop133329133357_
                                                              (lambda (_hd133327133360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause133333133362_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd133327133360_))
                            (let ((_e133330133365_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd133327133360_))))
                              (let ((_lp-hd133331133368_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133330133365_)))
                                    (_lp-tl133332133370_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133330133365_))))
                                (let ((__tmp134971
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd133331133368_
                                               _clause133333133362_))))
                                  (declare (not safe))
                                  (_loop133329133357_
                                   _lp-tl133332133370_
                                   __tmp134971))))
                            (let ((_clause133334133373_
                                   (reverse _clause133333133362_)))
                              ((lambda (_L133376_)
                                 (let* ((_clauses133449_
                                         (map (lambda (_clause133391_)
                                                (let* ((_g133393133404_
                                                        (lambda (_g133394133401_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g133394133401_))))
                                                       (_g133392133439_
                                                        (lambda (_g133394133407_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g133394133407_))
                      (let ((_e133399133409_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g133394133407_))))
                        (let ((_hd133398133412_
                               (let ()
                                 (declare (not safe))
                                 (##car _e133399133409_)))
                              (_tl133397133414_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e133399133409_))))
                          ((lambda (_L133417_ _L133418_)
                             (let* ((_self133430_
                                     (list-ref _L133418_ _self-index132630_))
                                    (_body133436_
                                     (map (lambda (_g133431133433_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g133431133433_
                                               _self133430_
                                               _$t133137_
                                               _method-calls130335_
                                               _slot-refs130336_
                                               _class-type-check130337_
                                               _struct-type-check1133317_
                                               _struct-type-check2133318_)))
                                          _L133417_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L133418_ _body133436_))))
                           _tl133397133414_
                           _hd133398133412_)))
                      (let ()
                        (declare (not safe))
                        (_g133393133404_ _g133394133407_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g133392133439_
                                                   _clause133391_)))
                                              (let ((__tmp134969
                                                     (lambda (_g133441133444_
                                                              _g133442133446_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g133441133444_
                                                               _g133442133446_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp134969
                                                        '()
                                                        _L133376_))))
                                        (__tmp134970
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses133449_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp134970
                                    _L132912_)))
                               _clause133334133373_))))))
              (let ()
                (declare (not safe))
                (_loop133329133357_ _target133326133352_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133320133339_
                                                       _g133321133342_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g133320133339_
                                             _g133321133342_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g133320133339_ _g133321133342_))))))
                      (declare (not safe))
                      (_g133319133451_ _L132912_))))
                 (_make-specializer-impl133459_
                  (lambda (_specializer-lambda-expr133456_
                           _specializer-case-lambda-expr133457_)
                    (let ((__tmp134972
                           (let ((__tmp134973
                                  (let ((__tmp134975
                                         (let ((__tmp134976
                                                (let ((__tmp134993
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L132331_ '())))
                                                      (__tmp134977
                                                       (let ((__tmp134978
                                                              (let ((__tmp134979
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134981
                                    (let ((__tmp134982
                                           (let ((__tmp134992
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L132330_ '())))
                                                 (__tmp134983
                                                  (let ((__tmp134984
                                                         (let ((__tmp134985
                                                                (let ((__tmp134986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134988
                                      (let ((__tmp134989
                                             (let ((__tmp134991
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L132914_ '())))
                                                   (__tmp134990
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr133456_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp134991
                                                     __tmp134990))))
                                        (declare (not safe))
                                        (cons __tmp134989 '())))
                                     (__tmp134987
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr133457_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp134988 __tmp134987))))
                          (declare (not safe))
                          (cons '%#let-values __tmp134986))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp134985 _stx130241_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134984 '()))))
                                             (declare (not safe))
                                             (cons __tmp134992 __tmp134983))))
                                      (declare (not safe))
                                      (cons __tmp134982 '())))
                                   (__tmp134980
                                    (let ()
                                      (declare (not safe))
                                      (cons _L132328_ '()))))
                               (declare (not safe))
                               (cons __tmp134981 __tmp134980))))
                        (declare (not safe))
                        (cons '%#let-values __tmp134979))))
                 (declare (not safe))
                 (cons __tmp134978 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134993
                                                        __tmp134977))))
                                           (declare (not safe))
                                           (cons __tmp134976 '())))
                                        (__tmp134974
                                         (let ()
                                           (declare (not safe))
                                           (cons _L132327_ '()))))
                                    (declare (not safe))
                                    (cons __tmp134975 __tmp134974))))
                             (declare (not safe))
                             (cons '%#let-values __tmp134973))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134972 _stx130241_))))
                 (_specializer-lambda-expr133461_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr133315_
                     _struct-check-all133207_
                     _empty130340_)))
                 (_specializer-case-lambda-expr133463_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr133454_
                     _struct-check-all133207_
                     _empty130340_)))
                 (_specializer-impl133465_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl133459_
                     _specializer-lambda-expr133461_
                     _specializer-case-lambda-expr133463_)))
                 (_unchecked-specializer-lambda-expr133467_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?130343_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr133315_
                         _empty130340_
                         _struct-check-all133207_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr133469_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?130343_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr133454_
                         _empty130340_
                         _struct-check-all133207_))
                      '#f))
                 (_unchecked-specializer-impl133471_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?130343_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl133459_
                         _unchecked-specializer-lambda-expr133467_
                         _unchecked-specializer-case-lambda-expr133469_))
                      '#f))
                 (_specializer-impl133473_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl130247_
                     _$t133137_
                     _methods-bind133160_
                     _slots-bind133183_
                     _class-check-bind133205_
                     _struct-check-bind133229_
                     _specializer-impl133465_
                     _lifted-specializer-id133135_
                     _unchecked-specializer-impl133471_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp134995
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L130316_)))
                                                          (__tmp134994
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id133128_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp134995
                                                       '" => "
                                                       __tmp134994))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def130248_
                                                       _L130316_
                                                       _specializer-id133128_
                                                       _specializer-impl133473_
                                                       _lifted-specializer-id133135_
                                                       _unchecked-specializer-impl133471_)))))
                                            _hd132845132907_
                                            _hd132842132899_
                                            _hd132839132891_)
                                           (let ()
                                             (declare (not safe))
                                             (_g132821132851_
                                              _g132822132854_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132821132851_ _g132822132854_)))
                               (let ()
                                 (declare (not safe))
                                 (_g132821132851_ _g132822132854_)))
                           (let ()
                             (declare (not safe))
                             (_g132821132851_ _g132822132854_)))))
                   (let ()
                     (declare (not safe))
                     (_g132821132851_ _g132822132854_)))
               (let ()
                 (declare (not safe))
                 (_g132821132851_ _g132822132854_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132821132851_
                                                  _g132822132854_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g132821132851_ _g132822132854_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132821132851_ _g132822132854_)))))
                       (let ()
                         (declare (not safe))
                         (_g132821132851_ _g132822132854_)))))
               (let ()
                 (declare (not safe))
                 (_g132821132851_ _g132822132854_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g132820133476_ _L132329_))
                                         _stx130241_))))
                             _hd132426132549_
                             _kw-ref132424132570_
                             _hd132414132536_
                             _hd132405132512_
                             _hd132396132488_)
                            (let ()
                              (declare (not safe))
                              (_g132370132432_ _g132371132435_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop132419132554_
                                                   _target132416132541_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g132370132432_
                                                 _g132371132435_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g132370132432_ _g132371132435_))))))
                            (let ()
                              (declare (not safe))
                              (_g132370132432_ _g132371132435_)))
                        (let ()
                          (declare (not safe))
                          (_g132370132432_ _g132371132435_)))
                    (let ()
                      (declare (not safe))
                      (_g132370132432_ _g132371132435_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132370132432_
                                                       _g132371132435_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g132370132432_
                                                   _g132371132435_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g132370132432_
                                               _g132371132435_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132370132432_ _g132371132435_)))))
                            (let ()
                              (declare (not safe))
                              (_g132370132432_ _g132371132435_)))
                        (let ()
                          (declare (not safe))
                          (_g132370132432_ _g132371132435_)))))
                (let ()
                  (declare (not safe))
                  (_g132370132432_ _g132371132435_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132370132432_
                                                       _g132371132435_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g132370132432_
                                                   _g132371132435_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g132370132432_ _g132371132435_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g132370132432_ _g132371132435_)))
                            (let ()
                              (declare (not safe))
                              (_g132370132432_ _g132371132435_)))))
                    (let ()
                      (declare (not safe))
                      (_g132370132432_ _g132371132435_)))
                (let ()
                  (declare (not safe))
                  (_g132370132432_ _g132371132435_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132370132432_
                                                       _g132371132435_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g132370132432_
                                               _g132371132435_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132370132432_ _g132371132435_)))
                                (let ()
                                  (declare (not safe))
                                  (_g132370132432_ _g132371132435_)))
                            (let ()
                              (declare (not safe))
                              (_g132370132432_ _g132371132435_)))))
                    (let ()
                      (declare (not safe))
                      (_g132370132432_ _g132371132435_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132370132432_
                                                       _g132371132435_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g132370132432_
                                               _g132371132435_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g132370132432_ _g132371132435_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g132370132432_ _g132371132435_)))))
                            (let ()
                              (declare (not safe))
                              (_g132370132432_ _g132371132435_))))))
                (declare (not safe))
                (_g132369133479_ _L132328_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd132204132322_
                                                    _hd132201132314_
                                                    _hd132198132306_
                                                    _hd132195132298_
                                                    _hd132177132250_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132157132210_
                                                      _g132158132213_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g132157132210_
                                              _g132158132213_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g132157132210_ _g132158132213_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g132157132210_ _g132158132213_)))
                               (let ()
                                 (declare (not safe))
                                 (_g132157132210_ _g132158132213_)))))
                       (let ()
                         (declare (not safe))
                         (_g132157132210_ _g132158132213_)))
                   (let ()
                     (declare (not safe))
                     (_g132157132210_ _g132158132213_)))
               (let ()
                 (declare (not safe))
                 (_g132157132210_ _g132158132213_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132157132210_
                                                  _g132158132213_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g132157132210_
                                              _g132158132213_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132157132210_ _g132158132213_)))))
                           (let ()
                             (declare (not safe))
                             (_g132157132210_ _g132158132213_)))))
                   (let ()
                     (declare (not safe))
                     (_g132157132210_ _g132158132213_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132157132210_
                                                      _g132158132213_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132157132210_
                                                  _g132158132213_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g132157132210_
                                              _g132158132213_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132157132210_ _g132158132213_)))))
                           (let ()
                             (declare (not safe))
                             (_g132157132210_ _g132158132213_)))
                       (let ()
                         (declare (not safe))
                         (_g132157132210_ _g132158132213_)))))
               (let ()
                 (declare (not safe))
                 (_g132157132210_ _g132158132213_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132157132210_
                                                  _g132158132213_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g132157132210_ _g132158132213_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132157132210_ _g132158132213_)))
                           (let ()
                             (declare (not safe))
                             (_g132157132210_ _g132158132213_)))
                       (let ()
                         (declare (not safe))
                         (_g132157132210_ _g132158132213_)))))
               (let ()
                 (declare (not safe))
                 (_g132157132210_ _g132158132213_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g132156133482_ _L130315_))
                                         _stx130241_))))))))
                  (___kont133721133722_ (lambda () _stx130241_)))
              (let ((___match133750133751_
                     (lambda (_e130257130283_
                              _hd130256130286_
                              _tl130255130288_
                              _e130260130291_
                              _hd130259130294_
                              _tl130258130296_
                              _e130263130299_
                              _hd130262130302_
                              _tl130261130304_
                              _e130266130307_
                              _hd130265130310_
                              _tl130264130312_)
                       (let ((_L130315_ _hd130265130310_)
                             (_L130316_ _hd130262130302_))
                         (if (let ((__tmp135112
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L130316_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp135112))
                             (___kont133719133720_ _L130315_ _L130316_)
                             (___kont133721133722_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx133717133718_))
                    (let ((_e130257130283_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx133717133718_))))
                      (let ((_tl130255130288_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130257130283_)))
                            (_hd130256130286_
                             (let ()
                               (declare (not safe))
                               (##car _e130257130283_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130255130288_))
                            (let ((_e130260130291_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130255130288_))))
                              (let ((_tl130258130296_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130260130291_)))
                                    (_hd130259130294_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130260130291_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd130259130294_))
                                    (let ((_e130263130299_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd130259130294_))))
                                      (let ((_tl130261130304_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e130263130299_)))
                                            (_hd130262130302_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e130263130299_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl130261130304_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl130258130296_))
                                                (let ((_e130266130307_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl130258130296_))))
                                                  (let ((_tl130264130312_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e130266130307_)))
                                                        (_hd130265130310_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e130266130307_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl130264130312_))
                                                        (___match133750133751_
                                                         _e130257130283_
                                                         _hd130256130286_
                                                         _tl130255130288_
                                                         _e130260130291_
                                                         _hd130259130294_
                                                         _tl130258130296_
                                                         _e130263130299_
                                                         _hd130262130302_
                                                         _tl130261130304_
                                                         _e130266130307_
                                                         _hd130265130310_
                                                         _tl130264130312_)
                                                        (___kont133721133722_))))
                                                (___kont133721133722_))
                                            (___kont133721133722_))))
                                    (___kont133721133722_))))
                            (___kont133721133722_))))
                    (___kont133721133722_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx129217_
               _self129218_
               _methods129219_
               _slots129220_
               _class-check129221_
               _struct-check129222_
               _struct-assert129223_)
        (let* ((___stx133753133754_ _stx129217_)
               (_g129231129453_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx133753133754_)))))
          (let ((___kont133755133756_
                 (lambda (_L130190_ _L130191_ _L130192_ _L130193_)
                   (let ((__tmp135113
                          (let () (declare (not safe)) (gx#stx-e _L130191_))))
                     (declare (not safe))
                     (hash-put! _methods129219_ __tmp135113 '#t))
                   (for-each
                    (lambda (_g130226130228_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g130226130228_
                         _self129218_
                         _methods129219_
                         _slots129220_
                         _class-check129221_
                         _struct-check129222_
                         _struct-assert129223_)))
                    (let ((__tmp135114
                           (lambda (_g130230130233_ _g130231130235_)
                             (let ()
                               (declare (not safe))
                               (cons _g130230130233_ _g130231130235_)))))
                      (declare (not safe))
                      (foldr1 __tmp135114 '() _L130190_)))))
                (___kont133759133760_
                 (lambda (_L130025_ _L130026_ _L130027_ _L130028_ _L130029_)
                   (let ((__tmp135115
                          (let () (declare (not safe)) (gx#stx-e _L130026_))))
                     (declare (not safe))
                     (hash-put! _methods129219_ __tmp135115 '#t))
                   (for-each
                    (lambda (_g130069130071_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g130069130071_
                         _self129218_
                         _methods129219_
                         _slots129220_
                         _class-check129221_
                         _struct-check129222_
                         _struct-assert129223_)))
                    (let ((__tmp135116
                           (lambda (_g130073130076_ _g130074130078_)
                             (let ()
                               (declare (not safe))
                               (cons _g130073130076_ _g130074130078_)))))
                      (declare (not safe))
                      (foldr1 __tmp135116 '() _L130025_)))))
                (___kont133763133764_
                 (lambda (_L129858_ _L129859_ _L129860_)
                   (let ((__tmp135117
                          (let () (declare (not safe)) (gx#stx-e _L129858_))))
                     (declare (not safe))
                     (hash-put! _slots129220_ __tmp135117 '#t))))
                (___kont133765133766_
                 (lambda (_L129735_ _L129736_ _L129737_ _L129738_)
                   (let ((__tmp135118
                          (let () (declare (not safe)) (gx#stx-e _L129736_))))
                     (declare (not safe))
                     (hash-put! _slots129220_ __tmp135118 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L129735_
                      _self129218_
                      _methods129219_
                      _slots129220_
                      _class-check129221_
                      _struct-check129222_
                      _struct-assert129223_))))
                (___kont133767133768_
                 (lambda (_L129619_ _L129620_)
                   (let ((__tmp135119
                          (##structure-ref
                           (let ((__tmp135120
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L129620_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135120))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (hash-put! _slots129220_ __tmp135119 '#t))))
                (___kont133769133770_
                 (lambda (_L129529_ _L129530_ _L129531_)
                   (let ((__tmp135121
                          (##structure-ref
                           (let ((__tmp135122
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L129531_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135122))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (hash-put! _slots129220_ __tmp135121 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L129529_
                      _self129218_
                      _methods129219_
                      _slots129220_
                      _class-check129221_
                      _struct-check129222_
                      _struct-assert129223_))))
                (___kont133771133772_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx129217_
                      _self129218_
                      _methods129219_
                      _slots129220_
                      _class-check129221_
                      _struct-check129222_
                      _struct-assert129223_)))))
            (let* ((___match134252134253_
                    (lambda (_e129427129465_
                             _hd129426129468_
                             _tl129425129470_
                             _e129430129473_
                             _hd129429129476_
                             _tl129428129478_
                             _e129433129481_
                             _hd129432129484_
                             _tl129431129486_
                             _e129436129489_
                             _hd129435129492_
                             _tl129434129494_
                             _e129439129497_
                             _hd129438129500_
                             _tl129437129502_
                             _e129442129505_
                             _hd129441129508_
                             _tl129440129510_
                             _e129445129513_
                             _hd129444129516_
                             _tl129443129518_
                             _e129448129521_
                             _hd129447129524_
                             _tl129446129526_)
                      (let ((_L129529_ _hd129447129524_)
                            (_L129530_ _hd129444129516_)
                            (_L129531_ _hd129435129492_))
                        (if (and (let ((__tmp135123
                                        (let ((__tmp135124
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L129531_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135124))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135123
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129530_
                                    _self129218_)))
                            (___kont133769133770_
                             _L129529_
                             _L129530_
                             _L129531_)
                            (___kont133771133772_)))))
                   (___match134250134251_
                    (lambda (_e129427129465_
                             _hd129426129468_
                             _tl129425129470_
                             _e129430129473_
                             _hd129429129476_
                             _tl129428129478_
                             _e129433129481_
                             _hd129432129484_
                             _tl129431129486_
                             _e129436129489_
                             _hd129435129492_
                             _tl129434129494_
                             _e129439129497_
                             _hd129438129500_
                             _tl129437129502_
                             _e129442129505_
                             _hd129441129508_
                             _tl129440129510_
                             _e129445129513_
                             _hd129444129516_
                             _tl129443129518_
                             _e129448129521_
                             _hd129447129524_
                             _tl129446129526_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl129446129526_))
                          (___match134252134253_
                           _e129427129465_
                           _hd129426129468_
                           _tl129425129470_
                           _e129430129473_
                           _hd129429129476_
                           _tl129428129478_
                           _e129433129481_
                           _hd129432129484_
                           _tl129431129486_
                           _e129436129489_
                           _hd129435129492_
                           _tl129434129494_
                           _e129439129497_
                           _hd129438129500_
                           _tl129437129502_
                           _e129442129505_
                           _hd129441129508_
                           _tl129440129510_
                           _e129445129513_
                           _hd129444129516_
                           _tl129443129518_
                           _e129448129521_
                           _hd129447129524_
                           _tl129446129526_)
                          (___kont133771133772_))))
                   (___match134244134245_
                    (lambda (_e129427129465_
                             _hd129426129468_
                             _tl129425129470_
                             _e129430129473_
                             _hd129429129476_
                             _tl129428129478_
                             _e129433129481_
                             _hd129432129484_
                             _tl129431129486_
                             _e129436129489_
                             _hd129435129492_
                             _tl129434129494_
                             _e129439129497_
                             _hd129438129500_
                             _tl129437129502_
                             _e129442129505_
                             _hd129441129508_
                             _tl129440129510_
                             _e129445129513_
                             _hd129444129516_
                             _tl129443129518_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129437129502_))
                          (let ((_e129448129521_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129437129502_))))
                            (let ((_tl129446129526_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129448129521_)))
                                  (_hd129447129524_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129448129521_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl129446129526_))
                                  (___match134252134253_
                                   _e129427129465_
                                   _hd129426129468_
                                   _tl129425129470_
                                   _e129430129473_
                                   _hd129429129476_
                                   _tl129428129478_
                                   _e129433129481_
                                   _hd129432129484_
                                   _tl129431129486_
                                   _e129436129489_
                                   _hd129435129492_
                                   _tl129434129494_
                                   _e129439129497_
                                   _hd129438129500_
                                   _tl129437129502_
                                   _e129442129505_
                                   _hd129441129508_
                                   _tl129440129510_
                                   _e129445129513_
                                   _hd129444129516_
                                   _tl129443129518_
                                   _e129448129521_
                                   _hd129447129524_
                                   _tl129446129526_)
                                  (___kont133771133772_))))
                          (___kont133771133772_))))
                   (___match134190134191_
                    (lambda (_e129403129563_
                             _hd129402129566_
                             _tl129401129568_
                             _e129406129571_
                             _hd129405129574_
                             _tl129404129576_
                             _e129409129579_
                             _hd129408129582_
                             _tl129407129584_
                             _e129412129587_
                             _hd129411129590_
                             _tl129410129592_
                             _e129415129595_
                             _hd129414129598_
                             _tl129413129600_
                             _e129418129603_
                             _hd129417129606_
                             _tl129416129608_
                             _e129421129611_
                             _hd129420129614_
                             _tl129419129616_)
                      (let ((_L129619_ _hd129420129614_)
                            (_L129620_ _hd129411129590_))
                        (if (and (let ((__tmp135125
                                        (let ((__tmp135126
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L129620_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135126))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135125
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129619_
                                    _self129218_)))
                            (___kont133767133768_ _L129619_ _L129620_)
                            (___kont133771133772_)))))
                   (___match134188134189_
                    (lambda (_e129403129563_
                             _hd129402129566_
                             _tl129401129568_
                             _e129406129571_
                             _hd129405129574_
                             _tl129404129576_
                             _e129409129579_
                             _hd129408129582_
                             _tl129407129584_
                             _e129412129587_
                             _hd129411129590_
                             _tl129410129592_
                             _e129415129595_
                             _hd129414129598_
                             _tl129413129600_
                             _e129418129603_
                             _hd129417129606_
                             _tl129416129608_
                             _e129421129611_
                             _hd129420129614_
                             _tl129419129616_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl129413129600_))
                          (___match134190134191_
                           _e129403129563_
                           _hd129402129566_
                           _tl129401129568_
                           _e129406129571_
                           _hd129405129574_
                           _tl129404129576_
                           _e129409129579_
                           _hd129408129582_
                           _tl129407129584_
                           _e129412129587_
                           _hd129411129590_
                           _tl129410129592_
                           _e129415129595_
                           _hd129414129598_
                           _tl129413129600_
                           _e129418129603_
                           _hd129417129606_
                           _tl129416129608_
                           _e129421129611_
                           _hd129420129614_
                           _tl129419129616_)
                          (___match134244134245_
                           _e129403129563_
                           _hd129402129566_
                           _tl129401129568_
                           _e129406129571_
                           _hd129405129574_
                           _tl129404129576_
                           _e129409129579_
                           _hd129408129582_
                           _tl129407129584_
                           _e129412129587_
                           _hd129411129590_
                           _tl129410129592_
                           _e129415129595_
                           _hd129414129598_
                           _tl129413129600_
                           _e129418129603_
                           _hd129417129606_
                           _tl129416129608_
                           _e129421129611_
                           _hd129420129614_
                           _tl129419129616_))))
                   (___match134134134135_
                    (lambda (_e129368129647_
                             _hd129367129650_
                             _tl129366129652_
                             _e129371129655_
                             _hd129370129658_
                             _tl129369129660_
                             _e129374129663_
                             _hd129373129666_
                             _tl129372129668_
                             _e129377129671_
                             _hd129376129674_
                             _tl129375129676_
                             _e129380129679_
                             _hd129379129682_
                             _tl129378129684_
                             _e129383129687_
                             _hd129382129690_
                             _tl129381129692_
                             _e129386129695_
                             _hd129385129698_
                             _tl129384129700_
                             _e129389129703_
                             _hd129388129706_
                             _tl129387129708_
                             _e129392129711_
                             _hd129391129714_
                             _tl129390129716_
                             _e129395129719_
                             _hd129394129722_
                             _tl129393129724_
                             _e129398129727_
                             _hd129397129730_
                             _tl129396129732_)
                      (let ((_L129735_ _hd129397129730_)
                            (_L129736_ _hd129394129722_)
                            (_L129737_ _hd129385129698_)
                            (_L129738_ _hd129376129674_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L129738_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L129738_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129737_
                                    _self129218_)))
                            (___kont133765133766_
                             _L129735_
                             _L129736_
                             _L129737_
                             _L129738_)
                            (___kont133771133772_)))))
                   (___match134126134127_
                    (lambda (_e129368129647_
                             _hd129367129650_
                             _tl129366129652_
                             _e129371129655_
                             _hd129370129658_
                             _tl129369129660_
                             _e129374129663_
                             _hd129373129666_
                             _tl129372129668_
                             _e129377129671_
                             _hd129376129674_
                             _tl129375129676_
                             _e129380129679_
                             _hd129379129682_
                             _tl129378129684_
                             _e129383129687_
                             _hd129382129690_
                             _tl129381129692_
                             _e129386129695_
                             _hd129385129698_
                             _tl129384129700_
                             _e129389129703_
                             _hd129388129706_
                             _tl129387129708_
                             _e129392129711_
                             _hd129391129714_
                             _tl129390129716_
                             _e129395129719_
                             _hd129394129722_
                             _tl129393129724_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129387129708_))
                          (let ((_e129398129727_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129387129708_))))
                            (let ((_tl129396129732_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129398129727_)))
                                  (_hd129397129730_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129398129727_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl129396129732_))
                                  (___match134134134135_
                                   _e129368129647_
                                   _hd129367129650_
                                   _tl129366129652_
                                   _e129371129655_
                                   _hd129370129658_
                                   _tl129369129660_
                                   _e129374129663_
                                   _hd129373129666_
                                   _tl129372129668_
                                   _e129377129671_
                                   _hd129376129674_
                                   _tl129375129676_
                                   _e129380129679_
                                   _hd129379129682_
                                   _tl129378129684_
                                   _e129383129687_
                                   _hd129382129690_
                                   _tl129381129692_
                                   _e129386129695_
                                   _hd129385129698_
                                   _tl129384129700_
                                   _e129389129703_
                                   _hd129388129706_
                                   _tl129387129708_
                                   _e129392129711_
                                   _hd129391129714_
                                   _tl129390129716_
                                   _e129395129719_
                                   _hd129394129722_
                                   _tl129393129724_
                                   _e129398129727_
                                   _hd129397129730_
                                   _tl129396129732_)
                                  (___kont133771133772_))))
                          (___match134250134251_
                           _e129368129647_
                           _hd129367129650_
                           _tl129366129652_
                           _e129371129655_
                           _hd129370129658_
                           _tl129369129660_
                           _e129374129663_
                           _hd129373129666_
                           _tl129372129668_
                           _e129377129671_
                           _hd129376129674_
                           _tl129375129676_
                           _e129380129679_
                           _hd129379129682_
                           _tl129378129684_
                           _e129383129687_
                           _hd129382129690_
                           _tl129381129692_
                           _e129386129695_
                           _hd129385129698_
                           _tl129384129700_
                           _e129389129703_
                           _hd129388129706_
                           _tl129387129708_))))
                   (___match134048134049_
                    (lambda (_e129334129778_
                             _hd129333129781_
                             _tl129332129783_
                             _e129337129786_
                             _hd129336129789_
                             _tl129335129791_
                             _e129340129794_
                             _hd129339129797_
                             _tl129338129799_
                             _e129343129802_
                             _hd129342129805_
                             _tl129341129807_
                             _e129346129810_
                             _hd129345129813_
                             _tl129344129815_
                             _e129349129818_
                             _hd129348129821_
                             _tl129347129823_
                             _e129352129826_
                             _hd129351129829_
                             _tl129350129831_
                             _e129355129834_
                             _hd129354129837_
                             _tl129353129839_
                             _e129358129842_
                             _hd129357129845_
                             _tl129356129847_
                             _e129361129850_
                             _hd129360129853_
                             _tl129359129855_)
                      (let ((_L129858_ _hd129360129853_)
                            (_L129859_ _hd129351129829_)
                            (_L129860_ _hd129342129805_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L129860_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L129860_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129859_
                                    _self129218_)))
                            (___kont133763133764_
                             _L129858_
                             _L129859_
                             _L129860_)
                            (___match134252134253_
                             _e129334129778_
                             _hd129333129781_
                             _tl129332129783_
                             _e129337129786_
                             _hd129336129789_
                             _tl129335129791_
                             _e129340129794_
                             _hd129339129797_
                             _tl129338129799_
                             _e129343129802_
                             _hd129342129805_
                             _tl129341129807_
                             _e129346129810_
                             _hd129345129813_
                             _tl129344129815_
                             _e129349129818_
                             _hd129348129821_
                             _tl129347129823_
                             _e129352129826_
                             _hd129351129829_
                             _tl129350129831_
                             _e129355129834_
                             _hd129354129837_
                             _tl129353129839_)))))
                   (___match134046134047_
                    (lambda (_e129334129778_
                             _hd129333129781_
                             _tl129332129783_
                             _e129337129786_
                             _hd129336129789_
                             _tl129335129791_
                             _e129340129794_
                             _hd129339129797_
                             _tl129338129799_
                             _e129343129802_
                             _hd129342129805_
                             _tl129341129807_
                             _e129346129810_
                             _hd129345129813_
                             _tl129344129815_
                             _e129349129818_
                             _hd129348129821_
                             _tl129347129823_
                             _e129352129826_
                             _hd129351129829_
                             _tl129350129831_
                             _e129355129834_
                             _hd129354129837_
                             _tl129353129839_
                             _e129358129842_
                             _hd129357129845_
                             _tl129356129847_
                             _e129361129850_
                             _hd129360129853_
                             _tl129359129855_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl129353129839_))
                          (___match134048134049_
                           _e129334129778_
                           _hd129333129781_
                           _tl129332129783_
                           _e129337129786_
                           _hd129336129789_
                           _tl129335129791_
                           _e129340129794_
                           _hd129339129797_
                           _tl129338129799_
                           _e129343129802_
                           _hd129342129805_
                           _tl129341129807_
                           _e129346129810_
                           _hd129345129813_
                           _tl129344129815_
                           _e129349129818_
                           _hd129348129821_
                           _tl129347129823_
                           _e129352129826_
                           _hd129351129829_
                           _tl129350129831_
                           _e129355129834_
                           _hd129354129837_
                           _tl129353129839_
                           _e129358129842_
                           _hd129357129845_
                           _tl129356129847_
                           _e129361129850_
                           _hd129360129853_
                           _tl129359129855_)
                          (___match134126134127_
                           _e129334129778_
                           _hd129333129781_
                           _tl129332129783_
                           _e129337129786_
                           _hd129336129789_
                           _tl129335129791_
                           _e129340129794_
                           _hd129339129797_
                           _tl129338129799_
                           _e129343129802_
                           _hd129342129805_
                           _tl129341129807_
                           _e129346129810_
                           _hd129345129813_
                           _tl129344129815_
                           _e129349129818_
                           _hd129348129821_
                           _tl129347129823_
                           _e129352129826_
                           _hd129351129829_
                           _tl129350129831_
                           _e129355129834_
                           _hd129354129837_
                           _tl129353129839_
                           _e129358129842_
                           _hd129357129845_
                           _tl129356129847_
                           _e129361129850_
                           _hd129360129853_
                           _tl129359129855_))))
                   (___match134036134037_
                    (lambda (_e129334129778_
                             _hd129333129781_
                             _tl129332129783_
                             _e129337129786_
                             _hd129336129789_
                             _tl129335129791_
                             _e129340129794_
                             _hd129339129797_
                             _tl129338129799_
                             _e129343129802_
                             _hd129342129805_
                             _tl129341129807_
                             _e129346129810_
                             _hd129345129813_
                             _tl129344129815_
                             _e129349129818_
                             _hd129348129821_
                             _tl129347129823_
                             _e129352129826_
                             _hd129351129829_
                             _tl129350129831_
                             _e129355129834_
                             _hd129354129837_
                             _tl129353129839_
                             _e129358129842_
                             _hd129357129845_
                             _tl129356129847_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd129357129845_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl129356129847_))
                              (let ((_e129361129850_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl129356129847_))))
                                (let ((_tl129359129855_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129361129850_)))
                                      (_hd129360129853_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129361129850_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl129359129855_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl129353129839_))
                                          (___match134048134049_
                                           _e129334129778_
                                           _hd129333129781_
                                           _tl129332129783_
                                           _e129337129786_
                                           _hd129336129789_
                                           _tl129335129791_
                                           _e129340129794_
                                           _hd129339129797_
                                           _tl129338129799_
                                           _e129343129802_
                                           _hd129342129805_
                                           _tl129341129807_
                                           _e129346129810_
                                           _hd129345129813_
                                           _tl129344129815_
                                           _e129349129818_
                                           _hd129348129821_
                                           _tl129347129823_
                                           _e129352129826_
                                           _hd129351129829_
                                           _tl129350129831_
                                           _e129355129834_
                                           _hd129354129837_
                                           _tl129353129839_
                                           _e129358129842_
                                           _hd129357129845_
                                           _tl129356129847_
                                           _e129361129850_
                                           _hd129360129853_
                                           _tl129359129855_)
                                          (___match134126134127_
                                           _e129334129778_
                                           _hd129333129781_
                                           _tl129332129783_
                                           _e129337129786_
                                           _hd129336129789_
                                           _tl129335129791_
                                           _e129340129794_
                                           _hd129339129797_
                                           _tl129338129799_
                                           _e129343129802_
                                           _hd129342129805_
                                           _tl129341129807_
                                           _e129346129810_
                                           _hd129345129813_
                                           _tl129344129815_
                                           _e129349129818_
                                           _hd129348129821_
                                           _tl129347129823_
                                           _e129352129826_
                                           _hd129351129829_
                                           _tl129350129831_
                                           _e129355129834_
                                           _hd129354129837_
                                           _tl129353129839_
                                           _e129358129842_
                                           _hd129357129845_
                                           _tl129356129847_
                                           _e129361129850_
                                           _hd129360129853_
                                           _tl129359129855_))
                                      (___match134250134251_
                                       _e129334129778_
                                       _hd129333129781_
                                       _tl129332129783_
                                       _e129337129786_
                                       _hd129336129789_
                                       _tl129335129791_
                                       _e129340129794_
                                       _hd129339129797_
                                       _tl129338129799_
                                       _e129343129802_
                                       _hd129342129805_
                                       _tl129341129807_
                                       _e129346129810_
                                       _hd129345129813_
                                       _tl129344129815_
                                       _e129349129818_
                                       _hd129348129821_
                                       _tl129347129823_
                                       _e129352129826_
                                       _hd129351129829_
                                       _tl129350129831_
                                       _e129355129834_
                                       _hd129354129837_
                                       _tl129353129839_))))
                              (___match134250134251_
                               _e129334129778_
                               _hd129333129781_
                               _tl129332129783_
                               _e129337129786_
                               _hd129336129789_
                               _tl129335129791_
                               _e129340129794_
                               _hd129339129797_
                               _tl129338129799_
                               _e129343129802_
                               _hd129342129805_
                               _tl129341129807_
                               _e129346129810_
                               _hd129345129813_
                               _tl129344129815_
                               _e129349129818_
                               _hd129348129821_
                               _tl129347129823_
                               _e129352129826_
                               _hd129351129829_
                               _tl129350129831_
                               _e129355129834_
                               _hd129354129837_
                               _tl129353129839_))
                          (___match134250134251_
                           _e129334129778_
                           _hd129333129781_
                           _tl129332129783_
                           _e129337129786_
                           _hd129336129789_
                           _tl129335129791_
                           _e129340129794_
                           _hd129339129797_
                           _tl129338129799_
                           _e129343129802_
                           _hd129342129805_
                           _tl129341129807_
                           _e129346129810_
                           _hd129345129813_
                           _tl129344129815_
                           _e129349129818_
                           _hd129348129821_
                           _tl129347129823_
                           _e129352129826_
                           _hd129351129829_
                           _tl129350129831_
                           _e129355129834_
                           _hd129354129837_
                           _tl129353129839_))))
                   (___match133968133969_
                    (lambda (_e129283129897_
                             _hd129282129900_
                             _tl129281129902_
                             _e129286129905_
                             _hd129285129908_
                             _tl129284129910_
                             _e129289129913_
                             _hd129288129916_
                             _tl129287129918_
                             _e129292129921_
                             _hd129291129924_
                             _tl129290129926_
                             _e129295129929_
                             _hd129294129932_
                             _tl129293129934_
                             _e129298129937_
                             _hd129297129940_
                             _tl129296129942_
                             _e129301129945_
                             _hd129300129948_
                             _tl129299129950_
                             _e129304129953_
                             _hd129303129956_
                             _tl129302129958_
                             _e129307129961_
                             _hd129306129964_
                             _tl129305129966_
                             _e129310129969_
                             _hd129309129972_
                             _tl129308129974_
                             _e129313129977_
                             _hd129312129980_
                             _tl129311129982_
                             _e129316129985_
                             _hd129315129988_
                             _tl129314129990_
                             _e129319129993_
                             _hd129318129996_
                             _tl129317129998_
                             ___splice133761133762_
                             _target129320130001_
                             _tl129322130003_)
                      (letrec ((_loop129323130006_
                                (lambda (_hd129321130009_ _args129327130011_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd129321130009_))
                                      (let ((_e129324130014_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd129321130009_))))
                                        (let ((_lp-tl129326130019_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e129324130014_)))
                                              (_lp-hd129325130017_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e129324130014_))))
                                          (let ((__tmp135127
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd129325130017_
                                                         _args129327130011_))))
                                            (declare (not safe))
                                            (_loop129323130006_
                                             _lp-tl129326130019_
                                             __tmp135127))))
                                      (let ((_args129328130022_
                                             (reverse _args129327130011_)))
                                        (let ((_L130025_ _args129328130022_)
                                              (_L130026_ _hd129318129996_)
                                              (_L130027_ _hd129309129972_)
                                              (_L130028_ _hd129300129948_)
                                              (_L130029_ _hd129291129924_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L130029_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L130028_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L130027_
                                                      _self129218_)))
                                              (___kont133759133760_
                                               _L130025_
                                               _L130026_
                                               _L130027_
                                               _L130028_
                                               _L130029_)
                                              (___kont133771133772_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop129323130006_ _target129320130001_ '())))))
                   (___match133926133927_
                    (lambda (_e129283129897_
                             _hd129282129900_
                             _tl129281129902_
                             _e129286129905_
                             _hd129285129908_
                             _tl129284129910_
                             _e129289129913_
                             _hd129288129916_
                             _tl129287129918_
                             _e129292129921_
                             _hd129291129924_
                             _tl129290129926_
                             _e129295129929_
                             _hd129294129932_
                             _tl129293129934_
                             _e129298129937_
                             _hd129297129940_
                             _tl129296129942_
                             _e129301129945_
                             _hd129300129948_
                             _tl129299129950_
                             _e129304129953_
                             _hd129303129956_
                             _tl129302129958_
                             _e129307129961_
                             _hd129306129964_
                             _tl129305129966_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd129306129964_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl129305129966_))
                              (let ((_e129310129969_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl129305129966_))))
                                (let ((_tl129308129974_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129310129969_)))
                                      (_hd129309129972_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129310129969_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl129308129974_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl129302129958_))
                                          (let ((_e129313129977_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl129302129958_))))
                                            (let ((_tl129311129982_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e129313129977_)))
                                                  (_hd129312129980_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e129313129977_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd129312129980_))
                                                  (let ((_e129316129985_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd129312129980_))))
                                                    (let ((_tl129314129990_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e129316129985_)))
                                                          (_hd129315129988_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e129316129985_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd129315129988_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd129315129988_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129314129990_))
                          (let ((_e129319129993_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129314129990_))))
                            (let ((_tl129317129998_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129319129993_)))
                                  (_hd129318129996_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129319129993_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl129317129998_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl129311129982_))
                                      (let ((___splice133761133762_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl129311129982_
                                                '0))))
                                        (let ((_tl129322130003_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice133761133762_
                                                  '1)))
                                              (_target129320130001_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice133761133762_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl129322130003_))
                                              (___match133968133969_
                                               _e129283129897_
                                               _hd129282129900_
                                               _tl129281129902_
                                               _e129286129905_
                                               _hd129285129908_
                                               _tl129284129910_
                                               _e129289129913_
                                               _hd129288129916_
                                               _tl129287129918_
                                               _e129292129921_
                                               _hd129291129924_
                                               _tl129290129926_
                                               _e129295129929_
                                               _hd129294129932_
                                               _tl129293129934_
                                               _e129298129937_
                                               _hd129297129940_
                                               _tl129296129942_
                                               _e129301129945_
                                               _hd129300129948_
                                               _tl129299129950_
                                               _e129304129953_
                                               _hd129303129956_
                                               _tl129302129958_
                                               _e129307129961_
                                               _hd129306129964_
                                               _tl129305129966_
                                               _e129310129969_
                                               _hd129309129972_
                                               _tl129308129974_
                                               _e129313129977_
                                               _hd129312129980_
                                               _tl129311129982_
                                               _e129316129985_
                                               _hd129315129988_
                                               _tl129314129990_
                                               _e129319129993_
                                               _hd129318129996_
                                               _tl129317129998_
                                               ___splice133761133762_
                                               _target129320130001_
                                               _tl129322130003_)
                                              (___kont133771133772_))))
                                      (___kont133771133772_))
                                  (___kont133771133772_))))
                          (___kont133771133772_))
                      (___kont133771133772_))
                  (___kont133771133772_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133771133772_))))
                                          (___match134250134251_
                                           _e129283129897_
                                           _hd129282129900_
                                           _tl129281129902_
                                           _e129286129905_
                                           _hd129285129908_
                                           _tl129284129910_
                                           _e129289129913_
                                           _hd129288129916_
                                           _tl129287129918_
                                           _e129292129921_
                                           _hd129291129924_
                                           _tl129290129926_
                                           _e129295129929_
                                           _hd129294129932_
                                           _tl129293129934_
                                           _e129298129937_
                                           _hd129297129940_
                                           _tl129296129942_
                                           _e129301129945_
                                           _hd129300129948_
                                           _tl129299129950_
                                           _e129304129953_
                                           _hd129303129956_
                                           _tl129302129958_))
                                      (___match134250134251_
                                       _e129283129897_
                                       _hd129282129900_
                                       _tl129281129902_
                                       _e129286129905_
                                       _hd129285129908_
                                       _tl129284129910_
                                       _e129289129913_
                                       _hd129288129916_
                                       _tl129287129918_
                                       _e129292129921_
                                       _hd129291129924_
                                       _tl129290129926_
                                       _e129295129929_
                                       _hd129294129932_
                                       _tl129293129934_
                                       _e129298129937_
                                       _hd129297129940_
                                       _tl129296129942_
                                       _e129301129945_
                                       _hd129300129948_
                                       _tl129299129950_
                                       _e129304129953_
                                       _hd129303129956_
                                       _tl129302129958_))))
                              (___match134250134251_
                               _e129283129897_
                               _hd129282129900_
                               _tl129281129902_
                               _e129286129905_
                               _hd129285129908_
                               _tl129284129910_
                               _e129289129913_
                               _hd129288129916_
                               _tl129287129918_
                               _e129292129921_
                               _hd129291129924_
                               _tl129290129926_
                               _e129295129929_
                               _hd129294129932_
                               _tl129293129934_
                               _e129298129937_
                               _hd129297129940_
                               _tl129296129942_
                               _e129301129945_
                               _hd129300129948_
                               _tl129299129950_
                               _e129304129953_
                               _hd129303129956_
                               _tl129302129958_))
                          (___match134036134037_
                           _e129283129897_
                           _hd129282129900_
                           _tl129281129902_
                           _e129286129905_
                           _hd129285129908_
                           _tl129284129910_
                           _e129289129913_
                           _hd129288129916_
                           _tl129287129918_
                           _e129292129921_
                           _hd129291129924_
                           _tl129290129926_
                           _e129295129929_
                           _hd129294129932_
                           _tl129293129934_
                           _e129298129937_
                           _hd129297129940_
                           _tl129296129942_
                           _e129301129945_
                           _hd129300129948_
                           _tl129299129950_
                           _e129304129953_
                           _hd129303129956_
                           _tl129302129958_
                           _e129307129961_
                           _hd129306129964_
                           _tl129305129966_))))
                   (___match133858133859_
                    (lambda (_e129239130086_
                             _hd129238130089_
                             _tl129237130091_
                             _e129242130094_
                             _hd129241130097_
                             _tl129240130099_
                             _e129245130102_
                             _hd129244130105_
                             _tl129243130107_
                             _e129248130110_
                             _hd129247130113_
                             _tl129246130115_
                             _e129251130118_
                             _hd129250130121_
                             _tl129249130123_
                             _e129254130126_
                             _hd129253130129_
                             _tl129252130131_
                             _e129257130134_
                             _hd129256130137_
                             _tl129255130139_
                             _e129260130142_
                             _hd129259130145_
                             _tl129258130147_
                             _e129263130150_
                             _hd129262130153_
                             _tl129261130155_
                             _e129266130158_
                             _hd129265130161_
                             _tl129264130163_
                             ___splice133757133758_
                             _target129267130166_
                             _tl129269130168_)
                      (letrec ((_loop129270130171_
                                (lambda (_hd129268130174_ _args129274130176_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd129268130174_))
                                      (let ((_e129271130179_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd129268130174_))))
                                        (let ((_lp-tl129273130184_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e129271130179_)))
                                              (_lp-hd129272130182_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e129271130179_))))
                                          (let ((__tmp135128
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd129272130182_
                                                         _args129274130176_))))
                                            (declare (not safe))
                                            (_loop129270130171_
                                             _lp-tl129273130184_
                                             __tmp135128))))
                                      (let ((_args129275130187_
                                             (reverse _args129274130176_)))
                                        (let ((_L130190_ _args129275130187_)
                                              (_L130191_ _hd129265130161_)
                                              (_L130192_ _hd129256130137_)
                                              (_L130193_ _hd129247130113_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L130193_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L130192_
                                                      _self129218_)))
                                              (___kont133755133756_
                                               _L130190_
                                               _L130191_
                                               _L130192_
                                               _L130193_)
                                              (___match134046134047_
                                               _e129239130086_
                                               _hd129238130089_
                                               _tl129237130091_
                                               _e129242130094_
                                               _hd129241130097_
                                               _tl129240130099_
                                               _e129245130102_
                                               _hd129244130105_
                                               _tl129243130107_
                                               _e129248130110_
                                               _hd129247130113_
                                               _tl129246130115_
                                               _e129251130118_
                                               _hd129250130121_
                                               _tl129249130123_
                                               _e129254130126_
                                               _hd129253130129_
                                               _tl129252130131_
                                               _e129257130134_
                                               _hd129256130137_
                                               _tl129255130139_
                                               _e129260130142_
                                               _hd129259130145_
                                               _tl129258130147_
                                               _e129263130150_
                                               _hd129262130153_
                                               _tl129261130155_
                                               _e129266130158_
                                               _hd129265130161_
                                               _tl129264130163_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop129270130171_ _target129267130166_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx133753133754_))
                  (let ((_e129239130086_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx133753133754_))))
                    (let ((_tl129237130091_
                           (let ()
                             (declare (not safe))
                             (##cdr _e129239130086_)))
                          (_hd129238130089_
                           (let ()
                             (declare (not safe))
                             (##car _e129239130086_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129237130091_))
                          (let ((_e129242130094_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129237130091_))))
                            (let ((_tl129240130099_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129242130094_)))
                                  (_hd129241130097_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129242130094_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd129241130097_))
                                  (let ((_e129245130102_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd129241130097_))))
                                    (let ((_tl129243130107_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e129245130102_)))
                                          (_hd129244130105_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e129245130102_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd129244130105_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd129244130105_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl129243130107_))
                                                  (let ((_e129248130110_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl129243130107_))))
                                                    (let ((_tl129246130115_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e129248130110_)))
                                                          (_hd129247130113_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e129248130110_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl129246130115_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl129240130099_))
                      (let ((_e129251130118_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl129240130099_))))
                        (let ((_tl129249130123_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e129251130118_)))
                              (_hd129250130121_
                               (let ()
                                 (declare (not safe))
                                 (##car _e129251130118_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd129250130121_))
                              (let ((_e129254130126_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd129250130121_))))
                                (let ((_tl129252130131_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129254130126_)))
                                      (_hd129253130129_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129254130126_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd129253130129_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd129253130129_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl129252130131_))
                                              (let ((_e129257130134_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl129252130131_))))
                                                (let ((_tl129255130139_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e129257130134_)))
                                                      (_hd129256130137_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e129257130134_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl129255130139_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl129249130123_))
                                                          (let ((_e129260130142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl129249130123_))))
                    (let ((_tl129258130147_
                           (let ()
                             (declare (not safe))
                             (##cdr _e129260130142_)))
                          (_hd129259130145_
                           (let ()
                             (declare (not safe))
                             (##car _e129260130142_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd129259130145_))
                          (let ((_e129263130150_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd129259130145_))))
                            (let ((_tl129261130155_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129263130150_)))
                                  (_hd129262130153_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129263130150_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd129262130153_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd129262130153_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl129261130155_))
                                          (let ((_e129266130158_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl129261130155_))))
                                            (let ((_tl129264130163_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e129266130158_)))
                                                  (_hd129265130161_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e129266130158_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl129264130163_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl129258130147_))
                                                      (let ((___splice133757133758_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl129258130147_ '0))))
                (let ((_tl129269130168_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice133757133758_ '1)))
                      (_target129267130166_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice133757133758_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl129269130168_))
                      (___match133858133859_
                       _e129239130086_
                       _hd129238130089_
                       _tl129237130091_
                       _e129242130094_
                       _hd129241130097_
                       _tl129240130099_
                       _e129245130102_
                       _hd129244130105_
                       _tl129243130107_
                       _e129248130110_
                       _hd129247130113_
                       _tl129246130115_
                       _e129251130118_
                       _hd129250130121_
                       _tl129249130123_
                       _e129254130126_
                       _hd129253130129_
                       _tl129252130131_
                       _e129257130134_
                       _hd129256130137_
                       _tl129255130139_
                       _e129260130142_
                       _hd129259130145_
                       _tl129258130147_
                       _e129263130150_
                       _hd129262130153_
                       _tl129261130155_
                       _e129266130158_
                       _hd129265130161_
                       _tl129264130163_
                       ___splice133757133758_
                       _target129267130166_
                       _tl129269130168_)
                      (___match134046134047_
                       _e129239130086_
                       _hd129238130089_
                       _tl129237130091_
                       _e129242130094_
                       _hd129241130097_
                       _tl129240130099_
                       _e129245130102_
                       _hd129244130105_
                       _tl129243130107_
                       _e129248130110_
                       _hd129247130113_
                       _tl129246130115_
                       _e129251130118_
                       _hd129250130121_
                       _tl129249130123_
                       _e129254130126_
                       _hd129253130129_
                       _tl129252130131_
                       _e129257130134_
                       _hd129256130137_
                       _tl129255130139_
                       _e129260130142_
                       _hd129259130145_
                       _tl129258130147_
                       _e129263130150_
                       _hd129262130153_
                       _tl129261130155_
                       _e129266130158_
                       _hd129265130161_
                       _tl129264130163_))))
              (___match134046134047_
               _e129239130086_
               _hd129238130089_
               _tl129237130091_
               _e129242130094_
               _hd129241130097_
               _tl129240130099_
               _e129245130102_
               _hd129244130105_
               _tl129243130107_
               _e129248130110_
               _hd129247130113_
               _tl129246130115_
               _e129251130118_
               _hd129250130121_
               _tl129249130123_
               _e129254130126_
               _hd129253130129_
               _tl129252130131_
               _e129257130134_
               _hd129256130137_
               _tl129255130139_
               _e129260130142_
               _hd129259130145_
               _tl129258130147_
               _e129263130150_
               _hd129262130153_
               _tl129261130155_
               _e129266130158_
               _hd129265130161_
               _tl129264130163_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match134250134251_
                                                   _e129239130086_
                                                   _hd129238130089_
                                                   _tl129237130091_
                                                   _e129242130094_
                                                   _hd129241130097_
                                                   _tl129240130099_
                                                   _e129245130102_
                                                   _hd129244130105_
                                                   _tl129243130107_
                                                   _e129248130110_
                                                   _hd129247130113_
                                                   _tl129246130115_
                                                   _e129251130118_
                                                   _hd129250130121_
                                                   _tl129249130123_
                                                   _e129254130126_
                                                   _hd129253130129_
                                                   _tl129252130131_
                                                   _e129257130134_
                                                   _hd129256130137_
                                                   _tl129255130139_
                                                   _e129260130142_
                                                   _hd129259130145_
                                                   _tl129258130147_))))
                                          (___match134250134251_
                                           _e129239130086_
                                           _hd129238130089_
                                           _tl129237130091_
                                           _e129242130094_
                                           _hd129241130097_
                                           _tl129240130099_
                                           _e129245130102_
                                           _hd129244130105_
                                           _tl129243130107_
                                           _e129248130110_
                                           _hd129247130113_
                                           _tl129246130115_
                                           _e129251130118_
                                           _hd129250130121_
                                           _tl129249130123_
                                           _e129254130126_
                                           _hd129253130129_
                                           _tl129252130131_
                                           _e129257130134_
                                           _hd129256130137_
                                           _tl129255130139_
                                           _e129260130142_
                                           _hd129259130145_
                                           _tl129258130147_))
                                      (___match133926133927_
                                       _e129239130086_
                                       _hd129238130089_
                                       _tl129237130091_
                                       _e129242130094_
                                       _hd129241130097_
                                       _tl129240130099_
                                       _e129245130102_
                                       _hd129244130105_
                                       _tl129243130107_
                                       _e129248130110_
                                       _hd129247130113_
                                       _tl129246130115_
                                       _e129251130118_
                                       _hd129250130121_
                                       _tl129249130123_
                                       _e129254130126_
                                       _hd129253130129_
                                       _tl129252130131_
                                       _e129257130134_
                                       _hd129256130137_
                                       _tl129255130139_
                                       _e129260130142_
                                       _hd129259130145_
                                       _tl129258130147_
                                       _e129263130150_
                                       _hd129262130153_
                                       _tl129261130155_))
                                  (___match134250134251_
                                   _e129239130086_
                                   _hd129238130089_
                                   _tl129237130091_
                                   _e129242130094_
                                   _hd129241130097_
                                   _tl129240130099_
                                   _e129245130102_
                                   _hd129244130105_
                                   _tl129243130107_
                                   _e129248130110_
                                   _hd129247130113_
                                   _tl129246130115_
                                   _e129251130118_
                                   _hd129250130121_
                                   _tl129249130123_
                                   _e129254130126_
                                   _hd129253130129_
                                   _tl129252130131_
                                   _e129257130134_
                                   _hd129256130137_
                                   _tl129255130139_
                                   _e129260130142_
                                   _hd129259130145_
                                   _tl129258130147_))))
                          (___match134250134251_
                           _e129239130086_
                           _hd129238130089_
                           _tl129237130091_
                           _e129242130094_
                           _hd129241130097_
                           _tl129240130099_
                           _e129245130102_
                           _hd129244130105_
                           _tl129243130107_
                           _e129248130110_
                           _hd129247130113_
                           _tl129246130115_
                           _e129251130118_
                           _hd129250130121_
                           _tl129249130123_
                           _e129254130126_
                           _hd129253130129_
                           _tl129252130131_
                           _e129257130134_
                           _hd129256130137_
                           _tl129255130139_
                           _e129260130142_
                           _hd129259130145_
                           _tl129258130147_))))
                  (___match134188134189_
                   _e129239130086_
                   _hd129238130089_
                   _tl129237130091_
                   _e129242130094_
                   _hd129241130097_
                   _tl129240130099_
                   _e129245130102_
                   _hd129244130105_
                   _tl129243130107_
                   _e129248130110_
                   _hd129247130113_
                   _tl129246130115_
                   _e129251130118_
                   _hd129250130121_
                   _tl129249130123_
                   _e129254130126_
                   _hd129253130129_
                   _tl129252130131_
                   _e129257130134_
                   _hd129256130137_
                   _tl129255130139_))
              (___kont133771133772_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont133771133772_))
                                          (___kont133771133772_))
                                      (___kont133771133772_))))
                              (___kont133771133772_))))
                      (___kont133771133772_))
                  (___kont133771133772_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133771133772_))
                                              (___kont133771133772_))
                                          (___kont133771133772_))))
                                  (___kont133771133772_))))
                          (___kont133771133772_))))
                  (___kont133771133772_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx128163_
               _self128164_
               _$t128165_
               _methods128166_
               _slots128167_
               _class-check128168_
               _struct-check128169_
               _struct-assert128170_)
        (letrec ((_force-e128172_
                  (lambda (_what129215_)
                    (let ((__tmp135129
                           (let ((__tmp135133
                                  (let ((__tmp135134
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp135134)))
                                 (__tmp135130
                                  (let ((__tmp135131
                                         (let ((__tmp135132
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what129215_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp135132))))
                                    (declare (not safe))
                                    (cons __tmp135131 '()))))
                             (declare (not safe))
                             (cons __tmp135133 __tmp135130))))
                      (declare (not safe))
                      (cons '%#call __tmp135129)))))
          (let* ((___stx134255134256_ _stx128163_)
                 (_g128180128402_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx134255134256_)))))
            (let ((___kont134257134258_
                   (lambda (_L129161_ _L129162_ _L129163_ _L129164_)
                     (let ((_$method129209_
                            (let ((__tmp135135
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L129162_))))
                              (declare (not safe))
                              (hash-ref__0 _methods128166_ __tmp135135)))
                           (_args129210_
                            (map (lambda (_g129197129199_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g129197129199_
                                      _self128164_
                                      _$t128165_
                                      _methods128166_
                                      _slots128167_
                                      _class-check128168_
                                      _struct-check128169_
                                      _struct-assert128170_)))
                                 (let ((__tmp135136
                                        (lambda (_g129201129204_
                                                 _g129202129206_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g129201129204_
                                                  _g129202129206_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135136 '() _L129161_)))))
                       (let ((__tmp135137
                              (let ((__tmp135138
                                     (let ((__tmp135142
                                            (let ()
                                              (declare (not safe))
                                              (_force-e128172_
                                               _$method129209_)))
                                           (__tmp135139
                                            (let ((__tmp135140
                                                   (let ((__tmp135141
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self128164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135141))))
                                              (declare (not safe))
                                              (cons __tmp135140
                                                    _args129210_))))
                                       (declare (not safe))
                                       (cons __tmp135142 __tmp135139))))
                                (declare (not safe))
                                (cons '%#call __tmp135138))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135137 _stx128163_)))))
                  (___kont134261134262_
                   (lambda (_L128993_ _L128994_ _L128995_ _L128996_ _L128997_)
                     (let ((_$method129049_
                            (let ((__tmp135143
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L128994_))))
                              (declare (not safe))
                              (hash-ref__0 _methods128166_ __tmp135143)))
                           (_args129050_
                            (map (lambda (_g129037129039_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g129037129039_
                                      _self128164_
                                      _$t128165_
                                      _methods128166_
                                      _slots128167_
                                      _class-check128168_
                                      _struct-check128169_
                                      _struct-assert128170_)))
                                 (let ((__tmp135144
                                        (lambda (_g129041129044_
                                                 _g129042129046_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g129041129044_
                                                  _g129042129046_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135144 '() _L128993_)))))
                       (let ((__tmp135145
                              (let ((__tmp135146
                                     (let ((__tmp135152
                                            (let ((__tmp135153
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135153)))
                                           (__tmp135147
                                            (let ((__tmp135151
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e128172_
                                                      _$method129049_)))
                                                  (__tmp135148
                                                   (let ((__tmp135149
                                                          (let ((__tmp135150
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self128164_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135150))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135149
                                                           _args129050_))))
                                              (declare (not safe))
                                              (cons __tmp135151 __tmp135148))))
                                       (declare (not safe))
                                       (cons __tmp135152 __tmp135147))))
                                (declare (not safe))
                                (cons '%#call __tmp135146))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135145 _stx128163_)))))
                  (___kont134265134266_
                   (lambda (_L128824_ _L128825_ _L128826_)
                     (let* ((_$field128858_
                             (let ((__tmp135154
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L128824_))))
                               (declare (not safe))
                               (hash-ref__0 _slots128167_ __tmp135154)))
                            (__tmp135155
                             (let ((__tmp135156
                                    (let ((__tmp135163
                                           (let ((__tmp135164
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t128165_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp135164)))
                                          (__tmp135157
                                           (let ((__tmp135161
                                                  (let ((__tmp135162
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field128858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp135162)))
                                                 (__tmp135158
                                                  (let ((__tmp135159
                                                         (let ((__tmp135160
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self128164_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp135160))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135159 '()))))
                                             (declare (not safe))
                                             (cons __tmp135161 __tmp135158))))
                                      (declare (not safe))
                                      (cons __tmp135163 __tmp135157))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp135156))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp135155 _stx128163_))))
                  (___kont134267134268_
                   (lambda (_L128698_ _L128699_ _L128700_ _L128701_)
                     (let ((_$field128736_
                            (let ((__tmp135165
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L128699_))))
                              (declare (not safe))
                              (hash-ref__0 _slots128167_ __tmp135165)))
                           (_expr128737_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L128698_
                               _self128164_
                               _$t128165_
                               _methods128166_
                               _slots128167_
                               _class-check128168_
                               _struct-check128169_
                               _struct-assert128170_))))
                       (let ((__tmp135166
                              (let ((__tmp135167
                                     (let ((__tmp135175
                                            (let ((__tmp135176
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t128165_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135176)))
                                           (__tmp135168
                                            (let ((__tmp135173
                                                   (let ((__tmp135174
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field128736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135174)))
                                                  (__tmp135169
                                                   (let ((__tmp135171
                                                          (let ((__tmp135172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self128164_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135172)))
                 (__tmp135170
                  (let () (declare (not safe)) (cons _expr128737_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135171
                                                           __tmp135170))))
                                              (declare (not safe))
                                              (cons __tmp135173 __tmp135169))))
                                       (declare (not safe))
                                       (cons __tmp135175 __tmp135168))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp135167))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135166 _stx128163_)))))
                  (___kont134269134270_
                   (lambda (_L128577_ _L128578_)
                     (let* ((_slot128600_
                             (##structure-ref
                              (let ((__tmp135177
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L128578_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp135177))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field128602_
                             (let ()
                               (declare (not safe))
                               (hash-ref__0 _slots128167_ _slot128600_))))
                       (let ((__tmp135178
                              (let ((__tmp135179
                                     (let ((__tmp135186
                                            (let ((__tmp135187
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t128165_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135187)))
                                           (__tmp135180
                                            (let ((__tmp135184
                                                   (let ((__tmp135185
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field128602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135185)))
                                                  (__tmp135181
                                                   (let ((__tmp135182
                                                          (let ((__tmp135183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self128164_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135183))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135182 '()))))
                                              (declare (not safe))
                                              (cons __tmp135184 __tmp135181))))
                                       (declare (not safe))
                                       (cons __tmp135186 __tmp135180))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp135179))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135178 _stx128163_)))))
                  (___kont134271134272_
                   (lambda (_L128478_ _L128479_ _L128480_)
                     (let* ((_slot128509_
                             (##structure-ref
                              (let ((__tmp135188
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L128480_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp135188))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field128511_
                             (let ()
                               (declare (not safe))
                               (hash-ref__0 _slots128167_ _slot128509_)))
                            (_expr128513_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L128478_
                                _self128164_
                                _$t128165_
                                _methods128166_
                                _slots128167_
                                _class-check128168_
                                _struct-check128169_
                                _struct-assert128170_))))
                       (let ((__tmp135189
                              (let ((__tmp135190
                                     (let ((__tmp135198
                                            (let ((__tmp135199
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t128165_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135199)))
                                           (__tmp135191
                                            (let ((__tmp135196
                                                   (let ((__tmp135197
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field128511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135197)))
                                                  (__tmp135192
                                                   (let ((__tmp135194
                                                          (let ((__tmp135195
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self128164_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135195)))
                 (__tmp135193
                  (let () (declare (not safe)) (cons _expr128513_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135194
                                                           __tmp135193))))
                                              (declare (not safe))
                                              (cons __tmp135196 __tmp135192))))
                                       (declare (not safe))
                                       (cons __tmp135198 __tmp135191))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp135190))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135189 _stx128163_)))))
                  (___kont134273134274_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx128163_
                        _self128164_
                        _$t128165_
                        _methods128166_
                        _slots128167_
                        _class-check128168_
                        _struct-check128169_
                        _struct-assert128170_)))))
              (let* ((___match134754134755_
                      (lambda (_e128376128414_
                               _hd128375128417_
                               _tl128374128419_
                               _e128379128422_
                               _hd128378128425_
                               _tl128377128427_
                               _e128382128430_
                               _hd128381128433_
                               _tl128380128435_
                               _e128385128438_
                               _hd128384128441_
                               _tl128383128443_
                               _e128388128446_
                               _hd128387128449_
                               _tl128386128451_
                               _e128391128454_
                               _hd128390128457_
                               _tl128389128459_
                               _e128394128462_
                               _hd128393128465_
                               _tl128392128467_
                               _e128397128470_
                               _hd128396128473_
                               _tl128395128475_)
                        (let ((_L128478_ _hd128396128473_)
                              (_L128479_ _hd128393128465_)
                              (_L128480_ _hd128384128441_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128479_
                                      _self128164_))
                                   (let ((__tmp135200
                                          (let ((__tmp135201
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L128480_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135201))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135200
                                      'gxc#!mutator::t)))
                              (___kont134271134272_
                               _L128478_
                               _L128479_
                               _L128480_)
                              (___kont134273134274_)))))
                     (___match134752134753_
                      (lambda (_e128376128414_
                               _hd128375128417_
                               _tl128374128419_
                               _e128379128422_
                               _hd128378128425_
                               _tl128377128427_
                               _e128382128430_
                               _hd128381128433_
                               _tl128380128435_
                               _e128385128438_
                               _hd128384128441_
                               _tl128383128443_
                               _e128388128446_
                               _hd128387128449_
                               _tl128386128451_
                               _e128391128454_
                               _hd128390128457_
                               _tl128389128459_
                               _e128394128462_
                               _hd128393128465_
                               _tl128392128467_
                               _e128397128470_
                               _hd128396128473_
                               _tl128395128475_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl128395128475_))
                            (___match134754134755_
                             _e128376128414_
                             _hd128375128417_
                             _tl128374128419_
                             _e128379128422_
                             _hd128378128425_
                             _tl128377128427_
                             _e128382128430_
                             _hd128381128433_
                             _tl128380128435_
                             _e128385128438_
                             _hd128384128441_
                             _tl128383128443_
                             _e128388128446_
                             _hd128387128449_
                             _tl128386128451_
                             _e128391128454_
                             _hd128390128457_
                             _tl128389128459_
                             _e128394128462_
                             _hd128393128465_
                             _tl128392128467_
                             _e128397128470_
                             _hd128396128473_
                             _tl128395128475_)
                            (___kont134273134274_))))
                     (___match134746134747_
                      (lambda (_e128376128414_
                               _hd128375128417_
                               _tl128374128419_
                               _e128379128422_
                               _hd128378128425_
                               _tl128377128427_
                               _e128382128430_
                               _hd128381128433_
                               _tl128380128435_
                               _e128385128438_
                               _hd128384128441_
                               _tl128383128443_
                               _e128388128446_
                               _hd128387128449_
                               _tl128386128451_
                               _e128391128454_
                               _hd128390128457_
                               _tl128389128459_
                               _e128394128462_
                               _hd128393128465_
                               _tl128392128467_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128386128451_))
                            (let ((_e128397128470_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128386128451_))))
                              (let ((_tl128395128475_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128397128470_)))
                                    (_hd128396128473_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128397128470_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl128395128475_))
                                    (___match134754134755_
                                     _e128376128414_
                                     _hd128375128417_
                                     _tl128374128419_
                                     _e128379128422_
                                     _hd128378128425_
                                     _tl128377128427_
                                     _e128382128430_
                                     _hd128381128433_
                                     _tl128380128435_
                                     _e128385128438_
                                     _hd128384128441_
                                     _tl128383128443_
                                     _e128388128446_
                                     _hd128387128449_
                                     _tl128386128451_
                                     _e128391128454_
                                     _hd128390128457_
                                     _tl128389128459_
                                     _e128394128462_
                                     _hd128393128465_
                                     _tl128392128467_
                                     _e128397128470_
                                     _hd128396128473_
                                     _tl128395128475_)
                                    (___kont134273134274_))))
                            (___kont134273134274_))))
                     (___match134692134693_
                      (lambda (_e128352128521_
                               _hd128351128524_
                               _tl128350128526_
                               _e128355128529_
                               _hd128354128532_
                               _tl128353128534_
                               _e128358128537_
                               _hd128357128540_
                               _tl128356128542_
                               _e128361128545_
                               _hd128360128548_
                               _tl128359128550_
                               _e128364128553_
                               _hd128363128556_
                               _tl128362128558_
                               _e128367128561_
                               _hd128366128564_
                               _tl128365128566_
                               _e128370128569_
                               _hd128369128572_
                               _tl128368128574_)
                        (let ((_L128577_ _hd128369128572_)
                              (_L128578_ _hd128360128548_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128577_
                                      _self128164_))
                                   (let ((__tmp135202
                                          (let ((__tmp135203
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L128578_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135203))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135202
                                      'gxc#!accessor::t)))
                              (___kont134269134270_ _L128577_ _L128578_)
                              (___kont134273134274_)))))
                     (___match134690134691_
                      (lambda (_e128352128521_
                               _hd128351128524_
                               _tl128350128526_
                               _e128355128529_
                               _hd128354128532_
                               _tl128353128534_
                               _e128358128537_
                               _hd128357128540_
                               _tl128356128542_
                               _e128361128545_
                               _hd128360128548_
                               _tl128359128550_
                               _e128364128553_
                               _hd128363128556_
                               _tl128362128558_
                               _e128367128561_
                               _hd128366128564_
                               _tl128365128566_
                               _e128370128569_
                               _hd128369128572_
                               _tl128368128574_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl128362128558_))
                            (___match134692134693_
                             _e128352128521_
                             _hd128351128524_
                             _tl128350128526_
                             _e128355128529_
                             _hd128354128532_
                             _tl128353128534_
                             _e128358128537_
                             _hd128357128540_
                             _tl128356128542_
                             _e128361128545_
                             _hd128360128548_
                             _tl128359128550_
                             _e128364128553_
                             _hd128363128556_
                             _tl128362128558_
                             _e128367128561_
                             _hd128366128564_
                             _tl128365128566_
                             _e128370128569_
                             _hd128369128572_
                             _tl128368128574_)
                            (___match134746134747_
                             _e128352128521_
                             _hd128351128524_
                             _tl128350128526_
                             _e128355128529_
                             _hd128354128532_
                             _tl128353128534_
                             _e128358128537_
                             _hd128357128540_
                             _tl128356128542_
                             _e128361128545_
                             _hd128360128548_
                             _tl128359128550_
                             _e128364128553_
                             _hd128363128556_
                             _tl128362128558_
                             _e128367128561_
                             _hd128366128564_
                             _tl128365128566_
                             _e128370128569_
                             _hd128369128572_
                             _tl128368128574_))))
                     (___match134636134637_
                      (lambda (_e128317128610_
                               _hd128316128613_
                               _tl128315128615_
                               _e128320128618_
                               _hd128319128621_
                               _tl128318128623_
                               _e128323128626_
                               _hd128322128629_
                               _tl128321128631_
                               _e128326128634_
                               _hd128325128637_
                               _tl128324128639_
                               _e128329128642_
                               _hd128328128645_
                               _tl128327128647_
                               _e128332128650_
                               _hd128331128653_
                               _tl128330128655_
                               _e128335128658_
                               _hd128334128661_
                               _tl128333128663_
                               _e128338128666_
                               _hd128337128669_
                               _tl128336128671_
                               _e128341128674_
                               _hd128340128677_
                               _tl128339128679_
                               _e128344128682_
                               _hd128343128685_
                               _tl128342128687_
                               _e128347128690_
                               _hd128346128693_
                               _tl128345128695_)
                        (let ((_L128698_ _hd128346128693_)
                              (_L128699_ _hd128343128685_)
                              (_L128700_ _hd128334128661_)
                              (_L128701_ _hd128325128637_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L128701_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L128701_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128700_
                                      _self128164_)))
                              (___kont134267134268_
                               _L128698_
                               _L128699_
                               _L128700_
                               _L128701_)
                              (___kont134273134274_)))))
                     (___match134628134629_
                      (lambda (_e128317128610_
                               _hd128316128613_
                               _tl128315128615_
                               _e128320128618_
                               _hd128319128621_
                               _tl128318128623_
                               _e128323128626_
                               _hd128322128629_
                               _tl128321128631_
                               _e128326128634_
                               _hd128325128637_
                               _tl128324128639_
                               _e128329128642_
                               _hd128328128645_
                               _tl128327128647_
                               _e128332128650_
                               _hd128331128653_
                               _tl128330128655_
                               _e128335128658_
                               _hd128334128661_
                               _tl128333128663_
                               _e128338128666_
                               _hd128337128669_
                               _tl128336128671_
                               _e128341128674_
                               _hd128340128677_
                               _tl128339128679_
                               _e128344128682_
                               _hd128343128685_
                               _tl128342128687_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128336128671_))
                            (let ((_e128347128690_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128336128671_))))
                              (let ((_tl128345128695_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128347128690_)))
                                    (_hd128346128693_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128347128690_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl128345128695_))
                                    (___match134636134637_
                                     _e128317128610_
                                     _hd128316128613_
                                     _tl128315128615_
                                     _e128320128618_
                                     _hd128319128621_
                                     _tl128318128623_
                                     _e128323128626_
                                     _hd128322128629_
                                     _tl128321128631_
                                     _e128326128634_
                                     _hd128325128637_
                                     _tl128324128639_
                                     _e128329128642_
                                     _hd128328128645_
                                     _tl128327128647_
                                     _e128332128650_
                                     _hd128331128653_
                                     _tl128330128655_
                                     _e128335128658_
                                     _hd128334128661_
                                     _tl128333128663_
                                     _e128338128666_
                                     _hd128337128669_
                                     _tl128336128671_
                                     _e128341128674_
                                     _hd128340128677_
                                     _tl128339128679_
                                     _e128344128682_
                                     _hd128343128685_
                                     _tl128342128687_
                                     _e128347128690_
                                     _hd128346128693_
                                     _tl128345128695_)
                                    (___kont134273134274_))))
                            (___match134752134753_
                             _e128317128610_
                             _hd128316128613_
                             _tl128315128615_
                             _e128320128618_
                             _hd128319128621_
                             _tl128318128623_
                             _e128323128626_
                             _hd128322128629_
                             _tl128321128631_
                             _e128326128634_
                             _hd128325128637_
                             _tl128324128639_
                             _e128329128642_
                             _hd128328128645_
                             _tl128327128647_
                             _e128332128650_
                             _hd128331128653_
                             _tl128330128655_
                             _e128335128658_
                             _hd128334128661_
                             _tl128333128663_
                             _e128338128666_
                             _hd128337128669_
                             _tl128336128671_))))
                     (___match134550134551_
                      (lambda (_e128283128744_
                               _hd128282128747_
                               _tl128281128749_
                               _e128286128752_
                               _hd128285128755_
                               _tl128284128757_
                               _e128289128760_
                               _hd128288128763_
                               _tl128287128765_
                               _e128292128768_
                               _hd128291128771_
                               _tl128290128773_
                               _e128295128776_
                               _hd128294128779_
                               _tl128293128781_
                               _e128298128784_
                               _hd128297128787_
                               _tl128296128789_
                               _e128301128792_
                               _hd128300128795_
                               _tl128299128797_
                               _e128304128800_
                               _hd128303128803_
                               _tl128302128805_
                               _e128307128808_
                               _hd128306128811_
                               _tl128305128813_
                               _e128310128816_
                               _hd128309128819_
                               _tl128308128821_)
                        (let ((_L128824_ _hd128309128819_)
                              (_L128825_ _hd128300128795_)
                              (_L128826_ _hd128291128771_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L128826_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L128826_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128825_
                                      _self128164_)))
                              (___kont134265134266_
                               _L128824_
                               _L128825_
                               _L128826_)
                              (___match134754134755_
                               _e128283128744_
                               _hd128282128747_
                               _tl128281128749_
                               _e128286128752_
                               _hd128285128755_
                               _tl128284128757_
                               _e128289128760_
                               _hd128288128763_
                               _tl128287128765_
                               _e128292128768_
                               _hd128291128771_
                               _tl128290128773_
                               _e128295128776_
                               _hd128294128779_
                               _tl128293128781_
                               _e128298128784_
                               _hd128297128787_
                               _tl128296128789_
                               _e128301128792_
                               _hd128300128795_
                               _tl128299128797_
                               _e128304128800_
                               _hd128303128803_
                               _tl128302128805_)))))
                     (___match134548134549_
                      (lambda (_e128283128744_
                               _hd128282128747_
                               _tl128281128749_
                               _e128286128752_
                               _hd128285128755_
                               _tl128284128757_
                               _e128289128760_
                               _hd128288128763_
                               _tl128287128765_
                               _e128292128768_
                               _hd128291128771_
                               _tl128290128773_
                               _e128295128776_
                               _hd128294128779_
                               _tl128293128781_
                               _e128298128784_
                               _hd128297128787_
                               _tl128296128789_
                               _e128301128792_
                               _hd128300128795_
                               _tl128299128797_
                               _e128304128800_
                               _hd128303128803_
                               _tl128302128805_
                               _e128307128808_
                               _hd128306128811_
                               _tl128305128813_
                               _e128310128816_
                               _hd128309128819_
                               _tl128308128821_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl128302128805_))
                            (___match134550134551_
                             _e128283128744_
                             _hd128282128747_
                             _tl128281128749_
                             _e128286128752_
                             _hd128285128755_
                             _tl128284128757_
                             _e128289128760_
                             _hd128288128763_
                             _tl128287128765_
                             _e128292128768_
                             _hd128291128771_
                             _tl128290128773_
                             _e128295128776_
                             _hd128294128779_
                             _tl128293128781_
                             _e128298128784_
                             _hd128297128787_
                             _tl128296128789_
                             _e128301128792_
                             _hd128300128795_
                             _tl128299128797_
                             _e128304128800_
                             _hd128303128803_
                             _tl128302128805_
                             _e128307128808_
                             _hd128306128811_
                             _tl128305128813_
                             _e128310128816_
                             _hd128309128819_
                             _tl128308128821_)
                            (___match134628134629_
                             _e128283128744_
                             _hd128282128747_
                             _tl128281128749_
                             _e128286128752_
                             _hd128285128755_
                             _tl128284128757_
                             _e128289128760_
                             _hd128288128763_
                             _tl128287128765_
                             _e128292128768_
                             _hd128291128771_
                             _tl128290128773_
                             _e128295128776_
                             _hd128294128779_
                             _tl128293128781_
                             _e128298128784_
                             _hd128297128787_
                             _tl128296128789_
                             _e128301128792_
                             _hd128300128795_
                             _tl128299128797_
                             _e128304128800_
                             _hd128303128803_
                             _tl128302128805_
                             _e128307128808_
                             _hd128306128811_
                             _tl128305128813_
                             _e128310128816_
                             _hd128309128819_
                             _tl128308128821_))))
                     (___match134538134539_
                      (lambda (_e128283128744_
                               _hd128282128747_
                               _tl128281128749_
                               _e128286128752_
                               _hd128285128755_
                               _tl128284128757_
                               _e128289128760_
                               _hd128288128763_
                               _tl128287128765_
                               _e128292128768_
                               _hd128291128771_
                               _tl128290128773_
                               _e128295128776_
                               _hd128294128779_
                               _tl128293128781_
                               _e128298128784_
                               _hd128297128787_
                               _tl128296128789_
                               _e128301128792_
                               _hd128300128795_
                               _tl128299128797_
                               _e128304128800_
                               _hd128303128803_
                               _tl128302128805_
                               _e128307128808_
                               _hd128306128811_
                               _tl128305128813_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd128306128811_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128305128813_))
                                (let ((_e128310128816_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128305128813_))))
                                  (let ((_tl128308128821_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128310128816_)))
                                        (_hd128309128819_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128310128816_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl128308128821_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl128302128805_))
                                            (___match134550134551_
                                             _e128283128744_
                                             _hd128282128747_
                                             _tl128281128749_
                                             _e128286128752_
                                             _hd128285128755_
                                             _tl128284128757_
                                             _e128289128760_
                                             _hd128288128763_
                                             _tl128287128765_
                                             _e128292128768_
                                             _hd128291128771_
                                             _tl128290128773_
                                             _e128295128776_
                                             _hd128294128779_
                                             _tl128293128781_
                                             _e128298128784_
                                             _hd128297128787_
                                             _tl128296128789_
                                             _e128301128792_
                                             _hd128300128795_
                                             _tl128299128797_
                                             _e128304128800_
                                             _hd128303128803_
                                             _tl128302128805_
                                             _e128307128808_
                                             _hd128306128811_
                                             _tl128305128813_
                                             _e128310128816_
                                             _hd128309128819_
                                             _tl128308128821_)
                                            (___match134628134629_
                                             _e128283128744_
                                             _hd128282128747_
                                             _tl128281128749_
                                             _e128286128752_
                                             _hd128285128755_
                                             _tl128284128757_
                                             _e128289128760_
                                             _hd128288128763_
                                             _tl128287128765_
                                             _e128292128768_
                                             _hd128291128771_
                                             _tl128290128773_
                                             _e128295128776_
                                             _hd128294128779_
                                             _tl128293128781_
                                             _e128298128784_
                                             _hd128297128787_
                                             _tl128296128789_
                                             _e128301128792_
                                             _hd128300128795_
                                             _tl128299128797_
                                             _e128304128800_
                                             _hd128303128803_
                                             _tl128302128805_
                                             _e128307128808_
                                             _hd128306128811_
                                             _tl128305128813_
                                             _e128310128816_
                                             _hd128309128819_
                                             _tl128308128821_))
                                        (___match134752134753_
                                         _e128283128744_
                                         _hd128282128747_
                                         _tl128281128749_
                                         _e128286128752_
                                         _hd128285128755_
                                         _tl128284128757_
                                         _e128289128760_
                                         _hd128288128763_
                                         _tl128287128765_
                                         _e128292128768_
                                         _hd128291128771_
                                         _tl128290128773_
                                         _e128295128776_
                                         _hd128294128779_
                                         _tl128293128781_
                                         _e128298128784_
                                         _hd128297128787_
                                         _tl128296128789_
                                         _e128301128792_
                                         _hd128300128795_
                                         _tl128299128797_
                                         _e128304128800_
                                         _hd128303128803_
                                         _tl128302128805_))))
                                (___match134752134753_
                                 _e128283128744_
                                 _hd128282128747_
                                 _tl128281128749_
                                 _e128286128752_
                                 _hd128285128755_
                                 _tl128284128757_
                                 _e128289128760_
                                 _hd128288128763_
                                 _tl128287128765_
                                 _e128292128768_
                                 _hd128291128771_
                                 _tl128290128773_
                                 _e128295128776_
                                 _hd128294128779_
                                 _tl128293128781_
                                 _e128298128784_
                                 _hd128297128787_
                                 _tl128296128789_
                                 _e128301128792_
                                 _hd128300128795_
                                 _tl128299128797_
                                 _e128304128800_
                                 _hd128303128803_
                                 _tl128302128805_))
                            (___match134752134753_
                             _e128283128744_
                             _hd128282128747_
                             _tl128281128749_
                             _e128286128752_
                             _hd128285128755_
                             _tl128284128757_
                             _e128289128760_
                             _hd128288128763_
                             _tl128287128765_
                             _e128292128768_
                             _hd128291128771_
                             _tl128290128773_
                             _e128295128776_
                             _hd128294128779_
                             _tl128293128781_
                             _e128298128784_
                             _hd128297128787_
                             _tl128296128789_
                             _e128301128792_
                             _hd128300128795_
                             _tl128299128797_
                             _e128304128800_
                             _hd128303128803_
                             _tl128302128805_))))
                     (___match134470134471_
                      (lambda (_e128232128865_
                               _hd128231128868_
                               _tl128230128870_
                               _e128235128873_
                               _hd128234128876_
                               _tl128233128878_
                               _e128238128881_
                               _hd128237128884_
                               _tl128236128886_
                               _e128241128889_
                               _hd128240128892_
                               _tl128239128894_
                               _e128244128897_
                               _hd128243128900_
                               _tl128242128902_
                               _e128247128905_
                               _hd128246128908_
                               _tl128245128910_
                               _e128250128913_
                               _hd128249128916_
                               _tl128248128918_
                               _e128253128921_
                               _hd128252128924_
                               _tl128251128926_
                               _e128256128929_
                               _hd128255128932_
                               _tl128254128934_
                               _e128259128937_
                               _hd128258128940_
                               _tl128257128942_
                               _e128262128945_
                               _hd128261128948_
                               _tl128260128950_
                               _e128265128953_
                               _hd128264128956_
                               _tl128263128958_
                               _e128268128961_
                               _hd128267128964_
                               _tl128266128966_
                               ___splice134263134264_
                               _target128269128969_
                               _tl128271128971_)
                        (letrec ((_loop128272128974_
                                  (lambda (_hd128270128977_ _args128276128979_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd128270128977_))
                                        (let ((_e128273128982_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd128270128977_))))
                                          (let ((_lp-tl128275128987_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128273128982_)))
                                                (_lp-hd128274128985_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128273128982_))))
                                            (let ((__tmp135204
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd128274128985_
                                                           _args128276128979_))))
                                              (declare (not safe))
                                              (_loop128272128974_
                                               _lp-tl128275128987_
                                               __tmp135204))))
                                        (let ((_args128277128990_
                                               (reverse _args128276128979_)))
                                          (let ((_L128993_ _args128277128990_)
                                                (_L128994_ _hd128267128964_)
                                                (_L128995_ _hd128258128940_)
                                                (_L128996_ _hd128249128916_)
                                                (_L128997_ _hd128240128892_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L128997_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L128996_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L128995_
                                                        _self128164_)))
                                                (___kont134261134262_
                                                 _L128993_
                                                 _L128994_
                                                 _L128995_
                                                 _L128996_
                                                 _L128997_)
                                                (___kont134273134274_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop128272128974_ _target128269128969_ '())))))
                     (___match134428134429_
                      (lambda (_e128232128865_
                               _hd128231128868_
                               _tl128230128870_
                               _e128235128873_
                               _hd128234128876_
                               _tl128233128878_
                               _e128238128881_
                               _hd128237128884_
                               _tl128236128886_
                               _e128241128889_
                               _hd128240128892_
                               _tl128239128894_
                               _e128244128897_
                               _hd128243128900_
                               _tl128242128902_
                               _e128247128905_
                               _hd128246128908_
                               _tl128245128910_
                               _e128250128913_
                               _hd128249128916_
                               _tl128248128918_
                               _e128253128921_
                               _hd128252128924_
                               _tl128251128926_
                               _e128256128929_
                               _hd128255128932_
                               _tl128254128934_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd128255128932_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128254128934_))
                                (let ((_e128259128937_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128254128934_))))
                                  (let ((_tl128257128942_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128259128937_)))
                                        (_hd128258128940_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128259128937_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl128257128942_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl128251128926_))
                                            (let ((_e128262128945_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl128251128926_))))
                                              (let ((_tl128260128950_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e128262128945_)))
                                                    (_hd128261128948_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e128262128945_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd128261128948_))
                                                    (let ((_e128265128953_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd128261128948_))))
                                                      (let ((_tl128263128958_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e128265128953_)))
                    (_hd128264128956_
                     (let () (declare (not safe)) (##car _e128265128953_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd128264128956_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd128264128956_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128263128958_))
                            (let ((_e128268128961_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128263128958_))))
                              (let ((_tl128266128966_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128268128961_)))
                                    (_hd128267128964_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128268128961_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl128266128966_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl128260128950_))
                                        (let ((___splice134263134264_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl128260128950_
                                                  '0))))
                                          (let ((_tl128271128971_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice134263134264_
                                                    '1)))
                                                (_target128269128969_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice134263134264_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl128271128971_))
                                                (___match134470134471_
                                                 _e128232128865_
                                                 _hd128231128868_
                                                 _tl128230128870_
                                                 _e128235128873_
                                                 _hd128234128876_
                                                 _tl128233128878_
                                                 _e128238128881_
                                                 _hd128237128884_
                                                 _tl128236128886_
                                                 _e128241128889_
                                                 _hd128240128892_
                                                 _tl128239128894_
                                                 _e128244128897_
                                                 _hd128243128900_
                                                 _tl128242128902_
                                                 _e128247128905_
                                                 _hd128246128908_
                                                 _tl128245128910_
                                                 _e128250128913_
                                                 _hd128249128916_
                                                 _tl128248128918_
                                                 _e128253128921_
                                                 _hd128252128924_
                                                 _tl128251128926_
                                                 _e128256128929_
                                                 _hd128255128932_
                                                 _tl128254128934_
                                                 _e128259128937_
                                                 _hd128258128940_
                                                 _tl128257128942_
                                                 _e128262128945_
                                                 _hd128261128948_
                                                 _tl128260128950_
                                                 _e128265128953_
                                                 _hd128264128956_
                                                 _tl128263128958_
                                                 _e128268128961_
                                                 _hd128267128964_
                                                 _tl128266128966_
                                                 ___splice134263134264_
                                                 _target128269128969_
                                                 _tl128271128971_)
                                                (___kont134273134274_))))
                                        (___kont134273134274_))
                                    (___kont134273134274_))))
                            (___kont134273134274_))
                        (___kont134273134274_))
                    (___kont134273134274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134273134274_))))
                                            (___match134752134753_
                                             _e128232128865_
                                             _hd128231128868_
                                             _tl128230128870_
                                             _e128235128873_
                                             _hd128234128876_
                                             _tl128233128878_
                                             _e128238128881_
                                             _hd128237128884_
                                             _tl128236128886_
                                             _e128241128889_
                                             _hd128240128892_
                                             _tl128239128894_
                                             _e128244128897_
                                             _hd128243128900_
                                             _tl128242128902_
                                             _e128247128905_
                                             _hd128246128908_
                                             _tl128245128910_
                                             _e128250128913_
                                             _hd128249128916_
                                             _tl128248128918_
                                             _e128253128921_
                                             _hd128252128924_
                                             _tl128251128926_))
                                        (___match134752134753_
                                         _e128232128865_
                                         _hd128231128868_
                                         _tl128230128870_
                                         _e128235128873_
                                         _hd128234128876_
                                         _tl128233128878_
                                         _e128238128881_
                                         _hd128237128884_
                                         _tl128236128886_
                                         _e128241128889_
                                         _hd128240128892_
                                         _tl128239128894_
                                         _e128244128897_
                                         _hd128243128900_
                                         _tl128242128902_
                                         _e128247128905_
                                         _hd128246128908_
                                         _tl128245128910_
                                         _e128250128913_
                                         _hd128249128916_
                                         _tl128248128918_
                                         _e128253128921_
                                         _hd128252128924_
                                         _tl128251128926_))))
                                (___match134752134753_
                                 _e128232128865_
                                 _hd128231128868_
                                 _tl128230128870_
                                 _e128235128873_
                                 _hd128234128876_
                                 _tl128233128878_
                                 _e128238128881_
                                 _hd128237128884_
                                 _tl128236128886_
                                 _e128241128889_
                                 _hd128240128892_
                                 _tl128239128894_
                                 _e128244128897_
                                 _hd128243128900_
                                 _tl128242128902_
                                 _e128247128905_
                                 _hd128246128908_
                                 _tl128245128910_
                                 _e128250128913_
                                 _hd128249128916_
                                 _tl128248128918_
                                 _e128253128921_
                                 _hd128252128924_
                                 _tl128251128926_))
                            (___match134538134539_
                             _e128232128865_
                             _hd128231128868_
                             _tl128230128870_
                             _e128235128873_
                             _hd128234128876_
                             _tl128233128878_
                             _e128238128881_
                             _hd128237128884_
                             _tl128236128886_
                             _e128241128889_
                             _hd128240128892_
                             _tl128239128894_
                             _e128244128897_
                             _hd128243128900_
                             _tl128242128902_
                             _e128247128905_
                             _hd128246128908_
                             _tl128245128910_
                             _e128250128913_
                             _hd128249128916_
                             _tl128248128918_
                             _e128253128921_
                             _hd128252128924_
                             _tl128251128926_
                             _e128256128929_
                             _hd128255128932_
                             _tl128254128934_))))
                     (___match134360134361_
                      (lambda (_e128188129057_
                               _hd128187129060_
                               _tl128186129062_
                               _e128191129065_
                               _hd128190129068_
                               _tl128189129070_
                               _e128194129073_
                               _hd128193129076_
                               _tl128192129078_
                               _e128197129081_
                               _hd128196129084_
                               _tl128195129086_
                               _e128200129089_
                               _hd128199129092_
                               _tl128198129094_
                               _e128203129097_
                               _hd128202129100_
                               _tl128201129102_
                               _e128206129105_
                               _hd128205129108_
                               _tl128204129110_
                               _e128209129113_
                               _hd128208129116_
                               _tl128207129118_
                               _e128212129121_
                               _hd128211129124_
                               _tl128210129126_
                               _e128215129129_
                               _hd128214129132_
                               _tl128213129134_
                               ___splice134259134260_
                               _target128216129137_
                               _tl128218129139_)
                        (letrec ((_loop128219129142_
                                  (lambda (_hd128217129145_ _args128223129147_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd128217129145_))
                                        (let ((_e128220129150_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd128217129145_))))
                                          (let ((_lp-tl128222129155_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128220129150_)))
                                                (_lp-hd128221129153_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128220129150_))))
                                            (let ((__tmp135205
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd128221129153_
                                                           _args128223129147_))))
                                              (declare (not safe))
                                              (_loop128219129142_
                                               _lp-tl128222129155_
                                               __tmp135205))))
                                        (let ((_args128224129158_
                                               (reverse _args128223129147_)))
                                          (let ((_L129161_ _args128224129158_)
                                                (_L129162_ _hd128214129132_)
                                                (_L129163_ _hd128205129108_)
                                                (_L129164_ _hd128196129084_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L129164_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L129163_
                                                        _self128164_)))
                                                (___kont134257134258_
                                                 _L129161_
                                                 _L129162_
                                                 _L129163_
                                                 _L129164_)
                                                (___match134548134549_
                                                 _e128188129057_
                                                 _hd128187129060_
                                                 _tl128186129062_
                                                 _e128191129065_
                                                 _hd128190129068_
                                                 _tl128189129070_
                                                 _e128194129073_
                                                 _hd128193129076_
                                                 _tl128192129078_
                                                 _e128197129081_
                                                 _hd128196129084_
                                                 _tl128195129086_
                                                 _e128200129089_
                                                 _hd128199129092_
                                                 _tl128198129094_
                                                 _e128203129097_
                                                 _hd128202129100_
                                                 _tl128201129102_
                                                 _e128206129105_
                                                 _hd128205129108_
                                                 _tl128204129110_
                                                 _e128209129113_
                                                 _hd128208129116_
                                                 _tl128207129118_
                                                 _e128212129121_
                                                 _hd128211129124_
                                                 _tl128210129126_
                                                 _e128215129129_
                                                 _hd128214129132_
                                                 _tl128213129134_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop128219129142_ _target128216129137_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx134255134256_))
                    (let ((_e128188129057_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx134255134256_))))
                      (let ((_tl128186129062_
                             (let ()
                               (declare (not safe))
                               (##cdr _e128188129057_)))
                            (_hd128187129060_
                             (let ()
                               (declare (not safe))
                               (##car _e128188129057_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128186129062_))
                            (let ((_e128191129065_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128186129062_))))
                              (let ((_tl128189129070_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128191129065_)))
                                    (_hd128190129068_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128191129065_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd128190129068_))
                                    (let ((_e128194129073_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd128190129068_))))
                                      (let ((_tl128192129078_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e128194129073_)))
                                            (_hd128193129076_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e128194129073_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd128193129076_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd128193129076_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl128192129078_))
                                                    (let ((_e128197129081_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl128192129078_))))
                                                      (let ((_tl128195129086_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e128197129081_)))
                    (_hd128196129084_
                     (let () (declare (not safe)) (##car _e128197129081_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl128195129086_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl128189129070_))
                        (let ((_e128200129089_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl128189129070_))))
                          (let ((_tl128198129094_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e128200129089_)))
                                (_hd128199129092_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e128200129089_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd128199129092_))
                                (let ((_e128203129097_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd128199129092_))))
                                  (let ((_tl128201129102_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128203129097_)))
                                        (_hd128202129100_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128203129097_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd128202129100_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd128202129100_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl128201129102_))
                                                (let ((_e128206129105_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl128201129102_))))
                                                  (let ((_tl128204129110_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e128206129105_)))
                                                        (_hd128205129108_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e128206129105_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl128204129110_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl128198129094_))
                                                            (let ((_e128209129113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl128198129094_))))
                      (let ((_tl128207129118_
                             (let ()
                               (declare (not safe))
                               (##cdr _e128209129113_)))
                            (_hd128208129116_
                             (let ()
                               (declare (not safe))
                               (##car _e128209129113_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd128208129116_))
                            (let ((_e128212129121_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd128208129116_))))
                              (let ((_tl128210129126_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128212129121_)))
                                    (_hd128211129124_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128212129121_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd128211129124_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd128211129124_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl128210129126_))
                                            (let ((_e128215129129_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl128210129126_))))
                                              (let ((_tl128213129134_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e128215129129_)))
                                                    (_hd128214129132_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e128215129129_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl128213129134_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl128207129118_))
                                                        (let ((___splice134259134260_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl128207129118_ '0))))
                  (let ((_tl128218129139_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice134259134260_ '1)))
                        (_target128216129137_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice134259134260_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl128218129139_))
                        (___match134360134361_
                         _e128188129057_
                         _hd128187129060_
                         _tl128186129062_
                         _e128191129065_
                         _hd128190129068_
                         _tl128189129070_
                         _e128194129073_
                         _hd128193129076_
                         _tl128192129078_
                         _e128197129081_
                         _hd128196129084_
                         _tl128195129086_
                         _e128200129089_
                         _hd128199129092_
                         _tl128198129094_
                         _e128203129097_
                         _hd128202129100_
                         _tl128201129102_
                         _e128206129105_
                         _hd128205129108_
                         _tl128204129110_
                         _e128209129113_
                         _hd128208129116_
                         _tl128207129118_
                         _e128212129121_
                         _hd128211129124_
                         _tl128210129126_
                         _e128215129129_
                         _hd128214129132_
                         _tl128213129134_
                         ___splice134259134260_
                         _target128216129137_
                         _tl128218129139_)
                        (___match134548134549_
                         _e128188129057_
                         _hd128187129060_
                         _tl128186129062_
                         _e128191129065_
                         _hd128190129068_
                         _tl128189129070_
                         _e128194129073_
                         _hd128193129076_
                         _tl128192129078_
                         _e128197129081_
                         _hd128196129084_
                         _tl128195129086_
                         _e128200129089_
                         _hd128199129092_
                         _tl128198129094_
                         _e128203129097_
                         _hd128202129100_
                         _tl128201129102_
                         _e128206129105_
                         _hd128205129108_
                         _tl128204129110_
                         _e128209129113_
                         _hd128208129116_
                         _tl128207129118_
                         _e128212129121_
                         _hd128211129124_
                         _tl128210129126_
                         _e128215129129_
                         _hd128214129132_
                         _tl128213129134_))))
                (___match134548134549_
                 _e128188129057_
                 _hd128187129060_
                 _tl128186129062_
                 _e128191129065_
                 _hd128190129068_
                 _tl128189129070_
                 _e128194129073_
                 _hd128193129076_
                 _tl128192129078_
                 _e128197129081_
                 _hd128196129084_
                 _tl128195129086_
                 _e128200129089_
                 _hd128199129092_
                 _tl128198129094_
                 _e128203129097_
                 _hd128202129100_
                 _tl128201129102_
                 _e128206129105_
                 _hd128205129108_
                 _tl128204129110_
                 _e128209129113_
                 _hd128208129116_
                 _tl128207129118_
                 _e128212129121_
                 _hd128211129124_
                 _tl128210129126_
                 _e128215129129_
                 _hd128214129132_
                 _tl128213129134_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match134752134753_
                                                     _e128188129057_
                                                     _hd128187129060_
                                                     _tl128186129062_
                                                     _e128191129065_
                                                     _hd128190129068_
                                                     _tl128189129070_
                                                     _e128194129073_
                                                     _hd128193129076_
                                                     _tl128192129078_
                                                     _e128197129081_
                                                     _hd128196129084_
                                                     _tl128195129086_
                                                     _e128200129089_
                                                     _hd128199129092_
                                                     _tl128198129094_
                                                     _e128203129097_
                                                     _hd128202129100_
                                                     _tl128201129102_
                                                     _e128206129105_
                                                     _hd128205129108_
                                                     _tl128204129110_
                                                     _e128209129113_
                                                     _hd128208129116_
                                                     _tl128207129118_))))
                                            (___match134752134753_
                                             _e128188129057_
                                             _hd128187129060_
                                             _tl128186129062_
                                             _e128191129065_
                                             _hd128190129068_
                                             _tl128189129070_
                                             _e128194129073_
                                             _hd128193129076_
                                             _tl128192129078_
                                             _e128197129081_
                                             _hd128196129084_
                                             _tl128195129086_
                                             _e128200129089_
                                             _hd128199129092_
                                             _tl128198129094_
                                             _e128203129097_
                                             _hd128202129100_
                                             _tl128201129102_
                                             _e128206129105_
                                             _hd128205129108_
                                             _tl128204129110_
                                             _e128209129113_
                                             _hd128208129116_
                                             _tl128207129118_))
                                        (___match134428134429_
                                         _e128188129057_
                                         _hd128187129060_
                                         _tl128186129062_
                                         _e128191129065_
                                         _hd128190129068_
                                         _tl128189129070_
                                         _e128194129073_
                                         _hd128193129076_
                                         _tl128192129078_
                                         _e128197129081_
                                         _hd128196129084_
                                         _tl128195129086_
                                         _e128200129089_
                                         _hd128199129092_
                                         _tl128198129094_
                                         _e128203129097_
                                         _hd128202129100_
                                         _tl128201129102_
                                         _e128206129105_
                                         _hd128205129108_
                                         _tl128204129110_
                                         _e128209129113_
                                         _hd128208129116_
                                         _tl128207129118_
                                         _e128212129121_
                                         _hd128211129124_
                                         _tl128210129126_))
                                    (___match134752134753_
                                     _e128188129057_
                                     _hd128187129060_
                                     _tl128186129062_
                                     _e128191129065_
                                     _hd128190129068_
                                     _tl128189129070_
                                     _e128194129073_
                                     _hd128193129076_
                                     _tl128192129078_
                                     _e128197129081_
                                     _hd128196129084_
                                     _tl128195129086_
                                     _e128200129089_
                                     _hd128199129092_
                                     _tl128198129094_
                                     _e128203129097_
                                     _hd128202129100_
                                     _tl128201129102_
                                     _e128206129105_
                                     _hd128205129108_
                                     _tl128204129110_
                                     _e128209129113_
                                     _hd128208129116_
                                     _tl128207129118_))))
                            (___match134752134753_
                             _e128188129057_
                             _hd128187129060_
                             _tl128186129062_
                             _e128191129065_
                             _hd128190129068_
                             _tl128189129070_
                             _e128194129073_
                             _hd128193129076_
                             _tl128192129078_
                             _e128197129081_
                             _hd128196129084_
                             _tl128195129086_
                             _e128200129089_
                             _hd128199129092_
                             _tl128198129094_
                             _e128203129097_
                             _hd128202129100_
                             _tl128201129102_
                             _e128206129105_
                             _hd128205129108_
                             _tl128204129110_
                             _e128209129113_
                             _hd128208129116_
                             _tl128207129118_))))
                    (___match134690134691_
                     _e128188129057_
                     _hd128187129060_
                     _tl128186129062_
                     _e128191129065_
                     _hd128190129068_
                     _tl128189129070_
                     _e128194129073_
                     _hd128193129076_
                     _tl128192129078_
                     _e128197129081_
                     _hd128196129084_
                     _tl128195129086_
                     _e128200129089_
                     _hd128199129092_
                     _tl128198129094_
                     _e128203129097_
                     _hd128202129100_
                     _tl128201129102_
                     _e128206129105_
                     _hd128205129108_
                     _tl128204129110_))
                (___kont134273134274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont134273134274_))
                                            (___kont134273134274_))
                                        (___kont134273134274_))))
                                (___kont134273134274_))))
                        (___kont134273134274_))
                    (___kont134273134274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134273134274_))
                                                (___kont134273134274_))
                                            (___kont134273134274_))))
                                    (___kont134273134274_))))
                            (___kont134273134274_))))
                    (___kont134273134274_))))))))))
