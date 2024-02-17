(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1708203249)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl242681_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp247876 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl242681_ __tmp247876))
           (let ()
             (declare (not safe))
             (table-set! _tbl242681_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl242681_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl242681_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242681_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl242681_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx242664_ . _args242666_)
        (let ((__tmp247878
               (lambda ()
                 (declare (not safe))
                 (if (null? _args242666_)
                     (gxc#compile-e__0 _stx242664_)
                     (let ((_arg1242671_ (car _args242666_))
                           (_rest242673_ (cdr _args242666_)))
                       (if (null? _rest242673_)
                           (gxc#compile-e__1 _stx242664_ _arg1242671_)
                           (let ((_arg2242676_ (car _rest242673_))
                                 (_rest242678_ (cdr _rest242673_)))
                             (if (null? _rest242678_)
                                 (gxc#compile-e__2
                                  _stx242664_
                                  _arg1242671_
                                  _arg2242676_)
                                 (apply gxc#compile-e
                                        _stx242664_
                                        _arg1242671_
                                        _arg2242676_
                                        _rest242678_))))))))
              (__tmp247877 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp247878
           gxc#current-compile-methods
           __tmp247877))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl242661_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp247879 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl242661_ __tmp247879))
           (let ()
             (declare (not safe))
             (table-set! _tbl242661_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242661_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl242661_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242661_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242661_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242661_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242661_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl242661_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl242661_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl242661_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl242661_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl242661_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242661_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242661_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242661_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242661_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl242661_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx242644_ . _args242646_)
        (let ((__tmp247881
               (lambda ()
                 (declare (not safe))
                 (if (null? _args242646_)
                     (gxc#compile-e__0 _stx242644_)
                     (let ((_arg1242651_ (car _args242646_))
                           (_rest242653_ (cdr _args242646_)))
                       (if (null? _rest242653_)
                           (gxc#compile-e__1 _stx242644_ _arg1242651_)
                           (let ((_arg2242656_ (car _rest242653_))
                                 (_rest242658_ (cdr _rest242653_)))
                             (if (null? _rest242658_)
                                 (gxc#compile-e__2
                                  _stx242644_
                                  _arg1242651_
                                  _arg2242656_)
                                 (apply gxc#compile-e
                                        _stx242644_
                                        _arg1242651_
                                        _arg2242656_
                                        _rest242658_))))))))
              (__tmp247880 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp247881
           gxc#current-compile-methods
           __tmp247880))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl242641_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp247882 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl242641_ __tmp247882))
           (let ()
             (declare (not safe))
             (table-set! _tbl242641_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl242641_ '%#call gxc#subst-object-refs-call%))
           _tbl242641_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx242624_ . _args242626_)
        (let ((__tmp247884
               (lambda ()
                 (declare (not safe))
                 (if (null? _args242626_)
                     (gxc#compile-e__0 _stx242624_)
                     (let ((_arg1242631_ (car _args242626_))
                           (_rest242633_ (cdr _args242626_)))
                       (if (null? _rest242633_)
                           (gxc#compile-e__1 _stx242624_ _arg1242631_)
                           (let ((_arg2242636_ (car _rest242633_))
                                 (_rest242638_ (cdr _rest242633_)))
                             (if (null? _rest242638_)
                                 (gxc#compile-e__2
                                  _stx242624_
                                  _arg1242631_
                                  _arg2242636_)
                                 (apply gxc#compile-e
                                        _stx242624_
                                        _arg1242631_
                                        _arg2242636_
                                        _rest242638_))))))))
              (__tmp247883 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp247884
           gxc#current-compile-methods
           __tmp247883))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx239294_)
        (letrec ((_generate-method-bind239296_
                  (lambda (_$t242618_ _id242619_ _$id242620_)
                    (let ((_$tmp242622_
                           (let ((__tmp247885 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp247885))))
                      (let ((__tmp247933
                             (let ()
                               (declare (not safe))
                               (cons _$id242620_ '())))
                            (__tmp247886
                             (let ((__tmp247887
                                    (let ((__tmp247888
                                           (let ((__tmp247931
                                                  (let ((__tmp247932
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp247932)))
                                                 (__tmp247889
                                                  (let ((__tmp247890
                                                         (let ((__tmp247891
                                                                (let ((__tmp247892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp247893
                                      (let ((__tmp247894
                                             (let ((__tmp247914
                                                    (let ((__tmp247915
                                                           (let ((__tmp247930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp242622_ '())))
                         (__tmp247916
                          (let ((__tmp247917
                                 (let ((__tmp247918
                                        (let ((__tmp247928
                                               (let ((__tmp247929
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp247929)))
                                              (__tmp247919
                                               (let ((__tmp247926
                                                      (let ((__tmp247927
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t242618_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp247927)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp247920
                                                      (let ((__tmp247924
                                                             (let ((__tmp247925
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp247925)))
                    (__tmp247921
                     (let ((__tmp247922
                            (let ((__tmp247923
                                   (let ()
                                     (declare (not safe))
                                     (cons _id242619_ '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp247923))))
                       (declare (not safe))
                       (cons __tmp247922 '()))))
                (declare (not safe))
                (cons __tmp247924 __tmp247921))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp247926
                                                       __tmp247920))))
                                          (declare (not safe))
                                          (cons __tmp247928 __tmp247919))))
                                   (declare (not safe))
                                   (cons '%#call __tmp247918))))
                            (declare (not safe))
                            (cons __tmp247917 '()))))
                     (declare (not safe))
                     (cons __tmp247930 __tmp247916))))
              (declare (not safe))
              (cons __tmp247915 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp247895
                                                    (let ((__tmp247896
                                                           (let ((__tmp247897
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp247912
                                 (let ((__tmp247913
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp242622_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp247913)))
                                (__tmp247898
                                 (let ((__tmp247910
                                        (let ((__tmp247911
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp242622_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp247911)))
                                       (__tmp247899
                                        (let ((__tmp247900
                                               (let ((__tmp247901
                                                      (let ((__tmp247908
                                                             (let ((__tmp247909
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp247909)))
                    (__tmp247902
                     (let ((__tmp247906
                            (let ((__tmp247907
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp247907)))
                           (__tmp247903
                            (let ((__tmp247904
                                   (let ((__tmp247905
                                          (let ()
                                            (declare (not safe))
                                            (cons _id242619_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp247905))))
                              (declare (not safe))
                              (cons __tmp247904 '()))))
                       (declare (not safe))
                       (cons __tmp247906 __tmp247903))))
                (declare (not safe))
                (cons __tmp247908 __tmp247902))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp247901))))
                                          (declare (not safe))
                                          (cons __tmp247900 '()))))
                                   (declare (not safe))
                                   (cons __tmp247910 __tmp247899))))
                            (declare (not safe))
                            (cons __tmp247912 __tmp247898))))
                     (declare (not safe))
                     (cons '%#if __tmp247897))))
              (declare (not safe))
              (cons __tmp247896 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp247914
                                                     __tmp247895))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp247894))))
                                 (declare (not safe))
                                 (cons __tmp247893 '()))))
                          (declare (not safe))
                          (cons '() __tmp247892))))
                   (declare (not safe))
                   (cons '%#lambda __tmp247891))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp247890 '()))))
                                             (declare (not safe))
                                             (cons __tmp247931 __tmp247889))))
                                      (declare (not safe))
                                      (cons '%#call __tmp247888))))
                               (declare (not safe))
                               (cons __tmp247887 '()))))
                        (declare (not safe))
                        (cons __tmp247933 __tmp247886)))))
                 (_generate-slot-bind239297_
                  (lambda (_$t242612_ _id242613_ _$id242614_)
                    (let ((_$tmp242616_
                           (let ((__tmp247934 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp247934))))
                      (let ((__tmp247971
                             (let ()
                               (declare (not safe))
                               (cons _$id242614_ '())))
                            (__tmp247935
                             (let ((__tmp247936
                                    (let ((__tmp247937
                                           (let ((__tmp247957
                                                  (let ((__tmp247958
                                                         (let ((__tmp247970
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp242616_ '())))
                       (__tmp247959
                        (let ((__tmp247960
                               (let ((__tmp247961
                                      (let ((__tmp247968
                                             (let ((__tmp247969
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp247969)))
                                            (__tmp247962
                                             (let ((__tmp247966
                                                    (let ((__tmp247967
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t242612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp247967)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp247963
                                                    (let ((__tmp247964
                                                           (let ((__tmp247965
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id242613_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp247965))))
              (declare (not safe))
              (cons __tmp247964 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp247966
                                                     __tmp247963))))
                                        (declare (not safe))
                                        (cons __tmp247968 __tmp247962))))
                                 (declare (not safe))
                                 (cons '%#call __tmp247961))))
                          (declare (not safe))
                          (cons __tmp247960 '()))))
                   (declare (not safe))
                   (cons __tmp247970 __tmp247959))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp247958 '())))
                                                 (__tmp247938
                                                  (let ((__tmp247939
                                                         (let ((__tmp247940
                                                                (let ((__tmp247955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp247956
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp242616_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp247956)))
                              (__tmp247941
                               (let ((__tmp247953
                                      (let ((__tmp247954
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp242616_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp247954)))
                                     (__tmp247942
                                      (let ((__tmp247943
                                             (let ((__tmp247944
                                                    (let ((__tmp247951
                                                           (let ((__tmp247952
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp247952)))
                  (__tmp247945
                   (let ((__tmp247949
                          (let ((__tmp247950
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp247950)))
                         (__tmp247946
                          (let ((__tmp247947
                                 (let ((__tmp247948
                                        (let ()
                                          (declare (not safe))
                                          (cons _id242613_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp247948))))
                            (declare (not safe))
                            (cons __tmp247947 '()))))
                     (declare (not safe))
                     (cons __tmp247949 __tmp247946))))
              (declare (not safe))
              (cons __tmp247951 __tmp247945))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp247944))))
                                        (declare (not safe))
                                        (cons __tmp247943 '()))))
                                 (declare (not safe))
                                 (cons __tmp247953 __tmp247942))))
                          (declare (not safe))
                          (cons __tmp247955 __tmp247941))))
                   (declare (not safe))
                   (cons '%#if __tmp247940))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp247939 '()))))
                                             (declare (not safe))
                                             (cons __tmp247957 __tmp247938))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp247937))))
                               (declare (not safe))
                               (cons __tmp247936 '()))))
                        (declare (not safe))
                        (cons __tmp247971 __tmp247935)))))
                 (_generate-class-check-bind239298_
                  (lambda (_$t242608_ _class-type242609_ _$class-type242610_)
                    (let ((__tmp247983
                           (let ()
                             (declare (not safe))
                             (cons _$class-type242610_ '())))
                          (__tmp247972
                           (let ((__tmp247973
                                  (let ((__tmp247974
                                         (let ((__tmp247981
                                                (let ((__tmp247982
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp247982)))
                                               (__tmp247975
                                                (let ((__tmp247979
                                                       (let ((__tmp247980
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t242608_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp247980)))
              (__tmp247976
               (let ((__tmp247977
                      (let ((__tmp247978
                             (let ()
                               (declare (not safe))
                               (cons _class-type242609_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp247978))))
                 (declare (not safe))
                 (cons __tmp247977 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp247979
                                                        __tmp247976))))
                                           (declare (not safe))
                                           (cons __tmp247981 __tmp247975))))
                                    (declare (not safe))
                                    (cons '%#call __tmp247974))))
                             (declare (not safe))
                             (cons __tmp247973 '()))))
                      (declare (not safe))
                      (cons __tmp247983 __tmp247972))))
                 (_generate-struct-check-bind239299_
                  (lambda (_$t242604_ _class-type242605_ _$class-type242606_)
                    (let ((__tmp247995
                           (let ()
                             (declare (not safe))
                             (cons _$class-type242606_ '())))
                          (__tmp247984
                           (let ((__tmp247985
                                  (let ((__tmp247986
                                         (let ((__tmp247993
                                                (let ((__tmp247994
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp247994)))
                                               (__tmp247987
                                                (let ((__tmp247991
                                                       (let ((__tmp247992
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t242604_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp247992)))
              (__tmp247988
               (let ((__tmp247989
                      (let ((__tmp247990
                             (let ()
                               (declare (not safe))
                               (cons _class-type242605_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp247990))))
                 (declare (not safe))
                 (cons __tmp247989 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp247991
                                                        __tmp247988))))
                                           (declare (not safe))
                                           (cons __tmp247993 __tmp247987))))
                                    (declare (not safe))
                                    (cons '%#call __tmp247986))))
                             (declare (not safe))
                             (cons __tmp247985 '()))))
                      (declare (not safe))
                      (cons __tmp247995 __tmp247984))))
                 (_generate-specializer-impl239300_
                  (lambda (_$t242553_
                           _methods-bind242554_
                           _slots-bind242555_
                           _class-check-bind242556_
                           _struct-check-bind242557_
                           _specializer-impl242558_
                           _lifted-specializer-id242559_
                           _unchecked-specializer-impl242560_)
                    (let ((__tmp247996
                           (let ((__tmp247997
                                  (let ((__tmp248023
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t242553_ '())))
                                        (__tmp247998
                                         (let ((__tmp247999
                                                (let ((__tmp248000
                                                       (let ((__tmp248020
                                                              (let ((__tmp248021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp248022
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind242557_
                                              _class-check-bind242556_))))
                               (declare (not safe))
                               (foldr1 cons __tmp248022 _slots-bind242555_))))
                        (declare (not safe))
                        (foldr1 cons __tmp248021 _methods-bind242554_)))
                     (__tmp248001
                      (let ((__tmp248002
                             (if (or _lifted-specializer-id242559_
                                     _unchecked-specializer-impl242560_)
                                 (let* ((_$specializer242565_
                                         (let ((__tmp248003
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp248003)))
                                        (__tmp248004
                                         (let ((__tmp248016
                                                (let ((__tmp248017
                                                       (let ((__tmp248019
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer242565_ '())))
                     (__tmp248018
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl242558_ '()))))
                 (declare (not safe))
                 (cons __tmp248019 __tmp248018))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp248017 '())))
                                               (__tmp248005
                                                (let ((__tmp248006
                                                       (let _recur242567_ ((_rest242569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind242557_)))
                 (let* ((_rest242570242578_ _rest242569_)
                        (_else242572242586_
                         (lambda ()
                           (if _lifted-specializer-id242559_
                               (let ((__tmp248007
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id242559_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp248007))
                               _unchecked-specializer-impl242560_)))
                        (_K242574242592_
                         (lambda (_rest242589_ _checkq242590_)
                           (let ((__tmp248008
                                  (let ((__tmp248014
                                         (let ((__tmp248015
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq242590_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp248015)))
                                        (__tmp248009
                                         (let ((__tmp248013
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur242567_
                                                   _rest242589_)))
                                               (__tmp248010
                                                (let ((__tmp248011
                                                       (let ((__tmp248012
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer242565_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp248012))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp248011 '()))))
                                           (declare (not safe))
                                           (cons __tmp248013 __tmp248010))))
                                    (declare (not safe))
                                    (cons __tmp248014 __tmp248009))))
                             (declare (not safe))
                             (cons '%#if __tmp248008)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest242570242578_))
                       (let ((_hd242575242595_
                              (let ()
                                (declare (not safe))
                                (##car _rest242570242578_)))
                             (_tl242576242597_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest242570242578_))))
                         (let* ((_checkq242600_ _hd242575242595_)
                                (_rest242602_ _tl242576242597_))
                           (declare (not safe))
                           (_K242574242592_ _rest242602_ _checkq242600_)))
                       (let () (declare (not safe)) (_else242572242586_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp248006 '()))))
                                           (declare (not safe))
                                           (cons __tmp248016 __tmp248005))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp248004))
                                 _specializer-impl242558_)))
                        (declare (not safe))
                        (cons __tmp248002 '()))))
                 (declare (not safe))
                 (cons __tmp248020 __tmp248001))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp248000))))
                                           (declare (not safe))
                                           (cons __tmp247999 '()))))
                                    (declare (not safe))
                                    (cons __tmp248023 __tmp247998))))
                             (declare (not safe))
                             (cons '%#lambda __tmp247997))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp247996 _stx239294_))))
                 (_generate-specializer-def239301_
                  (lambda (_id242547_
                           _specializer-id242548_
                           _specializer-impl242549_
                           _lifted-specializer-id242550_
                           _unchecked-specializer-impl242551_)
                    (let ((__tmp248024
                           (let ((__tmp248025
                                  (let ((__tmp248026
                                         (let ((__tmp248046
                                                (let ((__tmp248047
                                                       (let ((__tmp248048
                                                              (let ((__tmp248050
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id242548_ '())))
                            (__tmp248049
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl242549_ '()))))
                        (declare (not safe))
                        (cons __tmp248050 __tmp248049))))
                 (declare (not safe))
                 (cons '%#define-values __tmp248048))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp248047
                                                   _stx239294_)))
                                               (__tmp248027
                                                (let ((__tmp248034
                                                       (let ((__tmp248035
                                                              (let ((__tmp248036
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp248037
                                    (let ((__tmp248044
                                           (let ((__tmp248045
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp248045)))
                                          (__tmp248038
                                           (let ((__tmp248042
                                                  (let ((__tmp248043
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id242547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp248043)))
                                                 (__tmp248039
                                                  (let ((__tmp248040
                                                         (let ((__tmp248041
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id242548_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp248041))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp248040 '()))))
                                             (declare (not safe))
                                             (cons __tmp248042 __tmp248039))))
                                      (declare (not safe))
                                      (cons __tmp248044 __tmp248038))))
                               (declare (not safe))
                               (cons '%#call __tmp248037))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp248036 _stx239294_))))
                 (declare (not safe))
                 (cons __tmp248035 '())))
              (__tmp248028
               (if _lifted-specializer-id242550_
                   (let ((__tmp248029
                          (let ((__tmp248030
                                 (let ((__tmp248031
                                        (let ((__tmp248033
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id242550_
                                                       '())))
                                              (__tmp248032
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl242551_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp248033 __tmp248032))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp248031))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp248030 _stx239294_))))
                     (declare (not safe))
                     (cons __tmp248029 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp248034
                                                          __tmp248028))))
                                           (declare (not safe))
                                           (cons __tmp248046 __tmp248027))))
                                    (declare (not safe))
                                    (cons _stx239294_ __tmp248026))))
                             (declare (not safe))
                             (cons '%#begin __tmp248025))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp248024 _stx239294_)))))
          (let* ((___stx246837246838_ _stx239294_)
                 (_g239304239324_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx246837246838_)))))
            (let ((___kont246839246840_
                   (lambda (_L239368_ _L239369_)
                     (let ((_method-calls239388_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs239389_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_class-type-check239390_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_struct-type-check239391_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_struct-type-assert239392_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty239393_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?239395_
                                 (lambda ()
                                   (if (let ((__tmp248055
                                              (hash-length
                                               _method-calls239388_)))
                                         (declare (not safe))
                                         (fxzero? __tmp248055))
                                       (if (let ((__tmp248054
                                                  (hash-length
                                                   _slot-refs239389_)))
                                             (declare (not safe))
                                             (fxzero? __tmp248054))
                                           (if (let ((__tmp248053
                                                      (hash-length
                                                       _class-type-check239390_)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp248053))
                                               (if (let ((__tmp248052
                                                          (hash-length
                                                           _struct-type-check239391_)))
                                                     (declare (not safe))
                                                     (fxzero? __tmp248052))
                                                   (let ((__tmp248051
                                                          (hash-length
                                                           _struct-type-assert239392_)))
                                                     (declare (not safe))
                                                     (fxzero? __tmp248051))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?239396_
                                 (lambda ()
                                   (let ((_$e242540_
                                          (let ((__tmp248056
                                                 (let ((__tmp248057
                                                        (hash-length
                                                         _struct-type-check239391_)))
                                                   (declare (not safe))
                                                   (fxzero? __tmp248057))))
                                            (declare (not safe))
                                            (not __tmp248056))))
                                     (if _$e242540_
                                         _$e242540_
                                         (let ((__tmp248058
                                                (let ((__tmp248059
                                                       (hash-length
                                                        _struct-type-assert239392_)))
                                                  (declare (not safe))
                                                  (fxzero? __tmp248059))))
                                           (declare (not safe))
                                           (not __tmp248058))))))
                                (_lift-unchecked-specializer?239397_
                                 (lambda ()
                                   (if (let ((__tmp248062
                                              (hash-length
                                               _method-calls239388_)))
                                         (declare (not safe))
                                         (fxzero? __tmp248062))
                                       (if (let ((__tmp248061
                                                  (hash-length
                                                   _slot-refs239389_)))
                                             (declare (not safe))
                                             (fxzero? __tmp248061))
                                           (let ((__tmp248060
                                                  (hash-length
                                                   _class-type-check239390_)))
                                             (declare (not safe))
                                             (fxzero? __tmp248060))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L239368_))
                             (let* ((___stx246751246752_ _L239368_)
                                    (_g239910239928_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx246751246752_)))))
                               (let ((___kont246753246754_
                                      (lambda (_L239964_ _L239965_ _L239966_)
                                        (for-each
                                         (lambda (_g239981239983_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g239981239983_
                                              _L239966_
                                              _method-calls239388_
                                              _slot-refs239389_
                                              _class-type-check239390_
                                              _struct-type-check239391_
                                              _struct-type-assert239392_)))
                                         _L239964_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?239395_))
                                            _stx239294_
                                            (let* ((_specializer-id239992_
                                                    (let* ((_id239986_
                                                            (let ((__tmp248212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L239369_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp248212 '"::specialize")))
                   (_specializer-id239989_
                    (let ((__tmp248213
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx239294_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id239986_ __tmp248213))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id239989_))
              _specializer-id239989_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id239999_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?239397_))
                                                        (let* ((_id239994_
                                                                (let ((__tmp248214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L239369_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp248214
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id239996_
                        (let ((__tmp248215
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx239294_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id239994_ __tmp248215))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id239996_))
                  _lifted-specializer-id239996_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t240001_
                                                    (let ((__tmp248216
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp248216)))
                                                   (_methods240003_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls239388_)))
                                                   (_$methods240007_
                                                    (map (lambda (_id240005_)
                                                           (let ((__tmp248217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id240005_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp248217)))
                 _methods240003_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g248218_
                                                    (for-each
                                                     (lambda (_g240008240011_
                                                              _g240009240013_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls239388_
                                                          _g240008240011_
                                                          _g240009240013_)))
                                                     _methods240003_
                                                     _$methods240007_))
                                                   (_methods-bind240024_
                                                    (map (lambda (_g240016240019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g240017240021_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind239296_
                      _$t240001_
                      _g240016240019_
                      _g240017240021_)))
                 _methods240003_
                 _$methods240007_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots240026_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs239389_)))
                                                   (_$slots240030_
                                                    (map (lambda (_id240028_)
                                                           (let ((__tmp248219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id240028_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp248219)))
                 _slots240026_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g248220_
                                                    (for-each
                                                     (lambda (_g240031240034_
                                                              _g240032240036_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs239389_
                                                          _g240031240034_
                                                          _g240032240036_)))
                                                     _slots240026_
                                                     _$slots240030_))
                                                   (_slots-bind240047_
                                                    (map (lambda (_g240039240042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g240040240044_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind239297_
                      _$t240001_
                      _g240039240042_
                      _g240040240044_)))
                 _slots240026_
                 _$slots240030_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check240049_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check239390_)))
                                                   (_$class-check240052_
                                                    (map (lambda (_g248221_)
                                                           (let ((__tmp248222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp248222)))
                 _class-check240049_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g248223_
                                                    (for-each
                                                     (lambda (_g240053240056_
                                                              _g240054240058_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check239390_
                                                          _g240053240056_
                                                          _g240054240058_)))
                                                     _class-check240049_
                                                     _$class-check240052_))
                                                   (_class-check-bind240069_
                                                    (map (lambda (_g240061240064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g240062240066_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind239298_
                      _$t240001_
                      _g240061240064_
                      _g240062240066_)))
                 _class-check240049_
                 _$class-check240052_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all240071_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check239391_
                                                       _struct-type-assert239392_)))
                                                   (_struct-check240073_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all240071_)))
                                                   (_$struct-check240076_
                                                    (map (lambda (_g248224_)
                                                           (let ((__tmp248225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp248225)))
                 _struct-check240073_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g248226_
                                                    (for-each
                                                     (lambda (_g240077240080_
                                                              _g240078240082_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all240071_
                                                          _g240077240080_
                                                          _g240078240082_)))
                                                     _struct-check240073_
                                                     _$struct-check240076_))
                                                   (_struct-check-bind240093_
                                                    (map (lambda (_g240085240088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g240086240090_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind239299_
                      _$t240001_
                      _g240085240088_
                      _g240086240090_)))
                 _struct-check240073_
                 _$struct-check240076_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl240104_
                                                    (lambda (_struct-type-check1240095_
                                                             _struct-type-check2240096_)
                                                      (let* ((_specializer-body240102_
                                                              (map (lambda (_g240097240099_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g240097240099_
                                _L239966_
                                _$t240001_
                                _method-calls239388_
                                _slot-refs239389_
                                _class-type-check239390_
                                _struct-type-check1240095_
                                _struct-type-check2240096_)))
                           _L239964_))
                     (__tmp248227
                      (let ((__tmp248228
                             (let ((__tmp248229
                                    (let ()
                                      (declare (not safe))
                                      (cons _L239966_ _L239965_))))
                               (declare (not safe))
                               (cons __tmp248229 _specializer-body240102_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp248228))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp248227 _stx239294_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl240106_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl240104_
                                                       _struct-check-all240071_
                                                       _empty239393_)))
                                                   (_unchecked-specializer-impl240108_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?239396_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl240104_
                                                           _empty239393_
                                                           _struct-check-all240071_))
                                                        '#f))
                                                   (_specializer-impl240110_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl239300_
                                                       _$t240001_
                                                       _methods-bind240024_
                                                       _slots-bind240047_
                                                       _class-check-bind240069_
                                                       _struct-check-bind240093_
                                                       _specializer-impl240106_
                                                       _lifted-specializer-id239999_
                                                       _unchecked-specializer-impl240108_))))
                                              (let ((__tmp248231
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L239369_)))
                                                    (__tmp248230
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id239992_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp248231
                                                 '" => "
                                                 __tmp248230))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def239301_
                                                 _L239369_
                                                 _specializer-id239992_
                                                 _specializer-impl240110_
                                                 _lifted-specializer-id239999_
                                                 _unchecked-specializer-impl240108_))))))
                                     (___kont246755246756_
                                      (lambda () _stx239294_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx246751246752_))
                                     (let ((_e239917239940_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx246751246752_))))
                                       (let ((_tl239915239945_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e239917239940_)))
                                             (_hd239916239943_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e239917239940_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl239915239945_))
                                             (let ((_e239920239948_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl239915239945_))))
                                               (let ((_tl239918239953_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e239920239948_)))
                                                     (_hd239919239951_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e239920239948_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd239919239951_))
                                                     (let ((_e239923239956_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd239919239951_))))
                                                       (let ((_tl239921239961_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e239923239956_)))
                     (_hd239922239959_
                      (let () (declare (not safe)) (##car _e239923239956_))))
                 (___kont246753246754_
                  _tl239918239953_
                  _tl239921239961_
                  _hd239922239959_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont246755246756_))))
                                             (___kont246755246756_))))
                                     (___kont246755246756_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L239368_))
                                 (let* ((_g240116240135_
                                         (lambda (_g240117240132_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g240117240132_))))
                                        (_g240115240486_
                                         (lambda (_g240117240138_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g240117240138_))
                                               (let ((_e240121240140_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g240117240138_))))
                                                 (let ((_hd240120240143_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e240121240140_)))
                                                       (_tl240119240145_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e240121240140_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl240119240145_))
                                                       (let ((_g248188_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl240119240145_ '0))))
                 (begin
                   (let ((_g248189_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g248188_)
                                (##vector-length _g248188_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g248189_ 2)))
                         (error "Context expects 2 values" _g248189_)))
                   (let ((_target240122240148_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g248188_ 0)))
                         (_tl240124240150_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g248188_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl240124240150_))
                         (letrec ((_loop240125240153_
                                   (lambda (_hd240123240156_
                                            _clause240129240158_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd240123240156_))
                                         (let ((_e240126240161_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd240123240156_))))
                                           (let ((_lp-hd240127240164_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e240126240161_)))
                                                 (_lp-tl240128240166_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e240126240161_))))
                                             (let ((__tmp248211
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd240127240164_
                                                            _clause240129240158_))))
                                               (declare (not safe))
                                               (_loop240125240153_
                                                _lp-tl240128240166_
                                                __tmp248211))))
                                         (let ((_clause240130240169_
                                                (reverse _clause240129240158_)))
                                           ((lambda (_L240172_)
                                              (for-each
                                               (lambda (_clause240185_)
                                                 (let* ((___stx246777246778_
                                                         _clause240185_)
                                                        (_g240188240203_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx246777246778_)))))
                                                   (let ((___kont246779246780_
                                                          (lambda (_L240231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L240232_
                           _L240233_)
                    (for-each
                     (lambda (_g240248240250_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g240248240250_
                          _L240233_
                          _method-calls239388_
                          _slot-refs239389_
                          _class-type-check239390_
                          _struct-type-check239391_
                          _struct-type-assert239392_)))
                     _L240231_)))
                 (___kont246781246782_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx246777246778_))
                                                         (let ((_e240195240215_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx246777246778_))))
                   (let ((_tl240193240220_
                          (let ()
                            (declare (not safe))
                            (##cdr _e240195240215_)))
                         (_hd240194240218_
                          (let ()
                            (declare (not safe))
                            (##car _e240195240215_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd240194240218_))
                         (let ((_e240198240223_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd240194240218_))))
                           (let ((_tl240196240228_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e240198240223_)))
                                 (_hd240197240226_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e240198240223_))))
                             (___kont246779246780_
                              _tl240193240220_
                              _tl240196240228_
                              _hd240197240226_)))
                         (___kont246781246782_))))
                 (___kont246781246782_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp248190
                                                      (lambda (_g240255240258_
                                                               _g240256240260_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g240255240258_
                                                                _g240256240260_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp248190
                                                         '()
                                                         _L240172_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?239395_))
                                                  _stx239294_
                                                  (let* ((_specializer-id240269_
                                                          (let* ((_id240263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp248191
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L239369_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp248191 '"::specialize")))
                         (_specializer-id240266_
                          (let ((__tmp248192
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx239294_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id240263_ __tmp248192))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id240266_))
                    _specializer-id240266_))
                 (_lifted-specializer-id240276_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?239397_))
                      (let* ((_id240271_
                              (let ((__tmp248193
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L239369_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp248193
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id240273_
                              (let ((__tmp248194
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx239294_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id240271_
                                 __tmp248194))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id240273_))
                        _lifted-specializer-id240273_)
                      '#f))
                 (_$t240278_
                  (let ((__tmp248195 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp248195)))
                 (_methods240280_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls239388_)))
                 (_$methods240284_
                  (map (lambda (_id240282_)
                         (let ((__tmp248196 (gensym _id240282_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp248196)))
                       _methods240280_))
                 (_g248197_
                  (for-each
                   (lambda (_g240285240288_ _g240286240290_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls239388_
                        _g240285240288_
                        _g240286240290_)))
                   _methods240280_
                   _$methods240284_))
                 (_methods-bind240301_
                  (map (lambda (_g240293240296_ _g240294240298_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind239296_
                            _$t240278_
                            _g240293240296_
                            _g240294240298_)))
                       _methods240280_
                       _$methods240284_))
                 (_slots240303_
                  (let () (declare (not safe)) (hash-keys _slot-refs239389_)))
                 (_$slots240307_
                  (map (lambda (_id240305_)
                         (let ((__tmp248198 (gensym _id240305_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp248198)))
                       _slots240303_))
                 (_g248199_
                  (for-each
                   (lambda (_g240308240311_ _g240309240313_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs239389_
                        _g240308240311_
                        _g240309240313_)))
                   _slots240303_
                   _$slots240307_))
                 (_slots-bind240324_
                  (map (lambda (_g240316240319_ _g240317240321_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind239297_
                            _$t240278_
                            _g240316240319_
                            _g240317240321_)))
                       _slots240303_
                       _$slots240307_))
                 (_class-check240326_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check239390_)))
                 (_$class-check240329_
                  (map (lambda (_g248200_)
                         (let ((__tmp248201 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp248201)))
                       _class-check240326_))
                 (_g248202_
                  (for-each
                   (lambda (_g240330240333_ _g240331240335_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check239390_
                        _g240330240333_
                        _g240331240335_)))
                   _class-check240326_
                   _$class-check240329_))
                 (_class-check-bind240346_
                  (map (lambda (_g240338240341_ _g240339240343_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind239298_
                            _$t240278_
                            _g240338240341_
                            _g240339240343_)))
                       _class-check240326_
                       _$class-check240329_))
                 (_struct-check-all240348_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check239391_
                     _struct-type-assert239392_)))
                 (_struct-check240350_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all240348_)))
                 (_$struct-check240353_
                  (map (lambda (_g248203_)
                         (let ((__tmp248204 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp248204)))
                       _struct-check240350_))
                 (_g248205_
                  (for-each
                   (lambda (_g240354240357_ _g240355240359_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all240348_
                        _g240354240357_
                        _g240355240359_)))
                   _struct-check240350_
                   _$struct-check240353_))
                 (_struct-check-bind240370_
                  (map (lambda (_g240362240365_ _g240363240367_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind239299_
                            _$t240278_
                            _g240362240365_
                            _g240363240367_)))
                       _struct-check240350_
                       _$struct-check240353_))
                 (_make-specializer-impl240477_
                  (lambda (_struct-type-check1240372_
                           _struct-type-check2240373_)
                    (let* ((_specializer-clauses240475_
                            (map (lambda (_clause240375_)
                                   (let* ((___stx246797246798_ _clause240375_)
                                          (_g240378240393_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx246797246798_)))))
                                     (let ((___kont246799246800_
                                            (lambda (_L240421_
                                                     _L240422_
                                                     _L240423_)
                                              (let* ((_body240463_
                                                      (map (lambda (_g240458240460_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g240458240460_
                        _L240423_
                        _$t240278_
                        _method-calls239388_
                        _slot-refs239389_
                        _class-type-check239390_
                        _struct-type-check1240372_
                        _struct-type-check2240373_)))
                   _L240421_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp248206
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L240423_
                                                              _L240422_))))
                                                (declare (not safe))
                                                (cons __tmp248206
                                                      _body240463_))))
                                           (___kont246801246802_
                                            (lambda () _clause240375_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx246797246798_))
                                           (let ((_e240385240405_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx246797246798_))))
                                             (let ((_tl240383240410_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e240385240405_)))
                                                   (_hd240384240408_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e240385240405_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd240384240408_))
                                                   (let ((_e240388240413_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd240384240408_))))
                                                     (let ((_tl240386240418_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e240388240413_)))
                                                           (_hd240387240416_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e240388240413_))))
                                                       (___kont246799246800_
                                                        _tl240383240410_
                                                        _tl240386240418_
                                                        _hd240387240416_)))
                                                   (___kont246801246802_))))
                                           (___kont246801246802_)))))
                                 (let ((__tmp248207
                                        (lambda (_g240467240470_
                                                 _g240468240472_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g240467240470_
                                                  _g240468240472_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp248207 '() _L240172_))))
                           (__tmp248208
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses240475_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp248208 _stx239294_))))
                 (_specializer-impl240479_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl240477_
                     _struct-check-all240348_
                     _empty239393_)))
                 (_unchecked-specializer-impl240481_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?239396_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl240477_
                         _empty239393_
                         _struct-check-all240348_))
                      '#f))
                 (_specializer-impl240483_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl239300_
                     _$t240278_
                     _methods-bind240301_
                     _slots-bind240324_
                     _class-check-bind240346_
                     _struct-check-bind240370_
                     _specializer-impl240479_
                     _lifted-specializer-id240276_
                     _unchecked-specializer-impl240481_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp248210
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L239369_)))
                                                          (__tmp248209
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id240269_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp248210
                                                       '" => "
                                                       __tmp248209))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def239301_
                                                       _L239369_
                                                       _specializer-id240269_
                                                       _specializer-impl240483_
                                                       _lifted-specializer-id240276_
                                                       _unchecked-specializer-impl240481_)))))
                                            _clause240130240169_))))))
                           (let ()
                             (declare (not safe))
                             (_loop240125240153_ _target240122240148_ '())))
                         (let ()
                           (declare (not safe))
                           (_g240116240135_ _g240117240138_))))))
               (let ()
                 (declare (not safe))
                 (_g240116240135_ _g240117240138_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g240116240135_
                                                  _g240117240138_))))))
                                   (declare (not safe))
                                   (_g240115240486_ _L239368_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L239368_))
                                     (let* ((_g240489240519_
                                             (lambda (_g240490240516_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g240490240516_))))
                                            (_g240488241207_
                                             (lambda (_g240490240522_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g240490240522_))
                                                   (let ((_e240496240524_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g240490240522_))))
                                                     (let ((_hd240495240527_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e240496240524_)))
                                                           (_tl240494240529_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e240496240524_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl240494240529_))
                                                           (let ((_e240499240532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl240494240529_))))
                     (let ((_hd240498240535_
                            (let ()
                              (declare (not safe))
                              (##car _e240499240532_)))
                           (_tl240497240537_
                            (let ()
                              (declare (not safe))
                              (##cdr _e240499240532_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd240498240535_))
                           (let ((_e240502240540_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd240498240535_))))
                             (let ((_hd240501240543_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e240502240540_)))
                                   (_tl240500240545_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e240502240540_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd240501240543_))
                                   (let ((_e240505240548_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd240501240543_))))
                                     (let ((_hd240504240551_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e240505240548_)))
                                           (_tl240503240553_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e240505240548_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd240504240551_))
                                           (let ((_e240508240556_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd240504240551_))))
                                             (let ((_hd240507240559_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e240508240556_)))
                                                   (_tl240506240561_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e240508240556_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl240506240561_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl240503240553_))
                                                       (let ((_e240511240564_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl240503240553_))))
                 (let ((_hd240510240567_
                        (let () (declare (not safe)) (##car _e240511240564_)))
                       (_tl240509240569_
                        (let () (declare (not safe)) (##cdr _e240511240564_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl240509240569_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl240500240545_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl240497240537_))
                               (let ((_e240514240572_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl240497240537_))))
                                 (let ((_hd240513240575_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e240514240572_)))
                                       (_tl240512240577_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e240514240572_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl240512240577_))
                                       ((lambda (_L240580_ _L240581_ _L240582_)
                                          (let* ((_g240605240623_
                                                  (lambda (_g240606240620_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g240606240620_))))
                                                 (_g240604240674_
                                                  (lambda (_g240606240626_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g240606240626_))
                                                        (let ((_e240612240628_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g240606240626_))))
                  (let ((_hd240611240631_
                         (let () (declare (not safe)) (##car _e240612240628_)))
                        (_tl240610240633_
                         (let ()
                           (declare (not safe))
                           (##cdr _e240612240628_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl240610240633_))
                        (let ((_e240615240636_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl240610240633_))))
                          (let ((_hd240614240639_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e240615240636_)))
                                (_tl240613240641_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e240615240636_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd240614240639_))
                                (let ((_e240618240644_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd240614240639_))))
                                  (let ((_hd240617240647_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e240618240644_)))
                                        (_tl240616240649_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e240618240644_))))
                                    ((lambda (_L240652_ _L240653_ _L240654_)
                                       (for-each
                                        (lambda (_g240669240671_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g240669240671_
                                             _L240654_
                                             _method-calls239388_
                                             _slot-refs239389_
                                             _class-type-check239390_
                                             _struct-type-check239391_
                                             _struct-type-assert239392_)))
                                        _L240652_))
                                     _tl240613240641_
                                     _tl240616240649_
                                     _hd240617240647_)))
                                (let ()
                                  (declare (not safe))
                                  (_g240605240623_ _g240606240626_)))))
                        (let ()
                          (declare (not safe))
                          (_g240605240623_ _g240606240626_)))))
                (let ()
                  (declare (not safe))
                  (_g240605240623_ _g240606240626_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g240604240674_ _L240581_))
                                          (let* ((_g240677240696_
                                                  (lambda (_g240678240693_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g240678240693_))))
                                                 (_g240676240815_
                                                  (lambda (_g240678240699_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g240678240699_))
                                                        (let ((_e240682240701_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g240678240699_))))
                  (let ((_hd240681240704_
                         (let () (declare (not safe)) (##car _e240682240701_)))
                        (_tl240680240706_
                         (let ()
                           (declare (not safe))
                           (##cdr _e240682240701_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl240680240706_))
                        (let ((_g248151_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl240680240706_
                                  '0))))
                          (begin
                            (let ((_g248152_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g248151_)
                                         (##vector-length _g248151_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g248152_ 2)))
                                  (error "Context expects 2 values"
                                         _g248152_)))
                            (let ((_target240683240709_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g248151_ 0)))
                                  (_tl240685240711_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g248151_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl240685240711_))
                                  (letrec ((_loop240686240714_
                                            (lambda (_hd240684240717_
                                                     _clause240690240719_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd240684240717_))
                                                  (let ((_e240687240722_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd240684240717_))))
                                                    (let ((_lp-hd240688240725_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e240687240722_)))
                                                          (_lp-tl240689240727_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e240687240722_))))
                                                      (let ((__tmp248154
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd240688240725_ _clause240690240719_))))
                (declare (not safe))
                (_loop240686240714_ _lp-tl240689240727_ __tmp248154))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause240691240730_
                                                         (reverse _clause240690240719_)))
                                                    ((lambda (_L240733_)
                                                       (for-each
                                                        (lambda (_clause240746_)
                                                          (let* ((_g240748240763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g240749240760_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g240749240760_))))
                         (_g240747240805_
                          (lambda (_g240749240766_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g240749240766_))
                                (let ((_e240755240768_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g240749240766_))))
                                  (let ((_hd240754240771_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e240755240768_)))
                                        (_tl240753240773_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e240755240768_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd240754240771_))
                                        (let ((_e240758240776_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd240754240771_))))
                                          (let ((_hd240757240779_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e240758240776_)))
                                                (_tl240756240781_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e240758240776_))))
                                            ((lambda (_L240784_
                                                      _L240785_
                                                      _L240786_)
                                               (for-each
                                                (lambda (_g240800240802_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g240800240802_
                                                     _L240786_
                                                     _method-calls239388_
                                                     _slot-refs239389_
                                                     _class-type-check239390_
                                                     _struct-type-check239391_
                                                     _struct-type-assert239392_)))
                                                _L240784_))
                                             _tl240753240773_
                                             _tl240756240781_
                                             _hd240757240779_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g240748240763_ _g240749240766_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g240748240763_ _g240749240766_))))))
                    (declare (not safe))
                    (_g240747240805_ _clause240746_)))
                (let ((__tmp248153
                       (lambda (_g240807240810_ _g240808240812_)
                         (let ()
                           (declare (not safe))
                           (cons _g240807240810_ _g240808240812_)))))
                  (declare (not safe))
                  (foldr1 __tmp248153 '() _L240733_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause240691240730_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop240686240714_
                                       _target240683240709_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g240677240696_ _g240678240699_))))))
                        (let ()
                          (declare (not safe))
                          (_g240677240696_ _g240678240699_)))))
                (let ()
                  (declare (not safe))
                  (_g240677240696_ _g240678240699_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g240676240815_ _L240580_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?239395_))
                                              _stx239294_
                                              (let* ((_specializer-id240824_
                                                      (let* ((_id240818_
                                                              (let ((__tmp248155
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L239369_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp248155 '"::specialize")))
                     (_specializer-id240821_
                      (let ((__tmp248156
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx239294_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id240818_ __tmp248156))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id240821_))
                _specializer-id240821_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id240831_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?239397_))
                                                          (let* ((_id240826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp248157
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L239369_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp248157
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id240828_
                          (let ((__tmp248158
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx239294_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id240826_ __tmp248158))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id240828_))
                    _lifted-specializer-id240828_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t240833_
                                                      (let ((__tmp248159
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp248159)))
                                                     (_methods240835_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls239388_)))
                                                     (_$methods240839_
                                                      (map (lambda (_id240837_)
                                                             (let ((__tmp248160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id240837_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp248160)))
                   _methods240835_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g248161_
                                                      (for-each
                                                       (lambda (_g240840240843_
                                                                _g240841240845_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls239388_
                                                            _g240840240843_
                                                            _g240841240845_)))
                                                       _methods240835_
                                                       _$methods240839_))
                                                     (_methods-bind240856_
                                                      (map (lambda (_g240848240851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g240849240853_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind239296_
                        _$t240833_
                        _g240848240851_
                        _g240849240853_)))
                   _methods240835_
                   _$methods240839_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots240858_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs239389_)))
                                                     (_$slots240862_
                                                      (map (lambda (_id240860_)
                                                             (let ((__tmp248162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id240860_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp248162)))
                   _slots240858_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g248163_
                                                      (for-each
                                                       (lambda (_g240863240866_
                                                                _g240864240868_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs239389_
                                                            _g240863240866_
                                                            _g240864240868_)))
                                                       _slots240858_
                                                       _$slots240862_))
                                                     (_slots-bind240879_
                                                      (map (lambda (_g240871240874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g240872240876_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind239297_
                        _$t240833_
                        _g240871240874_
                        _g240872240876_)))
                   _slots240858_
                   _$slots240862_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check240881_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check239390_)))
                                                     (_$class-check240884_
                                                      (map (lambda (_g248164_)
                                                             (let ((__tmp248165
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp248165)))
                   _class-check240881_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g248166_
                                                      (for-each
                                                       (lambda (_g240885240888_
                                                                _g240886240890_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check239390_
                                                            _g240885240888_
                                                            _g240886240890_)))
                                                       _class-check240881_
                                                       _$class-check240884_))
                                                     (_class-check-bind240901_
                                                      (map (lambda (_g240893240896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g240894240898_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind239298_
                        _$t240833_
                        _g240893240896_
                        _g240894240898_)))
                   _class-check240881_
                   _$class-check240884_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all240903_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check239391_
                                                         _struct-type-assert239392_)))
                                                     (_struct-check240905_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all240903_)))
                                                     (_$struct-check240908_
                                                      (map (lambda (_g248167_)
                                                             (let ((__tmp248168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp248168)))
                   _struct-check240905_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g248169_
                                                      (for-each
                                                       (lambda (_g240909240912_
                                                                _g240910240914_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all240903_
                                                            _g240909240912_
                                                            _g240910240914_)))
                                                       _struct-check240905_
                                                       _$struct-check240908_))
                                                     (_struct-check-bind240925_
                                                      (map (lambda (_g240917240920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g240918240922_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind239299_
                        _$t240833_
                        _g240917240920_
                        _g240918240922_)))
                   _struct-check240905_
                   _$struct-check240908_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr241024_
                                                      (lambda (_struct-type-check1240927_
                                                               _struct-type-check2240928_)
                                                        (let* ((_g240930240948_
                                                                (lambda (_g240931240945_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g240931240945_))))
                       (_g240929241021_
                        (lambda (_g240931240951_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g240931240951_))
                              (let ((_e240937240953_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g240931240951_))))
                                (let ((_hd240936240956_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e240937240953_)))
                                      (_tl240935240958_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e240937240953_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl240935240958_))
                                      (let ((_e240940240961_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl240935240958_))))
                                        (let ((_hd240939240964_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e240940240961_)))
                                              (_tl240938240966_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e240940240961_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd240939240964_))
                                              (let ((_e240943240969_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd240939240964_))))
                                                (let ((_hd240942240972_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e240943240969_)))
                                                      (_tl240941240974_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e240943240969_))))
                                                  ((lambda (_L240977_
                                                            _L240978_
                                                            _L240979_)
                                                     (let* ((_body241019_
                                                             (map (lambda (_g241014241016_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g241014241016_
                               _L240979_
                               _$t240833_
                               _method-calls239388_
                               _slot-refs239389_
                               _class-type-check239390_
                               _struct-type-check1240927_
                               _struct-type-check2240928_)))
                          _L240977_))
                    (__tmp248170
                     (let ((__tmp248171
                            (let ((__tmp248172
                                   (let ()
                                     (declare (not safe))
                                     (cons _L240979_ _L240978_))))
                              (declare (not safe))
                              (cons __tmp248172 _body241019_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp248171))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp248170 _L240581_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl240938240966_
                                                   _tl240941240974_
                                                   _hd240942240972_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g240930240948_
                                                 _g240931240951_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g240930240948_ _g240931240951_)))))
                              (let ()
                                (declare (not safe))
                                (_g240930240948_ _g240931240951_))))))
                  (declare (not safe))
                  (_g240929241021_ _L240581_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr241185_
                                                      (lambda (_struct-type-check1241026_
                                                               _struct-type-check2241027_)
                                                        (let* ((_g241029241048_
                                                                (lambda (_g241030241045_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g241030241045_))))
                       (_g241028241182_
                        (lambda (_g241030241051_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g241030241051_))
                              (let ((_e241034241053_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g241030241051_))))
                                (let ((_hd241033241056_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e241034241053_)))
                                      (_tl241032241058_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e241034241053_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl241032241058_))
                                      (let ((_g248173_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl241032241058_
                                                '0))))
                                        (begin
                                          (let ((_g248174_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g248173_)
                                                       (##vector-length
                                                        _g248173_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g248174_ 2)))
                                                (error "Context expects 2 values"
                                                       _g248174_)))
                                          (let ((_target241035241061_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g248173_ 0)))
                                                (_tl241037241063_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g248173_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl241037241063_))
                                                (letrec ((_loop241038241066_
                                                          (lambda (_hd241036241069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause241042241071_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd241036241069_))
                        (let ((_e241039241074_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd241036241069_))))
                          (let ((_lp-hd241040241077_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e241039241074_)))
                                (_lp-tl241041241079_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e241039241074_))))
                            (let ((__tmp248178
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd241040241077_
                                           _clause241042241071_))))
                              (declare (not safe))
                              (_loop241038241066_
                               _lp-tl241041241079_
                               __tmp248178))))
                        (let ((_clause241043241082_
                               (reverse _clause241042241071_)))
                          ((lambda (_L241085_)
                             (let* ((_clauses241180_
                                     (map (lambda (_clause241100_)
                                            (let* ((___stx246817246818_
                                                    _clause241100_)
                                                   (_g241103241118_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx246817246818_)))))
                                              (let ((___kont246819246820_
                                                     (lambda (_L241146_
                                                              _L241147_
                                                              _L241148_)
                                                       (let* ((_body241168_
                                                               (map (lambda (_g241163241165_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g241163241165_
                                 _L241148_
                                 _$t240833_
                                 _method-calls239388_
                                 _slot-refs239389_
                                 _class-type-check239390_
                                 _struct-type-check1241026_
                                 _struct-type-check2241027_)))
                            _L241146_))
                      (__tmp248175
                       (let ()
                         (declare (not safe))
                         (cons _L241148_ _L241147_))))
                 (declare (not safe))
                 (cons __tmp248175 _body241168_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont246821246822_
                                                     (lambda ()
                                                       _clause241100_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx246817246818_))
                                                    (let ((_e241110241130_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx246817246818_))))
                                                      (let ((_tl241108241135_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241110241130_)))
                    (_hd241109241133_
                     (let () (declare (not safe)) (##car _e241110241130_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd241109241133_))
                    (let ((_e241113241138_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd241109241133_))))
                      (let ((_tl241111241143_
                             (let ()
                               (declare (not safe))
                               (##cdr _e241113241138_)))
                            (_hd241112241141_
                             (let ()
                               (declare (not safe))
                               (##car _e241113241138_))))
                        (___kont246819246820_
                         _tl241108241135_
                         _tl241111241143_
                         _hd241112241141_)))
                    (___kont246821246822_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont246821246822_)))))
                                          (let ((__tmp248176
                                                 (lambda (_g241172241175_
                                                          _g241173241177_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g241172241175_
                                                           _g241173241177_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp248176
                                                    '()
                                                    _L241085_))))
                                    (__tmp248177
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses241180_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp248177 _L240580_)))
                           _clause241043241082_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop241038241066_
                                                     _target241035241061_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g241029241048_
                                                   _g241030241051_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g241029241048_ _g241030241051_)))))
                              (let ()
                                (declare (not safe))
                                (_g241029241048_ _g241030241051_))))))
                  (declare (not safe))
                  (_g241028241182_ _L240580_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl241190_
                                                      (lambda (_specializer-lambda-expr241187_
                                                               _specializer-case-lambda-expr241188_)
                                                        (let ((__tmp248179
                                                               (let ((__tmp248180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp248182
                                     (let ((__tmp248183
                                            (let ((__tmp248185
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L240582_ '())))
                                                  (__tmp248184
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr241187_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp248185 __tmp248184))))
                                       (declare (not safe))
                                       (cons __tmp248183 '())))
                                    (__tmp248181
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr241188_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp248182 __tmp248181))))
                         (declare (not safe))
                         (cons '%#let-values __tmp248180))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp248179 _stx239294_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr241192_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr241024_
                                                         _struct-check-all240903_
                                                         _empty239393_)))
                                                     (_specializer-case-lambda-expr241194_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr241185_
                                                         _struct-check-all240903_
                                                         _empty239393_)))
                                                     (_specializer-impl241196_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl241190_
                                                         _specializer-lambda-expr241192_
                                                         _specializer-case-lambda-expr241194_)))
                                                     (_unchecked-specializer-lambda-expr241198_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?239396_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr241024_
                                                             _empty239393_
                                                             _struct-check-all240903_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr241200_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?239396_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr241185_
                                                             _empty239393_
                                                             _struct-check-all240903_))
                                                          '#f))
                                                     (_unchecked-specializer-impl241202_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?239396_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl241190_
                                                             _unchecked-specializer-lambda-expr241198_
                                                             _unchecked-specializer-case-lambda-expr241200_))
                                                          '#f))
                                                     (_specializer-impl241204_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl239300_
                                                         _$t240833_
                                                         _methods-bind240856_
                                                         _slots-bind240879_
                                                         _class-check-bind240901_
                                                         _struct-check-bind240925_
                                                         _specializer-impl241196_
                                                         _lifted-specializer-id240831_
                                                         _unchecked-specializer-impl241202_))))
                                                (let ((__tmp248187
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L239369_)))
                                                      (__tmp248186
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id240824_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp248187
                                                   '" => "
                                                   __tmp248186))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def239301_
                                                   _L239369_
                                                   _specializer-id240824_
                                                   _specializer-impl241204_
                                                   _lifted-specializer-id240831_
                                                   _unchecked-specializer-impl241202_)))))
                                        _hd240513240575_
                                        _hd240510240567_
                                        _hd240507240559_)
                                       (let ()
                                         (declare (not safe))
                                         (_g240489240519_ _g240490240522_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g240489240519_ _g240490240522_)))
                           (let ()
                             (declare (not safe))
                             (_g240489240519_ _g240490240522_)))
                       (let ()
                         (declare (not safe))
                         (_g240489240519_ _g240490240522_)))))
               (let () (declare (not safe)) (_g240489240519_ _g240490240522_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g240489240519_
                                                      _g240490240522_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g240489240519_
                                              _g240490240522_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g240489240519_ _g240490240522_)))))
                           (let ()
                             (declare (not safe))
                             (_g240489240519_ _g240490240522_)))))
                   (let ()
                     (declare (not safe))
                     (_g240489240519_ _g240490240522_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g240489240519_
                                                      _g240490240522_))))))
                                       (declare (not safe))
                                       (_g240488241207_ _L239368_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L239368_))
                                         (let* ((_g241210241263_
                                                 (lambda (_g241211241260_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g241211241260_))))
                                                (_g241209242535_
                                                 (lambda (_g241211241266_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g241211241266_))
                                                       (let ((_e241219241268_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g241211241266_))))
                 (let ((_hd241218241271_
                        (let () (declare (not safe)) (##car _e241219241268_)))
                       (_tl241217241273_
                        (let () (declare (not safe)) (##cdr _e241219241268_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd241218241271_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd241218241271_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl241217241273_))
                               (let ((_e241222241276_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl241217241273_))))
                                 (let ((_hd241221241279_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e241222241276_)))
                                       (_tl241220241281_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e241222241276_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd241221241279_))
                                       (let ((_e241225241284_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd241221241279_))))
                                         (let ((_hd241224241287_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e241225241284_)))
                                               (_tl241223241289_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e241225241284_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd241224241287_))
                                               (let ((_e241228241292_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd241224241287_))))
                                                 (let ((_hd241227241295_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e241228241292_)))
                                                       (_tl241226241297_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e241228241292_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd241227241295_))
                                                       (let ((_e241231241300_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd241227241295_))))
                 (let ((_hd241230241303_
                        (let () (declare (not safe)) (##car _e241231241300_)))
                       (_tl241229241305_
                        (let () (declare (not safe)) (##cdr _e241231241300_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl241229241305_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl241226241297_))
                           (let ((_e241234241308_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl241226241297_))))
                             (let ((_hd241233241311_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e241234241308_)))
                                   (_tl241232241313_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e241234241308_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd241233241311_))
                                   (let ((_e241237241316_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd241233241311_))))
                                     (let ((_hd241236241319_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e241237241316_)))
                                           (_tl241235241321_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e241237241316_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd241236241319_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd241236241319_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl241235241321_))
                                                   (let ((_e241240241324_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl241235241321_))))
                                                     (let ((_hd241239241327_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e241240241324_)))
                                                           (_tl241238241329_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e241240241324_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd241239241327_))
                                                           (let ((_e241243241332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd241239241327_))))
                     (let ((_hd241242241335_
                            (let ()
                              (declare (not safe))
                              (##car _e241243241332_)))
                           (_tl241241241337_
                            (let ()
                              (declare (not safe))
                              (##cdr _e241243241332_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd241242241335_))
                           (let ((_e241246241340_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd241242241335_))))
                             (let ((_hd241245241343_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e241246241340_)))
                                   (_tl241244241345_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e241246241340_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd241245241343_))
                                   (let ((_e241249241348_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd241245241343_))))
                                     (let ((_hd241248241351_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e241249241348_)))
                                           (_tl241247241353_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e241249241348_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl241247241353_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl241244241345_))
                                               (let ((_e241252241356_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl241244241345_))))
                                                 (let ((_hd241251241359_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e241252241356_)))
                                                       (_tl241250241361_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e241252241356_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl241250241361_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl241241241337_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl241238241329_))
                       (let ((_e241255241364_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl241238241329_))))
                         (let ((_hd241254241367_
                                (let ()
                                  (declare (not safe))
                                  (##car _e241255241364_)))
                               (_tl241253241369_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e241255241364_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl241253241369_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl241232241313_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl241223241289_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl241220241281_))
                                           (let ((_e241258241372_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl241220241281_))))
                                             (let ((_hd241257241375_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e241258241372_)))
                                                   (_tl241256241377_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e241258241372_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl241256241377_))
                                                   ((lambda (_L241380_
                                                             _L241381_
                                                             _L241382_
                                                             _L241383_
                                                             _L241384_)
                                                      (let* ((_g241423241485_
                                                              (lambda (_g241424241482_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g241424241482_))))
                     (_g241422242532_
                      (lambda (_g241424241488_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g241424241488_))
                            (let ((_e241432241490_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g241424241488_))))
                              (let ((_hd241431241493_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241432241490_)))
                                    (_tl241430241495_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241432241490_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd241431241493_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd241431241493_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl241430241495_))
                                            (let ((_e241435241498_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl241430241495_))))
                                              (let ((_hd241434241501_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241435241498_)))
                                                    (_tl241433241503_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241435241498_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl241433241503_))
                                                    (let ((_e241438241506_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl241433241503_))))
                                                      (let ((_hd241437241509_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e241438241506_)))
                    (_tl241436241511_
                     (let () (declare (not safe)) (##cdr _e241438241506_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd241437241509_))
                    (let ((_e241441241514_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd241437241509_))))
                      (let ((_hd241440241517_
                             (let ()
                               (declare (not safe))
                               (##car _e241441241514_)))
                            (_tl241439241519_
                             (let ()
                               (declare (not safe))
                               (##cdr _e241441241514_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd241440241517_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd241440241517_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl241439241519_))
                                    (let ((_e241444241522_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl241439241519_))))
                                      (let ((_hd241443241525_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e241444241522_)))
                                            (_tl241442241527_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e241444241522_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd241443241525_))
                                            (let ((_e241447241530_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd241443241525_))))
                                              (let ((_hd241446241533_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241447241530_)))
                                                    (_tl241445241535_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241447241530_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd241446241533_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd241446241533_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl241445241535_))
                                                            (let ((_e241450241538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl241445241535_))))
                      (let ((_hd241449241541_
                             (let ()
                               (declare (not safe))
                               (##car _e241450241538_)))
                            (_tl241448241543_
                             (let ()
                               (declare (not safe))
                               (##cdr _e241450241538_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241448241543_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241442241527_))
                                (let ((_e241453241546_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241442241527_))))
                                  (let ((_hd241452241549_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241453241546_)))
                                        (_tl241451241551_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241453241546_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd241452241549_))
                                        (let ((_e241456241554_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd241452241549_))))
                                          (let ((_hd241455241557_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e241456241554_)))
                                                (_tl241454241559_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e241456241554_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd241455241557_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd241455241557_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl241454241559_))
                                                        (let ((_e241459241562_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl241454241559_))))
                  (let ((_hd241458241565_
                         (let () (declare (not safe)) (##car _e241459241562_)))
                        (_tl241457241567_
                         (let ()
                           (declare (not safe))
                           (##cdr _e241459241562_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl241457241567_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241451241551_))
                            (let ((_e241462241570_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241451241551_))))
                              (let ((_hd241461241573_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241462241570_)))
                                    (_tl241460241575_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241462241570_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd241461241573_))
                                    (let ((_e241465241578_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd241461241573_))))
                                      (let ((_hd241464241581_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e241465241578_)))
                                            (_tl241463241583_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e241465241578_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd241464241581_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd241464241581_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl241463241583_))
                                                    (let ((_e241468241586_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl241463241583_))))
                                                      (let ((_hd241467241589_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e241468241586_)))
                    (_tl241466241591_
                     (let () (declare (not safe)) (##cdr _e241468241586_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl241466241591_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl241460241575_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl241460241575_))
                                  '1)
                            (let ((_g248063_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl241460241575_
                                      '1))))
                              (begin
                                (let ((_g248064_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g248063_)
                                             (##vector-length _g248063_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g248064_ 2)))
                                      (error "Context expects 2 values"
                                             _g248064_)))
                                (let ((_target241469241594_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g248063_ 0)))
                                      (_tl241471241596_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g248063_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl241471241596_))
                                      (let ((_e241480241599_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl241471241596_))))
                                        (let ((_hd241479241602_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241480241599_)))
                                              (_tl241478241604_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241480241599_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl241478241604_))
                                              (letrec ((_loop241472241607_
                                                        (lambda (_hd241470241610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref241476241612_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd241470241610_))
                      (let ((_e241473241615_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd241470241610_))))
                        (let ((_lp-hd241474241618_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241473241615_)))
                              (_lp-tl241475241620_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241473241615_))))
                          (let ((__tmp248150
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd241474241618_
                                         _kw-ref241476241612_))))
                            (declare (not safe))
                            (_loop241472241607_
                             _lp-tl241475241620_
                             __tmp248150))))
                      (let ((_kw-ref241477241623_
                             (reverse _kw-ref241476241612_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241436241511_))
                            ((lambda (_L241626_
                                      _L241627_
                                      _L241628_
                                      _L241629_
                                      _L241630_)
                               (let* ((_kw-count241681_
                                       (length (let ((__tmp248065
                                                      (lambda (_g241673241676_
                                                               _g241674241678_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g241673241676_
                                                                _g241674241678_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp248065
                                                         '()
                                                         _L241627_))))
                                      (_self-index241683_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count241681_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L241382_))
                                     (let* ((_g241686241700_
                                             (lambda (_g241687241697_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g241687241697_))))
                                            (_g241685241871_
                                             (lambda (_g241687241703_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g241687241703_))
                                                   (let ((_e241692241705_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g241687241703_))))
                                                     (let ((_hd241691241708_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e241692241705_)))
                                                           (_tl241690241710_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e241692241705_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl241690241710_))
                                                           (let ((_e241695241713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl241690241710_))))
                     (let ((_hd241694241716_
                            (let ()
                              (declare (not safe))
                              (##car _e241695241713_)))
                           (_tl241693241718_
                            (let ()
                              (declare (not safe))
                              (##cdr _e241695241713_))))
                       ((lambda (_L241721_ _L241722_)
                          (let ((_self241738_
                                 (list-ref _L241722_ _self-index241683_)))
                            (for-each
                             (lambda (_g241739241741_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g241739241741_
                                  _self241738_
                                  _method-calls239388_
                                  _slot-refs239389_
                                  _class-type-check239390_
                                  _struct-type-check239391_
                                  _struct-type-assert239392_)))
                             _L241721_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?239395_))
                                _stx239294_
                                (let* ((_specializer-id241750_
                                        (let* ((_id241744_
                                                (let ((__tmp248116
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L239369_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp248116
                                                   '"::specialize")))
                                               (_specializer-id241747_
                                                (let ((__tmp248117
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx239294_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id241744_
                                                   __tmp248117))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id241747_))
                                          _specializer-id241747_))
                                       (_lifted-specializer-id241757_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?239397_))
                                            (let* ((_id241752_
                                                    (let ((__tmp248118
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L239369_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp248118
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id241754_
                                                    (let ((__tmp248119
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx239294_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id241752_
                                                       __tmp248119))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id241754_))
                                              _lifted-specializer-id241754_)
                                            '#f))
                                       (_$t241759_
                                        (let ((__tmp248120 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp248120)))
                                       (_methods241761_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls239388_)))
                                       (_$methods241765_
                                        (map (lambda (_id241763_)
                                               (let ((__tmp248121
                                                      (gensym _id241763_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp248121)))
                                             _methods241761_))
                                       (_g248122_
                                        (for-each
                                         (lambda (_g241766241769_
                                                  _g241767241771_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls239388_
                                              _g241766241769_
                                              _g241767241771_)))
                                         _methods241761_
                                         _$methods241765_))
                                       (_methods-bind241782_
                                        (map (lambda (_g241774241777_
                                                      _g241775241779_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind239296_
                                                  _$t241759_
                                                  _g241774241777_
                                                  _g241775241779_)))
                                             _methods241761_
                                             _$methods241765_))
                                       (_slots241784_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs239389_)))
                                       (_$slots241788_
                                        (map (lambda (_id241786_)
                                               (let ((__tmp248123
                                                      (gensym _id241786_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp248123)))
                                             _slots241784_))
                                       (_g248124_
                                        (for-each
                                         (lambda (_g241789241792_
                                                  _g241790241794_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs239389_
                                              _g241789241792_
                                              _g241790241794_)))
                                         _slots241784_
                                         _$slots241788_))
                                       (_slots-bind241805_
                                        (map (lambda (_g241797241800_
                                                      _g241798241802_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind239297_
                                                  _$t241759_
                                                  _g241797241800_
                                                  _g241798241802_)))
                                             _slots241784_
                                             _$slots241788_))
                                       (_class-check241807_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check239390_)))
                                       (_$class-check241810_
                                        (map (lambda (_g248125_)
                                               (let ((__tmp248126
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp248126)))
                                             _class-check241807_))
                                       (_g248127_
                                        (for-each
                                         (lambda (_g241811241814_
                                                  _g241812241816_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check239390_
                                              _g241811241814_
                                              _g241812241816_)))
                                         _class-check241807_
                                         _$class-check241810_))
                                       (_class-check-bind241827_
                                        (map (lambda (_g241819241822_
                                                      _g241820241824_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind239298_
                                                  _$t241759_
                                                  _g241819241822_
                                                  _g241820241824_)))
                                             _class-check241807_
                                             _$class-check241810_))
                                       (_struct-check-all241829_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check239391_
                                           _struct-type-assert239392_)))
                                       (_struct-check241831_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all241829_)))
                                       (_$struct-check241834_
                                        (map (lambda (_g248128_)
                                               (let ((__tmp248129
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp248129)))
                                             _struct-check241831_))
                                       (_g248130_
                                        (for-each
                                         (lambda (_g241835241838_
                                                  _g241836241840_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all241829_
                                              _g241835241838_
                                              _g241836241840_)))
                                         _struct-check241831_
                                         _$struct-check241834_))
                                       (_struct-check-bind241851_
                                        (map (lambda (_g241843241846_
                                                      _g241844241848_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind239299_
                                                  _$t241759_
                                                  _g241843241846_
                                                  _g241844241848_)))
                                             _struct-check241831_
                                             _$struct-check241834_))
                                       (_make-specializer-impl241862_
                                        (lambda (_struct-type-check1241853_
                                                 _struct-type-check2241854_)
                                          (let* ((_specializer-body241860_
                                                  (map (lambda (_g241855241857_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g241855241857_
                                                            _self241738_
                                                            _$t241759_
                                                            _method-calls239388_
                                                            _slot-refs239389_
                                                            _class-type-check239390_
                                                            _struct-type-check1241853_
                                                            _struct-type-check2241854_)))
                                                       _L241721_))
                                                 (__tmp248131
                                                  (let ((__tmp248132
                                                         (let ((__tmp248134
                                                                (let ((__tmp248135
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp248147
                                      (let ()
                                        (declare (not safe))
                                        (cons _L241384_ '())))
                                     (__tmp248136
                                      (let ((__tmp248137
                                             (let ((__tmp248138
                                                    (let ((__tmp248140
                                                           (let ((__tmp248141
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp248146
                                 (let ()
                                   (declare (not safe))
                                   (cons _L241383_ '())))
                                (__tmp248142
                                 (let ((__tmp248143
                                        (let ((__tmp248144
                                               (let ((__tmp248145
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L241722_
                                                              _specializer-body241860_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp248145))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp248144
                                           _L241382_))))
                                   (declare (not safe))
                                   (cons __tmp248143 '()))))
                            (declare (not safe))
                            (cons __tmp248146 __tmp248142))))
                     (declare (not safe))
                     (cons __tmp248141 '())))
                  (__tmp248139
                   (let () (declare (not safe)) (cons _L241381_ '()))))
              (declare (not safe))
              (cons __tmp248140 __tmp248139))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp248138))))
                                        (declare (not safe))
                                        (cons __tmp248137 '()))))
                                 (declare (not safe))
                                 (cons __tmp248147 __tmp248136))))
                          (declare (not safe))
                          (cons __tmp248135 '())))
                       (__tmp248133
                        (let () (declare (not safe)) (cons _L241380_ '()))))
                   (declare (not safe))
                   (cons __tmp248134 __tmp248133))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp248132))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp248131
                                             _stx239294_))))
                                       (_specializer-impl241864_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl241862_
                                           _struct-check-all241829_
                                           _empty239393_)))
                                       (_unchecked-specializer-impl241866_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?239396_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl241862_
                                               _empty239393_
                                               _struct-check-all241829_))
                                            '#f))
                                       (_specializer-impl241868_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl239300_
                                           _$t241759_
                                           _methods-bind241782_
                                           _slots-bind241805_
                                           _class-check-bind241827_
                                           _struct-check-bind241851_
                                           _specializer-impl241864_
                                           _lifted-specializer-id241757_
                                           _unchecked-specializer-impl241866_))))
                                  (let ((__tmp248149
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L239369_)))
                                        (__tmp248148
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id241750_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp248149
                                     '" => "
                                     __tmp248148))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def239301_
                                     _L239369_
                                     _specializer-id241750_
                                     _specializer-impl241868_
                                     _lifted-specializer-id241757_
                                     _unchecked-specializer-impl241866_))))))
                        _tl241693241718_
                        _hd241694241716_)))
                   (let ()
                     (declare (not safe))
                     (_g241686241700_ _g241687241703_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g241686241700_
                                                      _g241687241703_))))))
                                       (declare (not safe))
                                       (_g241685241871_ _L241382_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L241382_))
                                         (let* ((_g241874241904_
                                                 (lambda (_g241875241901_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g241875241901_))))
                                                (_g241873242529_
                                                 (lambda (_g241875241907_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g241875241907_))
                                                       (let ((_e241881241909_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g241875241907_))))
                 (let ((_hd241880241912_
                        (let () (declare (not safe)) (##car _e241881241909_)))
                       (_tl241879241914_
                        (let () (declare (not safe)) (##cdr _e241881241909_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl241879241914_))
                       (let ((_e241884241917_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl241879241914_))))
                         (let ((_hd241883241920_
                                (let ()
                                  (declare (not safe))
                                  (##car _e241884241917_)))
                               (_tl241882241922_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e241884241917_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd241883241920_))
                               (let ((_e241887241925_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd241883241920_))))
                                 (let ((_hd241886241928_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e241887241925_)))
                                       (_tl241885241930_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e241887241925_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd241886241928_))
                                       (let ((_e241890241933_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd241886241928_))))
                                         (let ((_hd241889241936_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e241890241933_)))
                                               (_tl241888241938_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e241890241933_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd241889241936_))
                                               (let ((_e241893241941_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd241889241936_))))
                                                 (let ((_hd241892241944_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e241893241941_)))
                                                       (_tl241891241946_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e241893241941_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl241891241946_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl241888241938_))
                                                           (let ((_e241896241949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl241888241938_))))
                     (let ((_hd241895241952_
                            (let ()
                              (declare (not safe))
                              (##car _e241896241949_)))
                           (_tl241894241954_
                            (let ()
                              (declare (not safe))
                              (##cdr _e241896241949_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl241894241954_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl241885241930_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl241882241922_))
                                   (let ((_e241899241957_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl241882241922_))))
                                     (let ((_hd241898241960_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e241899241957_)))
                                           (_tl241897241962_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e241899241957_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl241897241962_))
                                           ((lambda (_L241965_
                                                     _L241966_
                                                     _L241967_)
                                              (let* ((_g241990242004_
                                                      (lambda (_g241991242001_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g241991242001_))))
                                                     (_g241989242045_
                                                      (lambda (_g241991242007_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g241991242007_))
                                                            (let ((_e241996242009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g241991242007_))))
                      (let ((_hd241995242012_
                             (let ()
                               (declare (not safe))
                               (##car _e241996242009_)))
                            (_tl241994242014_
                             (let ()
                               (declare (not safe))
                               (##cdr _e241996242009_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241994242014_))
                            (let ((_e241999242017_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241994242014_))))
                              (let ((_hd241998242020_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241999242017_)))
                                    (_tl241997242022_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241999242017_))))
                                ((lambda (_L242025_ _L242026_)
                                   (let ((_self242039_
                                          (list-ref
                                           _L242026_
                                           _self-index241683_)))
                                     (for-each
                                      (lambda (_g242040242042_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g242040242042_
                                           _self242039_
                                           _method-calls239388_
                                           _slot-refs239389_
                                           _class-type-check239390_
                                           _struct-type-check239391_
                                           _struct-type-assert239392_)))
                                      _L242025_)))
                                 _tl241997242022_
                                 _hd241998242020_)))
                            (let ()
                              (declare (not safe))
                              (_g241990242004_ _g241991242007_)))))
                    (let ()
                      (declare (not safe))
                      (_g241990242004_ _g241991242007_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g241989242045_ _L241966_))
                                              (let* ((_g242048242067_
                                                      (lambda (_g242049242064_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g242049242064_))))
                                                     (_g242047242172_
                                                      (lambda (_g242049242070_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g242049242070_))
                                                            (let ((_e242053242072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g242049242070_))))
                      (let ((_hd242052242075_
                             (let ()
                               (declare (not safe))
                               (##car _e242053242072_)))
                            (_tl242051242077_
                             (let ()
                               (declare (not safe))
                               (##cdr _e242053242072_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl242051242077_))
                            (let ((_g248066_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl242051242077_
                                      '0))))
                              (begin
                                (let ((_g248067_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g248066_)
                                             (##vector-length _g248066_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g248067_ 2)))
                                      (error "Context expects 2 values"
                                             _g248067_)))
                                (let ((_target242054242080_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g248066_ 0)))
                                      (_tl242056242082_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g248066_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242056242082_))
                                      (letrec ((_loop242057242085_
                                                (lambda (_hd242055242088_
                                                         _clause242061242090_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd242055242088_))
                                                      (let ((_e242058242093_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd242055242088_))))
                (let ((_lp-hd242059242096_
                       (let () (declare (not safe)) (##car _e242058242093_)))
                      (_lp-tl242060242098_
                       (let () (declare (not safe)) (##cdr _e242058242093_))))
                  (let ((__tmp248069
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd242059242096_ _clause242061242090_))))
                    (declare (not safe))
                    (_loop242057242085_ _lp-tl242060242098_ __tmp248069))))
              (let ((_clause242062242101_ (reverse _clause242061242090_)))
                ((lambda (_L242104_)
                   (for-each
                    (lambda (_clause242117_)
                      (let* ((_g242119242130_
                              (lambda (_g242120242127_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g242120242127_))))
                             (_g242118242162_
                              (lambda (_g242120242133_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g242120242133_))
                                    (let ((_e242125242135_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g242120242133_))))
                                      (let ((_hd242124242138_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e242125242135_)))
                                            (_tl242123242140_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e242125242135_))))
                                        ((lambda (_L242143_ _L242144_)
                                           (let ((_self242156_
                                                  (list-ref
                                                   _L242144_
                                                   _self-index241683_)))
                                             (for-each
                                              (lambda (_g242157242159_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g242157242159_
                                                   _self242156_
                                                   _method-calls239388_
                                                   _slot-refs239389_
                                                   _class-type-check239390_
                                                   _struct-type-check239391_
                                                   _struct-type-assert239392_)))
                                              _L242143_)))
                                         _tl242123242140_
                                         _hd242124242138_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g242119242130_ _g242120242133_))))))
                        (declare (not safe))
                        (_g242118242162_ _clause242117_)))
                    (let ((__tmp248068
                           (lambda (_g242164242167_ _g242165242169_)
                             (let ()
                               (declare (not safe))
                               (cons _g242164242167_ _g242165242169_)))))
                      (declare (not safe))
                      (foldr1 __tmp248068 '() _L242104_))))
                 _clause242062242101_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop242057242085_
                                           _target242054242080_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g242048242067_ _g242049242070_))))))
                            (let ()
                              (declare (not safe))
                              (_g242048242067_ _g242049242070_)))))
                    (let ()
                      (declare (not safe))
                      (_g242048242067_ _g242049242070_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g242047242172_ _L241965_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?239395_))
                                                  _stx239294_
                                                  (let* ((_specializer-id242181_
                                                          (let* ((_id242175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp248070
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L239369_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp248070 '"::specialize")))
                         (_specializer-id242178_
                          (let ((__tmp248071
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx239294_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id242175_ __tmp248071))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id242178_))
                    _specializer-id242178_))
                 (_lifted-specializer-id242188_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?239397_))
                      (let* ((_id242183_
                              (let ((__tmp248072
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L239369_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp248072
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id242185_
                              (let ((__tmp248073
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx239294_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id242183_
                                 __tmp248073))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id242185_))
                        _lifted-specializer-id242185_)
                      '#f))
                 (_$t242190_
                  (let ((__tmp248074 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp248074)))
                 (_methods242192_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls239388_)))
                 (_$methods242196_
                  (map (lambda (_id242194_)
                         (let ((__tmp248075 (gensym _id242194_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp248075)))
                       _methods242192_))
                 (_g248076_
                  (for-each
                   (lambda (_g242197242200_ _g242198242202_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls239388_
                        _g242197242200_
                        _g242198242202_)))
                   _methods242192_
                   _$methods242196_))
                 (_methods-bind242213_
                  (map (lambda (_g242205242208_ _g242206242210_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind239296_
                            _$t242190_
                            _g242205242208_
                            _g242206242210_)))
                       _methods242192_
                       _$methods242196_))
                 (_slots242215_
                  (let () (declare (not safe)) (hash-keys _slot-refs239389_)))
                 (_$slots242219_
                  (map (lambda (_id242217_)
                         (let ((__tmp248077 (gensym _id242217_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp248077)))
                       _slots242215_))
                 (_g248078_
                  (for-each
                   (lambda (_g242220242223_ _g242221242225_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs239389_
                        _g242220242223_
                        _g242221242225_)))
                   _slots242215_
                   _$slots242219_))
                 (_slots-bind242236_
                  (map (lambda (_g242228242231_ _g242229242233_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind239297_
                            _$t242190_
                            _g242228242231_
                            _g242229242233_)))
                       _slots242215_
                       _$slots242219_))
                 (_class-check242238_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check239390_)))
                 (_$class-check242241_
                  (map (lambda (_g248079_)
                         (let ((__tmp248080 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp248080)))
                       _class-check242238_))
                 (_g248081_
                  (for-each
                   (lambda (_g242242242245_ _g242243242247_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check239390_
                        _g242242242245_
                        _g242243242247_)))
                   _class-check242238_
                   _$class-check242241_))
                 (_class-check-bind242258_
                  (map (lambda (_g242250242253_ _g242251242255_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind239298_
                            _$t242190_
                            _g242250242253_
                            _g242251242255_)))
                       _class-check242238_
                       _$class-check242241_))
                 (_struct-check-all242260_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check239391_
                     _struct-type-assert239392_)))
                 (_struct-check242262_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all242260_)))
                 (_$struct-check242265_
                  (map (lambda (_g248082_)
                         (let ((__tmp248083 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp248083)))
                       _struct-check242262_))
                 (_g248084_
                  (for-each
                   (lambda (_g242266242269_ _g242267242271_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all242260_
                        _g242266242269_
                        _g242267242271_)))
                   _struct-check242262_
                   _$struct-check242265_))
                 (_struct-check-bind242282_
                  (map (lambda (_g242274242277_ _g242275242279_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind239299_
                            _$t242190_
                            _g242274242277_
                            _g242275242279_)))
                       _struct-check242262_
                       _$struct-check242265_))
                 (_make-specializer-lambda-expr242368_
                  (lambda (_struct-type-check1242284_
                           _struct-type-check2242285_)
                    (let* ((_g242287242301_
                            (lambda (_g242288242298_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g242288242298_))))
                           (_g242286242365_
                            (lambda (_g242288242304_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g242288242304_))
                                  (let ((_e242293242306_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g242288242304_))))
                                    (let ((_hd242292242309_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242293242306_)))
                                          (_tl242291242311_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242293242306_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242291242311_))
                                          (let ((_e242296242314_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242291242311_))))
                                            (let ((_hd242295242317_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242296242314_)))
                                                  (_tl242294242319_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242296242314_))))
                                              ((lambda (_L242322_ _L242323_)
                                                 (let* ((_self242356_
                                                         (list-ref
                                                          _L242323_
                                                          _self-index241683_))
                                                        (_body242362_
                                                         (map (lambda (_g242357242359_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g242357242359_
                           _self242356_
                           _$t242190_
                           _method-calls239388_
                           _slot-refs239389_
                           _class-type-check239390_
                           _struct-type-check1242284_
                           _struct-type-check2242285_)))
                      _L242322_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp248085
                                                          (let ((__tmp248086
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L242323_ _body242362_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp248086))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp248085
                                                      _L241966_))))
                                               _tl242294242319_
                                               _hd242295242317_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g242287242301_
                                             _g242288242304_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g242287242301_ _g242288242304_))))))
                      (declare (not safe))
                      (_g242286242365_ _L241966_))))
                 (_make-specializer-case-lambda-expr242507_
                  (lambda (_struct-type-check1242370_
                           _struct-type-check2242371_)
                    (let* ((_g242373242392_
                            (lambda (_g242374242389_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g242374242389_))))
                           (_g242372242504_
                            (lambda (_g242374242395_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g242374242395_))
                                  (let ((_e242378242397_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g242374242395_))))
                                    (let ((_hd242377242400_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242378242397_)))
                                          (_tl242376242402_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242378242397_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl242376242402_))
                                          (let ((_g248087_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl242376242402_
                                                    '0))))
                                            (begin
                                              (let ((_g248088_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g248087_)
                                                           (##vector-length
                                                            _g248087_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g248088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g248088_)))
                                              (let ((_target242379242405_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g248087_
                                                        0)))
                                                    (_tl242381242407_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g248087_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl242381242407_))
                                                    (letrec ((_loop242382242410_
                                                              (lambda (_hd242380242413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause242386242415_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd242380242413_))
                            (let ((_e242383242418_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd242380242413_))))
                              (let ((_lp-hd242384242421_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e242383242418_)))
                                    (_lp-tl242385242423_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e242383242418_))))
                                (let ((__tmp248091
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd242384242421_
                                               _clause242386242415_))))
                                  (declare (not safe))
                                  (_loop242382242410_
                                   _lp-tl242385242423_
                                   __tmp248091))))
                            (let ((_clause242387242426_
                                   (reverse _clause242386242415_)))
                              ((lambda (_L242429_)
                                 (let* ((_clauses242502_
                                         (map (lambda (_clause242444_)
                                                (let* ((_g242446242457_
                                                        (lambda (_g242447242454_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g242447242454_))))
                                                       (_g242445242492_
                                                        (lambda (_g242447242460_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g242447242460_))
                      (let ((_e242452242462_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g242447242460_))))
                        (let ((_hd242451242465_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242452242462_)))
                              (_tl242450242467_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242452242462_))))
                          ((lambda (_L242470_ _L242471_)
                             (let* ((_self242483_
                                     (list-ref _L242471_ _self-index241683_))
                                    (_body242489_
                                     (map (lambda (_g242484242486_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g242484242486_
                                               _self242483_
                                               _$t242190_
                                               _method-calls239388_
                                               _slot-refs239389_
                                               _class-type-check239390_
                                               _struct-type-check1242370_
                                               _struct-type-check2242371_)))
                                          _L242470_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L242471_ _body242489_))))
                           _tl242450242467_
                           _hd242451242465_)))
                      (let ()
                        (declare (not safe))
                        (_g242446242457_ _g242447242460_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g242445242492_
                                                   _clause242444_)))
                                              (let ((__tmp248089
                                                     (lambda (_g242494242497_
                                                              _g242495242499_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g242494242497_
                                                               _g242495242499_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp248089
                                                        '()
                                                        _L242429_))))
                                        (__tmp248090
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses242502_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp248090
                                    _L241965_)))
                               _clause242387242426_))))))
              (let ()
                (declare (not safe))
                (_loop242382242410_ _target242379242405_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g242373242392_
                                                       _g242374242395_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g242373242392_
                                             _g242374242395_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g242373242392_ _g242374242395_))))))
                      (declare (not safe))
                      (_g242372242504_ _L241965_))))
                 (_make-specializer-impl242512_
                  (lambda (_specializer-lambda-expr242509_
                           _specializer-case-lambda-expr242510_)
                    (let ((__tmp248092
                           (let ((__tmp248093
                                  (let ((__tmp248095
                                         (let ((__tmp248096
                                                (let ((__tmp248113
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L241384_ '())))
                                                      (__tmp248097
                                                       (let ((__tmp248098
                                                              (let ((__tmp248099
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp248101
                                    (let ((__tmp248102
                                           (let ((__tmp248112
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L241383_ '())))
                                                 (__tmp248103
                                                  (let ((__tmp248104
                                                         (let ((__tmp248105
                                                                (let ((__tmp248106
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp248108
                                      (let ((__tmp248109
                                             (let ((__tmp248111
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L241967_ '())))
                                                   (__tmp248110
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr242509_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp248111
                                                     __tmp248110))))
                                        (declare (not safe))
                                        (cons __tmp248109 '())))
                                     (__tmp248107
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr242510_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp248108 __tmp248107))))
                          (declare (not safe))
                          (cons '%#let-values __tmp248106))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp248105 _stx239294_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp248104 '()))))
                                             (declare (not safe))
                                             (cons __tmp248112 __tmp248103))))
                                      (declare (not safe))
                                      (cons __tmp248102 '())))
                                   (__tmp248100
                                    (let ()
                                      (declare (not safe))
                                      (cons _L241381_ '()))))
                               (declare (not safe))
                               (cons __tmp248101 __tmp248100))))
                        (declare (not safe))
                        (cons '%#let-values __tmp248099))))
                 (declare (not safe))
                 (cons __tmp248098 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp248113
                                                        __tmp248097))))
                                           (declare (not safe))
                                           (cons __tmp248096 '())))
                                        (__tmp248094
                                         (let ()
                                           (declare (not safe))
                                           (cons _L241380_ '()))))
                                    (declare (not safe))
                                    (cons __tmp248095 __tmp248094))))
                             (declare (not safe))
                             (cons '%#let-values __tmp248093))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp248092 _stx239294_))))
                 (_specializer-lambda-expr242514_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr242368_
                     _struct-check-all242260_
                     _empty239393_)))
                 (_specializer-case-lambda-expr242516_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr242507_
                     _struct-check-all242260_
                     _empty239393_)))
                 (_specializer-impl242518_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl242512_
                     _specializer-lambda-expr242514_
                     _specializer-case-lambda-expr242516_)))
                 (_unchecked-specializer-lambda-expr242520_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?239396_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr242368_
                         _empty239393_
                         _struct-check-all242260_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr242522_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?239396_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr242507_
                         _empty239393_
                         _struct-check-all242260_))
                      '#f))
                 (_unchecked-specializer-impl242524_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?239396_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl242512_
                         _unchecked-specializer-lambda-expr242520_
                         _unchecked-specializer-case-lambda-expr242522_))
                      '#f))
                 (_specializer-impl242526_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl239300_
                     _$t242190_
                     _methods-bind242213_
                     _slots-bind242236_
                     _class-check-bind242258_
                     _struct-check-bind242282_
                     _specializer-impl242518_
                     _lifted-specializer-id242188_
                     _unchecked-specializer-impl242524_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp248115
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L239369_)))
                                                          (__tmp248114
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id242181_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp248115
                                                       '" => "
                                                       __tmp248114))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def239301_
                                                       _L239369_
                                                       _specializer-id242181_
                                                       _specializer-impl242526_
                                                       _lifted-specializer-id242188_
                                                       _unchecked-specializer-impl242524_)))))
                                            _hd241898241960_
                                            _hd241895241952_
                                            _hd241892241944_)
                                           (let ()
                                             (declare (not safe))
                                             (_g241874241904_
                                              _g241875241907_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g241874241904_ _g241875241907_)))
                               (let ()
                                 (declare (not safe))
                                 (_g241874241904_ _g241875241907_)))
                           (let ()
                             (declare (not safe))
                             (_g241874241904_ _g241875241907_)))))
                   (let ()
                     (declare (not safe))
                     (_g241874241904_ _g241875241907_)))
               (let ()
                 (declare (not safe))
                 (_g241874241904_ _g241875241907_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g241874241904_
                                                  _g241875241907_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g241874241904_ _g241875241907_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g241874241904_ _g241875241907_)))))
                       (let ()
                         (declare (not safe))
                         (_g241874241904_ _g241875241907_)))))
               (let ()
                 (declare (not safe))
                 (_g241874241904_ _g241875241907_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g241873242529_ _L241382_))
                                         _stx239294_))))
                             _hd241479241602_
                             _kw-ref241477241623_
                             _hd241467241589_
                             _hd241458241565_
                             _hd241449241541_)
                            (let ()
                              (declare (not safe))
                              (_g241423241485_ _g241424241488_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop241472241607_
                                                   _target241469241594_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g241423241485_
                                                 _g241424241488_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g241423241485_ _g241424241488_))))))
                            (let ()
                              (declare (not safe))
                              (_g241423241485_ _g241424241488_)))
                        (let ()
                          (declare (not safe))
                          (_g241423241485_ _g241424241488_)))
                    (let ()
                      (declare (not safe))
                      (_g241423241485_ _g241424241488_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g241423241485_
                                                       _g241424241488_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g241423241485_
                                                   _g241424241488_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g241423241485_
                                               _g241424241488_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g241423241485_ _g241424241488_)))))
                            (let ()
                              (declare (not safe))
                              (_g241423241485_ _g241424241488_)))
                        (let ()
                          (declare (not safe))
                          (_g241423241485_ _g241424241488_)))))
                (let ()
                  (declare (not safe))
                  (_g241423241485_ _g241424241488_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g241423241485_
                                                       _g241424241488_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g241423241485_
                                                   _g241424241488_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g241423241485_ _g241424241488_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g241423241485_ _g241424241488_)))
                            (let ()
                              (declare (not safe))
                              (_g241423241485_ _g241424241488_)))))
                    (let ()
                      (declare (not safe))
                      (_g241423241485_ _g241424241488_)))
                (let ()
                  (declare (not safe))
                  (_g241423241485_ _g241424241488_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g241423241485_
                                                       _g241424241488_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g241423241485_
                                               _g241424241488_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g241423241485_ _g241424241488_)))
                                (let ()
                                  (declare (not safe))
                                  (_g241423241485_ _g241424241488_)))
                            (let ()
                              (declare (not safe))
                              (_g241423241485_ _g241424241488_)))))
                    (let ()
                      (declare (not safe))
                      (_g241423241485_ _g241424241488_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g241423241485_
                                                       _g241424241488_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g241423241485_
                                               _g241424241488_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g241423241485_ _g241424241488_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g241423241485_ _g241424241488_)))))
                            (let ()
                              (declare (not safe))
                              (_g241423241485_ _g241424241488_))))))
                (declare (not safe))
                (_g241422242532_ _L241381_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd241257241375_
                                                    _hd241254241367_
                                                    _hd241251241359_
                                                    _hd241248241351_
                                                    _hd241230241303_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g241210241263_
                                                      _g241211241266_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g241210241263_
                                              _g241211241266_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g241210241263_ _g241211241266_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g241210241263_ _g241211241266_)))
                               (let ()
                                 (declare (not safe))
                                 (_g241210241263_ _g241211241266_)))))
                       (let ()
                         (declare (not safe))
                         (_g241210241263_ _g241211241266_)))
                   (let ()
                     (declare (not safe))
                     (_g241210241263_ _g241211241266_)))
               (let ()
                 (declare (not safe))
                 (_g241210241263_ _g241211241266_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g241210241263_
                                                  _g241211241266_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g241210241263_
                                              _g241211241266_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g241210241263_ _g241211241266_)))))
                           (let ()
                             (declare (not safe))
                             (_g241210241263_ _g241211241266_)))))
                   (let ()
                     (declare (not safe))
                     (_g241210241263_ _g241211241266_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g241210241263_
                                                      _g241211241266_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g241210241263_
                                                  _g241211241266_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g241210241263_
                                              _g241211241266_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g241210241263_ _g241211241266_)))))
                           (let ()
                             (declare (not safe))
                             (_g241210241263_ _g241211241266_)))
                       (let ()
                         (declare (not safe))
                         (_g241210241263_ _g241211241266_)))))
               (let ()
                 (declare (not safe))
                 (_g241210241263_ _g241211241266_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g241210241263_
                                                  _g241211241266_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g241210241263_ _g241211241266_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g241210241263_ _g241211241266_)))
                           (let ()
                             (declare (not safe))
                             (_g241210241263_ _g241211241266_)))
                       (let ()
                         (declare (not safe))
                         (_g241210241263_ _g241211241266_)))))
               (let ()
                 (declare (not safe))
                 (_g241210241263_ _g241211241266_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g241209242535_ _L239368_))
                                         _stx239294_))))))))
                  (___kont246841246842_ (lambda () _stx239294_)))
              (let ((___match246870246871_
                     (lambda (_e239310239336_
                              _hd239309239339_
                              _tl239308239341_
                              _e239313239344_
                              _hd239312239347_
                              _tl239311239349_
                              _e239316239352_
                              _hd239315239355_
                              _tl239314239357_
                              _e239319239360_
                              _hd239318239363_
                              _tl239317239365_)
                       (let ((_L239368_ _hd239318239363_)
                             (_L239369_ _hd239315239355_))
                         (if (let ((__tmp248232
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L239369_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp248232))
                             (___kont246839246840_ _L239368_ _L239369_)
                             (___kont246841246842_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx246837246838_))
                    (let ((_e239310239336_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx246837246838_))))
                      (let ((_tl239308239341_
                             (let ()
                               (declare (not safe))
                               (##cdr _e239310239336_)))
                            (_hd239309239339_
                             (let ()
                               (declare (not safe))
                               (##car _e239310239336_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl239308239341_))
                            (let ((_e239313239344_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl239308239341_))))
                              (let ((_tl239311239349_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239313239344_)))
                                    (_hd239312239347_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239313239344_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd239312239347_))
                                    (let ((_e239316239352_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd239312239347_))))
                                      (let ((_tl239314239357_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e239316239352_)))
                                            (_hd239315239355_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e239316239352_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl239314239357_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl239311239349_))
                                                (let ((_e239319239360_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl239311239349_))))
                                                  (let ((_tl239317239365_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239319239360_)))
                                                        (_hd239318239363_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239319239360_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl239317239365_))
                                                        (___match246870246871_
                                                         _e239310239336_
                                                         _hd239309239339_
                                                         _tl239308239341_
                                                         _e239313239344_
                                                         _hd239312239347_
                                                         _tl239311239349_
                                                         _e239316239352_
                                                         _hd239315239355_
                                                         _tl239314239357_
                                                         _e239319239360_
                                                         _hd239318239363_
                                                         _tl239317239365_)
                                                        (___kont246841246842_))))
                                                (___kont246841246842_))
                                            (___kont246841246842_))))
                                    (___kont246841246842_))))
                            (___kont246841246842_))))
                    (___kont246841246842_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx238270_
               _self238271_
               _methods238272_
               _slots238273_
               _class-check238274_
               _struct-check238275_
               _struct-assert238276_)
        (let* ((___stx246873246874_ _stx238270_)
               (_g238284238506_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx246873246874_)))))
          (let ((___kont246875246876_
                 (lambda (_L239243_ _L239244_ _L239245_ _L239246_)
                   (let ((__tmp248233
                          (let () (declare (not safe)) (gx#stx-e _L239244_))))
                     (declare (not safe))
                     (table-set! _methods238272_ __tmp248233 '#t))
                   (for-each
                    (lambda (_g239279239281_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g239279239281_
                         _self238271_
                         _methods238272_
                         _slots238273_
                         _class-check238274_
                         _struct-check238275_
                         _struct-assert238276_)))
                    (let ((__tmp248234
                           (lambda (_g239283239286_ _g239284239288_)
                             (let ()
                               (declare (not safe))
                               (cons _g239283239286_ _g239284239288_)))))
                      (declare (not safe))
                      (foldr1 __tmp248234 '() _L239243_)))))
                (___kont246879246880_
                 (lambda (_L239078_ _L239079_ _L239080_ _L239081_ _L239082_)
                   (let ((__tmp248235
                          (let () (declare (not safe)) (gx#stx-e _L239079_))))
                     (declare (not safe))
                     (table-set! _methods238272_ __tmp248235 '#t))
                   (for-each
                    (lambda (_g239122239124_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g239122239124_
                         _self238271_
                         _methods238272_
                         _slots238273_
                         _class-check238274_
                         _struct-check238275_
                         _struct-assert238276_)))
                    (let ((__tmp248236
                           (lambda (_g239126239129_ _g239127239131_)
                             (let ()
                               (declare (not safe))
                               (cons _g239126239129_ _g239127239131_)))))
                      (declare (not safe))
                      (foldr1 __tmp248236 '() _L239078_)))))
                (___kont246883246884_
                 (lambda (_L238911_ _L238912_ _L238913_)
                   (let ((__tmp248237
                          (let () (declare (not safe)) (gx#stx-e _L238911_))))
                     (declare (not safe))
                     (table-set! _slots238273_ __tmp248237 '#t))))
                (___kont246885246886_
                 (lambda (_L238788_ _L238789_ _L238790_ _L238791_)
                   (let ((__tmp248238
                          (let () (declare (not safe)) (gx#stx-e _L238789_))))
                     (declare (not safe))
                     (table-set! _slots238273_ __tmp248238 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L238788_
                      _self238271_
                      _methods238272_
                      _slots238273_
                      _class-check238274_
                      _struct-check238275_
                      _struct-assert238276_))))
                (___kont246887246888_
                 (lambda (_L238672_ _L238673_)
                   (let ((__tmp248239
                          (##structure-ref
                           (let ((__tmp248240
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L238673_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp248240))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots238273_ __tmp248239 '#t))))
                (___kont246889246890_
                 (lambda (_L238582_ _L238583_ _L238584_)
                   (let ((__tmp248241
                          (##structure-ref
                           (let ((__tmp248242
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L238584_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp248242))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots238273_ __tmp248241 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L238582_
                      _self238271_
                      _methods238272_
                      _slots238273_
                      _class-check238274_
                      _struct-check238275_
                      _struct-assert238276_))))
                (___kont246891246892_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx238270_
                      _self238271_
                      _methods238272_
                      _slots238273_
                      _class-check238274_
                      _struct-check238275_
                      _struct-assert238276_)))))
            (let* ((___match247372247373_
                    (lambda (_e238480238518_
                             _hd238479238521_
                             _tl238478238523_
                             _e238483238526_
                             _hd238482238529_
                             _tl238481238531_
                             _e238486238534_
                             _hd238485238537_
                             _tl238484238539_
                             _e238489238542_
                             _hd238488238545_
                             _tl238487238547_
                             _e238492238550_
                             _hd238491238553_
                             _tl238490238555_
                             _e238495238558_
                             _hd238494238561_
                             _tl238493238563_
                             _e238498238566_
                             _hd238497238569_
                             _tl238496238571_
                             _e238501238574_
                             _hd238500238577_
                             _tl238499238579_)
                      (let ((_L238582_ _hd238500238577_)
                            (_L238583_ _hd238497238569_)
                            (_L238584_ _hd238488238545_))
                        (if (and (let ((__tmp248243
                                        (let ((__tmp248244
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L238584_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp248244))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp248243
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L238583_
                                    _self238271_)))
                            (___kont246889246890_
                             _L238582_
                             _L238583_
                             _L238584_)
                            (___kont246891246892_)))))
                   (___match247370247371_
                    (lambda (_e238480238518_
                             _hd238479238521_
                             _tl238478238523_
                             _e238483238526_
                             _hd238482238529_
                             _tl238481238531_
                             _e238486238534_
                             _hd238485238537_
                             _tl238484238539_
                             _e238489238542_
                             _hd238488238545_
                             _tl238487238547_
                             _e238492238550_
                             _hd238491238553_
                             _tl238490238555_
                             _e238495238558_
                             _hd238494238561_
                             _tl238493238563_
                             _e238498238566_
                             _hd238497238569_
                             _tl238496238571_
                             _e238501238574_
                             _hd238500238577_
                             _tl238499238579_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl238499238579_))
                          (___match247372247373_
                           _e238480238518_
                           _hd238479238521_
                           _tl238478238523_
                           _e238483238526_
                           _hd238482238529_
                           _tl238481238531_
                           _e238486238534_
                           _hd238485238537_
                           _tl238484238539_
                           _e238489238542_
                           _hd238488238545_
                           _tl238487238547_
                           _e238492238550_
                           _hd238491238553_
                           _tl238490238555_
                           _e238495238558_
                           _hd238494238561_
                           _tl238493238563_
                           _e238498238566_
                           _hd238497238569_
                           _tl238496238571_
                           _e238501238574_
                           _hd238500238577_
                           _tl238499238579_)
                          (___kont246891246892_))))
                   (___match247364247365_
                    (lambda (_e238480238518_
                             _hd238479238521_
                             _tl238478238523_
                             _e238483238526_
                             _hd238482238529_
                             _tl238481238531_
                             _e238486238534_
                             _hd238485238537_
                             _tl238484238539_
                             _e238489238542_
                             _hd238488238545_
                             _tl238487238547_
                             _e238492238550_
                             _hd238491238553_
                             _tl238490238555_
                             _e238495238558_
                             _hd238494238561_
                             _tl238493238563_
                             _e238498238566_
                             _hd238497238569_
                             _tl238496238571_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl238490238555_))
                          (let ((_e238501238574_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl238490238555_))))
                            (let ((_tl238499238579_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238501238574_)))
                                  (_hd238500238577_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238501238574_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl238499238579_))
                                  (___match247372247373_
                                   _e238480238518_
                                   _hd238479238521_
                                   _tl238478238523_
                                   _e238483238526_
                                   _hd238482238529_
                                   _tl238481238531_
                                   _e238486238534_
                                   _hd238485238537_
                                   _tl238484238539_
                                   _e238489238542_
                                   _hd238488238545_
                                   _tl238487238547_
                                   _e238492238550_
                                   _hd238491238553_
                                   _tl238490238555_
                                   _e238495238558_
                                   _hd238494238561_
                                   _tl238493238563_
                                   _e238498238566_
                                   _hd238497238569_
                                   _tl238496238571_
                                   _e238501238574_
                                   _hd238500238577_
                                   _tl238499238579_)
                                  (___kont246891246892_))))
                          (___kont246891246892_))))
                   (___match247310247311_
                    (lambda (_e238456238616_
                             _hd238455238619_
                             _tl238454238621_
                             _e238459238624_
                             _hd238458238627_
                             _tl238457238629_
                             _e238462238632_
                             _hd238461238635_
                             _tl238460238637_
                             _e238465238640_
                             _hd238464238643_
                             _tl238463238645_
                             _e238468238648_
                             _hd238467238651_
                             _tl238466238653_
                             _e238471238656_
                             _hd238470238659_
                             _tl238469238661_
                             _e238474238664_
                             _hd238473238667_
                             _tl238472238669_)
                      (let ((_L238672_ _hd238473238667_)
                            (_L238673_ _hd238464238643_))
                        (if (and (let ((__tmp248245
                                        (let ((__tmp248246
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L238673_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp248246))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp248245
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L238672_
                                    _self238271_)))
                            (___kont246887246888_ _L238672_ _L238673_)
                            (___kont246891246892_)))))
                   (___match247308247309_
                    (lambda (_e238456238616_
                             _hd238455238619_
                             _tl238454238621_
                             _e238459238624_
                             _hd238458238627_
                             _tl238457238629_
                             _e238462238632_
                             _hd238461238635_
                             _tl238460238637_
                             _e238465238640_
                             _hd238464238643_
                             _tl238463238645_
                             _e238468238648_
                             _hd238467238651_
                             _tl238466238653_
                             _e238471238656_
                             _hd238470238659_
                             _tl238469238661_
                             _e238474238664_
                             _hd238473238667_
                             _tl238472238669_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl238466238653_))
                          (___match247310247311_
                           _e238456238616_
                           _hd238455238619_
                           _tl238454238621_
                           _e238459238624_
                           _hd238458238627_
                           _tl238457238629_
                           _e238462238632_
                           _hd238461238635_
                           _tl238460238637_
                           _e238465238640_
                           _hd238464238643_
                           _tl238463238645_
                           _e238468238648_
                           _hd238467238651_
                           _tl238466238653_
                           _e238471238656_
                           _hd238470238659_
                           _tl238469238661_
                           _e238474238664_
                           _hd238473238667_
                           _tl238472238669_)
                          (___match247364247365_
                           _e238456238616_
                           _hd238455238619_
                           _tl238454238621_
                           _e238459238624_
                           _hd238458238627_
                           _tl238457238629_
                           _e238462238632_
                           _hd238461238635_
                           _tl238460238637_
                           _e238465238640_
                           _hd238464238643_
                           _tl238463238645_
                           _e238468238648_
                           _hd238467238651_
                           _tl238466238653_
                           _e238471238656_
                           _hd238470238659_
                           _tl238469238661_
                           _e238474238664_
                           _hd238473238667_
                           _tl238472238669_))))
                   (___match247254247255_
                    (lambda (_e238421238700_
                             _hd238420238703_
                             _tl238419238705_
                             _e238424238708_
                             _hd238423238711_
                             _tl238422238713_
                             _e238427238716_
                             _hd238426238719_
                             _tl238425238721_
                             _e238430238724_
                             _hd238429238727_
                             _tl238428238729_
                             _e238433238732_
                             _hd238432238735_
                             _tl238431238737_
                             _e238436238740_
                             _hd238435238743_
                             _tl238434238745_
                             _e238439238748_
                             _hd238438238751_
                             _tl238437238753_
                             _e238442238756_
                             _hd238441238759_
                             _tl238440238761_
                             _e238445238764_
                             _hd238444238767_
                             _tl238443238769_
                             _e238448238772_
                             _hd238447238775_
                             _tl238446238777_
                             _e238451238780_
                             _hd238450238783_
                             _tl238449238785_)
                      (let ((_L238788_ _hd238450238783_)
                            (_L238789_ _hd238447238775_)
                            (_L238790_ _hd238438238751_)
                            (_L238791_ _hd238429238727_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L238791_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L238791_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L238790_
                                    _self238271_)))
                            (___kont246885246886_
                             _L238788_
                             _L238789_
                             _L238790_
                             _L238791_)
                            (___kont246891246892_)))))
                   (___match247246247247_
                    (lambda (_e238421238700_
                             _hd238420238703_
                             _tl238419238705_
                             _e238424238708_
                             _hd238423238711_
                             _tl238422238713_
                             _e238427238716_
                             _hd238426238719_
                             _tl238425238721_
                             _e238430238724_
                             _hd238429238727_
                             _tl238428238729_
                             _e238433238732_
                             _hd238432238735_
                             _tl238431238737_
                             _e238436238740_
                             _hd238435238743_
                             _tl238434238745_
                             _e238439238748_
                             _hd238438238751_
                             _tl238437238753_
                             _e238442238756_
                             _hd238441238759_
                             _tl238440238761_
                             _e238445238764_
                             _hd238444238767_
                             _tl238443238769_
                             _e238448238772_
                             _hd238447238775_
                             _tl238446238777_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl238440238761_))
                          (let ((_e238451238780_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl238440238761_))))
                            (let ((_tl238449238785_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238451238780_)))
                                  (_hd238450238783_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238451238780_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl238449238785_))
                                  (___match247254247255_
                                   _e238421238700_
                                   _hd238420238703_
                                   _tl238419238705_
                                   _e238424238708_
                                   _hd238423238711_
                                   _tl238422238713_
                                   _e238427238716_
                                   _hd238426238719_
                                   _tl238425238721_
                                   _e238430238724_
                                   _hd238429238727_
                                   _tl238428238729_
                                   _e238433238732_
                                   _hd238432238735_
                                   _tl238431238737_
                                   _e238436238740_
                                   _hd238435238743_
                                   _tl238434238745_
                                   _e238439238748_
                                   _hd238438238751_
                                   _tl238437238753_
                                   _e238442238756_
                                   _hd238441238759_
                                   _tl238440238761_
                                   _e238445238764_
                                   _hd238444238767_
                                   _tl238443238769_
                                   _e238448238772_
                                   _hd238447238775_
                                   _tl238446238777_
                                   _e238451238780_
                                   _hd238450238783_
                                   _tl238449238785_)
                                  (___kont246891246892_))))
                          (___match247370247371_
                           _e238421238700_
                           _hd238420238703_
                           _tl238419238705_
                           _e238424238708_
                           _hd238423238711_
                           _tl238422238713_
                           _e238427238716_
                           _hd238426238719_
                           _tl238425238721_
                           _e238430238724_
                           _hd238429238727_
                           _tl238428238729_
                           _e238433238732_
                           _hd238432238735_
                           _tl238431238737_
                           _e238436238740_
                           _hd238435238743_
                           _tl238434238745_
                           _e238439238748_
                           _hd238438238751_
                           _tl238437238753_
                           _e238442238756_
                           _hd238441238759_
                           _tl238440238761_))))
                   (___match247168247169_
                    (lambda (_e238387238831_
                             _hd238386238834_
                             _tl238385238836_
                             _e238390238839_
                             _hd238389238842_
                             _tl238388238844_
                             _e238393238847_
                             _hd238392238850_
                             _tl238391238852_
                             _e238396238855_
                             _hd238395238858_
                             _tl238394238860_
                             _e238399238863_
                             _hd238398238866_
                             _tl238397238868_
                             _e238402238871_
                             _hd238401238874_
                             _tl238400238876_
                             _e238405238879_
                             _hd238404238882_
                             _tl238403238884_
                             _e238408238887_
                             _hd238407238890_
                             _tl238406238892_
                             _e238411238895_
                             _hd238410238898_
                             _tl238409238900_
                             _e238414238903_
                             _hd238413238906_
                             _tl238412238908_)
                      (let ((_L238911_ _hd238413238906_)
                            (_L238912_ _hd238404238882_)
                            (_L238913_ _hd238395238858_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L238913_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L238913_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L238912_
                                    _self238271_)))
                            (___kont246883246884_
                             _L238911_
                             _L238912_
                             _L238913_)
                            (___match247372247373_
                             _e238387238831_
                             _hd238386238834_
                             _tl238385238836_
                             _e238390238839_
                             _hd238389238842_
                             _tl238388238844_
                             _e238393238847_
                             _hd238392238850_
                             _tl238391238852_
                             _e238396238855_
                             _hd238395238858_
                             _tl238394238860_
                             _e238399238863_
                             _hd238398238866_
                             _tl238397238868_
                             _e238402238871_
                             _hd238401238874_
                             _tl238400238876_
                             _e238405238879_
                             _hd238404238882_
                             _tl238403238884_
                             _e238408238887_
                             _hd238407238890_
                             _tl238406238892_)))))
                   (___match247166247167_
                    (lambda (_e238387238831_
                             _hd238386238834_
                             _tl238385238836_
                             _e238390238839_
                             _hd238389238842_
                             _tl238388238844_
                             _e238393238847_
                             _hd238392238850_
                             _tl238391238852_
                             _e238396238855_
                             _hd238395238858_
                             _tl238394238860_
                             _e238399238863_
                             _hd238398238866_
                             _tl238397238868_
                             _e238402238871_
                             _hd238401238874_
                             _tl238400238876_
                             _e238405238879_
                             _hd238404238882_
                             _tl238403238884_
                             _e238408238887_
                             _hd238407238890_
                             _tl238406238892_
                             _e238411238895_
                             _hd238410238898_
                             _tl238409238900_
                             _e238414238903_
                             _hd238413238906_
                             _tl238412238908_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl238406238892_))
                          (___match247168247169_
                           _e238387238831_
                           _hd238386238834_
                           _tl238385238836_
                           _e238390238839_
                           _hd238389238842_
                           _tl238388238844_
                           _e238393238847_
                           _hd238392238850_
                           _tl238391238852_
                           _e238396238855_
                           _hd238395238858_
                           _tl238394238860_
                           _e238399238863_
                           _hd238398238866_
                           _tl238397238868_
                           _e238402238871_
                           _hd238401238874_
                           _tl238400238876_
                           _e238405238879_
                           _hd238404238882_
                           _tl238403238884_
                           _e238408238887_
                           _hd238407238890_
                           _tl238406238892_
                           _e238411238895_
                           _hd238410238898_
                           _tl238409238900_
                           _e238414238903_
                           _hd238413238906_
                           _tl238412238908_)
                          (___match247246247247_
                           _e238387238831_
                           _hd238386238834_
                           _tl238385238836_
                           _e238390238839_
                           _hd238389238842_
                           _tl238388238844_
                           _e238393238847_
                           _hd238392238850_
                           _tl238391238852_
                           _e238396238855_
                           _hd238395238858_
                           _tl238394238860_
                           _e238399238863_
                           _hd238398238866_
                           _tl238397238868_
                           _e238402238871_
                           _hd238401238874_
                           _tl238400238876_
                           _e238405238879_
                           _hd238404238882_
                           _tl238403238884_
                           _e238408238887_
                           _hd238407238890_
                           _tl238406238892_
                           _e238411238895_
                           _hd238410238898_
                           _tl238409238900_
                           _e238414238903_
                           _hd238413238906_
                           _tl238412238908_))))
                   (___match247156247157_
                    (lambda (_e238387238831_
                             _hd238386238834_
                             _tl238385238836_
                             _e238390238839_
                             _hd238389238842_
                             _tl238388238844_
                             _e238393238847_
                             _hd238392238850_
                             _tl238391238852_
                             _e238396238855_
                             _hd238395238858_
                             _tl238394238860_
                             _e238399238863_
                             _hd238398238866_
                             _tl238397238868_
                             _e238402238871_
                             _hd238401238874_
                             _tl238400238876_
                             _e238405238879_
                             _hd238404238882_
                             _tl238403238884_
                             _e238408238887_
                             _hd238407238890_
                             _tl238406238892_
                             _e238411238895_
                             _hd238410238898_
                             _tl238409238900_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd238410238898_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl238409238900_))
                              (let ((_e238414238903_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl238409238900_))))
                                (let ((_tl238412238908_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e238414238903_)))
                                      (_hd238413238906_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e238414238903_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl238412238908_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl238406238892_))
                                          (___match247168247169_
                                           _e238387238831_
                                           _hd238386238834_
                                           _tl238385238836_
                                           _e238390238839_
                                           _hd238389238842_
                                           _tl238388238844_
                                           _e238393238847_
                                           _hd238392238850_
                                           _tl238391238852_
                                           _e238396238855_
                                           _hd238395238858_
                                           _tl238394238860_
                                           _e238399238863_
                                           _hd238398238866_
                                           _tl238397238868_
                                           _e238402238871_
                                           _hd238401238874_
                                           _tl238400238876_
                                           _e238405238879_
                                           _hd238404238882_
                                           _tl238403238884_
                                           _e238408238887_
                                           _hd238407238890_
                                           _tl238406238892_
                                           _e238411238895_
                                           _hd238410238898_
                                           _tl238409238900_
                                           _e238414238903_
                                           _hd238413238906_
                                           _tl238412238908_)
                                          (___match247246247247_
                                           _e238387238831_
                                           _hd238386238834_
                                           _tl238385238836_
                                           _e238390238839_
                                           _hd238389238842_
                                           _tl238388238844_
                                           _e238393238847_
                                           _hd238392238850_
                                           _tl238391238852_
                                           _e238396238855_
                                           _hd238395238858_
                                           _tl238394238860_
                                           _e238399238863_
                                           _hd238398238866_
                                           _tl238397238868_
                                           _e238402238871_
                                           _hd238401238874_
                                           _tl238400238876_
                                           _e238405238879_
                                           _hd238404238882_
                                           _tl238403238884_
                                           _e238408238887_
                                           _hd238407238890_
                                           _tl238406238892_
                                           _e238411238895_
                                           _hd238410238898_
                                           _tl238409238900_
                                           _e238414238903_
                                           _hd238413238906_
                                           _tl238412238908_))
                                      (___match247370247371_
                                       _e238387238831_
                                       _hd238386238834_
                                       _tl238385238836_
                                       _e238390238839_
                                       _hd238389238842_
                                       _tl238388238844_
                                       _e238393238847_
                                       _hd238392238850_
                                       _tl238391238852_
                                       _e238396238855_
                                       _hd238395238858_
                                       _tl238394238860_
                                       _e238399238863_
                                       _hd238398238866_
                                       _tl238397238868_
                                       _e238402238871_
                                       _hd238401238874_
                                       _tl238400238876_
                                       _e238405238879_
                                       _hd238404238882_
                                       _tl238403238884_
                                       _e238408238887_
                                       _hd238407238890_
                                       _tl238406238892_))))
                              (___match247370247371_
                               _e238387238831_
                               _hd238386238834_
                               _tl238385238836_
                               _e238390238839_
                               _hd238389238842_
                               _tl238388238844_
                               _e238393238847_
                               _hd238392238850_
                               _tl238391238852_
                               _e238396238855_
                               _hd238395238858_
                               _tl238394238860_
                               _e238399238863_
                               _hd238398238866_
                               _tl238397238868_
                               _e238402238871_
                               _hd238401238874_
                               _tl238400238876_
                               _e238405238879_
                               _hd238404238882_
                               _tl238403238884_
                               _e238408238887_
                               _hd238407238890_
                               _tl238406238892_))
                          (___match247370247371_
                           _e238387238831_
                           _hd238386238834_
                           _tl238385238836_
                           _e238390238839_
                           _hd238389238842_
                           _tl238388238844_
                           _e238393238847_
                           _hd238392238850_
                           _tl238391238852_
                           _e238396238855_
                           _hd238395238858_
                           _tl238394238860_
                           _e238399238863_
                           _hd238398238866_
                           _tl238397238868_
                           _e238402238871_
                           _hd238401238874_
                           _tl238400238876_
                           _e238405238879_
                           _hd238404238882_
                           _tl238403238884_
                           _e238408238887_
                           _hd238407238890_
                           _tl238406238892_))))
                   (___match247088247089_
                    (lambda (_e238336238950_
                             _hd238335238953_
                             _tl238334238955_
                             _e238339238958_
                             _hd238338238961_
                             _tl238337238963_
                             _e238342238966_
                             _hd238341238969_
                             _tl238340238971_
                             _e238345238974_
                             _hd238344238977_
                             _tl238343238979_
                             _e238348238982_
                             _hd238347238985_
                             _tl238346238987_
                             _e238351238990_
                             _hd238350238993_
                             _tl238349238995_
                             _e238354238998_
                             _hd238353239001_
                             _tl238352239003_
                             _e238357239006_
                             _hd238356239009_
                             _tl238355239011_
                             _e238360239014_
                             _hd238359239017_
                             _tl238358239019_
                             _e238363239022_
                             _hd238362239025_
                             _tl238361239027_
                             _e238366239030_
                             _hd238365239033_
                             _tl238364239035_
                             _e238369239038_
                             _hd238368239041_
                             _tl238367239043_
                             _e238372239046_
                             _hd238371239049_
                             _tl238370239051_
                             ___splice246881246882_
                             _target238373239054_
                             _tl238375239056_)
                      (letrec ((_loop238376239059_
                                (lambda (_hd238374239062_ _args238380239064_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd238374239062_))
                                      (let ((_e238377239067_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd238374239062_))))
                                        (let ((_lp-tl238379239072_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e238377239067_)))
                                              (_lp-hd238378239070_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e238377239067_))))
                                          (let ((__tmp248247
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd238378239070_
                                                         _args238380239064_))))
                                            (declare (not safe))
                                            (_loop238376239059_
                                             _lp-tl238379239072_
                                             __tmp248247))))
                                      (let ((_args238381239075_
                                             (reverse _args238380239064_)))
                                        (let ((_L239078_ _args238381239075_)
                                              (_L239079_ _hd238371239049_)
                                              (_L239080_ _hd238362239025_)
                                              (_L239081_ _hd238353239001_)
                                              (_L239082_ _hd238344238977_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L239082_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L239081_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L239080_
                                                      _self238271_)))
                                              (___kont246879246880_
                                               _L239078_
                                               _L239079_
                                               _L239080_
                                               _L239081_
                                               _L239082_)
                                              (___kont246891246892_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop238376239059_ _target238373239054_ '())))))
                   (___match247046247047_
                    (lambda (_e238336238950_
                             _hd238335238953_
                             _tl238334238955_
                             _e238339238958_
                             _hd238338238961_
                             _tl238337238963_
                             _e238342238966_
                             _hd238341238969_
                             _tl238340238971_
                             _e238345238974_
                             _hd238344238977_
                             _tl238343238979_
                             _e238348238982_
                             _hd238347238985_
                             _tl238346238987_
                             _e238351238990_
                             _hd238350238993_
                             _tl238349238995_
                             _e238354238998_
                             _hd238353239001_
                             _tl238352239003_
                             _e238357239006_
                             _hd238356239009_
                             _tl238355239011_
                             _e238360239014_
                             _hd238359239017_
                             _tl238358239019_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd238359239017_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl238358239019_))
                              (let ((_e238363239022_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl238358239019_))))
                                (let ((_tl238361239027_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e238363239022_)))
                                      (_hd238362239025_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e238363239022_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl238361239027_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl238355239011_))
                                          (let ((_e238366239030_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl238355239011_))))
                                            (let ((_tl238364239035_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e238366239030_)))
                                                  (_hd238365239033_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e238366239030_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd238365239033_))
                                                  (let ((_e238369239038_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd238365239033_))))
                                                    (let ((_tl238367239043_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e238369239038_)))
                                                          (_hd238368239041_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e238369239038_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd238368239041_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd238368239041_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl238367239043_))
                          (let ((_e238372239046_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl238367239043_))))
                            (let ((_tl238370239051_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238372239046_)))
                                  (_hd238371239049_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238372239046_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl238370239051_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl238364239035_))
                                      (let ((___splice246881246882_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl238364239035_
                                                '0))))
                                        (let ((_tl238375239056_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice246881246882_
                                                  '1)))
                                              (_target238373239054_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice246881246882_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl238375239056_))
                                              (___match247088247089_
                                               _e238336238950_
                                               _hd238335238953_
                                               _tl238334238955_
                                               _e238339238958_
                                               _hd238338238961_
                                               _tl238337238963_
                                               _e238342238966_
                                               _hd238341238969_
                                               _tl238340238971_
                                               _e238345238974_
                                               _hd238344238977_
                                               _tl238343238979_
                                               _e238348238982_
                                               _hd238347238985_
                                               _tl238346238987_
                                               _e238351238990_
                                               _hd238350238993_
                                               _tl238349238995_
                                               _e238354238998_
                                               _hd238353239001_
                                               _tl238352239003_
                                               _e238357239006_
                                               _hd238356239009_
                                               _tl238355239011_
                                               _e238360239014_
                                               _hd238359239017_
                                               _tl238358239019_
                                               _e238363239022_
                                               _hd238362239025_
                                               _tl238361239027_
                                               _e238366239030_
                                               _hd238365239033_
                                               _tl238364239035_
                                               _e238369239038_
                                               _hd238368239041_
                                               _tl238367239043_
                                               _e238372239046_
                                               _hd238371239049_
                                               _tl238370239051_
                                               ___splice246881246882_
                                               _target238373239054_
                                               _tl238375239056_)
                                              (___kont246891246892_))))
                                      (___kont246891246892_))
                                  (___kont246891246892_))))
                          (___kont246891246892_))
                      (___kont246891246892_))
                  (___kont246891246892_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont246891246892_))))
                                          (___match247370247371_
                                           _e238336238950_
                                           _hd238335238953_
                                           _tl238334238955_
                                           _e238339238958_
                                           _hd238338238961_
                                           _tl238337238963_
                                           _e238342238966_
                                           _hd238341238969_
                                           _tl238340238971_
                                           _e238345238974_
                                           _hd238344238977_
                                           _tl238343238979_
                                           _e238348238982_
                                           _hd238347238985_
                                           _tl238346238987_
                                           _e238351238990_
                                           _hd238350238993_
                                           _tl238349238995_
                                           _e238354238998_
                                           _hd238353239001_
                                           _tl238352239003_
                                           _e238357239006_
                                           _hd238356239009_
                                           _tl238355239011_))
                                      (___match247370247371_
                                       _e238336238950_
                                       _hd238335238953_
                                       _tl238334238955_
                                       _e238339238958_
                                       _hd238338238961_
                                       _tl238337238963_
                                       _e238342238966_
                                       _hd238341238969_
                                       _tl238340238971_
                                       _e238345238974_
                                       _hd238344238977_
                                       _tl238343238979_
                                       _e238348238982_
                                       _hd238347238985_
                                       _tl238346238987_
                                       _e238351238990_
                                       _hd238350238993_
                                       _tl238349238995_
                                       _e238354238998_
                                       _hd238353239001_
                                       _tl238352239003_
                                       _e238357239006_
                                       _hd238356239009_
                                       _tl238355239011_))))
                              (___match247370247371_
                               _e238336238950_
                               _hd238335238953_
                               _tl238334238955_
                               _e238339238958_
                               _hd238338238961_
                               _tl238337238963_
                               _e238342238966_
                               _hd238341238969_
                               _tl238340238971_
                               _e238345238974_
                               _hd238344238977_
                               _tl238343238979_
                               _e238348238982_
                               _hd238347238985_
                               _tl238346238987_
                               _e238351238990_
                               _hd238350238993_
                               _tl238349238995_
                               _e238354238998_
                               _hd238353239001_
                               _tl238352239003_
                               _e238357239006_
                               _hd238356239009_
                               _tl238355239011_))
                          (___match247156247157_
                           _e238336238950_
                           _hd238335238953_
                           _tl238334238955_
                           _e238339238958_
                           _hd238338238961_
                           _tl238337238963_
                           _e238342238966_
                           _hd238341238969_
                           _tl238340238971_
                           _e238345238974_
                           _hd238344238977_
                           _tl238343238979_
                           _e238348238982_
                           _hd238347238985_
                           _tl238346238987_
                           _e238351238990_
                           _hd238350238993_
                           _tl238349238995_
                           _e238354238998_
                           _hd238353239001_
                           _tl238352239003_
                           _e238357239006_
                           _hd238356239009_
                           _tl238355239011_
                           _e238360239014_
                           _hd238359239017_
                           _tl238358239019_))))
                   (___match246978246979_
                    (lambda (_e238292239139_
                             _hd238291239142_
                             _tl238290239144_
                             _e238295239147_
                             _hd238294239150_
                             _tl238293239152_
                             _e238298239155_
                             _hd238297239158_
                             _tl238296239160_
                             _e238301239163_
                             _hd238300239166_
                             _tl238299239168_
                             _e238304239171_
                             _hd238303239174_
                             _tl238302239176_
                             _e238307239179_
                             _hd238306239182_
                             _tl238305239184_
                             _e238310239187_
                             _hd238309239190_
                             _tl238308239192_
                             _e238313239195_
                             _hd238312239198_
                             _tl238311239200_
                             _e238316239203_
                             _hd238315239206_
                             _tl238314239208_
                             _e238319239211_
                             _hd238318239214_
                             _tl238317239216_
                             ___splice246877246878_
                             _target238320239219_
                             _tl238322239221_)
                      (letrec ((_loop238323239224_
                                (lambda (_hd238321239227_ _args238327239229_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd238321239227_))
                                      (let ((_e238324239232_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd238321239227_))))
                                        (let ((_lp-tl238326239237_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e238324239232_)))
                                              (_lp-hd238325239235_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e238324239232_))))
                                          (let ((__tmp248248
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd238325239235_
                                                         _args238327239229_))))
                                            (declare (not safe))
                                            (_loop238323239224_
                                             _lp-tl238326239237_
                                             __tmp248248))))
                                      (let ((_args238328239240_
                                             (reverse _args238327239229_)))
                                        (let ((_L239243_ _args238328239240_)
                                              (_L239244_ _hd238318239214_)
                                              (_L239245_ _hd238309239190_)
                                              (_L239246_ _hd238300239166_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L239246_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L239245_
                                                      _self238271_)))
                                              (___kont246875246876_
                                               _L239243_
                                               _L239244_
                                               _L239245_
                                               _L239246_)
                                              (___match247166247167_
                                               _e238292239139_
                                               _hd238291239142_
                                               _tl238290239144_
                                               _e238295239147_
                                               _hd238294239150_
                                               _tl238293239152_
                                               _e238298239155_
                                               _hd238297239158_
                                               _tl238296239160_
                                               _e238301239163_
                                               _hd238300239166_
                                               _tl238299239168_
                                               _e238304239171_
                                               _hd238303239174_
                                               _tl238302239176_
                                               _e238307239179_
                                               _hd238306239182_
                                               _tl238305239184_
                                               _e238310239187_
                                               _hd238309239190_
                                               _tl238308239192_
                                               _e238313239195_
                                               _hd238312239198_
                                               _tl238311239200_
                                               _e238316239203_
                                               _hd238315239206_
                                               _tl238314239208_
                                               _e238319239211_
                                               _hd238318239214_
                                               _tl238317239216_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop238323239224_ _target238320239219_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx246873246874_))
                  (let ((_e238292239139_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx246873246874_))))
                    (let ((_tl238290239144_
                           (let ()
                             (declare (not safe))
                             (##cdr _e238292239139_)))
                          (_hd238291239142_
                           (let ()
                             (declare (not safe))
                             (##car _e238292239139_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl238290239144_))
                          (let ((_e238295239147_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl238290239144_))))
                            (let ((_tl238293239152_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238295239147_)))
                                  (_hd238294239150_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238295239147_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd238294239150_))
                                  (let ((_e238298239155_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd238294239150_))))
                                    (let ((_tl238296239160_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e238298239155_)))
                                          (_hd238297239158_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e238298239155_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd238297239158_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd238297239158_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl238296239160_))
                                                  (let ((_e238301239163_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl238296239160_))))
                                                    (let ((_tl238299239168_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e238301239163_)))
                                                          (_hd238300239166_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e238301239163_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl238299239168_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl238293239152_))
                      (let ((_e238304239171_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl238293239152_))))
                        (let ((_tl238302239176_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e238304239171_)))
                              (_hd238303239174_
                               (let ()
                                 (declare (not safe))
                                 (##car _e238304239171_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd238303239174_))
                              (let ((_e238307239179_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd238303239174_))))
                                (let ((_tl238305239184_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e238307239179_)))
                                      (_hd238306239182_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e238307239179_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd238306239182_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd238306239182_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl238305239184_))
                                              (let ((_e238310239187_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl238305239184_))))
                                                (let ((_tl238308239192_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e238310239187_)))
                                                      (_hd238309239190_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e238310239187_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl238308239192_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl238302239176_))
                                                          (let ((_e238313239195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl238302239176_))))
                    (let ((_tl238311239200_
                           (let ()
                             (declare (not safe))
                             (##cdr _e238313239195_)))
                          (_hd238312239198_
                           (let ()
                             (declare (not safe))
                             (##car _e238313239195_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd238312239198_))
                          (let ((_e238316239203_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd238312239198_))))
                            (let ((_tl238314239208_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238316239203_)))
                                  (_hd238315239206_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238316239203_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd238315239206_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd238315239206_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl238314239208_))
                                          (let ((_e238319239211_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl238314239208_))))
                                            (let ((_tl238317239216_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e238319239211_)))
                                                  (_hd238318239214_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e238319239211_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl238317239216_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl238311239200_))
                                                      (let ((___splice246877246878_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl238311239200_ '0))))
                (let ((_tl238322239221_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice246877246878_ '1)))
                      (_target238320239219_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice246877246878_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl238322239221_))
                      (___match246978246979_
                       _e238292239139_
                       _hd238291239142_
                       _tl238290239144_
                       _e238295239147_
                       _hd238294239150_
                       _tl238293239152_
                       _e238298239155_
                       _hd238297239158_
                       _tl238296239160_
                       _e238301239163_
                       _hd238300239166_
                       _tl238299239168_
                       _e238304239171_
                       _hd238303239174_
                       _tl238302239176_
                       _e238307239179_
                       _hd238306239182_
                       _tl238305239184_
                       _e238310239187_
                       _hd238309239190_
                       _tl238308239192_
                       _e238313239195_
                       _hd238312239198_
                       _tl238311239200_
                       _e238316239203_
                       _hd238315239206_
                       _tl238314239208_
                       _e238319239211_
                       _hd238318239214_
                       _tl238317239216_
                       ___splice246877246878_
                       _target238320239219_
                       _tl238322239221_)
                      (___match247166247167_
                       _e238292239139_
                       _hd238291239142_
                       _tl238290239144_
                       _e238295239147_
                       _hd238294239150_
                       _tl238293239152_
                       _e238298239155_
                       _hd238297239158_
                       _tl238296239160_
                       _e238301239163_
                       _hd238300239166_
                       _tl238299239168_
                       _e238304239171_
                       _hd238303239174_
                       _tl238302239176_
                       _e238307239179_
                       _hd238306239182_
                       _tl238305239184_
                       _e238310239187_
                       _hd238309239190_
                       _tl238308239192_
                       _e238313239195_
                       _hd238312239198_
                       _tl238311239200_
                       _e238316239203_
                       _hd238315239206_
                       _tl238314239208_
                       _e238319239211_
                       _hd238318239214_
                       _tl238317239216_))))
              (___match247166247167_
               _e238292239139_
               _hd238291239142_
               _tl238290239144_
               _e238295239147_
               _hd238294239150_
               _tl238293239152_
               _e238298239155_
               _hd238297239158_
               _tl238296239160_
               _e238301239163_
               _hd238300239166_
               _tl238299239168_
               _e238304239171_
               _hd238303239174_
               _tl238302239176_
               _e238307239179_
               _hd238306239182_
               _tl238305239184_
               _e238310239187_
               _hd238309239190_
               _tl238308239192_
               _e238313239195_
               _hd238312239198_
               _tl238311239200_
               _e238316239203_
               _hd238315239206_
               _tl238314239208_
               _e238319239211_
               _hd238318239214_
               _tl238317239216_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match247370247371_
                                                   _e238292239139_
                                                   _hd238291239142_
                                                   _tl238290239144_
                                                   _e238295239147_
                                                   _hd238294239150_
                                                   _tl238293239152_
                                                   _e238298239155_
                                                   _hd238297239158_
                                                   _tl238296239160_
                                                   _e238301239163_
                                                   _hd238300239166_
                                                   _tl238299239168_
                                                   _e238304239171_
                                                   _hd238303239174_
                                                   _tl238302239176_
                                                   _e238307239179_
                                                   _hd238306239182_
                                                   _tl238305239184_
                                                   _e238310239187_
                                                   _hd238309239190_
                                                   _tl238308239192_
                                                   _e238313239195_
                                                   _hd238312239198_
                                                   _tl238311239200_))))
                                          (___match247370247371_
                                           _e238292239139_
                                           _hd238291239142_
                                           _tl238290239144_
                                           _e238295239147_
                                           _hd238294239150_
                                           _tl238293239152_
                                           _e238298239155_
                                           _hd238297239158_
                                           _tl238296239160_
                                           _e238301239163_
                                           _hd238300239166_
                                           _tl238299239168_
                                           _e238304239171_
                                           _hd238303239174_
                                           _tl238302239176_
                                           _e238307239179_
                                           _hd238306239182_
                                           _tl238305239184_
                                           _e238310239187_
                                           _hd238309239190_
                                           _tl238308239192_
                                           _e238313239195_
                                           _hd238312239198_
                                           _tl238311239200_))
                                      (___match247046247047_
                                       _e238292239139_
                                       _hd238291239142_
                                       _tl238290239144_
                                       _e238295239147_
                                       _hd238294239150_
                                       _tl238293239152_
                                       _e238298239155_
                                       _hd238297239158_
                                       _tl238296239160_
                                       _e238301239163_
                                       _hd238300239166_
                                       _tl238299239168_
                                       _e238304239171_
                                       _hd238303239174_
                                       _tl238302239176_
                                       _e238307239179_
                                       _hd238306239182_
                                       _tl238305239184_
                                       _e238310239187_
                                       _hd238309239190_
                                       _tl238308239192_
                                       _e238313239195_
                                       _hd238312239198_
                                       _tl238311239200_
                                       _e238316239203_
                                       _hd238315239206_
                                       _tl238314239208_))
                                  (___match247370247371_
                                   _e238292239139_
                                   _hd238291239142_
                                   _tl238290239144_
                                   _e238295239147_
                                   _hd238294239150_
                                   _tl238293239152_
                                   _e238298239155_
                                   _hd238297239158_
                                   _tl238296239160_
                                   _e238301239163_
                                   _hd238300239166_
                                   _tl238299239168_
                                   _e238304239171_
                                   _hd238303239174_
                                   _tl238302239176_
                                   _e238307239179_
                                   _hd238306239182_
                                   _tl238305239184_
                                   _e238310239187_
                                   _hd238309239190_
                                   _tl238308239192_
                                   _e238313239195_
                                   _hd238312239198_
                                   _tl238311239200_))))
                          (___match247370247371_
                           _e238292239139_
                           _hd238291239142_
                           _tl238290239144_
                           _e238295239147_
                           _hd238294239150_
                           _tl238293239152_
                           _e238298239155_
                           _hd238297239158_
                           _tl238296239160_
                           _e238301239163_
                           _hd238300239166_
                           _tl238299239168_
                           _e238304239171_
                           _hd238303239174_
                           _tl238302239176_
                           _e238307239179_
                           _hd238306239182_
                           _tl238305239184_
                           _e238310239187_
                           _hd238309239190_
                           _tl238308239192_
                           _e238313239195_
                           _hd238312239198_
                           _tl238311239200_))))
                  (___match247308247309_
                   _e238292239139_
                   _hd238291239142_
                   _tl238290239144_
                   _e238295239147_
                   _hd238294239150_
                   _tl238293239152_
                   _e238298239155_
                   _hd238297239158_
                   _tl238296239160_
                   _e238301239163_
                   _hd238300239166_
                   _tl238299239168_
                   _e238304239171_
                   _hd238303239174_
                   _tl238302239176_
                   _e238307239179_
                   _hd238306239182_
                   _tl238305239184_
                   _e238310239187_
                   _hd238309239190_
                   _tl238308239192_))
              (___kont246891246892_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont246891246892_))
                                          (___kont246891246892_))
                                      (___kont246891246892_))))
                              (___kont246891246892_))))
                      (___kont246891246892_))
                  (___kont246891246892_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont246891246892_))
                                              (___kont246891246892_))
                                          (___kont246891246892_))))
                                  (___kont246891246892_))))
                          (___kont246891246892_))))
                  (___kont246891246892_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx237216_
               _self237217_
               _$t237218_
               _methods237219_
               _slots237220_
               _class-check237221_
               _struct-check237222_
               _struct-assert237223_)
        (letrec ((_force-e237225_
                  (lambda (_what238268_)
                    (let ((__tmp248249
                           (let ((__tmp248253
                                  (let ((__tmp248254
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp248254)))
                                 (__tmp248250
                                  (let ((__tmp248251
                                         (let ((__tmp248252
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what238268_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp248252))))
                                    (declare (not safe))
                                    (cons __tmp248251 '()))))
                             (declare (not safe))
                             (cons __tmp248253 __tmp248250))))
                      (declare (not safe))
                      (cons '%#call __tmp248249)))))
          (let* ((___stx247375247376_ _stx237216_)
                 (_g237233237455_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx247375247376_)))))
            (let ((___kont247377247378_
                   (lambda (_L238214_ _L238215_ _L238216_ _L238217_)
                     (let ((_$method238262_
                            (hash-ref
                             _methods237219_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L238215_))))
                           (_args238263_
                            (map (lambda (_g238250238252_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g238250238252_
                                      _self237217_
                                      _$t237218_
                                      _methods237219_
                                      _slots237220_
                                      _class-check237221_
                                      _struct-check237222_
                                      _struct-assert237223_)))
                                 (let ((__tmp248255
                                        (lambda (_g238254238257_
                                                 _g238255238259_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g238254238257_
                                                  _g238255238259_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp248255 '() _L238214_)))))
                       (let ((__tmp248256
                              (let ((__tmp248257
                                     (let ((__tmp248261
                                            (let ()
                                              (declare (not safe))
                                              (_force-e237225_
                                               _$method238262_)))
                                           (__tmp248258
                                            (let ((__tmp248259
                                                   (let ((__tmp248260
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self237217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp248260))))
                                              (declare (not safe))
                                              (cons __tmp248259
                                                    _args238263_))))
                                       (declare (not safe))
                                       (cons __tmp248261 __tmp248258))))
                                (declare (not safe))
                                (cons '%#call __tmp248257))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp248256 _stx237216_)))))
                  (___kont247381247382_
                   (lambda (_L238046_ _L238047_ _L238048_ _L238049_ _L238050_)
                     (let ((_$method238102_
                            (hash-ref
                             _methods237219_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L238047_))))
                           (_args238103_
                            (map (lambda (_g238090238092_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g238090238092_
                                      _self237217_
                                      _$t237218_
                                      _methods237219_
                                      _slots237220_
                                      _class-check237221_
                                      _struct-check237222_
                                      _struct-assert237223_)))
                                 (let ((__tmp248262
                                        (lambda (_g238094238097_
                                                 _g238095238099_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g238094238097_
                                                  _g238095238099_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp248262 '() _L238046_)))))
                       (let ((__tmp248263
                              (let ((__tmp248264
                                     (let ((__tmp248270
                                            (let ((__tmp248271
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp248271)))
                                           (__tmp248265
                                            (let ((__tmp248269
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e237225_
                                                      _$method238102_)))
                                                  (__tmp248266
                                                   (let ((__tmp248267
                                                          (let ((__tmp248268
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self237217_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp248268))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp248267
                                                           _args238103_))))
                                              (declare (not safe))
                                              (cons __tmp248269 __tmp248266))))
                                       (declare (not safe))
                                       (cons __tmp248270 __tmp248265))))
                                (declare (not safe))
                                (cons '%#call __tmp248264))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp248263 _stx237216_)))))
                  (___kont247385247386_
                   (lambda (_L237877_ _L237878_ _L237879_)
                     (let* ((_$field237911_
                             (hash-ref
                              _slots237220_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _L237877_))))
                            (__tmp248272
                             (let ((__tmp248273
                                    (let ((__tmp248280
                                           (let ((__tmp248281
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t237218_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp248281)))
                                          (__tmp248274
                                           (let ((__tmp248278
                                                  (let ((__tmp248279
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field237911_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp248279)))
                                                 (__tmp248275
                                                  (let ((__tmp248276
                                                         (let ((__tmp248277
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self237217_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp248277))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp248276 '()))))
                                             (declare (not safe))
                                             (cons __tmp248278 __tmp248275))))
                                      (declare (not safe))
                                      (cons __tmp248280 __tmp248274))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp248273))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp248272 _stx237216_))))
                  (___kont247387247388_
                   (lambda (_L237751_ _L237752_ _L237753_ _L237754_)
                     (let ((_$field237789_
                            (hash-ref
                             _slots237220_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L237752_))))
                           (_expr237790_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L237751_
                               _self237217_
                               _$t237218_
                               _methods237219_
                               _slots237220_
                               _class-check237221_
                               _struct-check237222_
                               _struct-assert237223_))))
                       (let ((__tmp248282
                              (let ((__tmp248283
                                     (let ((__tmp248291
                                            (let ((__tmp248292
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t237218_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp248292)))
                                           (__tmp248284
                                            (let ((__tmp248289
                                                   (let ((__tmp248290
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field237789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp248290)))
                                                  (__tmp248285
                                                   (let ((__tmp248287
                                                          (let ((__tmp248288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self237217_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp248288)))
                 (__tmp248286
                  (let () (declare (not safe)) (cons _expr237790_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp248287
                                                           __tmp248286))))
                                              (declare (not safe))
                                              (cons __tmp248289 __tmp248285))))
                                       (declare (not safe))
                                       (cons __tmp248291 __tmp248284))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp248283))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp248282 _stx237216_)))))
                  (___kont247389247390_
                   (lambda (_L237630_ _L237631_)
                     (let* ((_slot237653_
                             (##structure-ref
                              (let ((__tmp248293
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L237631_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp248293))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field237655_
                             (hash-ref _slots237220_ _slot237653_)))
                       (let ((__tmp248294
                              (let ((__tmp248295
                                     (let ((__tmp248302
                                            (let ((__tmp248303
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t237218_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp248303)))
                                           (__tmp248296
                                            (let ((__tmp248300
                                                   (let ((__tmp248301
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field237655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp248301)))
                                                  (__tmp248297
                                                   (let ((__tmp248298
                                                          (let ((__tmp248299
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self237217_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp248299))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp248298 '()))))
                                              (declare (not safe))
                                              (cons __tmp248300 __tmp248297))))
                                       (declare (not safe))
                                       (cons __tmp248302 __tmp248296))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp248295))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp248294 _stx237216_)))))
                  (___kont247391247392_
                   (lambda (_L237531_ _L237532_ _L237533_)
                     (let* ((_slot237562_
                             (##structure-ref
                              (let ((__tmp248304
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L237533_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp248304))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field237564_
                             (hash-ref _slots237220_ _slot237562_))
                            (_expr237566_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L237531_
                                _self237217_
                                _$t237218_
                                _methods237219_
                                _slots237220_
                                _class-check237221_
                                _struct-check237222_
                                _struct-assert237223_))))
                       (let ((__tmp248305
                              (let ((__tmp248306
                                     (let ((__tmp248314
                                            (let ((__tmp248315
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t237218_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp248315)))
                                           (__tmp248307
                                            (let ((__tmp248312
                                                   (let ((__tmp248313
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field237564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp248313)))
                                                  (__tmp248308
                                                   (let ((__tmp248310
                                                          (let ((__tmp248311
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self237217_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp248311)))
                 (__tmp248309
                  (let () (declare (not safe)) (cons _expr237566_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp248310
                                                           __tmp248309))))
                                              (declare (not safe))
                                              (cons __tmp248312 __tmp248308))))
                                       (declare (not safe))
                                       (cons __tmp248314 __tmp248307))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp248306))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp248305 _stx237216_)))))
                  (___kont247393247394_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx237216_
                        _self237217_
                        _$t237218_
                        _methods237219_
                        _slots237220_
                        _class-check237221_
                        _struct-check237222_
                        _struct-assert237223_)))))
              (let* ((___match247874247875_
                      (lambda (_e237429237467_
                               _hd237428237470_
                               _tl237427237472_
                               _e237432237475_
                               _hd237431237478_
                               _tl237430237480_
                               _e237435237483_
                               _hd237434237486_
                               _tl237433237488_
                               _e237438237491_
                               _hd237437237494_
                               _tl237436237496_
                               _e237441237499_
                               _hd237440237502_
                               _tl237439237504_
                               _e237444237507_
                               _hd237443237510_
                               _tl237442237512_
                               _e237447237515_
                               _hd237446237518_
                               _tl237445237520_
                               _e237450237523_
                               _hd237449237526_
                               _tl237448237528_)
                        (let ((_L237531_ _hd237449237526_)
                              (_L237532_ _hd237446237518_)
                              (_L237533_ _hd237437237494_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L237532_
                                      _self237217_))
                                   (let ((__tmp248316
                                          (let ((__tmp248317
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L237533_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp248317))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp248316
                                      'gxc#!mutator::t)))
                              (___kont247391247392_
                               _L237531_
                               _L237532_
                               _L237533_)
                              (___kont247393247394_)))))
                     (___match247872247873_
                      (lambda (_e237429237467_
                               _hd237428237470_
                               _tl237427237472_
                               _e237432237475_
                               _hd237431237478_
                               _tl237430237480_
                               _e237435237483_
                               _hd237434237486_
                               _tl237433237488_
                               _e237438237491_
                               _hd237437237494_
                               _tl237436237496_
                               _e237441237499_
                               _hd237440237502_
                               _tl237439237504_
                               _e237444237507_
                               _hd237443237510_
                               _tl237442237512_
                               _e237447237515_
                               _hd237446237518_
                               _tl237445237520_
                               _e237450237523_
                               _hd237449237526_
                               _tl237448237528_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl237448237528_))
                            (___match247874247875_
                             _e237429237467_
                             _hd237428237470_
                             _tl237427237472_
                             _e237432237475_
                             _hd237431237478_
                             _tl237430237480_
                             _e237435237483_
                             _hd237434237486_
                             _tl237433237488_
                             _e237438237491_
                             _hd237437237494_
                             _tl237436237496_
                             _e237441237499_
                             _hd237440237502_
                             _tl237439237504_
                             _e237444237507_
                             _hd237443237510_
                             _tl237442237512_
                             _e237447237515_
                             _hd237446237518_
                             _tl237445237520_
                             _e237450237523_
                             _hd237449237526_
                             _tl237448237528_)
                            (___kont247393247394_))))
                     (___match247866247867_
                      (lambda (_e237429237467_
                               _hd237428237470_
                               _tl237427237472_
                               _e237432237475_
                               _hd237431237478_
                               _tl237430237480_
                               _e237435237483_
                               _hd237434237486_
                               _tl237433237488_
                               _e237438237491_
                               _hd237437237494_
                               _tl237436237496_
                               _e237441237499_
                               _hd237440237502_
                               _tl237439237504_
                               _e237444237507_
                               _hd237443237510_
                               _tl237442237512_
                               _e237447237515_
                               _hd237446237518_
                               _tl237445237520_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl237439237504_))
                            (let ((_e237450237523_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl237439237504_))))
                              (let ((_tl237448237528_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237450237523_)))
                                    (_hd237449237526_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237450237523_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl237448237528_))
                                    (___match247874247875_
                                     _e237429237467_
                                     _hd237428237470_
                                     _tl237427237472_
                                     _e237432237475_
                                     _hd237431237478_
                                     _tl237430237480_
                                     _e237435237483_
                                     _hd237434237486_
                                     _tl237433237488_
                                     _e237438237491_
                                     _hd237437237494_
                                     _tl237436237496_
                                     _e237441237499_
                                     _hd237440237502_
                                     _tl237439237504_
                                     _e237444237507_
                                     _hd237443237510_
                                     _tl237442237512_
                                     _e237447237515_
                                     _hd237446237518_
                                     _tl237445237520_
                                     _e237450237523_
                                     _hd237449237526_
                                     _tl237448237528_)
                                    (___kont247393247394_))))
                            (___kont247393247394_))))
                     (___match247812247813_
                      (lambda (_e237405237574_
                               _hd237404237577_
                               _tl237403237579_
                               _e237408237582_
                               _hd237407237585_
                               _tl237406237587_
                               _e237411237590_
                               _hd237410237593_
                               _tl237409237595_
                               _e237414237598_
                               _hd237413237601_
                               _tl237412237603_
                               _e237417237606_
                               _hd237416237609_
                               _tl237415237611_
                               _e237420237614_
                               _hd237419237617_
                               _tl237418237619_
                               _e237423237622_
                               _hd237422237625_
                               _tl237421237627_)
                        (let ((_L237630_ _hd237422237625_)
                              (_L237631_ _hd237413237601_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L237630_
                                      _self237217_))
                                   (let ((__tmp248318
                                          (let ((__tmp248319
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L237631_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp248319))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp248318
                                      'gxc#!accessor::t)))
                              (___kont247389247390_ _L237630_ _L237631_)
                              (___kont247393247394_)))))
                     (___match247810247811_
                      (lambda (_e237405237574_
                               _hd237404237577_
                               _tl237403237579_
                               _e237408237582_
                               _hd237407237585_
                               _tl237406237587_
                               _e237411237590_
                               _hd237410237593_
                               _tl237409237595_
                               _e237414237598_
                               _hd237413237601_
                               _tl237412237603_
                               _e237417237606_
                               _hd237416237609_
                               _tl237415237611_
                               _e237420237614_
                               _hd237419237617_
                               _tl237418237619_
                               _e237423237622_
                               _hd237422237625_
                               _tl237421237627_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl237415237611_))
                            (___match247812247813_
                             _e237405237574_
                             _hd237404237577_
                             _tl237403237579_
                             _e237408237582_
                             _hd237407237585_
                             _tl237406237587_
                             _e237411237590_
                             _hd237410237593_
                             _tl237409237595_
                             _e237414237598_
                             _hd237413237601_
                             _tl237412237603_
                             _e237417237606_
                             _hd237416237609_
                             _tl237415237611_
                             _e237420237614_
                             _hd237419237617_
                             _tl237418237619_
                             _e237423237622_
                             _hd237422237625_
                             _tl237421237627_)
                            (___match247866247867_
                             _e237405237574_
                             _hd237404237577_
                             _tl237403237579_
                             _e237408237582_
                             _hd237407237585_
                             _tl237406237587_
                             _e237411237590_
                             _hd237410237593_
                             _tl237409237595_
                             _e237414237598_
                             _hd237413237601_
                             _tl237412237603_
                             _e237417237606_
                             _hd237416237609_
                             _tl237415237611_
                             _e237420237614_
                             _hd237419237617_
                             _tl237418237619_
                             _e237423237622_
                             _hd237422237625_
                             _tl237421237627_))))
                     (___match247756247757_
                      (lambda (_e237370237663_
                               _hd237369237666_
                               _tl237368237668_
                               _e237373237671_
                               _hd237372237674_
                               _tl237371237676_
                               _e237376237679_
                               _hd237375237682_
                               _tl237374237684_
                               _e237379237687_
                               _hd237378237690_
                               _tl237377237692_
                               _e237382237695_
                               _hd237381237698_
                               _tl237380237700_
                               _e237385237703_
                               _hd237384237706_
                               _tl237383237708_
                               _e237388237711_
                               _hd237387237714_
                               _tl237386237716_
                               _e237391237719_
                               _hd237390237722_
                               _tl237389237724_
                               _e237394237727_
                               _hd237393237730_
                               _tl237392237732_
                               _e237397237735_
                               _hd237396237738_
                               _tl237395237740_
                               _e237400237743_
                               _hd237399237746_
                               _tl237398237748_)
                        (let ((_L237751_ _hd237399237746_)
                              (_L237752_ _hd237396237738_)
                              (_L237753_ _hd237387237714_)
                              (_L237754_ _hd237378237690_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L237754_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L237754_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L237753_
                                      _self237217_)))
                              (___kont247387247388_
                               _L237751_
                               _L237752_
                               _L237753_
                               _L237754_)
                              (___kont247393247394_)))))
                     (___match247748247749_
                      (lambda (_e237370237663_
                               _hd237369237666_
                               _tl237368237668_
                               _e237373237671_
                               _hd237372237674_
                               _tl237371237676_
                               _e237376237679_
                               _hd237375237682_
                               _tl237374237684_
                               _e237379237687_
                               _hd237378237690_
                               _tl237377237692_
                               _e237382237695_
                               _hd237381237698_
                               _tl237380237700_
                               _e237385237703_
                               _hd237384237706_
                               _tl237383237708_
                               _e237388237711_
                               _hd237387237714_
                               _tl237386237716_
                               _e237391237719_
                               _hd237390237722_
                               _tl237389237724_
                               _e237394237727_
                               _hd237393237730_
                               _tl237392237732_
                               _e237397237735_
                               _hd237396237738_
                               _tl237395237740_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl237389237724_))
                            (let ((_e237400237743_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl237389237724_))))
                              (let ((_tl237398237748_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237400237743_)))
                                    (_hd237399237746_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237400237743_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl237398237748_))
                                    (___match247756247757_
                                     _e237370237663_
                                     _hd237369237666_
                                     _tl237368237668_
                                     _e237373237671_
                                     _hd237372237674_
                                     _tl237371237676_
                                     _e237376237679_
                                     _hd237375237682_
                                     _tl237374237684_
                                     _e237379237687_
                                     _hd237378237690_
                                     _tl237377237692_
                                     _e237382237695_
                                     _hd237381237698_
                                     _tl237380237700_
                                     _e237385237703_
                                     _hd237384237706_
                                     _tl237383237708_
                                     _e237388237711_
                                     _hd237387237714_
                                     _tl237386237716_
                                     _e237391237719_
                                     _hd237390237722_
                                     _tl237389237724_
                                     _e237394237727_
                                     _hd237393237730_
                                     _tl237392237732_
                                     _e237397237735_
                                     _hd237396237738_
                                     _tl237395237740_
                                     _e237400237743_
                                     _hd237399237746_
                                     _tl237398237748_)
                                    (___kont247393247394_))))
                            (___match247872247873_
                             _e237370237663_
                             _hd237369237666_
                             _tl237368237668_
                             _e237373237671_
                             _hd237372237674_
                             _tl237371237676_
                             _e237376237679_
                             _hd237375237682_
                             _tl237374237684_
                             _e237379237687_
                             _hd237378237690_
                             _tl237377237692_
                             _e237382237695_
                             _hd237381237698_
                             _tl237380237700_
                             _e237385237703_
                             _hd237384237706_
                             _tl237383237708_
                             _e237388237711_
                             _hd237387237714_
                             _tl237386237716_
                             _e237391237719_
                             _hd237390237722_
                             _tl237389237724_))))
                     (___match247670247671_
                      (lambda (_e237336237797_
                               _hd237335237800_
                               _tl237334237802_
                               _e237339237805_
                               _hd237338237808_
                               _tl237337237810_
                               _e237342237813_
                               _hd237341237816_
                               _tl237340237818_
                               _e237345237821_
                               _hd237344237824_
                               _tl237343237826_
                               _e237348237829_
                               _hd237347237832_
                               _tl237346237834_
                               _e237351237837_
                               _hd237350237840_
                               _tl237349237842_
                               _e237354237845_
                               _hd237353237848_
                               _tl237352237850_
                               _e237357237853_
                               _hd237356237856_
                               _tl237355237858_
                               _e237360237861_
                               _hd237359237864_
                               _tl237358237866_
                               _e237363237869_
                               _hd237362237872_
                               _tl237361237874_)
                        (let ((_L237877_ _hd237362237872_)
                              (_L237878_ _hd237353237848_)
                              (_L237879_ _hd237344237824_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L237879_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L237879_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L237878_
                                      _self237217_)))
                              (___kont247385247386_
                               _L237877_
                               _L237878_
                               _L237879_)
                              (___match247874247875_
                               _e237336237797_
                               _hd237335237800_
                               _tl237334237802_
                               _e237339237805_
                               _hd237338237808_
                               _tl237337237810_
                               _e237342237813_
                               _hd237341237816_
                               _tl237340237818_
                               _e237345237821_
                               _hd237344237824_
                               _tl237343237826_
                               _e237348237829_
                               _hd237347237832_
                               _tl237346237834_
                               _e237351237837_
                               _hd237350237840_
                               _tl237349237842_
                               _e237354237845_
                               _hd237353237848_
                               _tl237352237850_
                               _e237357237853_
                               _hd237356237856_
                               _tl237355237858_)))))
                     (___match247668247669_
                      (lambda (_e237336237797_
                               _hd237335237800_
                               _tl237334237802_
                               _e237339237805_
                               _hd237338237808_
                               _tl237337237810_
                               _e237342237813_
                               _hd237341237816_
                               _tl237340237818_
                               _e237345237821_
                               _hd237344237824_
                               _tl237343237826_
                               _e237348237829_
                               _hd237347237832_
                               _tl237346237834_
                               _e237351237837_
                               _hd237350237840_
                               _tl237349237842_
                               _e237354237845_
                               _hd237353237848_
                               _tl237352237850_
                               _e237357237853_
                               _hd237356237856_
                               _tl237355237858_
                               _e237360237861_
                               _hd237359237864_
                               _tl237358237866_
                               _e237363237869_
                               _hd237362237872_
                               _tl237361237874_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl237355237858_))
                            (___match247670247671_
                             _e237336237797_
                             _hd237335237800_
                             _tl237334237802_
                             _e237339237805_
                             _hd237338237808_
                             _tl237337237810_
                             _e237342237813_
                             _hd237341237816_
                             _tl237340237818_
                             _e237345237821_
                             _hd237344237824_
                             _tl237343237826_
                             _e237348237829_
                             _hd237347237832_
                             _tl237346237834_
                             _e237351237837_
                             _hd237350237840_
                             _tl237349237842_
                             _e237354237845_
                             _hd237353237848_
                             _tl237352237850_
                             _e237357237853_
                             _hd237356237856_
                             _tl237355237858_
                             _e237360237861_
                             _hd237359237864_
                             _tl237358237866_
                             _e237363237869_
                             _hd237362237872_
                             _tl237361237874_)
                            (___match247748247749_
                             _e237336237797_
                             _hd237335237800_
                             _tl237334237802_
                             _e237339237805_
                             _hd237338237808_
                             _tl237337237810_
                             _e237342237813_
                             _hd237341237816_
                             _tl237340237818_
                             _e237345237821_
                             _hd237344237824_
                             _tl237343237826_
                             _e237348237829_
                             _hd237347237832_
                             _tl237346237834_
                             _e237351237837_
                             _hd237350237840_
                             _tl237349237842_
                             _e237354237845_
                             _hd237353237848_
                             _tl237352237850_
                             _e237357237853_
                             _hd237356237856_
                             _tl237355237858_
                             _e237360237861_
                             _hd237359237864_
                             _tl237358237866_
                             _e237363237869_
                             _hd237362237872_
                             _tl237361237874_))))
                     (___match247658247659_
                      (lambda (_e237336237797_
                               _hd237335237800_
                               _tl237334237802_
                               _e237339237805_
                               _hd237338237808_
                               _tl237337237810_
                               _e237342237813_
                               _hd237341237816_
                               _tl237340237818_
                               _e237345237821_
                               _hd237344237824_
                               _tl237343237826_
                               _e237348237829_
                               _hd237347237832_
                               _tl237346237834_
                               _e237351237837_
                               _hd237350237840_
                               _tl237349237842_
                               _e237354237845_
                               _hd237353237848_
                               _tl237352237850_
                               _e237357237853_
                               _hd237356237856_
                               _tl237355237858_
                               _e237360237861_
                               _hd237359237864_
                               _tl237358237866_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd237359237864_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl237358237866_))
                                (let ((_e237363237869_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl237358237866_))))
                                  (let ((_tl237361237874_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237363237869_)))
                                        (_hd237362237872_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237363237869_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl237361237874_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl237355237858_))
                                            (___match247670247671_
                                             _e237336237797_
                                             _hd237335237800_
                                             _tl237334237802_
                                             _e237339237805_
                                             _hd237338237808_
                                             _tl237337237810_
                                             _e237342237813_
                                             _hd237341237816_
                                             _tl237340237818_
                                             _e237345237821_
                                             _hd237344237824_
                                             _tl237343237826_
                                             _e237348237829_
                                             _hd237347237832_
                                             _tl237346237834_
                                             _e237351237837_
                                             _hd237350237840_
                                             _tl237349237842_
                                             _e237354237845_
                                             _hd237353237848_
                                             _tl237352237850_
                                             _e237357237853_
                                             _hd237356237856_
                                             _tl237355237858_
                                             _e237360237861_
                                             _hd237359237864_
                                             _tl237358237866_
                                             _e237363237869_
                                             _hd237362237872_
                                             _tl237361237874_)
                                            (___match247748247749_
                                             _e237336237797_
                                             _hd237335237800_
                                             _tl237334237802_
                                             _e237339237805_
                                             _hd237338237808_
                                             _tl237337237810_
                                             _e237342237813_
                                             _hd237341237816_
                                             _tl237340237818_
                                             _e237345237821_
                                             _hd237344237824_
                                             _tl237343237826_
                                             _e237348237829_
                                             _hd237347237832_
                                             _tl237346237834_
                                             _e237351237837_
                                             _hd237350237840_
                                             _tl237349237842_
                                             _e237354237845_
                                             _hd237353237848_
                                             _tl237352237850_
                                             _e237357237853_
                                             _hd237356237856_
                                             _tl237355237858_
                                             _e237360237861_
                                             _hd237359237864_
                                             _tl237358237866_
                                             _e237363237869_
                                             _hd237362237872_
                                             _tl237361237874_))
                                        (___match247872247873_
                                         _e237336237797_
                                         _hd237335237800_
                                         _tl237334237802_
                                         _e237339237805_
                                         _hd237338237808_
                                         _tl237337237810_
                                         _e237342237813_
                                         _hd237341237816_
                                         _tl237340237818_
                                         _e237345237821_
                                         _hd237344237824_
                                         _tl237343237826_
                                         _e237348237829_
                                         _hd237347237832_
                                         _tl237346237834_
                                         _e237351237837_
                                         _hd237350237840_
                                         _tl237349237842_
                                         _e237354237845_
                                         _hd237353237848_
                                         _tl237352237850_
                                         _e237357237853_
                                         _hd237356237856_
                                         _tl237355237858_))))
                                (___match247872247873_
                                 _e237336237797_
                                 _hd237335237800_
                                 _tl237334237802_
                                 _e237339237805_
                                 _hd237338237808_
                                 _tl237337237810_
                                 _e237342237813_
                                 _hd237341237816_
                                 _tl237340237818_
                                 _e237345237821_
                                 _hd237344237824_
                                 _tl237343237826_
                                 _e237348237829_
                                 _hd237347237832_
                                 _tl237346237834_
                                 _e237351237837_
                                 _hd237350237840_
                                 _tl237349237842_
                                 _e237354237845_
                                 _hd237353237848_
                                 _tl237352237850_
                                 _e237357237853_
                                 _hd237356237856_
                                 _tl237355237858_))
                            (___match247872247873_
                             _e237336237797_
                             _hd237335237800_
                             _tl237334237802_
                             _e237339237805_
                             _hd237338237808_
                             _tl237337237810_
                             _e237342237813_
                             _hd237341237816_
                             _tl237340237818_
                             _e237345237821_
                             _hd237344237824_
                             _tl237343237826_
                             _e237348237829_
                             _hd237347237832_
                             _tl237346237834_
                             _e237351237837_
                             _hd237350237840_
                             _tl237349237842_
                             _e237354237845_
                             _hd237353237848_
                             _tl237352237850_
                             _e237357237853_
                             _hd237356237856_
                             _tl237355237858_))))
                     (___match247590247591_
                      (lambda (_e237285237918_
                               _hd237284237921_
                               _tl237283237923_
                               _e237288237926_
                               _hd237287237929_
                               _tl237286237931_
                               _e237291237934_
                               _hd237290237937_
                               _tl237289237939_
                               _e237294237942_
                               _hd237293237945_
                               _tl237292237947_
                               _e237297237950_
                               _hd237296237953_
                               _tl237295237955_
                               _e237300237958_
                               _hd237299237961_
                               _tl237298237963_
                               _e237303237966_
                               _hd237302237969_
                               _tl237301237971_
                               _e237306237974_
                               _hd237305237977_
                               _tl237304237979_
                               _e237309237982_
                               _hd237308237985_
                               _tl237307237987_
                               _e237312237990_
                               _hd237311237993_
                               _tl237310237995_
                               _e237315237998_
                               _hd237314238001_
                               _tl237313238003_
                               _e237318238006_
                               _hd237317238009_
                               _tl237316238011_
                               _e237321238014_
                               _hd237320238017_
                               _tl237319238019_
                               ___splice247383247384_
                               _target237322238022_
                               _tl237324238024_)
                        (letrec ((_loop237325238027_
                                  (lambda (_hd237323238030_ _args237329238032_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd237323238030_))
                                        (let ((_e237326238035_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd237323238030_))))
                                          (let ((_lp-tl237328238040_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e237326238035_)))
                                                (_lp-hd237327238038_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e237326238035_))))
                                            (let ((__tmp248320
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd237327238038_
                                                           _args237329238032_))))
                                              (declare (not safe))
                                              (_loop237325238027_
                                               _lp-tl237328238040_
                                               __tmp248320))))
                                        (let ((_args237330238043_
                                               (reverse _args237329238032_)))
                                          (let ((_L238046_ _args237330238043_)
                                                (_L238047_ _hd237320238017_)
                                                (_L238048_ _hd237311237993_)
                                                (_L238049_ _hd237302237969_)
                                                (_L238050_ _hd237293237945_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L238050_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L238049_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L238048_
                                                        _self237217_)))
                                                (___kont247381247382_
                                                 _L238046_
                                                 _L238047_
                                                 _L238048_
                                                 _L238049_
                                                 _L238050_)
                                                (___kont247393247394_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop237325238027_ _target237322238022_ '())))))
                     (___match247548247549_
                      (lambda (_e237285237918_
                               _hd237284237921_
                               _tl237283237923_
                               _e237288237926_
                               _hd237287237929_
                               _tl237286237931_
                               _e237291237934_
                               _hd237290237937_
                               _tl237289237939_
                               _e237294237942_
                               _hd237293237945_
                               _tl237292237947_
                               _e237297237950_
                               _hd237296237953_
                               _tl237295237955_
                               _e237300237958_
                               _hd237299237961_
                               _tl237298237963_
                               _e237303237966_
                               _hd237302237969_
                               _tl237301237971_
                               _e237306237974_
                               _hd237305237977_
                               _tl237304237979_
                               _e237309237982_
                               _hd237308237985_
                               _tl237307237987_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd237308237985_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl237307237987_))
                                (let ((_e237312237990_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl237307237987_))))
                                  (let ((_tl237310237995_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237312237990_)))
                                        (_hd237311237993_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237312237990_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl237310237995_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl237304237979_))
                                            (let ((_e237315237998_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl237304237979_))))
                                              (let ((_tl237313238003_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e237315237998_)))
                                                    (_hd237314238001_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e237315237998_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd237314238001_))
                                                    (let ((_e237318238006_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd237314238001_))))
                                                      (let ((_tl237316238011_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e237318238006_)))
                    (_hd237317238009_
                     (let () (declare (not safe)) (##car _e237318238006_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd237317238009_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd237317238009_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl237316238011_))
                            (let ((_e237321238014_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl237316238011_))))
                              (let ((_tl237319238019_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237321238014_)))
                                    (_hd237320238017_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237321238014_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl237319238019_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl237313238003_))
                                        (let ((___splice247383247384_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl237313238003_
                                                  '0))))
                                          (let ((_tl237324238024_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice247383247384_
                                                    '1)))
                                                (_target237322238022_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice247383247384_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl237324238024_))
                                                (___match247590247591_
                                                 _e237285237918_
                                                 _hd237284237921_
                                                 _tl237283237923_
                                                 _e237288237926_
                                                 _hd237287237929_
                                                 _tl237286237931_
                                                 _e237291237934_
                                                 _hd237290237937_
                                                 _tl237289237939_
                                                 _e237294237942_
                                                 _hd237293237945_
                                                 _tl237292237947_
                                                 _e237297237950_
                                                 _hd237296237953_
                                                 _tl237295237955_
                                                 _e237300237958_
                                                 _hd237299237961_
                                                 _tl237298237963_
                                                 _e237303237966_
                                                 _hd237302237969_
                                                 _tl237301237971_
                                                 _e237306237974_
                                                 _hd237305237977_
                                                 _tl237304237979_
                                                 _e237309237982_
                                                 _hd237308237985_
                                                 _tl237307237987_
                                                 _e237312237990_
                                                 _hd237311237993_
                                                 _tl237310237995_
                                                 _e237315237998_
                                                 _hd237314238001_
                                                 _tl237313238003_
                                                 _e237318238006_
                                                 _hd237317238009_
                                                 _tl237316238011_
                                                 _e237321238014_
                                                 _hd237320238017_
                                                 _tl237319238019_
                                                 ___splice247383247384_
                                                 _target237322238022_
                                                 _tl237324238024_)
                                                (___kont247393247394_))))
                                        (___kont247393247394_))
                                    (___kont247393247394_))))
                            (___kont247393247394_))
                        (___kont247393247394_))
                    (___kont247393247394_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont247393247394_))))
                                            (___match247872247873_
                                             _e237285237918_
                                             _hd237284237921_
                                             _tl237283237923_
                                             _e237288237926_
                                             _hd237287237929_
                                             _tl237286237931_
                                             _e237291237934_
                                             _hd237290237937_
                                             _tl237289237939_
                                             _e237294237942_
                                             _hd237293237945_
                                             _tl237292237947_
                                             _e237297237950_
                                             _hd237296237953_
                                             _tl237295237955_
                                             _e237300237958_
                                             _hd237299237961_
                                             _tl237298237963_
                                             _e237303237966_
                                             _hd237302237969_
                                             _tl237301237971_
                                             _e237306237974_
                                             _hd237305237977_
                                             _tl237304237979_))
                                        (___match247872247873_
                                         _e237285237918_
                                         _hd237284237921_
                                         _tl237283237923_
                                         _e237288237926_
                                         _hd237287237929_
                                         _tl237286237931_
                                         _e237291237934_
                                         _hd237290237937_
                                         _tl237289237939_
                                         _e237294237942_
                                         _hd237293237945_
                                         _tl237292237947_
                                         _e237297237950_
                                         _hd237296237953_
                                         _tl237295237955_
                                         _e237300237958_
                                         _hd237299237961_
                                         _tl237298237963_
                                         _e237303237966_
                                         _hd237302237969_
                                         _tl237301237971_
                                         _e237306237974_
                                         _hd237305237977_
                                         _tl237304237979_))))
                                (___match247872247873_
                                 _e237285237918_
                                 _hd237284237921_
                                 _tl237283237923_
                                 _e237288237926_
                                 _hd237287237929_
                                 _tl237286237931_
                                 _e237291237934_
                                 _hd237290237937_
                                 _tl237289237939_
                                 _e237294237942_
                                 _hd237293237945_
                                 _tl237292237947_
                                 _e237297237950_
                                 _hd237296237953_
                                 _tl237295237955_
                                 _e237300237958_
                                 _hd237299237961_
                                 _tl237298237963_
                                 _e237303237966_
                                 _hd237302237969_
                                 _tl237301237971_
                                 _e237306237974_
                                 _hd237305237977_
                                 _tl237304237979_))
                            (___match247658247659_
                             _e237285237918_
                             _hd237284237921_
                             _tl237283237923_
                             _e237288237926_
                             _hd237287237929_
                             _tl237286237931_
                             _e237291237934_
                             _hd237290237937_
                             _tl237289237939_
                             _e237294237942_
                             _hd237293237945_
                             _tl237292237947_
                             _e237297237950_
                             _hd237296237953_
                             _tl237295237955_
                             _e237300237958_
                             _hd237299237961_
                             _tl237298237963_
                             _e237303237966_
                             _hd237302237969_
                             _tl237301237971_
                             _e237306237974_
                             _hd237305237977_
                             _tl237304237979_
                             _e237309237982_
                             _hd237308237985_
                             _tl237307237987_))))
                     (___match247480247481_
                      (lambda (_e237241238110_
                               _hd237240238113_
                               _tl237239238115_
                               _e237244238118_
                               _hd237243238121_
                               _tl237242238123_
                               _e237247238126_
                               _hd237246238129_
                               _tl237245238131_
                               _e237250238134_
                               _hd237249238137_
                               _tl237248238139_
                               _e237253238142_
                               _hd237252238145_
                               _tl237251238147_
                               _e237256238150_
                               _hd237255238153_
                               _tl237254238155_
                               _e237259238158_
                               _hd237258238161_
                               _tl237257238163_
                               _e237262238166_
                               _hd237261238169_
                               _tl237260238171_
                               _e237265238174_
                               _hd237264238177_
                               _tl237263238179_
                               _e237268238182_
                               _hd237267238185_
                               _tl237266238187_
                               ___splice247379247380_
                               _target237269238190_
                               _tl237271238192_)
                        (letrec ((_loop237272238195_
                                  (lambda (_hd237270238198_ _args237276238200_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd237270238198_))
                                        (let ((_e237273238203_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd237270238198_))))
                                          (let ((_lp-tl237275238208_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e237273238203_)))
                                                (_lp-hd237274238206_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e237273238203_))))
                                            (let ((__tmp248321
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd237274238206_
                                                           _args237276238200_))))
                                              (declare (not safe))
                                              (_loop237272238195_
                                               _lp-tl237275238208_
                                               __tmp248321))))
                                        (let ((_args237277238211_
                                               (reverse _args237276238200_)))
                                          (let ((_L238214_ _args237277238211_)
                                                (_L238215_ _hd237267238185_)
                                                (_L238216_ _hd237258238161_)
                                                (_L238217_ _hd237249238137_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L238217_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L238216_
                                                        _self237217_)))
                                                (___kont247377247378_
                                                 _L238214_
                                                 _L238215_
                                                 _L238216_
                                                 _L238217_)
                                                (___match247668247669_
                                                 _e237241238110_
                                                 _hd237240238113_
                                                 _tl237239238115_
                                                 _e237244238118_
                                                 _hd237243238121_
                                                 _tl237242238123_
                                                 _e237247238126_
                                                 _hd237246238129_
                                                 _tl237245238131_
                                                 _e237250238134_
                                                 _hd237249238137_
                                                 _tl237248238139_
                                                 _e237253238142_
                                                 _hd237252238145_
                                                 _tl237251238147_
                                                 _e237256238150_
                                                 _hd237255238153_
                                                 _tl237254238155_
                                                 _e237259238158_
                                                 _hd237258238161_
                                                 _tl237257238163_
                                                 _e237262238166_
                                                 _hd237261238169_
                                                 _tl237260238171_
                                                 _e237265238174_
                                                 _hd237264238177_
                                                 _tl237263238179_
                                                 _e237268238182_
                                                 _hd237267238185_
                                                 _tl237266238187_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop237272238195_ _target237269238190_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx247375247376_))
                    (let ((_e237241238110_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx247375247376_))))
                      (let ((_tl237239238115_
                             (let ()
                               (declare (not safe))
                               (##cdr _e237241238110_)))
                            (_hd237240238113_
                             (let ()
                               (declare (not safe))
                               (##car _e237241238110_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl237239238115_))
                            (let ((_e237244238118_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl237239238115_))))
                              (let ((_tl237242238123_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237244238118_)))
                                    (_hd237243238121_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237244238118_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd237243238121_))
                                    (let ((_e237247238126_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd237243238121_))))
                                      (let ((_tl237245238131_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e237247238126_)))
                                            (_hd237246238129_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e237247238126_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd237246238129_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd237246238129_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl237245238131_))
                                                    (let ((_e237250238134_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl237245238131_))))
                                                      (let ((_tl237248238139_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e237250238134_)))
                    (_hd237249238137_
                     (let () (declare (not safe)) (##car _e237250238134_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl237248238139_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl237242238123_))
                        (let ((_e237253238142_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl237242238123_))))
                          (let ((_tl237251238147_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e237253238142_)))
                                (_hd237252238145_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e237253238142_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd237252238145_))
                                (let ((_e237256238150_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd237252238145_))))
                                  (let ((_tl237254238155_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237256238150_)))
                                        (_hd237255238153_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237256238150_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd237255238153_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd237255238153_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl237254238155_))
                                                (let ((_e237259238158_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl237254238155_))))
                                                  (let ((_tl237257238163_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e237259238158_)))
                                                        (_hd237258238161_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e237259238158_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl237257238163_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl237251238147_))
                                                            (let ((_e237262238166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl237251238147_))))
                      (let ((_tl237260238171_
                             (let ()
                               (declare (not safe))
                               (##cdr _e237262238166_)))
                            (_hd237261238169_
                             (let ()
                               (declare (not safe))
                               (##car _e237262238166_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd237261238169_))
                            (let ((_e237265238174_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd237261238169_))))
                              (let ((_tl237263238179_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237265238174_)))
                                    (_hd237264238177_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237265238174_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd237264238177_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd237264238177_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl237263238179_))
                                            (let ((_e237268238182_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl237263238179_))))
                                              (let ((_tl237266238187_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e237268238182_)))
                                                    (_hd237267238185_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e237268238182_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl237266238187_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl237260238171_))
                                                        (let ((___splice247379247380_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl237260238171_ '0))))
                  (let ((_tl237271238192_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice247379247380_ '1)))
                        (_target237269238190_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice247379247380_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl237271238192_))
                        (___match247480247481_
                         _e237241238110_
                         _hd237240238113_
                         _tl237239238115_
                         _e237244238118_
                         _hd237243238121_
                         _tl237242238123_
                         _e237247238126_
                         _hd237246238129_
                         _tl237245238131_
                         _e237250238134_
                         _hd237249238137_
                         _tl237248238139_
                         _e237253238142_
                         _hd237252238145_
                         _tl237251238147_
                         _e237256238150_
                         _hd237255238153_
                         _tl237254238155_
                         _e237259238158_
                         _hd237258238161_
                         _tl237257238163_
                         _e237262238166_
                         _hd237261238169_
                         _tl237260238171_
                         _e237265238174_
                         _hd237264238177_
                         _tl237263238179_
                         _e237268238182_
                         _hd237267238185_
                         _tl237266238187_
                         ___splice247379247380_
                         _target237269238190_
                         _tl237271238192_)
                        (___match247668247669_
                         _e237241238110_
                         _hd237240238113_
                         _tl237239238115_
                         _e237244238118_
                         _hd237243238121_
                         _tl237242238123_
                         _e237247238126_
                         _hd237246238129_
                         _tl237245238131_
                         _e237250238134_
                         _hd237249238137_
                         _tl237248238139_
                         _e237253238142_
                         _hd237252238145_
                         _tl237251238147_
                         _e237256238150_
                         _hd237255238153_
                         _tl237254238155_
                         _e237259238158_
                         _hd237258238161_
                         _tl237257238163_
                         _e237262238166_
                         _hd237261238169_
                         _tl237260238171_
                         _e237265238174_
                         _hd237264238177_
                         _tl237263238179_
                         _e237268238182_
                         _hd237267238185_
                         _tl237266238187_))))
                (___match247668247669_
                 _e237241238110_
                 _hd237240238113_
                 _tl237239238115_
                 _e237244238118_
                 _hd237243238121_
                 _tl237242238123_
                 _e237247238126_
                 _hd237246238129_
                 _tl237245238131_
                 _e237250238134_
                 _hd237249238137_
                 _tl237248238139_
                 _e237253238142_
                 _hd237252238145_
                 _tl237251238147_
                 _e237256238150_
                 _hd237255238153_
                 _tl237254238155_
                 _e237259238158_
                 _hd237258238161_
                 _tl237257238163_
                 _e237262238166_
                 _hd237261238169_
                 _tl237260238171_
                 _e237265238174_
                 _hd237264238177_
                 _tl237263238179_
                 _e237268238182_
                 _hd237267238185_
                 _tl237266238187_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match247872247873_
                                                     _e237241238110_
                                                     _hd237240238113_
                                                     _tl237239238115_
                                                     _e237244238118_
                                                     _hd237243238121_
                                                     _tl237242238123_
                                                     _e237247238126_
                                                     _hd237246238129_
                                                     _tl237245238131_
                                                     _e237250238134_
                                                     _hd237249238137_
                                                     _tl237248238139_
                                                     _e237253238142_
                                                     _hd237252238145_
                                                     _tl237251238147_
                                                     _e237256238150_
                                                     _hd237255238153_
                                                     _tl237254238155_
                                                     _e237259238158_
                                                     _hd237258238161_
                                                     _tl237257238163_
                                                     _e237262238166_
                                                     _hd237261238169_
                                                     _tl237260238171_))))
                                            (___match247872247873_
                                             _e237241238110_
                                             _hd237240238113_
                                             _tl237239238115_
                                             _e237244238118_
                                             _hd237243238121_
                                             _tl237242238123_
                                             _e237247238126_
                                             _hd237246238129_
                                             _tl237245238131_
                                             _e237250238134_
                                             _hd237249238137_
                                             _tl237248238139_
                                             _e237253238142_
                                             _hd237252238145_
                                             _tl237251238147_
                                             _e237256238150_
                                             _hd237255238153_
                                             _tl237254238155_
                                             _e237259238158_
                                             _hd237258238161_
                                             _tl237257238163_
                                             _e237262238166_
                                             _hd237261238169_
                                             _tl237260238171_))
                                        (___match247548247549_
                                         _e237241238110_
                                         _hd237240238113_
                                         _tl237239238115_
                                         _e237244238118_
                                         _hd237243238121_
                                         _tl237242238123_
                                         _e237247238126_
                                         _hd237246238129_
                                         _tl237245238131_
                                         _e237250238134_
                                         _hd237249238137_
                                         _tl237248238139_
                                         _e237253238142_
                                         _hd237252238145_
                                         _tl237251238147_
                                         _e237256238150_
                                         _hd237255238153_
                                         _tl237254238155_
                                         _e237259238158_
                                         _hd237258238161_
                                         _tl237257238163_
                                         _e237262238166_
                                         _hd237261238169_
                                         _tl237260238171_
                                         _e237265238174_
                                         _hd237264238177_
                                         _tl237263238179_))
                                    (___match247872247873_
                                     _e237241238110_
                                     _hd237240238113_
                                     _tl237239238115_
                                     _e237244238118_
                                     _hd237243238121_
                                     _tl237242238123_
                                     _e237247238126_
                                     _hd237246238129_
                                     _tl237245238131_
                                     _e237250238134_
                                     _hd237249238137_
                                     _tl237248238139_
                                     _e237253238142_
                                     _hd237252238145_
                                     _tl237251238147_
                                     _e237256238150_
                                     _hd237255238153_
                                     _tl237254238155_
                                     _e237259238158_
                                     _hd237258238161_
                                     _tl237257238163_
                                     _e237262238166_
                                     _hd237261238169_
                                     _tl237260238171_))))
                            (___match247872247873_
                             _e237241238110_
                             _hd237240238113_
                             _tl237239238115_
                             _e237244238118_
                             _hd237243238121_
                             _tl237242238123_
                             _e237247238126_
                             _hd237246238129_
                             _tl237245238131_
                             _e237250238134_
                             _hd237249238137_
                             _tl237248238139_
                             _e237253238142_
                             _hd237252238145_
                             _tl237251238147_
                             _e237256238150_
                             _hd237255238153_
                             _tl237254238155_
                             _e237259238158_
                             _hd237258238161_
                             _tl237257238163_
                             _e237262238166_
                             _hd237261238169_
                             _tl237260238171_))))
                    (___match247810247811_
                     _e237241238110_
                     _hd237240238113_
                     _tl237239238115_
                     _e237244238118_
                     _hd237243238121_
                     _tl237242238123_
                     _e237247238126_
                     _hd237246238129_
                     _tl237245238131_
                     _e237250238134_
                     _hd237249238137_
                     _tl237248238139_
                     _e237253238142_
                     _hd237252238145_
                     _tl237251238147_
                     _e237256238150_
                     _hd237255238153_
                     _tl237254238155_
                     _e237259238158_
                     _hd237258238161_
                     _tl237257238163_))
                (___kont247393247394_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont247393247394_))
                                            (___kont247393247394_))
                                        (___kont247393247394_))))
                                (___kont247393247394_))))
                        (___kont247393247394_))
                    (___kont247393247394_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont247393247394_))
                                                (___kont247393247394_))
                                            (___kont247393247394_))))
                                    (___kont247393247394_))))
                            (___kont247393247394_))))
                    (___kont247393247394_))))))))))
