(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1696371938)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl44212_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp45816 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl44212_ __tmp45816))
           (let ()
             (declare (not safe))
             (table-set! _tbl44212_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl44212_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl44212_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl44212_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl44212_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx44205_ . _args44207_)
        (let ((__tmp45818
               (lambda () (apply gxc#compile-e _stx44205_ _args44207_)))
              (__tmp45817 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp45818
           gxc#current-compile-methods
           __tmp45817))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl44202_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp45819 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl44202_ __tmp45819))
           (let ()
             (declare (not safe))
             (table-set! _tbl44202_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl44202_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl44202_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl44202_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl44202_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl44202_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl44202_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl44202_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl44202_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl44202_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl44202_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl44202_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl44202_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl44202_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl44202_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl44202_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl44202_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx44195_ . _args44197_)
        (let ((__tmp45821
               (lambda () (apply gxc#compile-e _stx44195_ _args44197_)))
              (__tmp45820 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp45821
           gxc#current-compile-methods
           __tmp45820))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl44192_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp45822 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl44192_ __tmp45822))
           (let ()
             (declare (not safe))
             (table-set! _tbl44192_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl44192_ '%#call gxc#subst-object-refs-call%))
           _tbl44192_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx44185_ . _args44187_)
        (let ((__tmp45824
               (lambda () (apply gxc#compile-e _stx44185_ _args44187_)))
              (__tmp45823 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp45824
           gxc#current-compile-methods
           __tmp45823))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx40855_)
        (letrec ((_generate-method-bind40857_
                  (lambda (_$t44179_ _id44180_ _$id44181_)
                    (let ((_$tmp44183_ (make-symbol (gensym '__tmp))))
                      (let ((__tmp45869
                             (let ()
                               (declare (not safe))
                               (cons _$id44181_ '())))
                            (__tmp45825
                             (let ((__tmp45826
                                    (let ((__tmp45827
                                           (let ((__tmp45867
                                                  (let ((__tmp45868
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp45868)))
                                                 (__tmp45828
                                                  (let ((__tmp45829
                                                         (let ((__tmp45830
                                                                (let ((__tmp45831
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp45832
                                      (let ((__tmp45833
                                             (let ((__tmp45853
                                                    (let ((__tmp45854
                                                           (let ((__tmp45866
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$tmp44183_ '())))
                         (__tmp45855
                          (let ((__tmp45856
                                 (let ((__tmp45857
                                        (let ((__tmp45864
                                               (let ((__tmp45865
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp45865)))
                                              (__tmp45858
                                               (let ((__tmp45862
                                                      (let ((__tmp45863
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t44179_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp45863)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45859
                                                      (let ((__tmp45860
                                                             (let ((__tmp45861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id44180_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp45861))))
                (declare (not safe))
                (cons __tmp45860 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp45862
                                                       __tmp45859))))
                                          (declare (not safe))
                                          (cons __tmp45864 __tmp45858))))
                                   (declare (not safe))
                                   (cons '%#call __tmp45857))))
                            (declare (not safe))
                            (cons __tmp45856 '()))))
                     (declare (not safe))
                     (cons __tmp45866 __tmp45855))))
              (declare (not safe))
              (cons __tmp45854 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp45834
                                                    (let ((__tmp45835
                                                           (let ((__tmp45836
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp45851
                                 (let ((__tmp45852
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp44183_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp45852)))
                                (__tmp45837
                                 (let ((__tmp45849
                                        (let ((__tmp45850
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp44183_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp45850)))
                                       (__tmp45838
                                        (let ((__tmp45839
                                               (let ((__tmp45840
                                                      (let ((__tmp45847
                                                             (let ((__tmp45848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp45848)))
                    (__tmp45841
                     (let ((__tmp45845
                            (let ((__tmp45846
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp45846)))
                           (__tmp45842
                            (let ((__tmp45843
                                   (let ((__tmp45844
                                          (let ()
                                            (declare (not safe))
                                            (cons _id44180_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp45844))))
                              (declare (not safe))
                              (cons __tmp45843 '()))))
                       (declare (not safe))
                       (cons __tmp45845 __tmp45842))))
                (declare (not safe))
                (cons __tmp45847 __tmp45841))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp45840))))
                                          (declare (not safe))
                                          (cons __tmp45839 '()))))
                                   (declare (not safe))
                                   (cons __tmp45849 __tmp45838))))
                            (declare (not safe))
                            (cons __tmp45851 __tmp45837))))
                     (declare (not safe))
                     (cons '%#if __tmp45836))))
              (declare (not safe))
              (cons __tmp45835 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp45853 __tmp45834))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp45833))))
                                 (declare (not safe))
                                 (cons __tmp45832 '()))))
                          (declare (not safe))
                          (cons '() __tmp45831))))
                   (declare (not safe))
                   (cons '%#lambda __tmp45830))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45829 '()))))
                                             (declare (not safe))
                                             (cons __tmp45867 __tmp45828))))
                                      (declare (not safe))
                                      (cons '%#call __tmp45827))))
                               (declare (not safe))
                               (cons __tmp45826 '()))))
                        (declare (not safe))
                        (cons __tmp45869 __tmp45825)))))
                 (_generate-slot-bind40858_
                  (lambda (_$t44173_ _id44174_ _$id44175_)
                    (let ((_$tmp44177_ (make-symbol (gensym '__tmp))))
                      (let ((__tmp45914
                             (let ()
                               (declare (not safe))
                               (cons _$id44175_ '())))
                            (__tmp45870
                             (let ((__tmp45871
                                    (let ((__tmp45872
                                           (let ((__tmp45900
                                                  (let ((__tmp45901
                                                         (let ((__tmp45913
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp44177_ '())))
                       (__tmp45902
                        (let ((__tmp45903
                               (let ((__tmp45904
                                      (let ((__tmp45911
                                             (let ((__tmp45912
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp45912)))
                                            (__tmp45905
                                             (let ((__tmp45909
                                                    (let ((__tmp45910
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t44173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp45910)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp45906
                                                    (let ((__tmp45907
                                                           (let ((__tmp45908
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id44174_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp45908))))
              (declare (not safe))
              (cons __tmp45907 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp45909 __tmp45906))))
                                        (declare (not safe))
                                        (cons __tmp45911 __tmp45905))))
                                 (declare (not safe))
                                 (cons '%#call __tmp45904))))
                          (declare (not safe))
                          (cons __tmp45903 '()))))
                   (declare (not safe))
                   (cons __tmp45913 __tmp45902))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45901 '())))
                                                 (__tmp45873
                                                  (let ((__tmp45874
                                                         (let ((__tmp45875
                                                                (let ((__tmp45898
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp45899
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp44177_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp45899)))
                              (__tmp45876
                               (let ((__tmp45888
                                      (let ((__tmp45889
                                             (let ((__tmp45896
                                                    (let ((__tmp45897
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '##fx+
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp45897)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp45890
                                                    (let ((__tmp45894
                                                           (let ((__tmp45895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp44177_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp45895)))
                  (__tmp45891
                   (let ((__tmp45892
                          (let ((__tmp45893
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp45893))))
                     (declare (not safe))
                     (cons __tmp45892 '()))))
              (declare (not safe))
              (cons __tmp45894 __tmp45891))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp45896 __tmp45890))))
                                        (declare (not safe))
                                        (cons '%#call __tmp45889)))
                                     (__tmp45877
                                      (let ((__tmp45878
                                             (let ((__tmp45879
                                                    (let ((__tmp45886
                                                           (let ((__tmp45887
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp45887)))
                  (__tmp45880
                   (let ((__tmp45884
                          (let ((__tmp45885
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp45885)))
                         (__tmp45881
                          (let ((__tmp45882
                                 (let ((__tmp45883
                                        (let ()
                                          (declare (not safe))
                                          (cons _id44174_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp45883))))
                            (declare (not safe))
                            (cons __tmp45882 '()))))
                     (declare (not safe))
                     (cons __tmp45884 __tmp45881))))
              (declare (not safe))
              (cons __tmp45886 __tmp45880))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp45879))))
                                        (declare (not safe))
                                        (cons __tmp45878 '()))))
                                 (declare (not safe))
                                 (cons __tmp45888 __tmp45877))))
                          (declare (not safe))
                          (cons __tmp45898 __tmp45876))))
                   (declare (not safe))
                   (cons '%#if __tmp45875))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45874 '()))))
                                             (declare (not safe))
                                             (cons __tmp45900 __tmp45873))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp45872))))
                               (declare (not safe))
                               (cons __tmp45871 '()))))
                        (declare (not safe))
                        (cons __tmp45914 __tmp45870)))))
                 (_generate-class-check-bind40859_
                  (lambda (_$t44169_ _class-type44170_ _$class-type44171_)
                    (let ((__tmp45926
                           (let ()
                             (declare (not safe))
                             (cons _$class-type44171_ '())))
                          (__tmp45915
                           (let ((__tmp45916
                                  (let ((__tmp45917
                                         (let ((__tmp45924
                                                (let ((__tmp45925
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-subtype?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp45925)))
                                               (__tmp45918
                                                (let ((__tmp45922
                                                       (let ((__tmp45923
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _class-type44170_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp45923)))
              (__tmp45919
               (let ((__tmp45920
                      (let ((__tmp45921
                             (let ()
                               (declare (not safe))
                               (cons _$t44169_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp45921))))
                 (declare (not safe))
                 (cons __tmp45920 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45922
                                                        __tmp45919))))
                                           (declare (not safe))
                                           (cons __tmp45924 __tmp45918))))
                                    (declare (not safe))
                                    (cons '%#call __tmp45917))))
                             (declare (not safe))
                             (cons __tmp45916 '()))))
                      (declare (not safe))
                      (cons __tmp45926 __tmp45915))))
                 (_generate-struct-check-bind40860_
                  (lambda (_$t44165_ _class-type44166_ _$class-type44167_)
                    (let ((__tmp45938
                           (let ()
                             (declare (not safe))
                             (cons _$class-type44167_ '())))
                          (__tmp45927
                           (let ((__tmp45928
                                  (let ((__tmp45929
                                         (let ((__tmp45936
                                                (let ((__tmp45937
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'struct-subtype?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp45937)))
                                               (__tmp45930
                                                (let ((__tmp45934
                                                       (let ((__tmp45935
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _class-type44166_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp45935)))
              (__tmp45931
               (let ((__tmp45932
                      (let ((__tmp45933
                             (let ()
                               (declare (not safe))
                               (cons _$t44165_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp45933))))
                 (declare (not safe))
                 (cons __tmp45932 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45934
                                                        __tmp45931))))
                                           (declare (not safe))
                                           (cons __tmp45936 __tmp45930))))
                                    (declare (not safe))
                                    (cons '%#call __tmp45929))))
                             (declare (not safe))
                             (cons __tmp45928 '()))))
                      (declare (not safe))
                      (cons __tmp45938 __tmp45927))))
                 (_generate-specializer-impl40861_
                  (lambda (_$t44114_
                           _methods-bind44115_
                           _slots-bind44116_
                           _class-check-bind44117_
                           _struct-check-bind44118_
                           _specializer-impl44119_
                           _lifted-specializer-id44120_
                           _unchecked-specializer-impl44121_)
                    (let ((__tmp45939
                           (let ((__tmp45940
                                  (let ((__tmp45965
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t44114_ '())))
                                        (__tmp45941
                                         (let ((__tmp45942
                                                (let ((__tmp45943
                                                       (let ((__tmp45962
                                                              (let ((__tmp45963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp45964
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind44118_
                                              _class-check-bind44117_))))
                               (declare (not safe))
                               (foldr1 cons __tmp45964 _slots-bind44116_))))
                        (declare (not safe))
                        (foldr1 cons __tmp45963 _methods-bind44115_)))
                     (__tmp45944
                      (let ((__tmp45945
                             (if (or _lifted-specializer-id44120_
                                     _unchecked-specializer-impl44121_)
                                 (let* ((_$specializer44126_
                                         (make-symbol (gensym '__specializer)))
                                        (__tmp45946
                                         (let ((__tmp45958
                                                (let ((__tmp45959
                                                       (let ((__tmp45961
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer44126_ '())))
                     (__tmp45960
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl44119_ '()))))
                 (declare (not safe))
                 (cons __tmp45961 __tmp45960))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45959 '())))
                                               (__tmp45947
                                                (let ((__tmp45948
                                                       (let _recur44128_ ((_rest44130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (map caar _struct-check-bind44118_)))
                 (let* ((_rest4413144139_ _rest44130_)
                        (_else4413344147_
                         (lambda ()
                           (if _lifted-specializer-id44120_
                               (let ((__tmp45949
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id44120_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp45949))
                               _unchecked-specializer-impl44121_)))
                        (_K4413544153_
                         (lambda (_rest44150_ _checkq44151_)
                           (let ((__tmp45950
                                  (let ((__tmp45956
                                         (let ((__tmp45957
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq44151_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp45957)))
                                        (__tmp45951
                                         (let ((__tmp45955
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur44128_ _rest44150_)))
                                               (__tmp45952
                                                (let ((__tmp45953
                                                       (let ((__tmp45954
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer44126_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp45954))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45953 '()))))
                                           (declare (not safe))
                                           (cons __tmp45955 __tmp45952))))
                                    (declare (not safe))
                                    (cons __tmp45956 __tmp45951))))
                             (declare (not safe))
                             (cons '%#if __tmp45950)))))
                   (if (let () (declare (not safe)) (##pair? _rest4413144139_))
                       (let ((_hd4413644156_
                              (let ()
                                (declare (not safe))
                                (##car _rest4413144139_)))
                             (_tl4413744158_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest4413144139_))))
                         (let* ((_checkq44161_ _hd4413644156_)
                                (_rest44163_ _tl4413744158_))
                           (declare (not safe))
                           (_K4413544153_ _rest44163_ _checkq44161_)))
                       (let () (declare (not safe)) (_else4413344147_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45948 '()))))
                                           (declare (not safe))
                                           (cons __tmp45958 __tmp45947))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp45946))
                                 _specializer-impl44119_)))
                        (declare (not safe))
                        (cons __tmp45945 '()))))
                 (declare (not safe))
                 (cons __tmp45962 __tmp45944))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp45943))))
                                           (declare (not safe))
                                           (cons __tmp45942 '()))))
                                    (declare (not safe))
                                    (cons __tmp45965 __tmp45941))))
                             (declare (not safe))
                             (cons '%#lambda __tmp45940))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp45939 _stx40855_))))
                 (_generate-specializer-def40862_
                  (lambda (_id44108_
                           _specializer-id44109_
                           _specializer-impl44110_
                           _lifted-specializer-id44111_
                           _unchecked-specializer-impl44112_)
                    (let ((__tmp45966
                           (let ((__tmp45967
                                  (let ((__tmp45968
                                         (let ((__tmp45988
                                                (let ((__tmp45989
                                                       (let ((__tmp45990
                                                              (let ((__tmp45992
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id44109_ '())))
                            (__tmp45991
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl44110_ '()))))
                        (declare (not safe))
                        (cons __tmp45992 __tmp45991))))
                 (declare (not safe))
                 (cons '%#define-values __tmp45990))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp45989
                                                   _stx40855_)))
                                               (__tmp45969
                                                (let ((__tmp45976
                                                       (let ((__tmp45977
                                                              (let ((__tmp45978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp45979
                                    (let ((__tmp45986
                                           (let ((__tmp45987
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp45987)))
                                          (__tmp45980
                                           (let ((__tmp45984
                                                  (let ((__tmp45985
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id44108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp45985)))
                                                 (__tmp45981
                                                  (let ((__tmp45982
                                                         (let ((__tmp45983
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id44109_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp45983))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45982 '()))))
                                             (declare (not safe))
                                             (cons __tmp45984 __tmp45981))))
                                      (declare (not safe))
                                      (cons __tmp45986 __tmp45980))))
                               (declare (not safe))
                               (cons '%#call __tmp45979))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp45978 _stx40855_))))
                 (declare (not safe))
                 (cons __tmp45977 '())))
              (__tmp45970
               (if _lifted-specializer-id44111_
                   (let ((__tmp45971
                          (let ((__tmp45972
                                 (let ((__tmp45973
                                        (let ((__tmp45975
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id44111_
                                                       '())))
                                              (__tmp45974
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl44112_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp45975 __tmp45974))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp45973))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp45972 _stx40855_))))
                     (declare (not safe))
                     (cons __tmp45971 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp45976
                                                          __tmp45970))))
                                           (declare (not safe))
                                           (cons __tmp45988 __tmp45969))))
                                    (declare (not safe))
                                    (cons _stx40855_ __tmp45968))))
                             (declare (not safe))
                             (cons '%#begin __tmp45967))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp45966 _stx40855_)))))
          (let* ((___stx4430144302_ _stx40855_)
                 (_g4086540885_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       ___stx4430144302_)))))
            (let ((___kont4430344304_
                   (lambda (_L40929_ _L40930_)
                     (let ((_method-calls40949_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_slot-refs40950_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_class-type-check40951_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-check40952_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-assert40953_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_empty40954_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?))))
                       (letrec ((_no-specializer?40956_
                                 (lambda ()
                                   (if (let ((__tmp45997
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls40949_))))
                                         (declare (not safe))
                                         (fxzero? __tmp45997))
                                       (if (let ((__tmp45996
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs40950_))))
                                             (declare (not safe))
                                             (fxzero? __tmp45996))
                                           (if (let ((__tmp45995
                                                      (let ()
                                                        (declare (not safe))
                                                        (table-length
                                                         _class-type-check40951_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp45995))
                                               (if (let ((__tmp45994
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-check40952_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp45994))
                                                   (let ((__tmp45993
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-assert40953_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp45993))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?40957_
                                 (lambda ()
                                   (let ((_$e44101_
                                          (let ((__tmp45998
                                                 (let ((__tmp45999
                                                        (let ()
                                                          (declare (not safe))
                                                          (table-length
                                                           _struct-type-check40952_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp45999))))
                                            (declare (not safe))
                                            (not __tmp45998))))
                                     (if _$e44101_
                                         _$e44101_
                                         (let ((__tmp46000
                                                (let ((__tmp46001
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-length
                                                          _struct-type-assert40953_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp46001))))
                                           (declare (not safe))
                                           (not __tmp46000))))))
                                (_lift-unchecked-specializer?40958_
                                 (lambda ()
                                   (if (let ((__tmp46004
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls40949_))))
                                         (declare (not safe))
                                         (fxzero? __tmp46004))
                                       (if (let ((__tmp46003
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs40950_))))
                                             (declare (not safe))
                                             (fxzero? __tmp46003))
                                           (let ((__tmp46002
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _class-type-check40951_))))
                                             (declare (not safe))
                                             (fxzero? __tmp46002))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L40929_))
                             (let* ((___stx4421544216_ _L40929_)
                                    (_g4147141489_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4421544216_)))))
                               (let ((___kont4421744218_
                                      (lambda (_L41525_ _L41526_ _L41527_)
                                        (for-each
                                         (lambda (_g4154241544_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g4154241544_
                                              _L41527_
                                              _method-calls40949_
                                              _slot-refs40950_
                                              _class-type-check40951_
                                              _struct-type-check40952_
                                              _struct-type-assert40953_)))
                                         _L41525_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?40956_))
                                            _stx40855_
                                            (let* ((_specializer-id41553_
                                                    (let* ((_id41547_
                                                            (make-symbol
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _L40930_))
                     '"::specialize"))
                   (_specializer-id41550_
                    (let ((__tmp46126
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx40855_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id41547_ __tmp46126))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id41550_))
              _specializer-id41550_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id41560_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?40958_))
                                                        (let* ((_id41555_
                                                                (make-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (gx#stx-e _L40930_))
                         '"::specialize::unchecked"))
                       (_lifted-specializer-id41557_
                        (let ((__tmp46127
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx40855_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id41555_ __tmp46127))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id41557_))
                  _lifted-specializer-id41557_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t41562_
                                                    (make-symbol
                                                     (gensym '__t)))
                                                   (_methods41564_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls40949_)))
                                                   (_$methods41568_
                                                    (map (lambda (_id41566_)
                                                           (make-symbol
                                                            '"__"
                                                            (gensym _id41566_)))
                                                         _methods41564_))
                                                   (_g46128_
                                                    (for-each
                                                     (lambda (_g4156941572_
                                                              _g4157041574_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls40949_
                                                          _g4156941572_
                                                          _g4157041574_)))
                                                     _methods41564_
                                                     _$methods41568_))
                                                   (_methods-bind41585_
                                                    (map (lambda (_g4157741580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g4157841582_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind40857_
                      _$t41562_
                      _g4157741580_
                      _g4157841582_)))
                 _methods41564_
                 _$methods41568_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots41587_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs40950_)))
                                                   (_$slots41591_
                                                    (map (lambda (_id41589_)
                                                           (make-symbol
                                                            '"__"
                                                            (gensym _id41589_)))
                                                         _slots41587_))
                                                   (_g46129_
                                                    (for-each
                                                     (lambda (_g4159241595_
                                                              _g4159341597_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs40950_
                                                          _g4159241595_
                                                          _g4159341597_)))
                                                     _slots41587_
                                                     _$slots41591_))
                                                   (_slots-bind41608_
                                                    (map (lambda (_g4160041603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g4160141605_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind40858_
                      _$t41562_
                      _g4160041603_
                      _g4160141605_)))
                 _slots41587_
                 _$slots41591_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check41610_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check40951_)))
                                                   (_$class-check41613_
                                                    (map (lambda (_g46130_)
                                                           (make-symbol
                                                            (gensym '__class)))
                                                         _class-check41610_))
                                                   (_g46131_
                                                    (for-each
                                                     (lambda (_g4161441617_
                                                              _g4161541619_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check40951_
                                                          _g4161441617_
                                                          _g4161541619_)))
                                                     _class-check41610_
                                                     _$class-check41613_))
                                                   (_class-check-bind41630_
                                                    (map (lambda (_g4162241625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g4162341627_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind40859_
                      _$t41562_
                      _g4162241625_
                      _g4162341627_)))
                 _class-check41610_
                 _$class-check41613_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all41632_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check40952_
                                                       _struct-type-assert40953_)))
                                                   (_struct-check41634_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all41632_)))
                                                   (_$struct-check41637_
                                                    (map (lambda (_g46132_)
                                                           (make-symbol
                                                            (gensym '__class)))
                                                         _struct-check41634_))
                                                   (_g46133_
                                                    (for-each
                                                     (lambda (_g4163841641_
                                                              _g4163941643_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all41632_
                                                          _g4163841641_
                                                          _g4163941643_)))
                                                     _struct-check41634_
                                                     _$struct-check41637_))
                                                   (_struct-check-bind41654_
                                                    (map (lambda (_g4164641649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g4164741651_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind40860_
                      _$t41562_
                      _g4164641649_
                      _g4164741651_)))
                 _struct-check41634_
                 _$struct-check41637_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl41665_
                                                    (lambda (_struct-type-check141656_
                                                             _struct-type-check241657_)
                                                      (let* ((_specializer-body41663_
                                                              (map (lambda (_g4165841660_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g4165841660_
                                _L41527_
                                _$t41562_
                                _method-calls40949_
                                _slot-refs40950_
                                _class-type-check40951_
                                _struct-type-check141656_
                                _struct-type-check241657_)))
                           _L41525_))
                     (__tmp46134
                      (let ((__tmp46135
                             (let ((__tmp46136
                                    (let ()
                                      (declare (not safe))
                                      (cons _L41527_ _L41526_))))
                               (declare (not safe))
                               (cons __tmp46136 _specializer-body41663_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp46135))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp46134 _stx40855_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl41667_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl41665_
                                                       _struct-check-all41632_
                                                       _empty40954_)))
                                                   (_unchecked-specializer-impl41669_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?40957_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl41665_
                                                           _empty40954_
                                                           _struct-check-all41632_))
                                                        '#f))
                                                   (_specializer-impl41671_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl40861_
                                                       _$t41562_
                                                       _methods-bind41585_
                                                       _slots-bind41608_
                                                       _class-check-bind41630_
                                                       _struct-check-bind41654_
                                                       _specializer-impl41667_
                                                       _lifted-specializer-id41560_
                                                       _unchecked-specializer-impl41669_))))
                                              (let ((__tmp46138
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L40930_)))
                                                    (__tmp46137
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id41553_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp46138
                                                 '" => "
                                                 __tmp46137))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def40862_
                                                 _L40930_
                                                 _specializer-id41553_
                                                 _specializer-impl41671_
                                                 _lifted-specializer-id41560_
                                                 _unchecked-specializer-impl41669_))))))
                                     (___kont4421944220_
                                      (lambda () _stx40855_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx4421544216_))
                                     (let ((_e4147841501_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx4421544216_))))
                                       (let ((_tl4147641506_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4147841501_)))
                                             (_hd4147741504_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4147841501_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl4147641506_))
                                             (let ((_e4148141509_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl4147641506_))))
                                               (let ((_tl4147941514_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e4148141509_)))
                                                     (_hd4148041512_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e4148141509_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd4148041512_))
                                                     (let ((_e4148441517_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd4148041512_))))
                                                       (let ((_tl4148241522_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e4148441517_)))
                     (_hd4148341520_
                      (let () (declare (not safe)) (##car _e4148441517_))))
                 (___kont4421744218_
                  _tl4147941514_
                  _tl4148241522_
                  _hd4148341520_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4421944220_))))
                                             (___kont4421944220_))))
                                     (___kont4421944220_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L40929_))
                                 (let* ((_g4167741696_
                                         (lambda (_g4167841693_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g4167841693_))))
                                        (_g4167642047_
                                         (lambda (_g4167841699_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair? _g4167841699_))
                                               (let ((_e4168241701_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g4167841699_))))
                                                 (let ((_hd4168141704_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4168241701_)))
                                                       (_tl4168041706_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4168241701_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl4168041706_))
                                                       (let ((_g46109_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl4168041706_ '0))))
                 (begin
                   (let ((_g46110_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g46109_)
                                (##vector-length _g46109_)
                                1))))
                     (if (not (let () (declare (not safe)) (##fx= _g46110_ 2)))
                         (error "Context expects 2 values" _g46110_)))
                   (let ((_target4168341709_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g46109_ 0)))
                         (_tl4168541711_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g46109_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl4168541711_))
                         (letrec ((_loop4168641714_
                                   (lambda (_hd4168441717_ _clause4169041719_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd4168441717_))
                                         (let ((_e4168741722_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _hd4168441717_))))
                                           (let ((_lp-hd4168841725_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e4168741722_)))
                                                 (_lp-tl4168941727_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e4168741722_))))
                                             (let ((__tmp46125
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd4168841725_
                                                            _clause4169041719_))))
                                               (declare (not safe))
                                               (_loop4168641714_
                                                _lp-tl4168941727_
                                                __tmp46125))))
                                         (let ((_clause4169141730_
                                                (reverse _clause4169041719_)))
                                           ((lambda (_L41733_)
                                              (for-each
                                               (lambda (_clause41746_)
                                                 (let* ((___stx4424144242_
                                                         _clause41746_)
                                                        (_g4174941764_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx4424144242_)))))
                                                   (let ((___kont4424344244_
                                                          (lambda (_L41792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L41793_
                           _L41794_)
                    (for-each
                     (lambda (_g4180941811_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g4180941811_
                          _L41794_
                          _method-calls40949_
                          _slot-refs40950_
                          _class-type-check40951_
                          _struct-type-check40952_
                          _struct-type-assert40953_)))
                     _L41792_)))
                 (___kont4424544246_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx4424144242_))
                                                         (let ((_e4175641776_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx4424144242_))))
                   (let ((_tl4175441781_
                          (let () (declare (not safe)) (##cdr _e4175641776_)))
                         (_hd4175541779_
                          (let () (declare (not safe)) (##car _e4175641776_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd4175541779_))
                         (let ((_e4175941784_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd4175541779_))))
                           (let ((_tl4175741789_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e4175941784_)))
                                 (_hd4175841787_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e4175941784_))))
                             (___kont4424344244_
                              _tl4175441781_
                              _tl4175741789_
                              _hd4175841787_)))
                         (___kont4424544246_))))
                 (___kont4424544246_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp46111
                                                      (lambda (_g4181641819_
                                                               _g4181741821_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g4181641819_
                                                                _g4181741821_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp46111
                                                         '()
                                                         _L41733_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?40956_))
                                                  _stx40855_
                                                  (let* ((_specializer-id41830_
                                                          (let* ((_id41824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-symbol
                           (let () (declare (not safe)) (gx#stx-e _L40930_))
                           '"::specialize"))
                         (_specializer-id41827_
                          (let ((__tmp46112
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx40855_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id41824_ __tmp46112))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id41827_))
                    _specializer-id41827_))
                 (_lifted-specializer-id41837_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?40958_))
                      (let* ((_id41832_
                              (make-symbol
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L40930_))
                               '"::specialize::unchecked"))
                             (_lifted-specializer-id41834_
                              (let ((__tmp46113
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx40855_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id41832_
                                 __tmp46113))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id41834_))
                        _lifted-specializer-id41834_)
                      '#f))
                 (_$t41839_ (make-symbol (gensym '__t)))
                 (_methods41841_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls40949_)))
                 (_$methods41845_
                  (map (lambda (_id41843_)
                         (make-symbol '"__" (gensym _id41843_)))
                       _methods41841_))
                 (_g46114_
                  (for-each
                   (lambda (_g4184641849_ _g4184741851_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls40949_
                        _g4184641849_
                        _g4184741851_)))
                   _methods41841_
                   _$methods41845_))
                 (_methods-bind41862_
                  (map (lambda (_g4185441857_ _g4185541859_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind40857_
                            _$t41839_
                            _g4185441857_
                            _g4185541859_)))
                       _methods41841_
                       _$methods41845_))
                 (_slots41864_
                  (let () (declare (not safe)) (hash-keys _slot-refs40950_)))
                 (_$slots41868_
                  (map (lambda (_id41866_)
                         (make-symbol '"__" (gensym _id41866_)))
                       _slots41864_))
                 (_g46115_
                  (for-each
                   (lambda (_g4186941872_ _g4187041874_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs40950_
                        _g4186941872_
                        _g4187041874_)))
                   _slots41864_
                   _$slots41868_))
                 (_slots-bind41885_
                  (map (lambda (_g4187741880_ _g4187841882_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind40858_
                            _$t41839_
                            _g4187741880_
                            _g4187841882_)))
                       _slots41864_
                       _$slots41868_))
                 (_class-check41887_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check40951_)))
                 (_$class-check41890_
                  (map (lambda (_g46116_) (make-symbol (gensym '__class)))
                       _class-check41887_))
                 (_g46117_
                  (for-each
                   (lambda (_g4189141894_ _g4189241896_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check40951_
                        _g4189141894_
                        _g4189241896_)))
                   _class-check41887_
                   _$class-check41890_))
                 (_class-check-bind41907_
                  (map (lambda (_g4189941902_ _g4190041904_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind40859_
                            _$t41839_
                            _g4189941902_
                            _g4190041904_)))
                       _class-check41887_
                       _$class-check41890_))
                 (_struct-check-all41909_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check40952_
                     _struct-type-assert40953_)))
                 (_struct-check41911_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all41909_)))
                 (_$struct-check41914_
                  (map (lambda (_g46118_) (make-symbol (gensym '__class)))
                       _struct-check41911_))
                 (_g46119_
                  (for-each
                   (lambda (_g4191541918_ _g4191641920_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all41909_
                        _g4191541918_
                        _g4191641920_)))
                   _struct-check41911_
                   _$struct-check41914_))
                 (_struct-check-bind41931_
                  (map (lambda (_g4192341926_ _g4192441928_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind40860_
                            _$t41839_
                            _g4192341926_
                            _g4192441928_)))
                       _struct-check41911_
                       _$struct-check41914_))
                 (_make-specializer-impl42038_
                  (lambda (_struct-type-check141933_ _struct-type-check241934_)
                    (let* ((_specializer-clauses42036_
                            (map (lambda (_clause41936_)
                                   (let* ((___stx4426144262_ _clause41936_)
                                          (_g4193941954_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                ___stx4426144262_)))))
                                     (let ((___kont4426344264_
                                            (lambda (_L41982_
                                                     _L41983_
                                                     _L41984_)
                                              (let* ((_body42024_
                                                      (map (lambda (_g4201942021_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g4201942021_
                        _L41984_
                        _$t41839_
                        _method-calls40949_
                        _slot-refs40950_
                        _class-type-check40951_
                        _struct-type-check141933_
                        _struct-type-check241934_)))
                   _L41982_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp46120
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L41984_
                                                              _L41983_))))
                                                (declare (not safe))
                                                (cons __tmp46120
                                                      _body42024_))))
                                           (___kont4426544266_
                                            (lambda () _clause41936_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? ___stx4426144262_))
                                           (let ((_e4194641966_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx4426144262_))))
                                             (let ((_tl4194441971_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e4194641966_)))
                                                   (_hd4194541969_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e4194641966_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd4194541969_))
                                                   (let ((_e4194941974_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd4194541969_))))
                                                     (let ((_tl4194741979_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4194941974_)))
                                                           (_hd4194841977_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4194941974_))))
                                                       (___kont4426344264_
                                                        _tl4194441971_
                                                        _tl4194741979_
                                                        _hd4194841977_)))
                                                   (___kont4426544266_))))
                                           (___kont4426544266_)))))
                                 (let ((__tmp46121
                                        (lambda (_g4202842031_ _g4202942033_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4202842031_
                                                  _g4202942033_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp46121 '() _L41733_))))
                           (__tmp46122
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses42036_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp46122 _stx40855_))))
                 (_specializer-impl42040_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl42038_
                     _struct-check-all41909_
                     _empty40954_)))
                 (_unchecked-specializer-impl42042_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?40957_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl42038_
                         _empty40954_
                         _struct-check-all41909_))
                      '#f))
                 (_specializer-impl42044_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl40861_
                     _$t41839_
                     _methods-bind41862_
                     _slots-bind41885_
                     _class-check-bind41907_
                     _struct-check-bind41931_
                     _specializer-impl42040_
                     _lifted-specializer-id41837_
                     _unchecked-specializer-impl42042_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp46124
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L40930_)))
                                                          (__tmp46123
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id41830_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp46124
                                                       '" => "
                                                       __tmp46123))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def40862_
                                                       _L40930_
                                                       _specializer-id41830_
                                                       _specializer-impl42044_
                                                       _lifted-specializer-id41837_
                                                       _unchecked-specializer-impl42042_)))))
                                            _clause4169141730_))))))
                           (let ()
                             (declare (not safe))
                             (_loop4168641714_ _target4168341709_ '())))
                         (let ()
                           (declare (not safe))
                           (_g4167741696_ _g4167841699_))))))
               (let () (declare (not safe)) (_g4167741696_ _g4167841699_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4167741696_
                                                  _g4167841699_))))))
                                   (declare (not safe))
                                   (_g4167642047_ _L40929_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L40929_))
                                     (let* ((_g4205042080_
                                             (lambda (_g4205142077_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g4205142077_))))
                                            (_g4204942768_
                                             (lambda (_g4205142083_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g4205142083_))
                                                   (let ((_e4205742085_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g4205142083_))))
                                                     (let ((_hd4205642088_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4205742085_)))
                                                           (_tl4205542090_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4205742085_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl4205542090_))
                                                           (let ((_e4206042093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl4205542090_))))
                     (let ((_hd4205942096_
                            (let ()
                              (declare (not safe))
                              (##car _e4206042093_)))
                           (_tl4205842098_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4206042093_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd4205942096_))
                           (let ((_e4206342101_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd4205942096_))))
                             (let ((_hd4206242104_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4206342101_)))
                                   (_tl4206142106_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4206342101_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd4206242104_))
                                   (let ((_e4206642109_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd4206242104_))))
                                     (let ((_hd4206542112_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4206642109_)))
                                           (_tl4206442114_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4206642109_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd4206542112_))
                                           (let ((_e4206942117_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd4206542112_))))
                                             (let ((_hd4206842120_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e4206942117_)))
                                                   (_tl4206742122_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e4206942117_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl4206742122_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl4206442114_))
                                                       (let ((_e4207242125_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl4206442114_))))
                 (let ((_hd4207142128_
                        (let () (declare (not safe)) (##car _e4207242125_)))
                       (_tl4207042130_
                        (let () (declare (not safe)) (##cdr _e4207242125_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl4207042130_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl4206142106_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl4205842098_))
                               (let ((_e4207542133_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl4205842098_))))
                                 (let ((_hd4207442136_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4207542133_)))
                                       (_tl4207342138_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4207542133_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl4207342138_))
                                       ((lambda (_L42141_ _L42142_ _L42143_)
                                          (let* ((_g4216642184_
                                                  (lambda (_g4216742181_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g4216742181_))))
                                                 (_g4216542235_
                                                  (lambda (_g4216742187_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g4216742187_))
                                                        (let ((_e4217342189_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g4216742187_))))
                  (let ((_hd4217242192_
                         (let () (declare (not safe)) (##car _e4217342189_)))
                        (_tl4217142194_
                         (let () (declare (not safe)) (##cdr _e4217342189_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl4217142194_))
                        (let ((_e4217642197_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl4217142194_))))
                          (let ((_hd4217542200_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4217642197_)))
                                (_tl4217442202_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4217642197_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd4217542200_))
                                (let ((_e4217942205_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd4217542200_))))
                                  (let ((_hd4217842208_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4217942205_)))
                                        (_tl4217742210_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4217942205_))))
                                    ((lambda (_L42213_ _L42214_ _L42215_)
                                       (for-each
                                        (lambda (_g4223042232_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g4223042232_
                                             _L42215_
                                             _method-calls40949_
                                             _slot-refs40950_
                                             _class-type-check40951_
                                             _struct-type-check40952_
                                             _struct-type-assert40953_)))
                                        _L42213_))
                                     _tl4217442202_
                                     _tl4217742210_
                                     _hd4217842208_)))
                                (let ()
                                  (declare (not safe))
                                  (_g4216642184_ _g4216742187_)))))
                        (let ()
                          (declare (not safe))
                          (_g4216642184_ _g4216742187_)))))
                (let () (declare (not safe)) (_g4216642184_ _g4216742187_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g4216542235_ _L42142_))
                                          (let* ((_g4223842257_
                                                  (lambda (_g4223942254_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g4223942254_))))
                                                 (_g4223742376_
                                                  (lambda (_g4223942260_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g4223942260_))
                                                        (let ((_e4224342262_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g4223942260_))))
                  (let ((_hd4224242265_
                         (let () (declare (not safe)) (##car _e4224342262_)))
                        (_tl4224142267_
                         (let () (declare (not safe)) (##cdr _e4224342262_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl4224142267_))
                        (let ((_g46079_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice _tl4224142267_ '0))))
                          (begin
                            (let ((_g46080_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g46079_)
                                         (##vector-length _g46079_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g46080_ 2)))
                                  (error "Context expects 2 values" _g46080_)))
                            (let ((_target4224442270_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g46079_ 0)))
                                  (_tl4224642272_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g46079_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl4224642272_))
                                  (letrec ((_loop4224742275_
                                            (lambda (_hd4224542278_
                                                     _clause4225142280_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd4224542278_))
                                                  (let ((_e4224842283_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd4224542278_))))
                                                    (let ((_lp-hd4224942286_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4224842283_)))
                                                          (_lp-tl4225042288_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4224842283_))))
                                                      (let ((__tmp46082
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd4224942286_ _clause4225142280_))))
                (declare (not safe))
                (_loop4224742275_ _lp-tl4225042288_ __tmp46082))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause4225242291_
                                                         (reverse _clause4225142280_)))
                                                    ((lambda (_L42294_)
                                                       (for-each
                                                        (lambda (_clause42307_)
                                                          (let* ((_g4230942324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g4231042321_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g4231042321_))))
                         (_g4230842366_
                          (lambda (_g4231042327_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g4231042327_))
                                (let ((_e4231642329_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g4231042327_))))
                                  (let ((_hd4231542332_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4231642329_)))
                                        (_tl4231442334_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4231642329_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd4231542332_))
                                        (let ((_e4231942337_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd4231542332_))))
                                          (let ((_hd4231842340_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4231942337_)))
                                                (_tl4231742342_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4231942337_))))
                                            ((lambda (_L42345_
                                                      _L42346_
                                                      _L42347_)
                                               (for-each
                                                (lambda (_g4236142363_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g4236142363_
                                                     _L42347_
                                                     _method-calls40949_
                                                     _slot-refs40950_
                                                     _class-type-check40951_
                                                     _struct-type-check40952_
                                                     _struct-type-assert40953_)))
                                                _L42345_))
                                             _tl4231442334_
                                             _tl4231742342_
                                             _hd4231842340_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4230942324_ _g4231042327_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g4230942324_ _g4231042327_))))))
                    (declare (not safe))
                    (_g4230842366_ _clause42307_)))
                (let ((__tmp46081
                       (lambda (_g4236842371_ _g4236942373_)
                         (let ()
                           (declare (not safe))
                           (cons _g4236842371_ _g4236942373_)))))
                  (declare (not safe))
                  (foldr1 __tmp46081 '() _L42294_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause4225242291_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop4224742275_
                                       _target4224442270_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g4223842257_ _g4223942260_))))))
                        (let ()
                          (declare (not safe))
                          (_g4223842257_ _g4223942260_)))))
                (let () (declare (not safe)) (_g4223842257_ _g4223942260_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g4223742376_ _L42141_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?40956_))
                                              _stx40855_
                                              (let* ((_specializer-id42385_
                                                      (let* ((_id42379_
                                                              (make-symbol
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _L40930_))
                       '"::specialize"))
                     (_specializer-id42382_
                      (let ((__tmp46083
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx40855_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id42379_ __tmp46083))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id42382_))
                _specializer-id42382_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id42392_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?40958_))
                                                          (let* ((_id42387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-symbol
                           (let () (declare (not safe)) (gx#stx-e _L40930_))
                           '"::specialize::unchecked"))
                         (_lifted-specializer-id42389_
                          (let ((__tmp46084
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx40855_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id42387_ __tmp46084))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id42389_))
                    _lifted-specializer-id42389_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t42394_
                                                      (make-symbol
                                                       (gensym '__t)))
                                                     (_methods42396_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls40949_)))
                                                     (_$methods42400_
                                                      (map (lambda (_id42398_)
                                                             (make-symbol
                                                              '"__"
                                                              (gensym _id42398_)))
                                                           _methods42396_))
                                                     (_g46085_
                                                      (for-each
                                                       (lambda (_g4240142404_
                                                                _g4240242406_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls40949_
                                                            _g4240142404_
                                                            _g4240242406_)))
                                                       _methods42396_
                                                       _$methods42400_))
                                                     (_methods-bind42417_
                                                      (map (lambda (_g4240942412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4241042414_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind40857_
                        _$t42394_
                        _g4240942412_
                        _g4241042414_)))
                   _methods42396_
                   _$methods42400_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots42419_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs40950_)))
                                                     (_$slots42423_
                                                      (map (lambda (_id42421_)
                                                             (make-symbol
                                                              '"__"
                                                              (gensym _id42421_)))
                                                           _slots42419_))
                                                     (_g46086_
                                                      (for-each
                                                       (lambda (_g4242442427_
                                                                _g4242542429_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs40950_
                                                            _g4242442427_
                                                            _g4242542429_)))
                                                       _slots42419_
                                                       _$slots42423_))
                                                     (_slots-bind42440_
                                                      (map (lambda (_g4243242435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4243342437_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind40858_
                        _$t42394_
                        _g4243242435_
                        _g4243342437_)))
                   _slots42419_
                   _$slots42423_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check42442_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check40951_)))
                                                     (_$class-check42445_
                                                      (map (lambda (_g46087_)
                                                             (make-symbol
                                                              (gensym '__class)))
                                                           _class-check42442_))
                                                     (_g46088_
                                                      (for-each
                                                       (lambda (_g4244642449_
                                                                _g4244742451_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check40951_
                                                            _g4244642449_
                                                            _g4244742451_)))
                                                       _class-check42442_
                                                       _$class-check42445_))
                                                     (_class-check-bind42462_
                                                      (map (lambda (_g4245442457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4245542459_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind40859_
                        _$t42394_
                        _g4245442457_
                        _g4245542459_)))
                   _class-check42442_
                   _$class-check42445_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all42464_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check40952_
                                                         _struct-type-assert40953_)))
                                                     (_struct-check42466_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all42464_)))
                                                     (_$struct-check42469_
                                                      (map (lambda (_g46089_)
                                                             (make-symbol
                                                              (gensym '__class)))
                                                           _struct-check42466_))
                                                     (_g46090_
                                                      (for-each
                                                       (lambda (_g4247042473_
                                                                _g4247142475_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all42464_
                                                            _g4247042473_
                                                            _g4247142475_)))
                                                       _struct-check42466_
                                                       _$struct-check42469_))
                                                     (_struct-check-bind42486_
                                                      (map (lambda (_g4247842481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4247942483_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind40860_
                        _$t42394_
                        _g4247842481_
                        _g4247942483_)))
                   _struct-check42466_
                   _$struct-check42469_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr42585_
                                                      (lambda (_struct-type-check142488_
                                                               _struct-type-check242489_)
                                                        (let* ((_g4249142509_
                                                                (lambda (_g4249242506_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g4249242506_))))
                       (_g4249042582_
                        (lambda (_g4249242512_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g4249242512_))
                              (let ((_e4249842514_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g4249242512_))))
                                (let ((_hd4249742517_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4249842514_)))
                                      (_tl4249642519_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4249842514_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl4249642519_))
                                      (let ((_e4250142522_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl4249642519_))))
                                        (let ((_hd4250042525_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4250142522_)))
                                              (_tl4249942527_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4250142522_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _hd4250042525_))
                                              (let ((_e4250442530_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd4250042525_))))
                                                (let ((_hd4250342533_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4250442530_)))
                                                      (_tl4250242535_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4250442530_))))
                                                  ((lambda (_L42538_
                                                            _L42539_
                                                            _L42540_)
                                                     (let* ((_body42580_
                                                             (map (lambda (_g4257542577_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g4257542577_
                               _L42540_
                               _$t42394_
                               _method-calls40949_
                               _slot-refs40950_
                               _class-type-check40951_
                               _struct-type-check142488_
                               _struct-type-check242489_)))
                          _L42538_))
                    (__tmp46091
                     (let ((__tmp46092
                            (let ((__tmp46093
                                   (let ()
                                     (declare (not safe))
                                     (cons _L42540_ _L42539_))))
                              (declare (not safe))
                              (cons __tmp46093 _body42580_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp46092))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp46091 _L42142_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl4249942527_
                                                   _tl4250242535_
                                                   _hd4250342533_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g4249142509_
                                                 _g4249242512_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4249142509_ _g4249242512_)))))
                              (let ()
                                (declare (not safe))
                                (_g4249142509_ _g4249242512_))))))
                  (declare (not safe))
                  (_g4249042582_ _L42142_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr42746_
                                                      (lambda (_struct-type-check142587_
                                                               _struct-type-check242588_)
                                                        (let* ((_g4259042609_
                                                                (lambda (_g4259142606_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g4259142606_))))
                       (_g4258942743_
                        (lambda (_g4259142612_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g4259142612_))
                              (let ((_e4259542614_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g4259142612_))))
                                (let ((_hd4259442617_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4259542614_)))
                                      (_tl4259342619_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4259542614_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl4259342619_))
                                      (let ((_g46094_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl4259342619_
                                                '0))))
                                        (begin
                                          (let ((_g46095_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46094_)
                                                       (##vector-length
                                                        _g46094_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46095_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46095_)))
                                          (let ((_target4259642622_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g46094_ 0)))
                                                (_tl4259842624_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g46094_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl4259842624_))
                                                (letrec ((_loop4259942627_
                                                          (lambda (_hd4259742630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause4260342632_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd4259742630_))
                        (let ((_e4260042635_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd4259742630_))))
                          (let ((_lp-hd4260142638_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4260042635_)))
                                (_lp-tl4260242640_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4260042635_))))
                            (let ((__tmp46099
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd4260142638_
                                           _clause4260342632_))))
                              (declare (not safe))
                              (_loop4259942627_
                               _lp-tl4260242640_
                               __tmp46099))))
                        (let ((_clause4260442643_
                               (reverse _clause4260342632_)))
                          ((lambda (_L42646_)
                             (let* ((_clauses42741_
                                     (map (lambda (_clause42661_)
                                            (let* ((___stx4428144282_
                                                    _clause42661_)
                                                   (_g4266442679_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4428144282_)))))
                                              (let ((___kont4428344284_
                                                     (lambda (_L42707_
                                                              _L42708_
                                                              _L42709_)
                                                       (let* ((_body42729_
                                                               (map (lambda (_g4272442726_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g4272442726_
                                 _L42709_
                                 _$t42394_
                                 _method-calls40949_
                                 _slot-refs40950_
                                 _class-type-check40951_
                                 _struct-type-check142587_
                                 _struct-type-check242588_)))
                            _L42707_))
                      (__tmp46096
                       (let () (declare (not safe)) (cons _L42709_ _L42708_))))
                 (declare (not safe))
                 (cons __tmp46096 _body42729_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4428544286_
                                                     (lambda ()
                                                       _clause42661_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx4428144282_))
                                                    (let ((_e4267142691_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx4428144282_))))
                                                      (let ((_tl4266942696_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4267142691_)))
                    (_hd4267042694_
                     (let () (declare (not safe)) (##car _e4267142691_))))
                (if (let () (declare (not safe)) (gx#stx-pair? _hd4267042694_))
                    (let ((_e4267442699_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd4267042694_))))
                      (let ((_tl4267242704_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4267442699_)))
                            (_hd4267342702_
                             (let ()
                               (declare (not safe))
                               (##car _e4267442699_))))
                        (___kont4428344284_
                         _tl4266942696_
                         _tl4267242704_
                         _hd4267342702_)))
                    (___kont4428544286_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4428544286_)))))
                                          (let ((__tmp46097
                                                 (lambda (_g4273342736_
                                                          _g4273442738_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g4273342736_
                                                           _g4273442738_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp46097 '() _L42646_))))
                                    (__tmp46098
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses42741_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp46098 _L42141_)))
                           _clause4260442643_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop4259942627_
                                                     _target4259642622_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4259042609_
                                                   _g4259142612_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4259042609_ _g4259142612_)))))
                              (let ()
                                (declare (not safe))
                                (_g4259042609_ _g4259142612_))))))
                  (declare (not safe))
                  (_g4258942743_ _L42141_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl42751_
                                                      (lambda (_specializer-lambda-expr42748_
                                                               _specializer-case-lambda-expr42749_)
                                                        (let ((__tmp46100
                                                               (let ((__tmp46101
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp46103
                                     (let ((__tmp46104
                                            (let ((__tmp46106
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L42143_ '())))
                                                  (__tmp46105
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr42748_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp46106 __tmp46105))))
                                       (declare (not safe))
                                       (cons __tmp46104 '())))
                                    (__tmp46102
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr42749_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp46103 __tmp46102))))
                         (declare (not safe))
                         (cons '%#let-values __tmp46101))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp46100 _stx40855_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr42753_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr42585_
                                                         _struct-check-all42464_
                                                         _empty40954_)))
                                                     (_specializer-case-lambda-expr42755_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr42746_
                                                         _struct-check-all42464_
                                                         _empty40954_)))
                                                     (_specializer-impl42757_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl42751_
                                                         _specializer-lambda-expr42753_
                                                         _specializer-case-lambda-expr42755_)))
                                                     (_unchecked-specializer-lambda-expr42759_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?40957_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr42585_
                                                             _empty40954_
                                                             _struct-check-all42464_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr42761_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?40957_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr42746_
                                                             _empty40954_
                                                             _struct-check-all42464_))
                                                          '#f))
                                                     (_unchecked-specializer-impl42763_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?40957_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl42751_
                                                             _unchecked-specializer-lambda-expr42759_
                                                             _unchecked-specializer-case-lambda-expr42761_))
                                                          '#f))
                                                     (_specializer-impl42765_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl40861_
                                                         _$t42394_
                                                         _methods-bind42417_
                                                         _slots-bind42440_
                                                         _class-check-bind42462_
                                                         _struct-check-bind42486_
                                                         _specializer-impl42757_
                                                         _lifted-specializer-id42392_
                                                         _unchecked-specializer-impl42763_))))
                                                (let ((__tmp46108
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L40930_)))
                                                      (__tmp46107
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id42385_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp46108
                                                   '" => "
                                                   __tmp46107))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def40862_
                                                   _L40930_
                                                   _specializer-id42385_
                                                   _specializer-impl42765_
                                                   _lifted-specializer-id42392_
                                                   _unchecked-specializer-impl42763_)))))
                                        _hd4207442136_
                                        _hd4207142128_
                                        _hd4206842120_)
                                       (let ()
                                         (declare (not safe))
                                         (_g4205042080_ _g4205142083_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g4205042080_ _g4205142083_)))
                           (let ()
                             (declare (not safe))
                             (_g4205042080_ _g4205142083_)))
                       (let ()
                         (declare (not safe))
                         (_g4205042080_ _g4205142083_)))))
               (let () (declare (not safe)) (_g4205042080_ _g4205142083_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g4205042080_
                                                      _g4205142083_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g4205042080_ _g4205142083_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g4205042080_ _g4205142083_)))))
                           (let ()
                             (declare (not safe))
                             (_g4205042080_ _g4205142083_)))))
                   (let ()
                     (declare (not safe))
                     (_g4205042080_ _g4205142083_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g4205042080_
                                                      _g4205142083_))))))
                                       (declare (not safe))
                                       (_g4204942768_ _L40929_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L40929_))
                                         (let* ((_g4277142824_
                                                 (lambda (_g4277242821_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g4277242821_))))
                                                (_g4277044096_
                                                 (lambda (_g4277242827_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g4277242827_))
                                                       (let ((_e4278042829_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g4277242827_))))
                 (let ((_hd4277942832_
                        (let () (declare (not safe)) (##car _e4278042829_)))
                       (_tl4277842834_
                        (let () (declare (not safe)) (##cdr _e4278042829_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd4277942832_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd4277942832_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl4277842834_))
                               (let ((_e4278342837_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl4277842834_))))
                                 (let ((_hd4278242840_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4278342837_)))
                                       (_tl4278142842_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4278342837_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd4278242840_))
                                       (let ((_e4278642845_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd4278242840_))))
                                         (let ((_hd4278542848_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4278642845_)))
                                               (_tl4278442850_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4278642845_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair? _hd4278542848_))
                                               (let ((_e4278942853_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd4278542848_))))
                                                 (let ((_hd4278842856_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4278942853_)))
                                                       (_tl4278742858_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4278942853_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd4278842856_))
                                                       (let ((_e4279242861_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd4278842856_))))
                 (let ((_hd4279142864_
                        (let () (declare (not safe)) (##car _e4279242861_)))
                       (_tl4279042866_
                        (let () (declare (not safe)) (##cdr _e4279242861_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl4279042866_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl4278742858_))
                           (let ((_e4279542869_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl4278742858_))))
                             (let ((_hd4279442872_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4279542869_)))
                                   (_tl4279342874_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4279542869_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd4279442872_))
                                   (let ((_e4279842877_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd4279442872_))))
                                     (let ((_hd4279742880_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4279842877_)))
                                           (_tl4279642882_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4279842877_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd4279742880_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd4279742880_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl4279642882_))
                                                   (let ((_e4280142885_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl4279642882_))))
                                                     (let ((_hd4280042888_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4280142885_)))
                                                           (_tl4279942890_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4280142885_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd4280042888_))
                                                           (let ((_e4280442893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd4280042888_))))
                     (let ((_hd4280342896_
                            (let ()
                              (declare (not safe))
                              (##car _e4280442893_)))
                           (_tl4280242898_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4280442893_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd4280342896_))
                           (let ((_e4280742901_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd4280342896_))))
                             (let ((_hd4280642904_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4280742901_)))
                                   (_tl4280542906_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4280742901_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd4280642904_))
                                   (let ((_e4281042909_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd4280642904_))))
                                     (let ((_hd4280942912_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4281042909_)))
                                           (_tl4280842914_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4281042909_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl4280842914_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair? _tl4280542906_))
                                               (let ((_e4281342917_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl4280542906_))))
                                                 (let ((_hd4281242920_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4281342917_)))
                                                       (_tl4281142922_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4281342917_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl4281142922_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl4280242898_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl4279942890_))
                       (let ((_e4281642925_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl4279942890_))))
                         (let ((_hd4281542928_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4281642925_)))
                               (_tl4281442930_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4281642925_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl4281442930_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl4279342874_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl4278442850_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl4278142842_))
                                           (let ((_e4281942933_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl4278142842_))))
                                             (let ((_hd4281842936_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e4281942933_)))
                                                   (_tl4281742938_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e4281942933_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl4281742938_))
                                                   ((lambda (_L42941_
                                                             _L42942_
                                                             _L42943_
                                                             _L42944_
                                                             _L42945_)
                                                      (let* ((_g4298443046_
                                                              (lambda (_g4298543043_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g4298543043_))))
                     (_g4298344093_
                      (lambda (_g4298543049_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g4298543049_))
                            (let ((_e4299343051_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g4298543049_))))
                              (let ((_hd4299243054_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4299343051_)))
                                    (_tl4299143056_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4299343051_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd4299243054_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd4299243054_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl4299143056_))
                                            (let ((_e4299643059_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl4299143056_))))
                                              (let ((_hd4299543062_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4299643059_)))
                                                    (_tl4299443064_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4299643059_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl4299443064_))
                                                    (let ((_e4299943067_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl4299443064_))))
                                                      (let ((_hd4299843070_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e4299943067_)))
                    (_tl4299743072_
                     (let () (declare (not safe)) (##cdr _e4299943067_))))
                (if (let () (declare (not safe)) (gx#stx-pair? _hd4299843070_))
                    (let ((_e4300243075_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd4299843070_))))
                      (let ((_hd4300143078_
                             (let ()
                               (declare (not safe))
                               (##car _e4300243075_)))
                            (_tl4300043080_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4300243075_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd4300143078_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd4300143078_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl4300043080_))
                                    (let ((_e4300543083_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl4300043080_))))
                                      (let ((_hd4300443086_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4300543083_)))
                                            (_tl4300343088_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4300543083_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd4300443086_))
                                            (let ((_e4300843091_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd4300443086_))))
                                              (let ((_hd4300743094_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4300843091_)))
                                                    (_tl4300643096_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4300843091_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd4300743094_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd4300743094_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl4300643096_))
                                                            (let ((_e4301143099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl4300643096_))))
                      (let ((_hd4301043102_
                             (let ()
                               (declare (not safe))
                               (##car _e4301143099_)))
                            (_tl4300943104_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4301143099_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl4300943104_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl4300343088_))
                                (let ((_e4301443107_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl4300343088_))))
                                  (let ((_hd4301343110_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4301443107_)))
                                        (_tl4301243112_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4301443107_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd4301343110_))
                                        (let ((_e4301743115_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd4301343110_))))
                                          (let ((_hd4301643118_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4301743115_)))
                                                (_tl4301543120_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4301743115_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd4301643118_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd4301643118_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl4301543120_))
                                                        (let ((_e4302043123_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl4301543120_))))
                  (let ((_hd4301943126_
                         (let () (declare (not safe)) (##car _e4302043123_)))
                        (_tl4301843128_
                         (let () (declare (not safe)) (##cdr _e4302043123_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl4301843128_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl4301243112_))
                            (let ((_e4302343131_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl4301243112_))))
                              (let ((_hd4302243134_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4302343131_)))
                                    (_tl4302143136_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4302343131_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd4302243134_))
                                    (let ((_e4302643139_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd4302243134_))))
                                      (let ((_hd4302543142_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4302643139_)))
                                            (_tl4302443144_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4302643139_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _hd4302543142_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd4302543142_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl4302443144_))
                                                    (let ((_e4302943147_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl4302443144_))))
                                                      (let ((_hd4302843150_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e4302943147_)))
                    (_tl4302743152_
                     (let () (declare (not safe)) (##cdr _e4302943147_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl4302743152_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl4302143136_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl4302143136_))
                                  '1)
                            (let ((_g46005_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl4302143136_
                                      '1))))
                              (begin
                                (let ((_g46006_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g46005_)
                                             (##vector-length _g46005_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g46006_ 2)))
                                      (error "Context expects 2 values"
                                             _g46006_)))
                                (let ((_target4303043155_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g46005_ 0)))
                                      (_tl4303243157_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g46005_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl4303243157_))
                                      (let ((_e4304143160_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl4303243157_))))
                                        (let ((_hd4304043163_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4304143160_)))
                                              (_tl4303943165_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4304143160_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl4303943165_))
                                              (letrec ((_loop4303343168_
                                                        (lambda (_hd4303143171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref4303743173_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd4303143171_))
                      (let ((_e4303443176_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd4303143171_))))
                        (let ((_lp-hd4303543179_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4303443176_)))
                              (_lp-tl4303643181_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4303443176_))))
                          (let ((__tmp46078
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd4303543179_
                                         _kw-ref4303743173_))))
                            (declare (not safe))
                            (_loop4303343168_ _lp-tl4303643181_ __tmp46078))))
                      (let ((_kw-ref4303843184_ (reverse _kw-ref4303743173_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl4299743072_))
                            ((lambda (_L43187_
                                      _L43188_
                                      _L43189_
                                      _L43190_
                                      _L43191_)
                               (let* ((_kw-count43242_
                                       (length (let ((__tmp46007
                                                      (lambda (_g4323443237_
                                                               _g4323543239_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g4323443237_
                                                                _g4323543239_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp46007
                                                         '()
                                                         _L43188_))))
                                      (_self-index43244_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count43242_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L42943_))
                                     (let* ((_g4324743261_
                                             (lambda (_g4324843258_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g4324843258_))))
                                            (_g4324643432_
                                             (lambda (_g4324843264_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g4324843264_))
                                                   (let ((_e4325343266_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g4324843264_))))
                                                     (let ((_hd4325243269_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4325343266_)))
                                                           (_tl4325143271_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4325343266_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl4325143271_))
                                                           (let ((_e4325643274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl4325143271_))))
                     (let ((_hd4325543277_
                            (let ()
                              (declare (not safe))
                              (##car _e4325643274_)))
                           (_tl4325443279_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4325643274_))))
                       ((lambda (_L43282_ _L43283_)
                          (let ((_self43299_
                                 (list-ref _L43283_ _self-index43244_)))
                            (for-each
                             (lambda (_g4330043302_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g4330043302_
                                  _self43299_
                                  _method-calls40949_
                                  _slot-refs40950_
                                  _class-type-check40951_
                                  _struct-type-check40952_
                                  _struct-type-assert40953_)))
                             _L43282_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?40956_))
                                _stx40855_
                                (let* ((_specializer-id43311_
                                        (let* ((_id43305_
                                                (make-symbol
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _L40930_))
                                                 '"::specialize"))
                                               (_specializer-id43308_
                                                (let ((__tmp46051
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx40855_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id43305_
                                                   __tmp46051))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id43308_))
                                          _specializer-id43308_))
                                       (_lifted-specializer-id43318_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?40958_))
                                            (let* ((_id43313_
                                                    (make-symbol
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L40930_))
                                                     '"::specialize::unchecked"))
                                                   (_lifted-specializer-id43315_
                                                    (let ((__tmp46052
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx40855_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id43313_
                                                       __tmp46052))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id43315_))
                                              _lifted-specializer-id43315_)
                                            '#f))
                                       (_$t43320_ (make-symbol (gensym '__t)))
                                       (_methods43322_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls40949_)))
                                       (_$methods43326_
                                        (map (lambda (_id43324_)
                                               (make-symbol
                                                '"__"
                                                (gensym _id43324_)))
                                             _methods43322_))
                                       (_g46053_
                                        (for-each
                                         (lambda (_g4332743330_ _g4332843332_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls40949_
                                              _g4332743330_
                                              _g4332843332_)))
                                         _methods43322_
                                         _$methods43326_))
                                       (_methods-bind43343_
                                        (map (lambda (_g4333543338_
                                                      _g4333643340_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind40857_
                                                  _$t43320_
                                                  _g4333543338_
                                                  _g4333643340_)))
                                             _methods43322_
                                             _$methods43326_))
                                       (_slots43345_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs40950_)))
                                       (_$slots43349_
                                        (map (lambda (_id43347_)
                                               (make-symbol
                                                '"__"
                                                (gensym _id43347_)))
                                             _slots43345_))
                                       (_g46054_
                                        (for-each
                                         (lambda (_g4335043353_ _g4335143355_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs40950_
                                              _g4335043353_
                                              _g4335143355_)))
                                         _slots43345_
                                         _$slots43349_))
                                       (_slots-bind43366_
                                        (map (lambda (_g4335843361_
                                                      _g4335943363_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind40858_
                                                  _$t43320_
                                                  _g4335843361_
                                                  _g4335943363_)))
                                             _slots43345_
                                             _$slots43349_))
                                       (_class-check43368_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _class-type-check40951_)))
                                       (_$class-check43371_
                                        (map (lambda (_g46055_)
                                               (make-symbol (gensym '__class)))
                                             _class-check43368_))
                                       (_g46056_
                                        (for-each
                                         (lambda (_g4337243375_ _g4337343377_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check40951_
                                              _g4337243375_
                                              _g4337343377_)))
                                         _class-check43368_
                                         _$class-check43371_))
                                       (_class-check-bind43388_
                                        (map (lambda (_g4338043383_
                                                      _g4338143385_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind40859_
                                                  _$t43320_
                                                  _g4338043383_
                                                  _g4338143385_)))
                                             _class-check43368_
                                             _$class-check43371_))
                                       (_struct-check-all43390_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check40952_
                                           _struct-type-assert40953_)))
                                       (_struct-check43392_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _struct-check-all43390_)))
                                       (_$struct-check43395_
                                        (map (lambda (_g46057_)
                                               (make-symbol (gensym '__class)))
                                             _struct-check43392_))
                                       (_g46058_
                                        (for-each
                                         (lambda (_g4339643399_ _g4339743401_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all43390_
                                              _g4339643399_
                                              _g4339743401_)))
                                         _struct-check43392_
                                         _$struct-check43395_))
                                       (_struct-check-bind43412_
                                        (map (lambda (_g4340443407_
                                                      _g4340543409_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind40860_
                                                  _$t43320_
                                                  _g4340443407_
                                                  _g4340543409_)))
                                             _struct-check43392_
                                             _$struct-check43395_))
                                       (_make-specializer-impl43423_
                                        (lambda (_struct-type-check143414_
                                                 _struct-type-check243415_)
                                          (let* ((_specializer-body43421_
                                                  (map (lambda (_g4341643418_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g4341643418_
                                                            _self43299_
                                                            _$t43320_
                                                            _method-calls40949_
                                                            _slot-refs40950_
                                                            _class-type-check40951_
                                                            _struct-type-check143414_
                                                            _struct-type-check243415_)))
                                                       _L43282_))
                                                 (__tmp46059
                                                  (let ((__tmp46060
                                                         (let ((__tmp46062
                                                                (let ((__tmp46063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp46075
                                      (let ()
                                        (declare (not safe))
                                        (cons _L42945_ '())))
                                     (__tmp46064
                                      (let ((__tmp46065
                                             (let ((__tmp46066
                                                    (let ((__tmp46068
                                                           (let ((__tmp46069
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp46074
                                 (let ()
                                   (declare (not safe))
                                   (cons _L42944_ '())))
                                (__tmp46070
                                 (let ((__tmp46071
                                        (let ((__tmp46072
                                               (let ((__tmp46073
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L43283_
                                                              _specializer-body43421_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda __tmp46073))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp46072
                                           _L42943_))))
                                   (declare (not safe))
                                   (cons __tmp46071 '()))))
                            (declare (not safe))
                            (cons __tmp46074 __tmp46070))))
                     (declare (not safe))
                     (cons __tmp46069 '())))
                  (__tmp46067
                   (let () (declare (not safe)) (cons _L42942_ '()))))
              (declare (not safe))
              (cons __tmp46068 __tmp46067))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp46066))))
                                        (declare (not safe))
                                        (cons __tmp46065 '()))))
                                 (declare (not safe))
                                 (cons __tmp46075 __tmp46064))))
                          (declare (not safe))
                          (cons __tmp46063 '())))
                       (__tmp46061
                        (let () (declare (not safe)) (cons _L42941_ '()))))
                   (declare (not safe))
                   (cons __tmp46062 __tmp46061))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp46060))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp46059
                                             _stx40855_))))
                                       (_specializer-impl43425_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl43423_
                                           _struct-check-all43390_
                                           _empty40954_)))
                                       (_unchecked-specializer-impl43427_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?40957_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl43423_
                                               _empty40954_
                                               _struct-check-all43390_))
                                            '#f))
                                       (_specializer-impl43429_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl40861_
                                           _$t43320_
                                           _methods-bind43343_
                                           _slots-bind43366_
                                           _class-check-bind43388_
                                           _struct-check-bind43412_
                                           _specializer-impl43425_
                                           _lifted-specializer-id43318_
                                           _unchecked-specializer-impl43427_))))
                                  (let ((__tmp46077
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L40930_)))
                                        (__tmp46076
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id43311_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp46077
                                     '" => "
                                     __tmp46076))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def40862_
                                     _L40930_
                                     _specializer-id43311_
                                     _specializer-impl43429_
                                     _lifted-specializer-id43318_
                                     _unchecked-specializer-impl43427_))))))
                        _tl4325443279_
                        _hd4325543277_)))
                   (let ()
                     (declare (not safe))
                     (_g4324743261_ _g4324843264_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g4324743261_
                                                      _g4324843264_))))))
                                       (declare (not safe))
                                       (_g4324643432_ _L42943_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L42943_))
                                         (let* ((_g4343543465_
                                                 (lambda (_g4343643462_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g4343643462_))))
                                                (_g4343444090_
                                                 (lambda (_g4343643468_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g4343643468_))
                                                       (let ((_e4344243470_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g4343643468_))))
                 (let ((_hd4344143473_
                        (let () (declare (not safe)) (##car _e4344243470_)))
                       (_tl4344043475_
                        (let () (declare (not safe)) (##cdr _e4344243470_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl4344043475_))
                       (let ((_e4344543478_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl4344043475_))))
                         (let ((_hd4344443481_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4344543478_)))
                               (_tl4344343483_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4344543478_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd4344443481_))
                               (let ((_e4344843486_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd4344443481_))))
                                 (let ((_hd4344743489_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4344843486_)))
                                       (_tl4344643491_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4344843486_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd4344743489_))
                                       (let ((_e4345143494_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd4344743489_))))
                                         (let ((_hd4345043497_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4345143494_)))
                                               (_tl4344943499_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4345143494_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair? _hd4345043497_))
                                               (let ((_e4345443502_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd4345043497_))))
                                                 (let ((_hd4345343505_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4345443502_)))
                                                       (_tl4345243507_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4345443502_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl4345243507_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl4344943499_))
                                                           (let ((_e4345743510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl4344943499_))))
                     (let ((_hd4345643513_
                            (let ()
                              (declare (not safe))
                              (##car _e4345743510_)))
                           (_tl4345543515_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4345743510_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl4345543515_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl4344643491_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl4344343483_))
                                   (let ((_e4346043518_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl4344343483_))))
                                     (let ((_hd4345943521_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4346043518_)))
                                           (_tl4345843523_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4346043518_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl4345843523_))
                                           ((lambda (_L43526_
                                                     _L43527_
                                                     _L43528_)
                                              (let* ((_g4355143565_
                                                      (lambda (_g4355243562_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g4355243562_))))
                                                     (_g4355043606_
                                                      (lambda (_g4355243568_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g4355243568_))
                                                            (let ((_e4355743570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g4355243568_))))
                      (let ((_hd4355643573_
                             (let ()
                               (declare (not safe))
                               (##car _e4355743570_)))
                            (_tl4355543575_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4355743570_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl4355543575_))
                            (let ((_e4356043578_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl4355543575_))))
                              (let ((_hd4355943581_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4356043578_)))
                                    (_tl4355843583_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4356043578_))))
                                ((lambda (_L43586_ _L43587_)
                                   (let ((_self43600_
                                          (list-ref
                                           _L43587_
                                           _self-index43244_)))
                                     (for-each
                                      (lambda (_g4360143603_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g4360143603_
                                           _self43600_
                                           _method-calls40949_
                                           _slot-refs40950_
                                           _class-type-check40951_
                                           _struct-type-check40952_
                                           _struct-type-assert40953_)))
                                      _L43586_)))
                                 _tl4355843583_
                                 _hd4355943581_)))
                            (let ()
                              (declare (not safe))
                              (_g4355143565_ _g4355243568_)))))
                    (let ()
                      (declare (not safe))
                      (_g4355143565_ _g4355243568_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g4355043606_ _L43527_))
                                              (let* ((_g4360943628_
                                                      (lambda (_g4361043625_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g4361043625_))))
                                                     (_g4360843733_
                                                      (lambda (_g4361043631_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g4361043631_))
                                                            (let ((_e4361443633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g4361043631_))))
                      (let ((_hd4361343636_
                             (let ()
                               (declare (not safe))
                               (##car _e4361443633_)))
                            (_tl4361243638_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4361443633_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl4361243638_))
                            (let ((_g46008_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl4361243638_
                                      '0))))
                              (begin
                                (let ((_g46009_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g46008_)
                                             (##vector-length _g46008_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g46009_ 2)))
                                      (error "Context expects 2 values"
                                             _g46009_)))
                                (let ((_target4361543641_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g46008_ 0)))
                                      (_tl4361743643_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g46008_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl4361743643_))
                                      (letrec ((_loop4361843646_
                                                (lambda (_hd4361643649_
                                                         _clause4362243651_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd4361643649_))
                                                      (let ((_e4361943654_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd4361643649_))))
                (let ((_lp-hd4362043657_
                       (let () (declare (not safe)) (##car _e4361943654_)))
                      (_lp-tl4362143659_
                       (let () (declare (not safe)) (##cdr _e4361943654_))))
                  (let ((__tmp46011
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd4362043657_ _clause4362243651_))))
                    (declare (not safe))
                    (_loop4361843646_ _lp-tl4362143659_ __tmp46011))))
              (let ((_clause4362343662_ (reverse _clause4362243651_)))
                ((lambda (_L43665_)
                   (for-each
                    (lambda (_clause43678_)
                      (let* ((_g4368043691_
                              (lambda (_g4368143688_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g4368143688_))))
                             (_g4367943723_
                              (lambda (_g4368143694_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g4368143694_))
                                    (let ((_e4368643696_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g4368143694_))))
                                      (let ((_hd4368543699_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4368643696_)))
                                            (_tl4368443701_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4368643696_))))
                                        ((lambda (_L43704_ _L43705_)
                                           (let ((_self43717_
                                                  (list-ref
                                                   _L43705_
                                                   _self-index43244_)))
                                             (for-each
                                              (lambda (_g4371843720_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g4371843720_
                                                   _self43717_
                                                   _method-calls40949_
                                                   _slot-refs40950_
                                                   _class-type-check40951_
                                                   _struct-type-check40952_
                                                   _struct-type-assert40953_)))
                                              _L43704_)))
                                         _tl4368443701_
                                         _hd4368543699_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4368043691_ _g4368143694_))))))
                        (declare (not safe))
                        (_g4367943723_ _clause43678_)))
                    (let ((__tmp46010
                           (lambda (_g4372543728_ _g4372643730_)
                             (let ()
                               (declare (not safe))
                               (cons _g4372543728_ _g4372643730_)))))
                      (declare (not safe))
                      (foldr1 __tmp46010 '() _L43665_))))
                 _clause4362343662_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop4361843646_
                                           _target4361543641_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g4360943628_ _g4361043631_))))))
                            (let ()
                              (declare (not safe))
                              (_g4360943628_ _g4361043631_)))))
                    (let ()
                      (declare (not safe))
                      (_g4360943628_ _g4361043631_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g4360843733_ _L43526_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?40956_))
                                                  _stx40855_
                                                  (let* ((_specializer-id43742_
                                                          (let* ((_id43736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-symbol
                           (let () (declare (not safe)) (gx#stx-e _L40930_))
                           '"::specialize"))
                         (_specializer-id43739_
                          (let ((__tmp46012
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx40855_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id43736_ __tmp46012))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id43739_))
                    _specializer-id43739_))
                 (_lifted-specializer-id43749_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?40958_))
                      (let* ((_id43744_
                              (make-symbol
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L40930_))
                               '"::specialize::unchecked"))
                             (_lifted-specializer-id43746_
                              (let ((__tmp46013
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx40855_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id43744_
                                 __tmp46013))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id43746_))
                        _lifted-specializer-id43746_)
                      '#f))
                 (_$t43751_ (make-symbol (gensym '__t)))
                 (_methods43753_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls40949_)))
                 (_$methods43757_
                  (map (lambda (_id43755_)
                         (make-symbol '"__" (gensym _id43755_)))
                       _methods43753_))
                 (_g46014_
                  (for-each
                   (lambda (_g4375843761_ _g4375943763_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls40949_
                        _g4375843761_
                        _g4375943763_)))
                   _methods43753_
                   _$methods43757_))
                 (_methods-bind43774_
                  (map (lambda (_g4376643769_ _g4376743771_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind40857_
                            _$t43751_
                            _g4376643769_
                            _g4376743771_)))
                       _methods43753_
                       _$methods43757_))
                 (_slots43776_
                  (let () (declare (not safe)) (hash-keys _slot-refs40950_)))
                 (_$slots43780_
                  (map (lambda (_id43778_)
                         (make-symbol '"__" (gensym _id43778_)))
                       _slots43776_))
                 (_g46015_
                  (for-each
                   (lambda (_g4378143784_ _g4378243786_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs40950_
                        _g4378143784_
                        _g4378243786_)))
                   _slots43776_
                   _$slots43780_))
                 (_slots-bind43797_
                  (map (lambda (_g4378943792_ _g4379043794_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind40858_
                            _$t43751_
                            _g4378943792_
                            _g4379043794_)))
                       _slots43776_
                       _$slots43780_))
                 (_class-check43799_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check40951_)))
                 (_$class-check43802_
                  (map (lambda (_g46016_) (make-symbol (gensym '__class)))
                       _class-check43799_))
                 (_g46017_
                  (for-each
                   (lambda (_g4380343806_ _g4380443808_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check40951_
                        _g4380343806_
                        _g4380443808_)))
                   _class-check43799_
                   _$class-check43802_))
                 (_class-check-bind43819_
                  (map (lambda (_g4381143814_ _g4381243816_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind40859_
                            _$t43751_
                            _g4381143814_
                            _g4381243816_)))
                       _class-check43799_
                       _$class-check43802_))
                 (_struct-check-all43821_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check40952_
                     _struct-type-assert40953_)))
                 (_struct-check43823_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all43821_)))
                 (_$struct-check43826_
                  (map (lambda (_g46018_) (make-symbol (gensym '__class)))
                       _struct-check43823_))
                 (_g46019_
                  (for-each
                   (lambda (_g4382743830_ _g4382843832_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all43821_
                        _g4382743830_
                        _g4382843832_)))
                   _struct-check43823_
                   _$struct-check43826_))
                 (_struct-check-bind43843_
                  (map (lambda (_g4383543838_ _g4383643840_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind40860_
                            _$t43751_
                            _g4383543838_
                            _g4383643840_)))
                       _struct-check43823_
                       _$struct-check43826_))
                 (_make-specializer-lambda-expr43929_
                  (lambda (_struct-type-check143845_ _struct-type-check243846_)
                    (let* ((_g4384843862_
                            (lambda (_g4384943859_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g4384943859_))))
                           (_g4384743926_
                            (lambda (_g4384943865_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g4384943865_))
                                  (let ((_e4385443867_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g4384943865_))))
                                    (let ((_hd4385343870_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4385443867_)))
                                          (_tl4385243872_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4385443867_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl4385243872_))
                                          (let ((_e4385743875_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl4385243872_))))
                                            (let ((_hd4385643878_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4385743875_)))
                                                  (_tl4385543880_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4385743875_))))
                                              ((lambda (_L43883_ _L43884_)
                                                 (let* ((_self43917_
                                                         (list-ref
                                                          _L43884_
                                                          _self-index43244_))
                                                        (_body43923_
                                                         (map (lambda (_g4391843920_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g4391843920_
                           _self43917_
                           _$t43751_
                           _method-calls40949_
                           _slot-refs40950_
                           _class-type-check40951_
                           _struct-type-check143845_
                           _struct-type-check243846_)))
                      _L43883_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp46020
                                                          (let ((__tmp46021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L43884_ _body43923_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp46021))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp46020
                                                      _L43527_))))
                                               _tl4385543880_
                                               _hd4385643878_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g4384843862_ _g4384943865_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4384843862_ _g4384943865_))))))
                      (declare (not safe))
                      (_g4384743926_ _L43527_))))
                 (_make-specializer-case-lambda-expr44068_
                  (lambda (_struct-type-check143931_ _struct-type-check243932_)
                    (let* ((_g4393443953_
                            (lambda (_g4393543950_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g4393543950_))))
                           (_g4393344065_
                            (lambda (_g4393543956_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g4393543956_))
                                  (let ((_e4393943958_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g4393543956_))))
                                    (let ((_hd4393843961_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4393943958_)))
                                          (_tl4393743963_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4393943958_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null? _tl4393743963_))
                                          (let ((_g46022_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl4393743963_
                                                    '0))))
                                            (begin
                                              (let ((_g46023_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g46022_)
                                                           (##vector-length
                                                            _g46022_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g46023_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g46023_)))
                                              (let ((_target4394043966_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g46022_
                                                        0)))
                                                    (_tl4394243968_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g46022_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl4394243968_))
                                                    (letrec ((_loop4394343971_
                                                              (lambda (_hd4394143974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause4394743976_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd4394143974_))
                            (let ((_e4394443979_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd4394143974_))))
                              (let ((_lp-hd4394543982_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4394443979_)))
                                    (_lp-tl4394643984_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4394443979_))))
                                (let ((__tmp46026
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd4394543982_
                                               _clause4394743976_))))
                                  (declare (not safe))
                                  (_loop4394343971_
                                   _lp-tl4394643984_
                                   __tmp46026))))
                            (let ((_clause4394843987_
                                   (reverse _clause4394743976_)))
                              ((lambda (_L43990_)
                                 (let* ((_clauses44063_
                                         (map (lambda (_clause44005_)
                                                (let* ((_g4400744018_
                                                        (lambda (_g4400844015_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g4400844015_))))
                                                       (_g4400644053_
                                                        (lambda (_g4400844021_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g4400844021_))
                      (let ((_e4401344023_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g4400844021_))))
                        (let ((_hd4401244026_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4401344023_)))
                              (_tl4401144028_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4401344023_))))
                          ((lambda (_L44031_ _L44032_)
                             (let* ((_self44044_
                                     (list-ref _L44032_ _self-index43244_))
                                    (_body44050_
                                     (map (lambda (_g4404544047_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g4404544047_
                                               _self44044_
                                               _$t43751_
                                               _method-calls40949_
                                               _slot-refs40950_
                                               _class-type-check40951_
                                               _struct-type-check143931_
                                               _struct-type-check243932_)))
                                          _L44031_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L44032_ _body44050_))))
                           _tl4401144028_
                           _hd4401244026_)))
                      (let ()
                        (declare (not safe))
                        (_g4400744018_ _g4400844021_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g4400644053_
                                                   _clause44005_)))
                                              (let ((__tmp46024
                                                     (lambda (_g4405544058_
                                                              _g4405644060_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g4405544058_
                                                               _g4405644060_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp46024
                                                        '()
                                                        _L43990_))))
                                        (__tmp46025
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses44063_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp46025
                                    _L43526_)))
                               _clause4394843987_))))))
              (let ()
                (declare (not safe))
                (_loop4394343971_ _target4394043966_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4393443953_
                                                       _g4393543956_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4393443953_ _g4393543956_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4393443953_ _g4393543956_))))))
                      (declare (not safe))
                      (_g4393344065_ _L43526_))))
                 (_make-specializer-impl44073_
                  (lambda (_specializer-lambda-expr44070_
                           _specializer-case-lambda-expr44071_)
                    (let ((__tmp46027
                           (let ((__tmp46028
                                  (let ((__tmp46030
                                         (let ((__tmp46031
                                                (let ((__tmp46048
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L42945_ '())))
                                                      (__tmp46032
                                                       (let ((__tmp46033
                                                              (let ((__tmp46034
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp46036
                                    (let ((__tmp46037
                                           (let ((__tmp46047
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L42944_ '())))
                                                 (__tmp46038
                                                  (let ((__tmp46039
                                                         (let ((__tmp46040
                                                                (let ((__tmp46041
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp46043
                                      (let ((__tmp46044
                                             (let ((__tmp46046
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L43528_ '())))
                                                   (__tmp46045
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr44070_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp46046 __tmp46045))))
                                        (declare (not safe))
                                        (cons __tmp46044 '())))
                                     (__tmp46042
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr44071_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp46043 __tmp46042))))
                          (declare (not safe))
                          (cons '%#let-values __tmp46041))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp46040 _stx40855_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp46039 '()))))
                                             (declare (not safe))
                                             (cons __tmp46047 __tmp46038))))
                                      (declare (not safe))
                                      (cons __tmp46037 '())))
                                   (__tmp46035
                                    (let ()
                                      (declare (not safe))
                                      (cons _L42942_ '()))))
                               (declare (not safe))
                               (cons __tmp46036 __tmp46035))))
                        (declare (not safe))
                        (cons '%#let-values __tmp46034))))
                 (declare (not safe))
                 (cons __tmp46033 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp46048
                                                        __tmp46032))))
                                           (declare (not safe))
                                           (cons __tmp46031 '())))
                                        (__tmp46029
                                         (let ()
                                           (declare (not safe))
                                           (cons _L42941_ '()))))
                                    (declare (not safe))
                                    (cons __tmp46030 __tmp46029))))
                             (declare (not safe))
                             (cons '%#let-values __tmp46028))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp46027 _stx40855_))))
                 (_specializer-lambda-expr44075_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr43929_
                     _struct-check-all43821_
                     _empty40954_)))
                 (_specializer-case-lambda-expr44077_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr44068_
                     _struct-check-all43821_
                     _empty40954_)))
                 (_specializer-impl44079_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl44073_
                     _specializer-lambda-expr44075_
                     _specializer-case-lambda-expr44077_)))
                 (_unchecked-specializer-lambda-expr44081_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?40957_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr43929_
                         _empty40954_
                         _struct-check-all43821_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr44083_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?40957_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr44068_
                         _empty40954_
                         _struct-check-all43821_))
                      '#f))
                 (_unchecked-specializer-impl44085_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?40957_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl44073_
                         _unchecked-specializer-lambda-expr44081_
                         _unchecked-specializer-case-lambda-expr44083_))
                      '#f))
                 (_specializer-impl44087_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl40861_
                     _$t43751_
                     _methods-bind43774_
                     _slots-bind43797_
                     _class-check-bind43819_
                     _struct-check-bind43843_
                     _specializer-impl44079_
                     _lifted-specializer-id43749_
                     _unchecked-specializer-impl44085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp46050
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L40930_)))
                                                          (__tmp46049
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id43742_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp46050
                                                       '" => "
                                                       __tmp46049))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def40862_
                                                       _L40930_
                                                       _specializer-id43742_
                                                       _specializer-impl44087_
                                                       _lifted-specializer-id43749_
                                                       _unchecked-specializer-impl44085_)))))
                                            _hd4345943521_
                                            _hd4345643513_
                                            _hd4345343505_)
                                           (let ()
                                             (declare (not safe))
                                             (_g4343543465_ _g4343643468_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g4343543465_ _g4343643468_)))
                               (let ()
                                 (declare (not safe))
                                 (_g4343543465_ _g4343643468_)))
                           (let ()
                             (declare (not safe))
                             (_g4343543465_ _g4343643468_)))))
                   (let () (declare (not safe)) (_g4343543465_ _g4343643468_)))
               (let () (declare (not safe)) (_g4343543465_ _g4343643468_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4343543465_
                                                  _g4343643468_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g4343543465_ _g4343643468_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g4343543465_ _g4343643468_)))))
                       (let ()
                         (declare (not safe))
                         (_g4343543465_ _g4343643468_)))))
               (let () (declare (not safe)) (_g4343543465_ _g4343643468_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g4343444090_ _L42943_))
                                         _stx40855_))))
                             _hd4304043163_
                             _kw-ref4303843184_
                             _hd4302843150_
                             _hd4301943126_
                             _hd4301043102_)
                            (let ()
                              (declare (not safe))
                              (_g4298443046_ _g4298543049_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop4303343168_
                                                   _target4303043155_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g4298443046_
                                                 _g4298543049_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4298443046_ _g4298543049_))))))
                            (let ()
                              (declare (not safe))
                              (_g4298443046_ _g4298543049_)))
                        (let ()
                          (declare (not safe))
                          (_g4298443046_ _g4298543049_)))
                    (let ()
                      (declare (not safe))
                      (_g4298443046_ _g4298543049_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4298443046_
                                                       _g4298543049_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4298443046_
                                                   _g4298543049_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g4298443046_ _g4298543049_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4298443046_ _g4298543049_)))))
                            (let ()
                              (declare (not safe))
                              (_g4298443046_ _g4298543049_)))
                        (let ()
                          (declare (not safe))
                          (_g4298443046_ _g4298543049_)))))
                (let () (declare (not safe)) (_g4298443046_ _g4298543049_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4298443046_
                                                       _g4298543049_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4298443046_
                                                   _g4298543049_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4298443046_ _g4298543049_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g4298443046_ _g4298543049_)))
                            (let ()
                              (declare (not safe))
                              (_g4298443046_ _g4298543049_)))))
                    (let ()
                      (declare (not safe))
                      (_g4298443046_ _g4298543049_)))
                (let () (declare (not safe)) (_g4298443046_ _g4298543049_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4298443046_
                                                       _g4298543049_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4298443046_ _g4298543049_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4298443046_ _g4298543049_)))
                                (let ()
                                  (declare (not safe))
                                  (_g4298443046_ _g4298543049_)))
                            (let ()
                              (declare (not safe))
                              (_g4298443046_ _g4298543049_)))))
                    (let ()
                      (declare (not safe))
                      (_g4298443046_ _g4298543049_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4298443046_
                                                       _g4298543049_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4298443046_ _g4298543049_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4298443046_ _g4298543049_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4298443046_ _g4298543049_)))))
                            (let ()
                              (declare (not safe))
                              (_g4298443046_ _g4298543049_))))))
                (declare (not safe))
                (_g4298344093_ _L42942_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd4281842936_
                                                    _hd4281542928_
                                                    _hd4281242920_
                                                    _hd4280942912_
                                                    _hd4279142864_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g4277142824_
                                                      _g4277242827_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g4277142824_ _g4277242827_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g4277142824_ _g4277242827_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g4277142824_ _g4277242827_)))
                               (let ()
                                 (declare (not safe))
                                 (_g4277142824_ _g4277242827_)))))
                       (let ()
                         (declare (not safe))
                         (_g4277142824_ _g4277242827_)))
                   (let () (declare (not safe)) (_g4277142824_ _g4277242827_)))
               (let () (declare (not safe)) (_g4277142824_ _g4277242827_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4277142824_
                                                  _g4277242827_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g4277142824_ _g4277242827_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g4277142824_ _g4277242827_)))))
                           (let ()
                             (declare (not safe))
                             (_g4277142824_ _g4277242827_)))))
                   (let ()
                     (declare (not safe))
                     (_g4277142824_ _g4277242827_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g4277142824_
                                                      _g4277242827_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4277142824_
                                                  _g4277242827_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g4277142824_ _g4277242827_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g4277142824_ _g4277242827_)))))
                           (let ()
                             (declare (not safe))
                             (_g4277142824_ _g4277242827_)))
                       (let ()
                         (declare (not safe))
                         (_g4277142824_ _g4277242827_)))))
               (let () (declare (not safe)) (_g4277142824_ _g4277242827_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4277142824_
                                                  _g4277242827_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g4277142824_ _g4277242827_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g4277142824_ _g4277242827_)))
                           (let ()
                             (declare (not safe))
                             (_g4277142824_ _g4277242827_)))
                       (let ()
                         (declare (not safe))
                         (_g4277142824_ _g4277242827_)))))
               (let () (declare (not safe)) (_g4277142824_ _g4277242827_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g4277044096_ _L40929_))
                                         _stx40855_))))))))
                  (___kont4430544306_ (lambda () _stx40855_)))
              (let ((___match4433444335_
                     (lambda (_e4087140897_
                              _hd4087040900_
                              _tl4086940902_
                              _e4087440905_
                              _hd4087340908_
                              _tl4087240910_
                              _e4087740913_
                              _hd4087640916_
                              _tl4087540918_
                              _e4088040921_
                              _hd4087940924_
                              _tl4087840926_)
                       (let ((_L40929_ _hd4087940924_)
                             (_L40930_ _hd4087640916_))
                         (if (let ((__tmp46139
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L40930_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp46139))
                             (___kont4430344304_ _L40929_ _L40930_)
                             (___kont4430544306_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx4430144302_))
                    (let ((_e4087140897_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx4430144302_))))
                      (let ((_tl4086940902_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4087140897_)))
                            (_hd4087040900_
                             (let ()
                               (declare (not safe))
                               (##car _e4087140897_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl4086940902_))
                            (let ((_e4087440905_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl4086940902_))))
                              (let ((_tl4087240910_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4087440905_)))
                                    (_hd4087340908_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4087440905_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd4087340908_))
                                    (let ((_e4087740913_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd4087340908_))))
                                      (let ((_tl4087540918_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4087740913_)))
                                            (_hd4087640916_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4087740913_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl4087540918_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl4087240910_))
                                                (let ((_e4088040921_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl4087240910_))))
                                                  (let ((_tl4087840926_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e4088040921_)))
                                                        (_hd4087940924_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e4088040921_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl4087840926_))
                                                        (___match4433444335_
                                                         _e4087140897_
                                                         _hd4087040900_
                                                         _tl4086940902_
                                                         _e4087440905_
                                                         _hd4087340908_
                                                         _tl4087240910_
                                                         _e4087740913_
                                                         _hd4087640916_
                                                         _tl4087540918_
                                                         _e4088040921_
                                                         _hd4087940924_
                                                         _tl4087840926_)
                                                        (___kont4430544306_))))
                                                (___kont4430544306_))
                                            (___kont4430544306_))))
                                    (___kont4430544306_))))
                            (___kont4430544306_))))
                    (___kont4430544306_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx39357_
               _self39358_
               _methods39359_
               _slots39360_
               _class-check39361_
               _struct-check39362_
               _struct-assert39363_)
        (let* ((___stx4433744338_ _stx39357_)
               (_g3937539693_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx4433744338_)))))
          (let ((___kont4433944340_
                 (lambda (_L40804_ _L40805_ _L40806_ _L40807_)
                   (let ((__tmp46140
                          (let () (declare (not safe)) (gx#stx-e _L40805_))))
                     (declare (not safe))
                     (table-set! _methods39359_ __tmp46140 '#t))
                   (for-each
                    (lambda (_g4084040842_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e
                         _g4084040842_
                         _self39358_
                         _methods39359_
                         _slots39360_
                         _class-check39361_
                         _struct-check39362_
                         _struct-assert39363_)))
                    (let ((__tmp46141
                           (lambda (_g4084440847_ _g4084540849_)
                             (let ()
                               (declare (not safe))
                               (cons _g4084440847_ _g4084540849_)))))
                      (declare (not safe))
                      (foldr1 __tmp46141 '() _L40804_)))))
                (___kont4434344344_
                 (lambda (_L40639_ _L40640_ _L40641_ _L40642_ _L40643_)
                   (let ((__tmp46142
                          (let () (declare (not safe)) (gx#stx-e _L40640_))))
                     (declare (not safe))
                     (table-set! _methods39359_ __tmp46142 '#t))
                   (for-each
                    (lambda (_g4068340685_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e
                         _g4068340685_
                         _self39358_
                         _methods39359_
                         _slots39360_
                         _class-check39361_
                         _struct-check39362_
                         _struct-assert39363_)))
                    (let ((__tmp46143
                           (lambda (_g4068740690_ _g4068840692_)
                             (let ()
                               (declare (not safe))
                               (cons _g4068740690_ _g4068840692_)))))
                      (declare (not safe))
                      (foldr1 __tmp46143 '() _L40639_)))))
                (___kont4434744348_
                 (lambda (_L40472_ _L40473_ _L40474_)
                   (let ((__tmp46144
                          (let () (declare (not safe)) (gx#stx-e _L40472_))))
                     (declare (not safe))
                     (table-set! _slots39360_ __tmp46144 '#t))))
                (___kont4434944350_
                 (lambda (_L40349_ _L40350_ _L40351_ _L40352_)
                   (let ((__tmp46145
                          (let () (declare (not safe)) (gx#stx-e _L40350_))))
                     (declare (not safe))
                     (table-set! _slots39360_ __tmp46145 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e
                      _L40349_
                      _self39358_
                      _methods39359_
                      _slots39360_
                      _class-check39361_
                      _struct-check39362_
                      _struct-assert39363_))))
                (___kont4435144352_
                 (lambda (_L40233_ _L40234_)
                   (let ((__tmp46146
                          (##structure-ref
                           (let ((__tmp46147
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L40234_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp46147))
                           '2
                           gxc#!class-getf::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots39360_ __tmp46146 '#t))))
                (___kont4435344354_
                 (lambda (_L40145_ _L40146_ _L40147_)
                   (let ((__tmp46148
                          (##structure-ref
                           (let ((__tmp46149
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L40147_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp46149))
                           '2
                           gxc#!class-setf::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots39360_ __tmp46148 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e
                      _L40145_
                      _self39358_
                      _methods39359_
                      _slots39360_
                      _class-check39361_
                      _struct-check39362_
                      _struct-assert39363_))))
                (___kont4435544356_
                 (lambda (_L40053_ _L40054_)
                   (let ((__tmp46150
                          (##structure-ref
                           (let ((__tmp46151
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L40054_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp46151))
                           '1
                           gxc#!type::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _class-check39361_ __tmp46150 '#t))))
                (___kont4435744358_
                 (lambda (_L39969_ _L39970_)
                   (let ((__tmp46152
                          (##structure-ref
                           (let ((__tmp46153
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L39970_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp46153))
                           '1
                           gxc#!type::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _struct-check39362_ __tmp46152 '#t))))
                (___kont4435944360_
                 (lambda (_L39872_ _L39873_)
                   (let ((_getf39906_
                          (let ((__tmp46154
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L39873_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp46154))))
                     (if (##structure-ref
                          _getf39906_
                          '3
                          gxc#!struct-getf::t
                          '#f)
                         '#!void
                         (let ((__tmp46155
                                (##structure-ref
                                 _getf39906_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (table-set!
                            _struct-assert39363_
                            __tmp46155
                            '#t))))))
                (___kont4436144362_
                 (lambda (_L39769_ _L39770_ _L39771_)
                   (let ((_setf39809_
                          (let ((__tmp46156
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L39771_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp46156))))
                     (if (##structure-ref
                          _setf39809_
                          '3
                          gxc#!struct-setf::t
                          '#f)
                         '#!void
                         (let ((__tmp46157
                                (##structure-ref
                                 _setf39809_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (table-set! _struct-assert39363_ __tmp46157 '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e
                        _L39769_
                        _self39358_
                        _methods39359_
                        _slots39360_
                        _class-check39361_
                        _struct-check39362_
                        _struct-assert39363_)))))
                (___kont4436344364_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx39357_
                      _self39358_
                      _methods39359_
                      _slots39360_
                      _class-check39361_
                      _struct-check39362_
                      _struct-assert39363_)))))
            (let* ((___match4507445075_
                    (lambda (_e3966739705_
                             _hd3966639708_
                             _tl3966539710_
                             _e3967039713_
                             _hd3966939716_
                             _tl3966839718_
                             _e3967339721_
                             _hd3967239724_
                             _tl3967139726_
                             _e3967639729_
                             _hd3967539732_
                             _tl3967439734_
                             _e3967939737_
                             _hd3967839740_
                             _tl3967739742_
                             _e3968239745_
                             _hd3968139748_
                             _tl3968039750_
                             _e3968539753_
                             _hd3968439756_
                             _tl3968339758_
                             _e3968839761_
                             _hd3968739764_
                             _tl3968639766_)
                      (let ((_L39769_ _hd3968739764_)
                            (_L39770_ _hd3968439756_)
                            (_L39771_ _hd3967539732_))
                        (if (if (let ((__tmp46160
                                       (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L39770_
                                          _self39358_))))
                                  (declare (not safe))
                                  (not __tmp46160))
                                '#f
                                (let ((_$e39798_
                                       (let ((__tmp46158
                                              (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _L39771_))))
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-type
                                          __tmp46158))))
                                  (and _$e39798_
                                       ((lambda (_t39801_)
                                          (and (let ()
                                                 (declare (not safe))
                                                 (##structure-instance-of?
                                                  _t39801_
                                                  'gxc#!struct-setf::t))
                                               (let ((_struct-t3980239804_
                                                      (let ((__tmp46159
                                                             (##structure-ref
                                                              _t39801_
                                                              '1
                                                              gxc#!type::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (gxc#optimizer-resolve-type
                                                         __tmp46159))))
                                                 (and _struct-t3980239804_
                                                      (let ((_struct-t39807_
                                                             _struct-t3980239804_))
                                                        (##structure-ref
                                                         _struct-t39807_
                                                         '4
                                                         gxc#!struct-type::t
                                                         '#f))))))
                                        _$e39798_))))
                            (___kont4436144362_ _L39769_ _L39770_ _L39771_)
                            (___kont4436344364_)))))
                   (___match4506645067_
                    (lambda (_e3966739705_
                             _hd3966639708_
                             _tl3966539710_
                             _e3967039713_
                             _hd3966939716_
                             _tl3966839718_
                             _e3967339721_
                             _hd3967239724_
                             _tl3967139726_
                             _e3967639729_
                             _hd3967539732_
                             _tl3967439734_
                             _e3967939737_
                             _hd3967839740_
                             _tl3967739742_
                             _e3968239745_
                             _hd3968139748_
                             _tl3968039750_
                             _e3968539753_
                             _hd3968439756_
                             _tl3968339758_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl3967739742_))
                          (let ((_e3968839761_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl3967739742_))))
                            (let ((_tl3968639766_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3968839761_)))
                                  (_hd3968739764_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3968839761_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl3968639766_))
                                  (___match4507445075_
                                   _e3966739705_
                                   _hd3966639708_
                                   _tl3966539710_
                                   _e3967039713_
                                   _hd3966939716_
                                   _tl3966839718_
                                   _e3967339721_
                                   _hd3967239724_
                                   _tl3967139726_
                                   _e3967639729_
                                   _hd3967539732_
                                   _tl3967439734_
                                   _e3967939737_
                                   _hd3967839740_
                                   _tl3967739742_
                                   _e3968239745_
                                   _hd3968139748_
                                   _tl3968039750_
                                   _e3968539753_
                                   _hd3968439756_
                                   _tl3968339758_
                                   _e3968839761_
                                   _hd3968739764_
                                   _tl3968639766_)
                                  (___kont4436344364_))))
                          (___kont4436344364_))))
                   (___match4501245013_
                    (lambda (_e3964339816_
                             _hd3964239819_
                             _tl3964139821_
                             _e3964639824_
                             _hd3964539827_
                             _tl3964439829_
                             _e3964939832_
                             _hd3964839835_
                             _tl3964739837_
                             _e3965239840_
                             _hd3965139843_
                             _tl3965039845_
                             _e3965539848_
                             _hd3965439851_
                             _tl3965339853_
                             _e3965839856_
                             _hd3965739859_
                             _tl3965639861_
                             _e3966139864_
                             _hd3966039867_
                             _tl3965939869_)
                      (let ((_L39872_ _hd3966039867_)
                            (_L39873_ _hd3965139843_))
                        (if (if (let ((__tmp46163
                                       (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L39872_
                                          _self39358_))))
                                  (declare (not safe))
                                  (not __tmp46163))
                                '#f
                                (let ((_$e39895_
                                       (let ((__tmp46161
                                              (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _L39873_))))
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-type
                                          __tmp46161))))
                                  (and _$e39895_
                                       ((lambda (_t39898_)
                                          (and (let ()
                                                 (declare (not safe))
                                                 (##structure-instance-of?
                                                  _t39898_
                                                  'gxc#!struct-getf::t))
                                               (let ((_struct-t3989939901_
                                                      (let ((__tmp46162
                                                             (##structure-ref
                                                              _t39898_
                                                              '1
                                                              gxc#!type::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (gxc#optimizer-resolve-type
                                                         __tmp46162))))
                                                 (and _struct-t3989939901_
                                                      (let ((_struct-t39904_
                                                             _struct-t3989939901_))
                                                        (##structure-ref
                                                         _struct-t39904_
                                                         '4
                                                         gxc#!struct-type::t
                                                         '#f))))))
                                        _$e39895_))))
                            (___kont4435944360_ _L39872_ _L39873_)
                            (___kont4436344364_)))))
                   (___match4495644957_
                    (lambda (_e3962039913_
                             _hd3961939916_
                             _tl3961839918_
                             _e3962339921_
                             _hd3962239924_
                             _tl3962139926_
                             _e3962639929_
                             _hd3962539932_
                             _tl3962439934_
                             _e3962939937_
                             _hd3962839940_
                             _tl3962739942_
                             _e3963239945_
                             _hd3963139948_
                             _tl3963039950_
                             _e3963539953_
                             _hd3963439956_
                             _tl3963339958_
                             _e3963839961_
                             _hd3963739964_
                             _tl3963639966_)
                      (let ((_L39969_ _hd3963739964_)
                            (_L39970_ _hd3962839940_))
                        (if (and (let ((__tmp46164
                                        (let ((__tmp46165
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L39970_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp46165))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp46164
                                    'gxc#!struct-pred::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L39969_
                                    _self39358_)))
                            (___kont4435744358_ _L39969_ _L39970_)
                            (___match4501245013_
                             _e3962039913_
                             _hd3961939916_
                             _tl3961839918_
                             _e3962339921_
                             _hd3962239924_
                             _tl3962139926_
                             _e3962639929_
                             _hd3962539932_
                             _tl3962439934_
                             _e3962939937_
                             _hd3962839940_
                             _tl3962739942_
                             _e3963239945_
                             _hd3963139948_
                             _tl3963039950_
                             _e3963539953_
                             _hd3963439956_
                             _tl3963339958_
                             _e3963839961_
                             _hd3963739964_
                             _tl3963639966_)))))
                   (___match4490044901_
                    (lambda (_e3959739997_
                             _hd3959640000_
                             _tl3959540002_
                             _e3960040005_
                             _hd3959940008_
                             _tl3959840010_
                             _e3960340013_
                             _hd3960240016_
                             _tl3960140018_
                             _e3960640021_
                             _hd3960540024_
                             _tl3960440026_
                             _e3960940029_
                             _hd3960840032_
                             _tl3960740034_
                             _e3961240037_
                             _hd3961140040_
                             _tl3961040042_
                             _e3961540045_
                             _hd3961440048_
                             _tl3961340050_)
                      (let ((_L40053_ _hd3961440048_)
                            (_L40054_ _hd3960540024_))
                        (if (and (let ((__tmp46166
                                        (let ((__tmp46167
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L40054_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp46167))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp46166
                                    'gxc#!class-pred::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L40053_
                                    _self39358_)))
                            (___kont4435544356_ _L40053_ _L40054_)
                            (___match4495644957_
                             _e3959739997_
                             _hd3959640000_
                             _tl3959540002_
                             _e3960040005_
                             _hd3959940008_
                             _tl3959840010_
                             _e3960340013_
                             _hd3960240016_
                             _tl3960140018_
                             _e3960640021_
                             _hd3960540024_
                             _tl3960440026_
                             _e3960940029_
                             _hd3960840032_
                             _tl3960740034_
                             _e3961240037_
                             _hd3961140040_
                             _tl3961040042_
                             _e3961540045_
                             _hd3961440048_
                             _tl3961340050_)))))
                   (___match4489844899_
                    (lambda (_e3959739997_
                             _hd3959640000_
                             _tl3959540002_
                             _e3960040005_
                             _hd3959940008_
                             _tl3959840010_
                             _e3960340013_
                             _hd3960240016_
                             _tl3960140018_
                             _e3960640021_
                             _hd3960540024_
                             _tl3960440026_
                             _e3960940029_
                             _hd3960840032_
                             _tl3960740034_
                             _e3961240037_
                             _hd3961140040_
                             _tl3961040042_
                             _e3961540045_
                             _hd3961440048_
                             _tl3961340050_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl3960740034_))
                          (___match4490044901_
                           _e3959739997_
                           _hd3959640000_
                           _tl3959540002_
                           _e3960040005_
                           _hd3959940008_
                           _tl3959840010_
                           _e3960340013_
                           _hd3960240016_
                           _tl3960140018_
                           _e3960640021_
                           _hd3960540024_
                           _tl3960440026_
                           _e3960940029_
                           _hd3960840032_
                           _tl3960740034_
                           _e3961240037_
                           _hd3961140040_
                           _tl3961040042_
                           _e3961540045_
                           _hd3961440048_
                           _tl3961340050_)
                          (___match4506645067_
                           _e3959739997_
                           _hd3959640000_
                           _tl3959540002_
                           _e3960040005_
                           _hd3959940008_
                           _tl3959840010_
                           _e3960340013_
                           _hd3960240016_
                           _tl3960140018_
                           _e3960640021_
                           _hd3960540024_
                           _tl3960440026_
                           _e3960940029_
                           _hd3960840032_
                           _tl3960740034_
                           _e3961240037_
                           _hd3961140040_
                           _tl3961040042_
                           _e3961540045_
                           _hd3961440048_
                           _tl3961340050_))))
                   (___match4484444845_
                    (lambda (_e3957140081_
                             _hd3957040084_
                             _tl3956940086_
                             _e3957440089_
                             _hd3957340092_
                             _tl3957240094_
                             _e3957740097_
                             _hd3957640100_
                             _tl3957540102_
                             _e3958040105_
                             _hd3957940108_
                             _tl3957840110_
                             _e3958340113_
                             _hd3958240116_
                             _tl3958140118_
                             _e3958640121_
                             _hd3958540124_
                             _tl3958440126_
                             _e3958940129_
                             _hd3958840132_
                             _tl3958740134_
                             _e3959240137_
                             _hd3959140140_
                             _tl3959040142_)
                      (let ((_L40145_ _hd3959140140_)
                            (_L40146_ _hd3958840132_)
                            (_L40147_ _hd3957940108_))
                        (if (and (let ((__tmp46168
                                        (let ((__tmp46169
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L40147_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp46169))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp46168
                                    'gxc#!class-setf::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L40146_
                                    _self39358_)))
                            (___kont4435344354_ _L40145_ _L40146_ _L40147_)
                            (___match4507445075_
                             _e3957140081_
                             _hd3957040084_
                             _tl3956940086_
                             _e3957440089_
                             _hd3957340092_
                             _tl3957240094_
                             _e3957740097_
                             _hd3957640100_
                             _tl3957540102_
                             _e3958040105_
                             _hd3957940108_
                             _tl3957840110_
                             _e3958340113_
                             _hd3958240116_
                             _tl3958140118_
                             _e3958640121_
                             _hd3958540124_
                             _tl3958440126_
                             _e3958940129_
                             _hd3958840132_
                             _tl3958740134_
                             _e3959240137_
                             _hd3959140140_
                             _tl3959040142_)))))
                   (___match4484244843_
                    (lambda (_e3957140081_
                             _hd3957040084_
                             _tl3956940086_
                             _e3957440089_
                             _hd3957340092_
                             _tl3957240094_
                             _e3957740097_
                             _hd3957640100_
                             _tl3957540102_
                             _e3958040105_
                             _hd3957940108_
                             _tl3957840110_
                             _e3958340113_
                             _hd3958240116_
                             _tl3958140118_
                             _e3958640121_
                             _hd3958540124_
                             _tl3958440126_
                             _e3958940129_
                             _hd3958840132_
                             _tl3958740134_
                             _e3959240137_
                             _hd3959140140_
                             _tl3959040142_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl3959040142_))
                          (___match4484444845_
                           _e3957140081_
                           _hd3957040084_
                           _tl3956940086_
                           _e3957440089_
                           _hd3957340092_
                           _tl3957240094_
                           _e3957740097_
                           _hd3957640100_
                           _tl3957540102_
                           _e3958040105_
                           _hd3957940108_
                           _tl3957840110_
                           _e3958340113_
                           _hd3958240116_
                           _tl3958140118_
                           _e3958640121_
                           _hd3958540124_
                           _tl3958440126_
                           _e3958940129_
                           _hd3958840132_
                           _tl3958740134_
                           _e3959240137_
                           _hd3959140140_
                           _tl3959040142_)
                          (___kont4436344364_))))
                   (___match4483644837_
                    (lambda (_e3957140081_
                             _hd3957040084_
                             _tl3956940086_
                             _e3957440089_
                             _hd3957340092_
                             _tl3957240094_
                             _e3957740097_
                             _hd3957640100_
                             _tl3957540102_
                             _e3958040105_
                             _hd3957940108_
                             _tl3957840110_
                             _e3958340113_
                             _hd3958240116_
                             _tl3958140118_
                             _e3958640121_
                             _hd3958540124_
                             _tl3958440126_
                             _e3958940129_
                             _hd3958840132_
                             _tl3958740134_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl3958140118_))
                          (let ((_e3959240137_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl3958140118_))))
                            (let ((_tl3959040142_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3959240137_)))
                                  (_hd3959140140_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3959240137_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl3959040142_))
                                  (___match4484444845_
                                   _e3957140081_
                                   _hd3957040084_
                                   _tl3956940086_
                                   _e3957440089_
                                   _hd3957340092_
                                   _tl3957240094_
                                   _e3957740097_
                                   _hd3957640100_
                                   _tl3957540102_
                                   _e3958040105_
                                   _hd3957940108_
                                   _tl3957840110_
                                   _e3958340113_
                                   _hd3958240116_
                                   _tl3958140118_
                                   _e3958640121_
                                   _hd3958540124_
                                   _tl3958440126_
                                   _e3958940129_
                                   _hd3958840132_
                                   _tl3958740134_
                                   _e3959240137_
                                   _hd3959140140_
                                   _tl3959040142_)
                                  (___kont4436344364_))))
                          (___match4489844899_
                           _e3957140081_
                           _hd3957040084_
                           _tl3956940086_
                           _e3957440089_
                           _hd3957340092_
                           _tl3957240094_
                           _e3957740097_
                           _hd3957640100_
                           _tl3957540102_
                           _e3958040105_
                           _hd3957940108_
                           _tl3957840110_
                           _e3958340113_
                           _hd3958240116_
                           _tl3958140118_
                           _e3958640121_
                           _hd3958540124_
                           _tl3958440126_
                           _e3958940129_
                           _hd3958840132_
                           _tl3958740134_))))
                   (___match4478244783_
                    (lambda (_e3954740177_
                             _hd3954640180_
                             _tl3954540182_
                             _e3955040185_
                             _hd3954940188_
                             _tl3954840190_
                             _e3955340193_
                             _hd3955240196_
                             _tl3955140198_
                             _e3955640201_
                             _hd3955540204_
                             _tl3955440206_
                             _e3955940209_
                             _hd3955840212_
                             _tl3955740214_
                             _e3956240217_
                             _hd3956140220_
                             _tl3956040222_
                             _e3956540225_
                             _hd3956440228_
                             _tl3956340230_)
                      (let ((_L40233_ _hd3956440228_)
                            (_L40234_ _hd3955540204_))
                        (if (and (let ((__tmp46170
                                        (let ((__tmp46171
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L40234_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp46171))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp46170
                                    'gxc#!class-getf::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L40233_
                                    _self39358_)))
                            (___kont4435144352_ _L40233_ _L40234_)
                            (___match4490044901_
                             _e3954740177_
                             _hd3954640180_
                             _tl3954540182_
                             _e3955040185_
                             _hd3954940188_
                             _tl3954840190_
                             _e3955340193_
                             _hd3955240196_
                             _tl3955140198_
                             _e3955640201_
                             _hd3955540204_
                             _tl3955440206_
                             _e3955940209_
                             _hd3955840212_
                             _tl3955740214_
                             _e3956240217_
                             _hd3956140220_
                             _tl3956040222_
                             _e3956540225_
                             _hd3956440228_
                             _tl3956340230_)))))
                   (___match4478044781_
                    (lambda (_e3954740177_
                             _hd3954640180_
                             _tl3954540182_
                             _e3955040185_
                             _hd3954940188_
                             _tl3954840190_
                             _e3955340193_
                             _hd3955240196_
                             _tl3955140198_
                             _e3955640201_
                             _hd3955540204_
                             _tl3955440206_
                             _e3955940209_
                             _hd3955840212_
                             _tl3955740214_
                             _e3956240217_
                             _hd3956140220_
                             _tl3956040222_
                             _e3956540225_
                             _hd3956440228_
                             _tl3956340230_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl3955740214_))
                          (___match4478244783_
                           _e3954740177_
                           _hd3954640180_
                           _tl3954540182_
                           _e3955040185_
                           _hd3954940188_
                           _tl3954840190_
                           _e3955340193_
                           _hd3955240196_
                           _tl3955140198_
                           _e3955640201_
                           _hd3955540204_
                           _tl3955440206_
                           _e3955940209_
                           _hd3955840212_
                           _tl3955740214_
                           _e3956240217_
                           _hd3956140220_
                           _tl3956040222_
                           _e3956540225_
                           _hd3956440228_
                           _tl3956340230_)
                          (___match4483644837_
                           _e3954740177_
                           _hd3954640180_
                           _tl3954540182_
                           _e3955040185_
                           _hd3954940188_
                           _tl3954840190_
                           _e3955340193_
                           _hd3955240196_
                           _tl3955140198_
                           _e3955640201_
                           _hd3955540204_
                           _tl3955440206_
                           _e3955940209_
                           _hd3955840212_
                           _tl3955740214_
                           _e3956240217_
                           _hd3956140220_
                           _tl3956040222_
                           _e3956540225_
                           _hd3956440228_
                           _tl3956340230_))))
                   (___match4472644727_
                    (lambda (_e3951240261_
                             _hd3951140264_
                             _tl3951040266_
                             _e3951540269_
                             _hd3951440272_
                             _tl3951340274_
                             _e3951840277_
                             _hd3951740280_
                             _tl3951640282_
                             _e3952140285_
                             _hd3952040288_
                             _tl3951940290_
                             _e3952440293_
                             _hd3952340296_
                             _tl3952240298_
                             _e3952740301_
                             _hd3952640304_
                             _tl3952540306_
                             _e3953040309_
                             _hd3952940312_
                             _tl3952840314_
                             _e3953340317_
                             _hd3953240320_
                             _tl3953140322_
                             _e3953640325_
                             _hd3953540328_
                             _tl3953440330_
                             _e3953940333_
                             _hd3953840336_
                             _tl3953740338_
                             _e3954240341_
                             _hd3954140344_
                             _tl3954040346_)
                      (let ((_L40349_ _hd3954140344_)
                            (_L40350_ _hd3953840336_)
                            (_L40351_ _hd3952940312_)
                            (_L40352_ _hd3952040288_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L40352_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L40352_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L40351_
                                    _self39358_)))
                            (___kont4434944350_
                             _L40349_
                             _L40350_
                             _L40351_
                             _L40352_)
                            (___kont4436344364_)))))
                   (___match4471844719_
                    (lambda (_e3951240261_
                             _hd3951140264_
                             _tl3951040266_
                             _e3951540269_
                             _hd3951440272_
                             _tl3951340274_
                             _e3951840277_
                             _hd3951740280_
                             _tl3951640282_
                             _e3952140285_
                             _hd3952040288_
                             _tl3951940290_
                             _e3952440293_
                             _hd3952340296_
                             _tl3952240298_
                             _e3952740301_
                             _hd3952640304_
                             _tl3952540306_
                             _e3953040309_
                             _hd3952940312_
                             _tl3952840314_
                             _e3953340317_
                             _hd3953240320_
                             _tl3953140322_
                             _e3953640325_
                             _hd3953540328_
                             _tl3953440330_
                             _e3953940333_
                             _hd3953840336_
                             _tl3953740338_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl3953140322_))
                          (let ((_e3954240341_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl3953140322_))))
                            (let ((_tl3954040346_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3954240341_)))
                                  (_hd3954140344_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3954240341_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl3954040346_))
                                  (___match4472644727_
                                   _e3951240261_
                                   _hd3951140264_
                                   _tl3951040266_
                                   _e3951540269_
                                   _hd3951440272_
                                   _tl3951340274_
                                   _e3951840277_
                                   _hd3951740280_
                                   _tl3951640282_
                                   _e3952140285_
                                   _hd3952040288_
                                   _tl3951940290_
                                   _e3952440293_
                                   _hd3952340296_
                                   _tl3952240298_
                                   _e3952740301_
                                   _hd3952640304_
                                   _tl3952540306_
                                   _e3953040309_
                                   _hd3952940312_
                                   _tl3952840314_
                                   _e3953340317_
                                   _hd3953240320_
                                   _tl3953140322_
                                   _e3953640325_
                                   _hd3953540328_
                                   _tl3953440330_
                                   _e3953940333_
                                   _hd3953840336_
                                   _tl3953740338_
                                   _e3954240341_
                                   _hd3954140344_
                                   _tl3954040346_)
                                  (___kont4436344364_))))
                          (___match4484244843_
                           _e3951240261_
                           _hd3951140264_
                           _tl3951040266_
                           _e3951540269_
                           _hd3951440272_
                           _tl3951340274_
                           _e3951840277_
                           _hd3951740280_
                           _tl3951640282_
                           _e3952140285_
                           _hd3952040288_
                           _tl3951940290_
                           _e3952440293_
                           _hd3952340296_
                           _tl3952240298_
                           _e3952740301_
                           _hd3952640304_
                           _tl3952540306_
                           _e3953040309_
                           _hd3952940312_
                           _tl3952840314_
                           _e3953340317_
                           _hd3953240320_
                           _tl3953140322_))))
                   (___match4464044641_
                    (lambda (_e3947840392_
                             _hd3947740395_
                             _tl3947640397_
                             _e3948140400_
                             _hd3948040403_
                             _tl3947940405_
                             _e3948440408_
                             _hd3948340411_
                             _tl3948240413_
                             _e3948740416_
                             _hd3948640419_
                             _tl3948540421_
                             _e3949040424_
                             _hd3948940427_
                             _tl3948840429_
                             _e3949340432_
                             _hd3949240435_
                             _tl3949140437_
                             _e3949640440_
                             _hd3949540443_
                             _tl3949440445_
                             _e3949940448_
                             _hd3949840451_
                             _tl3949740453_
                             _e3950240456_
                             _hd3950140459_
                             _tl3950040461_
                             _e3950540464_
                             _hd3950440467_
                             _tl3950340469_)
                      (let ((_L40472_ _hd3950440467_)
                            (_L40473_ _hd3949540443_)
                            (_L40474_ _hd3948640419_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L40474_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L40474_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L40473_
                                    _self39358_)))
                            (___kont4434744348_ _L40472_ _L40473_ _L40474_)
                            (___match4484444845_
                             _e3947840392_
                             _hd3947740395_
                             _tl3947640397_
                             _e3948140400_
                             _hd3948040403_
                             _tl3947940405_
                             _e3948440408_
                             _hd3948340411_
                             _tl3948240413_
                             _e3948740416_
                             _hd3948640419_
                             _tl3948540421_
                             _e3949040424_
                             _hd3948940427_
                             _tl3948840429_
                             _e3949340432_
                             _hd3949240435_
                             _tl3949140437_
                             _e3949640440_
                             _hd3949540443_
                             _tl3949440445_
                             _e3949940448_
                             _hd3949840451_
                             _tl3949740453_)))))
                   (___match4463844639_
                    (lambda (_e3947840392_
                             _hd3947740395_
                             _tl3947640397_
                             _e3948140400_
                             _hd3948040403_
                             _tl3947940405_
                             _e3948440408_
                             _hd3948340411_
                             _tl3948240413_
                             _e3948740416_
                             _hd3948640419_
                             _tl3948540421_
                             _e3949040424_
                             _hd3948940427_
                             _tl3948840429_
                             _e3949340432_
                             _hd3949240435_
                             _tl3949140437_
                             _e3949640440_
                             _hd3949540443_
                             _tl3949440445_
                             _e3949940448_
                             _hd3949840451_
                             _tl3949740453_
                             _e3950240456_
                             _hd3950140459_
                             _tl3950040461_
                             _e3950540464_
                             _hd3950440467_
                             _tl3950340469_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl3949740453_))
                          (___match4464044641_
                           _e3947840392_
                           _hd3947740395_
                           _tl3947640397_
                           _e3948140400_
                           _hd3948040403_
                           _tl3947940405_
                           _e3948440408_
                           _hd3948340411_
                           _tl3948240413_
                           _e3948740416_
                           _hd3948640419_
                           _tl3948540421_
                           _e3949040424_
                           _hd3948940427_
                           _tl3948840429_
                           _e3949340432_
                           _hd3949240435_
                           _tl3949140437_
                           _e3949640440_
                           _hd3949540443_
                           _tl3949440445_
                           _e3949940448_
                           _hd3949840451_
                           _tl3949740453_
                           _e3950240456_
                           _hd3950140459_
                           _tl3950040461_
                           _e3950540464_
                           _hd3950440467_
                           _tl3950340469_)
                          (___match4471844719_
                           _e3947840392_
                           _hd3947740395_
                           _tl3947640397_
                           _e3948140400_
                           _hd3948040403_
                           _tl3947940405_
                           _e3948440408_
                           _hd3948340411_
                           _tl3948240413_
                           _e3948740416_
                           _hd3948640419_
                           _tl3948540421_
                           _e3949040424_
                           _hd3948940427_
                           _tl3948840429_
                           _e3949340432_
                           _hd3949240435_
                           _tl3949140437_
                           _e3949640440_
                           _hd3949540443_
                           _tl3949440445_
                           _e3949940448_
                           _hd3949840451_
                           _tl3949740453_
                           _e3950240456_
                           _hd3950140459_
                           _tl3950040461_
                           _e3950540464_
                           _hd3950440467_
                           _tl3950340469_))))
                   (___match4462844629_
                    (lambda (_e3947840392_
                             _hd3947740395_
                             _tl3947640397_
                             _e3948140400_
                             _hd3948040403_
                             _tl3947940405_
                             _e3948440408_
                             _hd3948340411_
                             _tl3948240413_
                             _e3948740416_
                             _hd3948640419_
                             _tl3948540421_
                             _e3949040424_
                             _hd3948940427_
                             _tl3948840429_
                             _e3949340432_
                             _hd3949240435_
                             _tl3949140437_
                             _e3949640440_
                             _hd3949540443_
                             _tl3949440445_
                             _e3949940448_
                             _hd3949840451_
                             _tl3949740453_
                             _e3950240456_
                             _hd3950140459_
                             _tl3950040461_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd3950140459_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl3950040461_))
                              (let ((_e3950540464_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl3950040461_))))
                                (let ((_tl3950340469_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3950540464_)))
                                      (_hd3950440467_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3950540464_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl3950340469_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl3949740453_))
                                          (___match4464044641_
                                           _e3947840392_
                                           _hd3947740395_
                                           _tl3947640397_
                                           _e3948140400_
                                           _hd3948040403_
                                           _tl3947940405_
                                           _e3948440408_
                                           _hd3948340411_
                                           _tl3948240413_
                                           _e3948740416_
                                           _hd3948640419_
                                           _tl3948540421_
                                           _e3949040424_
                                           _hd3948940427_
                                           _tl3948840429_
                                           _e3949340432_
                                           _hd3949240435_
                                           _tl3949140437_
                                           _e3949640440_
                                           _hd3949540443_
                                           _tl3949440445_
                                           _e3949940448_
                                           _hd3949840451_
                                           _tl3949740453_
                                           _e3950240456_
                                           _hd3950140459_
                                           _tl3950040461_
                                           _e3950540464_
                                           _hd3950440467_
                                           _tl3950340469_)
                                          (___match4471844719_
                                           _e3947840392_
                                           _hd3947740395_
                                           _tl3947640397_
                                           _e3948140400_
                                           _hd3948040403_
                                           _tl3947940405_
                                           _e3948440408_
                                           _hd3948340411_
                                           _tl3948240413_
                                           _e3948740416_
                                           _hd3948640419_
                                           _tl3948540421_
                                           _e3949040424_
                                           _hd3948940427_
                                           _tl3948840429_
                                           _e3949340432_
                                           _hd3949240435_
                                           _tl3949140437_
                                           _e3949640440_
                                           _hd3949540443_
                                           _tl3949440445_
                                           _e3949940448_
                                           _hd3949840451_
                                           _tl3949740453_
                                           _e3950240456_
                                           _hd3950140459_
                                           _tl3950040461_
                                           _e3950540464_
                                           _hd3950440467_
                                           _tl3950340469_))
                                      (___match4484244843_
                                       _e3947840392_
                                       _hd3947740395_
                                       _tl3947640397_
                                       _e3948140400_
                                       _hd3948040403_
                                       _tl3947940405_
                                       _e3948440408_
                                       _hd3948340411_
                                       _tl3948240413_
                                       _e3948740416_
                                       _hd3948640419_
                                       _tl3948540421_
                                       _e3949040424_
                                       _hd3948940427_
                                       _tl3948840429_
                                       _e3949340432_
                                       _hd3949240435_
                                       _tl3949140437_
                                       _e3949640440_
                                       _hd3949540443_
                                       _tl3949440445_
                                       _e3949940448_
                                       _hd3949840451_
                                       _tl3949740453_))))
                              (___match4484244843_
                               _e3947840392_
                               _hd3947740395_
                               _tl3947640397_
                               _e3948140400_
                               _hd3948040403_
                               _tl3947940405_
                               _e3948440408_
                               _hd3948340411_
                               _tl3948240413_
                               _e3948740416_
                               _hd3948640419_
                               _tl3948540421_
                               _e3949040424_
                               _hd3948940427_
                               _tl3948840429_
                               _e3949340432_
                               _hd3949240435_
                               _tl3949140437_
                               _e3949640440_
                               _hd3949540443_
                               _tl3949440445_
                               _e3949940448_
                               _hd3949840451_
                               _tl3949740453_))
                          (___match4484244843_
                           _e3947840392_
                           _hd3947740395_
                           _tl3947640397_
                           _e3948140400_
                           _hd3948040403_
                           _tl3947940405_
                           _e3948440408_
                           _hd3948340411_
                           _tl3948240413_
                           _e3948740416_
                           _hd3948640419_
                           _tl3948540421_
                           _e3949040424_
                           _hd3948940427_
                           _tl3948840429_
                           _e3949340432_
                           _hd3949240435_
                           _tl3949140437_
                           _e3949640440_
                           _hd3949540443_
                           _tl3949440445_
                           _e3949940448_
                           _hd3949840451_
                           _tl3949740453_))))
                   (___match4456044561_
                    (lambda (_e3942740511_
                             _hd3942640514_
                             _tl3942540516_
                             _e3943040519_
                             _hd3942940522_
                             _tl3942840524_
                             _e3943340527_
                             _hd3943240530_
                             _tl3943140532_
                             _e3943640535_
                             _hd3943540538_
                             _tl3943440540_
                             _e3943940543_
                             _hd3943840546_
                             _tl3943740548_
                             _e3944240551_
                             _hd3944140554_
                             _tl3944040556_
                             _e3944540559_
                             _hd3944440562_
                             _tl3944340564_
                             _e3944840567_
                             _hd3944740570_
                             _tl3944640572_
                             _e3945140575_
                             _hd3945040578_
                             _tl3944940580_
                             _e3945440583_
                             _hd3945340586_
                             _tl3945240588_
                             _e3945740591_
                             _hd3945640594_
                             _tl3945540596_
                             _e3946040599_
                             _hd3945940602_
                             _tl3945840604_
                             _e3946340607_
                             _hd3946240610_
                             _tl3946140612_
                             ___splice4434544346_
                             _target3946440615_
                             _tl3946640617_)
                      (letrec ((_loop3946740620_
                                (lambda (_hd3946540623_ _args3947140625_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd3946540623_))
                                      (let ((_e3946840628_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd3946540623_))))
                                        (let ((_lp-tl3947040633_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3946840628_)))
                                              (_lp-hd3946940631_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3946840628_))))
                                          (let ((__tmp46172
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd3946940631_
                                                         _args3947140625_))))
                                            (declare (not safe))
                                            (_loop3946740620_
                                             _lp-tl3947040633_
                                             __tmp46172))))
                                      (let ((_args3947240636_
                                             (reverse _args3947140625_)))
                                        (let ((_L40639_ _args3947240636_)
                                              (_L40640_ _hd3946240610_)
                                              (_L40641_ _hd3945340586_)
                                              (_L40642_ _hd3944440562_)
                                              (_L40643_ _hd3943540538_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L40643_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L40642_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L40641_
                                                      _self39358_)))
                                              (___kont4434344344_
                                               _L40639_
                                               _L40640_
                                               _L40641_
                                               _L40642_
                                               _L40643_)
                                              (___kont4436344364_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop3946740620_ _target3946440615_ '())))))
                   (___match4451844519_
                    (lambda (_e3942740511_
                             _hd3942640514_
                             _tl3942540516_
                             _e3943040519_
                             _hd3942940522_
                             _tl3942840524_
                             _e3943340527_
                             _hd3943240530_
                             _tl3943140532_
                             _e3943640535_
                             _hd3943540538_
                             _tl3943440540_
                             _e3943940543_
                             _hd3943840546_
                             _tl3943740548_
                             _e3944240551_
                             _hd3944140554_
                             _tl3944040556_
                             _e3944540559_
                             _hd3944440562_
                             _tl3944340564_
                             _e3944840567_
                             _hd3944740570_
                             _tl3944640572_
                             _e3945140575_
                             _hd3945040578_
                             _tl3944940580_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd3945040578_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl3944940580_))
                              (let ((_e3945440583_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl3944940580_))))
                                (let ((_tl3945240588_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3945440583_)))
                                      (_hd3945340586_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3945440583_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl3945240588_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl3944640572_))
                                          (let ((_e3945740591_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl3944640572_))))
                                            (let ((_tl3945540596_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3945740591_)))
                                                  (_hd3945640594_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3945740591_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd3945640594_))
                                                  (let ((_e3946040599_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd3945640594_))))
                                                    (let ((_tl3945840604_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3946040599_)))
                                                          (_hd3945940602_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3946040599_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd3945940602_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd3945940602_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl3945840604_))
                          (let ((_e3946340607_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl3945840604_))))
                            (let ((_tl3946140612_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3946340607_)))
                                  (_hd3946240610_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3946340607_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl3946140612_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl3945540596_))
                                      (let ((___splice4434544346_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl3945540596_
                                                '0))))
                                        (let ((_tl3946640617_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4434544346_
                                                  '1)))
                                              (_target3946440615_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4434544346_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl3946640617_))
                                              (___match4456044561_
                                               _e3942740511_
                                               _hd3942640514_
                                               _tl3942540516_
                                               _e3943040519_
                                               _hd3942940522_
                                               _tl3942840524_
                                               _e3943340527_
                                               _hd3943240530_
                                               _tl3943140532_
                                               _e3943640535_
                                               _hd3943540538_
                                               _tl3943440540_
                                               _e3943940543_
                                               _hd3943840546_
                                               _tl3943740548_
                                               _e3944240551_
                                               _hd3944140554_
                                               _tl3944040556_
                                               _e3944540559_
                                               _hd3944440562_
                                               _tl3944340564_
                                               _e3944840567_
                                               _hd3944740570_
                                               _tl3944640572_
                                               _e3945140575_
                                               _hd3945040578_
                                               _tl3944940580_
                                               _e3945440583_
                                               _hd3945340586_
                                               _tl3945240588_
                                               _e3945740591_
                                               _hd3945640594_
                                               _tl3945540596_
                                               _e3946040599_
                                               _hd3945940602_
                                               _tl3945840604_
                                               _e3946340607_
                                               _hd3946240610_
                                               _tl3946140612_
                                               ___splice4434544346_
                                               _target3946440615_
                                               _tl3946640617_)
                                              (___kont4436344364_))))
                                      (___kont4436344364_))
                                  (___kont4436344364_))))
                          (___kont4436344364_))
                      (___kont4436344364_))
                  (___kont4436344364_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4436344364_))))
                                          (___match4484244843_
                                           _e3942740511_
                                           _hd3942640514_
                                           _tl3942540516_
                                           _e3943040519_
                                           _hd3942940522_
                                           _tl3942840524_
                                           _e3943340527_
                                           _hd3943240530_
                                           _tl3943140532_
                                           _e3943640535_
                                           _hd3943540538_
                                           _tl3943440540_
                                           _e3943940543_
                                           _hd3943840546_
                                           _tl3943740548_
                                           _e3944240551_
                                           _hd3944140554_
                                           _tl3944040556_
                                           _e3944540559_
                                           _hd3944440562_
                                           _tl3944340564_
                                           _e3944840567_
                                           _hd3944740570_
                                           _tl3944640572_))
                                      (___match4484244843_
                                       _e3942740511_
                                       _hd3942640514_
                                       _tl3942540516_
                                       _e3943040519_
                                       _hd3942940522_
                                       _tl3942840524_
                                       _e3943340527_
                                       _hd3943240530_
                                       _tl3943140532_
                                       _e3943640535_
                                       _hd3943540538_
                                       _tl3943440540_
                                       _e3943940543_
                                       _hd3943840546_
                                       _tl3943740548_
                                       _e3944240551_
                                       _hd3944140554_
                                       _tl3944040556_
                                       _e3944540559_
                                       _hd3944440562_
                                       _tl3944340564_
                                       _e3944840567_
                                       _hd3944740570_
                                       _tl3944640572_))))
                              (___match4484244843_
                               _e3942740511_
                               _hd3942640514_
                               _tl3942540516_
                               _e3943040519_
                               _hd3942940522_
                               _tl3942840524_
                               _e3943340527_
                               _hd3943240530_
                               _tl3943140532_
                               _e3943640535_
                               _hd3943540538_
                               _tl3943440540_
                               _e3943940543_
                               _hd3943840546_
                               _tl3943740548_
                               _e3944240551_
                               _hd3944140554_
                               _tl3944040556_
                               _e3944540559_
                               _hd3944440562_
                               _tl3944340564_
                               _e3944840567_
                               _hd3944740570_
                               _tl3944640572_))
                          (___match4462844629_
                           _e3942740511_
                           _hd3942640514_
                           _tl3942540516_
                           _e3943040519_
                           _hd3942940522_
                           _tl3942840524_
                           _e3943340527_
                           _hd3943240530_
                           _tl3943140532_
                           _e3943640535_
                           _hd3943540538_
                           _tl3943440540_
                           _e3943940543_
                           _hd3943840546_
                           _tl3943740548_
                           _e3944240551_
                           _hd3944140554_
                           _tl3944040556_
                           _e3944540559_
                           _hd3944440562_
                           _tl3944340564_
                           _e3944840567_
                           _hd3944740570_
                           _tl3944640572_
                           _e3945140575_
                           _hd3945040578_
                           _tl3944940580_))))
                   (___match4445044451_
                    (lambda (_e3938340700_
                             _hd3938240703_
                             _tl3938140705_
                             _e3938640708_
                             _hd3938540711_
                             _tl3938440713_
                             _e3938940716_
                             _hd3938840719_
                             _tl3938740721_
                             _e3939240724_
                             _hd3939140727_
                             _tl3939040729_
                             _e3939540732_
                             _hd3939440735_
                             _tl3939340737_
                             _e3939840740_
                             _hd3939740743_
                             _tl3939640745_
                             _e3940140748_
                             _hd3940040751_
                             _tl3939940753_
                             _e3940440756_
                             _hd3940340759_
                             _tl3940240761_
                             _e3940740764_
                             _hd3940640767_
                             _tl3940540769_
                             _e3941040772_
                             _hd3940940775_
                             _tl3940840777_
                             ___splice4434144342_
                             _target3941140780_
                             _tl3941340782_)
                      (letrec ((_loop3941440785_
                                (lambda (_hd3941240788_ _args3941840790_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd3941240788_))
                                      (let ((_e3941540793_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd3941240788_))))
                                        (let ((_lp-tl3941740798_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3941540793_)))
                                              (_lp-hd3941640796_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3941540793_))))
                                          (let ((__tmp46173
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd3941640796_
                                                         _args3941840790_))))
                                            (declare (not safe))
                                            (_loop3941440785_
                                             _lp-tl3941740798_
                                             __tmp46173))))
                                      (let ((_args3941940801_
                                             (reverse _args3941840790_)))
                                        (let ((_L40804_ _args3941940801_)
                                              (_L40805_ _hd3940940775_)
                                              (_L40806_ _hd3940040751_)
                                              (_L40807_ _hd3939140727_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L40807_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L40806_
                                                      _self39358_)))
                                              (___kont4433944340_
                                               _L40804_
                                               _L40805_
                                               _L40806_
                                               _L40807_)
                                              (___match4463844639_
                                               _e3938340700_
                                               _hd3938240703_
                                               _tl3938140705_
                                               _e3938640708_
                                               _hd3938540711_
                                               _tl3938440713_
                                               _e3938940716_
                                               _hd3938840719_
                                               _tl3938740721_
                                               _e3939240724_
                                               _hd3939140727_
                                               _tl3939040729_
                                               _e3939540732_
                                               _hd3939440735_
                                               _tl3939340737_
                                               _e3939840740_
                                               _hd3939740743_
                                               _tl3939640745_
                                               _e3940140748_
                                               _hd3940040751_
                                               _tl3939940753_
                                               _e3940440756_
                                               _hd3940340759_
                                               _tl3940240761_
                                               _e3940740764_
                                               _hd3940640767_
                                               _tl3940540769_
                                               _e3941040772_
                                               _hd3940940775_
                                               _tl3940840777_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop3941440785_ _target3941140780_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx4433744338_))
                  (let ((_e3938340700_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx4433744338_))))
                    (let ((_tl3938140705_
                           (let () (declare (not safe)) (##cdr _e3938340700_)))
                          (_hd3938240703_
                           (let ()
                             (declare (not safe))
                             (##car _e3938340700_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl3938140705_))
                          (let ((_e3938640708_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl3938140705_))))
                            (let ((_tl3938440713_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3938640708_)))
                                  (_hd3938540711_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3938640708_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd3938540711_))
                                  (let ((_e3938940716_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd3938540711_))))
                                    (let ((_tl3938740721_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3938940716_)))
                                          (_hd3938840719_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3938940716_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd3938840719_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd3938840719_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl3938740721_))
                                                  (let ((_e3939240724_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl3938740721_))))
                                                    (let ((_tl3939040729_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3939240724_)))
                                                          (_hd3939140727_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3939240724_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl3939040729_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl3938440713_))
                      (let ((_e3939540732_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl3938440713_))))
                        (let ((_tl3939340737_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3939540732_)))
                              (_hd3939440735_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3939540732_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd3939440735_))
                              (let ((_e3939840740_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd3939440735_))))
                                (let ((_tl3939640745_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3939840740_)))
                                      (_hd3939740743_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3939840740_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd3939740743_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq? '%#ref _hd3939740743_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl3939640745_))
                                              (let ((_e3940140748_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl3939640745_))))
                                                (let ((_tl3939940753_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3940140748_)))
                                                      (_hd3940040751_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3940140748_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl3939940753_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl3939340737_))
                                                          (let ((_e3940440756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl3939340737_))))
                    (let ((_tl3940240761_
                           (let () (declare (not safe)) (##cdr _e3940440756_)))
                          (_hd3940340759_
                           (let ()
                             (declare (not safe))
                             (##car _e3940440756_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd3940340759_))
                          (let ((_e3940740764_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd3940340759_))))
                            (let ((_tl3940540769_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3940740764_)))
                                  (_hd3940640767_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3940740764_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd3940640767_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd3940640767_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl3940540769_))
                                          (let ((_e3941040772_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl3940540769_))))
                                            (let ((_tl3940840777_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3941040772_)))
                                                  (_hd3940940775_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3941040772_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl3940840777_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl3940240761_))
                                                      (let ((___splice4434144342_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl3940240761_ '0))))
                (let ((_tl3941340782_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4434144342_ '1)))
                      (_target3941140780_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4434144342_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl3941340782_))
                      (___match4445044451_
                       _e3938340700_
                       _hd3938240703_
                       _tl3938140705_
                       _e3938640708_
                       _hd3938540711_
                       _tl3938440713_
                       _e3938940716_
                       _hd3938840719_
                       _tl3938740721_
                       _e3939240724_
                       _hd3939140727_
                       _tl3939040729_
                       _e3939540732_
                       _hd3939440735_
                       _tl3939340737_
                       _e3939840740_
                       _hd3939740743_
                       _tl3939640745_
                       _e3940140748_
                       _hd3940040751_
                       _tl3939940753_
                       _e3940440756_
                       _hd3940340759_
                       _tl3940240761_
                       _e3940740764_
                       _hd3940640767_
                       _tl3940540769_
                       _e3941040772_
                       _hd3940940775_
                       _tl3940840777_
                       ___splice4434144342_
                       _target3941140780_
                       _tl3941340782_)
                      (___match4463844639_
                       _e3938340700_
                       _hd3938240703_
                       _tl3938140705_
                       _e3938640708_
                       _hd3938540711_
                       _tl3938440713_
                       _e3938940716_
                       _hd3938840719_
                       _tl3938740721_
                       _e3939240724_
                       _hd3939140727_
                       _tl3939040729_
                       _e3939540732_
                       _hd3939440735_
                       _tl3939340737_
                       _e3939840740_
                       _hd3939740743_
                       _tl3939640745_
                       _e3940140748_
                       _hd3940040751_
                       _tl3939940753_
                       _e3940440756_
                       _hd3940340759_
                       _tl3940240761_
                       _e3940740764_
                       _hd3940640767_
                       _tl3940540769_
                       _e3941040772_
                       _hd3940940775_
                       _tl3940840777_))))
              (___match4463844639_
               _e3938340700_
               _hd3938240703_
               _tl3938140705_
               _e3938640708_
               _hd3938540711_
               _tl3938440713_
               _e3938940716_
               _hd3938840719_
               _tl3938740721_
               _e3939240724_
               _hd3939140727_
               _tl3939040729_
               _e3939540732_
               _hd3939440735_
               _tl3939340737_
               _e3939840740_
               _hd3939740743_
               _tl3939640745_
               _e3940140748_
               _hd3940040751_
               _tl3939940753_
               _e3940440756_
               _hd3940340759_
               _tl3940240761_
               _e3940740764_
               _hd3940640767_
               _tl3940540769_
               _e3941040772_
               _hd3940940775_
               _tl3940840777_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match4484244843_
                                                   _e3938340700_
                                                   _hd3938240703_
                                                   _tl3938140705_
                                                   _e3938640708_
                                                   _hd3938540711_
                                                   _tl3938440713_
                                                   _e3938940716_
                                                   _hd3938840719_
                                                   _tl3938740721_
                                                   _e3939240724_
                                                   _hd3939140727_
                                                   _tl3939040729_
                                                   _e3939540732_
                                                   _hd3939440735_
                                                   _tl3939340737_
                                                   _e3939840740_
                                                   _hd3939740743_
                                                   _tl3939640745_
                                                   _e3940140748_
                                                   _hd3940040751_
                                                   _tl3939940753_
                                                   _e3940440756_
                                                   _hd3940340759_
                                                   _tl3940240761_))))
                                          (___match4484244843_
                                           _e3938340700_
                                           _hd3938240703_
                                           _tl3938140705_
                                           _e3938640708_
                                           _hd3938540711_
                                           _tl3938440713_
                                           _e3938940716_
                                           _hd3938840719_
                                           _tl3938740721_
                                           _e3939240724_
                                           _hd3939140727_
                                           _tl3939040729_
                                           _e3939540732_
                                           _hd3939440735_
                                           _tl3939340737_
                                           _e3939840740_
                                           _hd3939740743_
                                           _tl3939640745_
                                           _e3940140748_
                                           _hd3940040751_
                                           _tl3939940753_
                                           _e3940440756_
                                           _hd3940340759_
                                           _tl3940240761_))
                                      (___match4451844519_
                                       _e3938340700_
                                       _hd3938240703_
                                       _tl3938140705_
                                       _e3938640708_
                                       _hd3938540711_
                                       _tl3938440713_
                                       _e3938940716_
                                       _hd3938840719_
                                       _tl3938740721_
                                       _e3939240724_
                                       _hd3939140727_
                                       _tl3939040729_
                                       _e3939540732_
                                       _hd3939440735_
                                       _tl3939340737_
                                       _e3939840740_
                                       _hd3939740743_
                                       _tl3939640745_
                                       _e3940140748_
                                       _hd3940040751_
                                       _tl3939940753_
                                       _e3940440756_
                                       _hd3940340759_
                                       _tl3940240761_
                                       _e3940740764_
                                       _hd3940640767_
                                       _tl3940540769_))
                                  (___match4484244843_
                                   _e3938340700_
                                   _hd3938240703_
                                   _tl3938140705_
                                   _e3938640708_
                                   _hd3938540711_
                                   _tl3938440713_
                                   _e3938940716_
                                   _hd3938840719_
                                   _tl3938740721_
                                   _e3939240724_
                                   _hd3939140727_
                                   _tl3939040729_
                                   _e3939540732_
                                   _hd3939440735_
                                   _tl3939340737_
                                   _e3939840740_
                                   _hd3939740743_
                                   _tl3939640745_
                                   _e3940140748_
                                   _hd3940040751_
                                   _tl3939940753_
                                   _e3940440756_
                                   _hd3940340759_
                                   _tl3940240761_))))
                          (___match4484244843_
                           _e3938340700_
                           _hd3938240703_
                           _tl3938140705_
                           _e3938640708_
                           _hd3938540711_
                           _tl3938440713_
                           _e3938940716_
                           _hd3938840719_
                           _tl3938740721_
                           _e3939240724_
                           _hd3939140727_
                           _tl3939040729_
                           _e3939540732_
                           _hd3939440735_
                           _tl3939340737_
                           _e3939840740_
                           _hd3939740743_
                           _tl3939640745_
                           _e3940140748_
                           _hd3940040751_
                           _tl3939940753_
                           _e3940440756_
                           _hd3940340759_
                           _tl3940240761_))))
                  (___match4478044781_
                   _e3938340700_
                   _hd3938240703_
                   _tl3938140705_
                   _e3938640708_
                   _hd3938540711_
                   _tl3938440713_
                   _e3938940716_
                   _hd3938840719_
                   _tl3938740721_
                   _e3939240724_
                   _hd3939140727_
                   _tl3939040729_
                   _e3939540732_
                   _hd3939440735_
                   _tl3939340737_
                   _e3939840740_
                   _hd3939740743_
                   _tl3939640745_
                   _e3940140748_
                   _hd3940040751_
                   _tl3939940753_))
              (___kont4436344364_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont4436344364_))
                                          (___kont4436344364_))
                                      (___kont4436344364_))))
                              (___kont4436344364_))))
                      (___kont4436344364_))
                  (___kont4436344364_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4436344364_))
                                              (___kont4436344364_))
                                          (___kont4436344364_))))
                                  (___kont4436344364_))))
                          (___kont4436344364_))))
                  (___kont4436344364_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx37784_
               _self37785_
               _$t37786_
               _methods37787_
               _slots37788_
               _class-check37789_
               _struct-check37790_
               _struct-assert37791_)
        (letrec ((_force-e37793_
                  (lambda (_what39355_)
                    (let ((__tmp46174
                           (let ((__tmp46178
                                  (let ((__tmp46179
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp46179)))
                                 (__tmp46175
                                  (let ((__tmp46176
                                         (let ((__tmp46177
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what39355_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp46177))))
                                    (declare (not safe))
                                    (cons __tmp46176 '()))))
                             (declare (not safe))
                             (cons __tmp46178 __tmp46175))))
                      (declare (not safe))
                      (cons '%#call __tmp46174)))))
          (let* ((___stx4507745078_ _stx37784_)
                 (_g3780538123_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       ___stx4507745078_)))))
            (let ((___kont4507945080_
                   (lambda (_L39301_ _L39302_ _L39303_ _L39304_)
                     (let ((_$method39349_
                            (let ((__tmp46180
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L39302_))))
                              (declare (not safe))
                              (table-ref _methods37787_ __tmp46180)))
                           (_args39350_
                            (map (lambda (_g3933739339_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e
                                      _g3933739339_
                                      _self37785_
                                      _$t37786_
                                      _methods37787_
                                      _slots37788_
                                      _class-check37789_
                                      _struct-check37790_
                                      _struct-assert37791_)))
                                 (let ((__tmp46181
                                        (lambda (_g3934139344_ _g3934239346_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3934139344_
                                                  _g3934239346_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp46181 '() _L39301_)))))
                       (let ((__tmp46182
                              (let ((__tmp46183
                                     (let ((__tmp46187
                                            (let ()
                                              (declare (not safe))
                                              (_force-e37793_ _$method39349_)))
                                           (__tmp46184
                                            (let ((__tmp46185
                                                   (let ((__tmp46186
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self37785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp46186))))
                                              (declare (not safe))
                                              (cons __tmp46185 _args39350_))))
                                       (declare (not safe))
                                       (cons __tmp46187 __tmp46184))))
                                (declare (not safe))
                                (cons '%#call __tmp46183))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp46182 _stx37784_)))))
                  (___kont4508345084_
                   (lambda (_L39133_ _L39134_ _L39135_ _L39136_ _L39137_)
                     (let ((_$method39189_
                            (let ((__tmp46188
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L39134_))))
                              (declare (not safe))
                              (table-ref _methods37787_ __tmp46188)))
                           (_args39190_
                            (map (lambda (_g3917739179_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e
                                      _g3917739179_
                                      _self37785_
                                      _$t37786_
                                      _methods37787_
                                      _slots37788_
                                      _class-check37789_
                                      _struct-check37790_
                                      _struct-assert37791_)))
                                 (let ((__tmp46189
                                        (lambda (_g3918139184_ _g3918239186_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3918139184_
                                                  _g3918239186_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp46189 '() _L39133_)))))
                       (let ((__tmp46190
                              (let ((__tmp46191
                                     (let ((__tmp46197
                                            (let ((__tmp46198
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp46198)))
                                           (__tmp46192
                                            (let ((__tmp46196
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e37793_
                                                      _$method39189_)))
                                                  (__tmp46193
                                                   (let ((__tmp46194
                                                          (let ((__tmp46195
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _self37785_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp46195))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46194
                                                           _args39190_))))
                                              (declare (not safe))
                                              (cons __tmp46196 __tmp46193))))
                                       (declare (not safe))
                                       (cons __tmp46197 __tmp46192))))
                                (declare (not safe))
                                (cons '%#call __tmp46191))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp46190 _stx37784_)))))
                  (___kont4508745088_
                   (lambda (_L38964_ _L38965_ _L38966_)
                     (let* ((_$field38998_
                             (let ((__tmp46199
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L38964_))))
                               (declare (not safe))
                               (table-ref _slots37788_ __tmp46199)))
                            (__tmp46200
                             (let ((__tmp46201
                                    (let ((__tmp46208
                                           (let ((__tmp46209
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t37786_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp46209)))
                                          (__tmp46202
                                           (let ((__tmp46206
                                                  (let ((__tmp46207
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field38998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp46207)))
                                                 (__tmp46203
                                                  (let ((__tmp46204
                                                         (let ((__tmp46205
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self37785_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp46205))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp46204 '()))))
                                             (declare (not safe))
                                             (cons __tmp46206 __tmp46203))))
                                      (declare (not safe))
                                      (cons __tmp46208 __tmp46202))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp46201))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp46200 _stx37784_))))
                  (___kont4508945090_
                   (lambda (_L38838_ _L38839_ _L38840_ _L38841_)
                     (let ((_$field38876_
                            (let ((__tmp46210
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L38839_))))
                              (declare (not safe))
                              (table-ref _slots37788_ __tmp46210)))
                           (_expr38877_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e
                               _L38838_
                               _self37785_
                               _$t37786_
                               _methods37787_
                               _slots37788_
                               _class-check37789_
                               _struct-check37790_
                               _struct-assert37791_))))
                       (let ((__tmp46211
                              (let ((__tmp46212
                                     (let ((__tmp46220
                                            (let ((__tmp46221
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t37786_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp46221)))
                                           (__tmp46213
                                            (let ((__tmp46218
                                                   (let ((__tmp46219
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field38876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp46219)))
                                                  (__tmp46214
                                                   (let ((__tmp46216
                                                          (let ((__tmp46217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _self37785_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp46217)))
                 (__tmp46215
                  (let () (declare (not safe)) (cons _expr38877_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46216
                                                           __tmp46215))))
                                              (declare (not safe))
                                              (cons __tmp46218 __tmp46214))))
                                       (declare (not safe))
                                       (cons __tmp46220 __tmp46213))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp46212))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp46211 _stx37784_)))))
                  (___kont4509145092_
                   (lambda (_L38717_ _L38718_)
                     (let* ((_slot38740_
                             (##structure-ref
                              (let ((__tmp46222
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L38718_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp46222))
                              '2
                              gxc#!class-getf::t
                              '#f))
                            (_$field38742_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots37788_ _slot38740_))))
                       (let ((__tmp46223
                              (let ((__tmp46224
                                     (let ((__tmp46231
                                            (let ((__tmp46232
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t37786_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp46232)))
                                           (__tmp46225
                                            (let ((__tmp46229
                                                   (let ((__tmp46230
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field38742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp46230)))
                                                  (__tmp46226
                                                   (let ((__tmp46227
                                                          (let ((__tmp46228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _self37785_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp46228))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46227 '()))))
                                              (declare (not safe))
                                              (cons __tmp46229 __tmp46226))))
                                       (declare (not safe))
                                       (cons __tmp46231 __tmp46225))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp46224))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp46223 _stx37784_)))))
                  (___kont4509345094_
                   (lambda (_L38622_ _L38623_ _L38624_)
                     (let* ((_slot38649_
                             (##structure-ref
                              (let ((__tmp46233
                                     (let ((__tmp46234
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'getf))))
                                       (declare (not safe))
                                       (gxc#identifier-symbol __tmp46234))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp46233))
                              '2
                              gxc#!class-setf::t
                              '#f))
                            (_$field38651_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots37788_ _slot38649_)))
                            (_expr38653_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e
                                _L38622_
                                _self37785_
                                _$t37786_
                                _methods37787_
                                _slots37788_
                                _class-check37789_
                                _struct-check37790_
                                _struct-assert37791_))))
                       (let ((__tmp46235
                              (let ((__tmp46236
                                     (let ((__tmp46244
                                            (let ((__tmp46245
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t37786_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp46245)))
                                           (__tmp46237
                                            (let ((__tmp46242
                                                   (let ((__tmp46243
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field38651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp46243)))
                                                  (__tmp46238
                                                   (let ((__tmp46240
                                                          (let ((__tmp46241
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _self37785_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp46241)))
                 (__tmp46239
                  (let () (declare (not safe)) (cons _expr38653_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46240
                                                           __tmp46239))))
                                              (declare (not safe))
                                              (cons __tmp46242 __tmp46238))))
                                       (declare (not safe))
                                       (cons __tmp46244 __tmp46237))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp46236))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp46235 _stx37784_)))))
                  (___kont4509545096_
                   (lambda (_L38530_ _L38531_)
                     (let ((__tmp46246
                            (let ((__tmp46247
                                   (let ((__tmp46248
                                          (##structure-ref
                                           (let ((__tmp46249
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L38531_))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-type
                                              __tmp46249))
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (table-ref
                                      _class-check37789_
                                      __tmp46248))))
                              (declare (not safe))
                              (cons __tmp46247 '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp46246))))
                  (___kont4509745098_
                   (lambda (_L38439_ _L38440_)
                     (let ((_t38462_
                            (##structure-ref
                             (let ((__tmp46250
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L38440_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp46250))
                             '1
                             gxc#!type::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (table-ref _struct-assert37791_ _t38462_ '#f))
                           '(%#quote #t)
                           (let ((_$e38464_
                                  (let ()
                                    (declare (not safe))
                                    (table-ref
                                     _struct-check37790_
                                     _t38462_
                                     '#f))))
                             (if _$e38464_
                                 ((lambda (_checkq38467_)
                                    (let ((__tmp46251
                                           (let ()
                                             (declare (not safe))
                                             (cons _checkq38467_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp46251)))
                                  _$e38464_)
                                 _stx37784_))))))
                  (___kont4509945100_
                   (lambda (_L38324_ _L38325_)
                     (let* ((_getf38358_
                             (let ((__tmp46252
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L38325_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp46252)))
                            (_t38360_
                             (##structure-ref
                              _getf38358_
                              '1
                              gxc#!type::t
                              '#f)))
                       (if (##structure-ref
                            _getf38358_
                            '3
                            gxc#!struct-getf::t
                            '#f)
                           _stx37784_
                           (if (let ()
                                 (declare (not safe))
                                 (table-ref _struct-assert37791_ _t38360_ '#f))
                               (let* ((_struct-t38363_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-type
                                          _t38360_)))
                                      (_off38365_
                                       (fx+ (##structure-ref
                                             _getf38358_
                                             '2
                                             gxc#!struct-getf::t
                                             '#f)
                                            (##structure-ref
                                             _struct-t38363_
                                             '4
                                             gxc#!struct-type::t
                                             '#f)
                                            '1)))
                                 (let ((__tmp46281
                                        (let ((__tmp46288
                                               (let ((__tmp46289
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _t38360_ '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp46289)))
                                              (__tmp46282
                                               (let ((__tmp46286
                                                      (let ((__tmp46287
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off38365_ '()))))
                (declare (not safe))
                (cons '%#quote __tmp46287)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp46283
                                                      (let ((__tmp46284
                                                             (let ((__tmp46285
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _self37785_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp46285))))
                (declare (not safe))
                (cons __tmp46284 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp46286
                                                       __tmp46283))))
                                          (declare (not safe))
                                          (cons __tmp46288 __tmp46282))))
                                   (declare (not safe))
                                   (cons '%#struct-unchecked-ref __tmp46281)))
                               (let ((_$e38368_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         _struct-check37790_
                                         _t38360_
                                         '#f))))
                                 (if _$e38368_
                                     ((lambda (_checkq38371_)
                                        (let* ((_struct-t38373_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-type
                                                   _t38360_)))
                                               (_off38375_
                                                (fx+ (##structure-ref
                                                      _getf38358_
                                                      '2
                                                      gxc#!struct-getf::t
                                                      '#f)
                                                     (##structure-ref
                                                      _struct-t38373_
                                                      '4
                                                      gxc#!struct-type::t
                                                      '#f)
                                                     '1)))
                                          (let ((__tmp46253
                                                 (let ((__tmp46279
                                                        (let ((__tmp46280
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _checkq38371_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp46280)))
               (__tmp46254
                (let ((__tmp46269
                       (let ((__tmp46270
                              (let ((__tmp46277
                                     (let ((__tmp46278
                                            (let ()
                                              (declare (not safe))
                                              (cons _t38360_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp46278)))
                                    (__tmp46271
                                     (let ((__tmp46275
                                            (let ((__tmp46276
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _off38375_ '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp46276)))
                                           (__tmp46272
                                            (let ((__tmp46273
                                                   (let ((__tmp46274
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self37785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp46274))))
                                              (declare (not safe))
                                              (cons __tmp46273 '()))))
                                       (declare (not safe))
                                       (cons __tmp46275 __tmp46272))))
                                (declare (not safe))
                                (cons __tmp46277 __tmp46271))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp46270)))
                      (__tmp46255
                       (let ((__tmp46256
                              (let ((__tmp46257
                                     (let ((__tmp46267
                                            (let ((__tmp46268
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'error '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp46268)))
                                           (__tmp46258
                                            (let ((__tmp46265
                                                   (let ((__tmp46266
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '"Type error; concrete type is not a subclass of expected type"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp46266)))
                                                  (__tmp46259
                                                   (let ((__tmp46263
                                                          (let ((__tmp46264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _t38360_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp46264)))
                 (__tmp46260
                  (let ((__tmp46261
                         (let ((__tmp46262
                                (let ()
                                  (declare (not safe))
                                  (cons _self37785_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp46262))))
                    (declare (not safe))
                    (cons __tmp46261 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46263
                                                           __tmp46260))))
                                              (declare (not safe))
                                              (cons __tmp46265 __tmp46259))))
                                       (declare (not safe))
                                       (cons __tmp46267 __tmp46258))))
                                (declare (not safe))
                                (cons '%#call __tmp46257))))
                         (declare (not safe))
                         (cons __tmp46256 '()))))
                  (declare (not safe))
                  (cons __tmp46269 __tmp46255))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp46279
                                                         __tmp46254))))
                                            (declare (not safe))
                                            (cons '%#if __tmp46253))))
                                      _$e38368_)
                                     _stx37784_)))))))
                  (___kont4510145102_
                   (lambda (_L38199_ _L38200_ _L38201_)
                     (let* ((_setf38241_
                             (let ((__tmp46290
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L38201_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp46290)))
                            (_t38243_
                             (##structure-ref _setf38241_ '1 gxc#!type::t '#f))
                            (_expr38245_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e
                                _L38199_
                                _self37785_
                                _$t37786_
                                _methods37787_
                                _slots37788_
                                _class-check37789_
                                _struct-check37790_
                                _struct-assert37791_))))
                       (if (##structure-ref
                            _setf38241_
                            '3
                            gxc#!struct-setf::t
                            '#f)
                           (let ((__tmp46340
                                  (let ((__tmp46346
                                         (let ((__tmp46349
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#ref)))
                                               (__tmp46347
                                                (let ((__tmp46348
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'setf))))
                                                  (declare (not safe))
                                                  (cons __tmp46348 '()))))
                                           (declare (not safe))
                                           (cons __tmp46349 __tmp46347)))
                                        (__tmp46341
                                         (let ((__tmp46343
                                                (let ((__tmp46345
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp46344
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L38200_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp46345
                                                        __tmp46344)))
                                               (__tmp46342
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _expr38245_ '()))))
                                           (declare (not safe))
                                           (cons __tmp46343 __tmp46342))))
                                    (declare (not safe))
                                    (cons __tmp46346 __tmp46341))))
                             (declare (not safe))
                             (cons '%#call __tmp46340))
                           (if (let ()
                                 (declare (not safe))
                                 (table-ref _struct-assert37791_ _t38243_ '#f))
                               (let* ((_struct-t38248_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-type
                                          _t38243_)))
                                      (_off38250_
                                       (fx+ (##structure-ref
                                             _setf38241_
                                             '2
                                             gxc#!struct-setf::t
                                             '#f)
                                            (##structure-ref
                                             _struct-t38248_
                                             '4
                                             gxc#!struct-type::t
                                             '#f)
                                            '1)))
                                 (let ((__tmp46330
                                        (let ((__tmp46338
                                               (let ((__tmp46339
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _t38243_ '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp46339)))
                                              (__tmp46331
                                               (let ((__tmp46336
                                                      (let ((__tmp46337
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off38250_ '()))))
                (declare (not safe))
                (cons '%#quote __tmp46337)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp46332
                                                      (let ((__tmp46334
                                                             (let ((__tmp46335
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _self37785_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp46335)))
                    (__tmp46333
                     (let () (declare (not safe)) (cons _expr38245_ '()))))
                (declare (not safe))
                (cons __tmp46334 __tmp46333))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp46336
                                                       __tmp46332))))
                                          (declare (not safe))
                                          (cons __tmp46338 __tmp46331))))
                                   (declare (not safe))
                                   (cons '%#struct-unchecked-set! __tmp46330)))
                               (let ((_$e38253_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         _struct-check37790_
                                         _t38243_
                                         '#f))))
                                 (if _$e38253_
                                     ((lambda (_checkq38256_)
                                        (let* ((_struct-t38258_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-type
                                                   _t38243_)))
                                               (_off38260_
                                                (fx+ (##structure-ref
                                                      _setf38241_
                                                      '2
                                                      gxc#!struct-setf::t
                                                      '#f)
                                                     (##structure-ref
                                                      _struct-t38258_
                                                      '4
                                                      gxc#!struct-type::t
                                                      '#f)
                                                     '1)))
                                          (let ((__tmp46301
                                                 (let ((__tmp46328
                                                        (let ((__tmp46329
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _checkq38256_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp46329)))
               (__tmp46302
                (let ((__tmp46317
                       (let ((__tmp46318
                              (let ((__tmp46326
                                     (let ((__tmp46327
                                            (let ()
                                              (declare (not safe))
                                              (cons _t38243_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp46327)))
                                    (__tmp46319
                                     (let ((__tmp46324
                                            (let ((__tmp46325
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _off38260_ '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp46325)))
                                           (__tmp46320
                                            (let ((__tmp46322
                                                   (let ((__tmp46323
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self37785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp46323)))
                                                  (__tmp46321
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _expr38245_ '()))))
                                              (declare (not safe))
                                              (cons __tmp46322 __tmp46321))))
                                       (declare (not safe))
                                       (cons __tmp46324 __tmp46320))))
                                (declare (not safe))
                                (cons __tmp46326 __tmp46319))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp46318)))
                      (__tmp46303
                       (let ((__tmp46304
                              (let ((__tmp46305
                                     (let ((__tmp46315
                                            (let ((__tmp46316
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'error '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp46316)))
                                           (__tmp46306
                                            (let ((__tmp46313
                                                   (let ((__tmp46314
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '"Type error; concrete type is not a subclass of expected type"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp46314)))
                                                  (__tmp46307
                                                   (let ((__tmp46311
                                                          (let ((__tmp46312
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _t38243_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp46312)))
                 (__tmp46308
                  (let ((__tmp46309
                         (let ((__tmp46310
                                (let ()
                                  (declare (not safe))
                                  (cons _self37785_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp46310))))
                    (declare (not safe))
                    (cons __tmp46309 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46311
                                                           __tmp46308))))
                                              (declare (not safe))
                                              (cons __tmp46313 __tmp46307))))
                                       (declare (not safe))
                                       (cons __tmp46315 __tmp46306))))
                                (declare (not safe))
                                (cons '%#call __tmp46305))))
                         (declare (not safe))
                         (cons __tmp46304 '()))))
                  (declare (not safe))
                  (cons __tmp46317 __tmp46303))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp46328
                                                         __tmp46302))))
                                            (declare (not safe))
                                            (cons '%#if __tmp46301))))
                                      _$e38253_)
                                     (let ((__tmp46291
                                            (let ((__tmp46297
                                                   (let ((__tmp46300
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref)))
                                                         (__tmp46298
                                                          (let ((__tmp46299
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'setf))))
                    (declare (not safe))
                    (cons __tmp46299 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46300
                                                           __tmp46298)))
                                                  (__tmp46292
                                                   (let ((__tmp46294
                                                          (let ((__tmp46296
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref)))
                        (__tmp46295
                         (let () (declare (not safe)) (cons _L38200_ '()))))
                    (declare (not safe))
                    (cons __tmp46296 __tmp46295)))
                 (__tmp46293
                  (let () (declare (not safe)) (cons _expr38245_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46294
                                                           __tmp46293))))
                                              (declare (not safe))
                                              (cons __tmp46297 __tmp46292))))
                                       (declare (not safe))
                                       (cons '%#call __tmp46291)))))))))
                  (___kont4510345104_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx37784_
                        _self37785_
                        _$t37786_
                        _methods37787_
                        _slots37788_
                        _class-check37789_
                        _struct-check37790_
                        _struct-assert37791_)))))
              (let* ((___match4581445815_
                      (lambda (_e3809738135_
                               _hd3809638138_
                               _tl3809538140_
                               _e3810038143_
                               _hd3809938146_
                               _tl3809838148_
                               _e3810338151_
                               _hd3810238154_
                               _tl3810138156_
                               _e3810638159_
                               _hd3810538162_
                               _tl3810438164_
                               _e3810938167_
                               _hd3810838170_
                               _tl3810738172_
                               _e3811238175_
                               _hd3811138178_
                               _tl3811038180_
                               _e3811538183_
                               _hd3811438186_
                               _tl3811338188_
                               _e3811838191_
                               _hd3811738194_
                               _tl3811638196_)
                        (let ((_L38199_ _hd3811738194_)
                              (_L38200_ _hd3811438186_)
                              (_L38201_ _hd3810538162_))
                          (if (if (let ((__tmp46352
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _L38200_
                                            _self37785_))))
                                    (declare (not safe))
                                    (not __tmp46352))
                                  '#f
                                  (let ((_$e38230_
                                         (let ((__tmp46350
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L38201_))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-type
                                            __tmp46350))))
                                    (and _$e38230_
                                         ((lambda (_t38233_)
                                            (and (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _t38233_
                                                    'gxc#!struct-setf::t))
                                                 (let ((_struct-t3823438236_
                                                        (let ((__tmp46351
                                                               (##structure-ref
                                                                _t38233_
                                                                '1
                                                                gxc#!type::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#optimizer-resolve-type
                                                           __tmp46351))))
                                                   (and _struct-t3823438236_
                                                        (let ((_struct-t38239_
                                                               _struct-t3823438236_))
                                                          (##structure-ref
                                                           _struct-t38239_
                                                           '4
                                                           gxc#!struct-type::t
                                                           '#f))))))
                                          _$e38230_))))
                              (___kont4510145102_ _L38199_ _L38200_ _L38201_)
                              (___kont4510345104_)))))
                     (___match4580645807_
                      (lambda (_e3809738135_
                               _hd3809638138_
                               _tl3809538140_
                               _e3810038143_
                               _hd3809938146_
                               _tl3809838148_
                               _e3810338151_
                               _hd3810238154_
                               _tl3810138156_
                               _e3810638159_
                               _hd3810538162_
                               _tl3810438164_
                               _e3810938167_
                               _hd3810838170_
                               _tl3810738172_
                               _e3811238175_
                               _hd3811138178_
                               _tl3811038180_
                               _e3811538183_
                               _hd3811438186_
                               _tl3811338188_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl3810738172_))
                            (let ((_e3811838191_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl3810738172_))))
                              (let ((_tl3811638196_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3811838191_)))
                                    (_hd3811738194_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3811838191_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl3811638196_))
                                    (___match4581445815_
                                     _e3809738135_
                                     _hd3809638138_
                                     _tl3809538140_
                                     _e3810038143_
                                     _hd3809938146_
                                     _tl3809838148_
                                     _e3810338151_
                                     _hd3810238154_
                                     _tl3810138156_
                                     _e3810638159_
                                     _hd3810538162_
                                     _tl3810438164_
                                     _e3810938167_
                                     _hd3810838170_
                                     _tl3810738172_
                                     _e3811238175_
                                     _hd3811138178_
                                     _tl3811038180_
                                     _e3811538183_
                                     _hd3811438186_
                                     _tl3811338188_
                                     _e3811838191_
                                     _hd3811738194_
                                     _tl3811638196_)
                                    (___kont4510345104_))))
                            (___kont4510345104_))))
                     (___match4575245753_
                      (lambda (_e3807338268_
                               _hd3807238271_
                               _tl3807138273_
                               _e3807638276_
                               _hd3807538279_
                               _tl3807438281_
                               _e3807938284_
                               _hd3807838287_
                               _tl3807738289_
                               _e3808238292_
                               _hd3808138295_
                               _tl3808038297_
                               _e3808538300_
                               _hd3808438303_
                               _tl3808338305_
                               _e3808838308_
                               _hd3808738311_
                               _tl3808638313_
                               _e3809138316_
                               _hd3809038319_
                               _tl3808938321_)
                        (let ((_L38324_ _hd3809038319_)
                              (_L38325_ _hd3808138295_))
                          (if (if (let ((__tmp46355
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _L38324_
                                            _self37785_))))
                                    (declare (not safe))
                                    (not __tmp46355))
                                  '#f
                                  (let ((_$e38347_
                                         (let ((__tmp46353
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L38325_))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-type
                                            __tmp46353))))
                                    (and _$e38347_
                                         ((lambda (_t38350_)
                                            (and (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _t38350_
                                                    'gxc#!struct-getf::t))
                                                 (let ((_struct-t3835138353_
                                                        (let ((__tmp46354
                                                               (##structure-ref
                                                                _t38350_
                                                                '1
                                                                gxc#!type::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#optimizer-resolve-type
                                                           __tmp46354))))
                                                   (and _struct-t3835138353_
                                                        (let ((_struct-t38356_
                                                               _struct-t3835138353_))
                                                          (##structure-ref
                                                           _struct-t38356_
                                                           '4
                                                           gxc#!struct-type::t
                                                           '#f))))))
                                          _$e38347_))))
                              (___kont4509945100_ _L38324_ _L38325_)
                              (___kont4510345104_)))))
                     (___match4569645697_
                      (lambda (_e3805038383_
                               _hd3804938386_
                               _tl3804838388_
                               _e3805338391_
                               _hd3805238394_
                               _tl3805138396_
                               _e3805638399_
                               _hd3805538402_
                               _tl3805438404_
                               _e3805938407_
                               _hd3805838410_
                               _tl3805738412_
                               _e3806238415_
                               _hd3806138418_
                               _tl3806038420_
                               _e3806538423_
                               _hd3806438426_
                               _tl3806338428_
                               _e3806838431_
                               _hd3806738434_
                               _tl3806638436_)
                        (let ((_L38439_ _hd3806738434_)
                              (_L38440_ _hd3805838410_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L38439_
                                      _self37785_))
                                   (let ((__tmp46356
                                          (let ((__tmp46357
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L38440_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp46357))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp46356
                                      'gxc#!struct-pred::t)))
                              (___kont4509745098_ _L38439_ _L38440_)
                              (___match4575245753_
                               _e3805038383_
                               _hd3804938386_
                               _tl3804838388_
                               _e3805338391_
                               _hd3805238394_
                               _tl3805138396_
                               _e3805638399_
                               _hd3805538402_
                               _tl3805438404_
                               _e3805938407_
                               _hd3805838410_
                               _tl3805738412_
                               _e3806238415_
                               _hd3806138418_
                               _tl3806038420_
                               _e3806538423_
                               _hd3806438426_
                               _tl3806338428_
                               _e3806838431_
                               _hd3806738434_
                               _tl3806638436_)))))
                     (___match4564045641_
                      (lambda (_e3802738474_
                               _hd3802638477_
                               _tl3802538479_
                               _e3803038482_
                               _hd3802938485_
                               _tl3802838487_
                               _e3803338490_
                               _hd3803238493_
                               _tl3803138495_
                               _e3803638498_
                               _hd3803538501_
                               _tl3803438503_
                               _e3803938506_
                               _hd3803838509_
                               _tl3803738511_
                               _e3804238514_
                               _hd3804138517_
                               _tl3804038519_
                               _e3804538522_
                               _hd3804438525_
                               _tl3804338527_)
                        (let ((_L38530_ _hd3804438525_)
                              (_L38531_ _hd3803538501_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L38530_
                                      _self37785_))
                                   (let ((__tmp46358
                                          (let ((__tmp46359
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L38531_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp46359))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp46358
                                      'gxc#!class-pred::t)))
                              (___kont4509545096_ _L38530_ _L38531_)
                              (___match4569645697_
                               _e3802738474_
                               _hd3802638477_
                               _tl3802538479_
                               _e3803038482_
                               _hd3802938485_
                               _tl3802838487_
                               _e3803338490_
                               _hd3803238493_
                               _tl3803138495_
                               _e3803638498_
                               _hd3803538501_
                               _tl3803438503_
                               _e3803938506_
                               _hd3803838509_
                               _tl3803738511_
                               _e3804238514_
                               _hd3804138517_
                               _tl3804038519_
                               _e3804538522_
                               _hd3804438525_
                               _tl3804338527_)))))
                     (___match4563845639_
                      (lambda (_e3802738474_
                               _hd3802638477_
                               _tl3802538479_
                               _e3803038482_
                               _hd3802938485_
                               _tl3802838487_
                               _e3803338490_
                               _hd3803238493_
                               _tl3803138495_
                               _e3803638498_
                               _hd3803538501_
                               _tl3803438503_
                               _e3803938506_
                               _hd3803838509_
                               _tl3803738511_
                               _e3804238514_
                               _hd3804138517_
                               _tl3804038519_
                               _e3804538522_
                               _hd3804438525_
                               _tl3804338527_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl3803738511_))
                            (___match4564045641_
                             _e3802738474_
                             _hd3802638477_
                             _tl3802538479_
                             _e3803038482_
                             _hd3802938485_
                             _tl3802838487_
                             _e3803338490_
                             _hd3803238493_
                             _tl3803138495_
                             _e3803638498_
                             _hd3803538501_
                             _tl3803438503_
                             _e3803938506_
                             _hd3803838509_
                             _tl3803738511_
                             _e3804238514_
                             _hd3804138517_
                             _tl3804038519_
                             _e3804538522_
                             _hd3804438525_
                             _tl3804338527_)
                            (___match4580645807_
                             _e3802738474_
                             _hd3802638477_
                             _tl3802538479_
                             _e3803038482_
                             _hd3802938485_
                             _tl3802838487_
                             _e3803338490_
                             _hd3803238493_
                             _tl3803138495_
                             _e3803638498_
                             _hd3803538501_
                             _tl3803438503_
                             _e3803938506_
                             _hd3803838509_
                             _tl3803738511_
                             _e3804238514_
                             _hd3804138517_
                             _tl3804038519_
                             _e3804538522_
                             _hd3804438525_
                             _tl3804338527_))))
                     (___match4558445585_
                      (lambda (_e3800138558_
                               _hd3800038561_
                               _tl3799938563_
                               _e3800438566_
                               _hd3800338569_
                               _tl3800238571_
                               _e3800738574_
                               _hd3800638577_
                               _tl3800538579_
                               _e3801038582_
                               _hd3800938585_
                               _tl3800838587_
                               _e3801338590_
                               _hd3801238593_
                               _tl3801138595_
                               _e3801638598_
                               _hd3801538601_
                               _tl3801438603_
                               _e3801938606_
                               _hd3801838609_
                               _tl3801738611_
                               _e3802238614_
                               _hd3802138617_
                               _tl3802038619_)
                        (let ((_L38622_ _hd3802138617_)
                              (_L38623_ _hd3801838609_)
                              (_L38624_ _hd3800938585_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L38623_
                                      _self37785_))
                                   (let ((__tmp46360
                                          (let ((__tmp46361
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L38624_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp46361))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp46360
                                      'gxc#!class-setf::t)))
                              (___kont4509345094_ _L38622_ _L38623_ _L38624_)
                              (___match4581445815_
                               _e3800138558_
                               _hd3800038561_
                               _tl3799938563_
                               _e3800438566_
                               _hd3800338569_
                               _tl3800238571_
                               _e3800738574_
                               _hd3800638577_
                               _tl3800538579_
                               _e3801038582_
                               _hd3800938585_
                               _tl3800838587_
                               _e3801338590_
                               _hd3801238593_
                               _tl3801138595_
                               _e3801638598_
                               _hd3801538601_
                               _tl3801438603_
                               _e3801938606_
                               _hd3801838609_
                               _tl3801738611_
                               _e3802238614_
                               _hd3802138617_
                               _tl3802038619_)))))
                     (___match4558245583_
                      (lambda (_e3800138558_
                               _hd3800038561_
                               _tl3799938563_
                               _e3800438566_
                               _hd3800338569_
                               _tl3800238571_
                               _e3800738574_
                               _hd3800638577_
                               _tl3800538579_
                               _e3801038582_
                               _hd3800938585_
                               _tl3800838587_
                               _e3801338590_
                               _hd3801238593_
                               _tl3801138595_
                               _e3801638598_
                               _hd3801538601_
                               _tl3801438603_
                               _e3801938606_
                               _hd3801838609_
                               _tl3801738611_
                               _e3802238614_
                               _hd3802138617_
                               _tl3802038619_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl3802038619_))
                            (___match4558445585_
                             _e3800138558_
                             _hd3800038561_
                             _tl3799938563_
                             _e3800438566_
                             _hd3800338569_
                             _tl3800238571_
                             _e3800738574_
                             _hd3800638577_
                             _tl3800538579_
                             _e3801038582_
                             _hd3800938585_
                             _tl3800838587_
                             _e3801338590_
                             _hd3801238593_
                             _tl3801138595_
                             _e3801638598_
                             _hd3801538601_
                             _tl3801438603_
                             _e3801938606_
                             _hd3801838609_
                             _tl3801738611_
                             _e3802238614_
                             _hd3802138617_
                             _tl3802038619_)
                            (___kont4510345104_))))
                     (___match4557645577_
                      (lambda (_e3800138558_
                               _hd3800038561_
                               _tl3799938563_
                               _e3800438566_
                               _hd3800338569_
                               _tl3800238571_
                               _e3800738574_
                               _hd3800638577_
                               _tl3800538579_
                               _e3801038582_
                               _hd3800938585_
                               _tl3800838587_
                               _e3801338590_
                               _hd3801238593_
                               _tl3801138595_
                               _e3801638598_
                               _hd3801538601_
                               _tl3801438603_
                               _e3801938606_
                               _hd3801838609_
                               _tl3801738611_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl3801138595_))
                            (let ((_e3802238614_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl3801138595_))))
                              (let ((_tl3802038619_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3802238614_)))
                                    (_hd3802138617_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3802238614_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl3802038619_))
                                    (___match4558445585_
                                     _e3800138558_
                                     _hd3800038561_
                                     _tl3799938563_
                                     _e3800438566_
                                     _hd3800338569_
                                     _tl3800238571_
                                     _e3800738574_
                                     _hd3800638577_
                                     _tl3800538579_
                                     _e3801038582_
                                     _hd3800938585_
                                     _tl3800838587_
                                     _e3801338590_
                                     _hd3801238593_
                                     _tl3801138595_
                                     _e3801638598_
                                     _hd3801538601_
                                     _tl3801438603_
                                     _e3801938606_
                                     _hd3801838609_
                                     _tl3801738611_
                                     _e3802238614_
                                     _hd3802138617_
                                     _tl3802038619_)
                                    (___kont4510345104_))))
                            (___match4563845639_
                             _e3800138558_
                             _hd3800038561_
                             _tl3799938563_
                             _e3800438566_
                             _hd3800338569_
                             _tl3800238571_
                             _e3800738574_
                             _hd3800638577_
                             _tl3800538579_
                             _e3801038582_
                             _hd3800938585_
                             _tl3800838587_
                             _e3801338590_
                             _hd3801238593_
                             _tl3801138595_
                             _e3801638598_
                             _hd3801538601_
                             _tl3801438603_
                             _e3801938606_
                             _hd3801838609_
                             _tl3801738611_))))
                     (___match4552245523_
                      (lambda (_e3797738661_
                               _hd3797638664_
                               _tl3797538666_
                               _e3798038669_
                               _hd3797938672_
                               _tl3797838674_
                               _e3798338677_
                               _hd3798238680_
                               _tl3798138682_
                               _e3798638685_
                               _hd3798538688_
                               _tl3798438690_
                               _e3798938693_
                               _hd3798838696_
                               _tl3798738698_
                               _e3799238701_
                               _hd3799138704_
                               _tl3799038706_
                               _e3799538709_
                               _hd3799438712_
                               _tl3799338714_)
                        (let ((_L38717_ _hd3799438712_)
                              (_L38718_ _hd3798538688_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L38717_
                                      _self37785_))
                                   (let ((__tmp46362
                                          (let ((__tmp46363
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L38718_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp46363))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp46362
                                      'gxc#!class-getf::t)))
                              (___kont4509145092_ _L38717_ _L38718_)
                              (___match4564045641_
                               _e3797738661_
                               _hd3797638664_
                               _tl3797538666_
                               _e3798038669_
                               _hd3797938672_
                               _tl3797838674_
                               _e3798338677_
                               _hd3798238680_
                               _tl3798138682_
                               _e3798638685_
                               _hd3798538688_
                               _tl3798438690_
                               _e3798938693_
                               _hd3798838696_
                               _tl3798738698_
                               _e3799238701_
                               _hd3799138704_
                               _tl3799038706_
                               _e3799538709_
                               _hd3799438712_
                               _tl3799338714_)))))
                     (___match4552045521_
                      (lambda (_e3797738661_
                               _hd3797638664_
                               _tl3797538666_
                               _e3798038669_
                               _hd3797938672_
                               _tl3797838674_
                               _e3798338677_
                               _hd3798238680_
                               _tl3798138682_
                               _e3798638685_
                               _hd3798538688_
                               _tl3798438690_
                               _e3798938693_
                               _hd3798838696_
                               _tl3798738698_
                               _e3799238701_
                               _hd3799138704_
                               _tl3799038706_
                               _e3799538709_
                               _hd3799438712_
                               _tl3799338714_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl3798738698_))
                            (___match4552245523_
                             _e3797738661_
                             _hd3797638664_
                             _tl3797538666_
                             _e3798038669_
                             _hd3797938672_
                             _tl3797838674_
                             _e3798338677_
                             _hd3798238680_
                             _tl3798138682_
                             _e3798638685_
                             _hd3798538688_
                             _tl3798438690_
                             _e3798938693_
                             _hd3798838696_
                             _tl3798738698_
                             _e3799238701_
                             _hd3799138704_
                             _tl3799038706_
                             _e3799538709_
                             _hd3799438712_
                             _tl3799338714_)
                            (___match4557645577_
                             _e3797738661_
                             _hd3797638664_
                             _tl3797538666_
                             _e3798038669_
                             _hd3797938672_
                             _tl3797838674_
                             _e3798338677_
                             _hd3798238680_
                             _tl3798138682_
                             _e3798638685_
                             _hd3798538688_
                             _tl3798438690_
                             _e3798938693_
                             _hd3798838696_
                             _tl3798738698_
                             _e3799238701_
                             _hd3799138704_
                             _tl3799038706_
                             _e3799538709_
                             _hd3799438712_
                             _tl3799338714_))))
                     (___match4546645467_
                      (lambda (_e3794238750_
                               _hd3794138753_
                               _tl3794038755_
                               _e3794538758_
                               _hd3794438761_
                               _tl3794338763_
                               _e3794838766_
                               _hd3794738769_
                               _tl3794638771_
                               _e3795138774_
                               _hd3795038777_
                               _tl3794938779_
                               _e3795438782_
                               _hd3795338785_
                               _tl3795238787_
                               _e3795738790_
                               _hd3795638793_
                               _tl3795538795_
                               _e3796038798_
                               _hd3795938801_
                               _tl3795838803_
                               _e3796338806_
                               _hd3796238809_
                               _tl3796138811_
                               _e3796638814_
                               _hd3796538817_
                               _tl3796438819_
                               _e3796938822_
                               _hd3796838825_
                               _tl3796738827_
                               _e3797238830_
                               _hd3797138833_
                               _tl3797038835_)
                        (let ((_L38838_ _hd3797138833_)
                              (_L38839_ _hd3796838825_)
                              (_L38840_ _hd3795938801_)
                              (_L38841_ _hd3795038777_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L38841_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L38841_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L38840_
                                      _self37785_)))
                              (___kont4508945090_
                               _L38838_
                               _L38839_
                               _L38840_
                               _L38841_)
                              (___kont4510345104_)))))
                     (___match4545845459_
                      (lambda (_e3794238750_
                               _hd3794138753_
                               _tl3794038755_
                               _e3794538758_
                               _hd3794438761_
                               _tl3794338763_
                               _e3794838766_
                               _hd3794738769_
                               _tl3794638771_
                               _e3795138774_
                               _hd3795038777_
                               _tl3794938779_
                               _e3795438782_
                               _hd3795338785_
                               _tl3795238787_
                               _e3795738790_
                               _hd3795638793_
                               _tl3795538795_
                               _e3796038798_
                               _hd3795938801_
                               _tl3795838803_
                               _e3796338806_
                               _hd3796238809_
                               _tl3796138811_
                               _e3796638814_
                               _hd3796538817_
                               _tl3796438819_
                               _e3796938822_
                               _hd3796838825_
                               _tl3796738827_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl3796138811_))
                            (let ((_e3797238830_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl3796138811_))))
                              (let ((_tl3797038835_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3797238830_)))
                                    (_hd3797138833_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3797238830_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl3797038835_))
                                    (___match4546645467_
                                     _e3794238750_
                                     _hd3794138753_
                                     _tl3794038755_
                                     _e3794538758_
                                     _hd3794438761_
                                     _tl3794338763_
                                     _e3794838766_
                                     _hd3794738769_
                                     _tl3794638771_
                                     _e3795138774_
                                     _hd3795038777_
                                     _tl3794938779_
                                     _e3795438782_
                                     _hd3795338785_
                                     _tl3795238787_
                                     _e3795738790_
                                     _hd3795638793_
                                     _tl3795538795_
                                     _e3796038798_
                                     _hd3795938801_
                                     _tl3795838803_
                                     _e3796338806_
                                     _hd3796238809_
                                     _tl3796138811_
                                     _e3796638814_
                                     _hd3796538817_
                                     _tl3796438819_
                                     _e3796938822_
                                     _hd3796838825_
                                     _tl3796738827_
                                     _e3797238830_
                                     _hd3797138833_
                                     _tl3797038835_)
                                    (___kont4510345104_))))
                            (___match4558245583_
                             _e3794238750_
                             _hd3794138753_
                             _tl3794038755_
                             _e3794538758_
                             _hd3794438761_
                             _tl3794338763_
                             _e3794838766_
                             _hd3794738769_
                             _tl3794638771_
                             _e3795138774_
                             _hd3795038777_
                             _tl3794938779_
                             _e3795438782_
                             _hd3795338785_
                             _tl3795238787_
                             _e3795738790_
                             _hd3795638793_
                             _tl3795538795_
                             _e3796038798_
                             _hd3795938801_
                             _tl3795838803_
                             _e3796338806_
                             _hd3796238809_
                             _tl3796138811_))))
                     (___match4538045381_
                      (lambda (_e3790838884_
                               _hd3790738887_
                               _tl3790638889_
                               _e3791138892_
                               _hd3791038895_
                               _tl3790938897_
                               _e3791438900_
                               _hd3791338903_
                               _tl3791238905_
                               _e3791738908_
                               _hd3791638911_
                               _tl3791538913_
                               _e3792038916_
                               _hd3791938919_
                               _tl3791838921_
                               _e3792338924_
                               _hd3792238927_
                               _tl3792138929_
                               _e3792638932_
                               _hd3792538935_
                               _tl3792438937_
                               _e3792938940_
                               _hd3792838943_
                               _tl3792738945_
                               _e3793238948_
                               _hd3793138951_
                               _tl3793038953_
                               _e3793538956_
                               _hd3793438959_
                               _tl3793338961_)
                        (let ((_L38964_ _hd3793438959_)
                              (_L38965_ _hd3792538935_)
                              (_L38966_ _hd3791638911_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L38966_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L38966_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L38965_
                                      _self37785_)))
                              (___kont4508745088_ _L38964_ _L38965_ _L38966_)
                              (___match4558445585_
                               _e3790838884_
                               _hd3790738887_
                               _tl3790638889_
                               _e3791138892_
                               _hd3791038895_
                               _tl3790938897_
                               _e3791438900_
                               _hd3791338903_
                               _tl3791238905_
                               _e3791738908_
                               _hd3791638911_
                               _tl3791538913_
                               _e3792038916_
                               _hd3791938919_
                               _tl3791838921_
                               _e3792338924_
                               _hd3792238927_
                               _tl3792138929_
                               _e3792638932_
                               _hd3792538935_
                               _tl3792438937_
                               _e3792938940_
                               _hd3792838943_
                               _tl3792738945_)))))
                     (___match4537845379_
                      (lambda (_e3790838884_
                               _hd3790738887_
                               _tl3790638889_
                               _e3791138892_
                               _hd3791038895_
                               _tl3790938897_
                               _e3791438900_
                               _hd3791338903_
                               _tl3791238905_
                               _e3791738908_
                               _hd3791638911_
                               _tl3791538913_
                               _e3792038916_
                               _hd3791938919_
                               _tl3791838921_
                               _e3792338924_
                               _hd3792238927_
                               _tl3792138929_
                               _e3792638932_
                               _hd3792538935_
                               _tl3792438937_
                               _e3792938940_
                               _hd3792838943_
                               _tl3792738945_
                               _e3793238948_
                               _hd3793138951_
                               _tl3793038953_
                               _e3793538956_
                               _hd3793438959_
                               _tl3793338961_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl3792738945_))
                            (___match4538045381_
                             _e3790838884_
                             _hd3790738887_
                             _tl3790638889_
                             _e3791138892_
                             _hd3791038895_
                             _tl3790938897_
                             _e3791438900_
                             _hd3791338903_
                             _tl3791238905_
                             _e3791738908_
                             _hd3791638911_
                             _tl3791538913_
                             _e3792038916_
                             _hd3791938919_
                             _tl3791838921_
                             _e3792338924_
                             _hd3792238927_
                             _tl3792138929_
                             _e3792638932_
                             _hd3792538935_
                             _tl3792438937_
                             _e3792938940_
                             _hd3792838943_
                             _tl3792738945_
                             _e3793238948_
                             _hd3793138951_
                             _tl3793038953_
                             _e3793538956_
                             _hd3793438959_
                             _tl3793338961_)
                            (___match4545845459_
                             _e3790838884_
                             _hd3790738887_
                             _tl3790638889_
                             _e3791138892_
                             _hd3791038895_
                             _tl3790938897_
                             _e3791438900_
                             _hd3791338903_
                             _tl3791238905_
                             _e3791738908_
                             _hd3791638911_
                             _tl3791538913_
                             _e3792038916_
                             _hd3791938919_
                             _tl3791838921_
                             _e3792338924_
                             _hd3792238927_
                             _tl3792138929_
                             _e3792638932_
                             _hd3792538935_
                             _tl3792438937_
                             _e3792938940_
                             _hd3792838943_
                             _tl3792738945_
                             _e3793238948_
                             _hd3793138951_
                             _tl3793038953_
                             _e3793538956_
                             _hd3793438959_
                             _tl3793338961_))))
                     (___match4536845369_
                      (lambda (_e3790838884_
                               _hd3790738887_
                               _tl3790638889_
                               _e3791138892_
                               _hd3791038895_
                               _tl3790938897_
                               _e3791438900_
                               _hd3791338903_
                               _tl3791238905_
                               _e3791738908_
                               _hd3791638911_
                               _tl3791538913_
                               _e3792038916_
                               _hd3791938919_
                               _tl3791838921_
                               _e3792338924_
                               _hd3792238927_
                               _tl3792138929_
                               _e3792638932_
                               _hd3792538935_
                               _tl3792438937_
                               _e3792938940_
                               _hd3792838943_
                               _tl3792738945_
                               _e3793238948_
                               _hd3793138951_
                               _tl3793038953_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd3793138951_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl3793038953_))
                                (let ((_e3793538956_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl3793038953_))))
                                  (let ((_tl3793338961_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3793538956_)))
                                        (_hd3793438959_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3793538956_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl3793338961_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl3792738945_))
                                            (___match4538045381_
                                             _e3790838884_
                                             _hd3790738887_
                                             _tl3790638889_
                                             _e3791138892_
                                             _hd3791038895_
                                             _tl3790938897_
                                             _e3791438900_
                                             _hd3791338903_
                                             _tl3791238905_
                                             _e3791738908_
                                             _hd3791638911_
                                             _tl3791538913_
                                             _e3792038916_
                                             _hd3791938919_
                                             _tl3791838921_
                                             _e3792338924_
                                             _hd3792238927_
                                             _tl3792138929_
                                             _e3792638932_
                                             _hd3792538935_
                                             _tl3792438937_
                                             _e3792938940_
                                             _hd3792838943_
                                             _tl3792738945_
                                             _e3793238948_
                                             _hd3793138951_
                                             _tl3793038953_
                                             _e3793538956_
                                             _hd3793438959_
                                             _tl3793338961_)
                                            (___match4545845459_
                                             _e3790838884_
                                             _hd3790738887_
                                             _tl3790638889_
                                             _e3791138892_
                                             _hd3791038895_
                                             _tl3790938897_
                                             _e3791438900_
                                             _hd3791338903_
                                             _tl3791238905_
                                             _e3791738908_
                                             _hd3791638911_
                                             _tl3791538913_
                                             _e3792038916_
                                             _hd3791938919_
                                             _tl3791838921_
                                             _e3792338924_
                                             _hd3792238927_
                                             _tl3792138929_
                                             _e3792638932_
                                             _hd3792538935_
                                             _tl3792438937_
                                             _e3792938940_
                                             _hd3792838943_
                                             _tl3792738945_
                                             _e3793238948_
                                             _hd3793138951_
                                             _tl3793038953_
                                             _e3793538956_
                                             _hd3793438959_
                                             _tl3793338961_))
                                        (___match4558245583_
                                         _e3790838884_
                                         _hd3790738887_
                                         _tl3790638889_
                                         _e3791138892_
                                         _hd3791038895_
                                         _tl3790938897_
                                         _e3791438900_
                                         _hd3791338903_
                                         _tl3791238905_
                                         _e3791738908_
                                         _hd3791638911_
                                         _tl3791538913_
                                         _e3792038916_
                                         _hd3791938919_
                                         _tl3791838921_
                                         _e3792338924_
                                         _hd3792238927_
                                         _tl3792138929_
                                         _e3792638932_
                                         _hd3792538935_
                                         _tl3792438937_
                                         _e3792938940_
                                         _hd3792838943_
                                         _tl3792738945_))))
                                (___match4558245583_
                                 _e3790838884_
                                 _hd3790738887_
                                 _tl3790638889_
                                 _e3791138892_
                                 _hd3791038895_
                                 _tl3790938897_
                                 _e3791438900_
                                 _hd3791338903_
                                 _tl3791238905_
                                 _e3791738908_
                                 _hd3791638911_
                                 _tl3791538913_
                                 _e3792038916_
                                 _hd3791938919_
                                 _tl3791838921_
                                 _e3792338924_
                                 _hd3792238927_
                                 _tl3792138929_
                                 _e3792638932_
                                 _hd3792538935_
                                 _tl3792438937_
                                 _e3792938940_
                                 _hd3792838943_
                                 _tl3792738945_))
                            (___match4558245583_
                             _e3790838884_
                             _hd3790738887_
                             _tl3790638889_
                             _e3791138892_
                             _hd3791038895_
                             _tl3790938897_
                             _e3791438900_
                             _hd3791338903_
                             _tl3791238905_
                             _e3791738908_
                             _hd3791638911_
                             _tl3791538913_
                             _e3792038916_
                             _hd3791938919_
                             _tl3791838921_
                             _e3792338924_
                             _hd3792238927_
                             _tl3792138929_
                             _e3792638932_
                             _hd3792538935_
                             _tl3792438937_
                             _e3792938940_
                             _hd3792838943_
                             _tl3792738945_))))
                     (___match4530045301_
                      (lambda (_e3785739005_
                               _hd3785639008_
                               _tl3785539010_
                               _e3786039013_
                               _hd3785939016_
                               _tl3785839018_
                               _e3786339021_
                               _hd3786239024_
                               _tl3786139026_
                               _e3786639029_
                               _hd3786539032_
                               _tl3786439034_
                               _e3786939037_
                               _hd3786839040_
                               _tl3786739042_
                               _e3787239045_
                               _hd3787139048_
                               _tl3787039050_
                               _e3787539053_
                               _hd3787439056_
                               _tl3787339058_
                               _e3787839061_
                               _hd3787739064_
                               _tl3787639066_
                               _e3788139069_
                               _hd3788039072_
                               _tl3787939074_
                               _e3788439077_
                               _hd3788339080_
                               _tl3788239082_
                               _e3788739085_
                               _hd3788639088_
                               _tl3788539090_
                               _e3789039093_
                               _hd3788939096_
                               _tl3788839098_
                               _e3789339101_
                               _hd3789239104_
                               _tl3789139106_
                               ___splice4508545086_
                               _target3789439109_
                               _tl3789639111_)
                        (letrec ((_loop3789739114_
                                  (lambda (_hd3789539117_ _args3790139119_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd3789539117_))
                                        (let ((_e3789839122_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd3789539117_))))
                                          (let ((_lp-tl3790039127_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3789839122_)))
                                                (_lp-hd3789939125_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3789839122_))))
                                            (let ((__tmp46364
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd3789939125_
                                                           _args3790139119_))))
                                              (declare (not safe))
                                              (_loop3789739114_
                                               _lp-tl3790039127_
                                               __tmp46364))))
                                        (let ((_args3790239130_
                                               (reverse _args3790139119_)))
                                          (let ((_L39133_ _args3790239130_)
                                                (_L39134_ _hd3789239104_)
                                                (_L39135_ _hd3788339080_)
                                                (_L39136_ _hd3787439056_)
                                                (_L39137_ _hd3786539032_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L39137_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L39136_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L39135_
                                                        _self37785_)))
                                                (___kont4508345084_
                                                 _L39133_
                                                 _L39134_
                                                 _L39135_
                                                 _L39136_
                                                 _L39137_)
                                                (___kont4510345104_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop3789739114_ _target3789439109_ '())))))
                     (___match4525845259_
                      (lambda (_e3785739005_
                               _hd3785639008_
                               _tl3785539010_
                               _e3786039013_
                               _hd3785939016_
                               _tl3785839018_
                               _e3786339021_
                               _hd3786239024_
                               _tl3786139026_
                               _e3786639029_
                               _hd3786539032_
                               _tl3786439034_
                               _e3786939037_
                               _hd3786839040_
                               _tl3786739042_
                               _e3787239045_
                               _hd3787139048_
                               _tl3787039050_
                               _e3787539053_
                               _hd3787439056_
                               _tl3787339058_
                               _e3787839061_
                               _hd3787739064_
                               _tl3787639066_
                               _e3788139069_
                               _hd3788039072_
                               _tl3787939074_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd3788039072_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl3787939074_))
                                (let ((_e3788439077_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl3787939074_))))
                                  (let ((_tl3788239082_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3788439077_)))
                                        (_hd3788339080_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3788439077_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl3788239082_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl3787639066_))
                                            (let ((_e3788739085_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl3787639066_))))
                                              (let ((_tl3788539090_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3788739085_)))
                                                    (_hd3788639088_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3788739085_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd3788639088_))
                                                    (let ((_e3789039093_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd3788639088_))))
                                                      (let ((_tl3788839098_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3789039093_)))
                    (_hd3788939096_
                     (let () (declare (not safe)) (##car _e3789039093_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd3788939096_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd3788939096_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl3788839098_))
                            (let ((_e3789339101_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl3788839098_))))
                              (let ((_tl3789139106_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3789339101_)))
                                    (_hd3789239104_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3789339101_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl3789139106_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl3788539090_))
                                        (let ((___splice4508545086_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl3788539090_
                                                  '0))))
                                          (let ((_tl3789639111_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4508545086_
                                                    '1)))
                                                (_target3789439109_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4508545086_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl3789639111_))
                                                (___match4530045301_
                                                 _e3785739005_
                                                 _hd3785639008_
                                                 _tl3785539010_
                                                 _e3786039013_
                                                 _hd3785939016_
                                                 _tl3785839018_
                                                 _e3786339021_
                                                 _hd3786239024_
                                                 _tl3786139026_
                                                 _e3786639029_
                                                 _hd3786539032_
                                                 _tl3786439034_
                                                 _e3786939037_
                                                 _hd3786839040_
                                                 _tl3786739042_
                                                 _e3787239045_
                                                 _hd3787139048_
                                                 _tl3787039050_
                                                 _e3787539053_
                                                 _hd3787439056_
                                                 _tl3787339058_
                                                 _e3787839061_
                                                 _hd3787739064_
                                                 _tl3787639066_
                                                 _e3788139069_
                                                 _hd3788039072_
                                                 _tl3787939074_
                                                 _e3788439077_
                                                 _hd3788339080_
                                                 _tl3788239082_
                                                 _e3788739085_
                                                 _hd3788639088_
                                                 _tl3788539090_
                                                 _e3789039093_
                                                 _hd3788939096_
                                                 _tl3788839098_
                                                 _e3789339101_
                                                 _hd3789239104_
                                                 _tl3789139106_
                                                 ___splice4508545086_
                                                 _target3789439109_
                                                 _tl3789639111_)
                                                (___kont4510345104_))))
                                        (___kont4510345104_))
                                    (___kont4510345104_))))
                            (___kont4510345104_))
                        (___kont4510345104_))
                    (___kont4510345104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4510345104_))))
                                            (___match4558245583_
                                             _e3785739005_
                                             _hd3785639008_
                                             _tl3785539010_
                                             _e3786039013_
                                             _hd3785939016_
                                             _tl3785839018_
                                             _e3786339021_
                                             _hd3786239024_
                                             _tl3786139026_
                                             _e3786639029_
                                             _hd3786539032_
                                             _tl3786439034_
                                             _e3786939037_
                                             _hd3786839040_
                                             _tl3786739042_
                                             _e3787239045_
                                             _hd3787139048_
                                             _tl3787039050_
                                             _e3787539053_
                                             _hd3787439056_
                                             _tl3787339058_
                                             _e3787839061_
                                             _hd3787739064_
                                             _tl3787639066_))
                                        (___match4558245583_
                                         _e3785739005_
                                         _hd3785639008_
                                         _tl3785539010_
                                         _e3786039013_
                                         _hd3785939016_
                                         _tl3785839018_
                                         _e3786339021_
                                         _hd3786239024_
                                         _tl3786139026_
                                         _e3786639029_
                                         _hd3786539032_
                                         _tl3786439034_
                                         _e3786939037_
                                         _hd3786839040_
                                         _tl3786739042_
                                         _e3787239045_
                                         _hd3787139048_
                                         _tl3787039050_
                                         _e3787539053_
                                         _hd3787439056_
                                         _tl3787339058_
                                         _e3787839061_
                                         _hd3787739064_
                                         _tl3787639066_))))
                                (___match4558245583_
                                 _e3785739005_
                                 _hd3785639008_
                                 _tl3785539010_
                                 _e3786039013_
                                 _hd3785939016_
                                 _tl3785839018_
                                 _e3786339021_
                                 _hd3786239024_
                                 _tl3786139026_
                                 _e3786639029_
                                 _hd3786539032_
                                 _tl3786439034_
                                 _e3786939037_
                                 _hd3786839040_
                                 _tl3786739042_
                                 _e3787239045_
                                 _hd3787139048_
                                 _tl3787039050_
                                 _e3787539053_
                                 _hd3787439056_
                                 _tl3787339058_
                                 _e3787839061_
                                 _hd3787739064_
                                 _tl3787639066_))
                            (___match4536845369_
                             _e3785739005_
                             _hd3785639008_
                             _tl3785539010_
                             _e3786039013_
                             _hd3785939016_
                             _tl3785839018_
                             _e3786339021_
                             _hd3786239024_
                             _tl3786139026_
                             _e3786639029_
                             _hd3786539032_
                             _tl3786439034_
                             _e3786939037_
                             _hd3786839040_
                             _tl3786739042_
                             _e3787239045_
                             _hd3787139048_
                             _tl3787039050_
                             _e3787539053_
                             _hd3787439056_
                             _tl3787339058_
                             _e3787839061_
                             _hd3787739064_
                             _tl3787639066_
                             _e3788139069_
                             _hd3788039072_
                             _tl3787939074_))))
                     (___match4519045191_
                      (lambda (_e3781339197_
                               _hd3781239200_
                               _tl3781139202_
                               _e3781639205_
                               _hd3781539208_
                               _tl3781439210_
                               _e3781939213_
                               _hd3781839216_
                               _tl3781739218_
                               _e3782239221_
                               _hd3782139224_
                               _tl3782039226_
                               _e3782539229_
                               _hd3782439232_
                               _tl3782339234_
                               _e3782839237_
                               _hd3782739240_
                               _tl3782639242_
                               _e3783139245_
                               _hd3783039248_
                               _tl3782939250_
                               _e3783439253_
                               _hd3783339256_
                               _tl3783239258_
                               _e3783739261_
                               _hd3783639264_
                               _tl3783539266_
                               _e3784039269_
                               _hd3783939272_
                               _tl3783839274_
                               ___splice4508145082_
                               _target3784139277_
                               _tl3784339279_)
                        (letrec ((_loop3784439282_
                                  (lambda (_hd3784239285_ _args3784839287_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd3784239285_))
                                        (let ((_e3784539290_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd3784239285_))))
                                          (let ((_lp-tl3784739295_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3784539290_)))
                                                (_lp-hd3784639293_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3784539290_))))
                                            (let ((__tmp46365
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd3784639293_
                                                           _args3784839287_))))
                                              (declare (not safe))
                                              (_loop3784439282_
                                               _lp-tl3784739295_
                                               __tmp46365))))
                                        (let ((_args3784939298_
                                               (reverse _args3784839287_)))
                                          (let ((_L39301_ _args3784939298_)
                                                (_L39302_ _hd3783939272_)
                                                (_L39303_ _hd3783039248_)
                                                (_L39304_ _hd3782139224_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L39304_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L39303_
                                                        _self37785_)))
                                                (___kont4507945080_
                                                 _L39301_
                                                 _L39302_
                                                 _L39303_
                                                 _L39304_)
                                                (___match4537845379_
                                                 _e3781339197_
                                                 _hd3781239200_
                                                 _tl3781139202_
                                                 _e3781639205_
                                                 _hd3781539208_
                                                 _tl3781439210_
                                                 _e3781939213_
                                                 _hd3781839216_
                                                 _tl3781739218_
                                                 _e3782239221_
                                                 _hd3782139224_
                                                 _tl3782039226_
                                                 _e3782539229_
                                                 _hd3782439232_
                                                 _tl3782339234_
                                                 _e3782839237_
                                                 _hd3782739240_
                                                 _tl3782639242_
                                                 _e3783139245_
                                                 _hd3783039248_
                                                 _tl3782939250_
                                                 _e3783439253_
                                                 _hd3783339256_
                                                 _tl3783239258_
                                                 _e3783739261_
                                                 _hd3783639264_
                                                 _tl3783539266_
                                                 _e3784039269_
                                                 _hd3783939272_
                                                 _tl3783839274_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop3784439282_ _target3784139277_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx4507745078_))
                    (let ((_e3781339197_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx4507745078_))))
                      (let ((_tl3781139202_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3781339197_)))
                            (_hd3781239200_
                             (let ()
                               (declare (not safe))
                               (##car _e3781339197_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl3781139202_))
                            (let ((_e3781639205_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl3781139202_))))
                              (let ((_tl3781439210_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3781639205_)))
                                    (_hd3781539208_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3781639205_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd3781539208_))
                                    (let ((_e3781939213_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd3781539208_))))
                                      (let ((_tl3781739218_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3781939213_)))
                                            (_hd3781839216_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3781939213_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _hd3781839216_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd3781839216_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl3781739218_))
                                                    (let ((_e3782239221_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl3781739218_))))
                                                      (let ((_tl3782039226_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3782239221_)))
                    (_hd3782139224_
                     (let () (declare (not safe)) (##car _e3782239221_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl3782039226_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl3781439210_))
                        (let ((_e3782539229_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl3781439210_))))
                          (let ((_tl3782339234_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3782539229_)))
                                (_hd3782439232_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3782539229_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd3782439232_))
                                (let ((_e3782839237_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd3782439232_))))
                                  (let ((_tl3782639242_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3782839237_)))
                                        (_hd3782739240_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3782839237_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd3782739240_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd3782739240_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl3782639242_))
                                                (let ((_e3783139245_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl3782639242_))))
                                                  (let ((_tl3782939250_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3783139245_)))
                                                        (_hd3783039248_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3783139245_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl3782939250_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl3782339234_))
                                                            (let ((_e3783439253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl3782339234_))))
                      (let ((_tl3783239258_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3783439253_)))
                            (_hd3783339256_
                             (let ()
                               (declare (not safe))
                               (##car _e3783439253_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd3783339256_))
                            (let ((_e3783739261_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd3783339256_))))
                              (let ((_tl3783539266_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3783739261_)))
                                    (_hd3783639264_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3783739261_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd3783639264_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#quote _hd3783639264_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl3783539266_))
                                            (let ((_e3784039269_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl3783539266_))))
                                              (let ((_tl3783839274_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3784039269_)))
                                                    (_hd3783939272_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3784039269_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl3783839274_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl3783239258_))
                                                        (let ((___splice4508145082_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl3783239258_ '0))))
                  (let ((_tl3784339279_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4508145082_ '1)))
                        (_target3784139277_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4508145082_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl3784339279_))
                        (___match4519045191_
                         _e3781339197_
                         _hd3781239200_
                         _tl3781139202_
                         _e3781639205_
                         _hd3781539208_
                         _tl3781439210_
                         _e3781939213_
                         _hd3781839216_
                         _tl3781739218_
                         _e3782239221_
                         _hd3782139224_
                         _tl3782039226_
                         _e3782539229_
                         _hd3782439232_
                         _tl3782339234_
                         _e3782839237_
                         _hd3782739240_
                         _tl3782639242_
                         _e3783139245_
                         _hd3783039248_
                         _tl3782939250_
                         _e3783439253_
                         _hd3783339256_
                         _tl3783239258_
                         _e3783739261_
                         _hd3783639264_
                         _tl3783539266_
                         _e3784039269_
                         _hd3783939272_
                         _tl3783839274_
                         ___splice4508145082_
                         _target3784139277_
                         _tl3784339279_)
                        (___match4537845379_
                         _e3781339197_
                         _hd3781239200_
                         _tl3781139202_
                         _e3781639205_
                         _hd3781539208_
                         _tl3781439210_
                         _e3781939213_
                         _hd3781839216_
                         _tl3781739218_
                         _e3782239221_
                         _hd3782139224_
                         _tl3782039226_
                         _e3782539229_
                         _hd3782439232_
                         _tl3782339234_
                         _e3782839237_
                         _hd3782739240_
                         _tl3782639242_
                         _e3783139245_
                         _hd3783039248_
                         _tl3782939250_
                         _e3783439253_
                         _hd3783339256_
                         _tl3783239258_
                         _e3783739261_
                         _hd3783639264_
                         _tl3783539266_
                         _e3784039269_
                         _hd3783939272_
                         _tl3783839274_))))
                (___match4537845379_
                 _e3781339197_
                 _hd3781239200_
                 _tl3781139202_
                 _e3781639205_
                 _hd3781539208_
                 _tl3781439210_
                 _e3781939213_
                 _hd3781839216_
                 _tl3781739218_
                 _e3782239221_
                 _hd3782139224_
                 _tl3782039226_
                 _e3782539229_
                 _hd3782439232_
                 _tl3782339234_
                 _e3782839237_
                 _hd3782739240_
                 _tl3782639242_
                 _e3783139245_
                 _hd3783039248_
                 _tl3782939250_
                 _e3783439253_
                 _hd3783339256_
                 _tl3783239258_
                 _e3783739261_
                 _hd3783639264_
                 _tl3783539266_
                 _e3784039269_
                 _hd3783939272_
                 _tl3783839274_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match4558245583_
                                                     _e3781339197_
                                                     _hd3781239200_
                                                     _tl3781139202_
                                                     _e3781639205_
                                                     _hd3781539208_
                                                     _tl3781439210_
                                                     _e3781939213_
                                                     _hd3781839216_
                                                     _tl3781739218_
                                                     _e3782239221_
                                                     _hd3782139224_
                                                     _tl3782039226_
                                                     _e3782539229_
                                                     _hd3782439232_
                                                     _tl3782339234_
                                                     _e3782839237_
                                                     _hd3782739240_
                                                     _tl3782639242_
                                                     _e3783139245_
                                                     _hd3783039248_
                                                     _tl3782939250_
                                                     _e3783439253_
                                                     _hd3783339256_
                                                     _tl3783239258_))))
                                            (___match4558245583_
                                             _e3781339197_
                                             _hd3781239200_
                                             _tl3781139202_
                                             _e3781639205_
                                             _hd3781539208_
                                             _tl3781439210_
                                             _e3781939213_
                                             _hd3781839216_
                                             _tl3781739218_
                                             _e3782239221_
                                             _hd3782139224_
                                             _tl3782039226_
                                             _e3782539229_
                                             _hd3782439232_
                                             _tl3782339234_
                                             _e3782839237_
                                             _hd3782739240_
                                             _tl3782639242_
                                             _e3783139245_
                                             _hd3783039248_
                                             _tl3782939250_
                                             _e3783439253_
                                             _hd3783339256_
                                             _tl3783239258_))
                                        (___match4525845259_
                                         _e3781339197_
                                         _hd3781239200_
                                         _tl3781139202_
                                         _e3781639205_
                                         _hd3781539208_
                                         _tl3781439210_
                                         _e3781939213_
                                         _hd3781839216_
                                         _tl3781739218_
                                         _e3782239221_
                                         _hd3782139224_
                                         _tl3782039226_
                                         _e3782539229_
                                         _hd3782439232_
                                         _tl3782339234_
                                         _e3782839237_
                                         _hd3782739240_
                                         _tl3782639242_
                                         _e3783139245_
                                         _hd3783039248_
                                         _tl3782939250_
                                         _e3783439253_
                                         _hd3783339256_
                                         _tl3783239258_
                                         _e3783739261_
                                         _hd3783639264_
                                         _tl3783539266_))
                                    (___match4558245583_
                                     _e3781339197_
                                     _hd3781239200_
                                     _tl3781139202_
                                     _e3781639205_
                                     _hd3781539208_
                                     _tl3781439210_
                                     _e3781939213_
                                     _hd3781839216_
                                     _tl3781739218_
                                     _e3782239221_
                                     _hd3782139224_
                                     _tl3782039226_
                                     _e3782539229_
                                     _hd3782439232_
                                     _tl3782339234_
                                     _e3782839237_
                                     _hd3782739240_
                                     _tl3782639242_
                                     _e3783139245_
                                     _hd3783039248_
                                     _tl3782939250_
                                     _e3783439253_
                                     _hd3783339256_
                                     _tl3783239258_))))
                            (___match4558245583_
                             _e3781339197_
                             _hd3781239200_
                             _tl3781139202_
                             _e3781639205_
                             _hd3781539208_
                             _tl3781439210_
                             _e3781939213_
                             _hd3781839216_
                             _tl3781739218_
                             _e3782239221_
                             _hd3782139224_
                             _tl3782039226_
                             _e3782539229_
                             _hd3782439232_
                             _tl3782339234_
                             _e3782839237_
                             _hd3782739240_
                             _tl3782639242_
                             _e3783139245_
                             _hd3783039248_
                             _tl3782939250_
                             _e3783439253_
                             _hd3783339256_
                             _tl3783239258_))))
                    (___match4552045521_
                     _e3781339197_
                     _hd3781239200_
                     _tl3781139202_
                     _e3781639205_
                     _hd3781539208_
                     _tl3781439210_
                     _e3781939213_
                     _hd3781839216_
                     _tl3781739218_
                     _e3782239221_
                     _hd3782139224_
                     _tl3782039226_
                     _e3782539229_
                     _hd3782439232_
                     _tl3782339234_
                     _e3782839237_
                     _hd3782739240_
                     _tl3782639242_
                     _e3783139245_
                     _hd3783039248_
                     _tl3782939250_))
                (___kont4510345104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4510345104_))
                                            (___kont4510345104_))
                                        (___kont4510345104_))))
                                (___kont4510345104_))))
                        (___kont4510345104_))
                    (___kont4510345104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4510345104_))
                                                (___kont4510345104_))
                                            (___kont4510345104_))))
                                    (___kont4510345104_))))
                            (___kont4510345104_))))
                    (___kont4510345104_))))))))))
