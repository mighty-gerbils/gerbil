(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1708418156)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl133697_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp134825 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl133697_ __tmp134825))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133697_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133697_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133697_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133697_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl133697_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx133680_ . _args133682_)
        (let ((__tmp134827
               (lambda ()
                 (declare (not safe))
                 (if (null? _args133682_)
                     (gxc#compile-e__0 _stx133680_)
                     (let ((_arg1133687_ (car _args133682_))
                           (_rest133689_ (cdr _args133682_)))
                       (if (null? _rest133689_)
                           (gxc#compile-e__1 _stx133680_ _arg1133687_)
                           (let ((_arg2133692_ (car _rest133689_))
                                 (_rest133694_ (cdr _rest133689_)))
                             (if (null? _rest133694_)
                                 (gxc#compile-e__2
                                  _stx133680_
                                  _arg1133687_
                                  _arg2133692_)
                                 (apply gxc#compile-e
                                        _stx133680_
                                        _arg1133687_
                                        _arg2133692_
                                        _rest133694_))))))))
              (__tmp134826 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp134827
           gxc#current-compile-methods
           __tmp134826))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl133677_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp134828 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl133677_ __tmp134828))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133677_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133677_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133677_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133677_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133677_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133677_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133677_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133677_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133677_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133677_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133677_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133677_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133677_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133677_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133677_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133677_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl133677_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx133660_ . _args133662_)
        (let ((__tmp134830
               (lambda ()
                 (declare (not safe))
                 (if (null? _args133662_)
                     (gxc#compile-e__0 _stx133660_)
                     (let ((_arg1133667_ (car _args133662_))
                           (_rest133669_ (cdr _args133662_)))
                       (if (null? _rest133669_)
                           (gxc#compile-e__1 _stx133660_ _arg1133667_)
                           (let ((_arg2133672_ (car _rest133669_))
                                 (_rest133674_ (cdr _rest133669_)))
                             (if (null? _rest133674_)
                                 (gxc#compile-e__2
                                  _stx133660_
                                  _arg1133667_
                                  _arg2133672_)
                                 (apply gxc#compile-e
                                        _stx133660_
                                        _arg1133667_
                                        _arg2133672_
                                        _rest133674_))))))))
              (__tmp134829 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp134830
           gxc#current-compile-methods
           __tmp134829))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl133657_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp134831 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl133657_ __tmp134831))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133657_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133657_ '%#call gxc#subst-object-refs-call%))
           _tbl133657_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx133640_ . _args133642_)
        (let ((__tmp134833
               (lambda ()
                 (declare (not safe))
                 (if (null? _args133642_)
                     (gxc#compile-e__0 _stx133640_)
                     (let ((_arg1133647_ (car _args133642_))
                           (_rest133649_ (cdr _args133642_)))
                       (if (null? _rest133649_)
                           (gxc#compile-e__1 _stx133640_ _arg1133647_)
                           (let ((_arg2133652_ (car _rest133649_))
                                 (_rest133654_ (cdr _rest133649_)))
                             (if (null? _rest133654_)
                                 (gxc#compile-e__2
                                  _stx133640_
                                  _arg1133647_
                                  _arg2133652_)
                                 (apply gxc#compile-e
                                        _stx133640_
                                        _arg1133647_
                                        _arg2133652_
                                        _rest133654_))))))))
              (__tmp134832 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp134833
           gxc#current-compile-methods
           __tmp134832))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx130310_)
        (letrec ((_generate-method-bind130312_
                  (lambda (_$t133634_ _id133635_ _$id133636_)
                    (let ((_$tmp133638_
                           (let ((__tmp134834 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp134834))))
                      (let ((__tmp134882
                             (let ()
                               (declare (not safe))
                               (cons _$id133636_ '())))
                            (__tmp134835
                             (let ((__tmp134836
                                    (let ((__tmp134837
                                           (let ((__tmp134880
                                                  (let ((__tmp134881
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp134881)))
                                                 (__tmp134838
                                                  (let ((__tmp134839
                                                         (let ((__tmp134840
                                                                (let ((__tmp134841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134842
                                      (let ((__tmp134843
                                             (let ((__tmp134863
                                                    (let ((__tmp134864
                                                           (let ((__tmp134879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp133638_ '())))
                         (__tmp134865
                          (let ((__tmp134866
                                 (let ((__tmp134867
                                        (let ((__tmp134877
                                               (let ((__tmp134878
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp134878)))
                                              (__tmp134868
                                               (let ((__tmp134875
                                                      (let ((__tmp134876
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t133634_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp134876)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134869
                                                      (let ((__tmp134873
                                                             (let ((__tmp134874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp134874)))
                    (__tmp134870
                     (let ((__tmp134871
                            (let ((__tmp134872
                                   (let ()
                                     (declare (not safe))
                                     (cons _id133635_ '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp134872))))
                       (declare (not safe))
                       (cons __tmp134871 '()))))
                (declare (not safe))
                (cons __tmp134873 __tmp134870))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp134875
                                                       __tmp134869))))
                                          (declare (not safe))
                                          (cons __tmp134877 __tmp134868))))
                                   (declare (not safe))
                                   (cons '%#call __tmp134867))))
                            (declare (not safe))
                            (cons __tmp134866 '()))))
                     (declare (not safe))
                     (cons __tmp134879 __tmp134865))))
              (declare (not safe))
              (cons __tmp134864 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134844
                                                    (let ((__tmp134845
                                                           (let ((__tmp134846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134861
                                 (let ((__tmp134862
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp133638_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp134862)))
                                (__tmp134847
                                 (let ((__tmp134859
                                        (let ((__tmp134860
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp133638_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp134860)))
                                       (__tmp134848
                                        (let ((__tmp134849
                                               (let ((__tmp134850
                                                      (let ((__tmp134857
                                                             (let ((__tmp134858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp134858)))
                    (__tmp134851
                     (let ((__tmp134855
                            (let ((__tmp134856
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp134856)))
                           (__tmp134852
                            (let ((__tmp134853
                                   (let ((__tmp134854
                                          (let ()
                                            (declare (not safe))
                                            (cons _id133635_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp134854))))
                              (declare (not safe))
                              (cons __tmp134853 '()))))
                       (declare (not safe))
                       (cons __tmp134855 __tmp134852))))
                (declare (not safe))
                (cons __tmp134857 __tmp134851))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp134850))))
                                          (declare (not safe))
                                          (cons __tmp134849 '()))))
                                   (declare (not safe))
                                   (cons __tmp134859 __tmp134848))))
                            (declare (not safe))
                            (cons __tmp134861 __tmp134847))))
                     (declare (not safe))
                     (cons '%#if __tmp134846))))
              (declare (not safe))
              (cons __tmp134845 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp134863
                                                     __tmp134844))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp134843))))
                                 (declare (not safe))
                                 (cons __tmp134842 '()))))
                          (declare (not safe))
                          (cons '() __tmp134841))))
                   (declare (not safe))
                   (cons '%#lambda __tmp134840))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134839 '()))))
                                             (declare (not safe))
                                             (cons __tmp134880 __tmp134838))))
                                      (declare (not safe))
                                      (cons '%#call __tmp134837))))
                               (declare (not safe))
                               (cons __tmp134836 '()))))
                        (declare (not safe))
                        (cons __tmp134882 __tmp134835)))))
                 (_generate-slot-bind130313_
                  (lambda (_$t133628_ _id133629_ _$id133630_)
                    (let ((_$tmp133632_
                           (let ((__tmp134883 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp134883))))
                      (let ((__tmp134920
                             (let ()
                               (declare (not safe))
                               (cons _$id133630_ '())))
                            (__tmp134884
                             (let ((__tmp134885
                                    (let ((__tmp134886
                                           (let ((__tmp134906
                                                  (let ((__tmp134907
                                                         (let ((__tmp134919
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp133632_ '())))
                       (__tmp134908
                        (let ((__tmp134909
                               (let ((__tmp134910
                                      (let ((__tmp134917
                                             (let ((__tmp134918
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp134918)))
                                            (__tmp134911
                                             (let ((__tmp134915
                                                    (let ((__tmp134916
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t133628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp134916)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134912
                                                    (let ((__tmp134913
                                                           (let ((__tmp134914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id133629_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp134914))))
              (declare (not safe))
              (cons __tmp134913 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp134915
                                                     __tmp134912))))
                                        (declare (not safe))
                                        (cons __tmp134917 __tmp134911))))
                                 (declare (not safe))
                                 (cons '%#call __tmp134910))))
                          (declare (not safe))
                          (cons __tmp134909 '()))))
                   (declare (not safe))
                   (cons __tmp134919 __tmp134908))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134907 '())))
                                                 (__tmp134887
                                                  (let ((__tmp134888
                                                         (let ((__tmp134889
                                                                (let ((__tmp134904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134905
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp133632_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp134905)))
                              (__tmp134890
                               (let ((__tmp134902
                                      (let ((__tmp134903
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp133632_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp134903)))
                                     (__tmp134891
                                      (let ((__tmp134892
                                             (let ((__tmp134893
                                                    (let ((__tmp134900
                                                           (let ((__tmp134901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp134901)))
                  (__tmp134894
                   (let ((__tmp134898
                          (let ((__tmp134899
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp134899)))
                         (__tmp134895
                          (let ((__tmp134896
                                 (let ((__tmp134897
                                        (let ()
                                          (declare (not safe))
                                          (cons _id133629_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp134897))))
                            (declare (not safe))
                            (cons __tmp134896 '()))))
                     (declare (not safe))
                     (cons __tmp134898 __tmp134895))))
              (declare (not safe))
              (cons __tmp134900 __tmp134894))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp134893))))
                                        (declare (not safe))
                                        (cons __tmp134892 '()))))
                                 (declare (not safe))
                                 (cons __tmp134902 __tmp134891))))
                          (declare (not safe))
                          (cons __tmp134904 __tmp134890))))
                   (declare (not safe))
                   (cons '%#if __tmp134889))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134888 '()))))
                                             (declare (not safe))
                                             (cons __tmp134906 __tmp134887))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp134886))))
                               (declare (not safe))
                               (cons __tmp134885 '()))))
                        (declare (not safe))
                        (cons __tmp134920 __tmp134884)))))
                 (_generate-class-check-bind130314_
                  (lambda (_$t133624_ _class-type133625_ _$class-type133626_)
                    (let ((__tmp134932
                           (let ()
                             (declare (not safe))
                             (cons _$class-type133626_ '())))
                          (__tmp134921
                           (let ((__tmp134922
                                  (let ((__tmp134923
                                         (let ((__tmp134930
                                                (let ((__tmp134931
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp134931)))
                                               (__tmp134924
                                                (let ((__tmp134928
                                                       (let ((__tmp134929
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t133624_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp134929)))
              (__tmp134925
               (let ((__tmp134926
                      (let ((__tmp134927
                             (let ()
                               (declare (not safe))
                               (cons _class-type133625_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp134927))))
                 (declare (not safe))
                 (cons __tmp134926 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134928
                                                        __tmp134925))))
                                           (declare (not safe))
                                           (cons __tmp134930 __tmp134924))))
                                    (declare (not safe))
                                    (cons '%#call __tmp134923))))
                             (declare (not safe))
                             (cons __tmp134922 '()))))
                      (declare (not safe))
                      (cons __tmp134932 __tmp134921))))
                 (_generate-struct-check-bind130315_
                  (lambda (_$t133620_ _class-type133621_ _$class-type133622_)
                    (let ((__tmp134944
                           (let ()
                             (declare (not safe))
                             (cons _$class-type133622_ '())))
                          (__tmp134933
                           (let ((__tmp134934
                                  (let ((__tmp134935
                                         (let ((__tmp134942
                                                (let ((__tmp134943
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp134943)))
                                               (__tmp134936
                                                (let ((__tmp134940
                                                       (let ((__tmp134941
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t133620_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp134941)))
              (__tmp134937
               (let ((__tmp134938
                      (let ((__tmp134939
                             (let ()
                               (declare (not safe))
                               (cons _class-type133621_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp134939))))
                 (declare (not safe))
                 (cons __tmp134938 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134940
                                                        __tmp134937))))
                                           (declare (not safe))
                                           (cons __tmp134942 __tmp134936))))
                                    (declare (not safe))
                                    (cons '%#call __tmp134935))))
                             (declare (not safe))
                             (cons __tmp134934 '()))))
                      (declare (not safe))
                      (cons __tmp134944 __tmp134933))))
                 (_generate-specializer-impl130316_
                  (lambda (_$t133569_
                           _methods-bind133570_
                           _slots-bind133571_
                           _class-check-bind133572_
                           _struct-check-bind133573_
                           _specializer-impl133574_
                           _lifted-specializer-id133575_
                           _unchecked-specializer-impl133576_)
                    (let ((__tmp134945
                           (let ((__tmp134946
                                  (let ((__tmp134972
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t133569_ '())))
                                        (__tmp134947
                                         (let ((__tmp134948
                                                (let ((__tmp134949
                                                       (let ((__tmp134969
                                                              (let ((__tmp134970
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134971
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind133573_
                                              _class-check-bind133572_))))
                               (declare (not safe))
                               (foldr1 cons __tmp134971 _slots-bind133571_))))
                        (declare (not safe))
                        (foldr1 cons __tmp134970 _methods-bind133570_)))
                     (__tmp134950
                      (let ((__tmp134951
                             (if (or _lifted-specializer-id133575_
                                     _unchecked-specializer-impl133576_)
                                 (let* ((_$specializer133581_
                                         (let ((__tmp134952
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp134952)))
                                        (__tmp134953
                                         (let ((__tmp134965
                                                (let ((__tmp134966
                                                       (let ((__tmp134968
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer133581_ '())))
                     (__tmp134967
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl133574_ '()))))
                 (declare (not safe))
                 (cons __tmp134968 __tmp134967))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134966 '())))
                                               (__tmp134954
                                                (let ((__tmp134955
                                                       (let _recur133583_ ((_rest133585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind133573_)))
                 (let* ((_rest133586133594_ _rest133585_)
                        (_else133588133602_
                         (lambda ()
                           (if _lifted-specializer-id133575_
                               (let ((__tmp134956
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id133575_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp134956))
                               _unchecked-specializer-impl133576_)))
                        (_K133590133608_
                         (lambda (_rest133605_ _checkq133606_)
                           (let ((__tmp134957
                                  (let ((__tmp134963
                                         (let ((__tmp134964
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq133606_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp134964)))
                                        (__tmp134958
                                         (let ((__tmp134962
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur133583_
                                                   _rest133605_)))
                                               (__tmp134959
                                                (let ((__tmp134960
                                                       (let ((__tmp134961
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer133581_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp134961))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134960 '()))))
                                           (declare (not safe))
                                           (cons __tmp134962 __tmp134959))))
                                    (declare (not safe))
                                    (cons __tmp134963 __tmp134958))))
                             (declare (not safe))
                             (cons '%#if __tmp134957)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest133586133594_))
                       (let ((_hd133591133611_
                              (let ()
                                (declare (not safe))
                                (##car _rest133586133594_)))
                             (_tl133592133613_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest133586133594_))))
                         (let* ((_checkq133616_ _hd133591133611_)
                                (_rest133618_ _tl133592133613_))
                           (declare (not safe))
                           (_K133590133608_ _rest133618_ _checkq133616_)))
                       (let () (declare (not safe)) (_else133588133602_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134955 '()))))
                                           (declare (not safe))
                                           (cons __tmp134965 __tmp134954))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp134953))
                                 _specializer-impl133574_)))
                        (declare (not safe))
                        (cons __tmp134951 '()))))
                 (declare (not safe))
                 (cons __tmp134969 __tmp134950))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp134949))))
                                           (declare (not safe))
                                           (cons __tmp134948 '()))))
                                    (declare (not safe))
                                    (cons __tmp134972 __tmp134947))))
                             (declare (not safe))
                             (cons '%#lambda __tmp134946))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134945 _stx130310_))))
                 (_generate-specializer-def130317_
                  (lambda (_id133563_
                           _specializer-id133564_
                           _specializer-impl133565_
                           _lifted-specializer-id133566_
                           _unchecked-specializer-impl133567_)
                    (let ((__tmp134973
                           (let ((__tmp134974
                                  (let ((__tmp134975
                                         (let ((__tmp134995
                                                (let ((__tmp134996
                                                       (let ((__tmp134997
                                                              (let ((__tmp134999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id133564_ '())))
                            (__tmp134998
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl133565_ '()))))
                        (declare (not safe))
                        (cons __tmp134999 __tmp134998))))
                 (declare (not safe))
                 (cons '%#define-values __tmp134997))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp134996
                                                   _stx130310_)))
                                               (__tmp134976
                                                (let ((__tmp134983
                                                       (let ((__tmp134984
                                                              (let ((__tmp134985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134986
                                    (let ((__tmp134993
                                           (let ((__tmp134994
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp134994)))
                                          (__tmp134987
                                           (let ((__tmp134991
                                                  (let ((__tmp134992
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id133563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp134992)))
                                                 (__tmp134988
                                                  (let ((__tmp134989
                                                         (let ((__tmp134990
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id133564_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp134990))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134989 '()))))
                                             (declare (not safe))
                                             (cons __tmp134991 __tmp134988))))
                                      (declare (not safe))
                                      (cons __tmp134993 __tmp134987))))
                               (declare (not safe))
                               (cons '%#call __tmp134986))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp134985 _stx130310_))))
                 (declare (not safe))
                 (cons __tmp134984 '())))
              (__tmp134977
               (if _lifted-specializer-id133566_
                   (let ((__tmp134978
                          (let ((__tmp134979
                                 (let ((__tmp134980
                                        (let ((__tmp134982
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id133566_
                                                       '())))
                                              (__tmp134981
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl133567_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp134982 __tmp134981))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp134980))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp134979 _stx130310_))))
                     (declare (not safe))
                     (cons __tmp134978 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp134983
                                                          __tmp134977))))
                                           (declare (not safe))
                                           (cons __tmp134995 __tmp134976))))
                                    (declare (not safe))
                                    (cons _stx130310_ __tmp134975))))
                             (declare (not safe))
                             (cons '%#begin __tmp134974))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134973 _stx130310_)))))
          (let* ((___stx133786133787_ _stx130310_)
                 (_g130320130340_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx133786133787_)))))
            (let ((___kont133788133789_
                   (lambda (_L130384_ _L130385_)
                     (let ((_method-calls130404_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs130405_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_class-type-check130406_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_struct-type-check130407_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_struct-type-assert130408_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty130409_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?130411_
                                 (lambda ()
                                   (if (let ((__tmp135004
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls130404_))))
                                         (declare (not safe))
                                         (fxzero? __tmp135004))
                                       (if (let ((__tmp135003
                                                  (let ()
                                                    (declare (not safe))
                                                    (hash-length
                                                     _slot-refs130405_))))
                                             (declare (not safe))
                                             (fxzero? __tmp135003))
                                           (if (let ((__tmp135002
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-length
                                                         _class-type-check130406_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp135002))
                                               (if (let ((__tmp135001
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (hash-length
                                                             _struct-type-check130407_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp135001))
                                                   (let ((__tmp135000
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (hash-length
                                                             _struct-type-assert130408_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp135000))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?130412_
                                 (lambda ()
                                   (let ((_$e133556_
                                          (let ((__tmp135005
                                                 (let ((__tmp135006
                                                        (let ()
                                                          (declare (not safe))
                                                          (hash-length
                                                           _struct-type-check130407_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp135006))))
                                            (declare (not safe))
                                            (not __tmp135005))))
                                     (if _$e133556_
                                         _$e133556_
                                         (let ((__tmp135007
                                                (let ((__tmp135008
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-length
                                                          _struct-type-assert130408_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp135008))))
                                           (declare (not safe))
                                           (not __tmp135007))))))
                                (_lift-unchecked-specializer?130413_
                                 (lambda ()
                                   (if (let ((__tmp135011
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls130404_))))
                                         (declare (not safe))
                                         (fxzero? __tmp135011))
                                       (if (let ((__tmp135010
                                                  (let ()
                                                    (declare (not safe))
                                                    (hash-length
                                                     _slot-refs130405_))))
                                             (declare (not safe))
                                             (fxzero? __tmp135010))
                                           (let ((__tmp135009
                                                  (let ()
                                                    (declare (not safe))
                                                    (hash-length
                                                     _class-type-check130406_))))
                                             (declare (not safe))
                                             (fxzero? __tmp135009))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L130384_))
                             (let* ((___stx133700133701_ _L130384_)
                                    (_g130926130944_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx133700133701_)))))
                               (let ((___kont133702133703_
                                      (lambda (_L130980_ _L130981_ _L130982_)
                                        (for-each
                                         (lambda (_g130997130999_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g130997130999_
                                              _L130982_
                                              _method-calls130404_
                                              _slot-refs130405_
                                              _class-type-check130406_
                                              _struct-type-check130407_
                                              _struct-type-assert130408_)))
                                         _L130980_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?130411_))
                                            _stx130310_
                                            (let* ((_specializer-id131008_
                                                    (let* ((_id131002_
                                                            (let ((__tmp135161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L130385_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp135161 '"::specialize")))
                   (_specializer-id131005_
                    (let ((__tmp135162
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx130310_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id131002_ __tmp135162))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id131005_))
              _specializer-id131005_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id131015_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?130413_))
                                                        (let* ((_id131010_
                                                                (let ((__tmp135163
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L130385_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp135163
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id131012_
                        (let ((__tmp135164
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx130310_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id131010_ __tmp135164))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id131012_))
                  _lifted-specializer-id131012_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t131017_
                                                    (let ((__tmp135165
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp135165)))
                                                   (_methods131019_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls130404_)))
                                                   (_$methods131023_
                                                    (map (lambda (_id131021_)
                                                           (let ((__tmp135166
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id131021_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135166)))
                 _methods131019_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135167_
                                                    (for-each
                                                     (lambda (_g131024131027_
                                                              _g131025131029_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls130404_
                                                          _g131024131027_
                                                          _g131025131029_)))
                                                     _methods131019_
                                                     _$methods131023_))
                                                   (_methods-bind131040_
                                                    (map (lambda (_g131032131035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g131033131037_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind130312_
                      _$t131017_
                      _g131032131035_
                      _g131033131037_)))
                 _methods131019_
                 _$methods131023_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots131042_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs130405_)))
                                                   (_$slots131046_
                                                    (map (lambda (_id131044_)
                                                           (let ((__tmp135168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id131044_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135168)))
                 _slots131042_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135169_
                                                    (for-each
                                                     (lambda (_g131047131050_
                                                              _g131048131052_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs130405_
                                                          _g131047131050_
                                                          _g131048131052_)))
                                                     _slots131042_
                                                     _$slots131046_))
                                                   (_slots-bind131063_
                                                    (map (lambda (_g131055131058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g131056131060_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind130313_
                      _$t131017_
                      _g131055131058_
                      _g131056131060_)))
                 _slots131042_
                 _$slots131046_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check131065_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check130406_)))
                                                   (_$class-check131068_
                                                    (map (lambda (_g135170_)
                                                           (let ((__tmp135171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp135171)))
                 _class-check131065_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135172_
                                                    (for-each
                                                     (lambda (_g131069131072_
                                                              _g131070131074_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _class-type-check130406_
                                                          _g131069131072_
                                                          _g131070131074_)))
                                                     _class-check131065_
                                                     _$class-check131068_))
                                                   (_class-check-bind131085_
                                                    (map (lambda (_g131077131080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g131078131082_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind130314_
                      _$t131017_
                      _g131077131080_
                      _g131078131082_)))
                 _class-check131065_
                 _$class-check131068_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all131087_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check130407_
                                                       _struct-type-assert130408_)))
                                                   (_struct-check131089_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all131087_)))
                                                   (_$struct-check131092_
                                                    (map (lambda (_g135173_)
                                                           (let ((__tmp135174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp135174)))
                 _struct-check131089_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135175_
                                                    (for-each
                                                     (lambda (_g131093131096_
                                                              _g131094131098_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _struct-check-all131087_
                                                          _g131093131096_
                                                          _g131094131098_)))
                                                     _struct-check131089_
                                                     _$struct-check131092_))
                                                   (_struct-check-bind131109_
                                                    (map (lambda (_g131101131104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g131102131106_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind130315_
                      _$t131017_
                      _g131101131104_
                      _g131102131106_)))
                 _struct-check131089_
                 _$struct-check131092_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl131120_
                                                    (lambda (_struct-type-check1131111_
                                                             _struct-type-check2131112_)
                                                      (let* ((_specializer-body131118_
                                                              (map (lambda (_g131113131115_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g131113131115_
                                _L130982_
                                _$t131017_
                                _method-calls130404_
                                _slot-refs130405_
                                _class-type-check130406_
                                _struct-type-check1131111_
                                _struct-type-check2131112_)))
                           _L130980_))
                     (__tmp135176
                      (let ((__tmp135177
                             (let ((__tmp135178
                                    (let ()
                                      (declare (not safe))
                                      (cons _L130982_ _L130981_))))
                               (declare (not safe))
                               (cons __tmp135178 _specializer-body131118_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp135177))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp135176 _stx130310_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl131122_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl131120_
                                                       _struct-check-all131087_
                                                       _empty130409_)))
                                                   (_unchecked-specializer-impl131124_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?130412_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl131120_
                                                           _empty130409_
                                                           _struct-check-all131087_))
                                                        '#f))
                                                   (_specializer-impl131126_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl130316_
                                                       _$t131017_
                                                       _methods-bind131040_
                                                       _slots-bind131063_
                                                       _class-check-bind131085_
                                                       _struct-check-bind131109_
                                                       _specializer-impl131122_
                                                       _lifted-specializer-id131015_
                                                       _unchecked-specializer-impl131124_))))
                                              (let ((__tmp135180
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L130385_)))
                                                    (__tmp135179
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id131008_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp135180
                                                 '" => "
                                                 __tmp135179))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def130317_
                                                 _L130385_
                                                 _specializer-id131008_
                                                 _specializer-impl131126_
                                                 _lifted-specializer-id131015_
                                                 _unchecked-specializer-impl131124_))))))
                                     (___kont133704133705_
                                      (lambda () _stx130310_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx133700133701_))
                                     (let ((_e130933130956_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx133700133701_))))
                                       (let ((_tl130931130961_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e130933130956_)))
                                             (_hd130932130959_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e130933130956_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl130931130961_))
                                             (let ((_e130936130964_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl130931130961_))))
                                               (let ((_tl130934130969_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e130936130964_)))
                                                     (_hd130935130967_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e130936130964_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd130935130967_))
                                                     (let ((_e130939130972_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd130935130967_))))
                                                       (let ((_tl130937130977_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e130939130972_)))
                     (_hd130938130975_
                      (let () (declare (not safe)) (##car _e130939130972_))))
                 (___kont133702133703_
                  _tl130934130969_
                  _tl130937130977_
                  _hd130938130975_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont133704133705_))))
                                             (___kont133704133705_))))
                                     (___kont133704133705_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L130384_))
                                 (let* ((_g131132131151_
                                         (lambda (_g131133131148_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g131133131148_))))
                                        (_g131131131502_
                                         (lambda (_g131133131154_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g131133131154_))
                                               (let ((_e131137131156_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g131133131154_))))
                                                 (let ((_hd131136131159_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e131137131156_)))
                                                       (_tl131135131161_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e131137131156_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl131135131161_))
                                                       (let ((_g135137_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl131135131161_ '0))))
                 (begin
                   (let ((_g135138_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g135137_)
                                (##vector-length _g135137_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g135138_ 2)))
                         (error "Context expects 2 values" _g135138_)))
                   (let ((_target131138131164_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135137_ 0)))
                         (_tl131140131166_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135137_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl131140131166_))
                         (letrec ((_loop131141131169_
                                   (lambda (_hd131139131172_
                                            _clause131145131174_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd131139131172_))
                                         (let ((_e131142131177_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd131139131172_))))
                                           (let ((_lp-hd131143131180_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131142131177_)))
                                                 (_lp-tl131144131182_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131142131177_))))
                                             (let ((__tmp135160
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd131143131180_
                                                            _clause131145131174_))))
                                               (declare (not safe))
                                               (_loop131141131169_
                                                _lp-tl131144131182_
                                                __tmp135160))))
                                         (let ((_clause131146131185_
                                                (reverse _clause131145131174_)))
                                           ((lambda (_L131188_)
                                              (for-each
                                               (lambda (_clause131201_)
                                                 (let* ((___stx133726133727_
                                                         _clause131201_)
                                                        (_g131204131219_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx133726133727_)))))
                                                   (let ((___kont133728133729_
                                                          (lambda (_L131247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L131248_
                           _L131249_)
                    (for-each
                     (lambda (_g131264131266_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g131264131266_
                          _L131249_
                          _method-calls130404_
                          _slot-refs130405_
                          _class-type-check130406_
                          _struct-type-check130407_
                          _struct-type-assert130408_)))
                     _L131247_)))
                 (___kont133730133731_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx133726133727_))
                                                         (let ((_e131211131231_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx133726133727_))))
                   (let ((_tl131209131236_
                          (let ()
                            (declare (not safe))
                            (##cdr _e131211131231_)))
                         (_hd131210131234_
                          (let ()
                            (declare (not safe))
                            (##car _e131211131231_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd131210131234_))
                         (let ((_e131214131239_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd131210131234_))))
                           (let ((_tl131212131244_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e131214131239_)))
                                 (_hd131213131242_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e131214131239_))))
                             (___kont133728133729_
                              _tl131209131236_
                              _tl131212131244_
                              _hd131213131242_)))
                         (___kont133730133731_))))
                 (___kont133730133731_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp135139
                                                      (lambda (_g131271131274_
                                                               _g131272131276_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g131271131274_
                                                                _g131272131276_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp135139
                                                         '()
                                                         _L131188_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?130411_))
                                                  _stx130310_
                                                  (let* ((_specializer-id131285_
                                                          (let* ((_id131279_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135140
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L130385_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp135140 '"::specialize")))
                         (_specializer-id131282_
                          (let ((__tmp135141
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx130310_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id131279_ __tmp135141))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id131282_))
                    _specializer-id131282_))
                 (_lifted-specializer-id131292_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?130413_))
                      (let* ((_id131287_
                              (let ((__tmp135142
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L130385_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp135142
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id131289_
                              (let ((__tmp135143
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx130310_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id131287_
                                 __tmp135143))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id131289_))
                        _lifted-specializer-id131289_)
                      '#f))
                 (_$t131294_
                  (let ((__tmp135144 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135144)))
                 (_methods131296_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls130404_)))
                 (_$methods131300_
                  (map (lambda (_id131298_)
                         (let ((__tmp135145 (gensym _id131298_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135145)))
                       _methods131296_))
                 (_g135146_
                  (for-each
                   (lambda (_g131301131304_ _g131302131306_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls130404_
                        _g131301131304_
                        _g131302131306_)))
                   _methods131296_
                   _$methods131300_))
                 (_methods-bind131317_
                  (map (lambda (_g131309131312_ _g131310131314_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind130312_
                            _$t131294_
                            _g131309131312_
                            _g131310131314_)))
                       _methods131296_
                       _$methods131300_))
                 (_slots131319_
                  (let () (declare (not safe)) (hash-keys _slot-refs130405_)))
                 (_$slots131323_
                  (map (lambda (_id131321_)
                         (let ((__tmp135147 (gensym _id131321_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135147)))
                       _slots131319_))
                 (_g135148_
                  (for-each
                   (lambda (_g131324131327_ _g131325131329_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs130405_
                        _g131324131327_
                        _g131325131329_)))
                   _slots131319_
                   _$slots131323_))
                 (_slots-bind131340_
                  (map (lambda (_g131332131335_ _g131333131337_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind130313_
                            _$t131294_
                            _g131332131335_
                            _g131333131337_)))
                       _slots131319_
                       _$slots131323_))
                 (_class-check131342_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check130406_)))
                 (_$class-check131345_
                  (map (lambda (_g135149_)
                         (let ((__tmp135150 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp135150)))
                       _class-check131342_))
                 (_g135151_
                  (for-each
                   (lambda (_g131346131349_ _g131347131351_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _class-type-check130406_
                        _g131346131349_
                        _g131347131351_)))
                   _class-check131342_
                   _$class-check131345_))
                 (_class-check-bind131362_
                  (map (lambda (_g131354131357_ _g131355131359_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind130314_
                            _$t131294_
                            _g131354131357_
                            _g131355131359_)))
                       _class-check131342_
                       _$class-check131345_))
                 (_struct-check-all131364_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check130407_
                     _struct-type-assert130408_)))
                 (_struct-check131366_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all131364_)))
                 (_$struct-check131369_
                  (map (lambda (_g135152_)
                         (let ((__tmp135153 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp135153)))
                       _struct-check131366_))
                 (_g135154_
                  (for-each
                   (lambda (_g131370131373_ _g131371131375_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _struct-check-all131364_
                        _g131370131373_
                        _g131371131375_)))
                   _struct-check131366_
                   _$struct-check131369_))
                 (_struct-check-bind131386_
                  (map (lambda (_g131378131381_ _g131379131383_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind130315_
                            _$t131294_
                            _g131378131381_
                            _g131379131383_)))
                       _struct-check131366_
                       _$struct-check131369_))
                 (_make-specializer-impl131493_
                  (lambda (_struct-type-check1131388_
                           _struct-type-check2131389_)
                    (let* ((_specializer-clauses131491_
                            (map (lambda (_clause131391_)
                                   (let* ((___stx133746133747_ _clause131391_)
                                          (_g131394131409_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx133746133747_)))))
                                     (let ((___kont133748133749_
                                            (lambda (_L131437_
                                                     _L131438_
                                                     _L131439_)
                                              (let* ((_body131479_
                                                      (map (lambda (_g131474131476_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g131474131476_
                        _L131439_
                        _$t131294_
                        _method-calls130404_
                        _slot-refs130405_
                        _class-type-check130406_
                        _struct-type-check1131388_
                        _struct-type-check2131389_)))
                   _L131437_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp135155
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L131439_
                                                              _L131438_))))
                                                (declare (not safe))
                                                (cons __tmp135155
                                                      _body131479_))))
                                           (___kont133750133751_
                                            (lambda () _clause131391_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx133746133747_))
                                           (let ((_e131401131421_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx133746133747_))))
                                             (let ((_tl131399131426_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e131401131421_)))
                                                   (_hd131400131424_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e131401131421_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd131400131424_))
                                                   (let ((_e131404131429_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd131400131424_))))
                                                     (let ((_tl131402131434_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e131404131429_)))
                                                           (_hd131403131432_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e131404131429_))))
                                                       (___kont133748133749_
                                                        _tl131399131426_
                                                        _tl131402131434_
                                                        _hd131403131432_)))
                                                   (___kont133750133751_))))
                                           (___kont133750133751_)))))
                                 (let ((__tmp135156
                                        (lambda (_g131483131486_
                                                 _g131484131488_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g131483131486_
                                                  _g131484131488_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135156 '() _L131188_))))
                           (__tmp135157
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses131491_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp135157 _stx130310_))))
                 (_specializer-impl131495_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl131493_
                     _struct-check-all131364_
                     _empty130409_)))
                 (_unchecked-specializer-impl131497_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?130412_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl131493_
                         _empty130409_
                         _struct-check-all131364_))
                      '#f))
                 (_specializer-impl131499_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl130316_
                     _$t131294_
                     _methods-bind131317_
                     _slots-bind131340_
                     _class-check-bind131362_
                     _struct-check-bind131386_
                     _specializer-impl131495_
                     _lifted-specializer-id131292_
                     _unchecked-specializer-impl131497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp135159
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L130385_)))
                                                          (__tmp135158
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id131285_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp135159
                                                       '" => "
                                                       __tmp135158))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def130317_
                                                       _L130385_
                                                       _specializer-id131285_
                                                       _specializer-impl131499_
                                                       _lifted-specializer-id131292_
                                                       _unchecked-specializer-impl131497_)))))
                                            _clause131146131185_))))))
                           (let ()
                             (declare (not safe))
                             (_loop131141131169_ _target131138131164_ '())))
                         (let ()
                           (declare (not safe))
                           (_g131132131151_ _g131133131154_))))))
               (let ()
                 (declare (not safe))
                 (_g131132131151_ _g131133131154_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g131132131151_
                                                  _g131133131154_))))))
                                   (declare (not safe))
                                   (_g131131131502_ _L130384_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L130384_))
                                     (let* ((_g131505131535_
                                             (lambda (_g131506131532_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g131506131532_))))
                                            (_g131504132223_
                                             (lambda (_g131506131538_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g131506131538_))
                                                   (let ((_e131512131540_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g131506131538_))))
                                                     (let ((_hd131511131543_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e131512131540_)))
                                                           (_tl131510131545_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e131512131540_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl131510131545_))
                                                           (let ((_e131515131548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl131510131545_))))
                     (let ((_hd131514131551_
                            (let ()
                              (declare (not safe))
                              (##car _e131515131548_)))
                           (_tl131513131553_
                            (let ()
                              (declare (not safe))
                              (##cdr _e131515131548_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd131514131551_))
                           (let ((_e131518131556_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd131514131551_))))
                             (let ((_hd131517131559_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e131518131556_)))
                                   (_tl131516131561_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e131518131556_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd131517131559_))
                                   (let ((_e131521131564_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd131517131559_))))
                                     (let ((_hd131520131567_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e131521131564_)))
                                           (_tl131519131569_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e131521131564_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd131520131567_))
                                           (let ((_e131524131572_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd131520131567_))))
                                             (let ((_hd131523131575_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e131524131572_)))
                                                   (_tl131522131577_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e131524131572_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl131522131577_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl131519131569_))
                                                       (let ((_e131527131580_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl131519131569_))))
                 (let ((_hd131526131583_
                        (let () (declare (not safe)) (##car _e131527131580_)))
                       (_tl131525131585_
                        (let () (declare (not safe)) (##cdr _e131527131580_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl131525131585_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl131516131561_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl131513131553_))
                               (let ((_e131530131588_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl131513131553_))))
                                 (let ((_hd131529131591_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e131530131588_)))
                                       (_tl131528131593_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e131530131588_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl131528131593_))
                                       ((lambda (_L131596_ _L131597_ _L131598_)
                                          (let* ((_g131621131639_
                                                  (lambda (_g131622131636_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g131622131636_))))
                                                 (_g131620131690_
                                                  (lambda (_g131622131642_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g131622131642_))
                                                        (let ((_e131628131644_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g131622131642_))))
                  (let ((_hd131627131647_
                         (let () (declare (not safe)) (##car _e131628131644_)))
                        (_tl131626131649_
                         (let ()
                           (declare (not safe))
                           (##cdr _e131628131644_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl131626131649_))
                        (let ((_e131631131652_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl131626131649_))))
                          (let ((_hd131630131655_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e131631131652_)))
                                (_tl131629131657_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e131631131652_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd131630131655_))
                                (let ((_e131634131660_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd131630131655_))))
                                  (let ((_hd131633131663_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131634131660_)))
                                        (_tl131632131665_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131634131660_))))
                                    ((lambda (_L131668_ _L131669_ _L131670_)
                                       (for-each
                                        (lambda (_g131685131687_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g131685131687_
                                             _L131670_
                                             _method-calls130404_
                                             _slot-refs130405_
                                             _class-type-check130406_
                                             _struct-type-check130407_
                                             _struct-type-assert130408_)))
                                        _L131668_))
                                     _tl131629131657_
                                     _tl131632131665_
                                     _hd131633131663_)))
                                (let ()
                                  (declare (not safe))
                                  (_g131621131639_ _g131622131642_)))))
                        (let ()
                          (declare (not safe))
                          (_g131621131639_ _g131622131642_)))))
                (let ()
                  (declare (not safe))
                  (_g131621131639_ _g131622131642_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g131620131690_ _L131597_))
                                          (let* ((_g131693131712_
                                                  (lambda (_g131694131709_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g131694131709_))))
                                                 (_g131692131831_
                                                  (lambda (_g131694131715_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g131694131715_))
                                                        (let ((_e131698131717_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g131694131715_))))
                  (let ((_hd131697131720_
                         (let () (declare (not safe)) (##car _e131698131717_)))
                        (_tl131696131722_
                         (let ()
                           (declare (not safe))
                           (##cdr _e131698131717_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl131696131722_))
                        (let ((_g135100_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl131696131722_
                                  '0))))
                          (begin
                            (let ((_g135101_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g135100_)
                                         (##vector-length _g135100_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g135101_ 2)))
                                  (error "Context expects 2 values"
                                         _g135101_)))
                            (let ((_target131699131725_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135100_ 0)))
                                  (_tl131701131727_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135100_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl131701131727_))
                                  (letrec ((_loop131702131730_
                                            (lambda (_hd131700131733_
                                                     _clause131706131735_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd131700131733_))
                                                  (let ((_e131703131738_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd131700131733_))))
                                                    (let ((_lp-hd131704131741_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e131703131738_)))
                                                          (_lp-tl131705131743_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e131703131738_))))
                                                      (let ((__tmp135103
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd131704131741_ _clause131706131735_))))
                (declare (not safe))
                (_loop131702131730_ _lp-tl131705131743_ __tmp135103))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause131707131746_
                                                         (reverse _clause131706131735_)))
                                                    ((lambda (_L131749_)
                                                       (for-each
                                                        (lambda (_clause131762_)
                                                          (let* ((_g131764131779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g131765131776_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g131765131776_))))
                         (_g131763131821_
                          (lambda (_g131765131782_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g131765131782_))
                                (let ((_e131771131784_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g131765131782_))))
                                  (let ((_hd131770131787_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131771131784_)))
                                        (_tl131769131789_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131771131784_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd131770131787_))
                                        (let ((_e131774131792_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd131770131787_))))
                                          (let ((_hd131773131795_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e131774131792_)))
                                                (_tl131772131797_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e131774131792_))))
                                            ((lambda (_L131800_
                                                      _L131801_
                                                      _L131802_)
                                               (for-each
                                                (lambda (_g131816131818_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g131816131818_
                                                     _L131802_
                                                     _method-calls130404_
                                                     _slot-refs130405_
                                                     _class-type-check130406_
                                                     _struct-type-check130407_
                                                     _struct-type-assert130408_)))
                                                _L131800_))
                                             _tl131769131789_
                                             _tl131772131797_
                                             _hd131773131795_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g131764131779_ _g131765131782_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g131764131779_ _g131765131782_))))))
                    (declare (not safe))
                    (_g131763131821_ _clause131762_)))
                (let ((__tmp135102
                       (lambda (_g131823131826_ _g131824131828_)
                         (let ()
                           (declare (not safe))
                           (cons _g131823131826_ _g131824131828_)))))
                  (declare (not safe))
                  (foldr1 __tmp135102 '() _L131749_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause131707131746_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop131702131730_
                                       _target131699131725_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g131693131712_ _g131694131715_))))))
                        (let ()
                          (declare (not safe))
                          (_g131693131712_ _g131694131715_)))))
                (let ()
                  (declare (not safe))
                  (_g131693131712_ _g131694131715_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g131692131831_ _L131596_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?130411_))
                                              _stx130310_
                                              (let* ((_specializer-id131840_
                                                      (let* ((_id131834_
                                                              (let ((__tmp135104
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L130385_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp135104 '"::specialize")))
                     (_specializer-id131837_
                      (let ((__tmp135105
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx130310_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id131834_ __tmp135105))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id131837_))
                _specializer-id131837_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id131847_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?130413_))
                                                          (let* ((_id131842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135106
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L130385_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp135106
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id131844_
                          (let ((__tmp135107
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx130310_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id131842_ __tmp135107))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id131844_))
                    _lifted-specializer-id131844_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t131849_
                                                      (let ((__tmp135108
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp135108)))
                                                     (_methods131851_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls130404_)))
                                                     (_$methods131855_
                                                      (map (lambda (_id131853_)
                                                             (let ((__tmp135109
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id131853_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135109)))
                   _methods131851_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135110_
                                                      (for-each
                                                       (lambda (_g131856131859_
                                                                _g131857131861_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls130404_
                                                            _g131856131859_
                                                            _g131857131861_)))
                                                       _methods131851_
                                                       _$methods131855_))
                                                     (_methods-bind131872_
                                                      (map (lambda (_g131864131867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g131865131869_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind130312_
                        _$t131849_
                        _g131864131867_
                        _g131865131869_)))
                   _methods131851_
                   _$methods131855_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots131874_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs130405_)))
                                                     (_$slots131878_
                                                      (map (lambda (_id131876_)
                                                             (let ((__tmp135111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id131876_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135111)))
                   _slots131874_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135112_
                                                      (for-each
                                                       (lambda (_g131879131882_
                                                                _g131880131884_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs130405_
                                                            _g131879131882_
                                                            _g131880131884_)))
                                                       _slots131874_
                                                       _$slots131878_))
                                                     (_slots-bind131895_
                                                      (map (lambda (_g131887131890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g131888131892_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind130313_
                        _$t131849_
                        _g131887131890_
                        _g131888131892_)))
                   _slots131874_
                   _$slots131878_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check131897_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check130406_)))
                                                     (_$class-check131900_
                                                      (map (lambda (_g135113_)
                                                             (let ((__tmp135114
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp135114)))
                   _class-check131897_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135115_
                                                      (for-each
                                                       (lambda (_g131901131904_
                                                                _g131902131906_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _class-type-check130406_
                                                            _g131901131904_
                                                            _g131902131906_)))
                                                       _class-check131897_
                                                       _$class-check131900_))
                                                     (_class-check-bind131917_
                                                      (map (lambda (_g131909131912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g131910131914_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind130314_
                        _$t131849_
                        _g131909131912_
                        _g131910131914_)))
                   _class-check131897_
                   _$class-check131900_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all131919_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check130407_
                                                         _struct-type-assert130408_)))
                                                     (_struct-check131921_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all131919_)))
                                                     (_$struct-check131924_
                                                      (map (lambda (_g135116_)
                                                             (let ((__tmp135117
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp135117)))
                   _struct-check131921_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135118_
                                                      (for-each
                                                       (lambda (_g131925131928_
                                                                _g131926131930_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _struct-check-all131919_
                                                            _g131925131928_
                                                            _g131926131930_)))
                                                       _struct-check131921_
                                                       _$struct-check131924_))
                                                     (_struct-check-bind131941_
                                                      (map (lambda (_g131933131936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g131934131938_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind130315_
                        _$t131849_
                        _g131933131936_
                        _g131934131938_)))
                   _struct-check131921_
                   _$struct-check131924_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr132040_
                                                      (lambda (_struct-type-check1131943_
                                                               _struct-type-check2131944_)
                                                        (let* ((_g131946131964_
                                                                (lambda (_g131947131961_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g131947131961_))))
                       (_g131945132037_
                        (lambda (_g131947131967_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g131947131967_))
                              (let ((_e131953131969_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g131947131967_))))
                                (let ((_hd131952131972_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e131953131969_)))
                                      (_tl131951131974_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e131953131969_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl131951131974_))
                                      (let ((_e131956131977_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl131951131974_))))
                                        (let ((_hd131955131980_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e131956131977_)))
                                              (_tl131954131982_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e131956131977_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd131955131980_))
                                              (let ((_e131959131985_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd131955131980_))))
                                                (let ((_hd131958131988_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e131959131985_)))
                                                      (_tl131957131990_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e131959131985_))))
                                                  ((lambda (_L131993_
                                                            _L131994_
                                                            _L131995_)
                                                     (let* ((_body132035_
                                                             (map (lambda (_g132030132032_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g132030132032_
                               _L131995_
                               _$t131849_
                               _method-calls130404_
                               _slot-refs130405_
                               _class-type-check130406_
                               _struct-type-check1131943_
                               _struct-type-check2131944_)))
                          _L131993_))
                    (__tmp135119
                     (let ((__tmp135120
                            (let ((__tmp135121
                                   (let ()
                                     (declare (not safe))
                                     (cons _L131995_ _L131994_))))
                              (declare (not safe))
                              (cons __tmp135121 _body132035_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp135120))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp135119 _L131597_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl131954131982_
                                                   _tl131957131990_
                                                   _hd131958131988_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g131946131964_
                                                 _g131947131967_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g131946131964_ _g131947131967_)))))
                              (let ()
                                (declare (not safe))
                                (_g131946131964_ _g131947131967_))))))
                  (declare (not safe))
                  (_g131945132037_ _L131597_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr132201_
                                                      (lambda (_struct-type-check1132042_
                                                               _struct-type-check2132043_)
                                                        (let* ((_g132045132064_
                                                                (lambda (_g132046132061_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g132046132061_))))
                       (_g132044132198_
                        (lambda (_g132046132067_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g132046132067_))
                              (let ((_e132050132069_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g132046132067_))))
                                (let ((_hd132049132072_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e132050132069_)))
                                      (_tl132048132074_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e132050132069_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl132048132074_))
                                      (let ((_g135122_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl132048132074_
                                                '0))))
                                        (begin
                                          (let ((_g135123_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g135122_)
                                                       (##vector-length
                                                        _g135122_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g135123_ 2)))
                                                (error "Context expects 2 values"
                                                       _g135123_)))
                                          (let ((_target132051132077_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g135122_ 0)))
                                                (_tl132053132079_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g135122_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl132053132079_))
                                                (letrec ((_loop132054132082_
                                                          (lambda (_hd132052132085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause132058132087_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd132052132085_))
                        (let ((_e132055132090_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd132052132085_))))
                          (let ((_lp-hd132056132093_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e132055132090_)))
                                (_lp-tl132057132095_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e132055132090_))))
                            (let ((__tmp135127
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd132056132093_
                                           _clause132058132087_))))
                              (declare (not safe))
                              (_loop132054132082_
                               _lp-tl132057132095_
                               __tmp135127))))
                        (let ((_clause132059132098_
                               (reverse _clause132058132087_)))
                          ((lambda (_L132101_)
                             (let* ((_clauses132196_
                                     (map (lambda (_clause132116_)
                                            (let* ((___stx133766133767_
                                                    _clause132116_)
                                                   (_g132119132134_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx133766133767_)))))
                                              (let ((___kont133768133769_
                                                     (lambda (_L132162_
                                                              _L132163_
                                                              _L132164_)
                                                       (let* ((_body132184_
                                                               (map (lambda (_g132179132181_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g132179132181_
                                 _L132164_
                                 _$t131849_
                                 _method-calls130404_
                                 _slot-refs130405_
                                 _class-type-check130406_
                                 _struct-type-check1132042_
                                 _struct-type-check2132043_)))
                            _L132162_))
                      (__tmp135124
                       (let ()
                         (declare (not safe))
                         (cons _L132164_ _L132163_))))
                 (declare (not safe))
                 (cons __tmp135124 _body132184_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont133770133771_
                                                     (lambda ()
                                                       _clause132116_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx133766133767_))
                                                    (let ((_e132126132146_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx133766133767_))))
                                                      (let ((_tl132124132151_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e132126132146_)))
                    (_hd132125132149_
                     (let () (declare (not safe)) (##car _e132126132146_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd132125132149_))
                    (let ((_e132129132154_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd132125132149_))))
                      (let ((_tl132127132159_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132129132154_)))
                            (_hd132128132157_
                             (let ()
                               (declare (not safe))
                               (##car _e132129132154_))))
                        (___kont133768133769_
                         _tl132124132151_
                         _tl132127132159_
                         _hd132128132157_)))
                    (___kont133770133771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont133770133771_)))))
                                          (let ((__tmp135125
                                                 (lambda (_g132188132191_
                                                          _g132189132193_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g132188132191_
                                                           _g132189132193_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp135125
                                                    '()
                                                    _L132101_))))
                                    (__tmp135126
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses132196_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp135126 _L131596_)))
                           _clause132059132098_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop132054132082_
                                                     _target132051132077_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g132045132064_
                                                   _g132046132067_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g132045132064_ _g132046132067_)))))
                              (let ()
                                (declare (not safe))
                                (_g132045132064_ _g132046132067_))))))
                  (declare (not safe))
                  (_g132044132198_ _L131596_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl132206_
                                                      (lambda (_specializer-lambda-expr132203_
                                                               _specializer-case-lambda-expr132204_)
                                                        (let ((__tmp135128
                                                               (let ((__tmp135129
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp135131
                                     (let ((__tmp135132
                                            (let ((__tmp135134
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L131598_ '())))
                                                  (__tmp135133
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr132203_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp135134 __tmp135133))))
                                       (declare (not safe))
                                       (cons __tmp135132 '())))
                                    (__tmp135130
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr132204_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp135131 __tmp135130))))
                         (declare (not safe))
                         (cons '%#let-values __tmp135129))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp135128 _stx130310_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr132208_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr132040_
                                                         _struct-check-all131919_
                                                         _empty130409_)))
                                                     (_specializer-case-lambda-expr132210_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr132201_
                                                         _struct-check-all131919_
                                                         _empty130409_)))
                                                     (_specializer-impl132212_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl132206_
                                                         _specializer-lambda-expr132208_
                                                         _specializer-case-lambda-expr132210_)))
                                                     (_unchecked-specializer-lambda-expr132214_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?130412_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr132040_
                                                             _empty130409_
                                                             _struct-check-all131919_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr132216_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?130412_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr132201_
                                                             _empty130409_
                                                             _struct-check-all131919_))
                                                          '#f))
                                                     (_unchecked-specializer-impl132218_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?130412_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl132206_
                                                             _unchecked-specializer-lambda-expr132214_
                                                             _unchecked-specializer-case-lambda-expr132216_))
                                                          '#f))
                                                     (_specializer-impl132220_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl130316_
                                                         _$t131849_
                                                         _methods-bind131872_
                                                         _slots-bind131895_
                                                         _class-check-bind131917_
                                                         _struct-check-bind131941_
                                                         _specializer-impl132212_
                                                         _lifted-specializer-id131847_
                                                         _unchecked-specializer-impl132218_))))
                                                (let ((__tmp135136
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L130385_)))
                                                      (__tmp135135
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id131840_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp135136
                                                   '" => "
                                                   __tmp135135))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def130317_
                                                   _L130385_
                                                   _specializer-id131840_
                                                   _specializer-impl132220_
                                                   _lifted-specializer-id131847_
                                                   _unchecked-specializer-impl132218_)))))
                                        _hd131529131591_
                                        _hd131526131583_
                                        _hd131523131575_)
                                       (let ()
                                         (declare (not safe))
                                         (_g131505131535_ _g131506131538_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g131505131535_ _g131506131538_)))
                           (let ()
                             (declare (not safe))
                             (_g131505131535_ _g131506131538_)))
                       (let ()
                         (declare (not safe))
                         (_g131505131535_ _g131506131538_)))))
               (let () (declare (not safe)) (_g131505131535_ _g131506131538_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g131505131535_
                                                      _g131506131538_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g131505131535_
                                              _g131506131538_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g131505131535_ _g131506131538_)))))
                           (let ()
                             (declare (not safe))
                             (_g131505131535_ _g131506131538_)))))
                   (let ()
                     (declare (not safe))
                     (_g131505131535_ _g131506131538_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g131505131535_
                                                      _g131506131538_))))))
                                       (declare (not safe))
                                       (_g131504132223_ _L130384_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L130384_))
                                         (let* ((_g132226132279_
                                                 (lambda (_g132227132276_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g132227132276_))))
                                                (_g132225133551_
                                                 (lambda (_g132227132282_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g132227132282_))
                                                       (let ((_e132235132284_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g132227132282_))))
                 (let ((_hd132234132287_
                        (let () (declare (not safe)) (##car _e132235132284_)))
                       (_tl132233132289_
                        (let () (declare (not safe)) (##cdr _e132235132284_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd132234132287_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd132234132287_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl132233132289_))
                               (let ((_e132238132292_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl132233132289_))))
                                 (let ((_hd132237132295_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132238132292_)))
                                       (_tl132236132297_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132238132292_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd132237132295_))
                                       (let ((_e132241132300_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd132237132295_))))
                                         (let ((_hd132240132303_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e132241132300_)))
                                               (_tl132239132305_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e132241132300_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd132240132303_))
                                               (let ((_e132244132308_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd132240132303_))))
                                                 (let ((_hd132243132311_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132244132308_)))
                                                       (_tl132242132313_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132244132308_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd132243132311_))
                                                       (let ((_e132247132316_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd132243132311_))))
                 (let ((_hd132246132319_
                        (let () (declare (not safe)) (##car _e132247132316_)))
                       (_tl132245132321_
                        (let () (declare (not safe)) (##cdr _e132247132316_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl132245132321_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl132242132313_))
                           (let ((_e132250132324_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl132242132313_))))
                             (let ((_hd132249132327_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132250132324_)))
                                   (_tl132248132329_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132250132324_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132249132327_))
                                   (let ((_e132253132332_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132249132327_))))
                                     (let ((_hd132252132335_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132253132332_)))
                                           (_tl132251132337_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132253132332_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd132252132335_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd132252132335_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl132251132337_))
                                                   (let ((_e132256132340_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl132251132337_))))
                                                     (let ((_hd132255132343_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132256132340_)))
                                                           (_tl132254132345_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132256132340_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd132255132343_))
                                                           (let ((_e132259132348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd132255132343_))))
                     (let ((_hd132258132351_
                            (let ()
                              (declare (not safe))
                              (##car _e132259132348_)))
                           (_tl132257132353_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132259132348_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd132258132351_))
                           (let ((_e132262132356_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd132258132351_))))
                             (let ((_hd132261132359_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132262132356_)))
                                   (_tl132260132361_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132262132356_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132261132359_))
                                   (let ((_e132265132364_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132261132359_))))
                                     (let ((_hd132264132367_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132265132364_)))
                                           (_tl132263132369_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132265132364_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl132263132369_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl132260132361_))
                                               (let ((_e132268132372_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl132260132361_))))
                                                 (let ((_hd132267132375_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132268132372_)))
                                                       (_tl132266132377_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132268132372_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl132266132377_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl132257132353_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl132254132345_))
                       (let ((_e132271132380_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl132254132345_))))
                         (let ((_hd132270132383_
                                (let ()
                                  (declare (not safe))
                                  (##car _e132271132380_)))
                               (_tl132269132385_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e132271132380_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl132269132385_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl132248132329_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl132239132305_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl132236132297_))
                                           (let ((_e132274132388_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl132236132297_))))
                                             (let ((_hd132273132391_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e132274132388_)))
                                                   (_tl132272132393_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e132274132388_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl132272132393_))
                                                   ((lambda (_L132396_
                                                             _L132397_
                                                             _L132398_
                                                             _L132399_
                                                             _L132400_)
                                                      (let* ((_g132439132501_
                                                              (lambda (_g132440132498_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132440132498_))))
                     (_g132438133548_
                      (lambda (_g132440132504_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132440132504_))
                            (let ((_e132448132506_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132440132504_))))
                              (let ((_hd132447132509_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132448132506_)))
                                    (_tl132446132511_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132448132506_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd132447132509_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd132447132509_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl132446132511_))
                                            (let ((_e132451132514_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl132446132511_))))
                                              (let ((_hd132450132517_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132451132514_)))
                                                    (_tl132449132519_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132451132514_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl132449132519_))
                                                    (let ((_e132454132522_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl132449132519_))))
                                                      (let ((_hd132453132525_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e132454132522_)))
                    (_tl132452132527_
                     (let () (declare (not safe)) (##cdr _e132454132522_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd132453132525_))
                    (let ((_e132457132530_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd132453132525_))))
                      (let ((_hd132456132533_
                             (let ()
                               (declare (not safe))
                               (##car _e132457132530_)))
                            (_tl132455132535_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132457132530_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd132456132533_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd132456132533_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl132455132535_))
                                    (let ((_e132460132538_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl132455132535_))))
                                      (let ((_hd132459132541_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132460132538_)))
                                            (_tl132458132543_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132460132538_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd132459132541_))
                                            (let ((_e132463132546_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd132459132541_))))
                                              (let ((_hd132462132549_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132463132546_)))
                                                    (_tl132461132551_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132463132546_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd132462132549_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd132462132549_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl132461132551_))
                                                            (let ((_e132466132554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl132461132551_))))
                      (let ((_hd132465132557_
                             (let ()
                               (declare (not safe))
                               (##car _e132466132554_)))
                            (_tl132464132559_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132466132554_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl132464132559_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl132458132543_))
                                (let ((_e132469132562_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl132458132543_))))
                                  (let ((_hd132468132565_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132469132562_)))
                                        (_tl132467132567_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132469132562_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd132468132565_))
                                        (let ((_e132472132570_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd132468132565_))))
                                          (let ((_hd132471132573_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e132472132570_)))
                                                (_tl132470132575_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e132472132570_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd132471132573_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd132471132573_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl132470132575_))
                                                        (let ((_e132475132578_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl132470132575_))))
                  (let ((_hd132474132581_
                         (let () (declare (not safe)) (##car _e132475132578_)))
                        (_tl132473132583_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132475132578_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl132473132583_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl132467132567_))
                            (let ((_e132478132586_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl132467132567_))))
                              (let ((_hd132477132589_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132478132586_)))
                                    (_tl132476132591_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132478132586_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd132477132589_))
                                    (let ((_e132481132594_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd132477132589_))))
                                      (let ((_hd132480132597_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132481132594_)))
                                            (_tl132479132599_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132481132594_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd132480132597_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd132480132597_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl132479132599_))
                                                    (let ((_e132484132602_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl132479132599_))))
                                                      (let ((_hd132483132605_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e132484132602_)))
                    (_tl132482132607_
                     (let () (declare (not safe)) (##cdr _e132484132602_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl132482132607_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl132476132591_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl132476132591_))
                                  '1)
                            (let ((_g135012_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl132476132591_
                                      '1))))
                              (begin
                                (let ((_g135013_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g135012_)
                                             (##vector-length _g135012_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g135013_ 2)))
                                      (error "Context expects 2 values"
                                             _g135013_)))
                                (let ((_target132485132610_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135012_ 0)))
                                      (_tl132487132612_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135012_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl132487132612_))
                                      (let ((_e132496132615_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl132487132612_))))
                                        (let ((_hd132495132618_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e132496132615_)))
                                              (_tl132494132620_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e132496132615_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl132494132620_))
                                              (letrec ((_loop132488132623_
                                                        (lambda (_hd132486132626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref132492132628_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd132486132626_))
                      (let ((_e132489132631_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd132486132626_))))
                        (let ((_lp-hd132490132634_
                               (let ()
                                 (declare (not safe))
                                 (##car _e132489132631_)))
                              (_lp-tl132491132636_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e132489132631_))))
                          (let ((__tmp135099
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd132490132634_
                                         _kw-ref132492132628_))))
                            (declare (not safe))
                            (_loop132488132623_
                             _lp-tl132491132636_
                             __tmp135099))))
                      (let ((_kw-ref132493132639_
                             (reverse _kw-ref132492132628_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl132452132527_))
                            ((lambda (_L132642_
                                      _L132643_
                                      _L132644_
                                      _L132645_
                                      _L132646_)
                               (let* ((_kw-count132697_
                                       (length (let ((__tmp135014
                                                      (lambda (_g132689132692_
                                                               _g132690132694_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g132689132692_
                                                                _g132690132694_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp135014
                                                         '()
                                                         _L132643_))))
                                      (_self-index132699_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count132697_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L132398_))
                                     (let* ((_g132702132716_
                                             (lambda (_g132703132713_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g132703132713_))))
                                            (_g132701132887_
                                             (lambda (_g132703132719_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g132703132719_))
                                                   (let ((_e132708132721_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g132703132719_))))
                                                     (let ((_hd132707132724_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132708132721_)))
                                                           (_tl132706132726_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132708132721_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132706132726_))
                                                           (let ((_e132711132729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132706132726_))))
                     (let ((_hd132710132732_
                            (let ()
                              (declare (not safe))
                              (##car _e132711132729_)))
                           (_tl132709132734_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132711132729_))))
                       ((lambda (_L132737_ _L132738_)
                          (let ((_self132754_
                                 (list-ref _L132738_ _self-index132699_)))
                            (for-each
                             (lambda (_g132755132757_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g132755132757_
                                  _self132754_
                                  _method-calls130404_
                                  _slot-refs130405_
                                  _class-type-check130406_
                                  _struct-type-check130407_
                                  _struct-type-assert130408_)))
                             _L132737_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?130411_))
                                _stx130310_
                                (let* ((_specializer-id132766_
                                        (let* ((_id132760_
                                                (let ((__tmp135065
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L130385_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp135065
                                                   '"::specialize")))
                                               (_specializer-id132763_
                                                (let ((__tmp135066
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx130310_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id132760_
                                                   __tmp135066))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id132763_))
                                          _specializer-id132763_))
                                       (_lifted-specializer-id132773_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?130413_))
                                            (let* ((_id132768_
                                                    (let ((__tmp135067
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L130385_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp135067
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id132770_
                                                    (let ((__tmp135068
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx130310_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id132768_
                                                       __tmp135068))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id132770_))
                                              _lifted-specializer-id132770_)
                                            '#f))
                                       (_$t132775_
                                        (let ((__tmp135069 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp135069)))
                                       (_methods132777_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls130404_)))
                                       (_$methods132781_
                                        (map (lambda (_id132779_)
                                               (let ((__tmp135070
                                                      (gensym _id132779_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp135070)))
                                             _methods132777_))
                                       (_g135071_
                                        (for-each
                                         (lambda (_g132782132785_
                                                  _g132783132787_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls130404_
                                              _g132782132785_
                                              _g132783132787_)))
                                         _methods132777_
                                         _$methods132781_))
                                       (_methods-bind132798_
                                        (map (lambda (_g132790132793_
                                                      _g132791132795_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind130312_
                                                  _$t132775_
                                                  _g132790132793_
                                                  _g132791132795_)))
                                             _methods132777_
                                             _$methods132781_))
                                       (_slots132800_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs130405_)))
                                       (_$slots132804_
                                        (map (lambda (_id132802_)
                                               (let ((__tmp135072
                                                      (gensym _id132802_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp135072)))
                                             _slots132800_))
                                       (_g135073_
                                        (for-each
                                         (lambda (_g132805132808_
                                                  _g132806132810_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs130405_
                                              _g132805132808_
                                              _g132806132810_)))
                                         _slots132800_
                                         _$slots132804_))
                                       (_slots-bind132821_
                                        (map (lambda (_g132813132816_
                                                      _g132814132818_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind130313_
                                                  _$t132775_
                                                  _g132813132816_
                                                  _g132814132818_)))
                                             _slots132800_
                                             _$slots132804_))
                                       (_class-check132823_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check130406_)))
                                       (_$class-check132826_
                                        (map (lambda (_g135074_)
                                               (let ((__tmp135075
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp135075)))
                                             _class-check132823_))
                                       (_g135076_
                                        (for-each
                                         (lambda (_g132827132830_
                                                  _g132828132832_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _class-type-check130406_
                                              _g132827132830_
                                              _g132828132832_)))
                                         _class-check132823_
                                         _$class-check132826_))
                                       (_class-check-bind132843_
                                        (map (lambda (_g132835132838_
                                                      _g132836132840_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind130314_
                                                  _$t132775_
                                                  _g132835132838_
                                                  _g132836132840_)))
                                             _class-check132823_
                                             _$class-check132826_))
                                       (_struct-check-all132845_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check130407_
                                           _struct-type-assert130408_)))
                                       (_struct-check132847_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all132845_)))
                                       (_$struct-check132850_
                                        (map (lambda (_g135077_)
                                               (let ((__tmp135078
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp135078)))
                                             _struct-check132847_))
                                       (_g135079_
                                        (for-each
                                         (lambda (_g132851132854_
                                                  _g132852132856_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _struct-check-all132845_
                                              _g132851132854_
                                              _g132852132856_)))
                                         _struct-check132847_
                                         _$struct-check132850_))
                                       (_struct-check-bind132867_
                                        (map (lambda (_g132859132862_
                                                      _g132860132864_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind130315_
                                                  _$t132775_
                                                  _g132859132862_
                                                  _g132860132864_)))
                                             _struct-check132847_
                                             _$struct-check132850_))
                                       (_make-specializer-impl132878_
                                        (lambda (_struct-type-check1132869_
                                                 _struct-type-check2132870_)
                                          (let* ((_specializer-body132876_
                                                  (map (lambda (_g132871132873_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g132871132873_
                                                            _self132754_
                                                            _$t132775_
                                                            _method-calls130404_
                                                            _slot-refs130405_
                                                            _class-type-check130406_
                                                            _struct-type-check1132869_
                                                            _struct-type-check2132870_)))
                                                       _L132737_))
                                                 (__tmp135080
                                                  (let ((__tmp135081
                                                         (let ((__tmp135083
                                                                (let ((__tmp135084
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135096
                                      (let ()
                                        (declare (not safe))
                                        (cons _L132400_ '())))
                                     (__tmp135085
                                      (let ((__tmp135086
                                             (let ((__tmp135087
                                                    (let ((__tmp135089
                                                           (let ((__tmp135090
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135095
                                 (let ()
                                   (declare (not safe))
                                   (cons _L132399_ '())))
                                (__tmp135091
                                 (let ((__tmp135092
                                        (let ((__tmp135093
                                               (let ((__tmp135094
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L132738_
                                                              _specializer-body132876_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp135094))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp135093
                                           _L132398_))))
                                   (declare (not safe))
                                   (cons __tmp135092 '()))))
                            (declare (not safe))
                            (cons __tmp135095 __tmp135091))))
                     (declare (not safe))
                     (cons __tmp135090 '())))
                  (__tmp135088
                   (let () (declare (not safe)) (cons _L132397_ '()))))
              (declare (not safe))
              (cons __tmp135089 __tmp135088))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp135087))))
                                        (declare (not safe))
                                        (cons __tmp135086 '()))))
                                 (declare (not safe))
                                 (cons __tmp135096 __tmp135085))))
                          (declare (not safe))
                          (cons __tmp135084 '())))
                       (__tmp135082
                        (let () (declare (not safe)) (cons _L132396_ '()))))
                   (declare (not safe))
                   (cons __tmp135083 __tmp135082))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp135081))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp135080
                                             _stx130310_))))
                                       (_specializer-impl132880_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl132878_
                                           _struct-check-all132845_
                                           _empty130409_)))
                                       (_unchecked-specializer-impl132882_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?130412_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl132878_
                                               _empty130409_
                                               _struct-check-all132845_))
                                            '#f))
                                       (_specializer-impl132884_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl130316_
                                           _$t132775_
                                           _methods-bind132798_
                                           _slots-bind132821_
                                           _class-check-bind132843_
                                           _struct-check-bind132867_
                                           _specializer-impl132880_
                                           _lifted-specializer-id132773_
                                           _unchecked-specializer-impl132882_))))
                                  (let ((__tmp135098
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L130385_)))
                                        (__tmp135097
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id132766_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp135098
                                     '" => "
                                     __tmp135097))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def130317_
                                     _L130385_
                                     _specializer-id132766_
                                     _specializer-impl132884_
                                     _lifted-specializer-id132773_
                                     _unchecked-specializer-impl132882_))))))
                        _tl132709132734_
                        _hd132710132732_)))
                   (let ()
                     (declare (not safe))
                     (_g132702132716_ _g132703132719_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132702132716_
                                                      _g132703132719_))))))
                                       (declare (not safe))
                                       (_g132701132887_ _L132398_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L132398_))
                                         (let* ((_g132890132920_
                                                 (lambda (_g132891132917_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g132891132917_))))
                                                (_g132889133545_
                                                 (lambda (_g132891132923_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g132891132923_))
                                                       (let ((_e132897132925_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g132891132923_))))
                 (let ((_hd132896132928_
                        (let () (declare (not safe)) (##car _e132897132925_)))
                       (_tl132895132930_
                        (let () (declare (not safe)) (##cdr _e132897132925_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl132895132930_))
                       (let ((_e132900132933_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl132895132930_))))
                         (let ((_hd132899132936_
                                (let ()
                                  (declare (not safe))
                                  (##car _e132900132933_)))
                               (_tl132898132938_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e132900132933_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd132899132936_))
                               (let ((_e132903132941_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd132899132936_))))
                                 (let ((_hd132902132944_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132903132941_)))
                                       (_tl132901132946_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132903132941_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd132902132944_))
                                       (let ((_e132906132949_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd132902132944_))))
                                         (let ((_hd132905132952_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e132906132949_)))
                                               (_tl132904132954_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e132906132949_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd132905132952_))
                                               (let ((_e132909132957_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd132905132952_))))
                                                 (let ((_hd132908132960_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132909132957_)))
                                                       (_tl132907132962_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132909132957_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl132907132962_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132904132954_))
                                                           (let ((_e132912132965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132904132954_))))
                     (let ((_hd132911132968_
                            (let ()
                              (declare (not safe))
                              (##car _e132912132965_)))
                           (_tl132910132970_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132912132965_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl132910132970_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl132901132946_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl132898132938_))
                                   (let ((_e132915132973_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl132898132938_))))
                                     (let ((_hd132914132976_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132915132973_)))
                                           (_tl132913132978_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132915132973_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl132913132978_))
                                           ((lambda (_L132981_
                                                     _L132982_
                                                     _L132983_)
                                              (let* ((_g133006133020_
                                                      (lambda (_g133007133017_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133007133017_))))
                                                     (_g133005133061_
                                                      (lambda (_g133007133023_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133007133023_))
                                                            (let ((_e133012133025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133007133023_))))
                      (let ((_hd133011133028_
                             (let ()
                               (declare (not safe))
                               (##car _e133012133025_)))
                            (_tl133010133030_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133012133025_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133010133030_))
                            (let ((_e133015133033_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133010133030_))))
                              (let ((_hd133014133036_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133015133033_)))
                                    (_tl133013133038_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133015133033_))))
                                ((lambda (_L133041_ _L133042_)
                                   (let ((_self133055_
                                          (list-ref
                                           _L133042_
                                           _self-index132699_)))
                                     (for-each
                                      (lambda (_g133056133058_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g133056133058_
                                           _self133055_
                                           _method-calls130404_
                                           _slot-refs130405_
                                           _class-type-check130406_
                                           _struct-type-check130407_
                                           _struct-type-assert130408_)))
                                      _L133041_)))
                                 _tl133013133038_
                                 _hd133014133036_)))
                            (let ()
                              (declare (not safe))
                              (_g133006133020_ _g133007133023_)))))
                    (let ()
                      (declare (not safe))
                      (_g133006133020_ _g133007133023_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133005133061_ _L132982_))
                                              (let* ((_g133064133083_
                                                      (lambda (_g133065133080_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133065133080_))))
                                                     (_g133063133188_
                                                      (lambda (_g133065133086_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133065133086_))
                                                            (let ((_e133069133088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133065133086_))))
                      (let ((_hd133068133091_
                             (let ()
                               (declare (not safe))
                               (##car _e133069133088_)))
                            (_tl133067133093_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133069133088_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl133067133093_))
                            (let ((_g135015_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl133067133093_
                                      '0))))
                              (begin
                                (let ((_g135016_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g135015_)
                                             (##vector-length _g135015_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g135016_ 2)))
                                      (error "Context expects 2 values"
                                             _g135016_)))
                                (let ((_target133070133096_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135015_ 0)))
                                      (_tl133072133098_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135015_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl133072133098_))
                                      (letrec ((_loop133073133101_
                                                (lambda (_hd133071133104_
                                                         _clause133077133106_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd133071133104_))
                                                      (let ((_e133074133109_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd133071133104_))))
                (let ((_lp-hd133075133112_
                       (let () (declare (not safe)) (##car _e133074133109_)))
                      (_lp-tl133076133114_
                       (let () (declare (not safe)) (##cdr _e133074133109_))))
                  (let ((__tmp135018
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd133075133112_ _clause133077133106_))))
                    (declare (not safe))
                    (_loop133073133101_ _lp-tl133076133114_ __tmp135018))))
              (let ((_clause133078133117_ (reverse _clause133077133106_)))
                ((lambda (_L133120_)
                   (for-each
                    (lambda (_clause133133_)
                      (let* ((_g133135133146_
                              (lambda (_g133136133143_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g133136133143_))))
                             (_g133134133178_
                              (lambda (_g133136133149_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g133136133149_))
                                    (let ((_e133141133151_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g133136133149_))))
                                      (let ((_hd133140133154_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133141133151_)))
                                            (_tl133139133156_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133141133151_))))
                                        ((lambda (_L133159_ _L133160_)
                                           (let ((_self133172_
                                                  (list-ref
                                                   _L133160_
                                                   _self-index132699_)))
                                             (for-each
                                              (lambda (_g133173133175_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g133173133175_
                                                   _self133172_
                                                   _method-calls130404_
                                                   _slot-refs130405_
                                                   _class-type-check130406_
                                                   _struct-type-check130407_
                                                   _struct-type-assert130408_)))
                                              _L133159_)))
                                         _tl133139133156_
                                         _hd133140133154_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g133135133146_ _g133136133149_))))))
                        (declare (not safe))
                        (_g133134133178_ _clause133133_)))
                    (let ((__tmp135017
                           (lambda (_g133180133183_ _g133181133185_)
                             (let ()
                               (declare (not safe))
                               (cons _g133180133183_ _g133181133185_)))))
                      (declare (not safe))
                      (foldr1 __tmp135017 '() _L133120_))))
                 _clause133078133117_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop133073133101_
                                           _target133070133096_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g133064133083_ _g133065133086_))))))
                            (let ()
                              (declare (not safe))
                              (_g133064133083_ _g133065133086_)))))
                    (let ()
                      (declare (not safe))
                      (_g133064133083_ _g133065133086_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133063133188_ _L132981_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?130411_))
                                                  _stx130310_
                                                  (let* ((_specializer-id133197_
                                                          (let* ((_id133191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135019
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L130385_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp135019 '"::specialize")))
                         (_specializer-id133194_
                          (let ((__tmp135020
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx130310_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id133191_ __tmp135020))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id133194_))
                    _specializer-id133194_))
                 (_lifted-specializer-id133204_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?130413_))
                      (let* ((_id133199_
                              (let ((__tmp135021
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L130385_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp135021
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id133201_
                              (let ((__tmp135022
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx130310_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id133199_
                                 __tmp135022))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id133201_))
                        _lifted-specializer-id133201_)
                      '#f))
                 (_$t133206_
                  (let ((__tmp135023 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135023)))
                 (_methods133208_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls130404_)))
                 (_$methods133212_
                  (map (lambda (_id133210_)
                         (let ((__tmp135024 (gensym _id133210_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135024)))
                       _methods133208_))
                 (_g135025_
                  (for-each
                   (lambda (_g133213133216_ _g133214133218_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls130404_
                        _g133213133216_
                        _g133214133218_)))
                   _methods133208_
                   _$methods133212_))
                 (_methods-bind133229_
                  (map (lambda (_g133221133224_ _g133222133226_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind130312_
                            _$t133206_
                            _g133221133224_
                            _g133222133226_)))
                       _methods133208_
                       _$methods133212_))
                 (_slots133231_
                  (let () (declare (not safe)) (hash-keys _slot-refs130405_)))
                 (_$slots133235_
                  (map (lambda (_id133233_)
                         (let ((__tmp135026 (gensym _id133233_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135026)))
                       _slots133231_))
                 (_g135027_
                  (for-each
                   (lambda (_g133236133239_ _g133237133241_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs130405_
                        _g133236133239_
                        _g133237133241_)))
                   _slots133231_
                   _$slots133235_))
                 (_slots-bind133252_
                  (map (lambda (_g133244133247_ _g133245133249_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind130313_
                            _$t133206_
                            _g133244133247_
                            _g133245133249_)))
                       _slots133231_
                       _$slots133235_))
                 (_class-check133254_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check130406_)))
                 (_$class-check133257_
                  (map (lambda (_g135028_)
                         (let ((__tmp135029 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp135029)))
                       _class-check133254_))
                 (_g135030_
                  (for-each
                   (lambda (_g133258133261_ _g133259133263_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _class-type-check130406_
                        _g133258133261_
                        _g133259133263_)))
                   _class-check133254_
                   _$class-check133257_))
                 (_class-check-bind133274_
                  (map (lambda (_g133266133269_ _g133267133271_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind130314_
                            _$t133206_
                            _g133266133269_
                            _g133267133271_)))
                       _class-check133254_
                       _$class-check133257_))
                 (_struct-check-all133276_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check130407_
                     _struct-type-assert130408_)))
                 (_struct-check133278_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all133276_)))
                 (_$struct-check133281_
                  (map (lambda (_g135031_)
                         (let ((__tmp135032 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp135032)))
                       _struct-check133278_))
                 (_g135033_
                  (for-each
                   (lambda (_g133282133285_ _g133283133287_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _struct-check-all133276_
                        _g133282133285_
                        _g133283133287_)))
                   _struct-check133278_
                   _$struct-check133281_))
                 (_struct-check-bind133298_
                  (map (lambda (_g133290133293_ _g133291133295_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind130315_
                            _$t133206_
                            _g133290133293_
                            _g133291133295_)))
                       _struct-check133278_
                       _$struct-check133281_))
                 (_make-specializer-lambda-expr133384_
                  (lambda (_struct-type-check1133300_
                           _struct-type-check2133301_)
                    (let* ((_g133303133317_
                            (lambda (_g133304133314_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g133304133314_))))
                           (_g133302133381_
                            (lambda (_g133304133320_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g133304133320_))
                                  (let ((_e133309133322_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g133304133320_))))
                                    (let ((_hd133308133325_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e133309133322_)))
                                          (_tl133307133327_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e133309133322_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl133307133327_))
                                          (let ((_e133312133330_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl133307133327_))))
                                            (let ((_hd133311133333_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e133312133330_)))
                                                  (_tl133310133335_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e133312133330_))))
                                              ((lambda (_L133338_ _L133339_)
                                                 (let* ((_self133372_
                                                         (list-ref
                                                          _L133339_
                                                          _self-index132699_))
                                                        (_body133378_
                                                         (map (lambda (_g133373133375_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g133373133375_
                           _self133372_
                           _$t133206_
                           _method-calls130404_
                           _slot-refs130405_
                           _class-type-check130406_
                           _struct-type-check1133300_
                           _struct-type-check2133301_)))
                      _L133338_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp135034
                                                          (let ((__tmp135035
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L133339_ _body133378_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp135035))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp135034
                                                      _L132982_))))
                                               _tl133310133335_
                                               _hd133311133333_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g133303133317_
                                             _g133304133320_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g133303133317_ _g133304133320_))))))
                      (declare (not safe))
                      (_g133302133381_ _L132982_))))
                 (_make-specializer-case-lambda-expr133523_
                  (lambda (_struct-type-check1133386_
                           _struct-type-check2133387_)
                    (let* ((_g133389133408_
                            (lambda (_g133390133405_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g133390133405_))))
                           (_g133388133520_
                            (lambda (_g133390133411_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g133390133411_))
                                  (let ((_e133394133413_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g133390133411_))))
                                    (let ((_hd133393133416_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e133394133413_)))
                                          (_tl133392133418_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e133394133413_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl133392133418_))
                                          (let ((_g135036_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl133392133418_
                                                    '0))))
                                            (begin
                                              (let ((_g135037_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g135036_)
                                                           (##vector-length
                                                            _g135036_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g135037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g135037_)))
                                              (let ((_target133395133421_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g135036_
                                                        0)))
                                                    (_tl133397133423_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g135036_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl133397133423_))
                                                    (letrec ((_loop133398133426_
                                                              (lambda (_hd133396133429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause133402133431_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd133396133429_))
                            (let ((_e133399133434_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd133396133429_))))
                              (let ((_lp-hd133400133437_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133399133434_)))
                                    (_lp-tl133401133439_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133399133434_))))
                                (let ((__tmp135040
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd133400133437_
                                               _clause133402133431_))))
                                  (declare (not safe))
                                  (_loop133398133426_
                                   _lp-tl133401133439_
                                   __tmp135040))))
                            (let ((_clause133403133442_
                                   (reverse _clause133402133431_)))
                              ((lambda (_L133445_)
                                 (let* ((_clauses133518_
                                         (map (lambda (_clause133460_)
                                                (let* ((_g133462133473_
                                                        (lambda (_g133463133470_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g133463133470_))))
                                                       (_g133461133508_
                                                        (lambda (_g133463133476_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g133463133476_))
                      (let ((_e133468133478_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g133463133476_))))
                        (let ((_hd133467133481_
                               (let ()
                                 (declare (not safe))
                                 (##car _e133468133478_)))
                              (_tl133466133483_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e133468133478_))))
                          ((lambda (_L133486_ _L133487_)
                             (let* ((_self133499_
                                     (list-ref _L133487_ _self-index132699_))
                                    (_body133505_
                                     (map (lambda (_g133500133502_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g133500133502_
                                               _self133499_
                                               _$t133206_
                                               _method-calls130404_
                                               _slot-refs130405_
                                               _class-type-check130406_
                                               _struct-type-check1133386_
                                               _struct-type-check2133387_)))
                                          _L133486_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L133487_ _body133505_))))
                           _tl133466133483_
                           _hd133467133481_)))
                      (let ()
                        (declare (not safe))
                        (_g133462133473_ _g133463133476_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g133461133508_
                                                   _clause133460_)))
                                              (let ((__tmp135038
                                                     (lambda (_g133510133513_
                                                              _g133511133515_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g133510133513_
                                                               _g133511133515_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp135038
                                                        '()
                                                        _L133445_))))
                                        (__tmp135039
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses133518_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp135039
                                    _L132981_)))
                               _clause133403133442_))))))
              (let ()
                (declare (not safe))
                (_loop133398133426_ _target133395133421_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133389133408_
                                                       _g133390133411_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g133389133408_
                                             _g133390133411_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g133389133408_ _g133390133411_))))))
                      (declare (not safe))
                      (_g133388133520_ _L132981_))))
                 (_make-specializer-impl133528_
                  (lambda (_specializer-lambda-expr133525_
                           _specializer-case-lambda-expr133526_)
                    (let ((__tmp135041
                           (let ((__tmp135042
                                  (let ((__tmp135044
                                         (let ((__tmp135045
                                                (let ((__tmp135062
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L132400_ '())))
                                                      (__tmp135046
                                                       (let ((__tmp135047
                                                              (let ((__tmp135048
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135050
                                    (let ((__tmp135051
                                           (let ((__tmp135061
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L132399_ '())))
                                                 (__tmp135052
                                                  (let ((__tmp135053
                                                         (let ((__tmp135054
                                                                (let ((__tmp135055
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135057
                                      (let ((__tmp135058
                                             (let ((__tmp135060
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L132983_ '())))
                                                   (__tmp135059
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr133525_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp135060
                                                     __tmp135059))))
                                        (declare (not safe))
                                        (cons __tmp135058 '())))
                                     (__tmp135056
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr133526_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp135057 __tmp135056))))
                          (declare (not safe))
                          (cons '%#let-values __tmp135055))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp135054 _stx130310_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135053 '()))))
                                             (declare (not safe))
                                             (cons __tmp135061 __tmp135052))))
                                      (declare (not safe))
                                      (cons __tmp135051 '())))
                                   (__tmp135049
                                    (let ()
                                      (declare (not safe))
                                      (cons _L132397_ '()))))
                               (declare (not safe))
                               (cons __tmp135050 __tmp135049))))
                        (declare (not safe))
                        (cons '%#let-values __tmp135048))))
                 (declare (not safe))
                 (cons __tmp135047 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135062
                                                        __tmp135046))))
                                           (declare (not safe))
                                           (cons __tmp135045 '())))
                                        (__tmp135043
                                         (let ()
                                           (declare (not safe))
                                           (cons _L132396_ '()))))
                                    (declare (not safe))
                                    (cons __tmp135044 __tmp135043))))
                             (declare (not safe))
                             (cons '%#let-values __tmp135042))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp135041 _stx130310_))))
                 (_specializer-lambda-expr133530_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr133384_
                     _struct-check-all133276_
                     _empty130409_)))
                 (_specializer-case-lambda-expr133532_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr133523_
                     _struct-check-all133276_
                     _empty130409_)))
                 (_specializer-impl133534_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl133528_
                     _specializer-lambda-expr133530_
                     _specializer-case-lambda-expr133532_)))
                 (_unchecked-specializer-lambda-expr133536_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?130412_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr133384_
                         _empty130409_
                         _struct-check-all133276_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr133538_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?130412_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr133523_
                         _empty130409_
                         _struct-check-all133276_))
                      '#f))
                 (_unchecked-specializer-impl133540_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?130412_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl133528_
                         _unchecked-specializer-lambda-expr133536_
                         _unchecked-specializer-case-lambda-expr133538_))
                      '#f))
                 (_specializer-impl133542_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl130316_
                     _$t133206_
                     _methods-bind133229_
                     _slots-bind133252_
                     _class-check-bind133274_
                     _struct-check-bind133298_
                     _specializer-impl133534_
                     _lifted-specializer-id133204_
                     _unchecked-specializer-impl133540_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp135064
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L130385_)))
                                                          (__tmp135063
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id133197_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp135064
                                                       '" => "
                                                       __tmp135063))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def130317_
                                                       _L130385_
                                                       _specializer-id133197_
                                                       _specializer-impl133542_
                                                       _lifted-specializer-id133204_
                                                       _unchecked-specializer-impl133540_)))))
                                            _hd132914132976_
                                            _hd132911132968_
                                            _hd132908132960_)
                                           (let ()
                                             (declare (not safe))
                                             (_g132890132920_
                                              _g132891132923_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132890132920_ _g132891132923_)))
                               (let ()
                                 (declare (not safe))
                                 (_g132890132920_ _g132891132923_)))
                           (let ()
                             (declare (not safe))
                             (_g132890132920_ _g132891132923_)))))
                   (let ()
                     (declare (not safe))
                     (_g132890132920_ _g132891132923_)))
               (let ()
                 (declare (not safe))
                 (_g132890132920_ _g132891132923_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132890132920_
                                                  _g132891132923_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g132890132920_ _g132891132923_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132890132920_ _g132891132923_)))))
                       (let ()
                         (declare (not safe))
                         (_g132890132920_ _g132891132923_)))))
               (let ()
                 (declare (not safe))
                 (_g132890132920_ _g132891132923_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g132889133545_ _L132398_))
                                         _stx130310_))))
                             _hd132495132618_
                             _kw-ref132493132639_
                             _hd132483132605_
                             _hd132474132581_
                             _hd132465132557_)
                            (let ()
                              (declare (not safe))
                              (_g132439132501_ _g132440132504_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop132488132623_
                                                   _target132485132610_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g132439132501_
                                                 _g132440132504_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g132439132501_ _g132440132504_))))))
                            (let ()
                              (declare (not safe))
                              (_g132439132501_ _g132440132504_)))
                        (let ()
                          (declare (not safe))
                          (_g132439132501_ _g132440132504_)))
                    (let ()
                      (declare (not safe))
                      (_g132439132501_ _g132440132504_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132439132501_
                                                       _g132440132504_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g132439132501_
                                                   _g132440132504_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g132439132501_
                                               _g132440132504_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132439132501_ _g132440132504_)))))
                            (let ()
                              (declare (not safe))
                              (_g132439132501_ _g132440132504_)))
                        (let ()
                          (declare (not safe))
                          (_g132439132501_ _g132440132504_)))))
                (let ()
                  (declare (not safe))
                  (_g132439132501_ _g132440132504_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132439132501_
                                                       _g132440132504_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g132439132501_
                                                   _g132440132504_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g132439132501_ _g132440132504_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g132439132501_ _g132440132504_)))
                            (let ()
                              (declare (not safe))
                              (_g132439132501_ _g132440132504_)))))
                    (let ()
                      (declare (not safe))
                      (_g132439132501_ _g132440132504_)))
                (let ()
                  (declare (not safe))
                  (_g132439132501_ _g132440132504_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132439132501_
                                                       _g132440132504_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g132439132501_
                                               _g132440132504_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132439132501_ _g132440132504_)))
                                (let ()
                                  (declare (not safe))
                                  (_g132439132501_ _g132440132504_)))
                            (let ()
                              (declare (not safe))
                              (_g132439132501_ _g132440132504_)))))
                    (let ()
                      (declare (not safe))
                      (_g132439132501_ _g132440132504_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132439132501_
                                                       _g132440132504_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g132439132501_
                                               _g132440132504_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g132439132501_ _g132440132504_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g132439132501_ _g132440132504_)))))
                            (let ()
                              (declare (not safe))
                              (_g132439132501_ _g132440132504_))))))
                (declare (not safe))
                (_g132438133548_ _L132397_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd132273132391_
                                                    _hd132270132383_
                                                    _hd132267132375_
                                                    _hd132264132367_
                                                    _hd132246132319_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132226132279_
                                                      _g132227132282_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g132226132279_
                                              _g132227132282_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g132226132279_ _g132227132282_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g132226132279_ _g132227132282_)))
                               (let ()
                                 (declare (not safe))
                                 (_g132226132279_ _g132227132282_)))))
                       (let ()
                         (declare (not safe))
                         (_g132226132279_ _g132227132282_)))
                   (let ()
                     (declare (not safe))
                     (_g132226132279_ _g132227132282_)))
               (let ()
                 (declare (not safe))
                 (_g132226132279_ _g132227132282_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132226132279_
                                                  _g132227132282_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g132226132279_
                                              _g132227132282_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132226132279_ _g132227132282_)))))
                           (let ()
                             (declare (not safe))
                             (_g132226132279_ _g132227132282_)))))
                   (let ()
                     (declare (not safe))
                     (_g132226132279_ _g132227132282_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132226132279_
                                                      _g132227132282_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132226132279_
                                                  _g132227132282_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g132226132279_
                                              _g132227132282_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132226132279_ _g132227132282_)))))
                           (let ()
                             (declare (not safe))
                             (_g132226132279_ _g132227132282_)))
                       (let ()
                         (declare (not safe))
                         (_g132226132279_ _g132227132282_)))))
               (let ()
                 (declare (not safe))
                 (_g132226132279_ _g132227132282_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132226132279_
                                                  _g132227132282_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g132226132279_ _g132227132282_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132226132279_ _g132227132282_)))
                           (let ()
                             (declare (not safe))
                             (_g132226132279_ _g132227132282_)))
                       (let ()
                         (declare (not safe))
                         (_g132226132279_ _g132227132282_)))))
               (let ()
                 (declare (not safe))
                 (_g132226132279_ _g132227132282_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g132225133551_ _L130384_))
                                         _stx130310_))))))))
                  (___kont133790133791_ (lambda () _stx130310_)))
              (let ((___match133819133820_
                     (lambda (_e130326130352_
                              _hd130325130355_
                              _tl130324130357_
                              _e130329130360_
                              _hd130328130363_
                              _tl130327130365_
                              _e130332130368_
                              _hd130331130371_
                              _tl130330130373_
                              _e130335130376_
                              _hd130334130379_
                              _tl130333130381_)
                       (let ((_L130384_ _hd130334130379_)
                             (_L130385_ _hd130331130371_))
                         (if (let ((__tmp135181
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L130385_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp135181))
                             (___kont133788133789_ _L130384_ _L130385_)
                             (___kont133790133791_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx133786133787_))
                    (let ((_e130326130352_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx133786133787_))))
                      (let ((_tl130324130357_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130326130352_)))
                            (_hd130325130355_
                             (let ()
                               (declare (not safe))
                               (##car _e130326130352_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130324130357_))
                            (let ((_e130329130360_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130324130357_))))
                              (let ((_tl130327130365_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130329130360_)))
                                    (_hd130328130363_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130329130360_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd130328130363_))
                                    (let ((_e130332130368_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd130328130363_))))
                                      (let ((_tl130330130373_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e130332130368_)))
                                            (_hd130331130371_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e130332130368_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl130330130373_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl130327130365_))
                                                (let ((_e130335130376_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl130327130365_))))
                                                  (let ((_tl130333130381_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e130335130376_)))
                                                        (_hd130334130379_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e130335130376_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl130333130381_))
                                                        (___match133819133820_
                                                         _e130326130352_
                                                         _hd130325130355_
                                                         _tl130324130357_
                                                         _e130329130360_
                                                         _hd130328130363_
                                                         _tl130327130365_
                                                         _e130332130368_
                                                         _hd130331130371_
                                                         _tl130330130373_
                                                         _e130335130376_
                                                         _hd130334130379_
                                                         _tl130333130381_)
                                                        (___kont133790133791_))))
                                                (___kont133790133791_))
                                            (___kont133790133791_))))
                                    (___kont133790133791_))))
                            (___kont133790133791_))))
                    (___kont133790133791_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx129286_
               _self129287_
               _methods129288_
               _slots129289_
               _class-check129290_
               _struct-check129291_
               _struct-assert129292_)
        (let* ((___stx133822133823_ _stx129286_)
               (_g129300129522_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx133822133823_)))))
          (let ((___kont133824133825_
                 (lambda (_L130259_ _L130260_ _L130261_ _L130262_)
                   (let ((__tmp135182
                          (let () (declare (not safe)) (gx#stx-e _L130260_))))
                     (declare (not safe))
                     (hash-put! _methods129288_ __tmp135182 '#t))
                   (for-each
                    (lambda (_g130295130297_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g130295130297_
                         _self129287_
                         _methods129288_
                         _slots129289_
                         _class-check129290_
                         _struct-check129291_
                         _struct-assert129292_)))
                    (let ((__tmp135183
                           (lambda (_g130299130302_ _g130300130304_)
                             (let ()
                               (declare (not safe))
                               (cons _g130299130302_ _g130300130304_)))))
                      (declare (not safe))
                      (foldr1 __tmp135183 '() _L130259_)))))
                (___kont133828133829_
                 (lambda (_L130094_ _L130095_ _L130096_ _L130097_ _L130098_)
                   (let ((__tmp135184
                          (let () (declare (not safe)) (gx#stx-e _L130095_))))
                     (declare (not safe))
                     (hash-put! _methods129288_ __tmp135184 '#t))
                   (for-each
                    (lambda (_g130138130140_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g130138130140_
                         _self129287_
                         _methods129288_
                         _slots129289_
                         _class-check129290_
                         _struct-check129291_
                         _struct-assert129292_)))
                    (let ((__tmp135185
                           (lambda (_g130142130145_ _g130143130147_)
                             (let ()
                               (declare (not safe))
                               (cons _g130142130145_ _g130143130147_)))))
                      (declare (not safe))
                      (foldr1 __tmp135185 '() _L130094_)))))
                (___kont133832133833_
                 (lambda (_L129927_ _L129928_ _L129929_)
                   (let ((__tmp135186
                          (let () (declare (not safe)) (gx#stx-e _L129927_))))
                     (declare (not safe))
                     (hash-put! _slots129289_ __tmp135186 '#t))))
                (___kont133834133835_
                 (lambda (_L129804_ _L129805_ _L129806_ _L129807_)
                   (let ((__tmp135187
                          (let () (declare (not safe)) (gx#stx-e _L129805_))))
                     (declare (not safe))
                     (hash-put! _slots129289_ __tmp135187 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L129804_
                      _self129287_
                      _methods129288_
                      _slots129289_
                      _class-check129290_
                      _struct-check129291_
                      _struct-assert129292_))))
                (___kont133836133837_
                 (lambda (_L129688_ _L129689_)
                   (let ((__tmp135188
                          (##structure-ref
                           (let ((__tmp135189
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L129689_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135189))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (hash-put! _slots129289_ __tmp135188 '#t))))
                (___kont133838133839_
                 (lambda (_L129598_ _L129599_ _L129600_)
                   (let ((__tmp135190
                          (##structure-ref
                           (let ((__tmp135191
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L129600_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135191))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (hash-put! _slots129289_ __tmp135190 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L129598_
                      _self129287_
                      _methods129288_
                      _slots129289_
                      _class-check129290_
                      _struct-check129291_
                      _struct-assert129292_))))
                (___kont133840133841_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx129286_
                      _self129287_
                      _methods129288_
                      _slots129289_
                      _class-check129290_
                      _struct-check129291_
                      _struct-assert129292_)))))
            (let* ((___match134321134322_
                    (lambda (_e129496129534_
                             _hd129495129537_
                             _tl129494129539_
                             _e129499129542_
                             _hd129498129545_
                             _tl129497129547_
                             _e129502129550_
                             _hd129501129553_
                             _tl129500129555_
                             _e129505129558_
                             _hd129504129561_
                             _tl129503129563_
                             _e129508129566_
                             _hd129507129569_
                             _tl129506129571_
                             _e129511129574_
                             _hd129510129577_
                             _tl129509129579_
                             _e129514129582_
                             _hd129513129585_
                             _tl129512129587_
                             _e129517129590_
                             _hd129516129593_
                             _tl129515129595_)
                      (let ((_L129598_ _hd129516129593_)
                            (_L129599_ _hd129513129585_)
                            (_L129600_ _hd129504129561_))
                        (if (and (let ((__tmp135192
                                        (let ((__tmp135193
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L129600_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135193))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135192
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129599_
                                    _self129287_)))
                            (___kont133838133839_
                             _L129598_
                             _L129599_
                             _L129600_)
                            (___kont133840133841_)))))
                   (___match134319134320_
                    (lambda (_e129496129534_
                             _hd129495129537_
                             _tl129494129539_
                             _e129499129542_
                             _hd129498129545_
                             _tl129497129547_
                             _e129502129550_
                             _hd129501129553_
                             _tl129500129555_
                             _e129505129558_
                             _hd129504129561_
                             _tl129503129563_
                             _e129508129566_
                             _hd129507129569_
                             _tl129506129571_
                             _e129511129574_
                             _hd129510129577_
                             _tl129509129579_
                             _e129514129582_
                             _hd129513129585_
                             _tl129512129587_
                             _e129517129590_
                             _hd129516129593_
                             _tl129515129595_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl129515129595_))
                          (___match134321134322_
                           _e129496129534_
                           _hd129495129537_
                           _tl129494129539_
                           _e129499129542_
                           _hd129498129545_
                           _tl129497129547_
                           _e129502129550_
                           _hd129501129553_
                           _tl129500129555_
                           _e129505129558_
                           _hd129504129561_
                           _tl129503129563_
                           _e129508129566_
                           _hd129507129569_
                           _tl129506129571_
                           _e129511129574_
                           _hd129510129577_
                           _tl129509129579_
                           _e129514129582_
                           _hd129513129585_
                           _tl129512129587_
                           _e129517129590_
                           _hd129516129593_
                           _tl129515129595_)
                          (___kont133840133841_))))
                   (___match134313134314_
                    (lambda (_e129496129534_
                             _hd129495129537_
                             _tl129494129539_
                             _e129499129542_
                             _hd129498129545_
                             _tl129497129547_
                             _e129502129550_
                             _hd129501129553_
                             _tl129500129555_
                             _e129505129558_
                             _hd129504129561_
                             _tl129503129563_
                             _e129508129566_
                             _hd129507129569_
                             _tl129506129571_
                             _e129511129574_
                             _hd129510129577_
                             _tl129509129579_
                             _e129514129582_
                             _hd129513129585_
                             _tl129512129587_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129506129571_))
                          (let ((_e129517129590_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129506129571_))))
                            (let ((_tl129515129595_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129517129590_)))
                                  (_hd129516129593_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129517129590_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl129515129595_))
                                  (___match134321134322_
                                   _e129496129534_
                                   _hd129495129537_
                                   _tl129494129539_
                                   _e129499129542_
                                   _hd129498129545_
                                   _tl129497129547_
                                   _e129502129550_
                                   _hd129501129553_
                                   _tl129500129555_
                                   _e129505129558_
                                   _hd129504129561_
                                   _tl129503129563_
                                   _e129508129566_
                                   _hd129507129569_
                                   _tl129506129571_
                                   _e129511129574_
                                   _hd129510129577_
                                   _tl129509129579_
                                   _e129514129582_
                                   _hd129513129585_
                                   _tl129512129587_
                                   _e129517129590_
                                   _hd129516129593_
                                   _tl129515129595_)
                                  (___kont133840133841_))))
                          (___kont133840133841_))))
                   (___match134259134260_
                    (lambda (_e129472129632_
                             _hd129471129635_
                             _tl129470129637_
                             _e129475129640_
                             _hd129474129643_
                             _tl129473129645_
                             _e129478129648_
                             _hd129477129651_
                             _tl129476129653_
                             _e129481129656_
                             _hd129480129659_
                             _tl129479129661_
                             _e129484129664_
                             _hd129483129667_
                             _tl129482129669_
                             _e129487129672_
                             _hd129486129675_
                             _tl129485129677_
                             _e129490129680_
                             _hd129489129683_
                             _tl129488129685_)
                      (let ((_L129688_ _hd129489129683_)
                            (_L129689_ _hd129480129659_))
                        (if (and (let ((__tmp135194
                                        (let ((__tmp135195
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L129689_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135195))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135194
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129688_
                                    _self129287_)))
                            (___kont133836133837_ _L129688_ _L129689_)
                            (___kont133840133841_)))))
                   (___match134257134258_
                    (lambda (_e129472129632_
                             _hd129471129635_
                             _tl129470129637_
                             _e129475129640_
                             _hd129474129643_
                             _tl129473129645_
                             _e129478129648_
                             _hd129477129651_
                             _tl129476129653_
                             _e129481129656_
                             _hd129480129659_
                             _tl129479129661_
                             _e129484129664_
                             _hd129483129667_
                             _tl129482129669_
                             _e129487129672_
                             _hd129486129675_
                             _tl129485129677_
                             _e129490129680_
                             _hd129489129683_
                             _tl129488129685_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl129482129669_))
                          (___match134259134260_
                           _e129472129632_
                           _hd129471129635_
                           _tl129470129637_
                           _e129475129640_
                           _hd129474129643_
                           _tl129473129645_
                           _e129478129648_
                           _hd129477129651_
                           _tl129476129653_
                           _e129481129656_
                           _hd129480129659_
                           _tl129479129661_
                           _e129484129664_
                           _hd129483129667_
                           _tl129482129669_
                           _e129487129672_
                           _hd129486129675_
                           _tl129485129677_
                           _e129490129680_
                           _hd129489129683_
                           _tl129488129685_)
                          (___match134313134314_
                           _e129472129632_
                           _hd129471129635_
                           _tl129470129637_
                           _e129475129640_
                           _hd129474129643_
                           _tl129473129645_
                           _e129478129648_
                           _hd129477129651_
                           _tl129476129653_
                           _e129481129656_
                           _hd129480129659_
                           _tl129479129661_
                           _e129484129664_
                           _hd129483129667_
                           _tl129482129669_
                           _e129487129672_
                           _hd129486129675_
                           _tl129485129677_
                           _e129490129680_
                           _hd129489129683_
                           _tl129488129685_))))
                   (___match134203134204_
                    (lambda (_e129437129716_
                             _hd129436129719_
                             _tl129435129721_
                             _e129440129724_
                             _hd129439129727_
                             _tl129438129729_
                             _e129443129732_
                             _hd129442129735_
                             _tl129441129737_
                             _e129446129740_
                             _hd129445129743_
                             _tl129444129745_
                             _e129449129748_
                             _hd129448129751_
                             _tl129447129753_
                             _e129452129756_
                             _hd129451129759_
                             _tl129450129761_
                             _e129455129764_
                             _hd129454129767_
                             _tl129453129769_
                             _e129458129772_
                             _hd129457129775_
                             _tl129456129777_
                             _e129461129780_
                             _hd129460129783_
                             _tl129459129785_
                             _e129464129788_
                             _hd129463129791_
                             _tl129462129793_
                             _e129467129796_
                             _hd129466129799_
                             _tl129465129801_)
                      (let ((_L129804_ _hd129466129799_)
                            (_L129805_ _hd129463129791_)
                            (_L129806_ _hd129454129767_)
                            (_L129807_ _hd129445129743_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L129807_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L129807_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129806_
                                    _self129287_)))
                            (___kont133834133835_
                             _L129804_
                             _L129805_
                             _L129806_
                             _L129807_)
                            (___kont133840133841_)))))
                   (___match134195134196_
                    (lambda (_e129437129716_
                             _hd129436129719_
                             _tl129435129721_
                             _e129440129724_
                             _hd129439129727_
                             _tl129438129729_
                             _e129443129732_
                             _hd129442129735_
                             _tl129441129737_
                             _e129446129740_
                             _hd129445129743_
                             _tl129444129745_
                             _e129449129748_
                             _hd129448129751_
                             _tl129447129753_
                             _e129452129756_
                             _hd129451129759_
                             _tl129450129761_
                             _e129455129764_
                             _hd129454129767_
                             _tl129453129769_
                             _e129458129772_
                             _hd129457129775_
                             _tl129456129777_
                             _e129461129780_
                             _hd129460129783_
                             _tl129459129785_
                             _e129464129788_
                             _hd129463129791_
                             _tl129462129793_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129456129777_))
                          (let ((_e129467129796_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129456129777_))))
                            (let ((_tl129465129801_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129467129796_)))
                                  (_hd129466129799_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129467129796_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl129465129801_))
                                  (___match134203134204_
                                   _e129437129716_
                                   _hd129436129719_
                                   _tl129435129721_
                                   _e129440129724_
                                   _hd129439129727_
                                   _tl129438129729_
                                   _e129443129732_
                                   _hd129442129735_
                                   _tl129441129737_
                                   _e129446129740_
                                   _hd129445129743_
                                   _tl129444129745_
                                   _e129449129748_
                                   _hd129448129751_
                                   _tl129447129753_
                                   _e129452129756_
                                   _hd129451129759_
                                   _tl129450129761_
                                   _e129455129764_
                                   _hd129454129767_
                                   _tl129453129769_
                                   _e129458129772_
                                   _hd129457129775_
                                   _tl129456129777_
                                   _e129461129780_
                                   _hd129460129783_
                                   _tl129459129785_
                                   _e129464129788_
                                   _hd129463129791_
                                   _tl129462129793_
                                   _e129467129796_
                                   _hd129466129799_
                                   _tl129465129801_)
                                  (___kont133840133841_))))
                          (___match134319134320_
                           _e129437129716_
                           _hd129436129719_
                           _tl129435129721_
                           _e129440129724_
                           _hd129439129727_
                           _tl129438129729_
                           _e129443129732_
                           _hd129442129735_
                           _tl129441129737_
                           _e129446129740_
                           _hd129445129743_
                           _tl129444129745_
                           _e129449129748_
                           _hd129448129751_
                           _tl129447129753_
                           _e129452129756_
                           _hd129451129759_
                           _tl129450129761_
                           _e129455129764_
                           _hd129454129767_
                           _tl129453129769_
                           _e129458129772_
                           _hd129457129775_
                           _tl129456129777_))))
                   (___match134117134118_
                    (lambda (_e129403129847_
                             _hd129402129850_
                             _tl129401129852_
                             _e129406129855_
                             _hd129405129858_
                             _tl129404129860_
                             _e129409129863_
                             _hd129408129866_
                             _tl129407129868_
                             _e129412129871_
                             _hd129411129874_
                             _tl129410129876_
                             _e129415129879_
                             _hd129414129882_
                             _tl129413129884_
                             _e129418129887_
                             _hd129417129890_
                             _tl129416129892_
                             _e129421129895_
                             _hd129420129898_
                             _tl129419129900_
                             _e129424129903_
                             _hd129423129906_
                             _tl129422129908_
                             _e129427129911_
                             _hd129426129914_
                             _tl129425129916_
                             _e129430129919_
                             _hd129429129922_
                             _tl129428129924_)
                      (let ((_L129927_ _hd129429129922_)
                            (_L129928_ _hd129420129898_)
                            (_L129929_ _hd129411129874_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L129929_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L129929_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129928_
                                    _self129287_)))
                            (___kont133832133833_
                             _L129927_
                             _L129928_
                             _L129929_)
                            (___match134321134322_
                             _e129403129847_
                             _hd129402129850_
                             _tl129401129852_
                             _e129406129855_
                             _hd129405129858_
                             _tl129404129860_
                             _e129409129863_
                             _hd129408129866_
                             _tl129407129868_
                             _e129412129871_
                             _hd129411129874_
                             _tl129410129876_
                             _e129415129879_
                             _hd129414129882_
                             _tl129413129884_
                             _e129418129887_
                             _hd129417129890_
                             _tl129416129892_
                             _e129421129895_
                             _hd129420129898_
                             _tl129419129900_
                             _e129424129903_
                             _hd129423129906_
                             _tl129422129908_)))))
                   (___match134115134116_
                    (lambda (_e129403129847_
                             _hd129402129850_
                             _tl129401129852_
                             _e129406129855_
                             _hd129405129858_
                             _tl129404129860_
                             _e129409129863_
                             _hd129408129866_
                             _tl129407129868_
                             _e129412129871_
                             _hd129411129874_
                             _tl129410129876_
                             _e129415129879_
                             _hd129414129882_
                             _tl129413129884_
                             _e129418129887_
                             _hd129417129890_
                             _tl129416129892_
                             _e129421129895_
                             _hd129420129898_
                             _tl129419129900_
                             _e129424129903_
                             _hd129423129906_
                             _tl129422129908_
                             _e129427129911_
                             _hd129426129914_
                             _tl129425129916_
                             _e129430129919_
                             _hd129429129922_
                             _tl129428129924_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl129422129908_))
                          (___match134117134118_
                           _e129403129847_
                           _hd129402129850_
                           _tl129401129852_
                           _e129406129855_
                           _hd129405129858_
                           _tl129404129860_
                           _e129409129863_
                           _hd129408129866_
                           _tl129407129868_
                           _e129412129871_
                           _hd129411129874_
                           _tl129410129876_
                           _e129415129879_
                           _hd129414129882_
                           _tl129413129884_
                           _e129418129887_
                           _hd129417129890_
                           _tl129416129892_
                           _e129421129895_
                           _hd129420129898_
                           _tl129419129900_
                           _e129424129903_
                           _hd129423129906_
                           _tl129422129908_
                           _e129427129911_
                           _hd129426129914_
                           _tl129425129916_
                           _e129430129919_
                           _hd129429129922_
                           _tl129428129924_)
                          (___match134195134196_
                           _e129403129847_
                           _hd129402129850_
                           _tl129401129852_
                           _e129406129855_
                           _hd129405129858_
                           _tl129404129860_
                           _e129409129863_
                           _hd129408129866_
                           _tl129407129868_
                           _e129412129871_
                           _hd129411129874_
                           _tl129410129876_
                           _e129415129879_
                           _hd129414129882_
                           _tl129413129884_
                           _e129418129887_
                           _hd129417129890_
                           _tl129416129892_
                           _e129421129895_
                           _hd129420129898_
                           _tl129419129900_
                           _e129424129903_
                           _hd129423129906_
                           _tl129422129908_
                           _e129427129911_
                           _hd129426129914_
                           _tl129425129916_
                           _e129430129919_
                           _hd129429129922_
                           _tl129428129924_))))
                   (___match134105134106_
                    (lambda (_e129403129847_
                             _hd129402129850_
                             _tl129401129852_
                             _e129406129855_
                             _hd129405129858_
                             _tl129404129860_
                             _e129409129863_
                             _hd129408129866_
                             _tl129407129868_
                             _e129412129871_
                             _hd129411129874_
                             _tl129410129876_
                             _e129415129879_
                             _hd129414129882_
                             _tl129413129884_
                             _e129418129887_
                             _hd129417129890_
                             _tl129416129892_
                             _e129421129895_
                             _hd129420129898_
                             _tl129419129900_
                             _e129424129903_
                             _hd129423129906_
                             _tl129422129908_
                             _e129427129911_
                             _hd129426129914_
                             _tl129425129916_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd129426129914_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl129425129916_))
                              (let ((_e129430129919_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl129425129916_))))
                                (let ((_tl129428129924_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129430129919_)))
                                      (_hd129429129922_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129430129919_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl129428129924_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl129422129908_))
                                          (___match134117134118_
                                           _e129403129847_
                                           _hd129402129850_
                                           _tl129401129852_
                                           _e129406129855_
                                           _hd129405129858_
                                           _tl129404129860_
                                           _e129409129863_
                                           _hd129408129866_
                                           _tl129407129868_
                                           _e129412129871_
                                           _hd129411129874_
                                           _tl129410129876_
                                           _e129415129879_
                                           _hd129414129882_
                                           _tl129413129884_
                                           _e129418129887_
                                           _hd129417129890_
                                           _tl129416129892_
                                           _e129421129895_
                                           _hd129420129898_
                                           _tl129419129900_
                                           _e129424129903_
                                           _hd129423129906_
                                           _tl129422129908_
                                           _e129427129911_
                                           _hd129426129914_
                                           _tl129425129916_
                                           _e129430129919_
                                           _hd129429129922_
                                           _tl129428129924_)
                                          (___match134195134196_
                                           _e129403129847_
                                           _hd129402129850_
                                           _tl129401129852_
                                           _e129406129855_
                                           _hd129405129858_
                                           _tl129404129860_
                                           _e129409129863_
                                           _hd129408129866_
                                           _tl129407129868_
                                           _e129412129871_
                                           _hd129411129874_
                                           _tl129410129876_
                                           _e129415129879_
                                           _hd129414129882_
                                           _tl129413129884_
                                           _e129418129887_
                                           _hd129417129890_
                                           _tl129416129892_
                                           _e129421129895_
                                           _hd129420129898_
                                           _tl129419129900_
                                           _e129424129903_
                                           _hd129423129906_
                                           _tl129422129908_
                                           _e129427129911_
                                           _hd129426129914_
                                           _tl129425129916_
                                           _e129430129919_
                                           _hd129429129922_
                                           _tl129428129924_))
                                      (___match134319134320_
                                       _e129403129847_
                                       _hd129402129850_
                                       _tl129401129852_
                                       _e129406129855_
                                       _hd129405129858_
                                       _tl129404129860_
                                       _e129409129863_
                                       _hd129408129866_
                                       _tl129407129868_
                                       _e129412129871_
                                       _hd129411129874_
                                       _tl129410129876_
                                       _e129415129879_
                                       _hd129414129882_
                                       _tl129413129884_
                                       _e129418129887_
                                       _hd129417129890_
                                       _tl129416129892_
                                       _e129421129895_
                                       _hd129420129898_
                                       _tl129419129900_
                                       _e129424129903_
                                       _hd129423129906_
                                       _tl129422129908_))))
                              (___match134319134320_
                               _e129403129847_
                               _hd129402129850_
                               _tl129401129852_
                               _e129406129855_
                               _hd129405129858_
                               _tl129404129860_
                               _e129409129863_
                               _hd129408129866_
                               _tl129407129868_
                               _e129412129871_
                               _hd129411129874_
                               _tl129410129876_
                               _e129415129879_
                               _hd129414129882_
                               _tl129413129884_
                               _e129418129887_
                               _hd129417129890_
                               _tl129416129892_
                               _e129421129895_
                               _hd129420129898_
                               _tl129419129900_
                               _e129424129903_
                               _hd129423129906_
                               _tl129422129908_))
                          (___match134319134320_
                           _e129403129847_
                           _hd129402129850_
                           _tl129401129852_
                           _e129406129855_
                           _hd129405129858_
                           _tl129404129860_
                           _e129409129863_
                           _hd129408129866_
                           _tl129407129868_
                           _e129412129871_
                           _hd129411129874_
                           _tl129410129876_
                           _e129415129879_
                           _hd129414129882_
                           _tl129413129884_
                           _e129418129887_
                           _hd129417129890_
                           _tl129416129892_
                           _e129421129895_
                           _hd129420129898_
                           _tl129419129900_
                           _e129424129903_
                           _hd129423129906_
                           _tl129422129908_))))
                   (___match134037134038_
                    (lambda (_e129352129966_
                             _hd129351129969_
                             _tl129350129971_
                             _e129355129974_
                             _hd129354129977_
                             _tl129353129979_
                             _e129358129982_
                             _hd129357129985_
                             _tl129356129987_
                             _e129361129990_
                             _hd129360129993_
                             _tl129359129995_
                             _e129364129998_
                             _hd129363130001_
                             _tl129362130003_
                             _e129367130006_
                             _hd129366130009_
                             _tl129365130011_
                             _e129370130014_
                             _hd129369130017_
                             _tl129368130019_
                             _e129373130022_
                             _hd129372130025_
                             _tl129371130027_
                             _e129376130030_
                             _hd129375130033_
                             _tl129374130035_
                             _e129379130038_
                             _hd129378130041_
                             _tl129377130043_
                             _e129382130046_
                             _hd129381130049_
                             _tl129380130051_
                             _e129385130054_
                             _hd129384130057_
                             _tl129383130059_
                             _e129388130062_
                             _hd129387130065_
                             _tl129386130067_
                             ___splice133830133831_
                             _target129389130070_
                             _tl129391130072_)
                      (letrec ((_loop129392130075_
                                (lambda (_hd129390130078_ _args129396130080_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd129390130078_))
                                      (let ((_e129393130083_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd129390130078_))))
                                        (let ((_lp-tl129395130088_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e129393130083_)))
                                              (_lp-hd129394130086_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e129393130083_))))
                                          (let ((__tmp135196
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd129394130086_
                                                         _args129396130080_))))
                                            (declare (not safe))
                                            (_loop129392130075_
                                             _lp-tl129395130088_
                                             __tmp135196))))
                                      (let ((_args129397130091_
                                             (reverse _args129396130080_)))
                                        (let ((_L130094_ _args129397130091_)
                                              (_L130095_ _hd129387130065_)
                                              (_L130096_ _hd129378130041_)
                                              (_L130097_ _hd129369130017_)
                                              (_L130098_ _hd129360129993_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L130098_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L130097_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L130096_
                                                      _self129287_)))
                                              (___kont133828133829_
                                               _L130094_
                                               _L130095_
                                               _L130096_
                                               _L130097_
                                               _L130098_)
                                              (___kont133840133841_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop129392130075_ _target129389130070_ '())))))
                   (___match133995133996_
                    (lambda (_e129352129966_
                             _hd129351129969_
                             _tl129350129971_
                             _e129355129974_
                             _hd129354129977_
                             _tl129353129979_
                             _e129358129982_
                             _hd129357129985_
                             _tl129356129987_
                             _e129361129990_
                             _hd129360129993_
                             _tl129359129995_
                             _e129364129998_
                             _hd129363130001_
                             _tl129362130003_
                             _e129367130006_
                             _hd129366130009_
                             _tl129365130011_
                             _e129370130014_
                             _hd129369130017_
                             _tl129368130019_
                             _e129373130022_
                             _hd129372130025_
                             _tl129371130027_
                             _e129376130030_
                             _hd129375130033_
                             _tl129374130035_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd129375130033_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl129374130035_))
                              (let ((_e129379130038_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl129374130035_))))
                                (let ((_tl129377130043_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129379130038_)))
                                      (_hd129378130041_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129379130038_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl129377130043_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl129371130027_))
                                          (let ((_e129382130046_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl129371130027_))))
                                            (let ((_tl129380130051_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e129382130046_)))
                                                  (_hd129381130049_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e129382130046_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd129381130049_))
                                                  (let ((_e129385130054_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd129381130049_))))
                                                    (let ((_tl129383130059_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e129385130054_)))
                                                          (_hd129384130057_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e129385130054_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd129384130057_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd129384130057_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129383130059_))
                          (let ((_e129388130062_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129383130059_))))
                            (let ((_tl129386130067_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129388130062_)))
                                  (_hd129387130065_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129388130062_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl129386130067_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl129380130051_))
                                      (let ((___splice133830133831_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl129380130051_
                                                '0))))
                                        (let ((_tl129391130072_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice133830133831_
                                                  '1)))
                                              (_target129389130070_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice133830133831_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl129391130072_))
                                              (___match134037134038_
                                               _e129352129966_
                                               _hd129351129969_
                                               _tl129350129971_
                                               _e129355129974_
                                               _hd129354129977_
                                               _tl129353129979_
                                               _e129358129982_
                                               _hd129357129985_
                                               _tl129356129987_
                                               _e129361129990_
                                               _hd129360129993_
                                               _tl129359129995_
                                               _e129364129998_
                                               _hd129363130001_
                                               _tl129362130003_
                                               _e129367130006_
                                               _hd129366130009_
                                               _tl129365130011_
                                               _e129370130014_
                                               _hd129369130017_
                                               _tl129368130019_
                                               _e129373130022_
                                               _hd129372130025_
                                               _tl129371130027_
                                               _e129376130030_
                                               _hd129375130033_
                                               _tl129374130035_
                                               _e129379130038_
                                               _hd129378130041_
                                               _tl129377130043_
                                               _e129382130046_
                                               _hd129381130049_
                                               _tl129380130051_
                                               _e129385130054_
                                               _hd129384130057_
                                               _tl129383130059_
                                               _e129388130062_
                                               _hd129387130065_
                                               _tl129386130067_
                                               ___splice133830133831_
                                               _target129389130070_
                                               _tl129391130072_)
                                              (___kont133840133841_))))
                                      (___kont133840133841_))
                                  (___kont133840133841_))))
                          (___kont133840133841_))
                      (___kont133840133841_))
                  (___kont133840133841_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133840133841_))))
                                          (___match134319134320_
                                           _e129352129966_
                                           _hd129351129969_
                                           _tl129350129971_
                                           _e129355129974_
                                           _hd129354129977_
                                           _tl129353129979_
                                           _e129358129982_
                                           _hd129357129985_
                                           _tl129356129987_
                                           _e129361129990_
                                           _hd129360129993_
                                           _tl129359129995_
                                           _e129364129998_
                                           _hd129363130001_
                                           _tl129362130003_
                                           _e129367130006_
                                           _hd129366130009_
                                           _tl129365130011_
                                           _e129370130014_
                                           _hd129369130017_
                                           _tl129368130019_
                                           _e129373130022_
                                           _hd129372130025_
                                           _tl129371130027_))
                                      (___match134319134320_
                                       _e129352129966_
                                       _hd129351129969_
                                       _tl129350129971_
                                       _e129355129974_
                                       _hd129354129977_
                                       _tl129353129979_
                                       _e129358129982_
                                       _hd129357129985_
                                       _tl129356129987_
                                       _e129361129990_
                                       _hd129360129993_
                                       _tl129359129995_
                                       _e129364129998_
                                       _hd129363130001_
                                       _tl129362130003_
                                       _e129367130006_
                                       _hd129366130009_
                                       _tl129365130011_
                                       _e129370130014_
                                       _hd129369130017_
                                       _tl129368130019_
                                       _e129373130022_
                                       _hd129372130025_
                                       _tl129371130027_))))
                              (___match134319134320_
                               _e129352129966_
                               _hd129351129969_
                               _tl129350129971_
                               _e129355129974_
                               _hd129354129977_
                               _tl129353129979_
                               _e129358129982_
                               _hd129357129985_
                               _tl129356129987_
                               _e129361129990_
                               _hd129360129993_
                               _tl129359129995_
                               _e129364129998_
                               _hd129363130001_
                               _tl129362130003_
                               _e129367130006_
                               _hd129366130009_
                               _tl129365130011_
                               _e129370130014_
                               _hd129369130017_
                               _tl129368130019_
                               _e129373130022_
                               _hd129372130025_
                               _tl129371130027_))
                          (___match134105134106_
                           _e129352129966_
                           _hd129351129969_
                           _tl129350129971_
                           _e129355129974_
                           _hd129354129977_
                           _tl129353129979_
                           _e129358129982_
                           _hd129357129985_
                           _tl129356129987_
                           _e129361129990_
                           _hd129360129993_
                           _tl129359129995_
                           _e129364129998_
                           _hd129363130001_
                           _tl129362130003_
                           _e129367130006_
                           _hd129366130009_
                           _tl129365130011_
                           _e129370130014_
                           _hd129369130017_
                           _tl129368130019_
                           _e129373130022_
                           _hd129372130025_
                           _tl129371130027_
                           _e129376130030_
                           _hd129375130033_
                           _tl129374130035_))))
                   (___match133927133928_
                    (lambda (_e129308130155_
                             _hd129307130158_
                             _tl129306130160_
                             _e129311130163_
                             _hd129310130166_
                             _tl129309130168_
                             _e129314130171_
                             _hd129313130174_
                             _tl129312130176_
                             _e129317130179_
                             _hd129316130182_
                             _tl129315130184_
                             _e129320130187_
                             _hd129319130190_
                             _tl129318130192_
                             _e129323130195_
                             _hd129322130198_
                             _tl129321130200_
                             _e129326130203_
                             _hd129325130206_
                             _tl129324130208_
                             _e129329130211_
                             _hd129328130214_
                             _tl129327130216_
                             _e129332130219_
                             _hd129331130222_
                             _tl129330130224_
                             _e129335130227_
                             _hd129334130230_
                             _tl129333130232_
                             ___splice133826133827_
                             _target129336130235_
                             _tl129338130237_)
                      (letrec ((_loop129339130240_
                                (lambda (_hd129337130243_ _args129343130245_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd129337130243_))
                                      (let ((_e129340130248_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd129337130243_))))
                                        (let ((_lp-tl129342130253_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e129340130248_)))
                                              (_lp-hd129341130251_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e129340130248_))))
                                          (let ((__tmp135197
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd129341130251_
                                                         _args129343130245_))))
                                            (declare (not safe))
                                            (_loop129339130240_
                                             _lp-tl129342130253_
                                             __tmp135197))))
                                      (let ((_args129344130256_
                                             (reverse _args129343130245_)))
                                        (let ((_L130259_ _args129344130256_)
                                              (_L130260_ _hd129334130230_)
                                              (_L130261_ _hd129325130206_)
                                              (_L130262_ _hd129316130182_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L130262_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L130261_
                                                      _self129287_)))
                                              (___kont133824133825_
                                               _L130259_
                                               _L130260_
                                               _L130261_
                                               _L130262_)
                                              (___match134115134116_
                                               _e129308130155_
                                               _hd129307130158_
                                               _tl129306130160_
                                               _e129311130163_
                                               _hd129310130166_
                                               _tl129309130168_
                                               _e129314130171_
                                               _hd129313130174_
                                               _tl129312130176_
                                               _e129317130179_
                                               _hd129316130182_
                                               _tl129315130184_
                                               _e129320130187_
                                               _hd129319130190_
                                               _tl129318130192_
                                               _e129323130195_
                                               _hd129322130198_
                                               _tl129321130200_
                                               _e129326130203_
                                               _hd129325130206_
                                               _tl129324130208_
                                               _e129329130211_
                                               _hd129328130214_
                                               _tl129327130216_
                                               _e129332130219_
                                               _hd129331130222_
                                               _tl129330130224_
                                               _e129335130227_
                                               _hd129334130230_
                                               _tl129333130232_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop129339130240_ _target129336130235_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx133822133823_))
                  (let ((_e129308130155_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx133822133823_))))
                    (let ((_tl129306130160_
                           (let ()
                             (declare (not safe))
                             (##cdr _e129308130155_)))
                          (_hd129307130158_
                           (let ()
                             (declare (not safe))
                             (##car _e129308130155_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129306130160_))
                          (let ((_e129311130163_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129306130160_))))
                            (let ((_tl129309130168_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129311130163_)))
                                  (_hd129310130166_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129311130163_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd129310130166_))
                                  (let ((_e129314130171_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd129310130166_))))
                                    (let ((_tl129312130176_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e129314130171_)))
                                          (_hd129313130174_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e129314130171_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd129313130174_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd129313130174_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl129312130176_))
                                                  (let ((_e129317130179_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl129312130176_))))
                                                    (let ((_tl129315130184_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e129317130179_)))
                                                          (_hd129316130182_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e129317130179_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl129315130184_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl129309130168_))
                      (let ((_e129320130187_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl129309130168_))))
                        (let ((_tl129318130192_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e129320130187_)))
                              (_hd129319130190_
                               (let ()
                                 (declare (not safe))
                                 (##car _e129320130187_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd129319130190_))
                              (let ((_e129323130195_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd129319130190_))))
                                (let ((_tl129321130200_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129323130195_)))
                                      (_hd129322130198_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129323130195_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd129322130198_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd129322130198_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl129321130200_))
                                              (let ((_e129326130203_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl129321130200_))))
                                                (let ((_tl129324130208_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e129326130203_)))
                                                      (_hd129325130206_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e129326130203_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl129324130208_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl129318130192_))
                                                          (let ((_e129329130211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl129318130192_))))
                    (let ((_tl129327130216_
                           (let ()
                             (declare (not safe))
                             (##cdr _e129329130211_)))
                          (_hd129328130214_
                           (let ()
                             (declare (not safe))
                             (##car _e129329130211_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd129328130214_))
                          (let ((_e129332130219_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd129328130214_))))
                            (let ((_tl129330130224_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129332130219_)))
                                  (_hd129331130222_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129332130219_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd129331130222_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd129331130222_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl129330130224_))
                                          (let ((_e129335130227_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl129330130224_))))
                                            (let ((_tl129333130232_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e129335130227_)))
                                                  (_hd129334130230_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e129335130227_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl129333130232_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl129327130216_))
                                                      (let ((___splice133826133827_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl129327130216_ '0))))
                (let ((_tl129338130237_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice133826133827_ '1)))
                      (_target129336130235_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice133826133827_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl129338130237_))
                      (___match133927133928_
                       _e129308130155_
                       _hd129307130158_
                       _tl129306130160_
                       _e129311130163_
                       _hd129310130166_
                       _tl129309130168_
                       _e129314130171_
                       _hd129313130174_
                       _tl129312130176_
                       _e129317130179_
                       _hd129316130182_
                       _tl129315130184_
                       _e129320130187_
                       _hd129319130190_
                       _tl129318130192_
                       _e129323130195_
                       _hd129322130198_
                       _tl129321130200_
                       _e129326130203_
                       _hd129325130206_
                       _tl129324130208_
                       _e129329130211_
                       _hd129328130214_
                       _tl129327130216_
                       _e129332130219_
                       _hd129331130222_
                       _tl129330130224_
                       _e129335130227_
                       _hd129334130230_
                       _tl129333130232_
                       ___splice133826133827_
                       _target129336130235_
                       _tl129338130237_)
                      (___match134115134116_
                       _e129308130155_
                       _hd129307130158_
                       _tl129306130160_
                       _e129311130163_
                       _hd129310130166_
                       _tl129309130168_
                       _e129314130171_
                       _hd129313130174_
                       _tl129312130176_
                       _e129317130179_
                       _hd129316130182_
                       _tl129315130184_
                       _e129320130187_
                       _hd129319130190_
                       _tl129318130192_
                       _e129323130195_
                       _hd129322130198_
                       _tl129321130200_
                       _e129326130203_
                       _hd129325130206_
                       _tl129324130208_
                       _e129329130211_
                       _hd129328130214_
                       _tl129327130216_
                       _e129332130219_
                       _hd129331130222_
                       _tl129330130224_
                       _e129335130227_
                       _hd129334130230_
                       _tl129333130232_))))
              (___match134115134116_
               _e129308130155_
               _hd129307130158_
               _tl129306130160_
               _e129311130163_
               _hd129310130166_
               _tl129309130168_
               _e129314130171_
               _hd129313130174_
               _tl129312130176_
               _e129317130179_
               _hd129316130182_
               _tl129315130184_
               _e129320130187_
               _hd129319130190_
               _tl129318130192_
               _e129323130195_
               _hd129322130198_
               _tl129321130200_
               _e129326130203_
               _hd129325130206_
               _tl129324130208_
               _e129329130211_
               _hd129328130214_
               _tl129327130216_
               _e129332130219_
               _hd129331130222_
               _tl129330130224_
               _e129335130227_
               _hd129334130230_
               _tl129333130232_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match134319134320_
                                                   _e129308130155_
                                                   _hd129307130158_
                                                   _tl129306130160_
                                                   _e129311130163_
                                                   _hd129310130166_
                                                   _tl129309130168_
                                                   _e129314130171_
                                                   _hd129313130174_
                                                   _tl129312130176_
                                                   _e129317130179_
                                                   _hd129316130182_
                                                   _tl129315130184_
                                                   _e129320130187_
                                                   _hd129319130190_
                                                   _tl129318130192_
                                                   _e129323130195_
                                                   _hd129322130198_
                                                   _tl129321130200_
                                                   _e129326130203_
                                                   _hd129325130206_
                                                   _tl129324130208_
                                                   _e129329130211_
                                                   _hd129328130214_
                                                   _tl129327130216_))))
                                          (___match134319134320_
                                           _e129308130155_
                                           _hd129307130158_
                                           _tl129306130160_
                                           _e129311130163_
                                           _hd129310130166_
                                           _tl129309130168_
                                           _e129314130171_
                                           _hd129313130174_
                                           _tl129312130176_
                                           _e129317130179_
                                           _hd129316130182_
                                           _tl129315130184_
                                           _e129320130187_
                                           _hd129319130190_
                                           _tl129318130192_
                                           _e129323130195_
                                           _hd129322130198_
                                           _tl129321130200_
                                           _e129326130203_
                                           _hd129325130206_
                                           _tl129324130208_
                                           _e129329130211_
                                           _hd129328130214_
                                           _tl129327130216_))
                                      (___match133995133996_
                                       _e129308130155_
                                       _hd129307130158_
                                       _tl129306130160_
                                       _e129311130163_
                                       _hd129310130166_
                                       _tl129309130168_
                                       _e129314130171_
                                       _hd129313130174_
                                       _tl129312130176_
                                       _e129317130179_
                                       _hd129316130182_
                                       _tl129315130184_
                                       _e129320130187_
                                       _hd129319130190_
                                       _tl129318130192_
                                       _e129323130195_
                                       _hd129322130198_
                                       _tl129321130200_
                                       _e129326130203_
                                       _hd129325130206_
                                       _tl129324130208_
                                       _e129329130211_
                                       _hd129328130214_
                                       _tl129327130216_
                                       _e129332130219_
                                       _hd129331130222_
                                       _tl129330130224_))
                                  (___match134319134320_
                                   _e129308130155_
                                   _hd129307130158_
                                   _tl129306130160_
                                   _e129311130163_
                                   _hd129310130166_
                                   _tl129309130168_
                                   _e129314130171_
                                   _hd129313130174_
                                   _tl129312130176_
                                   _e129317130179_
                                   _hd129316130182_
                                   _tl129315130184_
                                   _e129320130187_
                                   _hd129319130190_
                                   _tl129318130192_
                                   _e129323130195_
                                   _hd129322130198_
                                   _tl129321130200_
                                   _e129326130203_
                                   _hd129325130206_
                                   _tl129324130208_
                                   _e129329130211_
                                   _hd129328130214_
                                   _tl129327130216_))))
                          (___match134319134320_
                           _e129308130155_
                           _hd129307130158_
                           _tl129306130160_
                           _e129311130163_
                           _hd129310130166_
                           _tl129309130168_
                           _e129314130171_
                           _hd129313130174_
                           _tl129312130176_
                           _e129317130179_
                           _hd129316130182_
                           _tl129315130184_
                           _e129320130187_
                           _hd129319130190_
                           _tl129318130192_
                           _e129323130195_
                           _hd129322130198_
                           _tl129321130200_
                           _e129326130203_
                           _hd129325130206_
                           _tl129324130208_
                           _e129329130211_
                           _hd129328130214_
                           _tl129327130216_))))
                  (___match134257134258_
                   _e129308130155_
                   _hd129307130158_
                   _tl129306130160_
                   _e129311130163_
                   _hd129310130166_
                   _tl129309130168_
                   _e129314130171_
                   _hd129313130174_
                   _tl129312130176_
                   _e129317130179_
                   _hd129316130182_
                   _tl129315130184_
                   _e129320130187_
                   _hd129319130190_
                   _tl129318130192_
                   _e129323130195_
                   _hd129322130198_
                   _tl129321130200_
                   _e129326130203_
                   _hd129325130206_
                   _tl129324130208_))
              (___kont133840133841_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont133840133841_))
                                          (___kont133840133841_))
                                      (___kont133840133841_))))
                              (___kont133840133841_))))
                      (___kont133840133841_))
                  (___kont133840133841_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133840133841_))
                                              (___kont133840133841_))
                                          (___kont133840133841_))))
                                  (___kont133840133841_))))
                          (___kont133840133841_))))
                  (___kont133840133841_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx128232_
               _self128233_
               _$t128234_
               _methods128235_
               _slots128236_
               _class-check128237_
               _struct-check128238_
               _struct-assert128239_)
        (letrec ((_force-e128241_
                  (lambda (_what129284_)
                    (let ((__tmp135198
                           (let ((__tmp135202
                                  (let ((__tmp135203
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp135203)))
                                 (__tmp135199
                                  (let ((__tmp135200
                                         (let ((__tmp135201
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what129284_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp135201))))
                                    (declare (not safe))
                                    (cons __tmp135200 '()))))
                             (declare (not safe))
                             (cons __tmp135202 __tmp135199))))
                      (declare (not safe))
                      (cons '%#call __tmp135198)))))
          (let* ((___stx134324134325_ _stx128232_)
                 (_g128249128471_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx134324134325_)))))
            (let ((___kont134326134327_
                   (lambda (_L129230_ _L129231_ _L129232_ _L129233_)
                     (let ((_$method129278_
                            (let ((__tmp135204
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L129231_))))
                              (declare (not safe))
                              (hash-ref__0 _methods128235_ __tmp135204)))
                           (_args129279_
                            (map (lambda (_g129266129268_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g129266129268_
                                      _self128233_
                                      _$t128234_
                                      _methods128235_
                                      _slots128236_
                                      _class-check128237_
                                      _struct-check128238_
                                      _struct-assert128239_)))
                                 (let ((__tmp135205
                                        (lambda (_g129270129273_
                                                 _g129271129275_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g129270129273_
                                                  _g129271129275_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135205 '() _L129230_)))))
                       (let ((__tmp135206
                              (let ((__tmp135207
                                     (let ((__tmp135211
                                            (let ()
                                              (declare (not safe))
                                              (_force-e128241_
                                               _$method129278_)))
                                           (__tmp135208
                                            (let ((__tmp135209
                                                   (let ((__tmp135210
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self128233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135210))))
                                              (declare (not safe))
                                              (cons __tmp135209
                                                    _args129279_))))
                                       (declare (not safe))
                                       (cons __tmp135211 __tmp135208))))
                                (declare (not safe))
                                (cons '%#call __tmp135207))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135206 _stx128232_)))))
                  (___kont134330134331_
                   (lambda (_L129062_ _L129063_ _L129064_ _L129065_ _L129066_)
                     (let ((_$method129118_
                            (let ((__tmp135212
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L129063_))))
                              (declare (not safe))
                              (hash-ref__0 _methods128235_ __tmp135212)))
                           (_args129119_
                            (map (lambda (_g129106129108_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g129106129108_
                                      _self128233_
                                      _$t128234_
                                      _methods128235_
                                      _slots128236_
                                      _class-check128237_
                                      _struct-check128238_
                                      _struct-assert128239_)))
                                 (let ((__tmp135213
                                        (lambda (_g129110129113_
                                                 _g129111129115_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g129110129113_
                                                  _g129111129115_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135213 '() _L129062_)))))
                       (let ((__tmp135214
                              (let ((__tmp135215
                                     (let ((__tmp135221
                                            (let ((__tmp135222
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135222)))
                                           (__tmp135216
                                            (let ((__tmp135220
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e128241_
                                                      _$method129118_)))
                                                  (__tmp135217
                                                   (let ((__tmp135218
                                                          (let ((__tmp135219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self128233_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135219))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135218
                                                           _args129119_))))
                                              (declare (not safe))
                                              (cons __tmp135220 __tmp135217))))
                                       (declare (not safe))
                                       (cons __tmp135221 __tmp135216))))
                                (declare (not safe))
                                (cons '%#call __tmp135215))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135214 _stx128232_)))))
                  (___kont134334134335_
                   (lambda (_L128893_ _L128894_ _L128895_)
                     (let* ((_$field128927_
                             (let ((__tmp135223
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L128893_))))
                               (declare (not safe))
                               (hash-ref__0 _slots128236_ __tmp135223)))
                            (__tmp135224
                             (let ((__tmp135225
                                    (let ((__tmp135232
                                           (let ((__tmp135233
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t128234_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp135233)))
                                          (__tmp135226
                                           (let ((__tmp135230
                                                  (let ((__tmp135231
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field128927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp135231)))
                                                 (__tmp135227
                                                  (let ((__tmp135228
                                                         (let ((__tmp135229
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self128233_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp135229))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135228 '()))))
                                             (declare (not safe))
                                             (cons __tmp135230 __tmp135227))))
                                      (declare (not safe))
                                      (cons __tmp135232 __tmp135226))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp135225))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp135224 _stx128232_))))
                  (___kont134336134337_
                   (lambda (_L128767_ _L128768_ _L128769_ _L128770_)
                     (let ((_$field128805_
                            (let ((__tmp135234
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L128768_))))
                              (declare (not safe))
                              (hash-ref__0 _slots128236_ __tmp135234)))
                           (_expr128806_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L128767_
                               _self128233_
                               _$t128234_
                               _methods128235_
                               _slots128236_
                               _class-check128237_
                               _struct-check128238_
                               _struct-assert128239_))))
                       (let ((__tmp135235
                              (let ((__tmp135236
                                     (let ((__tmp135244
                                            (let ((__tmp135245
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t128234_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135245)))
                                           (__tmp135237
                                            (let ((__tmp135242
                                                   (let ((__tmp135243
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field128805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135243)))
                                                  (__tmp135238
                                                   (let ((__tmp135240
                                                          (let ((__tmp135241
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self128233_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135241)))
                 (__tmp135239
                  (let () (declare (not safe)) (cons _expr128806_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135240
                                                           __tmp135239))))
                                              (declare (not safe))
                                              (cons __tmp135242 __tmp135238))))
                                       (declare (not safe))
                                       (cons __tmp135244 __tmp135237))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp135236))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135235 _stx128232_)))))
                  (___kont134338134339_
                   (lambda (_L128646_ _L128647_)
                     (let* ((_slot128669_
                             (##structure-ref
                              (let ((__tmp135246
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L128647_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp135246))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field128671_
                             (let ()
                               (declare (not safe))
                               (hash-ref__0 _slots128236_ _slot128669_))))
                       (let ((__tmp135247
                              (let ((__tmp135248
                                     (let ((__tmp135255
                                            (let ((__tmp135256
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t128234_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135256)))
                                           (__tmp135249
                                            (let ((__tmp135253
                                                   (let ((__tmp135254
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field128671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135254)))
                                                  (__tmp135250
                                                   (let ((__tmp135251
                                                          (let ((__tmp135252
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self128233_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135252))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135251 '()))))
                                              (declare (not safe))
                                              (cons __tmp135253 __tmp135250))))
                                       (declare (not safe))
                                       (cons __tmp135255 __tmp135249))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp135248))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135247 _stx128232_)))))
                  (___kont134340134341_
                   (lambda (_L128547_ _L128548_ _L128549_)
                     (let* ((_slot128578_
                             (##structure-ref
                              (let ((__tmp135257
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L128549_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp135257))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field128580_
                             (let ()
                               (declare (not safe))
                               (hash-ref__0 _slots128236_ _slot128578_)))
                            (_expr128582_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L128547_
                                _self128233_
                                _$t128234_
                                _methods128235_
                                _slots128236_
                                _class-check128237_
                                _struct-check128238_
                                _struct-assert128239_))))
                       (let ((__tmp135258
                              (let ((__tmp135259
                                     (let ((__tmp135267
                                            (let ((__tmp135268
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t128234_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135268)))
                                           (__tmp135260
                                            (let ((__tmp135265
                                                   (let ((__tmp135266
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field128580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135266)))
                                                  (__tmp135261
                                                   (let ((__tmp135263
                                                          (let ((__tmp135264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self128233_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135264)))
                 (__tmp135262
                  (let () (declare (not safe)) (cons _expr128582_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135263
                                                           __tmp135262))))
                                              (declare (not safe))
                                              (cons __tmp135265 __tmp135261))))
                                       (declare (not safe))
                                       (cons __tmp135267 __tmp135260))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp135259))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135258 _stx128232_)))))
                  (___kont134342134343_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx128232_
                        _self128233_
                        _$t128234_
                        _methods128235_
                        _slots128236_
                        _class-check128237_
                        _struct-check128238_
                        _struct-assert128239_)))))
              (let* ((___match134823134824_
                      (lambda (_e128445128483_
                               _hd128444128486_
                               _tl128443128488_
                               _e128448128491_
                               _hd128447128494_
                               _tl128446128496_
                               _e128451128499_
                               _hd128450128502_
                               _tl128449128504_
                               _e128454128507_
                               _hd128453128510_
                               _tl128452128512_
                               _e128457128515_
                               _hd128456128518_
                               _tl128455128520_
                               _e128460128523_
                               _hd128459128526_
                               _tl128458128528_
                               _e128463128531_
                               _hd128462128534_
                               _tl128461128536_
                               _e128466128539_
                               _hd128465128542_
                               _tl128464128544_)
                        (let ((_L128547_ _hd128465128542_)
                              (_L128548_ _hd128462128534_)
                              (_L128549_ _hd128453128510_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128548_
                                      _self128233_))
                                   (let ((__tmp135269
                                          (let ((__tmp135270
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L128549_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135270))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135269
                                      'gxc#!mutator::t)))
                              (___kont134340134341_
                               _L128547_
                               _L128548_
                               _L128549_)
                              (___kont134342134343_)))))
                     (___match134821134822_
                      (lambda (_e128445128483_
                               _hd128444128486_
                               _tl128443128488_
                               _e128448128491_
                               _hd128447128494_
                               _tl128446128496_
                               _e128451128499_
                               _hd128450128502_
                               _tl128449128504_
                               _e128454128507_
                               _hd128453128510_
                               _tl128452128512_
                               _e128457128515_
                               _hd128456128518_
                               _tl128455128520_
                               _e128460128523_
                               _hd128459128526_
                               _tl128458128528_
                               _e128463128531_
                               _hd128462128534_
                               _tl128461128536_
                               _e128466128539_
                               _hd128465128542_
                               _tl128464128544_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl128464128544_))
                            (___match134823134824_
                             _e128445128483_
                             _hd128444128486_
                             _tl128443128488_
                             _e128448128491_
                             _hd128447128494_
                             _tl128446128496_
                             _e128451128499_
                             _hd128450128502_
                             _tl128449128504_
                             _e128454128507_
                             _hd128453128510_
                             _tl128452128512_
                             _e128457128515_
                             _hd128456128518_
                             _tl128455128520_
                             _e128460128523_
                             _hd128459128526_
                             _tl128458128528_
                             _e128463128531_
                             _hd128462128534_
                             _tl128461128536_
                             _e128466128539_
                             _hd128465128542_
                             _tl128464128544_)
                            (___kont134342134343_))))
                     (___match134815134816_
                      (lambda (_e128445128483_
                               _hd128444128486_
                               _tl128443128488_
                               _e128448128491_
                               _hd128447128494_
                               _tl128446128496_
                               _e128451128499_
                               _hd128450128502_
                               _tl128449128504_
                               _e128454128507_
                               _hd128453128510_
                               _tl128452128512_
                               _e128457128515_
                               _hd128456128518_
                               _tl128455128520_
                               _e128460128523_
                               _hd128459128526_
                               _tl128458128528_
                               _e128463128531_
                               _hd128462128534_
                               _tl128461128536_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128455128520_))
                            (let ((_e128466128539_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128455128520_))))
                              (let ((_tl128464128544_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128466128539_)))
                                    (_hd128465128542_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128466128539_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl128464128544_))
                                    (___match134823134824_
                                     _e128445128483_
                                     _hd128444128486_
                                     _tl128443128488_
                                     _e128448128491_
                                     _hd128447128494_
                                     _tl128446128496_
                                     _e128451128499_
                                     _hd128450128502_
                                     _tl128449128504_
                                     _e128454128507_
                                     _hd128453128510_
                                     _tl128452128512_
                                     _e128457128515_
                                     _hd128456128518_
                                     _tl128455128520_
                                     _e128460128523_
                                     _hd128459128526_
                                     _tl128458128528_
                                     _e128463128531_
                                     _hd128462128534_
                                     _tl128461128536_
                                     _e128466128539_
                                     _hd128465128542_
                                     _tl128464128544_)
                                    (___kont134342134343_))))
                            (___kont134342134343_))))
                     (___match134761134762_
                      (lambda (_e128421128590_
                               _hd128420128593_
                               _tl128419128595_
                               _e128424128598_
                               _hd128423128601_
                               _tl128422128603_
                               _e128427128606_
                               _hd128426128609_
                               _tl128425128611_
                               _e128430128614_
                               _hd128429128617_
                               _tl128428128619_
                               _e128433128622_
                               _hd128432128625_
                               _tl128431128627_
                               _e128436128630_
                               _hd128435128633_
                               _tl128434128635_
                               _e128439128638_
                               _hd128438128641_
                               _tl128437128643_)
                        (let ((_L128646_ _hd128438128641_)
                              (_L128647_ _hd128429128617_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128646_
                                      _self128233_))
                                   (let ((__tmp135271
                                          (let ((__tmp135272
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L128647_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135272))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135271
                                      'gxc#!accessor::t)))
                              (___kont134338134339_ _L128646_ _L128647_)
                              (___kont134342134343_)))))
                     (___match134759134760_
                      (lambda (_e128421128590_
                               _hd128420128593_
                               _tl128419128595_
                               _e128424128598_
                               _hd128423128601_
                               _tl128422128603_
                               _e128427128606_
                               _hd128426128609_
                               _tl128425128611_
                               _e128430128614_
                               _hd128429128617_
                               _tl128428128619_
                               _e128433128622_
                               _hd128432128625_
                               _tl128431128627_
                               _e128436128630_
                               _hd128435128633_
                               _tl128434128635_
                               _e128439128638_
                               _hd128438128641_
                               _tl128437128643_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl128431128627_))
                            (___match134761134762_
                             _e128421128590_
                             _hd128420128593_
                             _tl128419128595_
                             _e128424128598_
                             _hd128423128601_
                             _tl128422128603_
                             _e128427128606_
                             _hd128426128609_
                             _tl128425128611_
                             _e128430128614_
                             _hd128429128617_
                             _tl128428128619_
                             _e128433128622_
                             _hd128432128625_
                             _tl128431128627_
                             _e128436128630_
                             _hd128435128633_
                             _tl128434128635_
                             _e128439128638_
                             _hd128438128641_
                             _tl128437128643_)
                            (___match134815134816_
                             _e128421128590_
                             _hd128420128593_
                             _tl128419128595_
                             _e128424128598_
                             _hd128423128601_
                             _tl128422128603_
                             _e128427128606_
                             _hd128426128609_
                             _tl128425128611_
                             _e128430128614_
                             _hd128429128617_
                             _tl128428128619_
                             _e128433128622_
                             _hd128432128625_
                             _tl128431128627_
                             _e128436128630_
                             _hd128435128633_
                             _tl128434128635_
                             _e128439128638_
                             _hd128438128641_
                             _tl128437128643_))))
                     (___match134705134706_
                      (lambda (_e128386128679_
                               _hd128385128682_
                               _tl128384128684_
                               _e128389128687_
                               _hd128388128690_
                               _tl128387128692_
                               _e128392128695_
                               _hd128391128698_
                               _tl128390128700_
                               _e128395128703_
                               _hd128394128706_
                               _tl128393128708_
                               _e128398128711_
                               _hd128397128714_
                               _tl128396128716_
                               _e128401128719_
                               _hd128400128722_
                               _tl128399128724_
                               _e128404128727_
                               _hd128403128730_
                               _tl128402128732_
                               _e128407128735_
                               _hd128406128738_
                               _tl128405128740_
                               _e128410128743_
                               _hd128409128746_
                               _tl128408128748_
                               _e128413128751_
                               _hd128412128754_
                               _tl128411128756_
                               _e128416128759_
                               _hd128415128762_
                               _tl128414128764_)
                        (let ((_L128767_ _hd128415128762_)
                              (_L128768_ _hd128412128754_)
                              (_L128769_ _hd128403128730_)
                              (_L128770_ _hd128394128706_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L128770_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L128770_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128769_
                                      _self128233_)))
                              (___kont134336134337_
                               _L128767_
                               _L128768_
                               _L128769_
                               _L128770_)
                              (___kont134342134343_)))))
                     (___match134697134698_
                      (lambda (_e128386128679_
                               _hd128385128682_
                               _tl128384128684_
                               _e128389128687_
                               _hd128388128690_
                               _tl128387128692_
                               _e128392128695_
                               _hd128391128698_
                               _tl128390128700_
                               _e128395128703_
                               _hd128394128706_
                               _tl128393128708_
                               _e128398128711_
                               _hd128397128714_
                               _tl128396128716_
                               _e128401128719_
                               _hd128400128722_
                               _tl128399128724_
                               _e128404128727_
                               _hd128403128730_
                               _tl128402128732_
                               _e128407128735_
                               _hd128406128738_
                               _tl128405128740_
                               _e128410128743_
                               _hd128409128746_
                               _tl128408128748_
                               _e128413128751_
                               _hd128412128754_
                               _tl128411128756_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128405128740_))
                            (let ((_e128416128759_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128405128740_))))
                              (let ((_tl128414128764_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128416128759_)))
                                    (_hd128415128762_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128416128759_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl128414128764_))
                                    (___match134705134706_
                                     _e128386128679_
                                     _hd128385128682_
                                     _tl128384128684_
                                     _e128389128687_
                                     _hd128388128690_
                                     _tl128387128692_
                                     _e128392128695_
                                     _hd128391128698_
                                     _tl128390128700_
                                     _e128395128703_
                                     _hd128394128706_
                                     _tl128393128708_
                                     _e128398128711_
                                     _hd128397128714_
                                     _tl128396128716_
                                     _e128401128719_
                                     _hd128400128722_
                                     _tl128399128724_
                                     _e128404128727_
                                     _hd128403128730_
                                     _tl128402128732_
                                     _e128407128735_
                                     _hd128406128738_
                                     _tl128405128740_
                                     _e128410128743_
                                     _hd128409128746_
                                     _tl128408128748_
                                     _e128413128751_
                                     _hd128412128754_
                                     _tl128411128756_
                                     _e128416128759_
                                     _hd128415128762_
                                     _tl128414128764_)
                                    (___kont134342134343_))))
                            (___match134821134822_
                             _e128386128679_
                             _hd128385128682_
                             _tl128384128684_
                             _e128389128687_
                             _hd128388128690_
                             _tl128387128692_
                             _e128392128695_
                             _hd128391128698_
                             _tl128390128700_
                             _e128395128703_
                             _hd128394128706_
                             _tl128393128708_
                             _e128398128711_
                             _hd128397128714_
                             _tl128396128716_
                             _e128401128719_
                             _hd128400128722_
                             _tl128399128724_
                             _e128404128727_
                             _hd128403128730_
                             _tl128402128732_
                             _e128407128735_
                             _hd128406128738_
                             _tl128405128740_))))
                     (___match134619134620_
                      (lambda (_e128352128813_
                               _hd128351128816_
                               _tl128350128818_
                               _e128355128821_
                               _hd128354128824_
                               _tl128353128826_
                               _e128358128829_
                               _hd128357128832_
                               _tl128356128834_
                               _e128361128837_
                               _hd128360128840_
                               _tl128359128842_
                               _e128364128845_
                               _hd128363128848_
                               _tl128362128850_
                               _e128367128853_
                               _hd128366128856_
                               _tl128365128858_
                               _e128370128861_
                               _hd128369128864_
                               _tl128368128866_
                               _e128373128869_
                               _hd128372128872_
                               _tl128371128874_
                               _e128376128877_
                               _hd128375128880_
                               _tl128374128882_
                               _e128379128885_
                               _hd128378128888_
                               _tl128377128890_)
                        (let ((_L128893_ _hd128378128888_)
                              (_L128894_ _hd128369128864_)
                              (_L128895_ _hd128360128840_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L128895_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L128895_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128894_
                                      _self128233_)))
                              (___kont134334134335_
                               _L128893_
                               _L128894_
                               _L128895_)
                              (___match134823134824_
                               _e128352128813_
                               _hd128351128816_
                               _tl128350128818_
                               _e128355128821_
                               _hd128354128824_
                               _tl128353128826_
                               _e128358128829_
                               _hd128357128832_
                               _tl128356128834_
                               _e128361128837_
                               _hd128360128840_
                               _tl128359128842_
                               _e128364128845_
                               _hd128363128848_
                               _tl128362128850_
                               _e128367128853_
                               _hd128366128856_
                               _tl128365128858_
                               _e128370128861_
                               _hd128369128864_
                               _tl128368128866_
                               _e128373128869_
                               _hd128372128872_
                               _tl128371128874_)))))
                     (___match134617134618_
                      (lambda (_e128352128813_
                               _hd128351128816_
                               _tl128350128818_
                               _e128355128821_
                               _hd128354128824_
                               _tl128353128826_
                               _e128358128829_
                               _hd128357128832_
                               _tl128356128834_
                               _e128361128837_
                               _hd128360128840_
                               _tl128359128842_
                               _e128364128845_
                               _hd128363128848_
                               _tl128362128850_
                               _e128367128853_
                               _hd128366128856_
                               _tl128365128858_
                               _e128370128861_
                               _hd128369128864_
                               _tl128368128866_
                               _e128373128869_
                               _hd128372128872_
                               _tl128371128874_
                               _e128376128877_
                               _hd128375128880_
                               _tl128374128882_
                               _e128379128885_
                               _hd128378128888_
                               _tl128377128890_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl128371128874_))
                            (___match134619134620_
                             _e128352128813_
                             _hd128351128816_
                             _tl128350128818_
                             _e128355128821_
                             _hd128354128824_
                             _tl128353128826_
                             _e128358128829_
                             _hd128357128832_
                             _tl128356128834_
                             _e128361128837_
                             _hd128360128840_
                             _tl128359128842_
                             _e128364128845_
                             _hd128363128848_
                             _tl128362128850_
                             _e128367128853_
                             _hd128366128856_
                             _tl128365128858_
                             _e128370128861_
                             _hd128369128864_
                             _tl128368128866_
                             _e128373128869_
                             _hd128372128872_
                             _tl128371128874_
                             _e128376128877_
                             _hd128375128880_
                             _tl128374128882_
                             _e128379128885_
                             _hd128378128888_
                             _tl128377128890_)
                            (___match134697134698_
                             _e128352128813_
                             _hd128351128816_
                             _tl128350128818_
                             _e128355128821_
                             _hd128354128824_
                             _tl128353128826_
                             _e128358128829_
                             _hd128357128832_
                             _tl128356128834_
                             _e128361128837_
                             _hd128360128840_
                             _tl128359128842_
                             _e128364128845_
                             _hd128363128848_
                             _tl128362128850_
                             _e128367128853_
                             _hd128366128856_
                             _tl128365128858_
                             _e128370128861_
                             _hd128369128864_
                             _tl128368128866_
                             _e128373128869_
                             _hd128372128872_
                             _tl128371128874_
                             _e128376128877_
                             _hd128375128880_
                             _tl128374128882_
                             _e128379128885_
                             _hd128378128888_
                             _tl128377128890_))))
                     (___match134607134608_
                      (lambda (_e128352128813_
                               _hd128351128816_
                               _tl128350128818_
                               _e128355128821_
                               _hd128354128824_
                               _tl128353128826_
                               _e128358128829_
                               _hd128357128832_
                               _tl128356128834_
                               _e128361128837_
                               _hd128360128840_
                               _tl128359128842_
                               _e128364128845_
                               _hd128363128848_
                               _tl128362128850_
                               _e128367128853_
                               _hd128366128856_
                               _tl128365128858_
                               _e128370128861_
                               _hd128369128864_
                               _tl128368128866_
                               _e128373128869_
                               _hd128372128872_
                               _tl128371128874_
                               _e128376128877_
                               _hd128375128880_
                               _tl128374128882_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd128375128880_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128374128882_))
                                (let ((_e128379128885_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128374128882_))))
                                  (let ((_tl128377128890_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128379128885_)))
                                        (_hd128378128888_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128379128885_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl128377128890_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl128371128874_))
                                            (___match134619134620_
                                             _e128352128813_
                                             _hd128351128816_
                                             _tl128350128818_
                                             _e128355128821_
                                             _hd128354128824_
                                             _tl128353128826_
                                             _e128358128829_
                                             _hd128357128832_
                                             _tl128356128834_
                                             _e128361128837_
                                             _hd128360128840_
                                             _tl128359128842_
                                             _e128364128845_
                                             _hd128363128848_
                                             _tl128362128850_
                                             _e128367128853_
                                             _hd128366128856_
                                             _tl128365128858_
                                             _e128370128861_
                                             _hd128369128864_
                                             _tl128368128866_
                                             _e128373128869_
                                             _hd128372128872_
                                             _tl128371128874_
                                             _e128376128877_
                                             _hd128375128880_
                                             _tl128374128882_
                                             _e128379128885_
                                             _hd128378128888_
                                             _tl128377128890_)
                                            (___match134697134698_
                                             _e128352128813_
                                             _hd128351128816_
                                             _tl128350128818_
                                             _e128355128821_
                                             _hd128354128824_
                                             _tl128353128826_
                                             _e128358128829_
                                             _hd128357128832_
                                             _tl128356128834_
                                             _e128361128837_
                                             _hd128360128840_
                                             _tl128359128842_
                                             _e128364128845_
                                             _hd128363128848_
                                             _tl128362128850_
                                             _e128367128853_
                                             _hd128366128856_
                                             _tl128365128858_
                                             _e128370128861_
                                             _hd128369128864_
                                             _tl128368128866_
                                             _e128373128869_
                                             _hd128372128872_
                                             _tl128371128874_
                                             _e128376128877_
                                             _hd128375128880_
                                             _tl128374128882_
                                             _e128379128885_
                                             _hd128378128888_
                                             _tl128377128890_))
                                        (___match134821134822_
                                         _e128352128813_
                                         _hd128351128816_
                                         _tl128350128818_
                                         _e128355128821_
                                         _hd128354128824_
                                         _tl128353128826_
                                         _e128358128829_
                                         _hd128357128832_
                                         _tl128356128834_
                                         _e128361128837_
                                         _hd128360128840_
                                         _tl128359128842_
                                         _e128364128845_
                                         _hd128363128848_
                                         _tl128362128850_
                                         _e128367128853_
                                         _hd128366128856_
                                         _tl128365128858_
                                         _e128370128861_
                                         _hd128369128864_
                                         _tl128368128866_
                                         _e128373128869_
                                         _hd128372128872_
                                         _tl128371128874_))))
                                (___match134821134822_
                                 _e128352128813_
                                 _hd128351128816_
                                 _tl128350128818_
                                 _e128355128821_
                                 _hd128354128824_
                                 _tl128353128826_
                                 _e128358128829_
                                 _hd128357128832_
                                 _tl128356128834_
                                 _e128361128837_
                                 _hd128360128840_
                                 _tl128359128842_
                                 _e128364128845_
                                 _hd128363128848_
                                 _tl128362128850_
                                 _e128367128853_
                                 _hd128366128856_
                                 _tl128365128858_
                                 _e128370128861_
                                 _hd128369128864_
                                 _tl128368128866_
                                 _e128373128869_
                                 _hd128372128872_
                                 _tl128371128874_))
                            (___match134821134822_
                             _e128352128813_
                             _hd128351128816_
                             _tl128350128818_
                             _e128355128821_
                             _hd128354128824_
                             _tl128353128826_
                             _e128358128829_
                             _hd128357128832_
                             _tl128356128834_
                             _e128361128837_
                             _hd128360128840_
                             _tl128359128842_
                             _e128364128845_
                             _hd128363128848_
                             _tl128362128850_
                             _e128367128853_
                             _hd128366128856_
                             _tl128365128858_
                             _e128370128861_
                             _hd128369128864_
                             _tl128368128866_
                             _e128373128869_
                             _hd128372128872_
                             _tl128371128874_))))
                     (___match134539134540_
                      (lambda (_e128301128934_
                               _hd128300128937_
                               _tl128299128939_
                               _e128304128942_
                               _hd128303128945_
                               _tl128302128947_
                               _e128307128950_
                               _hd128306128953_
                               _tl128305128955_
                               _e128310128958_
                               _hd128309128961_
                               _tl128308128963_
                               _e128313128966_
                               _hd128312128969_
                               _tl128311128971_
                               _e128316128974_
                               _hd128315128977_
                               _tl128314128979_
                               _e128319128982_
                               _hd128318128985_
                               _tl128317128987_
                               _e128322128990_
                               _hd128321128993_
                               _tl128320128995_
                               _e128325128998_
                               _hd128324129001_
                               _tl128323129003_
                               _e128328129006_
                               _hd128327129009_
                               _tl128326129011_
                               _e128331129014_
                               _hd128330129017_
                               _tl128329129019_
                               _e128334129022_
                               _hd128333129025_
                               _tl128332129027_
                               _e128337129030_
                               _hd128336129033_
                               _tl128335129035_
                               ___splice134332134333_
                               _target128338129038_
                               _tl128340129040_)
                        (letrec ((_loop128341129043_
                                  (lambda (_hd128339129046_ _args128345129048_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd128339129046_))
                                        (let ((_e128342129051_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd128339129046_))))
                                          (let ((_lp-tl128344129056_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128342129051_)))
                                                (_lp-hd128343129054_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128342129051_))))
                                            (let ((__tmp135273
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd128343129054_
                                                           _args128345129048_))))
                                              (declare (not safe))
                                              (_loop128341129043_
                                               _lp-tl128344129056_
                                               __tmp135273))))
                                        (let ((_args128346129059_
                                               (reverse _args128345129048_)))
                                          (let ((_L129062_ _args128346129059_)
                                                (_L129063_ _hd128336129033_)
                                                (_L129064_ _hd128327129009_)
                                                (_L129065_ _hd128318128985_)
                                                (_L129066_ _hd128309128961_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L129066_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L129065_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L129064_
                                                        _self128233_)))
                                                (___kont134330134331_
                                                 _L129062_
                                                 _L129063_
                                                 _L129064_
                                                 _L129065_
                                                 _L129066_)
                                                (___kont134342134343_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop128341129043_ _target128338129038_ '())))))
                     (___match134497134498_
                      (lambda (_e128301128934_
                               _hd128300128937_
                               _tl128299128939_
                               _e128304128942_
                               _hd128303128945_
                               _tl128302128947_
                               _e128307128950_
                               _hd128306128953_
                               _tl128305128955_
                               _e128310128958_
                               _hd128309128961_
                               _tl128308128963_
                               _e128313128966_
                               _hd128312128969_
                               _tl128311128971_
                               _e128316128974_
                               _hd128315128977_
                               _tl128314128979_
                               _e128319128982_
                               _hd128318128985_
                               _tl128317128987_
                               _e128322128990_
                               _hd128321128993_
                               _tl128320128995_
                               _e128325128998_
                               _hd128324129001_
                               _tl128323129003_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd128324129001_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128323129003_))
                                (let ((_e128328129006_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128323129003_))))
                                  (let ((_tl128326129011_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128328129006_)))
                                        (_hd128327129009_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128328129006_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl128326129011_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl128320128995_))
                                            (let ((_e128331129014_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl128320128995_))))
                                              (let ((_tl128329129019_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e128331129014_)))
                                                    (_hd128330129017_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e128331129014_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd128330129017_))
                                                    (let ((_e128334129022_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd128330129017_))))
                                                      (let ((_tl128332129027_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e128334129022_)))
                    (_hd128333129025_
                     (let () (declare (not safe)) (##car _e128334129022_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd128333129025_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd128333129025_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128332129027_))
                            (let ((_e128337129030_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128332129027_))))
                              (let ((_tl128335129035_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128337129030_)))
                                    (_hd128336129033_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128337129030_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl128335129035_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl128329129019_))
                                        (let ((___splice134332134333_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl128329129019_
                                                  '0))))
                                          (let ((_tl128340129040_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice134332134333_
                                                    '1)))
                                                (_target128338129038_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice134332134333_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl128340129040_))
                                                (___match134539134540_
                                                 _e128301128934_
                                                 _hd128300128937_
                                                 _tl128299128939_
                                                 _e128304128942_
                                                 _hd128303128945_
                                                 _tl128302128947_
                                                 _e128307128950_
                                                 _hd128306128953_
                                                 _tl128305128955_
                                                 _e128310128958_
                                                 _hd128309128961_
                                                 _tl128308128963_
                                                 _e128313128966_
                                                 _hd128312128969_
                                                 _tl128311128971_
                                                 _e128316128974_
                                                 _hd128315128977_
                                                 _tl128314128979_
                                                 _e128319128982_
                                                 _hd128318128985_
                                                 _tl128317128987_
                                                 _e128322128990_
                                                 _hd128321128993_
                                                 _tl128320128995_
                                                 _e128325128998_
                                                 _hd128324129001_
                                                 _tl128323129003_
                                                 _e128328129006_
                                                 _hd128327129009_
                                                 _tl128326129011_
                                                 _e128331129014_
                                                 _hd128330129017_
                                                 _tl128329129019_
                                                 _e128334129022_
                                                 _hd128333129025_
                                                 _tl128332129027_
                                                 _e128337129030_
                                                 _hd128336129033_
                                                 _tl128335129035_
                                                 ___splice134332134333_
                                                 _target128338129038_
                                                 _tl128340129040_)
                                                (___kont134342134343_))))
                                        (___kont134342134343_))
                                    (___kont134342134343_))))
                            (___kont134342134343_))
                        (___kont134342134343_))
                    (___kont134342134343_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134342134343_))))
                                            (___match134821134822_
                                             _e128301128934_
                                             _hd128300128937_
                                             _tl128299128939_
                                             _e128304128942_
                                             _hd128303128945_
                                             _tl128302128947_
                                             _e128307128950_
                                             _hd128306128953_
                                             _tl128305128955_
                                             _e128310128958_
                                             _hd128309128961_
                                             _tl128308128963_
                                             _e128313128966_
                                             _hd128312128969_
                                             _tl128311128971_
                                             _e128316128974_
                                             _hd128315128977_
                                             _tl128314128979_
                                             _e128319128982_
                                             _hd128318128985_
                                             _tl128317128987_
                                             _e128322128990_
                                             _hd128321128993_
                                             _tl128320128995_))
                                        (___match134821134822_
                                         _e128301128934_
                                         _hd128300128937_
                                         _tl128299128939_
                                         _e128304128942_
                                         _hd128303128945_
                                         _tl128302128947_
                                         _e128307128950_
                                         _hd128306128953_
                                         _tl128305128955_
                                         _e128310128958_
                                         _hd128309128961_
                                         _tl128308128963_
                                         _e128313128966_
                                         _hd128312128969_
                                         _tl128311128971_
                                         _e128316128974_
                                         _hd128315128977_
                                         _tl128314128979_
                                         _e128319128982_
                                         _hd128318128985_
                                         _tl128317128987_
                                         _e128322128990_
                                         _hd128321128993_
                                         _tl128320128995_))))
                                (___match134821134822_
                                 _e128301128934_
                                 _hd128300128937_
                                 _tl128299128939_
                                 _e128304128942_
                                 _hd128303128945_
                                 _tl128302128947_
                                 _e128307128950_
                                 _hd128306128953_
                                 _tl128305128955_
                                 _e128310128958_
                                 _hd128309128961_
                                 _tl128308128963_
                                 _e128313128966_
                                 _hd128312128969_
                                 _tl128311128971_
                                 _e128316128974_
                                 _hd128315128977_
                                 _tl128314128979_
                                 _e128319128982_
                                 _hd128318128985_
                                 _tl128317128987_
                                 _e128322128990_
                                 _hd128321128993_
                                 _tl128320128995_))
                            (___match134607134608_
                             _e128301128934_
                             _hd128300128937_
                             _tl128299128939_
                             _e128304128942_
                             _hd128303128945_
                             _tl128302128947_
                             _e128307128950_
                             _hd128306128953_
                             _tl128305128955_
                             _e128310128958_
                             _hd128309128961_
                             _tl128308128963_
                             _e128313128966_
                             _hd128312128969_
                             _tl128311128971_
                             _e128316128974_
                             _hd128315128977_
                             _tl128314128979_
                             _e128319128982_
                             _hd128318128985_
                             _tl128317128987_
                             _e128322128990_
                             _hd128321128993_
                             _tl128320128995_
                             _e128325128998_
                             _hd128324129001_
                             _tl128323129003_))))
                     (___match134429134430_
                      (lambda (_e128257129126_
                               _hd128256129129_
                               _tl128255129131_
                               _e128260129134_
                               _hd128259129137_
                               _tl128258129139_
                               _e128263129142_
                               _hd128262129145_
                               _tl128261129147_
                               _e128266129150_
                               _hd128265129153_
                               _tl128264129155_
                               _e128269129158_
                               _hd128268129161_
                               _tl128267129163_
                               _e128272129166_
                               _hd128271129169_
                               _tl128270129171_
                               _e128275129174_
                               _hd128274129177_
                               _tl128273129179_
                               _e128278129182_
                               _hd128277129185_
                               _tl128276129187_
                               _e128281129190_
                               _hd128280129193_
                               _tl128279129195_
                               _e128284129198_
                               _hd128283129201_
                               _tl128282129203_
                               ___splice134328134329_
                               _target128285129206_
                               _tl128287129208_)
                        (letrec ((_loop128288129211_
                                  (lambda (_hd128286129214_ _args128292129216_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd128286129214_))
                                        (let ((_e128289129219_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd128286129214_))))
                                          (let ((_lp-tl128291129224_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128289129219_)))
                                                (_lp-hd128290129222_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128289129219_))))
                                            (let ((__tmp135274
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd128290129222_
                                                           _args128292129216_))))
                                              (declare (not safe))
                                              (_loop128288129211_
                                               _lp-tl128291129224_
                                               __tmp135274))))
                                        (let ((_args128293129227_
                                               (reverse _args128292129216_)))
                                          (let ((_L129230_ _args128293129227_)
                                                (_L129231_ _hd128283129201_)
                                                (_L129232_ _hd128274129177_)
                                                (_L129233_ _hd128265129153_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L129233_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L129232_
                                                        _self128233_)))
                                                (___kont134326134327_
                                                 _L129230_
                                                 _L129231_
                                                 _L129232_
                                                 _L129233_)
                                                (___match134617134618_
                                                 _e128257129126_
                                                 _hd128256129129_
                                                 _tl128255129131_
                                                 _e128260129134_
                                                 _hd128259129137_
                                                 _tl128258129139_
                                                 _e128263129142_
                                                 _hd128262129145_
                                                 _tl128261129147_
                                                 _e128266129150_
                                                 _hd128265129153_
                                                 _tl128264129155_
                                                 _e128269129158_
                                                 _hd128268129161_
                                                 _tl128267129163_
                                                 _e128272129166_
                                                 _hd128271129169_
                                                 _tl128270129171_
                                                 _e128275129174_
                                                 _hd128274129177_
                                                 _tl128273129179_
                                                 _e128278129182_
                                                 _hd128277129185_
                                                 _tl128276129187_
                                                 _e128281129190_
                                                 _hd128280129193_
                                                 _tl128279129195_
                                                 _e128284129198_
                                                 _hd128283129201_
                                                 _tl128282129203_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop128288129211_ _target128285129206_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx134324134325_))
                    (let ((_e128257129126_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx134324134325_))))
                      (let ((_tl128255129131_
                             (let ()
                               (declare (not safe))
                               (##cdr _e128257129126_)))
                            (_hd128256129129_
                             (let ()
                               (declare (not safe))
                               (##car _e128257129126_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128255129131_))
                            (let ((_e128260129134_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128255129131_))))
                              (let ((_tl128258129139_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128260129134_)))
                                    (_hd128259129137_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128260129134_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd128259129137_))
                                    (let ((_e128263129142_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd128259129137_))))
                                      (let ((_tl128261129147_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e128263129142_)))
                                            (_hd128262129145_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e128263129142_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd128262129145_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd128262129145_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl128261129147_))
                                                    (let ((_e128266129150_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl128261129147_))))
                                                      (let ((_tl128264129155_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e128266129150_)))
                    (_hd128265129153_
                     (let () (declare (not safe)) (##car _e128266129150_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl128264129155_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl128258129139_))
                        (let ((_e128269129158_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl128258129139_))))
                          (let ((_tl128267129163_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e128269129158_)))
                                (_hd128268129161_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e128269129158_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd128268129161_))
                                (let ((_e128272129166_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd128268129161_))))
                                  (let ((_tl128270129171_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128272129166_)))
                                        (_hd128271129169_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128272129166_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd128271129169_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd128271129169_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl128270129171_))
                                                (let ((_e128275129174_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl128270129171_))))
                                                  (let ((_tl128273129179_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e128275129174_)))
                                                        (_hd128274129177_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e128275129174_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl128273129179_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl128267129163_))
                                                            (let ((_e128278129182_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl128267129163_))))
                      (let ((_tl128276129187_
                             (let ()
                               (declare (not safe))
                               (##cdr _e128278129182_)))
                            (_hd128277129185_
                             (let ()
                               (declare (not safe))
                               (##car _e128278129182_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd128277129185_))
                            (let ((_e128281129190_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd128277129185_))))
                              (let ((_tl128279129195_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128281129190_)))
                                    (_hd128280129193_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128281129190_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd128280129193_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd128280129193_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl128279129195_))
                                            (let ((_e128284129198_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl128279129195_))))
                                              (let ((_tl128282129203_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e128284129198_)))
                                                    (_hd128283129201_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e128284129198_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl128282129203_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl128276129187_))
                                                        (let ((___splice134328134329_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl128276129187_ '0))))
                  (let ((_tl128287129208_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice134328134329_ '1)))
                        (_target128285129206_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice134328134329_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl128287129208_))
                        (___match134429134430_
                         _e128257129126_
                         _hd128256129129_
                         _tl128255129131_
                         _e128260129134_
                         _hd128259129137_
                         _tl128258129139_
                         _e128263129142_
                         _hd128262129145_
                         _tl128261129147_
                         _e128266129150_
                         _hd128265129153_
                         _tl128264129155_
                         _e128269129158_
                         _hd128268129161_
                         _tl128267129163_
                         _e128272129166_
                         _hd128271129169_
                         _tl128270129171_
                         _e128275129174_
                         _hd128274129177_
                         _tl128273129179_
                         _e128278129182_
                         _hd128277129185_
                         _tl128276129187_
                         _e128281129190_
                         _hd128280129193_
                         _tl128279129195_
                         _e128284129198_
                         _hd128283129201_
                         _tl128282129203_
                         ___splice134328134329_
                         _target128285129206_
                         _tl128287129208_)
                        (___match134617134618_
                         _e128257129126_
                         _hd128256129129_
                         _tl128255129131_
                         _e128260129134_
                         _hd128259129137_
                         _tl128258129139_
                         _e128263129142_
                         _hd128262129145_
                         _tl128261129147_
                         _e128266129150_
                         _hd128265129153_
                         _tl128264129155_
                         _e128269129158_
                         _hd128268129161_
                         _tl128267129163_
                         _e128272129166_
                         _hd128271129169_
                         _tl128270129171_
                         _e128275129174_
                         _hd128274129177_
                         _tl128273129179_
                         _e128278129182_
                         _hd128277129185_
                         _tl128276129187_
                         _e128281129190_
                         _hd128280129193_
                         _tl128279129195_
                         _e128284129198_
                         _hd128283129201_
                         _tl128282129203_))))
                (___match134617134618_
                 _e128257129126_
                 _hd128256129129_
                 _tl128255129131_
                 _e128260129134_
                 _hd128259129137_
                 _tl128258129139_
                 _e128263129142_
                 _hd128262129145_
                 _tl128261129147_
                 _e128266129150_
                 _hd128265129153_
                 _tl128264129155_
                 _e128269129158_
                 _hd128268129161_
                 _tl128267129163_
                 _e128272129166_
                 _hd128271129169_
                 _tl128270129171_
                 _e128275129174_
                 _hd128274129177_
                 _tl128273129179_
                 _e128278129182_
                 _hd128277129185_
                 _tl128276129187_
                 _e128281129190_
                 _hd128280129193_
                 _tl128279129195_
                 _e128284129198_
                 _hd128283129201_
                 _tl128282129203_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match134821134822_
                                                     _e128257129126_
                                                     _hd128256129129_
                                                     _tl128255129131_
                                                     _e128260129134_
                                                     _hd128259129137_
                                                     _tl128258129139_
                                                     _e128263129142_
                                                     _hd128262129145_
                                                     _tl128261129147_
                                                     _e128266129150_
                                                     _hd128265129153_
                                                     _tl128264129155_
                                                     _e128269129158_
                                                     _hd128268129161_
                                                     _tl128267129163_
                                                     _e128272129166_
                                                     _hd128271129169_
                                                     _tl128270129171_
                                                     _e128275129174_
                                                     _hd128274129177_
                                                     _tl128273129179_
                                                     _e128278129182_
                                                     _hd128277129185_
                                                     _tl128276129187_))))
                                            (___match134821134822_
                                             _e128257129126_
                                             _hd128256129129_
                                             _tl128255129131_
                                             _e128260129134_
                                             _hd128259129137_
                                             _tl128258129139_
                                             _e128263129142_
                                             _hd128262129145_
                                             _tl128261129147_
                                             _e128266129150_
                                             _hd128265129153_
                                             _tl128264129155_
                                             _e128269129158_
                                             _hd128268129161_
                                             _tl128267129163_
                                             _e128272129166_
                                             _hd128271129169_
                                             _tl128270129171_
                                             _e128275129174_
                                             _hd128274129177_
                                             _tl128273129179_
                                             _e128278129182_
                                             _hd128277129185_
                                             _tl128276129187_))
                                        (___match134497134498_
                                         _e128257129126_
                                         _hd128256129129_
                                         _tl128255129131_
                                         _e128260129134_
                                         _hd128259129137_
                                         _tl128258129139_
                                         _e128263129142_
                                         _hd128262129145_
                                         _tl128261129147_
                                         _e128266129150_
                                         _hd128265129153_
                                         _tl128264129155_
                                         _e128269129158_
                                         _hd128268129161_
                                         _tl128267129163_
                                         _e128272129166_
                                         _hd128271129169_
                                         _tl128270129171_
                                         _e128275129174_
                                         _hd128274129177_
                                         _tl128273129179_
                                         _e128278129182_
                                         _hd128277129185_
                                         _tl128276129187_
                                         _e128281129190_
                                         _hd128280129193_
                                         _tl128279129195_))
                                    (___match134821134822_
                                     _e128257129126_
                                     _hd128256129129_
                                     _tl128255129131_
                                     _e128260129134_
                                     _hd128259129137_
                                     _tl128258129139_
                                     _e128263129142_
                                     _hd128262129145_
                                     _tl128261129147_
                                     _e128266129150_
                                     _hd128265129153_
                                     _tl128264129155_
                                     _e128269129158_
                                     _hd128268129161_
                                     _tl128267129163_
                                     _e128272129166_
                                     _hd128271129169_
                                     _tl128270129171_
                                     _e128275129174_
                                     _hd128274129177_
                                     _tl128273129179_
                                     _e128278129182_
                                     _hd128277129185_
                                     _tl128276129187_))))
                            (___match134821134822_
                             _e128257129126_
                             _hd128256129129_
                             _tl128255129131_
                             _e128260129134_
                             _hd128259129137_
                             _tl128258129139_
                             _e128263129142_
                             _hd128262129145_
                             _tl128261129147_
                             _e128266129150_
                             _hd128265129153_
                             _tl128264129155_
                             _e128269129158_
                             _hd128268129161_
                             _tl128267129163_
                             _e128272129166_
                             _hd128271129169_
                             _tl128270129171_
                             _e128275129174_
                             _hd128274129177_
                             _tl128273129179_
                             _e128278129182_
                             _hd128277129185_
                             _tl128276129187_))))
                    (___match134759134760_
                     _e128257129126_
                     _hd128256129129_
                     _tl128255129131_
                     _e128260129134_
                     _hd128259129137_
                     _tl128258129139_
                     _e128263129142_
                     _hd128262129145_
                     _tl128261129147_
                     _e128266129150_
                     _hd128265129153_
                     _tl128264129155_
                     _e128269129158_
                     _hd128268129161_
                     _tl128267129163_
                     _e128272129166_
                     _hd128271129169_
                     _tl128270129171_
                     _e128275129174_
                     _hd128274129177_
                     _tl128273129179_))
                (___kont134342134343_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont134342134343_))
                                            (___kont134342134343_))
                                        (___kont134342134343_))))
                                (___kont134342134343_))))
                        (___kont134342134343_))
                    (___kont134342134343_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134342134343_))
                                                (___kont134342134343_))
                                            (___kont134342134343_))))
                                    (___kont134342134343_))))
                            (___kont134342134343_))))
                    (___kont134342134343_))))))))))
